@interface BLSHAlwaysOnPresentationEngine
- (BLSHAlwaysOnPresentationEngine)initWithDelegate:(id)delegate platformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy;
- (BLSHBacklightInactiveEnvironmentSession)inactiveSession;
- (BLSHRenderedFlipbookFrame)onGlassFlipbookFrame;
- (BOOL)alwaysFillFlipbook;
- (BOOL)cacheFlipbook;
- (BOOL)isGlobal1HzFlipbook;
- (BOOL)isOnStandby;
- (BOOL)isSuppressed;
- (BOOL)isUsingPseudoFlipbook;
- (NSString)debugDescription;
- (NSString)description;
- (id)flipbook;
- (id)frameOnGlassNow;
- (id)frameOnGlassWhenFlipbookLastCancelled;
- (id)lock_cancelFlipbookFramesAndCollectForReason:(uint64_t)reason;
- (id)lock_cancelFlipbookFramesForReason:(void *)reason source:(int)source didClearDateSpecifiers:(int)specifiers wasReset:;
- (id)lock_stopForReason:(int)reason shouldEmptyModel:;
- (id)loggingStreamForRenderSession;
- (id)stopForReason:(id)reason;
- (id)suppressForReason:(id)reason;
- (id)suspendForReason:(id)reason;
- (int64_t)engineState;
- (uint64_t)_lock_acquireAlwaysOnLiveFlipbookPowerAssertion;
- (uint64_t)_lock_acquireAlwaysOnLivePowerAssertion;
- (uint64_t)_lock_update1HzFromPresentation:(uint64_t)presentation;
- (uint64_t)ensureDatesModelCreated;
- (uint64_t)lock_invalidateFlipbookUpdates;
- (uint64_t)lock_setFlipbookPredictiveRenderType;
- (uint64_t)main_shouldWaitForRequestDates;
- (void)createFlipbook;
- (void)dealloc;
- (void)didEndInactiveEnvironmentSession:(id)session;
- (void)hostEnvironment:(id)environment hostDidSetUnrestrictedFramerateUpdates:(BOOL)updates;
- (void)hostEnvironment:(id)environment invalidateContentForReason:(id)reason;
- (void)inactiveEnvironmentSession:(id)session didUpdateToPresentation:(id)presentation;
- (void)invalidateFlipbookForReason:(void *)reason source:(void *)source environment:;
- (void)invalidateOnGlassFlipbookFrame;
- (void)lock_completeSleepActionIfPendingForReason:(void *)reason subReason:;
- (void)lock_endFlipbookRenderSessionAndAllowSleepIfPendingForReason:(uint64_t)reason;
- (void)lock_endFlipbookRenderSessionForReason:(int)reason wasPreventingSleep:;
- (void)lock_scheduleUpdateTimerForNextUpdatesStart:(uint64_t)start;
- (void)lock_setFlipbookPredictiveRenderType;
- (void)main_getMissingDatesFromEnvironments;
- (void)main_performLiveUpdateIfNeeded;
- (void)main_performNextStep;
- (void)main_performUpdateIfNeeded;
- (void)main_prepareAndRenderNextFlipbookFrame;
- (void)noteFlipbookIsCurrentWithSpecifier:(uint64_t)specifier;
- (void)performLiveUpdateToSpecifier:(uint64_t)specifier;
- (void)purgeFlipbook;
- (void)registerHandlersForService:(id)service;
- (void)renderFramesSession:(id)session beganRenderingSpecifier:(id)specifier timedOutEnvironments:(id)environments;
- (void)renderFramesSession:(id)session didRenderFrame:(id)frame timedOutEnvironments:(id)environments;
- (void)renderFramesSession:(id)session failedToRenderSpecifier:(id)specifier error:(id)error timedOutEnvironments:(id)environments;
- (void)requestDatesOperation:(id)operation didTimeoutPendingEnvironments:(id)environments;
- (void)requestDatesOperation:(id)operation environment:(id)environment didProvideSpecifiers:(id)specifiers forPresentationInterval:(id)interval isComplete:(BOOL)complete;
- (void)setAlwaysFillFlipbook:(BOOL)flipbook;
- (void)setGlobal1HzFlipbook:(BOOL)flipbook;
- (void)setInactiveSession:(id)session;
- (void)setOnStandby:(BOOL)standby;
- (void)setUsePseudoFlipbook:(BOOL)flipbook;
- (void)startFlipbookAndEnsureCurrent;
- (void)startLiveUpdates;
- (void)systemSleepAction:(id)action performWithCompletion:(id)completion;
- (void)systemSleepAction:(id)action systemWillWakeForReason:(id)reason;
- (void)timerFiredForNextUpdatesStart:(uint64_t)start;
@end

@implementation BLSHAlwaysOnPresentationEngine

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_opt_new();
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__3;
  v43 = __Block_byref_object_dispose__3;
  v44 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke;
  v35[3] = &unk_27841EC68;
  v4 = v3;
  v36 = v4;
  selfCopy = self;
  v38 = &v39;
  [v4 appendProem:self block:v35];
  if (self->_lock_requestDatesOperation)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_2;
    v32[3] = &unk_27841E538;
    v33 = v4;
    selfCopy2 = self;
    [v33 appendBodySectionWithName:@"requestDatesOperation" block:v32];
    bls_loggingString = v33;
  }

  else
  {
    bls_loggingString = [(NSDateInterval *)self->_lock_lastRequestInterval bls_loggingString];
    v6 = [v4 appendObject:bls_loggingString withName:@"lastRequestInterval"];
  }

  if (v40[5])
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_3;
    v29[3] = &unk_27841EC90;
    v30 = v4;
    v31 = &v39;
    [v30 appendBodySectionWithName:@"frameOnGlass" block:v29];
  }

  lock_preparingToRenderSpecifier = self->_lock_preparingToRenderSpecifier;
  if (lock_preparingToRenderSpecifier && lock_preparingToRenderSpecifier != self->_lock_renderingSpecifier)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_4;
    v26[3] = &unk_27841E538;
    v27 = v4;
    selfCopy3 = self;
    [v27 appendBodySectionWithName:@"preparingToRender" block:v26];
  }

  if (self->_lock_renderingSpecifier)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_5;
    v23[3] = &unk_27841E538;
    v24 = v4;
    selfCopy4 = self;
    [v24 appendBodySectionWithName:@"rendering" block:v23];
  }

  if (self->_lock_cachedFlipbookUpdates)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_6;
    v20[3] = &unk_27841E538;
    v21 = v4;
    selfCopy5 = self;
    [v21 appendBodySectionWithName:@"cachedFlipbookUpdates" block:v20];
  }

  if (self->_lock_timer)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_7;
    v17[3] = &unk_27841E538;
    v18 = v4;
    selfCopy6 = self;
    [v18 appendBodySectionWithName:@"timer" block:v17];
  }

  if (self->_lock_livePowerAssertion)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_8;
    v14[3] = &unk_27841E538;
    v15 = v4;
    selfCopy7 = self;
    [v15 appendBodySectionWithName:@"livePowerAssertion" block:v14];
  }

  if ((self->_lock_engineState - 2) <= 2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_9;
    v12[3] = &unk_27841E538;
    v12[4] = self;
    v13 = v4;
    [v13 appendBodySectionWithName:@"activeFrames" openDelimiter:@" {" closeDelimiter:@"} " block:v12];
  }

  if (self->_renderedFlipbookHistory)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_10;
    v10[3] = &unk_27841E538;
    v10[4] = self;
    v11 = v4;
    [v11 appendBodySectionWithName:@"history" openDelimiter:@" {" closeDelimiter:@"} " block:v10];
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = [v4 description];

  _Block_object_dispose(&v39, 8);

  return v8;
}

void __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 289) withName:@"onStandby"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 290) withName:@"suppressed"];
  v4 = *(*(a1 + 40) + 264);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v7 = [*(a1 + 32) appendObject:@"live" withName:@"backlightState"];
        v8 = [*(*(a1 + 40) + 168) bls_loggingString];
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }
    }

    else
    {
      v16 = [*(a1 + 32) appendObject:@"stopped" withName:@"backlightState"];
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v5 = *(a1 + 32);
        v6 = @"liveFlipbook";
        break;
      case 3:
        v5 = *(a1 + 32);
        v6 = @"predictiveFlipbook";
        break;
      case 4:
        v5 = *(a1 + 32);
        v6 = @"predictiveFlipbookToFill";
        break;
      default:
        goto LABEL_13;
    }

    v11 = [v5 appendObject:v6 withName:@"backlightState"];
    v12 = [*(*(a1 + 40) + 96) frameOnGlass];
    v13 = [v12 bls_loggingString];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

LABEL_13:
  v17 = [*(a1 + 32) appendPointer:*(*(a1 + 40) + 208) withName:@"renderFlipbookSession"];
  v18 = *(a1 + 32);
  v19 = NSStringFromBLSHOnSystemSleepActionState([*(*(a1 + 40) + 72) state]);
  v20 = [v18 appendObject:v19 withName:@"sleepActionState"];

  v21 = *(*(a1 + 40) + 272) - 1;
  if (v21 > 3)
  {
    v22 = @"Awake";
  }

  else
  {
    v22 = off_27841EF68[v21];
  }

  v23 = [*(a1 + 32) appendObject:v22 withName:@"fillState"];
  v24 = *(a1 + 32);
  v26 = [*(*(a1 + 40) + 120) description];
  v25 = [v24 appendObject:v26 withName:0];
}

- (int64_t)engineState
{
  os_unfair_lock_lock(&self->_lock);
  lock_engineState = self->_lock_engineState;
  os_unfair_lock_unlock(&self->_lock);
  return lock_engineState;
}

- (void)invalidateOnGlassFlipbookFrame
{
  os_unfair_lock_lock(&self->_lock);
  lock_frameOnGlassWhenFlipbookCancelled = self->_lock_frameOnGlassWhenFlipbookCancelled;
  self->_lock_frameOnGlassWhenFlipbookCancelled = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BLSHAlwaysOnPresentationEngine)initWithDelegate:(id)delegate platformProvider:(id)provider osInterfaceProvider:(id)interfaceProvider inactiveBudgetPolicy:(id)policy
{
  delegateCopy = delegate;
  providerCopy = provider;
  interfaceProviderCopy = interfaceProvider;
  policyCopy = policy;
  v36.receiver = self;
  v36.super_class = BLSHAlwaysOnPresentationEngine;
  v15 = [(BLSHAlwaysOnPresentationEngine *)&v36 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_delegate, delegate);
    objc_storeStrong(&v16->_osInterfaceProvider, interfaceProvider);
    v17 = [[BLSHEngineEnvironmentObserverHelper alloc] initWithEngine:v16];
    environmentObserverHelper = v16->_environmentObserverHelper;
    v16->_environmentObserverHelper = v17;

    objc_storeStrong(&v16->_realInactiveBudgetPolicy, policy);
    objc_storeStrong(&v16->_inactiveBudgetPolicy, policy);
    v19 = objc_alloc_init(BLSHNullInactiveBudgetPolicy);
    nullInactiveBudgetPolicy = v16->_nullInactiveBudgetPolicy;
    v16->_nullInactiveBudgetPolicy = v19;

    v16->_lock_fillFlipbookState = 0;
    v21 = [BLSHOnSystemSleepAction actionWithIdentifier:@"AlwaysOnPresentationEngine-Action" delegate:v16 osInterfaceProvider:interfaceProviderCopy];
    sleepAction = v16->_sleepAction;
    v16->_sleepAction = v21;

    [(BLSHOnSystemSleepAction *)v16->_sleepAction install];
    v16->_lock_onStandby = 1;
    v23 = objc_alloc_init(BLSHFlipbookPowerSavingProvider);
    flipbookPowerSavingProvider = v16->_flipbookPowerSavingProvider;
    v16->_flipbookPowerSavingProvider = v23;

    if (os_variant_has_internal_diagnostics())
    {
      v25 = -[BLSHFlipbookHistory initWithFrameLimit:memoryLimit:]([BLSHFlipbookHistory alloc], "initWithFrameLimit:memoryLimit:", [interfaceProviderCopy flipbookDiagnosticHistoryFrameLimit], objc_msgSend(interfaceProviderCopy, "flipbookDiagnosticHistoryMemoryLimit"));
      renderedFlipbookHistory = v16->_renderedFlipbookHistory;
      v16->_renderedFlipbookHistory = v25;

      if ([(BLSHOSInterfaceProviding *)v16->_osInterfaceProvider deviceSupportsAlwaysOnFlipbookWatchdog])
      {
        v27 = [[BLSHFlipbookWatchdog alloc] initWithOSInterfaceProvider:v16->_osInterfaceProvider];
        flipbookWatchdog = v16->_flipbookWatchdog;
        v16->_flipbookWatchdog = v27;
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([providerCopy flipbookSpecification], (v29 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v29 = [[BLSHFlipbookSpecification alloc] initWithSoftMemoryLimit:104857600 frameCapacity:100 framesPerSecond:0 minimumGapDuration:30.0 coaelscingEpsilon:3.0 minimumPrepareInterval:0.0028 maximumRenderInterval:90.0 surfacePoolSize:300.0 surfaceOverallocationFactor:0.0];
    }

    objc_storeStrong(&v16->_flipbookSpecification, v29);
    if (objc_opt_respondsToSelector())
    {
      flipbookTelemetryDelegate = [providerCopy flipbookTelemetryDelegate];
      flipbookTelemetryDelegate = v16->_flipbookTelemetryDelegate;
      v16->_flipbookTelemetryDelegate = flipbookTelemetryDelegate;
    }

    v32 = bls_flipbook_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [BLSHAlwaysOnPresentationEngine initWithDelegate:v16 platformProvider:? osInterfaceProvider:? inactiveBudgetPolicy:?];
    }

    v16->_lock_engineState = 0;
    objc_initWeak(&location, v16);
    objc_copyWeak(&v34, &location);
    v16->_stateHandler = os_state_add_handler();
    [(BLSHAlwaysOnPresentationEngine *)v16 createFlipbook];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v16;
}

uint64_t __109__BLSHAlwaysOnPresentationEngine_initWithDelegate_platformProvider_osInterfaceProvider_inactiveBudgetPolicy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];
  v3 = BLSStateDataWithTitleDescriptionAndHints();

  return v3;
}

