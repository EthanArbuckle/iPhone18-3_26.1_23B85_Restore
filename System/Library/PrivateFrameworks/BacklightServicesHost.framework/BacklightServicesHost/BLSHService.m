@interface BLSHService
+ (id)sharedService;
+ (id)startLocalOnlyServiceWithConfiguration:(id)a3;
+ (id)startServiceWithPlatformProvider:(id)a3;
+ (void)sharedService;
- (void)beginSpecialManagementForHostEnvironment:(id)a3;
- (void)dealloc;
@end

@implementation BLSHService

+ (id)startServiceWithPlatformProvider:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(BLSHService *)a2 startServiceWithPlatformProvider:a1];
  }

  v6 = v5;
  v7 = [a1 startServiceWithPlatformProvider:v5 localOnly:0];

  return v7;
}

+ (id)startLocalOnlyServiceWithConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  v5 = [[BLSHLocalOnlySimplePlatformProvider alloc] initWithConfiguration:v4];
  [MEMORY[0x277CF09B8] setIsHostProcess:1];
  v6 = [a1 startServiceWithPlatformProvider:v5 localOnly:1];

  return v6;
}

+ (id)sharedService
{
  os_unfair_lock_lock(&_classLock_2);
  v4 = _sharedService;
  os_unfair_lock_unlock(&_classLock_2);
  if (!v4)
  {
    +[(BLSHService *)a2];
  }

  return v4;
}

- (void)dealloc
{
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BLSHService;
  [(BLSHService *)&v3 dealloc];
}

- (void)beginSpecialManagementForHostEnvironment:(id)a3
{
  v4 = a3;
  v5 = bls_backlight_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(BLSHService *)self beginSpecialManagementForHostEnvironment:v4, v5];
  }
}

+ (void)startServiceWithPlatformProvider:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"platformProvider != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHService.m";
    v16 = 1024;
    v17 = 41;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)startServiceWithPlatformProvider:(const char *)a1 localOnly:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"only one BLSHService can be registered"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_13();
    v10 = 2048;
    v11 = a2;
    v12 = v8;
    v13 = @"BLSHService.m";
    v14 = 1024;
    v15 = 62;
    v16 = v8;
    v17 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)sharedService
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[BLSHService sharedService] should not be called before startServiceWithPlatformProvider:"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_13();
    v10 = 2048;
    v11 = a2;
    v12 = v8;
    v13 = @"BLSHService.m";
    v14 = 1024;
    v15 = 74;
    v16 = v8;
    v17 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)beginSpecialManagementForHostEnvironment:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_0_13();
  _os_log_error_impl(&dword_21FD11000, a3, OS_LOG_TYPE_ERROR, "%p beginSpecialManagementForHostEnvironment:%{public}@ is no longer necessary", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end