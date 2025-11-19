@interface LASerialSchedulerInternal
- (LASerialSchedulerInternal)init;
- (LASerialSchedulerInternal)initWithQueue:(id)a3;
- (void)_performPendingOperations;
- (void)_performPendingOperationsWithCompletion:(id)a3;
- (void)_resume;
- (void)_schedule:(id)a3;
- (void)resume;
- (void)schedule:(id)a3;
- (void)unsafeResume;
- (void)unsafeSchedule:(id)a3;
@end

@implementation LASerialSchedulerInternal

- (LASerialSchedulerInternal)init
{
  v3 = MEMORY[0x1E69AD240];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 createUserInitiatedSerialQueueWithIdentifier:v5];
  v7 = [(LASerialSchedulerInternal *)self initWithQueue:v6];

  return v7;
}

- (LASerialSchedulerInternal)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LASerialSchedulerInternal;
  v6 = [(LASerialSchedulerInternal *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695E0F0] mutableCopy];
    pendingOperations = v6->_pendingOperations;
    v6->_pendingOperations = v7;

    objc_storeStrong(&v6->_workQueue, a3);
  }

  return v6;
}

- (void)schedule:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__LASerialSchedulerInternal_schedule___block_invoke;
  block[3] = &unk_1E86B5C98;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__LASerialSchedulerInternal_schedule___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _schedule:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)resume
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__LASerialSchedulerInternal_resume__block_invoke;
  v4[3] = &unk_1E86B5CC0;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __35__LASerialSchedulerInternal_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _resume];
    WeakRetained = v2;
  }
}

- (void)unsafeSchedule:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  [(LASerialSchedulerInternal *)self _schedule:v5];
}

- (void)unsafeResume
{
  dispatch_assert_queue_V2(self->_workQueue);

  [(LASerialSchedulerInternal *)self _resume];
}

- (void)_schedule:(id)a3
{
  workQueue = self->_workQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workQueue);
  pendingOperations = self->_pendingOperations;
  v7 = MEMORY[0x1E12D4BC0](v5);

  [(NSMutableArray *)pendingOperations addObject:v7];
  if (self->_running)
  {

    [(LASerialSchedulerInternal *)self _resume];
  }
}

- (void)_resume
{
  dispatch_assert_queue_V2(self->_workQueue);
  self->_running = 1;

  [(LASerialSchedulerInternal *)self _performPendingOperations];
}

- (void)_performPendingOperations
{
  dispatch_assert_queue_V2(self->_workQueue);
  if (!self->_performingPendingOperations)
  {
    self->_performingPendingOperations = 1;
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __54__LASerialSchedulerInternal__performPendingOperations__block_invoke;
    v3[3] = &unk_1E86B5CC0;
    objc_copyWeak(&v4, &location);
    [(LASerialSchedulerInternal *)self _performPendingOperationsWithCompletion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __54__LASerialSchedulerInternal__performPendingOperations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[9] = 0;
  }
}

- (void)_performPendingOperationsWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  if ([(NSMutableArray *)self->_pendingOperations count])
  {
    v5 = [(NSMutableArray *)self->_pendingOperations firstObject];
    [(NSMutableArray *)self->_pendingOperations removeObjectAtIndex:0];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__LASerialSchedulerInternal__performPendingOperationsWithCompletion___block_invoke;
    v6[3] = &unk_1E86B5C98;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    (v5)[2](v5, v6);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v4[2](v4);
  }
}

void __69__LASerialSchedulerInternal__performPendingOperationsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__LASerialSchedulerInternal__performPendingOperationsWithCompletion___block_invoke_2;
    v5[3] = &unk_1E86B5C98;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    dispatch_async(v4, v5);

    objc_destroyWeak(&v7);
  }
}

void __69__LASerialSchedulerInternal__performPendingOperationsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _performPendingOperationsWithCompletion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

@end