- (void)dealloc
{
  [(BLSHOnSystemSleepAction *)self->_sleepAction uninstall];
  [(BLSHFlipbook *)self->_lock_flipbook invalidate];
  [(BSTimerScheduleQuerying *)self->_lock_timer invalidate];
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BLSHAlwaysOnPresentationEngine;
  [(BLSHAlwaysOnPresentationEngine *)&v3 dealloc];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_lock_onStandby withName:@"onStandby"];
  v5 = [v3 appendBool:self->_lock_suppressed withName:@"suppressed"];
  presentationDate = 0;
  lock_engineState = self->_lock_engineState;
  if (lock_engineState <= 1)
  {
    if (lock_engineState)
    {
      if (lock_engineState == 1)
      {
        v9 = [v3 appendObject:@"live" withName:@"state"];
        presentationDate = [(BLSHPresentationDateSpecifier *)self->_lock_lastLiveSpecifier presentationDate];
      }
    }

    else
    {
      v13 = [v3 appendObject:@"stopped" withName:@"state"];
      presentationDate = 0;
    }
  }

  else
  {
    switch(lock_engineState)
    {
      case 2:
        v8 = @"liveFlipbook";
        break;
      case 3:
        v8 = @"predictiveFlipbook";
        break;
      case 4:
        v8 = @"predictiveFlipbookToFill";
        break;
      default:
        goto LABEL_13;
    }

    v10 = [v3 appendObject:v8 withName:@"state"];
    frameOnGlass = [(BLSHFlipbook *)self->_lock_flipbook frameOnGlass];
    bls_specifier = [frameOnGlass bls_specifier];
    presentationDate = [bls_specifier presentationDate];
  }

LABEL_13:
  bls_shortLoggingString = [(NSDateInterval *)self->_lock_lastRequestInterval bls_shortLoggingString];
  v15 = [v3 appendObject:bls_shortLoggingString withName:@"lastRequestInterval"];

  if (presentationDate)
  {
    bls_shortLoggingString2 = [presentationDate bls_shortLoggingString];
    v17 = [v3 appendObject:bls_shortLoggingString2 withName:@"lastSpeciferDate"];
  }

  v18 = NSStringFromBLSHOnSystemSleepActionState([(BLSHOnSystemSleepAction *)self->_sleepAction state]);
  v19 = [v3 appendObject:v18 withName:@"sleepActionState"];

  v20 = self->_lock_fillFlipbookState - 1;
  if (v20 > 3)
  {
    v21 = @"Awake";
  }

  else
  {
    v21 = off_27841EF68[v20];
  }

  v22 = [v3 appendObject:v21 withName:@"fillState"];
  build = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return build;
}

void __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 160) debugDescription];
  v2 = [v1 appendObject:v3 withName:&stru_283373E60];
}

void __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 192) debugDescription];
  v2 = [v1 appendObject:v3 withName:&stru_283373E60];
}

void __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 200) debugDescription];
  v2 = [v1 appendObject:v3 withName:&stru_283373E60];
}

void __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 184) debugDescription];
  v2 = [v1 appendObject:v3 withName:&stru_283373E60];
}

void __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 232) debugDescription];
  v2 = [v1 appendObject:v3 withName:&stru_283373E60];
}

void __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 224) debugDescription];
  v2 = [v1 appendObject:v3 withName:&stru_283373E60];
}

void __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_9(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(*(a1 + 32) + 96) activeFrames];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v11 + 1) + 8 * v6) bls_loggingString];
        v9 = [v7 appendObject:v8 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __50__BLSHAlwaysOnPresentationEngine_debugDescription__block_invoke_10(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(*(a1 + 32) + 128) allFrames];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v11 + 1) + 8 * v6) bls_loggingString];
        v9 = [v7 appendObject:v8 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerHandlersForService:(id)service
{
  serviceCopy = service;
  v5 = [BLSHAlwaysFillFlipbookAttributeHandler registerHandlerForService:"registerHandlerForService:provider:" provider:?];
  if (!v5)
  {
    [BLSHAlwaysOnPresentationEngine registerHandlersForService:a2];
  }

  v6 = v5;
  v7 = [BLSHPseudoFlipbookAttributeHandler registerHandlerForService:serviceCopy provider:self];

  if (!v7)
  {
    [BLSHAlwaysOnPresentationEngine registerHandlersForService:a2];
  }

  v8 = [BLSHDisableFlipbookPowerSavingAttributeHandler registerHandlerForService:serviceCopy provider:self->_flipbookPowerSavingProvider];

  if (!v8)
  {
    [BLSHAlwaysOnPresentationEngine registerHandlersForService:a2];
  }

  v9 = [BLSHGlobal1HzFlipbookAttributeHandler registerHandlerForService:serviceCopy provider:self];

  if (!v9)
  {
    [BLSHAlwaysOnPresentationEngine registerHandlersForService:a2];
  }
}

- (id)flipbook
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_flipbook;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BLSHRenderedFlipbookFrame)onGlassFlipbookFrame
{
  os_unfair_lock_lock(&self->_lock);
  if ((self->_lock_engineState - 2) > 2 || ([(BLSHFlipbook *)self->_lock_flipbook frameOnGlass], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = self->_lock_frameOnGlassWhenFlipbookCancelled;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BLSHBacklightInactiveEnvironmentSession)inactiveSession
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_inactiveSession;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setInactiveSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_engineState)
  {
    [BLSHAlwaysOnPresentationEngine setInactiveSession:a2];
  }

  lock_inactiveSession = self->_lock_inactiveSession;
  self->_lock_inactiveSession = sessionCopy;
  v8 = sessionCopy;

  presentation = [(BLSHBacklightInactiveEnvironmentSession *)v8 presentation];
  [(BLSHAlwaysOnPresentationEngine *)self _lock_update1HzFromPresentation:presentation];

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightInactiveEnvironmentSession *)v8 addObserver:self];
  [(BLSHEngineEnvironmentObserverHelper *)self->_environmentObserverHelper setInactiveSession:v8];
}

- (BOOL)isOnStandby
{
  os_unfair_lock_lock(&self->_lock);
  lock_onStandby = self->_lock_onStandby;
  os_unfair_lock_unlock(&self->_lock);
  return lock_onStandby;
}

- (void)setOnStandby:(BOOL)standby
{
  standbyCopy = standby;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_onStandby != standbyCopy)
  {
    self->_lock_onStandby = standbyCopy;
    if (!standbyCopy)
    {
      [(BLSHAlwaysOnPresentationEngine *)self lock_completeSleepActionIfPendingForReason:0 subReason:?];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSuppressed
{
  os_unfair_lock_lock(&self->_lock);
  lock_suppressed = self->_lock_suppressed;
  os_unfair_lock_unlock(&self->_lock);
  return lock_suppressed;
}

- (id)suppressForReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  lock_suppressed = self->_lock_suppressed;
  if (!lock_suppressed)
  {
    self->_lock_suppressed = 1;
    [(BLSHAlwaysOnPresentationEngine *)self lock_endFlipbookRenderSessionAndAllowSleepIfPendingForReason:reasonCopy];
    [(BSTimerScheduleQuerying *)self->_lock_timer invalidate];
    lock_timer = self->_lock_timer;
    self->_lock_timer = 0;

    [(BLSHPreventSystemSleepAsserting *)self->_lock_livePowerAssertion invalidate];
    lock_livePowerAssertion = self->_lock_livePowerAssertion;
    self->_lock_livePowerAssertion = 0;
  }

  frameOnGlass = [(BLSHFlipbook *)self->_lock_flipbook frameOnGlass];
  bls_specifier = [frameOnGlass bls_specifier];

  os_unfair_lock_unlock(&self->_lock);
  if (!lock_suppressed)
  {
    [(BLSHAlwaysOnPresentationEngine *)self noteFlipbookIsCurrentWithSpecifier:bls_specifier];
  }

  return bls_specifier;
}

- (BOOL)cacheFlipbook
{
  os_unfair_lock_lock(&self->_lock);
  lock_cacheFlipbook = self->_lock_cacheFlipbook;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cacheFlipbook;
}

- (uint64_t)lock_setFlipbookPredictiveRenderType
{
  v26 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if ([*(result + 72) state])
    {
      v2 = 4;
    }

    else if (*(v1 + 292))
    {
      v2 = 4;
    }

    else
    {
      v2 = 3;
    }

    v3 = *(v1 + 264);
    *(v1 + 264) = v2;
    if (!*(v1 + 96))
    {
      [(BLSHAlwaysOnPresentationEngine *)sel_lock_setFlipbookPredictiveRenderType lock_setFlipbookPredictiveRenderType];
    }

    if (v2 == v3)
    {
      result = 0;
    }

    else
    {
      v5 = bls_flipbook_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        if ((v3 - 1) > 3)
        {
          v6 = @"Stopped";
        }

        else
        {
          v6 = off_27841EFA0[v3 - 1];
        }

        v7 = @"PredictiveFlipbook-JustInTime";
        if (v2 == 4)
        {
          v7 = @"PredictiveFlipbook-Fill";
        }

        v8 = v7;
        v9 = NSStringFromBLSHOnSystemSleepActionState([*(v1 + 72) state]);
        v10 = v9;
        v11 = *(v1 + 272) - 1;
        if (v11 > 3)
        {
          v12 = @"Awake";
        }

        else
        {
          v12 = off_27841EF68[v11];
        }

        v13 = *(v1 + 289);
        v14 = 134219266;
        v15 = v1;
        v16 = 2114;
        v17 = v6;
        v18 = 2114;
        v19 = v8;
        v20 = 2114;
        v21 = v9;
        v22 = 2114;
        v23 = v12;
        v24 = 1024;
        v25 = v13;
        _os_log_debug_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEBUG, "%p:%{public}@->%{public}@ did change flipbook render type sleepActionState:%{public}@ fillState:%{public}@ onStandby:%{BOOL}u", &v14, 0x3Au);
      }

      [(BLSHAlwaysOnPresentationEngine *)v1 lock_invalidateFlipbookUpdates];
      result = 1;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)purgeFlipbook
{
  os_unfair_lock_lock(&self->_lock);
  [(BLSHFlipbook *)self->_lock_flipbook collect];
  [(BLSHFlipbook *)self->_lock_flipbook purge];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)requestDatesOperation:(id)operation environment:(id)environment didProvideSpecifiers:(id)specifiers forPresentationInterval:(id)interval isComplete:(BOOL)complete
{
  completeCopy = complete;
  v67 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  environmentCopy = environment;
  specifiersCopy = specifiers;
  intervalCopy = interval;
  os_unfair_lock_lock(&self->_lock);
  lock_requestDatesOperation = self->_lock_requestDatesOperation;
  if (lock_requestDatesOperation == operationCopy)
  {
    [(BLSHDateSpecifierModel *)self->_lock_presentationDatesModel registerSpecifiers:specifiersCopy forDateInterval:intervalCopy environment:environmentCopy];
    lock_engineState = self->_lock_engineState;
    if (lock_engineState != 1)
    {
      if (lock_engineState != 2)
      {
        goto LABEL_6;
      }

      if (!completeCopy)
      {
        goto LABEL_11;
      }
    }

    [(BSTimerScheduleQuerying *)self->_lock_timer invalidate];
    lock_timer = self->_lock_timer;
    self->_lock_timer = 0;
  }

LABEL_6:
  if (completeCopy)
  {
    v19 = bls_flipbook_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v30 = self->_lock_engineState - 1;
      if (v30 > 3)
      {
        v31 = @"Stopped";
      }

      else
      {
        v31 = off_27841EFA0[v30];
      }

      v47 = v31;
      identifier = [environmentCopy identifier];
      v39 = identifier;
      v40 = "(stale) ";
      if (lock_requestDatesOperation == operationCopy)
      {
        v40 = "";
      }

      v43 = v40;
      v45 = identifier;
      bls_shortLoggingString = [intervalCopy bls_shortLoggingString];
      [specifiersCopy bls_boundedDescriptionWithTransformer:&__block_literal_global_4];
      *buf = 134219522;
      selfCopy2 = self;
      v55 = 2114;
      v56 = v47;
      v57 = 2114;
      v58 = v39;
      v59 = 2080;
      v60 = v43;
      v61 = 2114;
      v62 = operationCopy;
      v63 = 2114;
      v64 = bls_shortLoggingString;
      v41 = v65 = 2114;
      v66 = v41;
      _os_log_debug_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEBUG, "%p:%{public}@ (%{public}@) did complete %srequest dates operation:%{public}@, interval:%{public}@ specifiers:%{public}@", buf, 0x48u);
    }

    if (lock_requestDatesOperation == operationCopy)
    {
      v32 = self->_lock_requestDatesOperation;
      self->_lock_requestDatesOperation = 0;

      self->_lock_requestDatesOperationDidTimeout = 0;
      requestInterval = [(BLSHEngineRequestDatesOperation *)operationCopy requestInterval];
      lock_lastRequestInterval = self->_lock_lastRequestInterval;
      self->_lock_lastRequestInterval = requestInterval;

      [(BLSHAlwaysOnPresentationEngine *)self lock_invalidateFlipbookUpdates];
    }

    os_unfair_lock_unlock(&self->_lock);
    v20 = self->_flipbookTelemetryDelegate;
    BSContinuousMachTimeNow();
    v22 = v21;
    v23 = MEMORY[0x277CF09C8];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __124__BLSHAlwaysOnPresentationEngine_requestDatesOperation_environment_didProvideSpecifiers_forPresentationInterval_isComplete___block_invoke_226;
    v49[3] = &unk_27841E510;
    v24 = operationCopy;
    v52 = v22;
    v50 = v24;
    v51 = v20;
    v25 = v20;
    [v23 dispatchWithQOSClass:17 block:v49];
    [(BLSHEngineRequestDatesOperation *)v24 invalidate];

    goto LABEL_13;
  }

LABEL_11:
  v26 = bls_flipbook_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v28 = self->_lock_engineState - 1;
    if (v28 > 3)
    {
      v29 = @"Stopped";
    }

    else
    {
      v29 = off_27841EFA0[v28];
    }

    v46 = v29;
    identifier2 = [environmentCopy identifier];
    if (lock_requestDatesOperation == operationCopy)
    {
      v36 = "";
    }

    else
    {
      v36 = "(stale) ";
    }

    bls_shortLoggingString2 = [intervalCopy bls_shortLoggingString];
    [specifiersCopy bls_boundedDescriptionWithTransformer:&__block_literal_global_224];
    *buf = 134219522;
    selfCopy2 = self;
    v55 = 2114;
    v56 = v46;
    v57 = 2114;
    v58 = identifier2;
    v59 = 2080;
    v60 = v36;
    v61 = 2114;
    v62 = operationCopy;
    v63 = 2114;
    v64 = bls_shortLoggingString2;
    v37 = v65 = 2114;
    v66 = v37;
    _os_log_debug_impl(&dword_21FD11000, v26, OS_LOG_TYPE_DEBUG, "%p:%{public}@ (%{public}@) updated %srequest dates operation:%{public}@, interval:%{public}@ specifiers:%{public}@", buf, 0x48u);
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_13:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__BLSHAlwaysOnPresentationEngine_requestDatesOperation_environment_didProvideSpecifiers_forPresentationInterval_isComplete___block_invoke_227;
  block[3] = &unk_27841E650;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v27 = *MEMORY[0x277D85DE8];
}

void __124__BLSHAlwaysOnPresentationEngine_requestDatesOperation_environment_didProvideSpecifiers_forPresentationInterval_isComplete___block_invoke_226(uint64_t a1)
{
  v2 = [*(a1 + 32) telemetryDataWithEndTime:*(a1 + 48)];
  v3 = bls_flipbook_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __124__BLSHAlwaysOnPresentationEngine_requestDatesOperation_environment_didProvideSpecifiers_forPresentationInterval_isComplete___block_invoke_226_cold_1();
  }

  [*(a1 + 40) logTelemetryForRequestDates:v2];
}

