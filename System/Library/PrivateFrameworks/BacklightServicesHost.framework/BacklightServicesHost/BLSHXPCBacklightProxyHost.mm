@interface BLSHXPCBacklightProxyHost
- (BLSHXPCBacklightProxyHost)initWithLocalBacklightProxy:(id)a3 peer:(id)a4;
- (BOOL)observesActivation;
- (BOOL)observesDeactivation;
- (BOOL)observesPerformingAllEvents;
- (NSString)description;
- (id)beginObservation;
- (id)getBacklightState;
- (id)getFlipbookState;
- (id)performChangeRequest:(id)a3;
- (uint64_t)isValid;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6;
- (void)beginObservation;
- (void)clientProcessStateUpdate:(uint64_t)a1;
- (void)dealloc;
- (void)endObservation;
- (void)invalidate;
- (void)nowObservingWithMask:(id)a3 completion:(id)a4;
- (void)observePerformingEvent:(uint64_t)a1;
@end

@implementation BLSHXPCBacklightProxyHost

- (uint64_t)isValid
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 48));
    v2 = *(a1 + 54);
    os_unfair_lock_unlock((a1 + 48));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (BOOL)observesActivation
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_valid)
  {
    v3 = [(BLSXPCBacklightProxyObserverMask *)self->_lock_observingMask isObservingActivatingWithEvent];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)observesPerformingAllEvents
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_valid)
  {
    v3 = [(BLSXPCBacklightProxyObserverMask *)self->_lock_observingMask isObservingPerformingEvent];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_valid = 0;
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  processMonitor = self->_processMonitor;
  self->_processMonitor = 0;

  lock_observingClient = self->_lock_observingClient;
  self->_lock_observingClient = 0;

  [(BLSBacklightProxy *)self->_localBacklightProxy removeObserver:self];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v1 = OUTLINED_FUNCTION_4_7(a1, *MEMORY[0x277D85DE8]);
  v4 = 134218240;
  v5 = v1;
  OUTLINED_FUNCTION_1_14();
  _os_log_fault_impl(&dword_21FD11000, v2, OS_LOG_TYPE_FAULT, "%p must invalidate before deallocating service for pid:%d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)getBacklightState
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BLSBacklightProxy *)self->_localBacklightProxy backlightState];

  return [v2 numberWithInteger:v3];
}

- (BLSHXPCBacklightProxyHost)initWithLocalBacklightProxy:(id)a3 peer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BLSHXPCBacklightProxyHost;
  v9 = [(BLSHXPCBacklightProxyHost *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_entitlements = 0;
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [v8 remoteProcess];
    if ([v11 hasEntitlement:@"com.apple.backlight.backlightaccess"])
    {
      v10->_entitlements |= 4u;
    }

    if ([v11 hasEntitlement:@"com.apple.backlight.performrequest"])
    {
      v10->_entitlements |= 2u;
    }

    if ([v11 hasEntitlement:@"com.apple.backlight.anysource"])
    {
      v10->_entitlements |= 1u;
    }

    if ([v11 hasEntitlement:@"com.apple.backlight.allowsActivationObservation"])
    {
      v10->_entitlements |= 8u;
    }

    if ([v11 hasEntitlement:@"com.apple.backlight.allowsPerformingEventObservation"])
    {
      v10->_entitlements |= 0x10u;
    }

    objc_storeStrong(&v10->_localBacklightProxy, a3);
    v10->_lock_valid = 1;
    v12 = [v8 remoteProcess];
    v10->_clientPid = [v12 pid];
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_clientPid withName:@"clientPID"];
  v5 = [v3 build];

  return v5;
}

- (id)getFlipbookState
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BLSBacklightProxy *)self->_localBacklightProxy flipbookState];

  return [v2 numberWithInteger:v3];
}

