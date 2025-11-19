@interface BLSHBacklightStateMachine
- (BLSHBacklightHostTelemetryDelegate)telemetryDelegate;
- (BLSHBacklightStateMachine)initWithPlatformProvider:(id)a3 eventPerformer:(id)a4 osInterfaceProvider:(id)a5;
- (BOOL)deviceSupportsAlwaysOn;
- (BOOL)isAlwaysOnDisabledByAssertion;
- (BOOL)isAlwaysOnEnabled;
- (id)performChangeRequest:(id)a3;
- (os_unfair_lock_s)activeOnAPAwakeAssertionIsActive;
- (os_unfair_lock_s)enableAlwaysOnAfterInitialization;
- (uint64_t)onMain_notifyInitialStateForObserver:(uint64_t)a1;
- (void)addObserver:(id)a3;
- (void)backlight:(id)a3 didCompleteUpdateToFlipbookState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6;
- (void)backlight:(id)a3 didUpdateToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 activeEvents:(id)a6 abortedEvents:(id)a7;
- (void)backlight:(id)a3 didUpdateVisualContentsToBeginTransitionToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6;
- (void)backlight:(id)a3 willUpdateToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 forEvents:(id)a6 abortedEvents:(id)a7;
- (void)dealloc;
- (void)endSuppressionServiceWithExplanation:(void *)a3 logBlock:;
- (void)notifyObserversWithBlock:(uint64_t)a1;
- (void)onMain_handleSuppressionEvent:(uint64_t)a1;
- (void)onMain_performChangeRequest:(uint64_t)a1;
- (void)onMain_updateAlwaysOnConfiguration;
- (void)performUnexpectedSleepRequest:(id)a3;
- (void)platformProvider:(id)a3 didChangeAlwaysOnSetting:(BOOL)a4;
- (void)platformProviderDidDetectSignificantUserInteraction:(id)a3;
- (void)registerHandlersForService:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setAlwaysOnDisabledByAssertion:(BOOL)a3;
- (void)startSuppressionServiceWithLogBlock:(uint64_t)a1;
- (void)systemSleepAction:(id)a3 performWithCompletion:(id)a4;
- (void)systemSleepAction:(id)a3 systemWillWakeForReason:(id)a4;
- (void)updateSuppressionServiceForActivityState:(_BYTE *)a1;
@end

@implementation BLSHBacklightStateMachine

- (BOOL)isAlwaysOnEnabled
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnEnabledResolved = self->_lock_alwaysOnEnabledResolved;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnEnabledResolved;
}

- (void)onMain_updateAlwaysOnConfiguration
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_2(a1);
  if (*(v1 + 126) == 1 && *(v1 + 121) == 1 && (*(v1 + 122) & 1) == 0)
  {
    v2 = *(v1 + 123);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 1;
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  if (v5 != v3)
  {
    *(v1 + 120) = v3;
    v6 = [*(v1 + 32) changeRequest];
    if (v4)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = [*(v1 + 144) backlightState];
    if (*(v1 + 120) == 1)
    {
      [*(v1 + 144) isAlwaysOnSuppressed];
    }

    v7 = v8 != BLSBacklightStateForBacklightActivityStateAlwaysOnAvailable();
    goto LABEL_13;
  }

  v6 = 0;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = 0;
LABEL_13:
  os_unfair_lock_unlock((v1 + 96));
  if (v5 != v3)
  {
    [(BLSHBacklightStateMachine *)v1 updateSuppressionServiceForActivityState:v4];
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3_2();
    v15[2] = __63__BLSHBacklightStateMachine_onMain_updateAlwaysOnConfiguration__block_invoke;
    v15[3] = &unk_27841FBB8;
    v15[4] = v1;
    v16 = v3;
    [(BLSHBacklightStateMachine *)v1 notifyObserversWithBlock:v15];
    if (v7)
    {
      v10 = @"alwaysOnDisabled";
      if (v3)
      {
        v10 = @"alwaysOnEnabled";
      }

      v11 = v10;
      v12 = v6;
      if (!v12)
      {
        v12 = [objc_alloc(MEMORY[0x277CF0890]) initWithRequestedActivityState:v4 explanation:v11 timestamp:mach_continuous_time() sourceEvent:12 sourceEventMetadata:0];
      }

      v13 = bls_backlight_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v18 = v1;
        v19 = 2114;
        v20 = v11;
        v21 = 2114;
        v22 = v12;
        _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_INFO, "BSM:%p sendNewChangeRequest explanation:%{public}@ request:%{public}@", buf, 0x20u);
      }

      v14 = [v1 performChangeRequest:v12];
    }
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
}

- (os_unfair_lock_s)enableAlwaysOnAfterInitialization
{
  if (result)
  {
    OUTLINED_FUNCTION_12_2(result);
    *(v1 + 123) = 1;
    os_unfair_lock_unlock((v1 + 96));
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    return BSDispatchMain();
  }

  return result;
}

void __63__BLSHBacklightStateMachine_onMain_updateAlwaysOnConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 backlight:*(a1 + 32) didChangeAlwaysOnEnabled:*(a1 + 40)];
  }
}

- (BLSHBacklightHostTelemetryDelegate)telemetryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_telemetryDelegate);

  return WeakRetained;
}

