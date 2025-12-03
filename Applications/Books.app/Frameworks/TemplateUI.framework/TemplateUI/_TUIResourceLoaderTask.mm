@interface _TUIResourceLoaderTask
- (_TUIResourceLoaderTask)initWithSessionDataTask:(id)task;
@end

@implementation _TUIResourceLoaderTask

- (_TUIResourceLoaderTask)initWithSessionDataTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = _TUIResourceLoaderTask;
  v6 = [(_TUIResourceLoaderTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionDataTask, task);
  }

  return v7;
}

@end