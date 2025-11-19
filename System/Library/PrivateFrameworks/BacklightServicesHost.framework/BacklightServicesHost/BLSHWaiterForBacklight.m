@interface BLSHWaiterForBacklight
+ (id)waitForBacklightDisplayMode:(int64_t)a3;
+ (id)waitForBacklightDisplayModePassingTest:(id)a3;
+ (id)waitForBacklightState:(int64_t)a3;
+ (id)waitForBacklightStatePassingTest:(id)a3;
+ (id)waitForBlanked;
+ (id)waitForUnblanked;
- (BLSHWaiterForBacklight)init;
- (BOOL)isInvalidated;
- (void)_main_callCompletion;
- (void)_main_waitWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)waitWithCompletion:(id)a3;
@end

@implementation BLSHWaiterForBacklight

+ (id)waitForBacklightState:(int64_t)a3
{
  v3 = [[BLSHWaiterForBacklightState alloc] initWithBacklightState:a3];

  return v3;
}

+ (id)waitForBacklightStatePassingTest:(id)a3
{
  v3 = a3;
  v4 = [[BLSHWaiterForBacklightState alloc] initWithPredicate:v3];

  return v4;
}

+ (id)waitForBacklightDisplayMode:(int64_t)a3
{
  v3 = [[BLSHWaiterForBacklightDisplayMode alloc] initWithDisplayMode:a3];

  return v3;
}

+ (id)waitForBacklightDisplayModePassingTest:(id)a3
{
  v3 = a3;
  v4 = [[BLSHWaiterForBacklightDisplayMode alloc] initWithPredicate:v3];

  return v4;
}

+ (id)waitForBlanked
{
  v2 = [[BLSHWaiterForBacklightDisplayMode alloc] initWithPredicate:&__block_literal_global_12];

  return v2;
}

+ (id)waitForUnblanked
{
  v2 = [[BLSHWaiterForBacklightDisplayMode alloc] initWithPredicate:&__block_literal_global_3];

  return v2;
}

- (BLSHWaiterForBacklight)init
{
  v3.receiver = self;
  v3.super_class = BLSHWaiterForBacklight;
  result = [(BLSHWaiterForBacklight *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"must invalidate %@ before dealloc", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a1;
    v14 = 2114;
    v15 = @"BLSHWaiterForBacklight.m";
    v16 = 1024;
    v17 = 79;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)waitWithCompletion:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

uint64_t __45__BLSHWaiterForBacklight_waitWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAlreadyAtDesiredState])
  {
    v2 = *(*(a1 + 40) + 16);

    return v2();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _main_waitWithCompletion:v5];
  }
}

- (void)_main_waitWithCompletion:(id)a3
{
  v4 = MEMORY[0x223D70730](a3, a2);
  completion = self->_completion;
  self->_completion = v4;

  v6 = +[BLSHBacklightHost sharedBacklightHost];
  [v6 addObserver:self];
}

- (void)_main_callCompletion
{
  if (![(BLSHWaiterForBacklight *)self isInvalidated])
  {
    (*(self->_completion + 2))();
    [(BLSHWaiterForBacklight *)self invalidate];
    completion = self->_completion;
    self->_completion = 0;
  }
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  v3 = +[BLSHBacklightHost sharedBacklightHost];
  [v3 removeObserver:self];
}

@end