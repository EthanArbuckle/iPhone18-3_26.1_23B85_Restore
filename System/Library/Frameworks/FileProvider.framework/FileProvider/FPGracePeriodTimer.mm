@interface FPGracePeriodTimer
- (FPGracePeriodTimer)initWithAction:(id)action callbackQueue:(id)queue delay:(double)delay;
- (id)prettyDescription;
- (void)_createTimer;
- (void)arm;
- (void)dealloc;
- (void)suppress;
@end

@implementation FPGracePeriodTimer

- (void)suppress
{
  obj = self;
  objc_sync_enter(obj);
  timer = obj->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v3 = obj->_timer;
    obj->_timer = 0;

    obj->_expectedFiringTimeSinceReferenceDate = 0.0;
  }

  objc_sync_exit(obj);
}

- (void)arm
{
  obj = self;
  objc_sync_enter(obj);
  [(FPGracePeriodTimer *)obj suppress];
  [(FPGracePeriodTimer *)obj _createTimer];
  dispatch_resume(obj->_timer);
  objc_sync_exit(obj);
}

- (void)_createTimer
{
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_callbackQueue);
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;
  dispatch_set_qos_class_fallback();
  delay = self->_delay;
  v7 = (delay / 10.0 * 1000000000.0);
  v8 = dispatch_time(0, (delay * 1000000000.0));
  dispatch_source_set_timer(self->_timer, v8, 0xFFFFFFFFFFFFFFFFLL, v7);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_expectedFiringTimeSinceReferenceDate = v9 + self->_delay;
  objc_initWeak(&location, self);
  v10 = self->_timer;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__FPGracePeriodTimer__createTimer__block_invoke;
  v13[3] = &unk_1E7939010;
  objc_copyWeak(&v14, &location);
  v11 = v10;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v13);
  dispatch_source_set_event_handler(v11, v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(FPGracePeriodTimer *)self suppress];
  v3.receiver = self;
  v3.super_class = FPGracePeriodTimer;
  [(FPGracePeriodTimer *)&v3 dealloc];
}

- (FPGracePeriodTimer)initWithAction:(id)action callbackQueue:(id)queue delay:(double)delay
{
  actionCopy = action;
  queueCopy = queue;
  if (!queueCopy)
  {
    [FPGracePeriodTimer initWithAction:a2 callbackQueue:self delay:?];
  }

  v15.receiver = self;
  v15.super_class = FPGracePeriodTimer;
  v11 = [(FPGracePeriodTimer *)&v15 init];
  if (v11)
  {
    v12 = _Block_copy(actionCopy);
    action = v11->_action;
    v11->_action = v12;

    objc_storeStrong(&v11->_callbackQueue, queue);
    v11->_delay = delay;
  }

  return v11;
}

void __34__FPGracePeriodTimer__createTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = _Block_copy(WeakRetained[1]);
    v3 = v2;
    if (v2)
    {
      (*(v2 + 2))(v2);
    }

    [v4 suppress];

    WeakRetained = v4;
  }
}

- (id)prettyDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_timer)
  {
    v3 = MEMORY[0x1E696AEC0];
    expectedFiringTimeSinceReferenceDate = selfCopy->_expectedFiringTimeSinceReferenceDate;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = [v3 stringWithFormat:@"armed, firing in %.1gs", expectedFiringTimeSinceReferenceDate - v5];
  }

  else
  {
    v6 = @"not running";
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)initWithAction:(uint64_t)a1 callbackQueue:(uint64_t)a2 delay:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPGracePeriodTimer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"callbackQueue"}];
}

@end