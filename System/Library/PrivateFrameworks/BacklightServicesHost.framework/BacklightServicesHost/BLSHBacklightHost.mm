@interface BLSHBacklightHost
+ (id)sharedBacklightHost;
+ (void)registerSharedBacklightHost:(id)a3;
+ (void)registerSharedBacklightHostForTest:(id)a3;
+ (void)sharedBacklightHost;
@end

@implementation BLSHBacklightHost

+ (id)sharedBacklightHost
{
  os_unfair_lock_lock(&_classLock_1);
  v3 = _sharedBacklightHost;
  os_unfair_lock_unlock(&_classLock_1);
  if (!v3)
  {
    +[(BLSHBacklightHost *)a2];
  }

  return v3;
}

+ (void)registerSharedBacklightHost:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&_classLock_1);
  if (!v5)
  {
    [BLSHBacklightHost registerSharedBacklightHost:a2];
  }

  if (_sharedBacklightHost)
  {
    [BLSHBacklightHost registerSharedBacklightHost:a2];
  }

  _sharedBacklightHost = v5;

  os_unfair_lock_unlock(&_classLock_1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BLSHBacklightHost_registerSharedBacklightHost___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (registerSharedBacklightHost__onceToken != -1)
  {
    dispatch_once(&registerSharedBacklightHost__onceToken, block);
  }
}

void __49__BLSHBacklightHost_registerSharedBacklightHost___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _springboardDidFinishStartup, @"com.apple.springboard.finishedstartup", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

+ (void)registerSharedBacklightHostForTest:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_classLock_1);
  v4 = _sharedBacklightHost;
  _sharedBacklightHost = v3;

  os_unfair_lock_unlock(&_classLock_1);
}

+ (void)registerSharedBacklightHost:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_sharedBacklightHost == nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)registerSharedBacklightHost:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"sharedBacklightHost != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)sharedBacklightHost
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"sharedBacklightHost != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end