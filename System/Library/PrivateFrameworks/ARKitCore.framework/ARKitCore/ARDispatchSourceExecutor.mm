@interface ARDispatchSourceExecutor
- (ARDispatchSourceExecutor)init;
- (BOOL)isRunning;
- (void)executeWithInterval:(double)interval initialDelay:(double)delay block:(id)block;
- (void)stop;
@end

@implementation ARDispatchSourceExecutor

- (ARDispatchSourceExecutor)init
{
  v8.receiver = self;
  v8.super_class = ARDispatchSourceExecutor;
  v2 = [(ARDispatchSourceExecutor *)&v8 init];
  v3 = v2;
  if (v2)
  {
    timer = v2->_timer;
    v2->_timer = 0;

    v3->_timerLock._os_unfair_lock_opaque = 0;
    v5 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.timerSerialQueue");
    timerQueue = v3->_timerQueue;
    v3->_timerQueue = v5;
  }

  return v3;
}

- (void)executeWithInterval:(double)interval initialDelay:(double)delay block:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_timerLock);
  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, self->_timerQueue);
  timer = self->_timer;
  self->_timer = v9;

  v11 = dispatch_time(0, (delay * 1000000000.0));
  dispatch_source_set_timer(self->_timer, v11, (interval * 1000000000.0), 0);
  v12 = self->_timer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __67__ARDispatchSourceExecutor_executeWithInterval_initialDelay_block___block_invoke;
  handler[3] = &unk_1E817CC30;
  v15 = blockCopy;
  v13 = blockCopy;
  dispatch_source_set_event_handler(v12, handler);
  dispatch_resume(self->_timer);

  os_unfair_lock_unlock(&self->_timerLock);
}

- (void)stop
{
  os_unfair_lock_lock(&self->_timerLock);
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  os_unfair_lock_unlock(&self->_timerLock);
}

- (BOOL)isRunning
{
  os_unfair_lock_lock(&self->_timerLock);
  v3 = self->_timer != 0;
  os_unfair_lock_unlock(&self->_timerLock);
  return v3;
}

@end