- (BLSHBacklightStateMachine)initWithPlatformProvider:(id)a3 eventPerformer:(id)a4 osInterfaceProvider:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v37.receiver = self;
  v37.super_class = BLSHBacklightStateMachine;
  v11 = [(BLSHBacklightStateMachine *)&v37 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&v11->_osInterfaceProvider, a5);
  v12->_lock._os_unfair_lock_opaque = 0;
  v12->_lock_nextEventID = 1;
  v13 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
  lock_observers = v12->_lock_observers;
  v12->_lock_observers = v13;

  if (objc_opt_respondsToSelector())
  {
    v15 = [v8 suppressionSupported];
    v12->_suppressionSupported = v15;
    if (!v15)
    {
LABEL_6:
      if (os_variant_has_internal_diagnostics())
      {
        v16 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
        v12->_suppressionSupported = [v16 BOOLForKey:@"SuppressionServiceEnabled"];
      }
    }
  }

  else if (!v12->_suppressionSupported)
  {
    goto LABEL_6;
  }

  [v9 backlightState];
  if (BLSBacklightStateIsActive())
  {
    v17 = [v10 mach_continuous_time];
    v18 = [(BLSHOSInterfaceProviding *)v12->_osInterfaceProvider createSystemActivityAssertionWithIdentifier:@"BacklightServices.backlightActiveOn.startup" configurator:&__block_literal_global_11];
    lock_activeOnAPAwakeAssertion = v12->_lock_activeOnAPAwakeAssertion;
    v12->_lock_activeOnAPAwakeAssertion = v18;

    v20 = v12->_lock_activeOnAPAwakeAssertion;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __89__BLSHBacklightStateMachine_initWithPlatformProvider_eventPerformer_osInterfaceProvider___block_invoke_2;
    v33[3] = &unk_27841F988;
    v34 = v10;
    v35 = v12;
    v36 = v17;
    [(BLSHSystemActivityAsserting *)v20 acquireWithTimeout:v33 handler:0.0];
  }

  v12->_deviceSupportsAlwaysOn = [v10 deviceSupportsAlwaysOn];
  objc_storeStrong(&v12->_eventPerformer, a4);
  v12->_lock_activityState = BLSBacklightActivityStateForBLSBacklightState();
  [v9 setPerformerDelegate:v12];
  if (objc_opt_respondsToSelector())
  {
    v21 = [v8 isAlwaysOnEnabled];
  }

  else
  {
    v21 = 0;
  }

  v12->_lock_alwaysOnEnabledByPlatform = v21;
  v12->_lock_alwaysOnEnabledResolved = 0;
  [v8 addObserver:v12];
  v22 = [BLSHOnSystemSleepAction actionWithIdentifier:@"BacklightStateMachine-Action" delegate:v12 osInterfaceProvider:v10];
  sleepAction = v12->_sleepAction;
  v12->_sleepAction = v22;

  [(BLSHOnSystemSleepAction *)v12->_sleepAction install];
  v24 = bls_backlight_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    lock_alwaysOnEnabledByPlatform = v12->_lock_alwaysOnEnabledByPlatform;
    *buf = 134218240;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = lock_alwaysOnEnabledByPlatform;
    _os_log_impl(&dword_21FD11000, v24, OS_LOG_TYPE_INFO, "BSM:%p startup alwaysOnEnabledByPlatform:%{BOOL}u", buf, 0x12u);
  }

  [(BLSHBacklightStateMachine *)v12 updateSuppressionServiceForActivityState:?];
  objc_initWeak(&location, v12);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__6;
  v40 = __Block_byref_object_dispose__6;
  v41 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __89__BLSHBacklightStateMachine_initWithPlatformProvider_eventPerformer_osInterfaceProvider___block_invoke_81;
  v30[3] = &unk_27841F9B0;
  objc_copyWeak(&v31, &location);
  v30[4] = buf;
  v26 = [v10 scheduledTimerWithIdentifier:@"backlightAssertionInitialization" interval:v30 leewayInterval:5.0 handler:1.0];
  v27 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v26;

  objc_destroyWeak(&v31);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
  return v12;
}

void __89__BLSHBacklightStateMachine_initWithPlatformProvider_eventPerformer_osInterfaceProvider___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) mach_continuous_time];
  if (a2)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      os_unfair_lock_lock((v10 + 96));
      *(v10 + 56) = v9;
      os_unfair_lock_unlock((v10 + 96));
    }

    v11 = bls_backlight_log();
    if ([v8 afterPendingSleepWasAlreadyInitiated])
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }
  }

  else
  {
    v12 = OS_LOG_TYPE_FAULT;
    v11 = bls_backlight_log();
  }

  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    BSTimeDifferenceFromMachTimeToMachTime();
    v17 = 134218754;
    v18 = v14;
    v19 = 2114;
    v20 = v8;
    v21 = 2048;
    v22 = v15;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_21FD11000, v11, v12, "BSM:%p startup activeOn system activity assertion callback details:%{public}@ elapsed:%.4lfs error:%{public}@", &v17, 0x2Au);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __89__BLSHBacklightStateMachine_initWithPlatformProvider_eventPerformer_osInterfaceProvider___block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(BLSHBacklightStateMachine *)WeakRetained enableAlwaysOnAfterInitialization];

  [*(*(*(a1 + 32) + 8) + 40) invalidate];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)dealloc
{
  [(BLSHBacklightStateMachineEventPerforming *)self->_eventPerformer removeObserver:self];
  [(BLSHSystemActivityAsserting *)self->_lock_activeOnAPAwakeAssertion invalidate];
  [(BLSHSystemActivityAsserting *)self->_lock_performEventAPAwakeAssertion invalidate];
  [(BSTimerScheduleQuerying *)self->_lock_activeOnAPAwakeTimeoutTimer invalidate];
  v3.receiver = self;
  v3.super_class = BLSHBacklightStateMachine;
  [(BLSHBacklightStateMachine *)&v3 dealloc];
}

- (void)registerHandlersForService:(id)a3
{
  v7 = a3;
  v4 = [BLSHDisableAlwaysOnAttributeHandler registerHandlerForService:"registerHandlerForService:provider:" provider:?];
  if (!v4)
  {
    [BLSHBacklightStateMachine registerHandlersForService:a2];
  }

  v5 = v4;
  v6 = [(BLSHLocalAssertionAttributeHandler *)BLSHValidWhenBacklightInactiveAttributeHandler registerHandlerForService:v7];

  if (!v6)
  {
    [BLSHBacklightStateMachine registerHandlersForService:a2];
  }
}

- (BOOL)deviceSupportsAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  deviceSupportsAlwaysOn = self->_deviceSupportsAlwaysOn;
  os_unfair_lock_unlock(&self->_lock);
  return deviceSupportsAlwaysOn;
}

- (id)performChangeRequest:(id)a3
{
  v5 = a3;
  v3 = v5;
  BSDispatchMain();

  return 0;
}