- (void)nowObservingWithMask:(id)a3 completion:(id)a4
{
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ((([v6 isObservingActivatingWithEvent] & 1) != 0 || objc_msgSend(v6, "isObservingDeactivatingWithEvent")) && (self->_entitlements & 8) == 0)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BLSHXPCBacklightProxyHost nowObservingWithMask:? completion:?];
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CF0828];
    v42 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Observing activating/deactivating requires entitlement %@", @"com.apple.backlight.allowsActivationObservation"];
    v43[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v13 = [v9 errorWithDomain:v10 code:21 userInfo:v12];

    [0 addObject:v13];
    v14 = [v6 noActivatingMask];

    v6 = v14;
  }

  if ([v6 isObservingPerformingEvent] && (self->_entitlements & 0x10) == 0)
  {
    v15 = bls_backlight_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BLSHXPCBacklightProxyHost nowObservingWithMask:? completion:?];
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CF0828];
    v40 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Observing performing all events requires entitlement %@", @"com.apple.backlight.allowsPerformingEventObservation"];
    v41 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v20 = [v16 errorWithDomain:v17 code:21 userInfo:v19];

    [0 addObject:v20];
    v21 = [v6 noPerformingEventMask];

    v6 = v21;
  }

  v22 = [0 firstObject];
  if ([0 count] >= 2)
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CF0828];
    v38[0] = *MEMORY[0x277CCA450];
    v25 = MEMORY[0x277CCACA8];
    v26 = [v22 localizedFailureReason];
    v27 = v26;
    if (!v26)
    {
      v27 = [v22 localizedDescription];
    }

    v28 = [v25 stringWithFormat:@"Missing multiple observation entitlements including '%@'", v27];
    v38[1] = *MEMORY[0x277CCA578];
    v39[0] = v28;
    v39[1] = 0;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v30 = [v23 errorWithDomain:v24 code:21 userInfo:v29];

    if (!v26)
    {
    }

    v22 = v30;
  }

  os_unfair_lock_lock(&self->_lock);
  v31 = self->_lock_observingMask;
  objc_storeStrong(&self->_lock_observingMask, v6);
  v32 = self->_lock_observingClient;
  os_unfair_lock_unlock(&self->_lock);
  v33 = [v6 isObserving];
  if (v33 != [(BLSXPCBacklightProxyObserverMask *)v31 isObserving])
  {
    if (v33)
    {
      v34 = [(BLSHXPCBacklightProxyHost *)self beginObservation];

      v32 = v34;
    }

    else
    {
      [(BLSHXPCBacklightProxyHost *)self endObservation];
    }
  }

  if (([(BLSBacklightProxy *)self->_localBacklightProxy isTransitioning]& 1) == 0)
  {
    if ([v6 isObservingDidCompleteUpdateToState] && (-[BLSXPCBacklightProxyObserverMask isObservingDidCompleteUpdateToState](v31, "isObservingDidCompleteUpdateToState") & 1) == 0)
    {
      v35 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLSBacklightProxy backlightState](self->_localBacklightProxy, "backlightState")}];
      [(BLSXPCBacklightProxyClientInterface *)v32 didCompleteUpdateToState:v35 forEvents:0 abortedEvents:0];
    }

    if ([v6 isObservingDidChangeAlwaysOnEnabled] && (-[BLSXPCBacklightProxyObserverMask isObservingDidChangeAlwaysOnEnabled](v31, "isObservingDidChangeAlwaysOnEnabled") & 1) == 0)
    {
      v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLSBacklightProxy isAlwaysOnEnabled](self->_localBacklightProxy, "isAlwaysOnEnabled")}];
      [(BLSXPCBacklightProxyClientInterface *)v32 didChangeAlwaysOnEnabled:v36];
    }
  }

  v7[2](v7, v22);

  v37 = *MEMORY[0x277D85DE8];
}

- (id)beginObservation
{
  if (a1 && (os_unfair_lock_lock((a1 + 48)), v2 = *(a1 + 54), os_unfair_lock_unlock((a1 + 48)), v2 == 1))
  {
    os_unfair_lock_lock((a1 + 48));
    v3 = *(a1 + 16);
    v4 = [MEMORY[0x277CF3280] currentContext];
    v5 = [v4 remoteTarget];
    if (v3)
    {
      os_unfair_lock_unlock((a1 + 48));
      v6 = bls_backlight_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(BLSHXPCBacklightProxyHost *)a1 beginObservation];
      }
    }

    else
    {
      objc_storeStrong((a1 + 16), v5);
      if (!*(a1 + 24))
      {
        objc_initWeak(&location, a1);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __45__BLSHXPCBacklightProxyHost_beginObservation__block_invoke;
        v21[3] = &unk_2784203D8;
        objc_copyWeak(&v22, &location);
        v8 = MEMORY[0x223D70730](v21);
        v9 = MEMORY[0x277D47008];
        v10 = [v4 remoteProcess];
        v11 = [v9 targetWithPid:{objc_msgSend(v10, "pid")}];

        *(a1 + 52) = 1;
        v12 = MEMORY[0x277D46F80];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __45__BLSHXPCBacklightProxyHost_beginObservation__block_invoke_2;
        v17[3] = &unk_278420400;
        objc_copyWeak(&v20, &location);
        v13 = v11;
        v18 = v13;
        v14 = v8;
        v19 = v14;
        v15 = [v12 monitorWithConfiguration:v17];
        v16 = *(a1 + 24);
        *(a1 + 24) = v15;

        objc_destroyWeak(&v20);
        objc_destroyWeak(&v22);

        objc_destroyWeak(&location);
      }

      [(BLSHXPCBacklightProxyHost *)(a1 + 48) beginObservation];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __45__BLSHXPCBacklightProxyHost_beginObservation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 state];

  v7 = [v6 taskState];
  v9 = v7 == 4 || v7 == 2;
  [(BLSHXPCBacklightProxyHost *)WeakRetained clientProcessStateUpdate:v9];
}

