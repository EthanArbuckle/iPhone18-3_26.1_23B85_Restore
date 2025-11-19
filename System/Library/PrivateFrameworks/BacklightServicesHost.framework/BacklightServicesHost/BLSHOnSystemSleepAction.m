@interface BLSHOnSystemSleepAction
+ (id)actionWithIdentifier:(id)a3 delegate:(id)a4;
+ (id)actionWithIdentifier:(id)a3 delegate:(id)a4 osInterfaceProvider:(id)a5;
- (BLSHOnSystemSleepAction)initWithIdentifier:(id)a3 delegate:(id)a4 osInterfaceProvider:(id)a5;
- (NSString)description;
- (int64_t)state;
- (void)actionCompleted;
- (void)install;
- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4;
- (void)systemSleepMonitor:(id)a3 sleepRequestedWithResult:(id)a4;
- (void)systemWillWakeForReason:(id)a3;
- (void)uninstall;
@end

@implementation BLSHOnSystemSleepAction

- (int64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  if (lock_state == 2)
  {
    v4 = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
    if ([v4 isAwakeOrAbortingSleep])
    {
      self->_lock_state = 0;
      v5 = bls_backlight_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        identifier = self->_identifier;
        v9 = 134218242;
        v10 = self;
        v11 = 2114;
        v12 = identifier;
        _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "%p:%{public}@ sleep action state now waiting (idle), system activity likely aborted sleep", &v9, 0x16u);
      }

      lock_state = 0;
    }

    else
    {
      lock_state = 2;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
  return lock_state;
}

+ (id)actionWithIdentifier:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[BLSHBacklightOSInterfaceProvider sharedProvider];
  if (!v9)
  {
    [BLSHOnSystemSleepAction actionWithIdentifier:a2 delegate:?];
  }

  v10 = v9;
  v11 = [a1 actionWithIdentifier:v7 delegate:v8 osInterfaceProvider:v9];

  return v11;
}

+ (id)actionWithIdentifier:(id)a3 delegate:(id)a4 osInterfaceProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithIdentifier:v10 delegate:v9 osInterfaceProvider:v8];

  return v11;
}

- (BLSHOnSystemSleepAction)initWithIdentifier:(id)a3 delegate:(id)a4 osInterfaceProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BLSHOnSystemSleepAction;
  v12 = [(BLSHOnSystemSleepAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeWeak(&v13->_delegate, v10);
    objc_storeStrong(&v13->_osInterfaceProvider, a5);
    v13->_lock_state = 0;
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 build];

  return v5;
}