- (void)requestDatesOperation:(id)operation didTimeoutPendingEnvironments:(id)environments
{
  v33 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  environmentsCopy = environments;
  os_unfair_lock_lock(&self->_lock);
  lock_requestDatesOperation = self->_lock_requestDatesOperation;
  if (lock_requestDatesOperation == operationCopy)
  {
    v16 = bls_flipbook_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = self->_lock_engineState - 1;
      if (v17 > 3)
      {
        v18 = @"Stopped";
      }

      else
      {
        v18 = off_27841EFA0[v17];
      }

      *buf = 134218754;
      selfCopy = self;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = operationCopy;
      v31 = 2114;
      v32 = environmentsCopy;
      _os_log_debug_impl(&dword_21FD11000, v16, OS_LOG_TYPE_DEBUG, "%p:%{public}@ did timeout render dates operation:%{public}@ pendingEnvironments:%{public}@", buf, 0x2Au);
    }

    v19 = self->_lock_requestDatesOperation;
    self->_lock_requestDatesOperation = 0;

    self->_lock_requestDatesOperationDidTimeout = 1;
    [(BLSHAlwaysOnPresentationEngine *)self lock_invalidateFlipbookUpdates];
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = self->_flipbookTelemetryDelegate;
  BSContinuousMachTimeNow();
  v11 = v10;
  v12 = MEMORY[0x277CF09C8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__BLSHAlwaysOnPresentationEngine_requestDatesOperation_didTimeoutPendingEnvironments___block_invoke;
  v21[3] = &unk_27841E510;
  v13 = operationCopy;
  v22 = v13;
  v24 = v11;
  v14 = v9;
  v23 = v14;
  [v12 dispatchWithQOSClass:17 block:v21];
  [(BLSHEngineRequestDatesOperation *)v13 invalidate];
  if (lock_requestDatesOperation == operationCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__BLSHAlwaysOnPresentationEngine_requestDatesOperation_didTimeoutPendingEnvironments___block_invoke_228;
    v20[3] = &unk_27841E650;
    v20[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v20);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __86__BLSHAlwaysOnPresentationEngine_requestDatesOperation_didTimeoutPendingEnvironments___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) telemetryDataWithEndTime:*(a1 + 48)];
  v3 = bls_flipbook_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __124__BLSHAlwaysOnPresentationEngine_requestDatesOperation_environment_didProvideSpecifiers_forPresentationInterval_isComplete___block_invoke_226_cold_1();
  }

  [*(a1 + 40) logTelemetryForRequestDates:v2];
}

- (void)renderFramesSession:(id)session beganRenderingSpecifier:(id)specifier timedOutEnvironments:(id)environments
{
  specifierCopy = specifier;
  os_unfair_lock_lock(&self->_lock);
  lock_preparingToRenderSpecifier = self->_lock_preparingToRenderSpecifier;
  if (lock_preparingToRenderSpecifier == specifierCopy)
  {
    self->_lock_preparingToRenderSpecifier = 0;

    objc_storeStrong(&self->_lock_renderingSpecifier, specifier);
    self->_lock_renderingSpecifier_backoffTime = 0;
    os_unfair_lock_unlock(&self->_lock);
    [(BLSHInactiveBudgetPolicing_Private *)self->_inactiveBudgetPolicy chargeRenderedSpecifier:specifierCopy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__BLSHAlwaysOnPresentationEngine_renderFramesSession_beganRenderingSpecifier_timedOutEnvironments___block_invoke;
    block[3] = &unk_27841E650;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    [(BLSHInactiveBudgetPolicing_Private *)self->_inactiveBudgetPolicy chargeRenderedSpecifier:specifierCopy];
  }
}

- (void)renderFramesSession:(id)session didRenderFrame:(id)frame timedOutEnvironments:(id)environments
{
  frameCopy = frame;
  bls_specifier = [frameCopy bls_specifier];
  os_unfair_lock_lock(&self->_lock);
  lock_renderingSpecifier = self->_lock_renderingSpecifier;
  if (lock_renderingSpecifier == bls_specifier)
  {
    self->_lock_renderingSpecifier = 0;

    self->_lock_renderingSpecifier_backoffTime = 0;
  }

  v9 = self->_lock_engineState - 2;
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHFlipbookHistory *)self->_renderedFlipbookHistory addRenderedFrameToHistory:frameCopy];

  if (v9 <= 2)
  {
    [(BLSHAlwaysOnPresentationEngine *)self noteFlipbookIsCurrentWithSpecifier:bls_specifier];
  }

  if (lock_renderingSpecifier == bls_specifier)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__BLSHAlwaysOnPresentationEngine_renderFramesSession_didRenderFrame_timedOutEnvironments___block_invoke;
    block[3] = &unk_27841E650;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __69__BLSHAlwaysOnPresentationEngine_noteFlipbookIsCurrentWithSpecifier___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 288);
  os_unfair_lock_unlock((v2 + 8));
  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 16);

    [v5 presentationEngine:? didUpdateToCurrentWithSpecifier:?];
  }
}

- (void)renderFramesSession:(id)session failedToRenderSpecifier:(id)specifier error:(id)error timedOutEnvironments:(id)environments
{
  specifierCopy = specifier;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_preparingToRenderSpecifier == specifierCopy || self->_lock_renderingSpecifier == specifierCopy)
  {
    [BLSHAlwaysOnPresentationEngine renderFramesSession:specifierCopy failedToRenderSpecifier:? error:? timedOutEnvironments:?];
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  lock_engineState = self->_lock_engineState;
  os_unfair_lock_unlock(&self->_lock);
  if ((v7 & 1) == 0 && (lock_engineState - 5) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    [(BLSHAlwaysOnPresentationEngine *)self noteFlipbookIsCurrentWithSpecifier:?];
  }
}

- (void)lock_scheduleUpdateTimerForNextUpdatesStart:(uint64_t)start
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (start)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v5 = [distantFuture isEqualToDate:v3];

    if (v5)
    {
      v6 = bls_flipbook_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(start + 264) - 1;
        if (v7 > 3)
        {
          v8 = @"Stopped";
        }

        else
        {
          v8 = off_27841EFA0[v7];
        }

        bls_shortLoggingString = [v3 bls_shortLoggingString];
        *buf = 134218498;
        startCopy10 = start;
        v91 = 2114;
        v92 = v8;
        v93 = 2114;
        v94 = *&bls_shortLoggingString;
        _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "%p:%{public}@ will use 30 seconds from now, nextsUpdateStart:%{public}@", buf, 0x20u);
      }

      v10 = [*(start + 24) dateWithTimeIntervalSinceNow:30.0];

      v3 = v10;
    }

    v11 = *(start + 264);
    v12 = 0.045;
    if ((v11 - 3) < 2)
    {
      v12 = 1.0;
    }

    if (v11 == 4)
    {
      v13 = 3.0;
    }

    else
    {
      v13 = v12;
    }

    v14 = [*(start + 24) now];
    [v3 timeIntervalSinceDate:v14];
    v16 = v15;

    v17 = v16 > 0.0 && (v11 - 3) < 2;
    if (v17 && v16 < v13 + -0.045)
    {
      v18 = v16 * 0.5 + 0.016;
    }

    else
    {
      v18 = v13;
    }

    v19 = [v3 dateByAddingTimeInterval:-v18];
    v20 = @"AlwaysOnPresentationEngine";
    if (v11 == 4)
    {
      v20 = @"AlwaysOnPresentationEngine-waking";
    }

    v82 = v20;
    if (v19)
    {
      v21 = [*(start + 24) now];
      [v19 timeIntervalSinceDate:v21];
      v23 = v22;

      if ([*(start + 232) isScheduled])
      {
        identifier = [*(start + 232) identifier];
        v25 = [(__CFString *)v82 isEqualToString:identifier];

        if (v25)
        {
          [*(start + 232) timeRemaining];
          v27 = v26;
          v28 = v26 + 0.015;
          if (v23 + 0.015 >= v27 && v23 <= v28)
          {
            v30 = bls_flipbook_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = *(start + 264) - 1;
              if (v31 > 3)
              {
                v32 = @"Stopped";
              }

              else
              {
                v32 = off_27841EFA0[v31];
              }

              bls_loggingString = [v19 bls_loggingString];
              *buf = 134218754;
              startCopy10 = start;
              v91 = 2114;
              v92 = v32;
              v93 = 2048;
              v94 = v27;
              v95 = 2114;
              v96 = *&bls_loggingString;
              _os_log_impl(&dword_21FD11000, v30, OS_LOG_TYPE_INFO, "%p:%{public}@ timer already scheduled in %lfs will not schedule a new timer for %{public}@", buf, 0x2Au);
            }

LABEL_79:
            goto LABEL_80;
          }
        }
      }
    }

    else
    {
      if ([*(start + 232) isScheduled])
      {
        [*(start + 232) timeRemaining];
        v34 = v33;
        [*(start + 88) maximumRenderInterval];
        v36 = v35 * 2.5;
        if (v34 >= v35 * 2.5)
        {
          v19 = [*(start + 24) dateWithTimeIntervalSinceNow:v35 * 2.5];
          v41 = bls_flipbook_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            v44 = *(start + 264) - 1;
            if (v44 > 3)
            {
              v45 = @"Stopped";
            }

            else
            {
              v45 = off_27841EFA0[v44];
            }

            bls_shortLoggingString2 = [v19 bls_shortLoggingString];
            *buf = 134219010;
            startCopy10 = start;
            v91 = 2114;
            v92 = v45;
            v93 = 2048;
            v94 = v34;
            v95 = 2048;
            v96 = v36;
            v97 = 2114;
            v98 = bls_shortLoggingString2;
            _os_log_debug_impl(&dword_21FD11000, v41, OS_LOG_TYPE_DEBUG, "%p:%{public}@ (nil next update) timer already scheduled but %lfs is more than %lfs in the future, will reschedule for %{public}@", buf, 0x34u);
          }
        }

        else
        {
          if (v11 != 4 || ([*(start + 232) identifier], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(@"AlwaysOnPresentationEngine-waking", "isEqualToString:", v37), v37, (v38 & 1) != 0))
          {
            v19 = bls_flipbook_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v39 = *(start + 264) - 1;
              if (v39 > 3)
              {
                v40 = @"Stopped";
              }

              else
              {
                v40 = off_27841EFA0[v39];
              }

              *buf = 134218498;
              startCopy10 = start;
              v91 = 2114;
              v92 = v40;
              v93 = 2048;
              v94 = v34;
              _os_log_debug_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEBUG, "%p:%{public}@ (nil next update) timer already scheduled in %lfs will not reschedule", buf, 0x20u);
            }

            goto LABEL_79;
          }

          v19 = [*(start + 24) dateWithTimeIntervalSinceNow:v34];
          v41 = bls_flipbook_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v78 = *(start + 264) - 1;
            if (v78 > 3)
            {
              v79 = @"Stopped";
            }

            else
            {
              v79 = off_27841EFA0[v78];
            }

            *buf = 134218498;
            startCopy10 = start;
            v91 = 2114;
            v92 = v79;
            v93 = 2048;
            v94 = v34;
            _os_log_impl(&dword_21FD11000, v41, OS_LOG_TYPE_INFO, "%p:%{public}@ (nil next update) timer already scheduled in %lfs will replace with waking timer", buf, 0x20u);
          }
        }
      }

      else
      {
        v19 = [*(start + 24) dateWithTimeIntervalSinceNow:30.0];
        v41 = bls_flipbook_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = *(start + 264) - 1;
          if (v42 > 3)
          {
            v43 = @"Stopped";
          }

          else
          {
            v43 = off_27841EFA0[v42];
          }

          bls_shortLoggingString3 = [v19 bls_shortLoggingString];
          *buf = 134218498;
          startCopy10 = start;
          v91 = 2114;
          v92 = v43;
          v93 = 2114;
          v94 = *&bls_shortLoggingString3;
          _os_log_impl(&dword_21FD11000, v41, OS_LOG_TYPE_INFO, "%p:%{public}@ (nil next update) will use 30 seconds from now, nextsUpdateStart:%{public}@", buf, 0x20u);
        }
      }

      v47 = [*(start + 24) now];
      [v19 timeIntervalSinceDate:v47];
      v23 = v48;
    }

    objc_initWeak(&location, start);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __78__BLSHAlwaysOnPresentationEngine_lock_scheduleUpdateTimerForNextUpdatesStart___block_invoke;
    v84[3] = &unk_27841EE60;
    objc_copyWeak(&v87, &location);
    v19 = v19;
    v85 = v19;
    v49 = v3;
    v86 = v49;
    v50 = MEMORY[0x223D70730](v84);
    [*(start + 232) invalidate];
    if (v11 == 4)
    {
      if (v23 >= v18)
      {
        v51 = bls_flipbook_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v58 = *(start + 264) - 1;
          if (v58 > 3)
          {
            v59 = @"Stopped";
          }

          else
          {
            v59 = off_27841EFA0[v58];
          }

          bls_loggingString2 = [v19 bls_loggingString];
          bls_shortLoggingString4 = [v49 bls_shortLoggingString];
          *buf = 134218754;
          startCopy10 = start;
          v91 = 2114;
          v92 = v59;
          v93 = 2114;
          v94 = *&bls_loggingString2;
          v95 = 2114;
          v96 = *&bls_shortLoggingString4;
          _os_log_impl(&dword_21FD11000, v51, OS_LOG_TYPE_INFO, "%p:%{public}@ scheduling waking timer for %{public}@ nextsUpdateStart:%{public}@", buf, 0x2Au);
        }

        v18 = v23;
      }

      else
      {
        v51 = v19;
        v19 = [*(start + 24) dateWithTimeIntervalSinceNow:v18];

        v52 = bls_flipbook_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = *(start + 264) - 1;
          if (v53 > 3)
          {
            v54 = @"Stopped";
          }

          else
          {
            v54 = off_27841EFA0[v53];
          }

          bls_loggingString3 = [v51 bls_loggingString];
          bls_shortLoggingString5 = [v19 bls_shortLoggingString];
          bls_shortLoggingString6 = [v49 bls_shortLoggingString];
          *buf = 134219266;
          startCopy10 = start;
          v91 = 2114;
          v92 = v54;
          v93 = 2114;
          v94 = *&bls_loggingString3;
          v95 = 2048;
          v96 = v18;
          v97 = 2114;
          v98 = bls_shortLoggingString5;
          v99 = 2114;
          v100 = bls_shortLoggingString6;
          _os_log_impl(&dword_21FD11000, v52, OS_LOG_TYPE_INFO, "%p:%{public}@ scheduling waking timer %{public}@ is too soon, using %lf seconds from now:%{public}@ nextsUpdateStart:%{public}@", buf, 0x3Eu);
        }
      }

      v75 = [*(start + 24) scheduledWakingTimerWithIdentifier:@"AlwaysOnPresentationEngine-waking" interval:v50 leewayInterval:v18 handler:0.5];
      v76 = *(start + 232);
      *(start + 232) = v75;
    }

    else if (v23 >= 0.05)
    {
      v60 = bls_flipbook_log();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = *(start + 264) - 1;
        if (v61 > 3)
        {
          v62 = @"Stopped";
        }

        else
        {
          v62 = off_27841EFA0[v61];
        }

        bls_loggingString4 = [v19 bls_loggingString];
        bls_shortLoggingString7 = [v49 bls_shortLoggingString];
        *buf = 134218754;
        startCopy10 = start;
        v91 = 2114;
        v92 = v62;
        v93 = 2114;
        v94 = *&bls_loggingString4;
        v95 = 2114;
        v96 = *&bls_shortLoggingString7;
        _os_log_impl(&dword_21FD11000, v60, OS_LOG_TYPE_INFO, "%p:%{public}@ scheduling timer for %{public}@ nextsUpdateStart:%{public}@", buf, 0x2Au);
      }

      v69 = 0.75;
      if (v11 != 3)
      {
        v69 = 0.015;
      }

      v70 = [*(start + 24) scheduledTimerWithIdentifier:@"AlwaysOnPresentationEngine" interval:v50 leewayInterval:v23 handler:{v69, v82}];
      v71 = *(start + 232);
      *(start + 232) = v70;
    }

    else
    {
      v55 = bls_flipbook_log();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = *(start + 264) - 1;
        if (v56 > 3)
        {
          v57 = @"Stopped";
        }

        else
        {
          v57 = off_27841EFA0[v56];
        }

        bls_loggingString5 = [v19 bls_loggingString];
        bls_shortLoggingString8 = [v49 bls_shortLoggingString];
        *buf = 134218754;
        startCopy10 = start;
        v91 = 2114;
        v92 = v57;
        v93 = 2114;
        v94 = *&bls_loggingString5;
        v95 = 2114;
        v96 = *&bls_shortLoggingString8;
        _os_log_impl(&dword_21FD11000, v55, OS_LOG_TYPE_INFO, "%p:%{public}@ timer too soon (will just dispatch_async) for %{public}@ nextsUpdateStart:%{public}@", buf, 0x2Au);
      }

      [(BLSHAlwaysOnPresentationEngine *)v55 lock_scheduleUpdateTimerForNextUpdatesStart:v83, start];
    }

    objc_destroyWeak(&v87);
    objc_destroyWeak(&location);
    goto LABEL_79;
  }