void __45__BLSHXPCBacklightProxyHost_beginObservation__block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277D46FB0] descriptor];
    [v5 setValues:1];
    [v3 setStateDescriptor:v5];
    v6 = [MEMORY[0x277D46FA0] predicateMatchingTarget:*(a1 + 32)];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v3 setPredicates:v7];

    [v3 setUpdateHandler:*(a1 + 40)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)observesDeactivation
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_valid)
  {
    v3 = [(BLSXPCBacklightProxyObserverMask *)self->_lock_observingMask isObservingDeactivatingWithEvent];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)performChangeRequest:(id)a3
{
  v59[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([(BLSHXPCBacklightProxyHost *)self isValid]& 1) != 0)
  {
    entitlements = self->_entitlements;
    if ((entitlements & 4) == 0)
    {
      v7 = bls_backlight_log();
      if (OUTLINED_FUNCTION_5_6(v7))
      {
        clientPid = self->_clientPid;
        OUTLINED_FUNCTION_0_14();
        OUTLINED_FUNCTION_2_11();
        _os_log_error_impl(v33, v34, v35, v36, v37, 0x1Cu);
      }

      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CF0828];
      v54 = *MEMORY[0x277CCA450];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ no entitlement %@", v5, @"com.apple.backlight.backlightaccess"];
      v55 = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v55;
      v13 = &v54;
LABEL_13:
      v21 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
      v19 = [v8 errorWithDomain:v9 code:21 userInfo:v21];

      goto LABEL_14;
    }

    if ((entitlements & 2) == 0)
    {
      v20 = bls_backlight_log();
      if (OUTLINED_FUNCTION_5_6(v20))
      {
        v38 = self->_clientPid;
        OUTLINED_FUNCTION_0_14();
        OUTLINED_FUNCTION_2_11();
        _os_log_error_impl(v39, v40, v41, v42, v43, 0x1Cu);
      }

      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CF0828];
      v52 = *MEMORY[0x277CCA450];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ no entitlement %@", v5, @"com.apple.backlight.performrequest"];
      v53 = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v53;
      v13 = &v52;
      goto LABEL_13;
    }

    if ((entitlements & 1) == 0 && [v5 sourceEvent] != 10)
    {
      v25 = bls_backlight_log();
      if (OUTLINED_FUNCTION_5_6(v25))
      {
        v44 = self->_clientPid;
        OUTLINED_FUNCTION_0_14();
        OUTLINED_FUNCTION_2_11();
        _os_log_error_impl(v45, v46, v47, v48, v49, 0x1Cu);
      }

      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CF0828];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ no entitlement %@", v5, @"com.apple.backlight.anysource", *MEMORY[0x277CCA450]];
      v51 = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v51;
      v13 = &v50;
      goto LABEL_13;
    }

    v24 = [(BLSBacklightProxy *)self->_localBacklightProxy performChangeRequest:v5];
    v19 = 0;
  }

  else
  {
    v14 = bls_backlight_log();
    if (OUTLINED_FUNCTION_5_6(v14))
    {
      v26 = self->_clientPid;
      v56 = 67109120;
      v57 = v26;
      OUTLINED_FUNCTION_2_11();
      _os_log_error_impl(v27, v28, v29, v30, v31, 8u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CF0828];
    v58 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"proxy is invalid for pid:%d", self->_clientPid];
    v59[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v19 = [v15 errorWithDomain:v16 code:4 userInfo:v18];
  }

LABEL_14:

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)endObservation
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1 || (os_unfair_lock_lock((a1 + 48)), v2 = *(a1 + 54), os_unfair_lock_unlock((a1 + 48)), v2 != 1))
  {
LABEL_10:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  os_unfair_lock_lock((a1 + 48));
  v3 = *(a1 + 16);
  [*(a1 + 24) invalidate];
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;

  os_unfair_lock_unlock((a1 + 48));
  if (!v3)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 40);
      v11 = 134218240;
      v12 = a1;
      OUTLINED_FUNCTION_1_14();
      _os_log_fault_impl(&dword_21FD11000, v8, OS_LOG_TYPE_FAULT, "%p was not observing from pid:%d", &v11, 0x12u);
    }

    goto LABEL_10;
  }

  v6 = *(a1 + 8);
  v7 = *MEMORY[0x277D85DE8];

  [v6 removeObserver:a1];
}

