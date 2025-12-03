@interface BLSHBacklightSceneEnvironmentHosting
+ (id)createLocalHostEnvironmentForEnvironment:(id)environment;
+ (void)enableSubhostingForEnvironment:(id)environment withSessionProvider:(id)provider;
+ (void)enableSubhostingForEnvironment:(id)environment withSessionProvider:(id)provider osTimerProvider:(id)timerProvider;
+ (void)resetBudgetForEnvironment:(id)environment reason:(id)reason;
@end

@implementation BLSHBacklightSceneEnvironmentHosting

+ (void)enableSubhostingForEnvironment:(id)environment withSessionProvider:(id)provider
{
  providerCopy = provider;
  environmentCopy = environment;
  v8 = objc_alloc_init(BLSHBacklightOSTimerProvider);
  [self enableSubhostingForEnvironment:environmentCopy withSessionProvider:providerCopy osTimerProvider:v8];
}

+ (void)enableSubhostingForEnvironment:(id)environment withSessionProvider:(id)provider osTimerProvider:(id)timerProvider
{
  environmentCopy = environment;
  providerCopy = provider;
  timerProviderCopy = timerProvider;
  delegate = [environmentCopy delegate];

  if (!delegate)
  {
    [BLSHBacklightSceneEnvironmentHosting enableSubhostingForEnvironment:environmentCopy withSessionProvider:a2 osTimerProvider:self];
  }

  v12 = [[BLSHLocalHostSceneEnvironmentUpdater alloc] initWithSessionProvider:providerCopy localHostEnvironment:environmentCopy osTimerProvider:timerProviderCopy];
  [environmentCopy setUpdater:v12];
}

+ (void)resetBudgetForEnvironment:(id)environment reason:(id)reason
{
  reasonCopy = reason;
  updater = [environment updater];
  v7 = objc_opt_class();
  v10 = updater;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 resetAllLocalHostBudgetsForReason:reasonCopy];
}

+ (id)createLocalHostEnvironmentForEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [[BLSHLocalHostSceneEnvironment alloc] initWithBacklightSceneEnvironment:environmentCopy];

  return v4;
}

+ (void)enableSubhostingForEnvironment:(void *)a1 withSessionProvider:(const char *)a2 osTimerProvider:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 identifier];
  v7 = [v5 stringWithFormat:@"environment %@ must have a delegate to enable subhosting", v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a2);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    v16 = a3;
    v17 = 2114;
    v18 = @"BLSHBacklightSceneEnvironmentHosting.m";
    v19 = 1024;
    v20 = 23;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end