@interface _HKDelayedOperation
- (_HKDelayedOperation)initWithMode:(int64_t)mode clock:(int64_t)clock queue:(id)queue delay:(double)delay block:(id)block;
- (void)_queue_executeBlockIfScheduled;
- (void)disableLogging;
- (void)enableLoggingWithName:(id)name category:(id)category;
- (void)executeWithDelay:(double)delay;
- (void)invalidate;
@end

@implementation _HKDelayedOperation

- (_HKDelayedOperation)initWithMode:(int64_t)mode clock:(int64_t)clock queue:(id)queue delay:(double)delay block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = _HKDelayedOperation;
  v15 = [(_HKDelayedOperation *)&v25 init];
  if (v15)
  {
    v16 = _Block_copy(blockCopy);
    v17 = *(v15 + 1);
    *(v15 + 1) = v16;

    objc_storeStrong(v15 + 2, queue);
    *(v15 + 3) = mode;
    *(v15 + 4) = clock;
    *(v15 + 7) = 0;
    v18 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v15 + 2));
    v19 = *(v15 + 5);
    *(v15 + 5) = v18;

    *(v15 + 6) = delay;
    objc_initWeak(&location, v15);
    v20 = *(v15 + 5);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60___HKDelayedOperation_initWithMode_clock_queue_delay_block___block_invoke;
    v22[3] = &unk_1E73782E8;
    objc_copyWeak(&v23, &location);
    dispatch_source_set_event_handler(v20, v22);
    dispatch_resume(*(v15 + 5));
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v15;
}

- (void)executeWithDelay:(double)delay
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_block)
  {
    lastExecution = _CurrentTimeForClock(self->_clock);
    v7 = lastExecution;
    if (!self->_mode)
    {
      lastExecution = self->_lastExecution;
    }

    v8 = lastExecution + delay;
    v9 = v8 - v7;
    if (v8 - v7 <= 0.0)
    {
      if (self->_loggingCategory)
      {
        _HKInitializeLogging();
        loggingCategory = self->_loggingCategory;
        if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_INFO))
        {
          loggingName = self->_loggingName;
          *buf = 138543362;
          v26 = loggingName;
          _os_log_impl(&dword_19197B000, loggingCategory, OS_LOG_TYPE_INFO, "Delayed operation %{public}@: Scheduling immediate execution.", buf, 0xCu);
        }
      }

      self->_nextScheduledExecution = v7;
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40___HKDelayedOperation_executeWithDelay___block_invoke;
      block[3] = &unk_1E7376780;
      block[4] = self;
      dispatch_async(queue, block);
    }

    else
    {
      nextScheduledExecution = self->_nextScheduledExecution;
      v11 = self->_loggingCategory;
      if (nextScheduledExecution == 0.0 || v8 < nextScheduledExecution)
      {
        if (v11)
        {
          _HKInitializeLogging();
          v13 = self->_loggingCategory;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = self->_loggingName;
            *buf = 138543618;
            v26 = v14;
            v27 = 2048;
            v28 = v8 - v7;
            _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_INFO, "Delayed operation %{public}@: Scheduling execution in %lfs.", buf, 0x16u);
          }
        }

        self->_nextScheduledExecution = v8;
        if (!self->_timerSource)
        {
          [(_HKDelayedOperation *)a2 executeWithDelay:?];
        }

        clock = self->_clock;
        if (clock == 1)
        {
          v16 = dispatch_time(0, (v9 * 1000000000.0));
        }

        else
        {
          if (clock)
          {
            [_HKDelayedOperation executeWithDelay:?];
          }

          v16 = dispatch_walltime(0, (v9 * 1000000000.0));
        }

        dispatch_source_set_timer(self->_timerSource, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      else if (v11)
      {
        _HKInitializeLogging();
        v20 = self->_loggingCategory;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = self->_nextScheduledExecution;
          v21 = self->_loggingName;
          *buf = 138543874;
          v26 = v21;
          v27 = 2048;
          v28 = v8;
          v29 = 2048;
          v30 = v22;
          _os_log_impl(&dword_19197B000, v20, OS_LOG_TYPE_INFO, "Delayed operation %{public}@: Ignoring scheduling request (requested %lf > scheduled %lf).", buf, 0x20u);
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___HKDelayedOperation_invalidate__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)enableLoggingWithName:(id)name category:(id)category
{
  categoryCopy = category;
  queue = self->_queue;
  nameCopy = name;
  dispatch_assert_queue_V2(queue);
  v9 = [nameCopy copy];

  loggingName = self->_loggingName;
  self->_loggingName = v9;

  loggingCategory = self->_loggingCategory;
  self->_loggingCategory = categoryCopy;
}

- (void)disableLogging
{
  dispatch_assert_queue_V2(self->_queue);
  loggingCategory = self->_loggingCategory;
  self->_loggingCategory = 0;

  loggingName = self->_loggingName;
  self->_loggingName = 0;
}

- (void)_queue_executeBlockIfScheduled
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_nextScheduledExecution > 0.0)
  {
    v3 = _CurrentTimeForClock(self->_clock);
    if (self->_loggingCategory)
    {
      lastExecution = self->_lastExecution;
      nextScheduledExecution = self->_nextScheduledExecution;
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_INFO))
      {
        loggingName = self->_loggingName;
        v10 = 138543874;
        v11 = loggingName;
        v12 = 2048;
        v13 = v3 - lastExecution;
        v14 = 2048;
        v15 = v3 - nextScheduledExecution;
        _os_log_impl(&dword_19197B000, loggingCategory, OS_LOG_TYPE_INFO, "Delayed operation %{public}@: Executing after %lfs (slipped %lfs).", &v10, 0x20u);
      }
    }

    self->_lastExecution = v3;
    self->_nextScheduledExecution = 0.0;
    block = self->_block;
    if (block)
    {
      block[2]();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)executeWithDelay:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKDelayedOperation.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"_timerSource != nil"}];
}

- (void)executeWithDelay:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"dispatch_time_t _HKDispatchTimeForDelayAndClock(NSTimeInterval, _HKDelayedOperationClock)"}];
  [v2 handleFailureInFunction:v3 file:@"_HKDelayedOperation.m" lineNumber:24 description:{@"Invalid clock value for delayed operation: %ld", a1}];

  __break(1u);
}

@end