- (void)clientProcessStateUpdate:(uint64_t)a1
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 48));
    v4 = *(a1 + 52);
    if (v4 != a2)
    {
      *(a1 + 52) = a2;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 53);
    if (a2)
    {
      *(a1 + 53) = 0;
    }

    os_unfair_lock_unlock((a1 + 48));
    if (v4 != a2 && a2 && v6)
    {
      v7 = [*(a1 + 8) backlightState];
      v8 = bls_backlight_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 40);
        v12 = NSStringFromBLSBacklightState();
        v13 = 134218498;
        v14 = a1;
        v15 = 1024;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        _os_log_debug_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEBUG, "%p client now running pid:%d update to backlight state:%{public}@", &v13, 0x1Cu);
      }

      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      [v5 didCompleteUpdateToState:v9 forEvents:0 abortedEvents:0];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6
{
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  if ([(BLSHXPCBacklightProxyHost *)self isValid])
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = [(BLSXPCBacklightProxyObserverMask *)self->_lock_observingMask isObservingEventsArray];
    lock_clientIsTaskScheduled = self->_lock_clientIsTaskScheduled;
    v13 = self->_lock_observingClient;
    if (lock_clientIsTaskScheduled)
    {
      os_unfair_lock_unlock(&self->_lock);
      if ((v11 & 1) == 0)
      {
        if (v9)
        {
          v14 = [v9 firstObject];
          v29[0] = v14;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

          v9 = v15;
        }

        v10 = 0;
      }

      v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      [(BLSXPCBacklightProxyClientInterface *)v13 didCompleteUpdateToState:v16 forEvents:v9 abortedEvents:v10];
    }

    else
    {
      self->_lock_stateIsStale = 1;
      os_unfair_lock_unlock(&self->_lock);
      v16 = bls_backlight_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        clientPid = self->_clientPid;
        v19 = NSStringFromBLSBacklightState();
        v20 = NSStringFromBLSBacklightChangeEvents();
        v21 = 134218754;
        v22 = self;
        v23 = 1024;
        v24 = clientPid;
        v25 = 2114;
        v26 = v19;
        v27 = 2114;
        v28 = v20;
        _os_log_debug_impl(&dword_21FD11000, v16, OS_LOG_TYPE_DEBUG, "%p client not running pid:%d will not notify backlight update to state:%{public}@ events:%{public}@", &v21, 0x26u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)observePerformingEvent:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 48));
    v3 = *(a1 + 54);
    os_unfair_lock_unlock((a1 + 48));
    if (v3 == 1)
    {
      os_unfair_lock_lock((a1 + 48));
      v4 = *(a1 + 16);
      os_unfair_lock_unlock((a1 + 48));
      [v4 performingEvent:v5];
    }
  }
}

- (void)nowObservingWithMask:(uint64_t)a1 completion:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_7(a1, *MEMORY[0x277D85DE8]);
  v3 = 138412546;
  v4 = @"com.apple.backlight.allowsActivationObservation";
  OUTLINED_FUNCTION_1_14();
  _os_log_error_impl(&dword_21FD11000, v1, OS_LOG_TYPE_ERROR, "Observing activating/deactivating requires entitlement %@ pid:%d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)nowObservingWithMask:(uint64_t)a1 completion:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_7(a1, *MEMORY[0x277D85DE8]);
  v3 = 138412546;
  v4 = @"com.apple.backlight.allowsPerformingEventObservation";
  OUTLINED_FUNCTION_1_14();
  _os_log_error_impl(&dword_21FD11000, v1, OS_LOG_TYPE_ERROR, "Observing performing all events requires entitlement %@ pid:%d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)beginObservation
{
  v1 = OUTLINED_FUNCTION_4_7(a1, *MEMORY[0x277D85DE8]);
  v4 = 134218240;
  v5 = v1;
  OUTLINED_FUNCTION_1_14();
  _os_log_fault_impl(&dword_21FD11000, v2, OS_LOG_TYPE_FAULT, "%p already observing from pid:%d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end