@interface MTRAsyncCallbackWorkQueue
- (MTRAsyncCallbackWorkQueue)initWithContext:(id)context queue:(dispatch_queue_t)queue;
- (id)description;
- (void)_callNextReadyWorkItem;
- (void)_postProcessWorkItem:(id)a3 retry:(BOOL)a4;
- (void)enqueueWorkItem:(MTRAsyncCallbackQueueWorkItem *)item;
- (void)invalidate;
@end

@implementation MTRAsyncCallbackWorkQueue

- (MTRAsyncCallbackWorkQueue)initWithContext:(id)context queue:(dispatch_queue_t)queue
{
  v7 = context;
  v8 = queue;
  v14.receiver = self;
  v14.super_class = MTRAsyncCallbackWorkQueue;
  v9 = [(MTRAsyncCallbackWorkQueue *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_queue, queue);
    v11 = [MEMORY[0x277CBEB18] array];
    items = v10->_items;
    v10->_items = v11;
  }

  return v10;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MTRAsyncCallbackWorkQueue *)self context];
  v5 = [(MTRAsyncCallbackWorkQueue *)self items];
  v6 = [v3 stringWithFormat:@"MTRAsyncCallbackWorkQueue context: %@ items count: %lu", v4, objc_msgSend(v5, "count")];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)enqueueWorkItem:(MTRAsyncCallbackQueueWorkItem *)item
{
  v4 = item;
  if ([(MTRAsyncCallbackQueueWorkItem *)v4 enqueued])
  {
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "MTRAsyncCallbackWorkQueue enqueueWorkItem: item cannot be enqueued twice", v7, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    [(MTRAsyncCallbackQueueWorkItem *)v4 markEnqueued];
    os_unfair_lock_lock(&self->_lock);
    [(MTRAsyncCallbackQueueWorkItem *)v4 setWorkQueue:self];
    v6 = [(MTRAsyncCallbackWorkQueue *)self items];
    [v6 addObject:v4];

    [(MTRAsyncCallbackWorkQueue *)self _callNextReadyWorkItem];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_items;
  items = self->_items;
  self->_items = 0;

  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) cancel];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)v5 removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_postProcessWorkItem:(id)a3 retry:(BOOL)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(MTRAsyncCallbackWorkQueue *)self runningWorkItemCount])
  {
    v7 = [(MTRAsyncCallbackWorkQueue *)self items];
    v8 = [v7 firstObject];

    if (v8 == v6)
    {
      if (!a4)
      {
        v11 = [(MTRAsyncCallbackWorkQueue *)self items];
        [v11 removeObjectAtIndex:0];
      }

      [(MTRAsyncCallbackWorkQueue *)self setRunningWorkItemCount:0];
      [(MTRAsyncCallbackWorkQueue *)self _callNextReadyWorkItem];
    }

    else
    {
      v9 = sub_2393D9044(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "MTRAsyncCallbackWorkQueue endWork: work item is not first on work queue", v12, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }
    }
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRAsyncCallbackWorkQueue endWork: no work is running on work queue", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_callNextReadyWorkItem
{
  if (![(MTRAsyncCallbackWorkQueue *)self runningWorkItemCount])
  {
    v3 = [(MTRAsyncCallbackWorkQueue *)self items];
    v4 = [v3 count];

    if (v4)
    {
      [(MTRAsyncCallbackWorkQueue *)self setRunningWorkItemCount:1];
      v5 = [(MTRAsyncCallbackWorkQueue *)self items];
      v7 = [v5 firstObject];

      v6 = [(MTRAsyncCallbackWorkQueue *)self context];
      [v7 callReadyHandlerWithContext:v6];
    }
  }
}

@end