uint64_t __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_110(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  kdebug_trace();
  [v3 invalidate];

  v4 = bls_backlight_log();
  if ([*(a1 + 32) safeToUnblank])
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v5 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    [*(a1 + 56) timestamp];
    [*(a1 + 64) mach_continuous_time];
    BSTimeDifferenceFromMachTimeToMachTime();
    v11 = 134218498;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_21FD11000, v4, v5, "BSM:%p activeOn system activity assertion timed out (related to rdar://74802930) event:%{public}@ elapsed:%.4lfs", &v11, 0x20u);
  }

  result = [*(a1 + 32) setSafeToUnblank:1];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) mach_continuous_time];
  if (v7)
  {
    [v7 code];
  }

  kdebug_trace();
  if (a2)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      os_unfair_lock_lock((v10 + 96));
      *(v10 + 56) = v9;
      os_unfair_lock_unlock((v10 + 96));
    }

    v11 = bls_backlight_log();
    if ([v8 afterPendingSleepWasAlreadyInitiated])
    {
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v12 = OS_LOG_TYPE_DEBUG;
    }
  }

  else
  {
    v12 = OS_LOG_TYPE_FAULT;
    v11 = bls_backlight_log();
  }

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    [*(a1 + 56) timestamp];
    BSTimeDifferenceFromMachTimeToMachTime();
    *buf = 134219010;
    v23 = v13;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v14;
    v28 = 2048;
    v29 = v15;
    v30 = 2114;
    v31 = v7;
    _os_log_impl(&dword_21FD11000, v11, v12, "BSM:%p activeOn system activity assertion callback details:%{public}@ event:%{public}@ elapsed:%.4lfs error:%{public}@", buf, 0x34u);
  }

  [*(a1 + 64) invalidate];
  [*(a1 + 72) setSafeToUnblank:1];
  v19 = *(a1 + 40);
  v20 = v7;
  v21 = *(a1 + 48);
  v16 = v8;
  v17 = v7;
  BSDispatchMain();

  v18 = *MEMORY[0x277D85DE8];
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_117(uint64_t a1)
{
  v2 = [*(a1 + 32) telemetryDelegate];
  [v2 backlightTelemetrySource:*(a1 + 32) didAcquireSystemActivityWithError:*(a1 + 40) isActive:*(a1 + 64) details:*(a1 + 48) forEvent:*(a1 + 56)];
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2_118(uint64_t a1)
{
  v2 = [*(a1 + 32) telemetryDelegate];
  [v2 backlightTelemetrySource:*(a1 + 32) hadExistingSystemActivityForEvent:*(a1 + 40)];
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_4(uint64_t a1, int a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = bls_backlight_log();
  if (a2)
  {
    if ([v8 afterPendingSleepWasAlreadyInitiated])
    {
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v10 = OS_LOG_TYPE_DEBUG;
    }
  }

  else
  {
    v10 = OS_LOG_TYPE_FAULT;
  }

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    [*(a1 + 48) timestamp];
    [*(a1 + 56) mach_continuous_time];
    BSTimeDifferenceFromMachTimeToMachTime();
    v15 = 134219010;
    v16 = v11;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v12;
    v21 = 2048;
    v22 = v13;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_21FD11000, v9, v10, "BSM:%p performEvent system activity assertion callback details:%{public}@ event:%{public}@ elapsed:%.4lfs error:%{public}@", &v15, 0x34u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_124(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 backlightHost:a1[4] willTransitionToState:a1[6] forEvent:a1[5]];
  }
}

uint64_t __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2_128(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 observesPerformingAllEvents])
  {
    [v4 backlight:*(a1 + 32) performingEvent:*(a1 + 40)];
  }

  else if (*(a1 + 48) == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [v4 observesActivation])
  {
    [v4 backlight:*(a1 + 32) activatingWithEvent:*(a1 + 40)];
  }

  else if (*(a1 + 49) == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [v4 observesDeactivation])
  {
    [v4 backlight:*(a1 + 32) deactivatingWithEvent:*(a1 + 40)];
  }

  return MEMORY[0x2821F97D0]();
}

void __70__BLSHBacklightStateMachine_updateSuppressionServiceForActivityState___block_invoke(void *a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = bls_backlight_log();
  v5 = v4;
  if (a2)
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    if (a2)
    {
      v7 = "";
    }

    else
    {
      v7 = "not ";
    }

    v9 = a1[4];
    v8 = a1[5];
    v10 = NSStringFromBLSBacklightActivityState();
    v11 = a1[6];
    v12 = NSStringFromBLSBacklightState();
    v14 = 134218754;
    v15 = v9;
    v16 = 2080;
    v17 = v7;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_21FD11000, v5, v6, "BSM:%p will %sstart suppression service; activityState:%{public}@ unsuppressedTargetBacklightState:%{public}@", &v14, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __70__BLSHBacklightStateMachine_updateSuppressionServiceForActivityState___block_invoke_141(void *a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = bls_backlight_log();
  v5 = v4;
  if (a2)
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    if (a2)
    {
      v7 = "";
    }

    else
    {
      v7 = "not ";
    }

    v9 = a1[4];
    v8 = a1[5];
    v10 = NSStringFromBLSBacklightActivityState();
    v11 = a1[6];
    v12 = NSStringFromBLSBacklightState();
    v14 = 134218754;
    v15 = v9;
    v16 = 2080;
    v17 = v7;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_21FD11000, v5, v6, "BSM:%p will %send suppression service; activityState:%{public}@ unsuppressedTargetBacklightState:%{public}@", &v14, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)endSuppressionServiceWithExplanation:(void *)a3 logBlock:
{
  v16 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [*(a1 + 8) isSuppressionServiceActive];
    v5[2](v5, v6);
    if (v6)
    {
      [*(a1 + 8) endSuppressionService];
    }

    os_unfair_lock_lock((a1 + 96));
    v7 = [*(a1 + 144) isAlwaysOnSuppressed];
    [*(a1 + 144) setAlwaysOnSuppressed:0];
    if ((v6 & 1) == 0 && v7)
    {
      [BLSHBacklightStateMachine endSuppressionServiceWithExplanation:a1 logBlock:sel_endSuppressionServiceWithExplanation_logBlock_];
    }

    if (v6 & v7)
    {
      v8 = mach_continuous_time();
      v9 = objc_alloc(MEMORY[0x277CF0890]);
      v10 = *(a1 + 112);
      v11 = objc_alloc(MEMORY[0x277CF0898]);
      v12 = [[BLSHSuppressionEvent alloc] initWithType:2 reason:0x80000000 timestamp:v8];
      v13 = [v11 initWithSuppressionEvent:v12];
      v14 = [v9 initWithRequestedActivityState:v10 explanation:v16 timestamp:v8 sourceEvent:14 sourceEventMetadata:v13];

      os_unfair_lock_unlock((a1 + 96));
      if (v14)
      {
        v15 = [a1 performChangeRequest:v14];
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 96));
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  v5 = v4;
  BSDispatchMain();
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

void __88__BLSHBacklightStateMachine_backlight_didCompleteUpdateToState_forEvents_abortedEvents___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 backlight:a1[4] didCompleteUpdateToState:a1[8] forEvents:a1[5] abortedEvents:a1[6]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 backlight:a1[4] didCompleteUpdateToState:a1[8] forEvent:a1[7]];
  }
}

