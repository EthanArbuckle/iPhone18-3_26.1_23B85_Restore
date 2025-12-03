@interface BSLHWatchdogTimer
- (BOOL)hasSleepBeenImminentSinceScheduled;
- (BOOL)isInvalidated;
- (BSLHWatchdogTimer)initWithExplanation:(id)explanation delegate:(id)delegate provider:(id)provider;
- (NSString)description;
- (unint64_t)invalidationReason;
- (void)dealloc;
- (void)invalidate:(unint64_t)invalidate;
- (void)scheduleWithTimeout:(double)timeout;
- (void)setSleepImminentSinceScheduled:(BOOL)scheduled;
- (void)timerFired;
@end

@implementation BSLHWatchdogTimer

- (void)dealloc
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"must be invalidated before release: %@", self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BLSHWatchdogProvider.m";
    v10 = 1024;
    v11 = 644;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BSLHWatchdogTimer)initWithExplanation:(id)explanation delegate:(id)delegate provider:(id)provider
{
  explanationCopy = explanation;
  delegateCopy = delegate;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = BSLHWatchdogTimer;
  v11 = [(BSLHWatchdogTimer *)&v17 init];
  if (v11)
  {
    v12 = [explanationCopy copy];
    explanation = v11->_explanation;
    v11->_explanation = v12;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_provider, provider);
    v14 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:explanationCopy];
    timer = v11->_timer;
    v11->_timer = v14;

    v11->_lock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  [v3 appendString:self->_explanation withName:@"explanation"];
  if (self->_lock_invalidated)
  {
    if (self->_lock_invalidationReason == 1)
    {
      v5 = @"replaced";
    }

    else
    {
      v5 = @"completed";
    }

    [v3 appendString:v5 withName:@"invalidationReason"];
  }

  build = [v3 build];

  return build;
}

- (void)scheduleWithTimeout:(double)timeout
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    [BSLHWatchdogTimer scheduleWithTimeout:a2];
  }

  self->_lock_timeout = timeout;
  BSContinuousMachTimeNow();
  self->_lock_watchdogStart = v6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  osInterfaceProvider = [WeakRetained osInterfaceProvider];
  systemSleepMonitor = [osInterfaceProvider systemSleepMonitor];
  isSleepImminent = [systemSleepMonitor isSleepImminent];

  if (isSleepImminent)
  {
    self->_lock_sleepImminentSinceScheduled = 1;
    osInterfaceProvider2 = [WeakRetained osInterfaceProvider];
    systemSleepMonitor2 = [osInterfaceProvider2 systemSleepMonitor];
    [systemSleepMonitor2 addObserver:self];
  }

  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, self);
  timer = self->_timer;
  v14 = MEMORY[0x277D85CD0];
  v15 = MEMORY[0x277D85CD0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__BSLHWatchdogTimer_scheduleWithTimeout___block_invoke;
  v16[3] = &unk_27841FDD0;
  objc_copyWeak(&v17, &location);
  [(BSAbsoluteMachTimer *)timer scheduleWithFireInterval:v14 leewayInterval:v16 queue:timeout handler:1.0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __41__BSLHWatchdogTimer_scheduleWithTimeout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 invalidate];

  [WeakRetained timerFired];
}

- (void)timerFired
{
  os_unfair_lock_lock(&self->_lock);
  lock_timeout = self->_lock_timeout;
  BSContinuousMachTimeNow();
  v5 = v4;
  lock_watchdogStart = self->_lock_watchdogStart;
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (!lock_invalidated)
  {
    provider = self->_provider;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(BLSHWatchdogProvider *)provider fireWatchdogWithTimer:self delegate:WeakRetained timeout:lock_timeout elapsedTime:v5 - lock_watchdogStart];
  }
}

- (void)invalidate:(unint64_t)invalidate
{
  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  self->_lock_invalidationReason = invalidate;
  lock_timeout = self->_lock_timeout;
  BSContinuousMachTimeNow();
  v7 = v6 - self->_lock_watchdogStart;
  os_unfair_lock_unlock(&self->_lock);
  [(BSLHWatchdogTimer *)self setSleepImminentSinceScheduled:0];
  provider = self->_provider;
  explanation = self->_explanation;

  [(BLSHWatchdogProvider *)provider clearWatchdogWithExplanation:explanation reason:invalidate timeout:lock_timeout elapsedTime:v7];
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (unint64_t)invalidationReason
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidationReason = self->_lock_invalidationReason;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidationReason;
}

- (BOOL)hasSleepBeenImminentSinceScheduled
{
  os_unfair_lock_lock(&self->_lock);
  lock_sleepImminentSinceScheduled = self->_lock_sleepImminentSinceScheduled;
  os_unfair_lock_unlock(&self->_lock);
  if (!lock_sleepImminentSinceScheduled)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  osInterfaceProvider = [WeakRetained osInterfaceProvider];
  systemSleepMonitor = [osInterfaceProvider systemSleepMonitor];
  isSleepImminent = [systemSleepMonitor isSleepImminent];

  return isSleepImminent;
}

- (void)setSleepImminentSinceScheduled:(BOOL)scheduled
{
  scheduledCopy = scheduled;
  os_unfair_lock_lock(&self->_lock);
  lock_sleepImminentSinceScheduled = self->_lock_sleepImminentSinceScheduled;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  self->_lock_sleepImminentSinceScheduled = scheduledCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (!scheduledCopy && lock_sleepImminentSinceScheduled)
  {
    osInterfaceProvider = [WeakRetained osInterfaceProvider];
    systemSleepMonitor = [osInterfaceProvider systemSleepMonitor];
    [systemSleepMonitor removeObserver:self];
  }
}

- (void)scheduleWithTimeout:(const char *)a1 .cold.1(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v9 = @"BLSHWatchdogProvider.m";
    v10 = 1024;
    v11 = 660;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end