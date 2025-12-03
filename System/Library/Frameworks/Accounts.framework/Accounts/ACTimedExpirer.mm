@interface ACTimedExpirer
+ (ACTimedExpirer)expirerWithTimeout:(unint64_t)timeout;
- (ACTimedExpirer)init;
- (void)_unsafeCancelTimer;
- (void)cancelTimer;
- (void)dealloc;
- (void)scheduleExpiration:(id)expiration;
@end

@implementation ACTimedExpirer

- (ACTimedExpirer)init
{
  v3.receiver = self;
  v3.super_class = ACTimedExpirer;
  result = [(ACTimedExpirer *)&v3 init];
  if (result)
  {
    result->_invalidationTimerLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)_unsafeCancelTimer
{
  invalidationTimer = self->_invalidationTimer;
  if (invalidationTimer)
  {
    dispatch_source_cancel(invalidationTimer);
    v4 = self->_invalidationTimer;
    self->_invalidationTimer = 0;
  }
}

- (void)cancelTimer
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __29__ACTimedExpirer_cancelTimer__block_invoke;
  v6 = &unk_1E7975AD8;
  selfCopy = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_invalidationTimerLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_invalidationTimerLock);
}

- (void)dealloc
{
  [(ACTimedExpirer *)self cancelTimer];
  v3.receiver = self;
  v3.super_class = ACTimedExpirer;
  [(ACTimedExpirer *)&v3 dealloc];
}

+ (ACTimedExpirer)expirerWithTimeout:(unint64_t)timeout
{
  v4 = objc_alloc_init(self);
  v4[1] = timeout;

  return v4;
}

- (void)scheduleExpiration:(id)expiration
{
  expirationCopy = expiration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __37__ACTimedExpirer_scheduleExpiration___block_invoke;
  v9 = &unk_1E7977330;
  selfCopy = self;
  v5 = expirationCopy;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_invalidationTimerLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_invalidationTimerLock);
}

void __37__ACTimedExpirer_scheduleExpiration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _unsafeCancelTimer];
  v2 = dispatch_get_global_queue(9, 0);
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  v6 = *(*(a1 + 32) + 16);
  v7 = dispatch_time(0, 1000000000 * *(*(a1 + 32) + 8));
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, (*(*(a1 + 32) + 8) * 0.5 * 1000000000.0));
  objc_initWeak(&location, *(a1 + 32));
  v8 = *(*(a1 + 32) + 16);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __37__ACTimedExpirer_scheduleExpiration___block_invoke_2;
  handler[3] = &unk_1E7977308;
  objc_copyWeak(&v11, &location);
  v10 = *(a1 + 40);
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(*(*(a1 + 32) + 16));

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __37__ACTimedExpirer_scheduleExpiration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained cancelTimer];
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

@end