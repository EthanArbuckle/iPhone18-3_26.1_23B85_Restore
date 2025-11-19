@interface MFPriorityLoadingQueue
- (MFPriorityLoadingQueue)initWithScheduler:(id)a3;
- (NSArray)allObjects;
- (id)dequeue;
- (id)drain;
- (void)_locked_cancelWorkItem;
- (void)_locked_processQueue;
- (void)_locked_reorderQueue;
- (void)_noteQueueNeedsProcessing;
- (void)_performItem:(id)a3 handler:(id)a4 cancelationToken:(id)a5;
- (void)_processQueue;
- (void)dealloc;
- (void)dequeueObject:(id)a3;
- (void)enqueue:(id)a3;
- (void)setComparator:(id)a3;
@end

@implementation MFPriorityLoadingQueue

- (void)_locked_reorderQueue
{
  v3 = [(EFQueue *)self->_queue drain];
  v4 = [EFQueue priorityQueueWithComparator:self->_comparator];
  queue = self->_queue;
  self->_queue = v4;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(EFQueue *)self->_queue enqueue:*(*(&v10 + 1) + 8 * v9), v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)dealloc
{
  [(MFPriorityLoadingQueue *)self _locked_cancelWorkItem];
  v3.receiver = self;
  v3.super_class = MFPriorityLoadingQueue;
  [(MFPriorityLoadingQueue *)&v3 dealloc];
}

- (MFPriorityLoadingQueue)initWithScheduler:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MFPriorityLoadingQueue;
  v6 = [(MFPriorityLoadingQueue *)&v12 init];
  if (v6)
  {
    v7 = [&stru_1006553E0 copy];
    comparator = v6->_comparator;
    v6->_comparator = v7;

    objc_storeStrong(&v6->_scheduler, a3);
    v9 = [EFQueue priorityQueueWithComparator:v6->_comparator];
    queue = v6->_queue;
    v6->_queue = v9;
  }

  return v6;
}

- (void)setComparator:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_1006553E0;
  }

  v9 = objc_retainBlock(v5);

  os_unfair_lock_lock(&self->_lock);
  if (self->_comparator != v9)
  {
    v7 = objc_retainBlock(v9);
    comparator = self->_comparator;
    self->_comparator = v7;

    [(MFPriorityLoadingQueue *)self _locked_reorderQueue];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_locked_cancelWorkItem
{
  if (self->_workItemCancelable)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      workItemCancelable = self->_workItemCancelable;
      v5 = 134217984;
      v6 = workItemCancelable;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#priorityLoadingQueue canceling token: %p", &v5, 0xCu);
    }

    [(EFCancelable *)self->_workItemCancelable cancel];
  }
}

- (void)_processQueue
{
  if (pthread_main_np() != 1)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"MFPriorityLoadingQueue.m" lineNumber:81 description:@"Current thread must be main"];
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_processQueue" object:0];
  os_unfair_lock_lock(&self->_lock);
  [(MFPriorityLoadingQueue *)self _locked_processQueue];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_locked_processQueue
{
  if (!self->_workItemCancelable)
  {
    v3 = [(EFQueue *)self->_queue dequeue];
    if (v3)
    {
      v4 = objc_retainBlock(self->_itemHandler);
      scheduler = self->_scheduler;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100207894;
      v11[3] = &unk_100655408;
      v11[4] = self;
      v11[5] = v3;
      v6 = v4;
      v12 = v6;
      v7 = [(EFScheduler *)scheduler performCancelableBlock:v11];
      workItemCancelable = self->_workItemCancelable;
      self->_workItemCancelable = v7;

      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = self->_workItemCancelable;
        *buf = 138412546;
        v14 = v3;
        v15 = 2048;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#priorityLoadingQueue scheduled work %@ with token: %p", buf, 0x16u);
      }
    }
  }
}

- (void)_performItem:(id)a3 handler:(id)a4 cancelationToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([(EFCancelable *)v10 isCanceled]& 1) != 0)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "#priorityLoadingQueue token already canceled, not calling item handler: %p", &v17, 0xCu);
    }
  }

  else
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#priorityLoadingQueue calling item handler with token: %p", &v17, 0xCu);
    }

    v9[2](v9, v8, v10);
  }

  os_unfair_lock_lock(&self->_lock);
  v13 = MFLogGeneral();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    workItemCancelable = self->_workItemCancelable;
    v17 = 134217984;
    v18 = workItemCancelable;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#priorityLoadingQueue finished work for token: %p", &v17, 0xCu);
  }

  v15 = self->_workItemCancelable;
  self->_workItemCancelable = 0;

  v16 = [(EFQueue *)self->_queue count];
  os_unfair_lock_unlock(&self->_lock);
  if (v16)
  {
    [(MFPriorityLoadingQueue *)self _noteQueueNeedsProcessing];
  }
}

- (void)_noteQueueNeedsProcessing
{
  v3 = +[EFScheduler mainThreadScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100207B64;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)enqueue:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#priorityLoadingQueue enquing work item: %@", &v6, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  [(EFQueue *)self->_queue enqueue:v4 replaceIfExists:1];
  os_unfair_lock_unlock(&self->_lock);
  [(MFPriorityLoadingQueue *)self _noteQueueNeedsProcessing];
}

- (id)dequeue
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(EFQueue *)self->_queue dequeue];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dequeueObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(EFQueue *)self->_queue dequeueObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)drain
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#priorityLoadingQueue removing all work items", v6, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  v4 = [(EFQueue *)self->_queue drain];
  [(MFPriorityLoadingQueue *)self _locked_cancelWorkItem];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSArray)allObjects
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(EFQueue *)self->_queue allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end