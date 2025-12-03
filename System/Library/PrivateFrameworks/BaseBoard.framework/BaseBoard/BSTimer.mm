@interface BSTimer
+ (id)scheduledTimerWithFireInterval:(double)interval queue:(id)queue handler:(id)handler;
- (BOOL)isScheduled;
- (BSTimer)initWithFireInterval:(double)interval repeatInterval:(double)repeatInterval leewayInterval:(double)leewayInterval queue:(id)queue handler:(id)handler;
- (unint64_t)fireCount;
- (void)_queue_cancel;
- (void)cancel;
- (void)dealloc;
- (void)schedule;
@end

@implementation BSTimer

+ (id)scheduledTimerWithFireInterval:(double)interval queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v10 = [[self alloc] initWithFireInterval:queueCopy queue:handlerCopy handler:interval];
  [v10 schedule];

  return v10;
}

- (BSTimer)initWithFireInterval:(double)interval repeatInterval:(double)repeatInterval leewayInterval:(double)leewayInterval queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSTimer.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];
  }

  if (interval < 0.0 || interval > 9223372040.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"BSTimer.m" lineNumber:49 description:{@"requested a timer with an unsupported duration (%f)", *&interval}];
  }

  v15 = [(BSTimer *)self init];
  if (v15)
  {
    v16 = [BSDescriptionBuilder descriptionForObject:v15];
    Serial = BSDispatchQueueCreateSerial(v16);
    queue = v15->_queue;
    v15->_queue = Serial;

    if (queueCopy)
    {
      v19 = queueCopy;
    }

    else
    {
      v20 = BSPthreadCurrentEffectiveQualityOfService();
      v19 = dispatch_get_global_queue(v20, 0);
    }

    callOutQueue = v15->_callOutQueue;
    v15->_callOutQueue = v19;

    v22 = [handlerCopy copy];
    handler = v15->_handler;
    v15->_handler = v22;

    leewayIntervalCopy = 0.0;
    v25 = fabs(repeatInterval) < 2.22044605e-16 || repeatInterval < 0.0;
    repeatIntervalCopy = -1.0;
    if (!v25)
    {
      repeatIntervalCopy = repeatInterval;
    }

    v15->_fireInterval = interval;
    v15->_repeatInterval = repeatIntervalCopy;
    if (fabs(leewayInterval) >= 2.22044605e-16 && leewayInterval >= 0.0)
    {
      leewayIntervalCopy = leewayInterval;
    }

    v15->_leewayInterval = leewayIntervalCopy;
    v15->_oneShot = fabs(repeatIntervalCopy + 1.0) < 2.22044605e-16;
  }

  return v15;
}

- (void)dealloc
{
  [(BSTimer *)self cancel];
  v3.receiver = self;
  v3.super_class = BSTimer;
  [(BSTimer *)&v3 dealloc];
}

- (BOOL)isScheduled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__BSTimer_isScheduled__block_invoke;
  v5[3] = &unk_1E72CAF28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)fireCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__BSTimer_fireCount__block_invoke;
  v5[3] = &unk_1E72CAF28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)schedule
{
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __19__BSTimer_schedule__block_invoke;
  v3[3] = &unk_1E72CAF00;
  v3[4] = self;
  v3[5] = a2;
  dispatch_sync(queue, v3);
}

void __19__BSTimer_schedule__block_invoke(uint64_t a1)
{
  [(BSTimer *)*(a1 + 32) _queue_cancel];
  *(*(a1 + 32) + 49) = 1;
  *(*(a1 + 32) + 80) = 0;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 56) = v2;
  v3 = [BSDispatchSource alloc];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 32) + 16);
  v14[2] = __19__BSTimer_schedule__block_invoke_2;
  v14[3] = &unk_1E72CB9D0;
  v15 = v4;
  v6 = [(BSDispatchSource *)v3 initWithType:0 handle:0 mask:v5 queue:v14 configureSourceBlock:?];
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;

  objc_initWeak(&location, *(a1 + 32));
  v9 = *(*(a1 + 32) + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __19__BSTimer_schedule__block_invoke_22;
  v11[3] = &unk_1E72CB830;
  objc_copyWeak(&v12, &location);
  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v10, v11, 32);
  }

  [(BSDispatchSource *)*(*(a1 + 32) + 32) resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_queue_cancel
{
  if (self)
  {
    BSDispatchQueueAssert(*(self + 8));
    v2 = *(self + 32);
    if (v2)
    {
      *(self + 49) = 0;
      [v2 invalidate];
      v3 = *(self + 32);
      *(self + 32) = 0;
    }
  }
}

void __19__BSTimer_schedule__block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v18 = v3;
  if (v5 >= 9223372040.0)
  {
    v7 = -1;
  }

  else
  {
    if (v5 <= -9223372040.0)
    {
      v6 = 0x8000000000000000;
    }

    else
    {
      v6 = (v5 * 1000000000.0);
    }

    v7 = dispatch_time(0, v6);
    v3 = v18;
    v4 = *(a1 + 32);
  }

  if (*(v4 + 48))
  {
    v8 = -1;
  }

  else
  {
    v9 = *(v4 + 72);
    if (v9 >= 9223372040.0)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else if (v9 <= -9223372040.0)
    {
      v8 = 0x8000000000000000;
    }

    else
    {
      v8 = (v9 * 1000000000.0);
      if (!v8)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"repeatTime != 0"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = NSStringFromSelector(*(a1 + 40));
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = *(a1 + 32);
          *buf = 138544642;
          v20 = v11;
          v21 = 2114;
          v22 = v13;
          v23 = 2048;
          v24 = v14;
          v25 = 2114;
          v26 = @"BSTimer.m";
          v27 = 1024;
          v28 = 104;
          v29 = 2114;
          v30 = v10;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v15 = v10;
        qword_1EAD33B00 = [v10 UTF8String];
        __break(0);
        JUMPOUT(0x18FF5E048);
      }
    }
  }

  v16 = *(v4 + 40);
  if (v16 >= 9223372040.0)
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (v16 <= -9223372040.0)
  {
    v17 = 0x8000000000000000;
  }

  else
  {
    v17 = (v16 * 1000000000.0);
  }

  dispatch_source_set_timer(v3, v7, v8, v17);
}

void __19__BSTimer_schedule__block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    BSDispatchQueueAssert(WeakRetained[2]);
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__5;
    v11 = __Block_byref_object_dispose__5;
    v12 = 0;
    v3 = v5[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__BSTimer__callOutQueue_noteTimerFired__block_invoke;
    block[3] = &unk_1E72CB858;
    block[4] = v5;
    block[5] = &v7;
    dispatch_sync(v3, block);
    v4 = v8[5];
    if (v4)
    {
      (*(v4 + 16))();
    }

    _Block_object_dispose(&v7, 8);

    v2 = v5;
  }
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __17__BSTimer_cancel__block_invoke;
  block[3] = &unk_1E72CADE8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __39__BSTimer__callOutQueue_noteTimerFired__block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 80);
  v2 = *(a1 + 32);
  if (*(v2 + 49) == 1)
  {
    v3 = MEMORY[0x193AE5AC0](*(v2 + 24));
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 48) == 1)
  {

    [(BSTimer *)v2 _queue_cancel];
  }
}

@end