void __96__BLSHBacklightStateMachine_backlight_didCompleteUpdateToFlipbookState_forEvents_abortedEvents___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 backlight:a1[4] didCompleteUpdateToFlipbookState:a1[8] forEvents:a1[5] abortedEvents:a1[6]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 backlight:a1[4] didCompleteUpdateToFlipbookState:a1[8] forEvent:a1[7]];
  }
}

void __111__BLSHBacklightStateMachine_backlight_didUpdateVisualContentsToBeginTransitionToState_forEvents_abortedEvents___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 observesDidUpdateVisualContents])
  {
    [v3 backlight:a1[4] didUpdateVisualContentsToBeginTransitionToState:a1[7] forEvents:a1[5] abortedEvents:a1[6]];
  }
}

void __103__BLSHBacklightStateMachine_backlight_willUpdateToDisplayMode_fromDisplayMode_forEvents_abortedEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 observesUpdateToDisplayMode])
  {
    [v3 backlight:*(a1 + 32) willUpdateToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) forEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }

  else if (*(a1 + 72) == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 observesBlankingChanges])
  {
    [v3 backlight:*(a1 + 32) willUnblankToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) forEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }
}

void __105__BLSHBacklightStateMachine_backlight_didUpdateToDisplayMode_fromDisplayMode_activeEvents_abortedEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 observesUpdateToDisplayMode])
  {
    [v3 backlight:*(a1 + 32) didUpdateToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) activeEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }

  else if (*(a1 + 72) == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [v3 observesBlankingChanges])
  {
    [v3 backlight:*(a1 + 32) didBlankToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) activeEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }
}

- (void)platformProvider:(id)a3 didChangeAlwaysOnSetting:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_alwaysOnEnabledByPlatform = v4;
  v6 = bls_backlight_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v9 = self;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, "BSM:%p didChangeAlwaysOnSetting:%{BOOL}u", buf, 0x12u);
  }

  os_unfair_lock_unlock(&self->_lock);
  BSDispatchMain();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)platformProviderDidDetectSignificantUserInteraction:(id)a3
{
  if (self->_suppressionSupported)
  {
    os_unfair_lock_lock(&self->_lock);
    lock_activityState = self->_lock_activityState;
    os_unfair_lock_unlock(&self->_lock);
    if (lock_activityState == 1)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __81__BLSHBacklightStateMachine_platformProviderDidDetectSignificantUserInteraction___block_invoke;
      v5[3] = &unk_27841FB90;
      v5[4] = self;
      v5[5] = 1;
      [(BLSHBacklightStateMachine *)self endSuppressionServiceWithExplanation:v5 logBlock:?];
    }
  }

  [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider didDetectSignificantUserInteraction];
}

void __81__BLSHBacklightStateMachine_platformProviderDidDetectSignificantUserInteraction___block_invoke(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = bls_backlight_log();
  v5 = v4;
  if (a2)
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    if (a2)
    {
      v7 = "";
    }

    else
    {
      v7 = "not ";
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = NSStringFromBLSBacklightActivityState();
    v12 = 134218498;
    v13 = v9;
    v14 = 2080;
    v15 = v7;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_21FD11000, v5, v6, "BSM:%p will %send suppression service after significant user interaction; activityState:%{public}@", &v12, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAlwaysOnDisabledByAssertion
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnDisabledByAssertion = self->_lock_alwaysOnDisabledByAssertion;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnDisabledByAssertion;
}

- (void)setAlwaysOnDisabledByAssertion:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_alwaysOnDisabledByAssertion = v3;
  self->_lock_alwaysOnEnabledAfterInitialization = 1;
  v5 = bls_backlight_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v8 = self;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "BSM:%p setAlwaysOnDisabledByAssertion:%{BOOL}u", buf, 0x12u);
  }

  os_unfair_lock_unlock(&self->_lock);
  BSDispatchMain();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepAction:(id)a3 performWithCompletion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(BLSHBacklightStateMachine *)self backlightState];
  IsActive = BLSBacklightStateIsActive();
  if (IsActive && [(BLSHBacklightStateMachine *)self activeOnAPAwakeAssertionIsActive])
  {
    v10 = [objc_alloc(MEMORY[0x277CF0890]) initWithRequestedActivityState:0 explanation:@"unexpected system sleep" timestamp:mach_continuous_time() sourceEvent:12 sourceEventMetadata:0];
    os_unfair_lock_lock(&self->_lock);
    v11 = MEMORY[0x223D70730](v5);
    lock_sleepActionCompletion = self->_lock_sleepActionCompletion;
    self->_lock_sleepActionCompletion = v11;

    lock_activeOnAPAwakeAssertionAcquireTime = self->_lock_activeOnAPAwakeAssertionAcquireTime;
    [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider mach_continuous_time];
    BSTimeDifferenceFromMachTimeToMachTime();
    v15 = v14;
    v16 = 0.5 - v14;
    v17 = bls_backlight_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16 <= 0.0)
    {
      if (v18)
      {
        v24 = self->_lock_activeOnAPAwakeAssertionAcquireTime;
        BLSLoggingStringForContinuousMachTime();
        v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 134219010;
        v32 = self;
        v33 = 2114;
        v34 = v25;
        v35 = 2048;
        v36 = v15;
        v37 = 2048;
        v38 = 0.5 - v15;
        v39 = 2114;
        v40 = v10;
        _os_log_impl(&dword_21FD11000, v17, OS_LOG_TYPE_DEFAULT, "BSM:%p unexpected system sleep - assertion acquired %{public}@ {elapsedTime:%lf timerInterval:%lf} — dispatching request:%{public}@", buf, 0x34u);
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __69__BLSHBacklightStateMachine_systemSleepAction_performWithCompletion___block_invoke_201;
      v27[3] = &unk_27841E538;
      v20 = &v28;
      v27[4] = self;
      v28 = v10;
      v26 = v10;
      dispatch_async(MEMORY[0x277D85CD0], v27);
    }

    else
    {
      if (v18)
      {
        *buf = 134218498;
        v32 = self;
        v33 = 2048;
        v34 = 0.5 - v15;
        v35 = 2114;
        v36 = *&v10;
        _os_log_impl(&dword_21FD11000, v17, OS_LOG_TYPE_DEFAULT, "BSM:%p unexpected system sleep - will wait %lfs before sending request:%{public}@", buf, 0x20u);
      }

      osInterfaceProvider = self->_osInterfaceProvider;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __69__BLSHBacklightStateMachine_systemSleepAction_performWithCompletion___block_invoke;
      v29[3] = &unk_27841FBE0;
      v20 = &v30;
      v29[4] = self;
      v30 = v10;
      v21 = v10;
      v22 = [(BLSHOSInterfaceProviding *)osInterfaceProvider scheduledTimerWithIdentifier:@"unexpected system sleep debounce" interval:v29 leewayInterval:0.5 - v15 handler:0.1];
      lock_unexpectedSleepDebounceTimer = self->_lock_unexpectedSleepDebounceTimer;
      self->_lock_unexpectedSleepDebounceTimer = v22;
    }

    os_unfair_lock_unlock(&self->_lock);
    v7 = v10 == 0;
  }

  else
  {
    v5[2](v5);
    v7 = 1;
  }

  if ((IsActive & v7) == 1)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BLSHBacklightStateMachine systemSleepAction:v8 performWithCompletion:?];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __69__BLSHBacklightStateMachine_systemSleepAction_performWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  [a2 invalidate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 performUnexpectedSleepRequest:v4];
}