- (void)install
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5(&dword_21FD11000, v2, v3, "%p:%{public}@ installing sleep action when sleep imminent", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __34__BLSHOnSystemSleepAction_install__block_invoke_2(void *a1, int a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = bls_backlight_log();
  v10 = v9;
  if (a2)
  {
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v11 = OS_LOG_TYPE_FAULT;
  }

  if (os_log_type_enabled(v9, v11))
  {
    v12 = a1[4];
    v13 = *(v12 + 56);
    v14 = a1[6];
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v19 = 134219010;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v8;
    v25 = 2048;
    v26 = v15;
    v27 = 2114;
    v28 = v7;
    _os_log_impl(&dword_21FD11000, v10, v11, "%p:%{public}@ install sleep action system activity assertion callback details:%{public}@ elapsed:%.4lfs error:%{public}@", &v19, 0x34u);
  }

  [*(*(a1[5] + 8) + 40) invalidate];
  v16 = *(a1[5] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  v18 = *MEMORY[0x277D85DE8];
}

- (void)uninstall
{
  v3 = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
  [v3 removeObserver:self];
}

- (void)systemSleepMonitor:(id)a3 sleepRequestedWithResult:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 isAwakeOrAbortingSleep];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  v11 = bls_backlight_log();
  v12 = v11;
  if (lock_state)
  {
    v13 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v13 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v11, v13))
  {
    v14 = self->_lock_state;
    identifier = self->_identifier;
    v16 = @"Idle";
    if (v14 == 1)
    {
      v16 = @"Performing";
    }

    if (v14 == 2)
    {
      v17 = @"Completed";
    }

    else
    {
      v17 = v16;
    }

    v26 = a2;
    v18 = v17;
    v19 = [v7 aggregateState];
    *buf = 134218754;
    v31 = self;
    v32 = 2114;
    v33 = identifier;
    v34 = 2114;
    v35 = v18;
    v36 = 2114;
    v37 = v19;
    _os_log_impl(&dword_21FD11000, v12, v13, "%p:%{public}@ sleepRequested state:%{public}@ %{public}@ ", buf, 0x2Au);

    a2 = v26;
  }

  BSContinuousMachTimeNow();
  self->_lock_sleepRequestedTime = v20;
  if ((lock_state != 0) | v9 & 1)
  {
    os_unfair_lock_unlock(&self->_lock);
    v21 = v8[2](v8, 1, 0);
  }

  else
  {
    if (self->_lock_proceedWithSleepBlock)
    {
      [BLSHOnSystemSleepAction systemSleepMonitor:a2 sleepRequestedWithResult:?];
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __71__BLSHOnSystemSleepAction_systemSleepMonitor_sleepRequestedWithResult___block_invoke;
    v28[3] = &unk_27841E998;
    v29 = v8;
    v22 = MEMORY[0x223D70730](v28);
    lock_proceedWithSleepBlock = self->_lock_proceedWithSleepBlock;
    self->_lock_proceedWithSleepBlock = v22;

    self->_lock_state = 1;
    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__BLSHOnSystemSleepAction_systemSleepMonitor_sleepRequestedWithResult___block_invoke_2;
    v27[3] = &unk_27841E650;
    v27[4] = self;
    [WeakRetained systemSleepAction:self performWithCompletion:v27];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 isAwakeOrAbortingSleep];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  v11 = bls_backlight_log();
  v12 = v11;
  if (lock_state == 2)
  {
    v13 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v13 = 16 * (lock_state != 0);
  }

  if (os_log_type_enabled(v11, v13))
  {
    v14 = v9;
    v15 = a2;
    v16 = self->_lock_state;
    identifier = self->_identifier;
    v18 = @"Idle";
    if (v16 == 1)
    {
      v18 = @"Performing";
    }

    if (v16 == 2)
    {
      v19 = @"Completed";
    }

    else
    {
      v19 = v18;
    }

    v20 = v19;
    [v7 aggregateState];
    v21 = v29 = v7;
    *buf = 134218754;
    v34 = self;
    v35 = 2114;
    v36 = identifier;
    a2 = v15;
    v9 = v14;
    v37 = 2114;
    v38 = v20;
    v39 = 2114;
    v40 = v21;
    _os_log_impl(&dword_21FD11000, v12, v13, "%p:%{public}@ prepareForSleep state:%{public}@ %{public}@", buf, 0x2Au);

    v7 = v29;
  }

  v22 = MEMORY[0x223D70730](self->_lock_proceedWithSleepBlock);
  lock_proceedWithSleepBlock = self->_lock_proceedWithSleepBlock;
  self->_lock_proceedWithSleepBlock = 0;

  if (v22)
  {
    v24 = bls_backlight_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [BLSHOnSystemSleepAction systemSleepMonitor:? prepareForSleepWithCompletion:?];
    }

    dispatch_async(MEMORY[0x277D85CD0], v22);
  }

  if (lock_state == 2)
  {
    if (self->_lock_proceedWithSleepBlock)
    {
      [BLSHOnSystemSleepAction systemSleepMonitor:a2 prepareForSleepWithCompletion:?];
    }

    goto LABEL_19;
  }

  if (v9)
  {
LABEL_19:
    os_unfair_lock_unlock(&self->_lock);
    dispatch_async(MEMORY[0x277D85CD0], v8);
    goto LABEL_20;
  }

  if (!lock_state)
  {
    self->_lock_state = 1;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __76__BLSHOnSystemSleepAction_systemSleepMonitor_prepareForSleepWithCompletion___block_invoke;
  v31[3] = &unk_27841E998;
  v32 = v8;
  v26 = MEMORY[0x223D70730](v31);
  v27 = self->_lock_proceedWithSleepBlock;
  self->_lock_proceedWithSleepBlock = v26;

  os_unfair_lock_unlock(&self->_lock);
  if (!lock_state)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __76__BLSHOnSystemSleepAction_systemSleepMonitor_prepareForSleepWithCompletion___block_invoke_2;
    v30[3] = &unk_27841E650;
    v30[4] = self;
    [WeakRetained systemSleepAction:self performWithCompletion:v30];
  }

LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)systemWillWakeForReason:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x223D70730](self->_lock_proceedWithSleepBlock);
  lock_proceedWithSleepBlock = self->_lock_proceedWithSleepBlock;
  self->_lock_proceedWithSleepBlock = 0;

  lock_state = self->_lock_state;
  v8 = bls_backlight_log();
  v9 = v8;
  if (lock_state == 2)
  {
    v10 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v10 = 16 * (lock_state != 0);
  }

  if (os_log_type_enabled(v8, v10))
  {
    v11 = self->_lock_state;
    identifier = self->_identifier;
    v13 = @"Idle";
    if (v11 == 1)
    {
      v13 = @"Performing";
    }

    if (v11 == 2)
    {
      v14 = @"Completed";
    }

    else
    {
      v14 = v13;
    }

    v15 = v14;
    v16 = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
    v17 = [v16 aggregateState];
    v21 = 134219010;
    v22 = self;
    v23 = 2114;
    v24 = identifier;
    v25 = 2114;
    v26 = v4;
    v27 = 2114;
    v28 = v15;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&dword_21FD11000, v9, v10, "%p:%{public}@ systemWillWakeForReason%{public}@ state:%{public}@ %{public}@", &v21, 0x34u);
  }

  self->_lock_state = 0;
  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained systemSleepAction:self systemWillWakeForReason:v4];

  if (v5)
  {
    v19 = bls_backlight_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [BLSHOnSystemSleepAction systemSleepMonitor:? prepareForSleepWithCompletion:?];
    }

    dispatch_async(MEMORY[0x277D85CD0], v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)actionCompleted
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  v4 = MEMORY[0x223D70730](self->_lock_proceedWithSleepBlock);
  lock_proceedWithSleepBlock = self->_lock_proceedWithSleepBlock;
  self->_lock_proceedWithSleepBlock = 0;

  v6 = bls_backlight_log();
  v7 = v6;
  if (lock_state == 1)
  {
    v8 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v8 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = self->_lock_state;
    identifier = self->_identifier;
    v11 = @"Idle";
    if (v9 == 1)
    {
      v11 = @"Performing";
    }

    if (v9 == 2)
    {
      v12 = @"Completed";
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
    v14 = MEMORY[0x223D70730](v4);
    v15 = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
    v16 = [v15 aggregateState];
    v18 = 134219010;
    v19 = self;
    v20 = 2114;
    v21 = identifier;
    v22 = 2114;
    v23 = v13;
    v24 = 2048;
    v25 = v14;
    v26 = 2114;
    v27 = v16;
    _os_log_impl(&dword_21FD11000, v7, v8, "%p:%{public}@ actionCompleted state:%{public}@ proceedWithSleepBlock=%p %{public}@", &v18, 0x34u);
  }

  if (lock_state == 1)
  {
    self->_lock_state = 2;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v4[2](v4);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)actionWithIdentifier:(const char *)a1 delegate:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"sharedProvider != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)systemSleepMonitor:(const char *)a1 sleepRequestedWithResult:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_lock_proceedWithSleepBlock == nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)systemSleepMonitor:(uint64_t)a1 prepareForSleepWithCompletion:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5(&dword_21FD11000, v2, v3, "%p:%{public}@ timed out sleep request", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepMonitor:(const char *)a1 prepareForSleepWithCompletion:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_lock_proceedWithSleepBlock == nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end