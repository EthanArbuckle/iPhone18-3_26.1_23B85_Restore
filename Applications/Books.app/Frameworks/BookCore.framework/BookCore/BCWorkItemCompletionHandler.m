@interface BCWorkItemCompletionHandler
+ (id)newCompletionHandlerWithWorkItem:(id)a3 onQueue:(id)a4;
- (void)dealloc;
- (void)workComplete;
@end

@implementation BCWorkItemCompletionHandler

+ (id)newCompletionHandlerWithWorkItem:(id)a3 onQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(BCWorkItemCompletionHandler);
  [(BCWorkItemCompletionHandler *)v7 setWorkQueue:v5];

  [(BCWorkItemCompletionHandler *)v7 setWorkItem:v6];
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
    v3 = BCImageCacheLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1E7058();
    }
  }

  else
  {
    v3 = [(BCWorkItemCompletionHandler *)self workQueue];
    v4 = [(BCWorkItemCompletionHandler *)self workItem];
    [v3 workComplete:v4];
  }

  [(BCWorkItemCompletionHandler *)self setCompletionCount:[(BCWorkItemCompletionHandler *)self completionCount]+ 1];
}

@end