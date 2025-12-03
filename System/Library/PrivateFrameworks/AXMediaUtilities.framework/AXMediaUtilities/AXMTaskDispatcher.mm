@interface AXMTaskDispatcher
- (AXMTaskDispatcher)initWithIdentifier:(id)identifier delegate:(id)delegate;
- (AXMTaskDispatcherDelegate)delegate;
- (id)_queue_dequeueTask;
- (id)_queue_unscheduleAllTasks;
- (id)unscheduleAllTasks;
- (int64_t)count;
- (void)_queue_processNextTask;
- (void)_queue_scheduleTask:(id)task;
- (void)scheduleTask:(id)task;
@end

@implementation AXMTaskDispatcher

- (AXMTaskDispatcher)initWithIdentifier:(id)identifier delegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = AXMTaskDispatcher;
  v8 = [(AXMTaskDispatcher *)&v22 init];
  if (v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    v10 = *(v8 + 3);
    *(v8 + 3) = array;

    objc_storeWeak(v8 + 5, delegateCopy);
    uTF8String = [identifierCopy UTF8String];
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create(uTF8String, v12);
    v14 = *(v8 + 2);
    *(v8 + 2) = v13;

    v15 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v8 + 2));
    v16 = *(v8 + 1);
    *(v8 + 1) = v15;

    objc_initWeak(&location, v8);
    v17 = *(v8 + 1);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __49__AXMTaskDispatcher_initWithIdentifier_delegate___block_invoke;
    v19[3] = &unk_1E7A1CA70;
    objc_copyWeak(&v20, &location);
    dispatch_source_set_event_handler(v17, v19);
    dispatch_activate(*(v8 + 1));
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __49__AXMTaskDispatcher_initWithIdentifier_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_processNextTask];
}

- (int64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__AXMTaskDispatcher_count__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __26__AXMTaskDispatcher_count__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_queue_processNextTask
{
  _queue_dequeueTask = [(AXMTaskDispatcher *)self _queue_dequeueTask];
  v4 = _queue_dequeueTask;
  if (_queue_dequeueTask)
  {
    if ([_queue_dequeueTask isComplete])
    {
      v5 = AXMediaLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [AXMTaskDispatcher _queue_processNextTask];
      }
    }

    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __43__AXMTaskDispatcher__queue_processNextTask__block_invoke;
    v11 = &unk_1E7A1D1B0;
    objc_copyWeak(&v12, &location);
    [v4 setTaskCompleteBlock:&v8];
    if (self->_queue_taskIsBeingProcessed)
    {
      v6 = AXMediaLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [AXMTaskDispatcher _queue_processNextTask];
      }
    }

    self->_queue_taskIsBeingProcessed = 1;
    v7 = [(AXMTaskDispatcher *)self delegate:v8];
    [v7 dispatcher:self handleTask:v4];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __43__AXMTaskDispatcher__queue_processNextTask__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = AXMediaLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __43__AXMTaskDispatcher__queue_processNextTask__block_invoke_cold_1(v5, a3, v6);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained[2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AXMTaskDispatcher__queue_processNextTask__block_invoke_26;
  block[3] = &unk_1E7A1CCB8;
  block[4] = WeakRetained;
  dispatch_async(v8, block);
}

void __43__AXMTaskDispatcher__queue_processNextTask__block_invoke_26(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 32) & 1) == 0)
  {
    v3 = AXMediaLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __43__AXMTaskDispatcher__queue_processNextTask__block_invoke_26_cold_1();
    }

    v2 = *(a1 + 32);
  }

  *(v2 + 32) = 0;
  dispatch_source_merge_data(*(*(a1 + 32) + 8), 1uLL);
}

- (void)scheduleTask:(id)task
{
  taskCopy = task;
  v5 = taskCopy;
  if (taskCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__AXMTaskDispatcher_scheduleTask___block_invoke;
    v7[3] = &unk_1E7A1CB30;
    v7[4] = self;
    v8 = taskCopy;
    dispatch_sync(queue, v7);
  }
}

- (void)_queue_scheduleTask:(id)task
{
  [(NSMutableArray *)self->_queue_taskList addObject:task];
  if (!self->_queue_taskIsBeingProcessed)
  {
    processQueueSource = self->_processQueueSource;

    dispatch_source_merge_data(processQueueSource, 1uLL);
  }
}

- (id)unscheduleAllTasks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AXMTaskDispatcher_unscheduleAllTasks__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__AXMTaskDispatcher_unscheduleAllTasks__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_unscheduleAllTasks];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_unscheduleAllTasks
{
  v3 = [(NSMutableArray *)self->_queue_taskList copy];
  [(NSMutableArray *)self->_queue_taskList removeAllObjects];

  return v3;
}

- (id)_queue_dequeueTask
{
  if ([(NSMutableArray *)self->_queue_taskList count])
  {
    v3 = [(NSMutableArray *)self->_queue_taskList objectAtIndex:0];
    [(NSMutableArray *)self->_queue_taskList removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AXMTaskDispatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__AXMTaskDispatcher__queue_processNextTask__block_invoke_cold_1(uint64_t a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_1AE37B000, log, OS_LOG_TYPE_DEBUG, "Task is marked complete: %@ -> %d", &v3, 0x12u);
}

@end