LABEL_80:

  v77 = *MEMORY[0x277D85DE8];
}

- (BOOL)isGlobal1HzFlipbook
{
  os_unfair_lock_lock(&self->_lock);
  lock_global1HzFlipbook = self->_lock_global1HzFlipbook;
  os_unfair_lock_unlock(&self->_lock);
  return lock_global1HzFlipbook;
}

- (void)hostEnvironment:(id)environment invalidateContentForReason:(id)reason
{
  v36 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  reasonCopy = reason;
  v9 = reasonCopy;
  if (!environmentCopy)
  {
    [BLSHAlwaysOnPresentationEngine hostEnvironment:reasonCopy invalidateContentForReason:a2];
  }

  os_unfair_lock_lock(&self->_lock);
  lock_engineState = self->_lock_engineState;
  v11 = ++hostEnvironment_invalidateContentForReason____lock_currentSystemActivityID;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_engineState)
  {
    v12 = self->_osInterfaceProvider;
    v13 = mach_continuous_time();
    inactiveBudgetPolicy = self->_inactiveBudgetPolicy;
    v15 = [(BLSHOSInterfaceProviding *)v12 now];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__BLSHAlwaysOnPresentationEngine_hostEnvironment_invalidateContentForReason___block_invoke;
    v23[3] = &unk_27841ED28;
    v24 = v9;
    v25 = environmentCopy;
    v26 = v12;
    selfCopy = self;
    v28 = v11;
    v29 = v13;
    v16 = v12;
    [(BLSHInactiveBudgetPolicing_Private *)inactiveBudgetPolicy invalidateAtRequestDate:v15 forEnvironment:v25 invalidationBlock:v23];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    lock_presentationDatesModel = self->_lock_presentationDatesModel;
    v18 = bls_flipbook_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (lock_presentationDatesModel)
    {
      if (v19)
      {
        identifier = [environmentCopy identifier];
        *buf = 134218498;
        selfCopy3 = self;
        v32 = 2114;
        v33 = v9;
        v34 = 2114;
        v35 = identifier;
        _os_log_impl(&dword_21FD11000, v18, OS_LOG_TYPE_INFO, "%p: invalidateContentForReason: engine is suspended so only clearing specifiers %{public}@ from %{public}@", buf, 0x20u);
      }

      [(BLSHDateSpecifierModel *)self->_lock_presentationDatesModel clearSpecifiersForEnvironment:environmentCopy];
    }

    else
    {
      if (v19)
      {
        identifier2 = [environmentCopy identifier];
        *buf = 134218498;
        selfCopy3 = self;
        v32 = 2114;
        v33 = v9;
        v34 = 2114;
        v35 = identifier2;
        _os_log_impl(&dword_21FD11000, v18, OS_LOG_TYPE_INFO, "%p: invalidateContentForReason: engine is stopped so ignoring %{public}@ from %{public}@", buf, 0x20u);
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    [(BLSHAlwaysOnPresentationEngineDelegate *)self->_delegate presentationEngine:self didInvalidateContentForEnvironment:environmentCopy reason:v9];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __77__BLSHAlwaysOnPresentationEngine_hostEnvironment_invalidateContentForReason___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  v5 = [v2 stringWithFormat:@"invalidateContentForReason:%@ forEnv:%@ id:%llu", v3, v4, *(a1 + 64)];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v34 = [BLSHSystemWakeWaiter waiterWithIdentifier:v5 osInterfaceProvider:*(a1 + 48)];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 1;
  objc_initWeak(&location, *(a1 + 56));
  v6 = dispatch_time(0, 60000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BLSHAlwaysOnPresentationEngine_hostEnvironment_invalidateContentForReason___block_invoke_2;
  block[3] = &unk_27841ECD8;
  v23 = v27;
  objc_copyWeak(v25, &location);
  v7 = v5;
  v8 = *(a1 + 72);
  v20 = v7;
  v25[1] = v8;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v24 = &v29;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
  v9 = v30[5];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__BLSHAlwaysOnPresentationEngine_hostEnvironment_invalidateContentForReason___block_invoke_242;
  v12[3] = &unk_27841ED00;
  objc_copyWeak(v18, &location);
  v10 = v7;
  v11 = *(a1 + 72);
  v13 = v10;
  v18[1] = v11;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v27;
  v17 = &v29;
  [v9 runWhenAwakeWithCompletion:v12];

  objc_destroyWeak(v18);
  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);
}

void __77__BLSHAlwaysOnPresentationEngine_hostEnvironment_invalidateContentForReason___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v3 = bls_flipbook_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __77__BLSHAlwaysOnPresentationEngine_hostEnvironment_invalidateContentForReason___block_invoke_2_cold_1(WeakRetained, a1, v3);
    }

    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) identifier];
    [(BLSHAlwaysOnPresentationEngine *)WeakRetained invalidateFlipbookForReason:v4 source:v5 environment:*(a1 + 48)];

    *(*(*(a1 + 56) + 8) + 24) = 0;
    [*(*(*(a1 + 64) + 8) + 40) invalidate];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void __77__BLSHAlwaysOnPresentationEngine_hostEnvironment_invalidateContentForReason___block_invoke_242(uint64_t a1)
{
  objc_copyWeak(v6, (a1 + 72));
  v2 = *(a1 + 32);
  v6[1] = *(a1 + 80);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  BSDispatchMain();

  objc_destroyWeak(v6);
}

void __108__BLSHAlwaysOnPresentationEngine_lock_cancelFlipbookFramesForReason_source_didClearDateSpecifiers_wasReset___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) count];
  v5 = [*(a1 + 32) lastObject];
  v6 = [v5 bls_loggingString];
  v7 = [v3 stringWithFormat:@"[[CAFlipbook activeFrames] count] should be zero (not %d) after cancelAllFrames lastFrame:%@ (did backboardd die?)", v4, v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = *(a1 + 40);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a1 + 40);
    *buf = 138544642;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2114;
    v20 = @"BLSHAlwaysOnPresentationEngine.m";
    v21 = 1024;
    v22 = 1220;
    v23 = 2114;
    v24 = v7;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __108__BLSHAlwaysOnPresentationEngine_lock_cancelFlipbookFramesForReason_source_didClearDateSpecifiers_wasReset___block_invoke_253(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v22 + 1) + 8 * v7) bls_specifier];
        v9 = [v8 specifiers];
        v10 = [v9 bs_mapNoNulls:&__block_literal_global_257];
        [v2 addObjectsFromArray:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v11 = [BLSHFlipbookInvalidationTelemetryData alloc];
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 81);
  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v17 = [BLSHFlipbookFramesHistogram histogramWithReferenceDate:*(a1 + 56) flipbookFrames:*(a1 + 32)];
  v18 = [v2 allObjects];
  v19 = [(BLSHFlipbookInvalidationTelemetryData *)v11 initWithTimestamp:v16 reason:v15 source:v13 didClearDateSpecifiers:v14 wasReset:v17 invalidatedFramesHistogram:v18 environmentIdentifiers:v12];

  v20 = bls_flipbook_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __124__BLSHAlwaysOnPresentationEngine_requestDatesOperation_environment_didProvideSpecifiers_forPresentationInterval_isComplete___block_invoke_226_cold_1();
  }

  [*(a1 + 64) logTelemetryForInvalidation:v19];
  v21 = *MEMORY[0x277D85DE8];
}

id __108__BLSHAlwaysOnPresentationEngine_lock_cancelFlipbookFramesForReason_source_didClearDateSpecifiers_wasReset___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 environment];
  v3 = [v2 identifier];

  return v3;
}

- (void)hostEnvironment:(id)environment hostDidSetUnrestrictedFramerateUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v22 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  os_unfair_lock_lock(&self->_lock);
  lock_engineState = self->_lock_engineState;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_engineState == 1)
  {
    v8 = bls_flipbook_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = self->_lock_engineState - 1;
      if (v10 > 3)
      {
        v11 = @"Stopped";
      }

      else
      {
        v11 = off_27841EFA0[v10];
      }

      identifier = [environmentCopy identifier];
      *buf = 134218754;
      selfCopy = self;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = identifier;
      v20 = 1024;
      v21 = updatesCopy;
      _os_log_debug_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEBUG, "%p:%{public}@ (live) hostEnvironment:%{public}@ hostDidSetUnrestrictedFramerateUpdates:%{BOOL}u", buf, 0x26u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__BLSHAlwaysOnPresentationEngine_hostEnvironment_hostDidSetUnrestrictedFramerateUpdates___block_invoke;
    block[3] = &unk_27841E650;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepAction:(id)action performWithCompletion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  BSContinuousMachTimeNow();
  self->_lock_sleepRequestedTime = v9;
  lock_onStandby = self->_lock_onStandby;
  v11 = bls_flipbook_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = self->_lock_engineState - 1;
    if (v12 > 3)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_27841EFA0[v12];
    }

    v14 = NSStringFromBLSHOnSystemSleepActionState([(BLSHOnSystemSleepAction *)self->_sleepAction state]);
    v15 = v14;
    v16 = self->_lock_fillFlipbookState - 1;
    if (v16 > 3)
    {
      v17 = @"Awake";
    }

    else
    {
      v17 = off_27841EF68[v16];
    }

    lock_suppressed = self->_lock_suppressed;
    *buf = 134219266;
    selfCopy = self;
    v25 = 2114;
    v26 = v13;
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = v17;
    v31 = 1024;
    v32 = lock_onStandby;
    v33 = 1024;
    v34 = lock_suppressed;
    _os_log_impl(&dword_21FD11000, v11, OS_LOG_TYPE_INFO, "%p:%{public}@ perform systemSleepAction sleepActionState=%{public}@ fillState:%{public}@ onStandby:%{BOOL}u suppressed:%{BOOL}u", buf, 0x36u);
  }

  if (lock_onStandby)
  {
    if (self->_lock_sleepActionCompletion)
    {
      [BLSHAlwaysOnPresentationEngine systemSleepAction:a2 performWithCompletion:?];
    }

    v19 = self->_lock_engineState - 3;
    v20 = MEMORY[0x223D70730](completionCopy);
    lock_sleepActionCompletion = self->_lock_sleepActionCompletion;
    self->_lock_sleepActionCompletion = v20;

    if (v19 >= 2)
    {
      self->_lock_fillFlipbookState = 1;
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(BLSHAlwaysOnPresentationEngine *)self lock_setFlipbookPredictiveRenderType];
      self->_lock_fillFlipbookState = 2;
      os_unfair_lock_unlock(&self->_lock);
      BSDispatchMain();
    }
  }

  else
  {
    self->_lock_fillFlipbookState = 4;
    os_unfair_lock_unlock(&self->_lock);
    completionCopy[2](completionCopy);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepAction:(id)action systemWillWakeForReason:(id)reason
{
  v43 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_sleepActionCompletion)
  {
    [(BLSHAlwaysOnPresentationEngine *)self lock_completeSleepActionIfPendingForReason:reasonCopy subReason:0];
  }

  lock_engineState = self->_lock_engineState;
  lock_fillFlipbookState = self->_lock_fillFlipbookState;
  self->_lock_fillFlipbookState = 0;
  if ((lock_engineState - 3) > 1)
  {
    lock_setFlipbookPredictiveRenderType = 0;
  }

  else
  {
    lock_setFlipbookPredictiveRenderType = [(BLSHAlwaysOnPresentationEngine *)self lock_setFlipbookPredictiveRenderType];
  }

  lock_shouldNotifyFlipbookCurrent = self->_lock_shouldNotifyFlipbookCurrent;
  lock_serviceNextUpdatesStart = self->_lock_serviceNextUpdatesStart;
  v11 = bls_flipbook_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    if ((lock_engineState - 1) > 3)
    {
      v13 = @"Stopped";
    }

    else
    {
      v13 = off_27841EFA0[lock_engineState - 1];
    }

    v14 = self->_lock_engineState - 1;
    if (v14 > 3)
    {
      v15 = @"Stopped";
    }

    else
    {
      v15 = off_27841EFA0[v14];
    }

    v16 = NSStringFromBLSHOnSystemSleepActionState([(BLSHOnSystemSleepAction *)self->_sleepAction state]);
    v17 = v16;
    if ((lock_fillFlipbookState - 1) > 3)
    {
      v18 = @"Awake";
    }

    else
    {
      v18 = off_27841EF68[lock_fillFlipbookState - 1];
    }

    lock_onStandby = self->_lock_onStandby;
    lock_suppressed = self->_lock_suppressed;
    *buf = 134220546;
    selfCopy = self;
    v23 = 2114;
    v24 = v13;
    v25 = 2114;
    v26 = v15;
    v27 = 2114;
    v28 = reasonCopy;
    v29 = 2114;
    v30 = v16;
    v31 = 2114;
    v32 = v18;
    v33 = 1024;
    v34 = lock_onStandby;
    v35 = 1024;
    v36 = lock_suppressed;
    v37 = 1024;
    v38 = lock_setFlipbookPredictiveRenderType;
    v39 = 1024;
    v40 = lock_shouldNotifyFlipbookCurrent;
    v41 = 1024;
    v42 = lock_serviceNextUpdatesStart != 0;
    _os_log_debug_impl(&dword_21FD11000, v11, OS_LOG_TYPE_DEBUG, "%p:%{public}@->%{public}@ %{public}@ sleepActionState=%{public}@ fillState:%{public}@->Awake onStandby:%{BOOL}u suppressed:%{BOOL}u changed:%{BOOL}u shouldNotifyFlipbookCurrent:%{BOOL}u shouldServiceTimer:%{BOOL}u", buf, 0x5Cu);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (((lock_setFlipbookPredictiveRenderType | lock_shouldNotifyFlipbookCurrent) & 1) != 0 || lock_serviceNextUpdatesStart)
  {
    BSDispatchMain();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)alwaysFillFlipbook
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysFillFlipbook = self->_lock_alwaysFillFlipbook;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysFillFlipbook;
}