- (void)performUnexpectedSleepRequest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x223D70730](self->_lock_sleepActionCompletion);
  lock_sleepActionCompletion = self->_lock_sleepActionCompletion;
  v7 = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
  v8 = [v7 aggregateState];

  v9 = (lock_sleepActionCompletion != 0) & [v8 isAwakeOrAbortingSleep];
  if (v9 == 1)
  {
    v10 = self->_lock_sleepActionCompletion;
    self->_lock_sleepActionCompletion = 0;
  }

  [(BSInvalidatable *)self->_lock_unexpectedSleepDebounceTimer invalidate];
  lock_unexpectedSleepDebounceTimer = self->_lock_unexpectedSleepDebounceTimer;
  self->_lock_unexpectedSleepDebounceTimer = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightStateMachine *)self backlightState];
  IsActive = BLSBacklightStateIsActive();
  if (v9)
  {
    v13 = bls_backlight_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v25 = 134218754;
      v26 = self;
      v27 = 1024;
      *v28 = 1;
      *&v28[4] = 2114;
      *&v28[6] = v8;
      *&v28[14] = 2114;
      *&v28[16] = v4;
      _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_INFO, "BSM:%p (no longer requested) unexpected system sleep - hasSleepActionCompletion:%{BOOL}u %{public}@ - will not send request:%{public}@", &v25, 0x26u);
    }

    v5[2](v5);
    goto LABEL_13;
  }

  if (!lock_sleepActionCompletion)
  {
    v14 = bls_backlight_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      goto LABEL_13;
    }

    v25 = 134218498;
    v26 = self;
    v27 = 2114;
    *v28 = v4;
    *&v28[8] = 2114;
    *&v28[10] = v8;
    v15 = "BSM:%p (no sleep action completion) unexpected system sleep - will not send request:%{public}@ %{public}@";
    goto LABEL_10;
  }

  v19 = IsActive;
  v20 = [(BLSHBacklightStateMachine *)self activeOnAPAwakeAssertionIsActive];
  if ((v19 & v20) != 1)
  {
    v23 = v20;
    v14 = bls_backlight_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v25 = 134219010;
    v26 = self;
    v27 = 1024;
    *v28 = v19;
    *&v28[4] = 1024;
    *&v28[6] = v23 & 1;
    *&v28[10] = 2114;
    *&v28[12] = v4;
    *&v28[20] = 2114;
    *&v28[22] = v8;
    v15 = "BSM:%p (no longer active) unexpected system sleep - isActive:%{BOOL}u activeOnAPAssertion:%{BOOL}u – will not send request:%{public}@ %{public}@";
    v16 = v14;
    v17 = 44;
    goto LABEL_11;
  }

  v21 = [v8 isAwakeOrAbortingSleep];
  v22 = bls_backlight_log();
  v14 = v22;
  if (v21)
  {
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    v25 = 134218498;
    v26 = self;
    v27 = 2114;
    *v28 = v4;
    *&v28[8] = 2114;
    *&v28[10] = v8;
    v15 = "BSM:%p (sleep not requested) unexpected system sleep – will not send request:%{public}@ %{public}@";
LABEL_10:
    v16 = v14;
    v17 = 32;
LABEL_11:
    _os_log_impl(&dword_21FD11000, v16, OS_LOG_TYPE_INFO, v15, &v25, v17);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v25 = 134218498;
    v26 = self;
    v27 = 2114;
    *v28 = v4;
    *&v28[8] = 2114;
    *&v28[10] = v8;
    _os_log_error_impl(&dword_21FD11000, v14, OS_LOG_TYPE_ERROR, "BSM:%p unexpected system sleep - will deactivate backlight with request:%{public}@ %{public}@", &v25, 0x20u);
  }

  v24 = [(BLSHBacklightStateMachine *)self performChangeRequest:v4];
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepAction:(id)a3 systemWillWakeForReason:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = MEMORY[0x223D70730](self->_lock_sleepActionCompletion);
  lock_sleepActionCompletion = self->_lock_sleepActionCompletion;
  self->_lock_sleepActionCompletion = 0;

  [(BSInvalidatable *)self->_lock_unexpectedSleepDebounceTimer invalidate];
  lock_unexpectedSleepDebounceTimer = self->_lock_unexpectedSleepDebounceTimer;
  self->_lock_unexpectedSleepDebounceTimer = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v9 = bls_backlight_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
      v11 = [v10 aggregateState];
      v13 = 134218498;
      v14 = self;
      v15 = 2112;
      v16 = v5;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_INFO, "BSM:%p (will not sleep - %@) unexpected system sleep - will not send request %{public}@", &v13, 0x20u);
    }

    v6[2](v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateSuppressionServiceForActivityState:(_BYTE *)a1
{
  if (a1 && a1[125] == 1)
  {
    [a1 isAlwaysOnEnabled];
    v4 = BLSBacklightStateForBacklightActivityStateAlwaysOnAvailable();
    if (v4)
    {
      if (v4 == 1)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = __70__BLSHBacklightStateMachine_updateSuppressionServiceForActivityState___block_invoke;
        v6[3] = &unk_27841FAC8;
        v6[4] = a1;
        v6[5] = a2;
        v6[6] = 1;
        [(BLSHBacklightStateMachine *)a1 startSuppressionServiceWithLogBlock:v6];
      }
    }

    else
    {
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3_2();
      v5[2] = __70__BLSHBacklightStateMachine_updateSuppressionServiceForActivityState___block_invoke_141;
      v5[3] = &unk_27841FAC8;
      v5[4] = a1;
      v5[5] = a2;
      v5[6] = 0;
      [(BLSHBacklightStateMachine *)a1 endSuppressionServiceWithExplanation:v5 logBlock:?];
    }
  }
}

