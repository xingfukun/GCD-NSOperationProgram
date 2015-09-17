//
//  ViewController.m
//  GCD&NSOperation
//
//  Created by joymain on 15/9/17.
//  Copyright (c) 2015年 邢富琨. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}




-(void)NSOperationProgram
{
//    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//    [queue addOperationWithBlock:^{
//        
//    }];
//    NSBlockOperation *blockOperation = [NSBlockOperation blockOperationWithBlock:^{
//        
//    }];
//    NSInvocationOperation *invocationOperation = [[NSInvocationOperation alloc] ini];
}

-(void)GCDProgram
{

    //主线程执行
    dispatch_async(dispatch_get_main_queue(), ^{
        
    });
    
    //线程执行
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
    });
    
    //执行一次 常用于单例中
    dispatch_once_t once;
    dispatch_once(&once, ^{
        
    });
    
    
    dispatch_queue_t mydispatch = dispatch_queue_create("MyDispath", NULL);
    dispatch_async(mydispatch, ^{
        
    });
    
    
    
    //线程组,当线程组里面的线程都执行完了再通知到通知线程中
    dispatch_group_t group = dispatch_group_create();
    dispatch_group_async(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //
        
    });
    dispatch_group_async(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
    });
    dispatch_group_notify(group, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        
    });
    
    
    //dispatch_barrier_async
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        
    });
    dispatch_barrier_async(queue, ^{
        //并发中此现场等待之前的任务执行完才执行，并且当次线程执行完才开始执行后面的任务
    });
    dispatch_async(queue, ^{
        
    });
    
    
    //执行100次
    dispatch_apply(100, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(size_t index) {
        //可用户验证码
        dispatch_async(dispatch_get_main_queue(), ^{
           
            //更新按钮
        });
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