- (void)setAlwaysFillFlipbook:(BOOL)flipbook
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_alwaysFillFlipbook = flipbook;
  if ((self->_lock_engineState - 3) >= 2)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    lock_setFlipbookPredictiveRenderType = [(BLSHAlwaysOnPresentationEngine *)self lock_setFlipbookPredictiveRenderType];
    os_unfair_lock_unlock(&self->_lock);
    if (lock_setFlipbookPredictiveRenderType)
    {
      BSDispatchMain();
    }
  }
}

- (BOOL)isUsingPseudoFlipbook
{
  os_unfair_lock_lock(&self->_lock);
  lock_usePseudoFlipbook = self->_lock_usePseudoFlipbook;
  os_unfair_lock_unlock(&self->_lock);
  return lock_usePseudoFlipbook;
}

- (void)setUsePseudoFlipbook:(BOOL)flipbook
{
  flipbookCopy = flipbook;
  os_unfair_lock_lock(&self->_lock);
  lock_usePseudoFlipbook = self->_lock_usePseudoFlipbook;
  self->_lock_usePseudoFlipbook = flipbookCopy;
  v6 = (self->_lock_engineState - 2) < 3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_usePseudoFlipbook != flipbookCopy)
  {
    v7 = bls_flipbook_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (flipbookCopy)
    {
      if (v8)
      {
        *buf = 0;
        v9 = "will use pseudo-flipbook";
LABEL_7:
        _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, v9, buf, 2u);
      }
    }

    else if (v8)
    {
      *buf = 0;
      v9 = "will use CAFlipbook";
      goto LABEL_7;
    }

    BSDispatchMain();
  }
}

- (id)frameOnGlassNow
{
  os_unfair_lock_lock(&self->_lock);
  captureFrameOnGlass = [(BLSHFlipbook *)self->_lock_flipbook captureFrameOnGlass];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [(BLSDiagnosticFlipbookFrame *)BLSHFlipbookHistoryFrame createWithFrame:captureFrameOnGlass];

  return v4;
}

- (id)frameOnGlassWhenFlipbookLastCancelled
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_frameOnGlassWhenFlipbookLastCancelledAndReset;
  os_unfair_lock_unlock(&self->_lock);
  v4 = [(BLSDiagnosticFlipbookFrame *)BLSHFlipbookHistoryFrame createWithFrame:v3];

  return v4;
}

void __64__BLSHAlwaysOnPresentationEngine_main_shouldWaitForRequestDates__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = bls_flipbook_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 64) - 1;
    if (v6 > 3)
    {
      v7 = @"Stopped";
    }

    else
    {
      v7 = off_27841EFA0[v6];
    }

    v8 = [*(a1 + 40) now];
    [v8 timeIntervalSinceDate:*(a1 + 48)];
    v9 = *(a1 + 56);
    v12 = 134218754;
    v13 = v5;
    v14 = 2114;
    v15 = v7;
    v16 = 2048;
    v17 = v10;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_21FD11000, v4, OS_LOG_TYPE_DEFAULT, "%p:%{public}@ request dates timeout will now render frames, waited %.3lfs for operation:%{public}@", &v12, 0x2Au);
  }

  [v3 invalidate];
  [(BLSHAlwaysOnPresentationEngine *)*(a1 + 32) timerFiredForNextUpdatesStart:?];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)main_prepareAndRenderNextFlipbookFrame
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = bls_flipbook_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = off_27841EF88[a2 - 2];
    v8 = *a3;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_15();
    _os_log_debug_impl(v9, v10, v11, v12, v13, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __63__BLSHAlwaysOnPresentationEngine_loggingStreamForRenderSession__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bls_shortLoggingString];
  [v2 appendString:v3 withName:0];
}

void __92__BLSHAlwaysOnPresentationEngine_lock_endFlipbookRenderSessionForReason_wasPreventingSleep___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) telemetryDataWithEndTime:*(a1 + 40) reasonEnded:*(a1 + 56) preventedSleepDuration:*(a1 + 64)];
  v3 = bls_flipbook_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __124__BLSHAlwaysOnPresentationEngine_requestDatesOperation_environment_didProvideSpecifiers_forPresentationInterval_isComplete___block_invoke_226_cold_1();
  }

  [*(a1 + 48) logTelemetryForRenderSession:v2];
}

- (void)createFlipbook
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self)
  {
LABEL_8:
    v4 = *MEMORY[0x277D85DE8];
    return;
  }

  if (([*(self + 24) deviceSupportsAlwaysOnFlipbook] & 1) == 0)
  {
    v3 = bls_flipbook_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_21FD11000, v3, OS_LOG_TYPE_INFO, "%p device does not support flipbook", buf, 0xCu);
    }

    goto LABEL_8;
  }

  os_unfair_lock_lock((self + 8));
  v9 = *(self + 96);
  if (*(self + 293) == 1)
  {
    createFlipbook = objc_alloc_init(BLSHPseudoFlipbook);
  }

  else
  {
    createFlipbook = [*(self + 24) createFlipbook];
  }

  v5 = *(self + 96);
  *(self + 96) = createFlipbook;

  v6 = *(self + 295);
  v7 = *(self + 96);
  [v7 set1HzFlipbook:v6];
  [*(self + 96) setCachesFramesOnExit:*(self + 296)];
  os_unfair_lock_unlock((self + 8));
  [v9 invalidate];
  [*(self + 120) setFlipbook:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_lock_update1HzFromPresentation:(uint64_t)presentation
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (presentation)
  {
    v4 = *(presentation + 295);
    if (*(presentation + 294))
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      presentationEntries = [v3 presentationEntries];
      v5 = [presentationEntries countByEnumeratingWithState:v24 objects:v39 count:16];
      if (v5)
      {
        v8 = *v25;
        while (2)
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(presentationEntries);
            }

            v10 = *(v24[1] + 8 * i);
            environment = [v10 environment];
            v12 = BLSIs1HzFlipbookForEnvironment(environment);

            if (v12)
            {
              v5 = v10;
              v6 = 1;
              goto LABEL_14;
            }
          }

          v5 = [presentationEntries countByEnumeratingWithState:v24 objects:v39 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
LABEL_14:
    }

    v13 = bls_flipbook_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(presentation + 264);
      OUTLINED_FUNCTION_8();
      if (!v19 & v18)
      {
        v20 = @"Stopped";
      }

      else
      {
        v20 = off_27841EFA0[v17];
      }

      environment2 = [v5 environment];
      identifier = [environment2 identifier];
      bls_shortLoggingString = [v3 bls_shortLoggingString];
      *buf = 134219266;
      presentationCopy = presentation;
      v29 = 2114;
      v30 = v20;
      v31 = 1024;
      v32 = v6;
      v33 = 1024;
      v34 = v4;
      v35 = 2114;
      v36 = identifier;
      v37 = 2114;
      v38 = bls_shortLoggingString;
      _os_log_debug_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEBUG, "%p:%{public}@ update1HzFromPresentation new1HzFlipbook:%{BOOL}u old1HzFlipbook:%{BOOL}u environment:%{public}@ presentation::%{public}@", buf, 0x36u);
    }

    if (v4 != v6)
    {
      *(presentation + 295) = v6;
      [*(presentation + 96) set1HzFlipbook:v6];
    }

    v26 = v4 != v6;

    presentation = v26;
  }

  v14 = *MEMORY[0x277D85DE8];
  return presentation;
}

- (void)lock_completeSleepActionIfPendingForReason:(void *)reason subReason:
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  reasonCopy = reason;
  if (self)
  {
    v7 = MEMORY[0x223D70730](*(self + 80));
    v8 = *(self + 80);
    *(self + 80) = 0;

    if (v7)
    {
      v9 = bls_flipbook_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(self + 264);
        OUTLINED_FUNCTION_8();
        if (!v13 & v12)
        {
          v14 = @"Stopped";
        }

        else
        {
          v14 = off_27841EFA0[v11];
        }

        v15 = NSStringFromBLSHOnSystemSleepActionState([*(self + 72) state]);
        v16 = *(self + 272);
        OUTLINED_FUNCTION_8();
        if (!v13 & v12)
        {
          v18 = @"Awake";
        }

        else
        {
          v18 = off_27841EF68[v17];
        }

        v19 = *(self + 289);
        v20 = *(self + 290);
        v22 = 134219778;
        selfCopy = self;
        v24 = 2114;
        v25 = v14;
        v26 = 2114;
        v27 = v5;
        v28 = 2114;
        v29 = reasonCopy;
        v30 = 2114;
        v31 = v15;
        v32 = 2114;
        v33 = v18;
        v34 = 1024;
        v35 = v19;
        v36 = 1024;
        v37 = v20;
        _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_INFO, "%p:%{public}@ will complete sleep action for reason:%{public}@ subReason:%{public}@ sleepActionState=%{public}@ fillState:%{public}@ onStandby:%{BOOL}u suppressed:%{BOOL}u", &v22, 0x4Au);
      }

      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)lock_endFlipbookRenderSessionAndAllowSleepIfPendingForReason:(uint64_t)reason
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (reason)
  {
    -[BLSHAlwaysOnPresentationEngine lock_endFlipbookRenderSessionForReason:wasPreventingSleep:](reason, v3, [*(reason + 72) state] == 1);
    v4 = *(reason + 272);
    if (v4 == 1)
    {
      v5 = *(reason + 290);
      v6 = bls_flipbook_log();
      v7 = v6;
      if (v5 != 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(reason + 264);
          OUTLINED_FUNCTION_8();
          if (!(!v14 & v13))
          {
            v18 = off_27841EFA0[v17];
          }

          v19 = NSStringFromBLSHOnSystemSleepActionState([*(reason + 72) state]);
          v20 = *(reason + 272);
          OUTLINED_FUNCTION_8();
          if (!(!v14 & v13))
          {
            v22 = off_27841EF68[v21];
          }

          v23 = *(reason + 289);
          OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_20();
          _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, "%p:%{public}@ (waiting for flipbook) sleepActionState:%{public}@ fillState:%{public}@ onStandby:%{BOOL}u", v34, 0x30u);
        }

        goto LABEL_6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v11 = *(reason + 264);
        OUTLINED_FUNCTION_8();
        if (!(!v14 & v13))
        {
          v15 = off_27841EFA0[v12];
        }

        v24 = NSStringFromBLSHOnSystemSleepActionState([*(reason + 72) state]);
        v25 = *(reason + 272);
        OUTLINED_FUNCTION_8();
        if (!(!v14 & v13))
        {
          v27 = off_27841EF68[v26];
        }

        v28 = *(reason + 289);
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_27();
        _os_log_impl(v29, v30, v31, v32, v33, 0x30u);
      }

      v10 = 4;
    }

    else
    {
      if (v4 != 2)
      {
LABEL_23:
        [(BLSHAlwaysOnPresentationEngine *)reason lock_completeSleepActionIfPendingForReason:v3 subReason:?];
LABEL_6:
        [*(reason + 216) invalidate];
        v8 = *(reason + 216);
        *(reason + 216) = 0;

        goto LABEL_7;
      }

      v10 = 3;
    }

    *(reason + 272) = v10;
    goto LABEL_23;
  }

LABEL_7:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)noteFlipbookIsCurrentWithSpecifier:(uint64_t)specifier
{
  v3 = a2;
  if (specifier)
  {
    os_unfair_lock_lock((specifier + 8));
    v4 = *(specifier + 288);
    *(specifier + 288) = 0;
    os_unfair_lock_unlock((specifier + 8));
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_12();
      v5[1] = 3221225472;
      v5[2] = __69__BLSHAlwaysOnPresentationEngine_noteFlipbookIsCurrentWithSpecifier___block_invoke;
      v5[3] = &unk_27841E538;
      v5[4] = specifier;
      v6 = v3;
      dispatch_async(MEMORY[0x277D85CD0], v5);
    }
  }
}

- (uint64_t)ensureDatesModelCreated
{
  if (result)
  {
    v1 = result;
    if (!*(result + 144))
    {
      v2 = [[BLSHDateSpecifierModel alloc] initWithInactiveBudgetPolicy:*(result + 40)];
      v3 = *(v1 + 144);
      *(v1 + 144) = v2;

      v4 = *(v1 + 32);
      v5 = *(v1 + 144);

      return [v4 setPresentationDatesModel:v5];
    }
  }

  return result;
}

- (void)startLiveUpdates
{
  v40 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_suppressed = self->_lock_suppressed;
  self->_lock_suppressed = 0;
  if ((self->_lock_engineState - 2) <= 2)
  {
    v4 = [(BLSHAlwaysOnPresentationEngine *)self lock_stopForReason:0 shouldEmptyModel:?];
    if (v4 && (self->_lock_engineState - 3) <= 1)
    {
      v5 = bls_flipbook_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_4_1();
        if (!(!v8 & v7))
        {
          v9 = off_27841EFA0[v6];
        }

        OUTLINED_FUNCTION_2_4();
        v37 = v10;
        v38 = v11;
        v39 = v4;
        _os_log_debug_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEBUG, "%p:%{public}@ engine starting live from flipbook, will live update to:%{public}@", buf, 0x20u);
      }

      os_unfair_lock_unlock(&self->_lock);
      v12 = OUTLINED_FUNCTION_34();
      [(BLSHAlwaysOnPresentationEngine *)v12 performLiveUpdateToSpecifier:v13];
      os_unfair_lock_lock(&self->_lock);
    }
  }

  [(BLSHAlwaysOnPresentationEngine *)self ensureDatesModelCreated];
  state = [(BLSHOnSystemSleepAction *)self->_sleepAction state];
  lock_engineState = self->_lock_engineState;
  v16 = bls_flipbook_log();
  if (lock_engineState == 1)
  {
    if (lock_suppressed)
    {
      if (OUTLINED_FUNCTION_32())
      {
        OUTLINED_FUNCTION_4_1();
        if (!(!v8 & v7))
        {
          v18 = off_27841EFA0[v17];
        }

LABEL_23:
        v29 = NSStringFromBLSHOnSystemSleepActionState(state);
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v30, v31, v32, v33, v34, 0x20u);
      }
    }

    else if (OUTLINED_FUNCTION_32())
    {
      OUTLINED_FUNCTION_4_1();
      if (!(!v8 & v7))
      {
        v22 = off_27841EFA0[v21];
      }

      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (OUTLINED_FUNCTION_32())
  {
    OUTLINED_FUNCTION_4_1();
    if (!(!v8 & v7))
    {
      v20 = off_27841EFA0[v19];
    }

    v23 = NSStringFromBLSHOnSystemSleepActionState(state);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v24, v25, v26, v27, v28, 0x20u);
  }

  self->_lock_engineState = 1;