- (os_unfair_lock_s)activeOnAPAwakeAssertionIsActive
{
  if (result)
  {
    OUTLINED_FUNCTION_12_2(result);
    v2 = [*(v1 + 48) isActive];
    os_unfair_lock_unlock((v1 + 96));
    return v2;
  }

  return result;
}

- (void)onMain_performChangeRequest:(uint64_t)a1
{
  v82[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 96));
    v4 = *(a1 + 124);
    os_unfair_lock_unlock((a1 + 96));
    if (v4 == 1)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke;
      block[3] = &unk_27841E538;
      block[4] = a1;
      v77 = v3;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      os_unfair_lock_lock((a1 + 96));
      v6 = *(a1 + 144);
      v7 = [v6 backlightState];
      v8 = [v3 requestedActivityState];
      if (*(a1 + 120) == 1)
      {
        [*(a1 + 144) isAlwaysOnSuppressed];
      }

      v9 = BLSBacklightStateForBacklightActivityStateAlwaysOnAvailable();
      v10 = [v6 isTransitioning];
      v11 = *(a1 + 104);
      *(a1 + 104) = v11 + 1;
      v12 = [objc_alloc(MEMORY[0x277CF0888]) initWithEventID:v11 state:v9 previousState:v7 wasTransitioning:v10 changeRequest:v3];
      objc_storeStrong((a1 + 32), v12);
      *(a1 + 112) = v8;
      *(a1 + 124) = 1;
      v42 = *(a1 + 72);
      v13 = *(a1 + 48);
      v44 = *(a1 + 80);
      v45 = v7;
      if (!*(a1 + 40))
      {
        v14 = MEMORY[0x277CF0868];
        v15 = [BLSHDisableFlipbookPowerSavingAttribute disablePowerSavingForReason:1];
        v82[0] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:1];
        v17 = [v14 acquireWithExplanation:@"BacklightEvent" observer:0 attributes:v16];
        v18 = *(a1 + 40);
        *(a1 + 40) = v17;

        v7 = v45;
      }

      os_unfair_lock_unlock((a1 + 96));
      v19 = bls_backlight_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v79 = a1;
        v80 = 2114;
        v81 = v12;
        _os_log_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEFAULT, "BSM:%p will performRequest with event:%{public}@", buf, 0x16u);
      }

      [v3 sourceEvent];
      [v3 timestamp];
      kdebug_trace();
      [v6 prewarmEvent:v12];
      v20 = [a1 telemetryDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v20 backlightTelemetrySource:a1 willPerformEvent:v12];
      }

      else
      {
        [v20 backlightTelemetrySource:a1 willTransitionToState:v9 forEvent:v12];
      }

      [(BLSHBacklightStateMachine *)a1 updateSuppressionServiceForActivityState:v8];
      v43 = *(a1 + 8);
      v41 = v20;
      if (BLSBacklightStateIsActive())
      {
        if (v13)
        {
          v57 = MEMORY[0x277D85DD0];
          v58 = 3221225472;
          v59 = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2_118;
          v60 = &unk_27841E538;
          v61 = a1;
          v62 = v12;
          BSDispatchMain();
          v25 = v62;
        }

        else
        {
          [v6 setSafeToUnblank:0];
          [v44 invalidate];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_110;
          v70[3] = &unk_27841F9D8;
          v40 = v6;
          v71 = v40;
          v72 = a1;
          v21 = v12;
          v73 = v21;
          v22 = v3;
          v74 = v22;
          v23 = v43;
          v75 = v23;
          v39 = [v23 scheduledTimerWithIdentifier:@"systemActivity.backlightActiveOn.timeout" interval:v70 leewayInterval:0.6 handler:0.1];

          v13 = [v23 createSystemActivityAssertionWithIdentifier:@"BacklightServices.backlightActiveOn" configurator:&__block_literal_global_116];
          kdebug_trace();
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2;
          v63[3] = &unk_27841FA28;
          v24 = v23;
          v7 = v45;
          v64 = v24;
          v65 = a1;
          v66 = v21;
          v67 = v22;
          v44 = v39;
          v68 = v44;
          v69 = v40;
          [v13 acquireWithTimeout:v63 handler:0.0];

          v25 = v71;
        }
      }

      if (v7 == v9)
      {
        v26 = v42;
      }

      else
      {
        v27 = [*(a1 + 16) state];
        v26 = v42;
        if (!(v13 | v42))
        {
          if (v27 == 1)
          {
            v26 = 0;
          }

          else
          {
            v28 = MEMORY[0x277CCACA8];
            v29 = [v12 changeRequest];
            v30 = [v28 stringWithFormat:@"BacklightServices.performEvent:%p:%d", v12, objc_msgSend(v29, "sourceEvent")];
            v26 = [v43 createSystemActivityAssertionWithIdentifier:v30 configurator:&__block_literal_global_123];

            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_4;
            v53[3] = &unk_27841FA50;
            v53[4] = a1;
            v54 = v12;
            v55 = v3;
            v56 = v43;
            [v26 acquireWithTimeout:v53 handler:22.0];
          }
        }

        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_124;
        v50[3] = &unk_27841FA78;
        v50[4] = a1;
        v52 = v9;
        v51 = v12;
        [(BLSHBacklightStateMachine *)a1 notifyObserversWithBlock:v50];
      }

      os_unfair_lock_lock((a1 + 96));
      v31 = *(a1 + 72);
      *(a1 + 72) = v26;
      v32 = v26;

      v33 = *(a1 + 48);
      *(a1 + 48) = v13;
      v34 = v13;

      v35 = *(a1 + 80);
      *(a1 + 80) = v44;
      v36 = v44;

      *(a1 + 124) = 0;
      os_unfair_lock_unlock((a1 + 96));
      LOBYTE(v35) = BLSBacklightStateIsActive();
      IsActive = BLSBacklightStateIsActive();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __57__BLSHBacklightStateMachine_onMain_performChangeRequest___block_invoke_2_128;
      v46[3] = &unk_27841FAA0;
      v46[4] = a1;
      v47 = v12;
      v48 = (v35 ^ 1) & IsActive;
      v49 = v35 & (IsActive ^ 1);
      v38 = v12;
      [(BLSHBacklightStateMachine *)a1 notifyObserversWithBlock:v46];
      [v6 performEvent:v38];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversWithBlock:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 96));
    v4 = [*(a1 + 88) allObjects];
    os_unfair_lock_unlock((a1 + 96));
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v3[2](v3, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startSuppressionServiceWithLogBlock:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 8) isSuppressionServiceActive];
    v5 = v4;
    v3[2](v3, v4 ^ 1u);
    if ((v5 & 1) == 0)
    {
      v6 = *(a1 + 8);
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_18();
      v9 = __65__BLSHBacklightStateMachine_startSuppressionServiceWithLogBlock___block_invoke;
      v10 = &unk_27841FAF0;
      v11 = a1;
      [v7 startSuppressionServiceWithHandler:v8];
    }
  }
}

