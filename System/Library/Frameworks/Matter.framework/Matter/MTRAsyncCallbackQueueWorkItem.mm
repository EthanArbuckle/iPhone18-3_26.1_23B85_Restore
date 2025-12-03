@interface MTRAsyncCallbackQueueWorkItem
- (MTRAsyncCallbackQueueWorkItem)initWithQueue:(dispatch_queue_t)queue;
- (void)_invalidate;
- (void)callReadyHandlerWithContext:(id)context;
- (void)cancel;
- (void)endWork;
- (void)invalidate;
- (void)markEnqueued;
- (void)retryWork;
- (void)setReadyHandler:(MTRAsyncCallbackReadyHandler)readyHandler;
@end

@implementation MTRAsyncCallbackQueueWorkItem

- (MTRAsyncCallbackQueueWorkItem)initWithQueue:(dispatch_queue_t)queue
{
  v5 = queue;
  v9.receiver = self;
  v9.super_class = MTRAsyncCallbackQueueWorkItem;
  v6 = [(MTRAsyncCallbackQueueWorkItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)_invalidate
{
  readyHandler = self->_readyHandler;
  self->_readyHandler = 0;

  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = 0;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(MTRAsyncCallbackQueueWorkItem *)self _invalidate];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)markEnqueued
{
  os_unfair_lock_lock(&self->_lock);
  self->_enqueued = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setReadyHandler:(MTRAsyncCallbackReadyHandler)readyHandler
{
  v6 = readyHandler;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_enqueued)
  {
    v4 = MEMORY[0x23EE78590](v6);
    v5 = self->_readyHandler;
    self->_readyHandler = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)endWork
{
  workQueue = [(MTRAsyncCallbackQueueWorkItem *)self workQueue];
  [workQueue endWork:self];

  [(MTRAsyncCallbackQueueWorkItem *)self invalidate];
}

- (void)retryWork
{
  workQueue = [(MTRAsyncCallbackQueueWorkItem *)self workQueue];
  [workQueue retryWork:self];
}

- (void)callReadyHandlerWithContext:(id)context
{
  contextCopy = context;
  queue = [(MTRAsyncCallbackQueueWorkItem *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2392DF818;
  v7[3] = &unk_278A72298;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(queue, v7);
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x23EE78590](self->_cancelHandler);
  [(MTRAsyncCallbackQueueWorkItem *)self _invalidate];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    queue = [(MTRAsyncCallbackQueueWorkItem *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2392DF9A8;
    block[3] = &unk_278A72B88;
    v6 = v3;
    dispatch_async(queue, block);
  }
}

@end