LABEL_25:
  [(BLSHAlwaysOnPresentationEngine *)self _lock_acquireAlwaysOnLivePowerAssertion];
  os_unfair_lock_unlock(&self->_lock);
  if (lock_engineState != 1)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    BSDispatchMain();
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)lock_stopForReason:(int)reason shouldEmptyModel:
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v6 = *(self + 264);
    if (v6)
    {
      if (v6 == 1)
      {
        bls_specifier = *(self + 168);
        v24 = *(self + 168);
        *(self + 168) = 0;

        v7 = 0;
      }

      else
      {
        v7 = [(BLSHAlwaysOnPresentationEngine *)self lock_cancelFlipbookFramesAndCollectForReason:?];
        bls_specifier = [v7 bls_specifier];
      }

      if (reason)
      {
        [(BLSHAlwaysOnPresentationEngine *)self lock_endFlipbookRenderSessionAndAllowSleepIfPendingForReason:v5];
      }

      else
      {
        [(BLSHAlwaysOnPresentationEngine *)self lock_endFlipbookRenderSessionForReason:v5 wasPreventingSleep:0];
      }

      [*(self + 232) invalidate];
      v25 = *(self + 232);
      *(self + 232) = 0;

      [*(self + 224) invalidate];
      v26 = *(self + 224);
      *(self + 224) = 0;
    }

    else
    {
      v7 = 0;
      bls_specifier = 0;
    }

    *(self + 264) = 0;
    v9 = bls_flipbook_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if ((v6 - 1) > 3)
      {
        v10 = @"Stopped";
      }

      else
      {
        v10 = off_27841EFA0[v6 - 1];
      }

      if (reason)
      {
        v11 = "stopping";
      }

      else
      {
        v11 = "suspending";
      }

      v12 = *(self + 112);
      v13 = "previousOnGlassFrame";
      if (!v12)
      {
        v13 = "currentSpecifier";
      }

      if (v7)
      {
        v14 = "onGlassFrame";
      }

      else
      {
        v14 = v13;
      }

      if (!v12)
      {
        v12 = bls_specifier;
      }

      bls_loggingString = [v12 bls_loggingString];
      v27 = 134219266;
      selfCopy = self;
      OUTLINED_FUNCTION_30();
      v29 = v10;
      v30 = 2080;
      v31 = v11;
      v32 = v16;
      v33 = v5;
      v34 = 2080;
      v35 = v14;
      v36 = v16;
      v37 = v17;
      _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_INFO, "%p:%{public}@->Stopped engine %s (%{public}@) %s:%{public}@", &v27, 0x3Eu);
    }

    if (reason)
    {
      [*(self + 160) invalidate];
      v18 = *(self + 160);
      *(self + 160) = 0;

      v19 = *(self + 144);
      *(self + 144) = 0;

      [*(self + 32) setPresentationDatesModel:0];
      v20 = *(self + 40);
      v21 = [*(self + 24) now];
      [v20 purgeStaleDataForNowDate:v21];
    }
  }

  else
  {
    bls_specifier = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return bls_specifier;
}

- (void)performLiveUpdateToSpecifier:(uint64_t)specifier
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (specifier)
  {
    os_unfair_lock_assert_not_owner((specifier + 8));
    if (v4)
    {
      specifiers = [v4 specifiers];
      v6 = bls_flipbook_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_4_1();
        if (!v9 & v8)
        {
          v10 = @"Stopped";
        }

        else
        {
          v10 = off_27841EFA0[v7];
        }

        bls_loggingString = [v4 bls_loggingString];
        *buf = 134218498;
        specifierCopy = specifier;
        v26 = 2114;
        v27 = v10;
        v28 = 2114;
        v29 = bls_loggingString;
        _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "%p:%{public}@ performing live updates for specifier:%{public}@", buf, 0x20u);
      }

      OUTLINED_FUNCTION_28();
      v12 = specifiers;
      v13 = [v12 countByEnumeratingWithState:v21 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(v21[1] + 8 * i);
            environment = [v17 environment];
            dateSpecifier = [v17 dateSpecifier];
            [environment updateToDateSpecifier:dateSpecifier sceneContentsUpdated:&__block_literal_global_286];
          }

          v14 = [v12 countByEnumeratingWithState:v21 objects:v23 count:16];
        }

        while (v14);
      }
    }

    os_unfair_lock_lock((specifier + 8));
    objc_storeStrong((specifier + 168), a2);
    os_unfair_lock_unlock((specifier + 8));
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_lock_acquireAlwaysOnLivePowerAssertion
{
  if (result)
  {
    v1 = result;
    if (!*(result + 224))
    {
      v2 = [*(result + 24) createPowerAssertionWithIdentifier:@"always on (live)"];
      v3 = *(v1 + 224);
      *(v1 + 224) = v2;

      v4 = *(v1 + 224);

      return [v4 acquireWithTimeout:0 handler:0.0];
    }
  }

  return result;
}

- (void)main_performNextStep
{
  v55 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_33(self);
    v2 = *(v1 + 290);
    if (v2 == 1)
    {
      v20 = bls_flipbook_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_4_1();
        if (!(!v18 & v17))
        {
          v22 = off_27841EFA0[v21];
        }

        OUTLINED_FUNCTION_2_4();
        v52 = v31;
        OUTLINED_FUNCTION_19();
        _os_log_debug_impl(v32, v33, OS_LOG_TYPE_DEBUG, v34, v35, 0x16u);
      }

      [(BLSHAlwaysOnPresentationEngine *)v1 lock_endFlipbookRenderSessionAndAllowSleepIfPendingForReason:?];
    }

    if ([*(v1 + 72) state] == 2)
    {
      v3 = bls_flipbook_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_4_1();
        if (!(!v18 & v17))
        {
          v30 = off_27841EFA0[v29];
        }

        OUTLINED_FUNCTION_2_4();
        v52 = v36;
        OUTLINED_FUNCTION_19();
        _os_log_debug_impl(v37, v38, OS_LOG_TYPE_DEBUG, v39, v40, 0x16u);
      }

      if (*(v1 + 288))
      {
        activeFrames = [*(v1 + 96) activeFrames];
        lastObject = [activeFrames lastObject];

        if (lastObject)
        {
          bls_specifier = [lastObject bls_specifier];
          presentationDate = [bls_specifier presentationDate];
          v8 = [*(v1 + 24) now];
          [presentationDate timeIntervalSinceDate:v8];
          v10 = v9;

          v11 = v10 >= 30.5;
        }

        else
        {
          v11 = 0;
          v10 = 0.0;
        }

        os_unfair_lock_unlock((v1 + 8));
        if ((v2 & 1) == 0)
        {
          v14 = bls_flipbook_log();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (v11)
          {
            if (v15)
            {
              OUTLINED_FUNCTION_4_1();
              if (!(!v18 & v17))
              {
                v42 = off_27841EFA0[v41];
              }

              OUTLINED_FUNCTION_2_4();
              v52 = v43;
              v53 = 2048;
              v54 = v10;
              OUTLINED_FUNCTION_19();
              _os_log_impl(v44, v45, OS_LOG_TYPE_DEFAULT, v46, v47, 0x20u);
            }

            [(BLSHAlwaysOnPresentationEngine *)v1 noteFlipbookIsCurrentWithSpecifier:?];
          }

          else
          {
            if (v15)
            {
              OUTLINED_FUNCTION_4_1();
              if (!(!v18 & v17))
              {
                v19 = off_27841EFA0[v16];
              }

              OUTLINED_FUNCTION_2_4();
              v52 = v23;
              OUTLINED_FUNCTION_19();
              _os_log_impl(v24, v25, OS_LOG_TYPE_DEFAULT, v26, v27, 0x16u);
            }
          }
        }
      }

      else
      {
        os_unfair_lock_unlock((v1 + 8));
      }
    }

    else
    {
      os_unfair_lock_unlock((v1 + 8));
      if ((v2 & 1) == 0)
      {
        v12 = *(v1 + 120);
        [v12 incrementDisablePowerSavingUsageCountForReason:4];
        [(BLSHAlwaysOnPresentationEngine *)v1 main_getMissingDatesFromEnvironments];
        if (([(BLSHAlwaysOnPresentationEngine *)v1 main_shouldWaitForRequestDates]& 1) == 0)
        {
          [(BLSHAlwaysOnPresentationEngine *)v1 main_performUpdateIfNeeded];
        }

        OUTLINED_FUNCTION_0_5();
        OUTLINED_FUNCTION_18();
        v49 = __54__BLSHAlwaysOnPresentationEngine_main_performNextStep__block_invoke;
        v50 = &unk_27841E650;
        v51 = v12;
        v13 = v12;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)startFlipbookAndEnsureCurrent
{
  v39 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_shouldNotifyFlipbookCurrent = 1;
  lock_suppressed = self->_lock_suppressed;
  self->_lock_suppressed = 0;
  if (self->_lock_engineState == 1)
  {
    v4 = [(BLSHAlwaysOnPresentationEngine *)self lock_stopForReason:0 shouldEmptyModel:?];
  }

  [(BLSHAlwaysOnPresentationEngine *)self ensureDatesModelCreated];
  lock_engineState = self->_lock_engineState;
  state = [(BLSHOnSystemSleepAction *)self->_sleepAction state];
  presentation = [(BLSHBacklightInactiveEnvironmentSession *)self->_lock_inactiveSession presentation];
  isLiveUpdating = [presentation isLiveUpdating];

  if (isLiveUpdating && !state)
  {
    [(BLSHAlwaysOnPresentationEngine *)self _lock_acquireAlwaysOnLiveFlipbookPowerAssertion];
    if ((self->_lock_engineState - 3) <= 1)
    {
      [(BLSHAlwaysOnPresentationEngine *)self lock_endFlipbookRenderSessionAndAllowSleepIfPendingForReason:?];
      [(BSTimerScheduleQuerying *)self->_lock_timer invalidate];
      lock_timer = self->_lock_timer;
      self->_lock_timer = 0;
    }

    self->_lock_engineState = 2;
  }

  else
  {
    [(BLSHAlwaysOnPresentationEngine *)self lock_setFlipbookPredictiveRenderType];
    [(BLSHPreventSystemSleepAsserting *)self->_lock_livePowerAssertion invalidate];
    lock_livePowerAssertion = self->_lock_livePowerAssertion;
    self->_lock_livePowerAssertion = 0;
  }

  if (self->_lock_fillFlipbookState == 1)
  {
    self->_lock_fillFlipbookState = 2;
  }

  v10 = self->_lock_engineState;
  v11 = bls_flipbook_log();
  if (v10 == lock_engineState)
  {
    if (lock_suppressed)
    {
      if (OUTLINED_FUNCTION_32())
      {
        OUTLINED_FUNCTION_4_1();
        if (!(!v14 & v13))
        {
          v15 = off_27841EFA0[v12];
        }

        v21 = NSStringFromBLSHOnSystemSleepActionState(state);
        lock_fillFlipbookState = self->_lock_fillFlipbookState;
        OUTLINED_FUNCTION_8();
        if (!(!v14 & v13))
        {
          v33 = off_27841EF68[v32];
        }

LABEL_28:
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_16_0();
        v30 = 42;
LABEL_29:
        _os_log_impl(v25, v26, v27, v28, v29, v30);
      }
    }

    else if (OUTLINED_FUNCTION_32())
    {
      OUTLINED_FUNCTION_4_1();
      if (!(!v14 & v13))
      {
        v18 = off_27841EFA0[v17];
      }

      v21 = NSStringFromBLSHOnSystemSleepActionState(state);
      v34 = self->_lock_fillFlipbookState;
      OUTLINED_FUNCTION_8();
      if (!(!v14 & v13))
      {
        v36 = off_27841EF68[v35];
      }

      goto LABEL_28;
    }
  }

  else if (OUTLINED_FUNCTION_32())
  {
    if ((lock_engineState - 1) <= 3)
    {
      v16 = off_27841EFA0[lock_engineState - 1];
    }

    v19 = self->_lock_engineState - 1;
    if (v19 <= 3)
    {
      v20 = off_27841EFA0[v19];
    }

    v21 = NSStringFromBLSHOnSystemSleepActionState(state);
    v22 = self->_lock_fillFlipbookState;
    OUTLINED_FUNCTION_8();
    if (!(!v14 & v13))
    {
      v24 = off_27841EF68[v23];
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_16_0();
    v30 = 52;
    goto LABEL_29;
  }

  os_unfair_lock_unlock(&self->_lock);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_18();
  BSDispatchMain();
  v37 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_lock_acquireAlwaysOnLiveFlipbookPowerAssertion
{
  if (result)
  {
    v1 = result;
    if (!*(result + 224))
    {
      v2 = [*(result + 24) createPowerAssertionWithIdentifier:@"always on (live flipbook)"];
      v3 = *(v1 + 224);
      *(v1 + 224) = v2;

      v4 = *(v1 + 224);

      return [v4 acquireWithTimeout:0 handler:0.0];
    }
  }

  return result;
}

- (id)suspendForReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  v5 = OUTLINED_FUNCTION_34();
  v7 = [(BLSHAlwaysOnPresentationEngine *)v5 lock_stopForReason:v6 shouldEmptyModel:0];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)stopForReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  v5 = OUTLINED_FUNCTION_34();
  v7 = [(BLSHAlwaysOnPresentationEngine *)v5 lock_stopForReason:v6 shouldEmptyModel:1];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)lock_cancelFlipbookFramesAndCollectForReason:(uint64_t)reason
{
  if (reason)
  {
    v3 = MEMORY[0x277CCA8D8];
    v4 = a2;
    mainBundle = [v3 mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = [(BLSHAlwaysOnPresentationEngine *)reason lock_cancelFlipbookFramesForReason:v4 source:bundleIdentifier didClearDateSpecifiers:1 wasReset:1];

    if (v7)
    {
      objc_storeStrong((reason + 104), v7);
    }

    [*(reason + 96) collect];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)lock_endFlipbookRenderSessionForReason:(int)reason wasPreventingSleep:
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v6 = *(self + 208);
    if (v6)
    {
      v7 = v6;
      v8 = *(self + 264);
      [v7 count];
      kdebug_trace();
      BSContinuousMachTimeNow();
      v10 = v9;
      memoryUsage = [*(self + 96) memoryUsage];
      v12 = bls_flipbook_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_4_1();
        if (!v15 & v14)
        {
          v16 = @"Stopped";
        }

        else
        {
          v16 = off_27841EFA0[v13];
        }

        v39 = v16;
        v40 = NSStringFromBLSHOnSystemSleepActionState([*(self + 72) state]);
        v17 = *(self + 272);
        OUTLINED_FUNCTION_8();
        if (!v15 & v14)
        {
          v19 = @"Awake";
        }

        else
        {
          v19 = off_27841EF68[v18];
        }

        LODWORD(v35) = *(self + 289);
        HIDWORD(v35) = *(self + 290);
        mEMORY[0x277CF0978] = [MEMORY[0x277CF0978] sharedFormatter];
        v21 = [mEMORY[0x277CF0978] stringFromByteCount:memoryUsage];
        mEMORY[0x277CF0978]2 = [MEMORY[0x277CF0978] sharedFormatter];
        v23 = [mEMORY[0x277CF0978]2 stringFromByteCount:{objc_msgSend(*(self + 88), "softMemoryLimit")}];
        loggingStreamForRenderSession = [(BLSHAlwaysOnPresentationEngine *)self loggingStreamForRenderSession];
        *buf = 134220546;
        selfCopy = self;
        v49 = 2114;
        v50 = v39;
        v51 = 2048;
        v52 = v7;
        v53 = 2114;
        v54 = v5;
        v55 = 2114;
        v56 = v40;
        v57 = 2114;
        v58 = v38;
        v59 = 1024;
        v60 = v36;
        v61 = 1024;
        v62 = v37;
        v63 = 2114;
        v64 = v21;
        v65 = 2114;
        v66 = v23;
        v67 = 2114;
        v68 = loggingStreamForRenderSession;
        _os_log_impl(&dword_21FD11000, v12, OS_LOG_TYPE_INFO, "%p:%{public}@ ending render session:%p for reason:%{public}@ sleepActionState:%{public}@ fillState:%{public}@ stby:%{BOOL}u sup:%{BOOL}u memoryUsage:%{public}@/%{public}@ %{public}@", buf, 0x68u);
      }

      v25 = *(self + 64);
      v26 = 0.0;
      if (reason)
      {
        BSContinuousMachTimeNow();
        v26 = v27 - *(self + 280);
      }

      v28 = MEMORY[0x277CF09C8];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __92__BLSHAlwaysOnPresentationEngine_lock_endFlipbookRenderSessionForReason_wasPreventingSleep___block_invoke;
      v41[3] = &unk_27841EE38;
      v42 = v7;
      v45 = v10;
      v46 = v26;
      v43 = v5;
      v44 = v25;
      v29 = v25;
      v30 = v7;
      [v28 dispatchWithQOSClass:17 block:v41];
      [v30 invalidate];
      v31 = *(self + 208);
      *(self + 208) = 0;
    }

    v32 = *(self + 200);
    *(self + 200) = 0;

    v33 = *(self + 192);
    *(self + 192) = 0;

    *(self + 256) = 0;
    [(BLSHAlwaysOnPresentationEngine *)self lock_invalidateFlipbookUpdates];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)lock_cancelFlipbookFramesForReason:(void *)reason source:(int)source didClearDateSpecifiers:(int)specifiers wasReset:
{
  v85 = *MEMORY[0x277D85DE8];
  v7 = a2;
  reasonCopy = reason;
  if (!self)
  {
    v11 = 0;
    goto LABEL_26;
  }

  activeFrames = [*(self + 96) activeFrames];
  v10 = *(self + 96);
  v66 = 0;
  v11 = [v10 cancelAllFramesWithError:&v66];
  v12 = v66;
  if (v11)
  {
    objc_storeStrong((self + 112), v11);
  }

  activeFrames2 = [*(self + 96) activeFrames];
  v13 = [activeFrames2 count];
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_10;
    }

    v47 = MEMORY[0x277CCACA8];
    v40 = [activeFrames2 count];
    lastObject = [activeFrames2 lastObject];
    bls_loggingString = [lastObject bls_loggingString];
    v14 = [v47 stringWithFormat:@"[[CAFlipbook activeFrames] count] should be zero (not %d) after cancelAllFrames lastFrame:%@ (did backboardd die?)", v40, bls_loggingString];

    BLSHRecordCriticalAssertFailure(v14, 1, 0);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __108__BLSHAlwaysOnPresentationEngine_lock_cancelFlipbookFramesForReason_source_didClearDateSpecifiers_wasReset___block_invoke;
    v62[3] = &unk_27841E510;
    selfCopy = self;
    v65 = sel_lock_cancelFlipbookFramesForReason_source_didClearDateSpecifiers_wasReset_;
    v63 = activeFrames2;
    v43 = MEMORY[0x223D70730](v62);
    if (BLSHIsUnitTestRunning())
    {
      v43[2](v43);
    }

    else
    {
      v44 = dispatch_time(0, 1000000000);
      dispatch_after(v44, MEMORY[0x277D85CD0], v43);
    }

    goto LABEL_8;
  }

  if (v13)
  {
    v14 = bls_flipbook_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      bls_shortLoggingString = [v12 bls_shortLoggingString];
      v46 = [activeFrames2 count];
      lastObject2 = [activeFrames2 lastObject];
      bls_loggingString2 = [lastObject2 bls_loggingString];
      *buf = 138543874;
      selfCopy2 = bls_shortLoggingString;
      v69 = 1024;
      *v70 = v46;
      *&v70[4] = 2114;
      *&v70[6] = bls_loggingString2;
      _os_log_error_impl(&dword_21FD11000, v14, OS_LOG_TYPE_ERROR, "cancelAllFrames error:%{public}@ [[CAFlipbook activeFrames] count] should be zero (not %d) after cancelAllFrames lastFrame:%{public}@ – did backboardd die?)", buf, 0x1Cu);
    }

