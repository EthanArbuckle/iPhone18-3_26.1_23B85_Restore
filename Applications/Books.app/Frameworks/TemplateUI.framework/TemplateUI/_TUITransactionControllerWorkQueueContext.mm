@interface _TUITransactionControllerWorkQueueContext
- (_TUITransactionControllerWorkQueueContext)initWithQueue:(id)queue;
@end

@implementation _TUITransactionControllerWorkQueueContext

- (_TUITransactionControllerWorkQueueContext)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = _TUITransactionControllerWorkQueueContext;
  v6 = [(_TUITransactionControllerWorkQueueContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end