@interface AFWatchdogTimer
- (AFWatchdogTimer)initWithTimeoutInterval:(double)a3 onQueue:(id)a4 timeoutHandler:(id)a5;
- (AFWatchdogTimer)initWithTimeoutInterval:(double)a3 timeoutHandler:(id)a4;
- (BOOL)cancelIfNotAlreadyCanceled;
- (double)timeRemaining;
- (id)copyWithZone:(_NSZone *)a3;
- (void)cancel;
- (void)dealloc;
- (void)reset;
- (void)start;
- (void)stop;
@end

@implementation AFWatchdogTimer

- (void)start
{
  os_unfair_lock_lock(&self->_timerLock);
  if (self->_isStopped)
  {
    timerSource = self->_timerSource;
    v4 = dispatch_time(0, (self->_remainingInterval * 1000000000.0));
    dispatch_source_set_timer(timerSource, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_timerSource);
    v5 = [MEMORY[0x1E696AE30] processInfo];
    [v5 systemUptime];
    self->_startTime = v6;

    self->_isStopped = 0;
  }

  os_unfair_lock_unlock(&self->_timerLock);
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_timerLock);
  dispatch_source_cancel(self->_timerSource);
  if (self->_isStopped)
  {
    dispatch_resume(self->_timerSource);
    self->_isStopped = 0;
  }

  os_unfair_lock_unlock(&self->_timerLock);
}

- (void)dealloc
{
  timerSource = self->_timerSource;
  if (timerSource && self->_isStopped)
  {
    dispatch_resume(timerSource);
  }

  v4.receiver = self;
  v4.super_class = AFWatchdogTimer;
  [(AFWatchdogTimer *)&v4 dealloc];
}

- (BOOL)cancelIfNotAlreadyCanceled
{
  v3 = dispatch_source_testcancel(self->_timerSource);
  if (!v3)
  {
    [(AFWatchdogTimer *)self cancel];
  }

  return v3 == 0;
}

- (void)reset
{
  [(AFWatchdogTimer *)self stop];
  self->_remainingInterval = self->_interval;

  [(AFWatchdogTimer *)self start];
}

- (double)timeRemaining
{
  if (self->_isStopped)
  {
    return self->_remainingInterval;
  }

  v4 = [MEMORY[0x1E696AE30] processInfo];
  [v4 systemUptime];
  v6 = v5 - self->_startTime;

  result = self->_interval - v6;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)stop
{
  os_unfair_lock_lock(&self->_timerLock);
  if (!self->_isStopped)
  {
    dispatch_suspend(self->_timerSource);
    [(AFWatchdogTimer *)self timeRemaining];
    self->_remainingInterval = v3;
    self->_isStopped = 1;
  }

  os_unfair_lock_unlock(&self->_timerLock);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  interval = self->_interval;
  queue = self->_queue;
  timeoutHandler = self->_timeoutHandler;

  return [v4 initWithTimeoutInterval:queue onQueue:timeoutHandler timeoutHandler:interval];
}

- (AFWatchdogTimer)initWithTimeoutInterval:(double)a3 onQueue:(id)a4 timeoutHandler:(id)a5
{
  v10 = a4;
  v11 = a5;
  if (a3 >= 0.0)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"AFWatchdogTimer.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"AFWatchdogTimer.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"timeoutInterval >= 0"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"AFWatchdogTimer.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"timeoutHandler"}];

LABEL_4:
  v27.receiver = self;
  v27.super_class = AFWatchdogTimer;
  v12 = [(AFWatchdogTimer *)&v27 init];
  v13 = v12;
  if (v12)
  {
    v12->_interval = a3;
    v12->_remainingInterval = a3;
    objc_storeStrong(&v12->_queue, a4);
    v14 = MEMORY[0x193AFB7B0](v11);
    timeoutHandler = v13->_timeoutHandler;
    v13->_timeoutHandler = v14;

    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v13->_queue);
    timerSource = v13->_timerSource;
    v13->_timerSource = v16;

    v13->_timerLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v13);
    v18 = v13->_timerSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __66__AFWatchdogTimer_initWithTimeoutInterval_onQueue_timeoutHandler___block_invoke;
    handler[3] = &unk_1E7344098;
    objc_copyWeak(&v25, &location);
    v24 = v11;
    dispatch_source_set_event_handler(v18, handler);
    v13->_isStopped = 1;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v13;
}

uint64_t __66__AFWatchdogTimer_initWithTimeoutInterval_onQueue_timeoutHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancelIfNotAlreadyCanceled];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (AFWatchdogTimer)initWithTimeoutInterval:(double)a3 timeoutHandler:(id)a4
{
  v7 = dispatch_get_global_queue(17, 0);
  v8 = [(AFWatchdogTimer *)self initWithTimeoutInterval:v7 onQueue:a4 timeoutHandler:a3];

  return v8;
}

@end