- (void)onMain_handleSuppressionEvent:(uint64_t)a1
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    if ([*(a1 + 8) isSuppressionServiceActive])
    {
      os_unfair_lock_lock((a1 + 96));
      v4 = [v3 wantsSuppression];
      [*(a1 + 144) setAlwaysOnSuppressed:v4];
      v5 = MEMORY[0x277CCACA8];
      if (v4)
      {
        v6 = @"alwaysOn suppressed";
      }

      else
      {
        v6 = @"alwaysOn unsuppressed";
      }

      [v3 reason];
      v7 = NSStringFromBLSAlwaysOnSuppressionReason();
      v8 = [v5 stringWithFormat:@"%@ — %@", v6, v7];

      v9 = objc_alloc(MEMORY[0x277CF0890]);
      v10 = *(a1 + 112);
      v11 = [v3 machContinuousTimestamp];
      v12 = [objc_alloc(MEMORY[0x277CF0898]) initWithSuppressionEvent:v3];
      v13 = [v9 initWithRequestedActivityState:v10 explanation:v8 timestamp:v11 sourceEvent:14 sourceEventMetadata:v12];

      os_unfair_lock_unlock((a1 + 96));
      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_26();
        v21 = v8;
        v22 = v15;
        v23 = v13;
        v24 = v15;
        v25 = v3;
        _os_log_impl(&dword_21FD11000, v14, OS_LOG_TYPE_INFO, "BSM:%p suppressionEvent explanation:%{public}@ request:%{public}@ event:%{public}@", buf, 0x2Au);
      }

      v16 = [a1 performChangeRequest:v13];
    }

    else
    {
      v8 = bls_backlight_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        goto LABEL_13;
      }

      [v3 reason];
      v13 = NSStringFromBLSAlwaysOnSuppressionReason();
      OUTLINED_FUNCTION_26();
      v21 = v17;
      v22 = v18;
      v23 = v3;
      _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEFAULT, "BSM:%p will ignore suppressionEvent — arrived after service was deactivated — explanation:%{public}@ event:%{public}@", buf, 0x20u);
    }

    goto LABEL_12;
  }

LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

- (uint64_t)onMain_notifyInitialStateForObserver:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v45 = v3;
    os_unfair_lock_lock((a1 + 96));
    v4 = [*(a1 + 88) containsObject:v45];
    v5 = *(a1 + 120);
    os_unfair_lock_unlock((a1 + 96));
    if (v4)
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [a1 backlightState];
        [OUTLINED_FUNCTION_2_8(v6 v7];
      }

      else if (objc_opt_respondsToSelector())
      {
        v14 = [a1 backlightState];
        [OUTLINED_FUNCTION_2_8(v14 v15];
      }

      if (objc_opt_respondsToSelector())
      {
        [v45 backlight:a1 didChangeAlwaysOnEnabled:v5];
      }

      if (objc_opt_respondsToSelector())
      {
        v22 = [a1 flipbookState];
        [OUTLINED_FUNCTION_2_8(v22 v23];
      }

      else if (objc_opt_respondsToSelector())
      {
        v30 = [a1 flipbookState];
        [OUTLINED_FUNCTION_2_8(v30 v31];
      }

      v38 = IsBlankedForBLSBacklightDisplayMode([*(a1 + 144) backlightDisplayMode]);
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v45 observesUpdateToDisplayMode])
      {
        OUTLINED_FUNCTION_3_6();
        [v39 backlight:? didUpdateToDisplayMode:? fromDisplayMode:? activeEvents:? abortedEvents:?];
      }

      else
      {
        v40 = objc_opt_respondsToSelector();
        if (v38)
        {
          if ((v40 & 1) != 0 && [v45 observesBlankingChanges])
          {
            OUTLINED_FUNCTION_3_6();
            [v41 backlight:? didBlankToDisplayMode:? fromDisplayMode:? activeEvents:? abortedEvents:?];
          }
        }

        else if ((v40 & 1) != 0 && [v45 observesBlankingChanges])
        {
          OUTLINED_FUNCTION_3_6();
          [v42 backlight:? willUnblankToDisplayMode:? fromDisplayMode:? forEvents:? abortedEvents:?];
        }
      }
    }
  }

  return MEMORY[0x2821F9730]();
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_transitioningEvent && [v9 containsObject:?])
  {
    lock_transitioningEvent = self->_lock_transitioningEvent;
    self->_lock_transitioningEvent = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = [v9 firstObject];
  v13 = [v12 changeRequest];
  [v12 previousState];
  [v13 sourceEvent];
  [v13 timestamp];
  kdebug_trace();
  v14 = [v9 count];
  v15 = bls_backlight_log();
  v16 = 2 * (v14 == 0);
  if (os_log_type_enabled(v15, v16))
  {
    NSStringFromBLSBacklightState();
    v41 = a4;
    v17 = v13;
    v19 = v18 = v10;
    [v17 timestamp];
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v21 = v20;
    v22 = NSStringFromBLSBacklightChangeEvents();
    OUTLINED_FUNCTION_10();
    v51 = v19;
    v52 = 2048;
    v53 = v21;
    v54 = v23;
    v55 = v24;
    _os_log_impl(&dword_21FD11000, v15, v16, "BSM:%p didCompleteUpdateToState:%{public}@ elapsed:%.4lfs forEvents:%{public}@", buf, 0x2Au);

    v10 = v18;
    v13 = v17;
    a4 = v41;
  }

  if (v14)
  {
    v25 = [(BLSHBacklightStateMachine *)self telemetryDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v25 backlightTelemetrySource:self didCompleteUpdateToState:a4 forEvents:v9 abortedEvents:v10];
    }

    else
    {
      [v25 backlightTelemetrySource:self didCompleteUpdateToState:a4 forEvent:v12];
    }
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_18();
  v43 = __88__BLSHBacklightStateMachine_backlight_didCompleteUpdateToState_forEvents_abortedEvents___block_invoke;
  v44 = &unk_27841FB18;
  v45 = self;
  v49 = a4;
  v26 = v9;
  v46 = v26;
  v27 = v10;
  v47 = v27;
  v28 = v12;
  v48 = v28;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v42];
  os_unfair_lock_lock(&self->_lock);
  [(BLSHSystemActivityAsserting *)self->_lock_performEventAPAwakeAssertion invalidate];
  lock_performEventAPAwakeAssertion = self->_lock_performEventAPAwakeAssertion;
  self->_lock_performEventAPAwakeAssertion = 0;

  IsActive = BLSBacklightStateIsActive();
  if ((IsActive & 1) == 0)
  {
    [(BSTimerScheduleQuerying *)self->_lock_activeOnAPAwakeTimeoutTimer invalidate];
    lock_activeOnAPAwakeTimeoutTimer = self->_lock_activeOnAPAwakeTimeoutTimer;
    self->_lock_activeOnAPAwakeTimeoutTimer = 0;

    [(BLSHSystemActivityAsserting *)self->_lock_activeOnAPAwakeAssertion invalidate];
    lock_activeOnAPAwakeAssertion = self->_lock_activeOnAPAwakeAssertion;
    self->_lock_activeOnAPAwakeAssertion = 0;
  }

  v33 = MEMORY[0x223D70730](self->_lock_sleepActionCompletion);
  lock_sleepActionCompletion = self->_lock_sleepActionCompletion;
  self->_lock_sleepActionCompletion = 0;

  [(BLSAssertion *)self->_lock_flipbookPowerSavingAssertion invalidate];
  lock_flipbookPowerSavingAssertion = self->_lock_flipbookPowerSavingAssertion;
  self->_lock_flipbookPowerSavingAssertion = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v33)
  {
    v36 = IsActive;
  }

  else
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    v37 = bls_backlight_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = NSStringFromBLSBacklightChangeEvents();
      OUTLINED_FUNCTION_10();
      v51 = v39;
      _os_log_impl(&dword_21FD11000, v37, OS_LOG_TYPE_DEFAULT, "BSM:%p unexpected system sleep - did deactivate backlight with events:%{public}@", buf, 0x16u);
    }

    v33[2](v33);
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)backlight:(id)a3 didCompleteUpdateToFlipbookState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [v9 firstObject];
  v12 = [(BLSHBacklightStateMachine *)self telemetryDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 backlightTelemetrySource:self didCompleteUpdateToFlipbookState:a4 forEvents:v9 abortedEvents:v10];
  }

  else
  {
    [v12 backlightTelemetrySource:self didCompleteUpdateToFlipbookState:a4 forEvent:v11];
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_18();
  v17 = __96__BLSHBacklightStateMachine_backlight_didCompleteUpdateToFlipbookState_forEvents_abortedEvents___block_invoke;
  v18 = &unk_27841FB18;
  v22 = v11;
  v23 = a4;
  v19 = self;
  v20 = v9;
  v21 = v10;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v16];
}

