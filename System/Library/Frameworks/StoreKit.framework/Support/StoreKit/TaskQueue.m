@interface TaskQueue
+ (id)networkQueue;
- (TaskQueue)init;
@end

@implementation TaskQueue

+ (id)networkQueue
{
  if (qword_1003D3BC8 != -1)
  {
    sub_1002C7BBC();
  }

  v3 = qword_1003D3BC0;

  return v3;
}

- (TaskQueue)init
{
  v6.receiver = self;
  v6.super_class = TaskQueue;
  v2 = [(TaskQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.storekit.TaskQueue"];
  }

  return v2;
}

@end