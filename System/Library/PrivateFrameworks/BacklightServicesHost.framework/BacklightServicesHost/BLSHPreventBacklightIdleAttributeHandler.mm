@interface BLSHPreventBacklightIdleAttributeHandler
+ (id)attributeClasses;
+ (id)registerHandlerForService:(id)service provider:(id)provider;
- (BLSHBacklightIdleProvider)provider;
- (id)countingTargetForEntry:(id)entry;
- (id)initForService:(id)service provider:(id)provider;
- (int64_t)typeForEntry:(id)entry;
- (void)activate:(BOOL)activate withEntry:(id)entry;
@end

@implementation BLSHPreventBacklightIdleAttributeHandler

+ (id)registerHandlerForService:(id)service provider:(id)provider
{
  providerCopy = provider;
  serviceCopy = service;
  v8 = [[self alloc] initForService:serviceCopy provider:providerCopy];

  [v8 setupService];

  return v8;
}

- (id)initForService:(id)service provider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = BLSHPreventBacklightIdleAttributeHandler;
  v7 = [(BLSHLocalCountingAssertionAttributeHandler *)&v10 initForService:service];
  v8 = v7;
  if (v7)
  {
    *(v7 + 12) = 0;
    objc_storeWeak(v7 + 7, providerCopy);
  }

  return v8;
}

+ (id)attributeClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (int64_t)typeForEntry:(id)entry
{
  entryCopy = entry;
  attribute = [entryCopy attribute];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BLSHPreventBacklightIdleAttributeHandler typeForEntry:a2];
  }

  clearUserInteraction = [attribute clearUserInteraction];
  restartTimerOnInvalidation = [attribute restartTimerOnInvalidation];
  if (clearUserInteraction)
  {
    if ((restartTimerOnInvalidation & 1) == 0)
    {
      [BLSHPreventBacklightIdleAttributeHandler typeForEntry:a2];
    }

    v8 = 2;
  }

  else
  {
    v8 = restartTimerOnInvalidation;
  }

  return v8;
}

- (id)countingTargetForEntry:(id)entry
{
  v3 = [(BLSHPreventBacklightIdleAttributeHandler *)self typeForEntry:entry];
  if (v3 <= 2)
  {
    v4 = NSStringFromSelector(*off_27841E9B8[v3]);
  }

  return v4;
}

- (void)activate:(BOOL)activate withEntry:(id)entry
{
  activateCopy = activate;
  v37 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v8 = [(BLSHPreventBacklightIdleAttributeHandler *)self typeForEntry:entryCopy];
  os_unfair_lock_lock(&self->_lock);
  active = self->_active;
  if (self->_active[v8] != !activateCopy)
  {
    [BLSHPreventBacklightIdleAttributeHandler activate:a2 withEntry:?];
  }

  v24 = entryCopy;
  v10 = self->_active[2];
  v11 = self->_active[1] || v10;
  v12 = *active || v11;
  active[v8] = activateCopy;
  v13 = self->_active[2];
  v14 = self->_active[1] || v13;
  v15 = *active || v14;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  os_unfair_lock_unlock(&self->_lock);
  v17 = bls_backlight_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (activateCopy)
  {
    if (v18)
    {
      *buf = 67109888;
      v26 = v12;
      v27 = 1024;
      v28 = v15;
      v29 = 1024;
      v30 = v11;
      v31 = 1024;
      v32 = v14;
      _os_log_debug_impl(&dword_21FD11000, v17, OS_LOG_TYPE_DEBUG, "received first assertion acquired event oldPreventIdle=%{BOOL}u preventIdle=%{BOOL}u oldRestartTimer=%{BOOL}u restartTimer=%{BOOL}u", buf, 0x1Au);
    }

    v19 = v12;
    v20 = v24;
    if (v19 != v15)
    {
      [(BLSHBacklightIdleProvider *)WeakRetained setSuppressed:?];
    }

    if (v11 != v14)
    {
      [(os_unfair_lock_s *)WeakRetained setSuspended:1];
    }
  }

  else
  {
    v21 = v13;
    v22 = v12;
    if (v18)
    {
      *buf = 67110400;
      v26 = v10;
      v27 = 1024;
      v28 = v21;
      v29 = 1024;
      v30 = v11;
      v31 = 1024;
      v32 = v14;
      v33 = 1024;
      v34 = v12;
      v35 = 1024;
      v36 = v15;
      _os_log_debug_impl(&dword_21FD11000, v17, OS_LOG_TYPE_DEBUG, "received last assertion dropped event oldClearUserInteraction=%{BOOL}u clearUserInteraction=%{BOOL}u  oldRestartTimer=%{BOOL}u restartTimer=%{BOOL}u  oldPreventIdle=%{BOOL}u preventIdle=%{BOOL}u", buf, 0x26u);
    }

    v20 = v24;
    if (v10 != v21)
    {
      [(os_unfair_lock_s *)WeakRetained reset];
    }

    if (v11 != v14)
    {
      [(os_unfair_lock_s *)WeakRetained setSuspended:0];
    }

    if (v22 != v15)
    {
      [(BLSHBacklightIdleProvider *)WeakRetained setSuppressed:?];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BLSHBacklightIdleProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)typeForEntry:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[attribute isKindOfClass:[BLSPreventBacklightIdleAttribute class]]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)typeForEntry:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[attribute restartTimerOnInvalidation]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)activate:(char *)a1 withEntry:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_active[type] == !isActivate", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end