- (void)backlight:(id)a3 didUpdateVisualContentsToBeginTransitionToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [v9 firstObject];
  v12 = [(BLSHBacklightStateMachine *)self telemetryDelegate];
  if (objc_opt_respondsToSelector())
  {
    [OUTLINED_FUNCTION_6_4() backlightTelemetrySource:? didUpdateVisualContentsToBeginTransitionToState:? forEvents:? abortedEvents:?];
  }

  else
  {
    [OUTLINED_FUNCTION_6_4() backlightTelemetrySource:? didUpdateVisualContentsToBeginTransitionToState:? forEvent:?];
  }

  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v15[2] = __111__BLSHBacklightStateMachine_backlight_didUpdateVisualContentsToBeginTransitionToState_forEvents_abortedEvents___block_invoke;
  v15[3] = &unk_27841FB40;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = a4;
  v13 = v10;
  v14 = v9;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v15];
}

- (void)backlight:(id)a3 willUpdateToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 forEvents:(id)a6 abortedEvents:(id)a7
{
  v11 = a6;
  v12 = a7;
  WillUnblankForDisplayModeTransition(a5, a4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v16[2] = __103__BLSHBacklightStateMachine_backlight_willUpdateToDisplayMode_fromDisplayMode_forEvents_abortedEvents___block_invoke;
  v16[3] = &unk_27841FB68;
  v19 = a4;
  v20 = a5;
  v16[4] = self;
  v17 = v11;
  v18 = v12;
  v21 = v13;
  v14 = v12;
  v15 = v11;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v16];
}

- (void)backlight:(id)a3 didUpdateToDisplayMode:(int64_t)a4 fromDisplayMode:(int64_t)a5 activeEvents:(id)a6 abortedEvents:(id)a7
{
  v11 = a6;
  v12 = a7;
  v13 = WillUnblankForDisplayModeTransition(a5, a4);
  v14 = [v11 firstObject];
  v15 = [(BLSHBacklightStateMachine *)self telemetryDelegate];
  if (v13)
  {
    if (objc_opt_respondsToSelector())
    {
      [OUTLINED_FUNCTION_6_4() backlightTelemetrySource:? didUnblankToDisplayMode:? fromDisplayMode:? activeEvents:? abortedEvents:?];
    }

    else if (v14)
    {
      v16 = BLSBacklightStateForBLSBacklightDisplayMode(a4);
      if (objc_opt_respondsToSelector())
      {
        [v15 backlightTelemetrySource:self didUpdateDisplayForState:v16 forEvents:v11 abortedEvents:v12];
      }

      else
      {
        [v15 backlightTelemetrySource:self didUpdateDisplayForState:v16 forEvent:v14];
      }
    }
  }

  WillBlankForDisplayModeTransition(a5, a4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_2();
  v20[2] = __105__BLSHBacklightStateMachine_backlight_didUpdateToDisplayMode_fromDisplayMode_activeEvents_abortedEvents___block_invoke;
  v20[3] = &unk_27841FB68;
  v23 = a4;
  v24 = a5;
  v20[4] = self;
  v21 = v11;
  v22 = v12;
  v25 = v17;
  v18 = v12;
  v19 = v11;
  [(BLSHBacklightStateMachine *)self notifyObserversWithBlock:v20];
}

- (void)registerHandlersForService:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"handler != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"handler != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)endSuppressionServiceWithExplanation:(uint64_t)a1 logBlock:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"BSM:%p suppressed but suppression service not active"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)systemSleepAction:(uint64_t)a1 performWithCompletion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "BSM:%p system sleep while acquiring system activity, did not deactivate backlight", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end