LABEL_8:
  }

LABEL_10:
  v15 = *(self + 264) - 3;
  v16 = [activeFrames count];
  v17 = bls_flipbook_log();
  v18 = v17;
  if (v15 < 2)
  {
    v19 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v19 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v17, v19))
  {
    v45 = v12;
    v48 = activeFrames;
    v20 = v7;
    v21 = *(self + 264) - 1;
    v22 = reasonCopy;
    if (v21 > 3)
    {
      v23 = @"Stopped";
    }

    else
    {
      v23 = off_27841EFA0[v21];
    }

    if (v11)
    {
      v24 = "onGlassFrame";
    }

    else
    {
      v24 = "previousOnGlassFrame";
    }

    v25 = v11;
    if (!v11)
    {
      v25 = *(self + 112);
    }

    bls_shortLoggingString2 = [v25 bls_shortLoggingString];
    v27 = [activeFrames2 count];
    *buf = 134220290;
    selfCopy2 = self;
    v69 = 2114;
    *v70 = v23;
    *&v70[8] = 2114;
    *&v70[10] = v22;
    v71 = 2114;
    v7 = v20;
    v72 = v20;
    v73 = 1024;
    v74 = v16;
    v75 = 1024;
    sourceCopy = source;
    v77 = 1024;
    specifiersCopy = specifiers;
    v79 = 2080;
    v80 = v24;
    reasonCopy = v22;
    v81 = 2114;
    v82 = bls_shortLoggingString2;
    v83 = 1024;
    v84 = v27;
    _os_log_impl(&dword_21FD11000, v18, v19, "%p:%{public}@ invalidate flipbook for source:%{public}@ reason:%{public}@ frameCount:%u didClearDateSpecifiers:%{BOOL}u wasReset:%{BOOL}u %s:%{public}@ zeroedFrameCount:%u", buf, 0x56u);

    v12 = v45;
    activeFrames = v48;
  }

  [*(self + 40) performInvalidation];
  if (v16)
  {
    BSContinuousMachTimeNow();
    v29 = v28;
    v30 = objc_alloc(MEMORY[0x277CBEAA8]);
    v31 = [v30 bls_initWithBSContinuousMachTime:v29];

    v32 = *(self + 64);
    v33 = MEMORY[0x277CF09C8];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __108__BLSHAlwaysOnPresentationEngine_lock_cancelFlipbookFramesForReason_source_didClearDateSpecifiers_wasReset___block_invoke_253;
    v53[3] = &unk_27841ED70;
    v54 = activeFrames;
    v59 = v29;
    v55 = v7;
    sourceCopy2 = source;
    specifiersCopy2 = specifiers;
    v56 = reasonCopy;
    v57 = v31;
    v58 = v32;
    v34 = v32;
    v35 = v31;
    [v33 dispatchWithQOSClass:17 block:v53];
  }

LABEL_26:
  v36 = *MEMORY[0x277D85DE8];

  return v11;
}

- (uint64_t)lock_invalidateFlipbookUpdates
{
  if (result)
  {
    v1 = result;
    invalidate = [*(result + 184) invalidate];
    v3 = *(v1 + 184);
    *(v1 + 184) = 0;

    v4 = *(v1 + 40);

    return [v4 resetFutureSpecifiers];
  }

  return result;
}

- (void)inactiveEnvironmentSession:(id)session didUpdateToPresentation:(id)presentation
{
  v6 = MEMORY[0x277CCA8D8];
  presentationCopy = presentation;
  sessionCopy = session;
  mainBundle = [v6 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(BLSHAlwaysOnPresentationEngine *)self invalidateFlipbookForReason:bundleIdentifier source:0 environment:?];

  os_unfair_lock_lock(&self->_lock);
  lock_inactiveSession = self->_lock_inactiveSession;

  [(BLSHAlwaysOnPresentationEngine *)self _lock_update1HzFromPresentation:presentationCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (lock_inactiveSession == sessionCopy)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    v13 = __85__BLSHAlwaysOnPresentationEngine_inactiveEnvironmentSession_didUpdateToPresentation___block_invoke;
    v14 = &unk_27841E650;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)invalidateFlipbookForReason:(void *)reason source:(void *)source environment:
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  reasonCopy = reason;
  sourceCopy = source;
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    if (sourceCopy)
    {
      [*(self + 144) clearSpecifiersForEnvironment:sourceCopy];
      [*(self + 160) invalidate];
      v10 = *(self + 160);
      *(self + 160) = 0;

      presentation = [*(self + 152) presentation];
      v12 = [presentation containsEnvironment:sourceCopy];

      if ((v12 & 1) == 0)
      {
        v13 = bls_flipbook_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(self + 264);
          OUTLINED_FUNCTION_8();
          if (!(!v17 & v16))
          {
            v18 = off_27841EFA0[v15];
          }

          *buf = 134219010;
          selfCopy2 = self;
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_35();
          _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_INFO, "%p:%{public}@ invalidated content will not invalidate flipbook (not in presentation) for source:%{public}@ reason:%{public}@ environment:%{public}@", buf, 0x34u);
        }

        os_unfair_lock_unlock((self + 8));
        v22 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      [*(self + 160) invalidate];
      v19 = *(self + 160);
      *(self + 160) = 0;
    }

    v20 = *(self + 264) - 2;
    if (v20 <= 2)
    {
      v22 = *(self + 120);
      [v22 incrementDisablePowerSavingUsageCountForReason:6];
      v24 = [(BLSHAlwaysOnPresentationEngine *)self lock_cancelFlipbookFramesForReason:v7 source:reasonCopy didClearDateSpecifiers:sourceCopy != 0 wasReset:0];
      if ((*(self + 264) - 3) <= 1)
      {
        [(BLSHAlwaysOnPresentationEngine *)self lock_endFlipbookRenderSessionForReason:0 wasPreventingSleep:?];
      }

      else
      {
        [*(self + 232) invalidate];
        v25 = *(self + 232);
        *(self + 232) = 0;
      }
    }

    else
    {
      v21 = bls_flipbook_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(self + 264);
        OUTLINED_FUNCTION_8();
        if (!(!v17 & v16))
        {
          v28 = off_27841EFA0[v27];
        }

        *buf = 134219010;
        selfCopy2 = self;
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_35();
        _os_log_debug_impl(&dword_21FD11000, v21, OS_LOG_TYPE_DEBUG, "%p:%{public}@ will ignore invalidate flipbook (rendering live) for source:%{public}@ reason:%{public}@ environment:%{public}@", buf, 0x34u);
      }

      v22 = 0;
    }

    os_unfair_lock_unlock((self + 8));
    [*(self + 16) presentationEngine:self didInvalidateContentForEnvironment:sourceCopy reason:v7];
    if (v20 <= 2)
    {
      OUTLINED_FUNCTION_12();
      v29[1] = 3221225472;
      v29[2] = __81__BLSHAlwaysOnPresentationEngine_invalidateFlipbookForReason_source_environment___block_invoke;
      v29[3] = &unk_27841E538;
      v29[4] = self;
      v22 = v22;
      v30 = v22;
      dispatch_async(MEMORY[0x277D85CD0], v29);
    }

    goto LABEL_15;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)didEndInactiveEnvironmentSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock(&self->_lock);
  lock_inactiveSession = self->_lock_inactiveSession;
  if (lock_inactiveSession == sessionCopy)
  {
    self->_lock_inactiveSession = 0;
  }

  [(BLSHAlwaysOnPresentationEngine *)self _lock_update1HzFromPresentation:?];
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightInactiveEnvironmentSession *)sessionCopy removeObserver:self];
}

- (void)setGlobal1HzFlipbook:(BOOL)flipbook
{
  flipbookCopy = flipbook;
  OUTLINED_FUNCTION_33(self);
  *(v3 + 294) = flipbookCopy;
  v5 = 48;
  if (flipbookCopy)
  {
    v5 = 56;
  }

  objc_storeStrong((v3 + 40), *(v3 + v5));
  presentation = [*(v3 + 152) presentation];
  v7 = OUTLINED_FUNCTION_34();
  v9 = [(BLSHAlwaysOnPresentationEngine *)v7 _lock_update1HzFromPresentation:v8];

  if (v9)
  {
    v10 = *(v3 + 152);
    os_unfair_lock_unlock((v3 + 8));
    if (v10)
    {
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_18();
      v12 = __55__BLSHAlwaysOnPresentationEngine_setGlobal1HzFlipbook___block_invoke;
      v13 = &unk_27841E650;
      v14 = v3;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {

    os_unfair_lock_unlock((v3 + 8));
  }
}

void __77__BLSHAlwaysOnPresentationEngine_hostEnvironment_invalidateContentForReason___block_invoke_2_243(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = bls_flipbook_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 80);
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_27();
    _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 48) identifier];
  [(BLSHAlwaysOnPresentationEngine *)WeakRetained invalidateFlipbookForReason:v11 source:v12 environment:*(a1 + 48)];

  *(*(*(a1 + 56) + 8) + 24) = 0;
  [*(*(*(a1 + 64) + 8) + 40) invalidate];
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __81__BLSHAlwaysOnPresentationEngine_invalidateFlipbookForReason_source_environment___block_invoke(uint64_t a1)
{
  [(BLSHAlwaysOnPresentationEngine *)*(a1 + 32) main_performNextStep];
  v2 = *(a1 + 40);

  return [v2 decrementDisablePowerSavingUsageCountForReason:6];
}

