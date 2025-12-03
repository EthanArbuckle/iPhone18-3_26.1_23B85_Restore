@interface BCWorkItemCompletionHandler
+ (id)newCompletionHandlerWithWorkItem:(id)item onQueue:(id)queue;
- (void)dealloc;
- (void)workComplete;
@end

@implementation BCWorkItemCompletionHandler

+ (id)newCompletionHandlerWithWorkItem:(id)item onQueue:(id)queue
{
  queueCopy = queue;
  itemCopy = item;
  v7 = objc_alloc_init(BCWorkItemCompletionHandler);
  [(BCWorkItemCompletionHandler *)v7 setWorkQueue:queueCopy];

  [(BCWorkItemCompletionHandler *)v7 setWorkItem:itemCopy];
  return v7;
}

- (void)dealloc
{
  if (!self->_completionCount)
  {
    v3 = BCImageCacheLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1E6FE0();
    }

    [(BICWorkQueue *)self->_workQueue workComplete:self->_workItem];
  }

  v4.receiver = self;
  v4.super_class = BCWorkItemCompletionHandler;
  [(BCWorkItemCompletionHandler *)&v4 dealloc];
}

- (void)workComplete
{
  if ([(BCWorkItemCompletionHandler *)self completionCount])
  {
    workQueue = BCImageCacheLog();
    if (os_log_type_enabled(workQueue, OS_LOG_TYPE_ERROR))
    {
      sub_1E7058();
    }
  }

  else
  {
    workQueue = [(BCWorkItemCompletionHandler *)self workQueue];
    workItem = [(BCWorkItemCompletionHandler *)self workItem];
    [workQueue workComplete:workItem];
  }

  [(BCWorkItemCompletionHandler *)self setCompletionCount:[(BCWorkItemCompletionHandler *)self completionCount]+ 1];
}

@end