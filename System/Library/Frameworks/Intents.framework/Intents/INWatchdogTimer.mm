@interface INWatchdogTimer
- (BOOL)_cancelIfNotAlreadyCanceled;
- (BOOL)cancelIfNotAlreadyCanceled;
- (BOOL)isCanceled;
- (INWatchdogTimer)initWithTimeoutInterval:(double)interval onQueue:(id)queue timeoutHandler:(id)handler;
- (INWatchdogTimer)initWithTimeoutInterval:(double)interval timeoutHandler:(id)handler;
- (void)_cancel;
- (void)_reset;
- (void)_start;
- (void)_stop;
- (void)cancel;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation INWatchdogTimer

- (void)_start
{
  if (self->_isStopped)
  {
    timerSource = self->_timerSource;
    v4 = dispatch_time(0, (self->_remainingInterval * 1000000000.0));
    dispatch_source_set_timer(timerSource, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_timerSource);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    self->_startTime = v6;

    self->_isStopped = 0;
  }
}

- (BOOL)cancelIfNotAlreadyCanceled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__INWatchdogTimer_cancelIfNotAlreadyCanceled__block_invoke;
  v5[3] = &unk_1E7282B68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_cancelIfNotAlreadyCanceled
{
  _isCanceled = [(INWatchdogTimer *)self _isCanceled];
  if (!_isCanceled)
  {
    [(INWatchdogTimer *)self _cancel];
  }

  return !_isCanceled;
}

- (void)_cancel
{
  dispatch_source_cancel(self->_timerSource);
  if (self->_isStopped)
  {
    dispatch_resume(self->_timerSource);
    self->_isStopped = 0;
  }
}

- (void)dealloc
{
  if (self->_isStopped)
  {
    dispatch_resume(self->_timerSource);
  }

  v3.receiver = self;
  v3.super_class = INWatchdogTimer;
  [(INWatchdogTimer *)&v3 dealloc];
}

- (BOOL)isCanceled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__INWatchdogTimer_isCanceled__block_invoke;
  v5[3] = &unk_1E7282B68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__INWatchdogTimer_isCanceled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isCanceled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)start
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__INWatchdogTimer_start__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

uint64_t __45__INWatchdogTimer_cancelIfNotAlreadyCanceled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _cancelIfNotAlreadyCanceled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)cancel
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__INWatchdogTimer_cancel__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_reset
{
  [(INWatchdogTimer *)self _stop];
  self->_remainingInterval = self->_interval;

  [(INWatchdogTimer *)self _start];
}

- (void)_stop
{
  if (!self->_isStopped)
  {
    dispatch_suspend(self->_timerSource);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v5 = v4 - self->_startTime;

    v6 = self->_interval - v5;
    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    self->_remainingInterval = v6;
    self->_isStopped = 1;
  }
}

- (void)stop
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__INWatchdogTimer_stop__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (INWatchdogTimer)initWithTimeoutInterval:(double)interval onQueue:(id)queue timeoutHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = INWatchdogTimer;
  v10 = [(INWatchdogTimer *)&v22 init];
  v11 = v10;
  if (v10)
  {
    v10->_interval = interval;
    v10->_remainingInterval = interval;
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
    timerSource = v11->_timerSource;
    v11->_timerSource = v12;

    v14 = dispatch_queue_create("com.apple.intents.INWatchdogTimer", 0);
    internalQueue = v11->_internalQueue;
    v11->_internalQueue = v14;

    objc_initWeak(&location, v11);
    v16 = v11->_timerSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __66__INWatchdogTimer_initWithTimeoutInterval_onQueue_timeoutHandler___block_invoke;
    handler[3] = &unk_1E7280168;
    objc_copyWeak(&v20, &location);
    v19 = handlerCopy;
    dispatch_source_set_event_handler(v16, handler);
    v11->_isStopped = 1;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v11;
}

uint64_t __66__INWatchdogTimer_initWithTimeoutInterval_onQueue_timeoutHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancel];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (INWatchdogTimer)initWithTimeoutInterval:(double)interval timeoutHandler:(id)handler
{
  v7 = dispatch_get_global_queue(17, 0);
  v8 = [(INWatchdogTimer *)self initWithTimeoutInterval:v7 onQueue:handler timeoutHandler:interval];

  return v8;
}

@end