void __55__BLSHAlwaysOnPresentationEngine_setUsePseudoFlipbook___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (*(a1 + 41))
    {
      v3 = @"usePseudoFlipbook";
    }

    else
    {
      v3 = @"!usePseudoFlipbook";
    }

    v4 = [v2 stopForReason:v3];
  }

  [(BLSHAlwaysOnPresentationEngine *)*(a1 + 32) createFlipbook];
  if (*(a1 + 40) == 1)
  {
    v5 = *(a1 + 32);

    [v5 startFlipbookAndEnsureCurrent];
  }
}

- (void)main_getMissingDatesFromEnvironments
{
  v37 = *MEMORY[0x277D85DE8];
  if (self)
  {
    presentation = [*(self + 152) presentation];
    os_unfair_lock_lock((self + 8));
    if (!presentation || *(self + 160) || (v3 = *(self + 264)) == 0)
    {
      os_unfair_lock_unlock((self + 8));
      v18 = 0;
      v15 = 0;
      v14 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v4 = *(self + 295);
    v5 = 10.0;
    if (v3 >= 3 && (v4 & 1) == 0)
    {
      [*(self + 88) minimumPrepareInterval];
      v5 = v6;
    }

    [*(self + 88) maximumRenderInterval];
    v8 = v7;
    if (v3 == 4)
    {
      v5 = v7;
    }

    v9 = [*(self + 24) now];
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 duration:v5];
    if ([*(self + 144) missingAnySpecifiersInDateInterval:v10 forPresentation:presentation])
    {
      v11 = 10.0;
      if (!v4)
      {
        v11 = v8;
      }

      v12 = v8 + v11;
      if (v3 >= 3)
      {
        v13 = v12;
      }

      else
      {
        v13 = 30.0;
      }

      v14 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 duration:v13];
      if (v14)
      {
        v15 = [*(self + 144) missingIntervalsForMinimumInterval:v10 requestInterval:v14 ofPresentation:presentation];
        if ([v15 count])
        {
          v16 = [[BLSHEngineRequestDatesOperation alloc] initWithRequestInterval:v14 delegate:self osTimerProvider:*(self + 24)];
          v17 = *(self + 160);
          *(self + 160) = v16;

          v18 = v16;
        }

        else
        {
          v19 = bls_flipbook_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            if (v3 > 4)
            {
              v26 = @"Stopped";
            }

            else
            {
              v26 = off_27841EFA0[v3 - 1];
            }

            v30 = v26;
            bls_shortLoggingString = [v14 bls_shortLoggingString];
            OUTLINED_FUNCTION_26();
            v32 = v30;
            v33 = v28;
            v34 = v29;
            _os_log_debug_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEBUG, "%p:%{public}@ not requesting dates for interval:%{public}@ (no missingIntervals)", buf, 0x20u);
          }

          v18 = 0;
        }

        [*(self + 40) purgeStaleDataForNowDate:v9];
        goto LABEL_25;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    v18 = 0;
LABEL_25:

    os_unfair_lock_unlock((self + 8));
    if (v18)
    {
      v20 = bls_flipbook_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        if (v3 > 4)
        {
          v22 = @"Stopped";
        }

        else
        {
          v22 = off_27841EFA0[v3 - 1];
        }

        bls_shortLoggingString2 = [v14 bls_shortLoggingString];
        OUTLINED_FUNCTION_26();
        v32 = v22;
        v33 = v24;
        v34 = v25;
        v35 = v24;
        v36 = v15;
        _os_log_debug_impl(&dword_21FD11000, v20, OS_LOG_TYPE_DEBUG, "%p:%{public}@ requesting dates for interval:%{public}@ missingIntervals:%{public}@", buf, 0x2Au);
      }

      [(BLSHEngineRequestDatesOperation *)v18 beginOperationWithIntervals:v15 shouldReset:0];
    }

    goto LABEL_28;
  }

LABEL_29:
  v21 = *MEMORY[0x277D85DE8];
}

- (uint64_t)main_shouldWaitForRequestDates
{
  *(&v44[2] + 4) = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_33(self);
    v2 = *(v1 + 160);
    v3 = *(v1 + 264);
    v4 = *(v1 + 24);
    v5 = [v4 now];
    v6 = 0;
    if (v3 && v2)
    {
      if ([v2 isComplete])
      {
        goto LABEL_11;
      }

      requestInterval = [v2 requestInterval];
      startDate = [requestInterval startDate];
      [startDate timeIntervalSinceDate:v5];
      v10 = v9;

      if (v10 >= 0.3)
      {
LABEL_11:
        v6 = 0;
      }

      else
      {
        beginDate = [v2 beginDate];
        [v5 timeIntervalSinceDate:beginDate];
        v13 = v12;
        if (v3 > 4 || (v14 = dbl_21FDA5310[v3 - 1] - v12, v14 <= 0.0))
        {
          v20 = bls_flipbook_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            if (v3 <= 4)
            {
              v30 = off_27841EFA0[v3 - 1];
            }

            v31 = *(v1 + 232);
            OUTLINED_FUNCTION_13();
            v43 = v32;
            v44[0] = v33;
            _os_log_debug_impl(&dword_21FD11000, v20, OS_LOG_TYPE_DEBUG, "%p:%{public}@ will render frames, waiting (enough) %.3lfs for operation:%{public}@ timer:%{public}@", buf, 0x34u);
          }

          v6 = 0;
        }

        else
        {
          if ([*(v1 + 232) isScheduled] && (objc_msgSend(*(v1 + 232), "timeRemaining"), v15 <= v14))
          {
            v19 = 0;
          }

          else
          {
            [*(v1 + 232) invalidate];
            v16 = *(v1 + 24);
            OUTLINED_FUNCTION_0_5();
            OUTLINED_FUNCTION_18();
            v35 = __64__BLSHAlwaysOnPresentationEngine_main_shouldWaitForRequestDates__block_invoke;
            v36 = &unk_27841EDC0;
            v37 = v1;
            v41 = v3;
            v38 = v4;
            v39 = beginDate;
            v40 = v2;
            v17 = [v16 scheduledWakingTimerWithIdentifier:@"AlwaysOnPresentationEngine" interval:v34 leewayInterval:v14 handler:0.2];
            v18 = *(v1 + 232);
            *(v1 + 232) = v17;

            v19 = 1;
          }

          v23 = bls_flipbook_log();
          v20 = v23;
          if (v13 > 0.2)
          {
            v24 = 1;
          }

          else
          {
            v24 = v19;
          }

          v6 = 1;
          if (v24)
          {
            v25 = OS_LOG_TYPE_INFO;
          }

          else
          {
            v25 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v23, v25))
          {
            v26 = off_27841EFA0[v3 - 1];
            v27 = *(v1 + 232);
            OUTLINED_FUNCTION_13();
            v43 = 1024;
            LODWORD(v44[0]) = v19;
            WORD2(v44[0]) = v28;
            *(v44 + 6) = v29;
            _os_log_impl(&dword_21FD11000, v20, v25, "%p:%{public}@ will not render frames, waiting %.3lfs for operation:%{public}@ didCreateNewTimer:%{BOOL}u timer:%{public}@", buf, 0x3Au);
          }
        }
      }
    }

    os_unfair_lock_unlock((v1 + 8));
  }

  else
  {
    v6 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)main_performUpdateIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  if (self)
  {
    OUTLINED_FUNCTION_33(self);
    if (*(v1 + 240))
    {
      v2 = bls_flipbook_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        bls_shortLoggingString = [*(v1 + 240) bls_shortLoggingString];
        v7 = 134218242;
        v8 = v1;
        OUTLINED_FUNCTION_30();
        v9 = v4;
        _os_log_debug_impl(&dword_21FD11000, v2, OS_LOG_TYPE_DEBUG, "%p servicing timer nextsUpdateStart:%{public}@", &v7, 0x16u);
      }

      v5 = *(v1 + 240);
      *(v1 + 240) = 0;
    }

    os_unfair_lock_unlock((v1 + 8));
    [(BLSHAlwaysOnPresentationEngine *)v1 main_performLiveUpdateIfNeeded];
    [(BLSHAlwaysOnPresentationEngine *)v1 main_prepareAndRenderNextFlipbookFrame];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)timerFiredForNextUpdatesStart:(uint64_t)start
{
  v4 = a2;
  v5 = v4;
  if (start)
  {
    if (v4)
    {
      os_unfair_lock_lock((start + 8));
      objc_storeStrong((start + 240), a2);
      os_unfair_lock_unlock((start + 8));
    }

    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    BSDispatchMain();
  }
}

- (void)main_performLiveUpdateIfNeeded
{
  if (self)
  {
    OUTLINED_FUNCTION_33(self);
    if (*(v1 + 264) == 1 && ![*(v1 + 232) isScheduled])
    {
      presentation = [*(v1 + 152) presentation];
      v3 = [*(v1 + 24) now];
      [*(v1 + 144) purgeSpecifiersBefore:v3];
      v4 = *(v1 + 144);
      v5 = *(v1 + 168);
      [*(v1 + 88) coaelscingEpsilon];
      v7 = v6;
      v8 = [v3 dateByAddingTimeInterval:0.045];
      v9 = [v4 updatesAfterSpecifier:v5 coalesceFirstUpdateToNowDate:v3 plusRenderEarlyEpsilon:1 untilGapOverDuration:v8 coaelscingEpsilon:presentation maximumUpdates:0 lastValidDate:0.045 forPresentation:1.79769313e308 environmentFilter:v7];

      dequeueNextUpdate = [v9 dequeueNextUpdate];
      invalidate = [v9 invalidate];
      [(BLSHAlwaysOnPresentationEngine *)v1 lock_scheduleUpdateTimerForNextUpdatesStart:invalidate];
      invalidate2 = [v9 invalidate];

      os_unfair_lock_unlock((v1 + 8));
      if (dequeueNextUpdate)
      {
        [(BLSHAlwaysOnPresentationEngine *)v1 performLiveUpdateToSpecifier:dequeueNextUpdate];
      }
    }

    else
    {

      os_unfair_lock_unlock((v1 + 8));
    }
  }
}

void __72__BLSHAlwaysOnPresentationEngine_main_prepareAndRenderNextFlipbookFrame__block_invoke(uint64_t a1, void *a2)
{
  [a2 invalidate];
  v3 = *(a1 + 32);

  [(BLSHAlwaysOnPresentationEngine *)v3 timerFiredForNextUpdatesStart:?];
}

- (id)loggingStreamForRenderSession
{
  if (self)
  {
    v2 = objc_opt_new();
    mEMORY[0x277CF0978] = [MEMORY[0x277CF0978] sharedFormatter];
    v4 = [mEMORY[0x277CF0978] stringFromByteCount:{objc_msgSend(*(self + 208), "memoryUsage")}];
    v5 = [v2 appendObject:v4 withName:0];

    renderedFrames = [*(self + 208) renderedFrames];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    v10 = __63__BLSHAlwaysOnPresentationEngine_loggingStreamForRenderSession__block_invoke;
    v11 = &unk_27841EE10;
    v7 = v2;
    v12 = v7;
    [v7 bls_appendBoundedCollection:renderedFrames withName:0 maximumItems:4 itemBlock:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __78__BLSHAlwaysOnPresentationEngine_lock_scheduleUpdateTimerForNextUpdatesStart___block_invoke(id *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = bls_flipbook_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [a1[4] bls_loggingString];
    v5 = [a1[5] bls_shortLoggingString];
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_27();
    _os_log_impl(v6, v7, v8, v9, v10, 0x20u);
  }

  [(BLSHAlwaysOnPresentationEngine *)WeakRetained timerFiredForNextUpdatesStart:?];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:(uint64_t)a1 platformProvider:osInterfaceProvider:inactiveBudgetPolicy:.cold.1(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 264);
  OUTLINED_FUNCTION_8();
  if (!(!v5 & v4))
  {
    v6 = off_27841EFA0[v3];
  }

  v7 = *(v2 + 64);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerHandlersForService:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setInactiveSession:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_engineState == BLSHAlwaysOnPresentationEngineStateStopped", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)lock_setFlipbookPredictiveRenderType
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"must have valid flipbook to set flipbook mode"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_4();
    v6 = NSStringFromClass(v5);
    v9 = 138544642;
    selfCopy = self;
    OUTLINED_FUNCTION_30();
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = v8;
    v15 = @"BLSHAlwaysOnPresentationEngine.m";
    v16 = 1024;
    v17 = 1364;
    v18 = v8;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __124__BLSHAlwaysOnPresentationEngine_requestDatesOperation_environment_didProvideSpecifiers_forPresentationInterval_isComplete___block_invoke_226_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_24(&dword_21FD11000, v0, v1, "%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)renderFramesSession:(uint64_t)a1 failedToRenderSpecifier:(void *)a2 error:timedOutEnvironments:.cold.1(uint64_t a1, void *a2)
{
  [(BLSHAlwaysOnPresentationEngine *)a1 lock_endFlipbookRenderSessionAndAllowSleepIfPendingForReason:?];
  v4 = qword_21FDA5300[(*(a1 + 264) - 3) < 2];
  v5 = mach_continuous_time();
  *(a1 + 256) = BLSMachTimeFromNSTimeInterval() + v5;
  v6 = [a2 presentationDate];
  [(BLSHAlwaysOnPresentationEngine *)a1 lock_scheduleUpdateTimerForNextUpdatesStart:v6];
}

- (void)lock_scheduleUpdateTimerForNextUpdatesStart:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __78__BLSHAlwaysOnPresentationEngine_lock_scheduleUpdateTimerForNextUpdatesStart___block_invoke_319;
  a2[3] = &unk_27841E650;
  a2[4] = a3;
  dispatch_async(MEMORY[0x277D85CD0], a2);
}

- (void)hostEnvironment:(uint64_t)a1 invalidateContentForReason:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalidateContentForReason passed nil environment: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_4();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __77__BLSHAlwaysOnPresentationEngine_hostEnvironment_invalidateContentForReason___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  v6 = *(a2 + 80);
  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  v9 = 134218498;
  v10 = a1;
  OUTLINED_FUNCTION_30();
  v11 = v5;
  v12 = 2048;
  v13 = v7;
  _os_log_fault_impl(&dword_21FD11000, a3, OS_LOG_TYPE_FAULT, "%p held systemActivity for too long. invalidating. %{public}@ elapsed:%.4lfs", &v9, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepAction:(char *)a1 performWithCompletion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_sleepActionCompletion == nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end