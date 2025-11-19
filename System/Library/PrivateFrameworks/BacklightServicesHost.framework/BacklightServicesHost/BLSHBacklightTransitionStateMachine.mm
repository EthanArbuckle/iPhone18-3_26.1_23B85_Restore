@interface BLSHBacklightTransitionStateMachine
- (BLSHBacklightHostObserving)performerDelegate;
- (BLSHBacklightInactiveEnvironmentSession)session;
- (BLSHBacklightMutableTargetState)withLock_ensureTargetStateCreated;
- (BLSHBacklightTransitionStateMachine)initWithPlatformProvider:(id)a3 osInterfaceProvider:(id)a4 inactiveBudgetPolicy:(id)a5;
- (BLSHPendingEnvironmentUpdateOperation)onMainWithLock_environmentUpdateOperationForEvents:(BLSHPendingEnvironmentUpdateOperation *)a1;
- (BOOL)deviceSupportsAlwaysOn;
- (BOOL)globalCacheFlipbookOnDisplayWake;
- (BOOL)hasEnsureFlipbookCurrent;
- (BOOL)hostEnvironment:(id)a3 didAmendSceneSettings:(id)a4;
- (BOOL)isAlwaysOnEnabled;
- (BOOL)isAlwaysOnSuppressed;
- (BOOL)isFlipbookDisabled;
- (BOOL)isGlobalHighLuminanceAlwaysOn;
- (BOOL)isGlobalUnrestrictedFramerate;
- (BOOL)isTransitioning;
- (BOOL)safeToUnblank;
- (BOOL)willUnblankTransitioningToDisplayMode:(uint64_t)a1;
- (BOOL)withLock_isTransitioning;
- (NSObject)_lock_ensureFlipbookCurrent;
- (NSString)backlightStateDescription;
- (NSString)debugDescription;
- (NSString)description;
- (id)abortContextForTimer:(id)a3;
- (id)identifier;
- (id)lock_displayOperationForTarget:(uint64_t)a3 isNullOperationAllowed:;
- (id)onMainWithLock_environmentPerformUpdateIfNeededAfterDisplayUpdate;
- (id)onMainWithLock_environmentPerformUpdateIfNeededBeforeDisplayUpdate;
- (id)onMainWithLock_onScreenSpecifierForDisplayMode:(uint64_t)a1;
- (id)onMainWithLock_performEventOperationIfNeededWhenBeforeDisplayBlankingChange:(id *)a1;
- (id)onMainWithLock_updateDisplayOrEngineOperationIfNeeded;
- (id)onMainWithLock_updatePresentationOperationIfNeeded;
- (id)setupRampOperationIfNeeded;
- (id)withLock_backlightStateDescription;
- (int64_t)backlightState;
- (int64_t)flipbookState;
- (uint64_t)_lock_updateCacheFlipbookWithSession:(uint64_t)a1;
- (uint64_t)createSession;
- (uint64_t)flipbookStateForEngine;
- (uint64_t)hasUnrestrictedFramerateWithSession:(uint64_t)a1;
- (uint64_t)isDisplayModeTransitionAnimatedToMode:(unint64_t)a3 fromMode:;
- (uint64_t)lock_displayModeForBacklightState:(uint64_t)result;
- (uint64_t)lock_isHighLuminanceAlwaysOnWithSession:(uint64_t)a1;
- (uint64_t)setDisplayMode:(uint64_t)result withRampDuration:;
- (unint64_t)backlightStateChangeTimestamp;
- (unsigned)withLock_debugDescription;
- (void)_lock_enqueueNewEvent:(id *)a1;
- (void)_lock_setPendingUpdateDisplayMode:(uint64_t)a1;
- (void)acquireTouchLockAssertion;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)destroySession;
- (void)displayState:(id)a3 didUpdateToMode:(int64_t)a4;
- (void)environmentStateMachine:(id)a3 didUpdateToPresentation:(id)a4;
- (void)environmentStateMachine:(id)a3 didUpdateToSpecifier:(id)a4;
- (void)environmentStateMachineDidBeginUpdateToState:(uint64_t)a1;
- (void)environmentStateMachineDidCompleteUpdateToState:(uint64_t)a1;
- (void)hostEnvironment:(id)a3 hostDidSetAlwaysOnEnabledForEnvironment:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSetCacheFlipbookOnDisplayWake:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSetHighLuminanceAlwaysOn:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSetLiveUpdating:(BOOL)a4;
- (void)hostEnvironment:(id)a3 hostDidSetUnrestrictedFramerateUpdates:(BOOL)a4;
- (void)ifStillValidPerformAlwaysOnBrightnessRamp:(double)a3 withDuration:;
- (void)inactiveEnvironmentSession:(id)a3 updateToPresentation:(id)a4;
- (void)invalidateTouchLockAssertion;
- (void)lock_displayOperationForCurrentTarget;
- (void)logForPerformEvent:(void *)a3 currentState:(void *)a4 targetState:(int)a5 matchesPrewarm:(void *)a6 pendingPrewarmedEvent:;
- (void)onMainWithLock_stopPresentationEngineIfNeededForDisplayMode:(uint64_t)a1;
- (void)onMainWithLock_updateSpecifierOperationIfNeeded;
- (void)onMain_ensureSessionCreated;
- (void)onMain_performEvent:(uint64_t)a1;
- (void)onMain_performNextStepInTransition;
- (void)onMain_setDisplayMode:(double)a3 withRampDuration:;
- (void)onMain_updateHostEnvironmentAndPerformNextStep:(uint64_t)a1;
- (void)performEvent:(id)a3;
- (void)presentationEngine:(id)a3 didInvalidateContentForEnvironment:(id)a4 reason:(id)a5;
- (void)presentationEngine:(id)a3 didUpdateToCurrentWithSpecifier:(id)a4;
- (void)prewarmEvent:(id)a3;
- (void)registerHandlersForService:(id)a3;
- (void)releaseTransitionAPAwakeAssertion;
- (void)setAlwaysOnSuppressed:(BOOL)a3;
- (void)setFlipbookDisabled:(BOOL)a3;
- (void)setGlobalCacheFlipbookOnDisplayWake:(BOOL)a3;
- (void)setGlobalHighLuminanceAlwaysOn:(BOOL)a3;
- (void)setGlobalUnrestrictedFramerate:(BOOL)a3;
- (void)setPerformerDelegate:(id)a3;
- (void)setSafeToUnblank:(BOOL)a3;
- (void)updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment:(uint64_t)a1;
- (void)withLock_acquireTransitionAPAwakeAssertion;
@end

@implementation BLSHBacklightTransitionStateMachine

- (int64_t)backlightState
{
  os_unfair_lock_lock(&self->_lock);
  lock_backlightState = self->_lock_backlightState;
  os_unfair_lock_unlock(&self->_lock);
  return lock_backlightState;
}

- (unsigned)withLock_debugDescription
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x277CF0C00] builderWithObject:a1];
    v3 = [(BLSHBacklightTransitionStateMachine *)v1 withLock_backlightStateDescription];
    v4 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v5 = *(v1 + 25);
    v6 = NSStringFromBLSFlipbookState();
    v7 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    [(BLSHBacklightTransitionStateMachine *)v1 flipbookStateForEngine];
    v8 = NSStringFromBLSFlipbookState();
    v9 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v10 = [v2 appendBool:v1[243] withName:@"safeToUnblank" ifEqualTo:0];
    v11 = [*(v1 + 19) debugDescription];
    v12 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v13 = [*(v1 + 20) debugDescription];
    v14 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v15 = [*(v1 + 13) debugDescription];
    v16 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v17 = [*(v1 + 16) debugDescription];
    v18 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v19 = [*(v1 + 14) debugDescription];
    v20 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v21 = [*(v1 + 15) debugDescription];
    v22 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v23 = [*(v1 + 17) debugDescription];
    v24 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v25 = [*(v1 + 22) debugDescription];
    v26 = [OUTLINED_FUNCTION_14_3() appendObject:? withName:?];

    v27 = [*(v1 + 21) debugDescription];
    v28 = [v2 appendObject:v27 withName:@"pendingPrewarmedEvent"];

    v1 = [v2 build];
  }

  return v1;
}

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BLSHBacklightTransitionStateMachine *)self withLock_debugDescription];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)withLock_backlightStateDescription
{
  if (a1)
  {
    v2 = MEMORY[0x277CCACA8];
    if ([(BLSHBacklightTransitionStateMachine *)a1 withLock_isTransitioning])
    {
      v3 = "transitioning to ";
    }

    else
    {
      v3 = "";
    }

    v4 = *(a1 + 72);
    v5 = NSStringFromBLSBacklightState();
    v6 = [MEMORY[0x277CF0BF0] sharedInstance];
    v7 = *(a1 + 80);
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v8 = [v6 formatDuration:?];
    v9 = objc_alloc(MEMORY[0x277CBEAA8]);
    v10 = [v9 bls_initWithMachContinuousTime:*(a1 + 80)];
    v11 = [v10 bls_shortLoggingString];
    v12 = [v2 stringWithFormat:@"%s%@ for %@ since %@", v3, v5, v8, v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)withLock_isTransitioning
{
  if (result)
  {
    return *(result + 104) || *(result + 112) || *(result + 120) || *(result + 128) || *(result + 136) || [*(result + 176) count] != 0;
  }

  return result;
}

- (uint64_t)flipbookStateForEngine
{
  if (result)
  {
    v1 = result;
    result = [*(result + 40) engineState];
    if (result)
    {
      v2 = result;
      if ([*(v1 + 40) isSuppressed])
      {
        v3 = *(v1 + 72);
        if (BLSBacklightStateIsActive())
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }

      else if (v2 > 4)
      {
        return 0;
      }

      else
      {
        return qword_21FDA5420[v2 - 1];
      }
    }
  }

  return result;
}

- (BOOL)isAlwaysOnSuppressed
{
  os_unfair_lock_lock(&self->_lock);
  lock_alwaysOnSuppressed = self->_lock_alwaysOnSuppressed;
  os_unfair_lock_unlock(&self->_lock);
  return lock_alwaysOnSuppressed;
}

- (BOOL)isTransitioning
{
  v3 = OUTLINED_FUNCTION_15_2(self);
  os_unfair_lock_lock(v3);
  v4 = [(BLSHBacklightTransitionStateMachine *)v2 withLock_isTransitioning];
  os_unfair_lock_unlock(v2 + 2);
  return v4;
}

- (void)onMain_ensureSessionCreated
{
  v5 = MEMORY[0x277CCACA8];
  v15 = [*a1 sessionProvider];
  v6 = [v5 stringWithFormat:@"%p nil presentation from session provider:%@"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a3);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, a2, v15, v16);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BLSHBacklightMutableTargetState)withLock_ensureTargetStateCreated
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 160);
    if (!v2)
    {
      v8 = [[BLSHBacklightMutableTargetState alloc] initWithState:*(a1 + 152)];
      v9 = *(a1 + 160);
      *(a1 + 160) = v8;

      v3 = v8;
      v7 = bls_backlight_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(BLSHBacklightMutableTargetState *)v3 bls_shortLoggingString];
        v19 = 134218242;
        v20 = a1;
        v22 = v21 = 2114;
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v12, v13, v14, v15, v16, v17);
      }

      goto LABEL_10;
    }

    v3 = v2;
    v4 = [(BLSHBacklightMutableTargetState *)v2 presentation];

    if (!v4)
    {
      v5 = [*(a1 + 152) presentation];

      if (v5)
      {
        v6 = bls_backlight_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 152);
          v19 = 134218498;
          v20 = a1;
          v21 = 2114;
          v22 = v3;
          v23 = 2114;
          v24 = v18;
          _os_log_error_impl(&dword_21FD11000, v6, OS_LOG_TYPE_ERROR, "TSM:%p nil target presentation, will adopt from current state — target:%{public}@ current:%{public}@", &v19, 0x20u);
        }

        v7 = [*(a1 + 152) presentation];
        [OUTLINED_FUNCTION_14_3() setPresentation:?];
LABEL_10:
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)invalidateTouchLockAssertion
{
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_15_2(a1);
    os_unfair_lock_lock(v2);
    v3 = *(v1 + 56);
    *(v1 + 56) = 0;
    v4 = v3;

    os_unfair_lock_unlock((v1 + 8));
    [v4 invalidate];
  }
}

- (void)onMain_performNextStepInTransition
{
  [a1 state];
  v2 = OUTLINED_FUNCTION_30_0();
  [(BLSHBacklightTransitionStateMachine *)v2 environmentStateMachineDidBeginUpdateToState:v3];
  [a1 state];
  v4 = OUTLINED_FUNCTION_30_0();
  [(BLSHBacklightTransitionStateMachine *)v4 environmentStateMachineDidCompleteUpdateToState:v5];
}

- (id)onMainWithLock_updatePresentationOperationIfNeeded
{
  v2 = a1;
  v33 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [a1[20] presentation];
    v4 = [v2[19] presentation];
    if (v3 && ([v3 isEqual:v4] & 1) == 0)
    {
      v11 = [[BLSHPendingUpdatePresentation alloc] initWithPresentation:v3];
      v12 = v2[14];
      v2[14] = v11;

      v13 = bls_backlight_log();
      if (!OUTLINED_FUNCTION_34_0(v13))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v2[14];
      if (!v5)
      {
LABEL_9:
        v10 = bls_backlight_log();
        if (OUTLINED_FUNCTION_34_0(v10))
        {
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_12_4();
          _os_log_debug_impl(v16, v17, v18, v19, v20, 0x20u);
        }

        v2 = 0;
        goto LABEL_16;
      }

      v6 = [v5 isCompleted];
      v7 = bls_backlight_log();
      v8 = OUTLINED_FUNCTION_34_0(v7);
      if (v6)
      {
        if (v8)
        {
          v21 = v2[14];
          OUTLINED_FUNCTION_10_1();
          OUTLINED_FUNCTION_11_2();
          OUTLINED_FUNCTION_12_4();
          _os_log_debug_impl(v22, v23, v24, v25, v26, 0x16u);
        }

        v9 = v2[14];
        v2[14] = 0;

        goto LABEL_9;
      }

      if (!v8)
      {
LABEL_15:

        v2 = v2[14];
LABEL_16:

        goto LABEL_17;
      }
    }

    v27 = v2[14];
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_12_4();
    _os_log_debug_impl(v28, v29, v30, v31, v32, 0x16u);
    goto LABEL_15;
  }

LABEL_17:
  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)onMainWithLock_environmentPerformUpdateIfNeededBeforeDisplayUpdate
{
  if (a1)
  {
    a1 = [(BLSHBacklightTransitionStateMachine *)a1 onMainWithLock_performEventOperationIfNeededWhenBeforeDisplayBlankingChange:?];
    v1 = vars8;
  }

  return a1;
}

- (id)setupRampOperationIfNeeded
{
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_15_2(a1);
    os_unfair_lock_lock(v2);
    v3 = [(BLSHBacklightTransitionStateMachine *)v1 lock_displayOperationForCurrentTarget];
    v4 = [v3 rampOperation];
    if (v4)
    {
      [(BLSHBacklightTransitionStateMachine *)v1 _lock_setPendingUpdateDisplayMode:v3];
    }

    os_unfair_lock_unlock((v1 + 8));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)lock_displayOperationForCurrentTarget
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[20];
    if (!v3)
    {
      v3 = v2[19];
    }

    [v3 displayMode];
    v4 = OUTLINED_FUNCTION_30_0();
    a1 = [(BLSHBacklightTransitionStateMachine *)v4 lock_displayOperationForTarget:v5 isNullOperationAllowed:1];
    v1 = vars8;
  }

  return a1;
}

- (void)withLock_acquireTransitionAPAwakeAssertion
{
  v19[9] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_15_2(a1);
    os_unfair_lock_assert_owner(v3);
    if (*(v1 + 88))
    {
      v4 = bls_backlight_log();
      if (OUTLINED_FUNCTION_33_0(v4))
      {
        v11 = *(v1 + 88);
        OUTLINED_FUNCTION_2_4();
        *(&v19[7] + 6) = v12;
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v13, v14, v15, v16, v17, v18);
      }
    }

    else
    {
      v5 = mach_continuous_time();
      v6 = [*(v1 + 24) createSystemActivityAssertionWithIdentifier:@"BacklightServices.transition" configurator:&__block_literal_global_21];
      v7 = *(v1 + 88);
      *(v1 + 88) = v6;

      v8 = *(v1 + 88);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3_2();
      v19[2] = __81__BLSHBacklightTransitionStateMachine_withLock_acquireTransitionAPAwakeAssertion__block_invoke_2;
      v19[3] = &unk_278420450;
      v19[4] = v1;
      v19[5] = v5;
      [v9 acquireWithTimeout:v19 handler:0.0];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __81__BLSHBacklightTransitionStateMachine_withLock_acquireTransitionAPAwakeAssertion__block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
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
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v14 = v13;
    v15 = [v7 bls_loggingString];
    v17 = 134218754;
    v18 = v12;
    v19 = 2048;
    v20 = v14;
    v21 = 2114;
    v22 = v8;
    v23 = 2114;
    v24 = v15;
    _os_log_impl(&dword_21FD11000, v9, v10, "TSM:%p transition system activity assertion callback elapsed:%.4lfs details:%{public}@ error:%{public}@", &v17, 0x2Au);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BLSHBacklightHostObserving)performerDelegate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_performerDelegate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)onMainWithLock_updateSpecifierOperationIfNeeded
{
  v46 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1;
    v4 = a1[15];
    if (v4)
    {
      if (![v4 isCompleted])
      {
        v15 = bls_backlight_log();
        if (!OUTLINED_FUNCTION_33_0(v15))
        {
LABEL_15:

          a1 = v3[15];
          goto LABEL_19;
        }

        v16 = v3[15];
        OUTLINED_FUNCTION_36_0();
        OUTLINED_FUNCTION_26_0();
LABEL_23:
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v30, v31, v32, v33, v34, v35);
        goto LABEL_15;
      }

      v5 = v3[15];
      v3[15] = 0;
    }

    v6 = v3[12];
    if (v6)
    {
      v7 = v3[9];
      if (v7 == 1)
      {
        v8 = [v3[19] presentation];
        v9 = [v3[20] presentation];
        v10 = [BLSHPendingUpdateToSpecifier alloc];
        v11 = v3[12];
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_3_2();
        v36[2] = __86__BLSHBacklightTransitionStateMachine_onMainWithLock_updateSpecifierOperationIfNeeded__block_invoke;
        v36[3] = &unk_2784204A0;
        v40 = v9 != v8;
        v37 = v8;
        v38 = v9;
        v39 = v3;
        v2 = v9;
        v1 = v8;
        v12 = [v11 filter:v36];
        v13 = [(BLSHPendingUpdateToSpecifier *)v10 initWithSpecifier:v12];
        v14 = v3[15];
        v3[15] = v13;
      }

      else
      {
        v1 = v6;
        v17 = bls_backlight_log();
        if (OUTLINED_FUNCTION_32_0(v17))
        {
          OUTLINED_FUNCTION_36_0();
          v42 = 2114;
          v43 = v1;
          v44 = 1024;
          v45 = v7;
          OUTLINED_FUNCTION_27_0();
          _os_log_impl(v18, v19, v20, v21, v22, 0x1Cu);
        }
      }

      v23 = v3[12];
      v3[12] = 0;
    }

    v24 = v3[15];
    v25 = bls_backlight_log();
    v26 = OUTLINED_FUNCTION_33_0(v25);
    if (v24)
    {
      if (!v26)
      {
        goto LABEL_15;
      }

      v29 = v3[15];
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_26_0();
      goto LABEL_23;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_36_0();
      _os_log_debug_impl(&dword_21FD11000, v1, OS_LOG_TYPE_DEBUG, "TSM:%p (findNextOperation) no updateSpecifier needed", buf, 0xCu);
    }

    a1 = 0;
  }

LABEL_19:
  v27 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)onMainWithLock_updateDisplayOrEngineOperationIfNeeded
{
  v83 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 128);
    if (v3)
    {
      v5 = [v3 isFullyCompleted];
      v4 = *(a1 + 128);
      if (v5)
      {
        *(a1 + 128) = 0;

        v4 = *(a1 + 128);
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = v4;
    v7 = [(BLSHBacklightTransitionStateMachine *)a1 lock_displayOperationForCurrentTarget];
    v8 = *(a1 + 160);
    if (!v8)
    {
      v8 = *(a1 + 152);
    }

    v9 = [v8 displayMode];
    v10 = IsOffForBLSBacklightDisplayMode(v9);
    v11 = *(a1 + 104);
    if (v11 && (([v11 isCompleted] | v10) & 1) == 0)
    {
      v12 = [*(a1 + 104) didUpdateInitialState];
      v13 = bls_backlight_log();
      v1 = v13;
      if (!v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          OUTLINED_FUNCTION_40();
          v37 = *(a1 + 104);
          OUTLINED_FUNCTION_4_8();
          OUTLINED_FUNCTION_16_2();
          _os_log_fault_impl(v38, v39, OS_LOG_TYPE_FAULT, v40, v41, 0x22u);
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_40();
        v32 = *(a1 + 104);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_16_2();
        _os_log_debug_impl(v33, v34, OS_LOG_TYPE_DEBUG, v35, v36, 0x22u);
      }
    }

    if (!((*(a1 + 112) == 0) | v10 & 1))
    {
      v9 = bls_backlight_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        OUTLINED_FUNCTION_40();
        v18 = *(a1 + 112);
        OUTLINED_FUNCTION_4_8();
        _os_log_fault_impl(&dword_21FD11000, v9, OS_LOG_TYPE_FAULT, "TSM:%p (findNextOperation) pending presentation update while determining display update, animating:%{BOOL}u forcedUnanimated:%{BOOL}u pending:%{public}@", v77, 0x22u);
      }

LABEL_17:

LABEL_18:
      v14 = 0;
LABEL_19:

      goto LABEL_20;
    }

    [(BLSHBacklightTransitionStateMachine *)a1 _lock_setPendingUpdateDisplayMode:v7];
    if (v9 == 2)
    {
      if ([*(a1 + 152) displayMode] == 1)
      {
        v42 = [(BLSHBacklightTransitionStateMachine *)a1 _lock_ensureFlipbookCurrent];
        if (v42)
        {
          v14 = v42;
          v43 = bls_backlight_log();
          if (OUTLINED_FUNCTION_44(v43))
          {
            OUTLINED_FUNCTION_1_0();
            v79 = v14;
            v80 = v44;
            *v81 = v7;
            OUTLINED_FUNCTION_16_2();
            v49 = OS_LOG_TYPE_DEBUG;
            v50 = 32;
LABEL_55:
            _os_log_debug_impl(v45, v46, v49, v47, v48, v50);
            goto LABEL_46;
          }

          goto LABEL_46;
        }
      }

      if (v7)
      {
        if (v6 != v7)
        {
LABEL_30:
          v17 = bls_backlight_log();
          if (OUTLINED_FUNCTION_34_0(v17))
          {
            OUTLINED_FUNCTION_40();
            OUTLINED_FUNCTION_10_1();
            v78 = 2114;
            v79 = v7;
            v80 = 1024;
            *v81 = v70;
            *&v81[4] = 1024;
            *&v81[6] = v71;
            OUTLINED_FUNCTION_12_4();
            _os_log_debug_impl(v72, v73, v74, v75, v76, 0x22u);
          }

          goto LABEL_40;
        }

        goto LABEL_40;
      }

      v51 = [(BLSHBacklightTransitionStateMachine *)a1 _lock_ensureFlipbookCurrent];
      if (v51)
      {
        v14 = v51;
        v52 = bls_backlight_log();
        if (OUTLINED_FUNCTION_44(v52))
        {
          OUTLINED_FUNCTION_1_0();
          v79 = v14;
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_13_3();
          goto LABEL_55;
        }

LABEL_46:

        goto LABEL_19;
      }
    }

    else
    {
      v19 = *(a1 + 136);
      if (v19 && ([v19 isCompleted] & 1) == 0)
      {
        v20 = bls_backlight_log();
        if (OUTLINED_FUNCTION_35_0(v20))
        {
          v21 = *(a1 + 136);
          v22 = NSStringFromBLSBacklightDisplayMode(v9);
          OUTLINED_FUNCTION_1_0();
          v79 = v21;
          v80 = v23;
          *v81 = v24;
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_22_1();
          _os_log_impl(v25, v26, v27, v28, v29, v30);
        }
      }

      v31 = *(a1 + 136);
      *(a1 + 136) = 0;

      if (v7)
      {
        if (v6 != v7)
        {
          [(BLSHBacklightTransitionStateMachine *)a1 onMainWithLock_stopPresentationEngineIfNeededForDisplayMode:v9];
          if (IsBlankedForBLSBacklightDisplayMode([*(a1 + 152) displayMode]))
          {
            v59 = [(BLSHBacklightTransitionStateMachine *)a1 onMainWithLock_updateSpecifierOperationIfNeeded];
            if (v59)
            {
              v60 = v59;
              v61 = bls_backlight_log();
              if (OUTLINED_FUNCTION_35_0(v61))
              {
                v62 = NSStringFromBLSBacklightDisplayMode([*(a1 + 152) displayMode]);
                v63 = NSStringFromBLSBacklightDisplayMode(v9);
                OUTLINED_FUNCTION_1_0();
                v79 = v60;
                v80 = v64;
                *v81 = v62;
                *&v81[8] = v64;
                v82 = v65;
                OUTLINED_FUNCTION_16_2();
                _os_log_impl(v66, v67, OS_LOG_TYPE_INFO, v68, v69, 0x2Au);
              }

              v14 = v60;
              goto LABEL_19;
            }
          }

          goto LABEL_30;
        }

LABEL_40:
        v14 = v7;
        goto LABEL_19;
      }
    }

    v53 = bls_backlight_log();
    if (OUTLINED_FUNCTION_34_0(v53))
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_12_4();
      _os_log_debug_impl(v54, v55, v56, v57, v58, 0xCu);
    }

    goto LABEL_17;
  }

  v14 = 0;
LABEL_20:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)safeToUnblank
{
  os_unfair_lock_lock(&self->_lock);
  lock_safeToUnblank = self->_lock_safeToUnblank;
  os_unfair_lock_unlock(&self->_lock);
  return lock_safeToUnblank;
}

- (BLSHBacklightTransitionStateMachine)initWithPlatformProvider:(id)a3 osInterfaceProvider:(id)a4 inactiveBudgetPolicy:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v44.receiver = self;
  v44.super_class = BLSHBacklightTransitionStateMachine;
  v13 = [(BLSHBacklightTransitionStateMachine *)&v44 init];
  v14 = v13;
  if (v13)
  {
    v13->_lock._os_unfair_lock_opaque = 0;
    v13->_lock_safeToUnblank = 1;
    objc_storeStrong(&v13->_platformProvider, a3);
    objc_storeStrong((v14 + 16), a5);
    objc_storeStrong((v14 + 24), a4);
    v16 = [[BLSHBacklightDisplayStateMachine alloc] initWithDelegate:v14 platformProvider:v10 osInterfaceProvider:v11];
    v17 = *(v14 + 256);
    *(v14 + 256) = v16;

    v18 = [MEMORY[0x277CBEB18] array];
    v19 = *(v14 + 176);
    *(v14 + 176) = v18;

    v20 = [MEMORY[0x277CBEB18] array];
    v21 = *(v14 + 184);
    *(v14 + 184) = v20;

    v22 = [MEMORY[0x277CBEB18] array];
    v23 = *(v14 + 192);
    *(v14 + 192) = v22;

    *(v14 + 224) = [v11 deviceSupportsAlwaysOnFlipbook];
    if ([v11 deviceSupportsAlwaysOn])
    {
      v24 = [[BLSHAlwaysOnPresentationEngine alloc] initWithDelegate:v14 platformProvider:v10 osInterfaceProvider:v11 inactiveBudgetPolicy:v12];
      v25 = *(v14 + 40);
      *(v14 + 40) = v24;
    }

    v26 = [(BLSHBacklightTransitionStateMachine *)v14 flipbookStateForEngine];
    v27 = *(v14 + 40);
    *(v14 + 200) = v26;
    if ([v27 engineState])
    {
      [BLSHBacklightTransitionStateMachine initWithPlatformProvider:a2 osInterfaceProvider:? inactiveBudgetPolicy:?];
    }

    v28 = [*(v14 + 256) displayMode];
    if (v28 == 1)
    {
      v29 = [*(v14 + 40) suppressForReason:@"flipbookSuppressedOnInit"];
    }

    *(v14 + 72) = BLSBacklightStateForBLSBacklightDisplayMode(v28);
    *(v14 + 80) = mach_continuous_time();
    v30 = [[BLSHBacklightAggregateState alloc] initWithDisplayModeSource:*(v14 + 256)];
    v31 = *(v14 + 152);
    *(v14 + 152) = v30;

    v32 = [*(v14 + 152) displayMode];
    *(v14 + 208) = v32;
    *(v14 + 216) = v32;
    objc_initWeak(&location, v14);
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __105__BLSHBacklightTransitionStateMachine_initWithPlatformProvider_osInterfaceProvider_inactiveBudgetPolicy___block_invoke;
    v41 = &unk_27841EC40;
    objc_copyWeak(&v42, &location);
    *(v14 + 232) = os_state_add_handler();
    [BLSHBacklightFBSceneHostEnvironment setAmendSceneSettingsDelegate:v14];
    v33 = *(v14 + 72);
    if ((BLSBacklightStateIsActive() & 1) == 0)
    {
      [(BLSHBacklightTransitionStateMachine *)v14 acquireTouchLockAssertion];
      [(BLSHBacklightTransitionStateMachine *)v14 createSession];
      v34 = [(BLSHBacklightTransitionStateMachine *)v14 withLock_ensureTargetStateCreated];
      [v34 setDisplayMode:{-[BLSHBacklightTransitionStateMachine lock_displayModeForBacklightState:](v14, *(v14 + 72))}];
      [*(v14 + 32) updateAllEnvironmentsInPresentation];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __105__BLSHBacklightTransitionStateMachine_initWithPlatformProvider_osInterfaceProvider_inactiveBudgetPolicy___block_invoke_2;
      block[3] = &unk_27841E650;
      v37 = v14;
      v35 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v14;
}

uint64_t __105__BLSHBacklightTransitionStateMachine_initWithPlatformProvider_osInterfaceProvider_inactiveBudgetPolicy___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];
  v3 = BLSStateDataWithTitleDescriptionAndHints();

  return v3;
}

- (uint64_t)lock_displayModeForBacklightState:(uint64_t)result
{
  if (result)
  {
    if (a2 == 3)
    {
      return 6;
    }

    else if (a2 == 1)
    {
      if (*(result + 231))
      {
        [BLSHBacklightTransitionStateMachine lock_displayModeForBacklightState:?];
      }

      if (*(result + 224) != 1 || (*(result + 242) & 1) != 0 || (*(result + 240) & 1) != 0 || [(BLSHBacklightTransitionStateMachine *)result hasUnrestrictedFramerateWithSession:?])
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else if (a2)
    {
      return 4;
    }

    else
    {
      return *(result + 231);
    }
  }

  return result;
}

- (void)dealloc
{
  [BLSHBacklightFBSceneHostEnvironment setAmendSceneSettingsDelegate:0];
  [(BLSHBacklightTransitionStateMachine *)self invalidateTouchLockAssertion];
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BLSHBacklightTransitionStateMachine;
  [(BLSHBacklightTransitionStateMachine *)&v3 dealloc];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLSHBacklightTransitionStateMachine *)self withLock_backlightStateDescription];
  v5 = [v3 appendObject:v4 withName:@"backlightState"];

  lastSteadyStateFlipbookState = self->_lastSteadyStateFlipbookState;
  v7 = NSStringFromBLSFlipbookState();
  v8 = [v3 appendObject:v7 withName:@"flipbookState"];

  v9 = [v3 appendBool:self->_lock_safeToUnblank withName:@"safeToUnblank" ifEqualTo:0];
  v10 = [v3 appendObject:self->_currentState withName:@"currentState"];
  v11 = [v3 appendObject:self->_lock_targetState withName:@"targetState"];
  v12 = [v3 appendBool:self->_flipbookSupported withName:@"fb" ifEqualTo:0];
  v13 = [v3 appendPointer:self->_lock_pendingEnvironmentUpdate withName:@"pendingEventToPerform"];
  v14 = [v3 appendPointer:self->_lock_pendingUpdateDisplayMode withName:@"pendingUpdateDisplayMode"];
  v15 = [v3 appendPointer:self->_lock_pendingUpdatePresentation withName:@"pendingUpdatePresentation"];
  v16 = [v3 appendPointer:self->_lock_pendingUpdateToSpecifier withName:@"pendingUpdateToSpecifier"];
  v17 = [v3 appendPointer:self->_lock_ensureFlipbookCurrentOperation withName:@"ensureFlipbookCurrentOperation"];
  lock_queuedEventsToPerform = self->_lock_queuedEventsToPerform;
  v19 = NSStringFromBLSBacklightChangeEvents();
  [v3 appendString:v19 withName:@"queuedEvents"];

  v20 = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return v20;
}

- (void)registerHandlersForService:(id)a3
{
  v10 = a3;
  v5 = [BLSHDisableFlipbookAttributeHandler registerHandlerForService:"registerHandlerForService:provider:" provider:?];
  if (!v5)
  {
    [BLSHBacklightTransitionStateMachine registerHandlersForService:a2];
  }

  v6 = v5;
  v7 = [BLSHGlobalUnrestrictedFramerateAttributeHandler registerHandlerForService:v10 provider:self];

  if (!v7)
  {
    [BLSHBacklightTransitionStateMachine registerHandlersForService:a2];
  }

  v8 = [BLSHGlobalHighLuminanceAlwaysOnAttributeHandler registerHandlerForService:v10 provider:self];

  if (!v8)
  {
    [BLSHBacklightTransitionStateMachine registerHandlersForService:a2];
  }

  v9 = [BLSHGlobalCacheFlipbookOnDisplayWakeAttributeHandler registerHandlerForService:v10 provider:self];

  if (!v9)
  {
    [BLSHBacklightTransitionStateMachine registerHandlersForService:a2];
  }

  [(BLSHAlwaysOnPresentationEngine *)self->_alwaysOnPresentationEngine registerHandlersForService:v10];
}

- (int64_t)flipbookState
{
  os_unfair_lock_lock(&self->_lock);
  lastSteadyStateFlipbookState = self->_lastSteadyStateFlipbookState;
  os_unfair_lock_unlock(&self->_lock);
  return lastSteadyStateFlipbookState;
}

- (BLSHBacklightInactiveEnvironmentSession)session
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_session;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)backlightStateChangeTimestamp
{
  os_unfair_lock_lock(&self->_lock);
  backlightStateChangeTimestamp = self->_backlightStateChangeTimestamp;
  os_unfair_lock_unlock(&self->_lock);
  return backlightStateChangeTimestamp;
}

- (void)setAlwaysOnSuppressed:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_alwaysOnSuppressed = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAlwaysOnEnabled
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shouldn't be called"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BLSHBacklightTransitionStateMachine.m";
    v17 = 1024;
    v18 = 328;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (BOOL)deviceSupportsAlwaysOn
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shouldn't be called"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BLSHBacklightTransitionStateMachine.m";
    v17 = 1024;
    v18 = 334;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)setSafeToUnblank:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_safeToUnblank = self->_lock_safeToUnblank;
  self->_lock_safeToUnblank = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_safeToUnblank != v3 && v3 != 0)
  {
    BSDispatchMain();
  }
}

- (void)setPerformerDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_performerDelegate = self->_lock_performerDelegate;
  self->_lock_performerDelegate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isFlipbookDisabled
{
  os_unfair_lock_lock(&self->_lock);
  lock_flipbookDisabled = self->_lock_flipbookDisabled;
  os_unfair_lock_unlock(&self->_lock);
  return lock_flipbookDisabled;
}

- (void)setFlipbookDisabled:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_flipbookDisabled != v3 && self->_lock_backlightState == 1;
  self->_lock_flipbookDisabled = v3;
  if (self->_lock_targetState)
  {
    v6 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
    v7 = bls_backlight_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromBLSBacklightDisplayMode(v6);
      lock_targetState = self->_lock_targetState;
      *buf = 134218754;
      v12 = self;
      v13 = 1024;
      v14 = v3;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = lock_targetState;
      _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, "TSM:%p setFlipbookDisabled:%{BOOL}u targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x26u);
    }

    [(BLSHBacklightMutableTargetState *)self->_lock_targetState setDisplayMode:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    BSDispatchMain();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performEvent:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

id __120__BLSHBacklightTransitionStateMachine_logForPerformEvent_currentState_targetState_matchesPrewarm_pendingPrewarmedEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

id __120__BLSHBacklightTransitionStateMachine_logForPerformEvent_currentState_targetState_matchesPrewarm_pendingPrewarmedEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

- (void)prewarmEvent:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_pendingPrewarmedEvent, a3);
  v5 = -[BLSHBacklightTransitionStateMachine lock_displayModeForBacklightState:](self, [v9 state]);
  v6 = [(BLSHBacklightTransitionStateMachine *)self lock_displayOperationForTarget:v5 isNullOperationAllowed:0];
  if ([v6 isCompleted])
  {
    [v6 last];
  }

  else
  {
    [v6 first];
  }
  v7 = ;
  v8 = [v7 targetDisplayMode];
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightDisplayStateMachine *)self->_displayStateMachine prewarmForDisplayMode:v8];
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"should not add observers to %@", self];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = @"BLSHBacklightTransitionStateMachine.m";
    v18 = 1024;
    v19 = 730;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t __86__BLSHBacklightTransitionStateMachine_onMainWithLock_updateSpecifierOperationIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 environment];
  if ([*(a1 + 32) containsEnvironment:v3] & 1) != 0 || *(a1 + 56) == 1 && (objc_msgSend(*(a1 + 40), "containsEnvironment:", v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = [v3 identifier];
      v10 = [*(a1 + 32) bls_shortLoggingString];
      v11 = *(a1 + 56);
      if (v11 == 1)
      {
        v12 = [*(a1 + 40) bls_shortLoggingString];
      }

      else
      {
        v12 = @"(same)";
      }

      v13 = 134218754;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2114;
      v20 = v12;
      _os_log_error_impl(&dword_21FD11000, v5, OS_LOG_TYPE_ERROR, "TSM:%p specifier environment:%{public}@ not in presentation:%{public}@ or target:%{public}@", &v13, 0x2Au);
      if (v11)
      {
      }
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __90__BLSHBacklightTransitionStateMachine_onMainWithLock_environmentUpdateOperationForEvents___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setCompleted:1];
  v2 = bls_backlight_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v7 = 134218242;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_21FD11000, v2, OS_LOG_TYPE_INFO, "TSM:%p completed pendingEnvironmentUpdate %{public}@", &v7, 0x16u);
  }

  result = [(BLSHBacklightTransitionStateMachine *)*(a1 + 40) onMain_performNextStepInTransition];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)ifStillValidPerformAlwaysOnBrightnessRamp:(double)a3 withDuration:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (!v5)
    {
      [BLSHBacklightTransitionStateMachine ifStillValidPerformAlwaysOnBrightnessRamp:? withDuration:?];
    }

    [v5 setReadyToStart:1];
    [v6 setDuration:a3];
    os_unfair_lock_lock((a1 + 8));
    v7 = *(a1 + 128);
    v8 = *(a1 + 160);
    if (!v8)
    {
      v8 = *(a1 + 152);
    }

    v9 = [v8 displayMode];
    v10 = [v7 rampOperation];
    if (v10 == v6)
    {
      v12 = [v6 last];
      v11 = [v12 targetDisplayMode] == v9;
    }

    else
    {
      v11 = 0;
    }

    v13 = [v7 first];
    os_unfair_lock_unlock((a1 + 8));
    if ([v6 isStarted])
    {
      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218242;
        v22 = a1;
        v23 = 2114;
        v24 = *&v6;
        v15 = "TSM:%p nothing do here since rampOperation has already started:%{public}@";
        v16 = v14;
        v17 = 22;
LABEL_18:
        _os_log_impl(&dword_21FD11000, v16, OS_LOG_TYPE_DEFAULT, v15, &v21, v17);
      }
    }

    else if (v11)
    {
      if (v13 == v6 || ([v13 isCompleted] & 1) != 0)
      {
        v19 = bls_backlight_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v21 = 134218498;
          v22 = a1;
          v23 = 2048;
          v24 = a3;
          v25 = 2114;
          v26 = v6;
          _os_log_debug_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEBUG, "TSM:%p performing brightness ramp with duration:%.2lfs using operation:%{public}@", &v21, 0x20u);
        }

        [v6 setStarted:1];
        v20 = bls_backlight_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = 134218242;
          v22 = a1;
          v23 = 2114;
          v24 = *&v6;
          _os_log_impl(&dword_21FD11000, v20, OS_LOG_TYPE_INFO, "TSM:%p started rampOperation %{public}@", &v21, 0x16u);
        }

        [v6 targetDisplayMode];
        [BLSHBacklightTransitionStateMachine setDisplayMode:a1 withRampDuration:?];
        goto LABEL_20;
      }

      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v21 = 134218498;
        v22 = a1;
        v23 = 2048;
        v24 = a3;
        v25 = 2114;
        v26 = v7;
        _os_log_debug_impl(&dword_21FD11000, v14, OS_LOG_TYPE_DEBUG, "TSM:%p waiting to perform brightness ramp with duration:%.2lfs using operation:%{public}@", &v21, 0x20u);
      }
    }

    else
    {
      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218754;
        v22 = a1;
        v23 = 2048;
        v24 = a3;
        v25 = 2114;
        v26 = v6;
        v27 = 2114;
        v28 = v7;
        v15 = "TSM:%p not performing brightness ramp with duration:%.2lfs using operation:%{public}@ because display operation has changed to operation:%{public}@";
        v16 = v14;
        v17 = 42;
        goto LABEL_18;
      }
    }

LABEL_20:
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __84__BLSHBacklightTransitionStateMachine_environmentStateMachineDidBeginUpdateToState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) performerDelegate];
  [v2 backlight:*(a1 + 32) didUpdateVisualContentsToBeginTransitionToState:*(a1 + 56) forEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  os_unfair_lock_unlock((v3 + 8));
  [v4 updaterDidBeginUpdateToBacklightState:*(a1 + 56)];
  [(BLSHBacklightTransitionStateMachine *)*(a1 + 32) onMain_performNextStepInTransition];
}

void __87__BLSHBacklightTransitionStateMachine_environmentStateMachine_didUpdateToPresentation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updaterDidUpdateToPresentation:*(a1 + 40)];
  v2 = *(a1 + 48);

  [(BLSHBacklightTransitionStateMachine *)v2 onMain_performNextStepInTransition];
}

- (void)environmentStateMachine:(id)a3 didUpdateToSpecifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(BLSHPendingUpdateToSpecifier *)self->_lock_pendingUpdateToSpecifier specifier];
  v7 = v6;
  if (self->_lock_pendingUpdateToSpecifier)
  {
    v8 = ([v6 isEqual:v5] & 1) != 0 || (v5 | v7) == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = bls_backlight_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    lock_pendingUpdateToSpecifier = self->_lock_pendingUpdateToSpecifier;
    *buf = 134218754;
    v15 = self;
    v16 = 2114;
    v17 = v5;
    v18 = 1024;
    v19 = v8;
    v20 = 2114;
    v21 = lock_pendingUpdateToSpecifier;
    _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "TSM:%p didUpdateToSpecifier:%{public}@ matchesPendingUpdate:%{BOOL}u pending:%{public}@", buf, 0x26u);
  }

  if (v8)
  {
    [(BLSHPendingUpdateToSpecifier *)self->_lock_pendingUpdateToSpecifier setCompleted:1];
    v10 = bls_backlight_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = self->_lock_pendingUpdateToSpecifier;
      *buf = 134218242;
      v15 = self;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_21FD11000, v10, OS_LOG_TYPE_INFO, "TSM:%p completed pendingUpdateToSpecifier %{public}@", buf, 0x16u);
    }

    os_unfair_lock_unlock(&self->_lock);
    BSDispatchMain();
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)inactiveEnvironmentSession:(id)a3 updateToPresentation:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_session == v7)
  {
    if (!self->_environmentStateMachine)
    {
      [BLSHBacklightTransitionStateMachine inactiveEnvironmentSession:v7 updateToPresentation:a2];
    }

    [(BLSHBacklightTransitionStateMachine *)self withLock_acquireTransitionAPAwakeAssertion];
    v11 = [(BLSHBacklightTransitionStateMachine *)self withLock_ensureTargetStateCreated];
    v12 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
    [(BLSHBacklightTransitionStateMachine *)self _lock_updateCacheFlipbookWithSession:?];
    v13 = bls_backlight_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

    if (!v14)
    {
      goto LABEL_22;
    }

    v15 = [v11 presentation];
    v16 = [v8 differenceFromPresentation:v15];

    if ([v16 hasChanges])
    {
      v17 = [v16 insertions];
      v18 = [v16 removals];
      v19 = [v17 count];
      if ([(BLSHBacklightInactiveEnvironmentSession *)v18 count])
      {
        v20 = bls_backlight_log();
        v24 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
        if (v19)
        {
          if (v24)
          {
            v31 = [v17 bs_map:&__block_literal_global_274];
            v28 = [(BLSHBacklightInactiveEnvironmentSession *)v18 bs_map:&__block_literal_global_276];
            NSStringFromBLSBacklightDisplayMode(v12);
            *buf = 134219010;
            v34 = self;
            v35 = 2114;
            v36 = v31;
            v37 = 2114;
            v38 = v28;
            v40 = v39 = 2114;
            v26 = v40;
            v41 = 2114;
            v42 = v11;
            _os_log_impl(&dword_21FD11000, v20, OS_LOG_TYPE_INFO, "TSM:%p updateToPresentation by adding:%{public}@ and removing:%{public}@ displayMode:%{public}@ previousTarget:%{public}@", buf, 0x34u);
          }
        }

        else if (v24)
        {
          v30 = [(BLSHBacklightInactiveEnvironmentSession *)v18 bs_map:&__block_literal_global_271];
          NSStringFromBLSBacklightDisplayMode(v12);
          *buf = 134218754;
          v34 = self;
          v35 = 2114;
          v36 = v30;
          v38 = v37 = 2114;
          v25 = v38;
          v39 = 2114;
          v40 = v11;
          _os_log_impl(&dword_21FD11000, v20, OS_LOG_TYPE_INFO, "TSM:%p updateToPresentation by removing:%{public}@ displayMode:%{public}@ previousTarget:%{public}@", buf, 0x2Au);
        }
      }

      else
      {
        v20 = bls_backlight_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          [v17 bs_map:&__block_literal_global_268];
          v21 = v29 = v18;
          v22 = NSStringFromBLSBacklightDisplayMode(v12);
          *buf = 134218754;
          v34 = self;
          v35 = 2114;
          v36 = v21;
          v37 = 2114;
          v38 = v22;
          v39 = 2114;
          v40 = v11;
          _os_log_impl(&dword_21FD11000, v20, OS_LOG_TYPE_INFO, "TSM:%p updateToPresentation by adding:%{public}@ displayMode:%{public}@ previousTarget:%{public}@", buf, 0x2Au);

          v18 = v29;
        }
      }
    }

    else
    {
      v17 = bls_backlight_log();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
LABEL_21:

LABEL_22:
        [v11 setDisplayMode:v12];
        [v11 setPresentation:v8];
        [(BLSHBacklightTransitionStateMachine *)self lock_isHighLuminanceAlwaysOnWithSession:v7];

        os_unfair_lock_unlock(&self->_lock);
        v32 = self->_displayStateMachine;
        v27 = v32;
        BSDispatchMain();

        goto LABEL_5;
      }

      v18 = NSStringFromBLSBacklightDisplayMode(v12);
      *buf = 134218498;
      v34 = self;
      v35 = 2114;
      v36 = v18;
      v37 = 2114;
      v38 = v11;
      _os_log_impl(&dword_21FD11000, v17, OS_LOG_TYPE_INFO, "TSM:%p updateToPresentation (redundant) displayMode:%{public}@ previousTarget:%{public}@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  v9 = bls_backlight_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    lock_session = self->_lock_session;
    *buf = 134218754;
    v34 = self;
    v35 = 2114;
    v36 = v7;
    v37 = 2114;
    v38 = lock_session;
    v39 = 2114;
    v40 = v8;
    _os_log_error_impl(&dword_21FD11000, v9, OS_LOG_TYPE_ERROR, "TSM:%p updated presentation on invalid session:%{public}@ currentSession:%{public}@ new presentation:%{public}@", buf, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_5:

  v10 = *MEMORY[0x277D85DE8];
}

id __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

id __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke_269(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

id __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke_272(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

id __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"%p:%@", v3, v4];

  return v5;
}

void __87__BLSHBacklightTransitionStateMachine_inactiveEnvironmentSession_updateToPresentation___block_invoke_277(uint64_t a1)
{
  [*(a1 + 32) setHighLuminanceAlwaysOn:*(a1 + 48)];
  v2 = *(a1 + 40);

  [(BLSHBacklightTransitionStateMachine *)v2 onMain_performNextStepInTransition];
}

- (BOOL)isGlobalUnrestrictedFramerate
{
  os_unfair_lock_lock(&self->_lock);
  lock_globalUnrestrictedFramerate = self->_lock_globalUnrestrictedFramerate;
  os_unfair_lock_unlock(&self->_lock);
  return lock_globalUnrestrictedFramerate;
}

- (void)setGlobalUnrestrictedFramerate:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_globalUnrestrictedFramerate = self->_lock_globalUnrestrictedFramerate;
  self->_lock_globalUnrestrictedFramerate = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_globalUnrestrictedFramerate != v3)
  {

    [(BLSHBacklightTransitionStateMachine *)self updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment:?];
  }
}

- (BOOL)isGlobalHighLuminanceAlwaysOn
{
  os_unfair_lock_lock(&self->_lock);
  lock_globalHighLuminanceAlwaysOn = self->_lock_globalHighLuminanceAlwaysOn;
  os_unfair_lock_unlock(&self->_lock);
  return lock_globalHighLuminanceAlwaysOn;
}

- (BOOL)globalCacheFlipbookOnDisplayWake
{
  os_unfair_lock_lock(&self->_lock);
  lock_globalCacheFlipbook = self->_lock_globalCacheFlipbook;
  os_unfair_lock_unlock(&self->_lock);
  return lock_globalCacheFlipbook;
}

- (void)setGlobalCacheFlipbookOnDisplayWake:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_globalCacheFlipbook = self->_lock_globalCacheFlipbook;
  self->_lock_globalCacheFlipbook = v3;
  if (lock_globalCacheFlipbook == v3)
  {
    goto LABEL_2;
  }

  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v10 = self;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "TSM:%p new globalCacheFlipbook:%{BOOL}u", buf, 0x12u);
  }

  if ([(BLSHBacklightTransitionStateMachine *)self _lock_updateCacheFlipbookWithSession:?]&& self->_lock_session)
  {
    [(BLSHBacklightTransitionStateMachine *)self setGlobalCacheFlipbookOnDisplayWake:v8];
  }

  else
  {
LABEL_2:
    os_unfair_lock_unlock(&self->_lock);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)hostEnvironment:(id)a3 hostDidSetLiveUpdating:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(BLSHBacklightAggregateState *)self->_currentState presentation];
  if ([v7 containsEnvironment:v6])
  {
  }

  else
  {
    v8 = [(BLSHBacklightMutableTargetState *)self->_lock_targetState presentation];
    v9 = [v8 containsEnvironment:v6];

    if (!v9)
    {
      v10 = bls_backlight_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v6 identifier];
        *buf = 134218498;
        v21 = self;
        v22 = 1024;
        v23 = v4;
        v24 = 2114;
        v25 = v17;
        _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "TSM:%p hostDidSetLiveUpdating:%{BOOL}u forEnvironment:%{public}@ but not in presentation", buf, 0x1Cu);
      }

      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_6;
    }
  }

  if (v4)
  {
    [(BLSHBacklightTransitionStateMachine *)self withLock_acquireTransitionAPAwakeAssertion];
  }

  v12 = [(BLSHBacklightTransitionStateMachine *)self withLock_ensureTargetStateCreated];
  v13 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
  v14 = bls_backlight_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v6 identifier];
    v16 = NSStringFromBLSBacklightDisplayMode(v13);
    *buf = 134219010;
    v21 = self;
    v22 = 1024;
    v23 = v4;
    v24 = 2114;
    v25 = v15;
    v26 = 2114;
    v27 = v16;
    v28 = 2114;
    v29 = v12;
    _os_log_impl(&dword_21FD11000, v14, OS_LOG_TYPE_INFO, "TSM:%p hostDidSetLiveUpdating:%{BOOL}u forEnvironment:%{public}@ targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x30u);
  }

  [v12 setDisplayMode:v13];
  os_unfair_lock_unlock(&self->_lock);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__BLSHBacklightTransitionStateMachine_hostEnvironment_hostDidSetLiveUpdating___block_invoke;
  v18[3] = &unk_27841E538;
  v18[4] = self;
  v19 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v18);

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)hostEnvironment:(id)a3 hostDidSetUnrestrictedFramerateUpdates:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(BLSHBacklightAggregateState *)self->_currentState presentation];
  if ([v7 containsEnvironment:v6])
  {

    goto LABEL_8;
  }

  v8 = [(BLSHBacklightMutableTargetState *)self->_lock_targetState presentation];
  v9 = [v8 containsEnvironment:v6];

  if (v9)
  {
LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
    [(BLSHBacklightTransitionStateMachine *)self updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment:v6];
    goto LABEL_6;
  }

  v10 = bls_backlight_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v6 identifier];
    v13 = 134218498;
    v14 = self;
    v15 = 1024;
    v16 = v4;
    v17 = 2114;
    v18 = v12;
    _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "TSM:%p changed unrestrictedFramerate:%{BOOL}u forEnvironment:%{public}@ but not in presentation", &v13, 0x1Cu);
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

void __115__BLSHBacklightTransitionStateMachine_updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) prewarmForDisplayMode:*(a1 + 64)];
  }

  if (*(a1 + 73) == 1)
  {
    if (*(a1 + 40))
    {
      [*(a1 + 48) updateEnvironment:?];
    }

    v2 = *(a1 + 56);

    [(BLSHBacklightTransitionStateMachine *)v2 onMain_performNextStepInTransition];
  }
}

- (void)presentationEngine:(id)a3 didUpdateToCurrentWithSpecifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_ensureFlipbookCurrentOperation;
  [(BLSHEnsureFlipbookCurrentOperation *)v6 setCompleted:1];
  v7 = bls_backlight_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  v9 = bls_backlight_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    *buf = 134218498;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v5;
    v11 = "TSM:%p completed ensureFlipbookCurrentOperation %{public}@, flipbook did update to current with:%{public}@";
    v12 = v9;
    v13 = 32;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    *buf = 134218242;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    v11 = "TSM:%p completed ensureFlipbookCurrentOperation %{public}@";
    v12 = v9;
    v13 = 22;
  }

  _os_log_impl(&dword_21FD11000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
LABEL_7:

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    BSDispatchMain();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)presentationEngine:(id)a3 didInvalidateContentForEnvironment:(id)a4 reason:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  os_unfair_lock_lock(&self->_lock);
  v9 = !self->_lock_flipbookIsStale && self->_lock_session != 0;
  self->_lock_flipbookIsStale = 1;
  v10 = bls_backlight_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v7 identifier];
    *buf = 134218498;
    v15 = self;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = v8;
    _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "TSM:%p flipbookIsStale=YES env:%{public}@ invalidateContentForReason:%{public}@", buf, 0x20u);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__BLSHBacklightTransitionStateMachine_presentationEngine_didInvalidateContentForEnvironment_reason___block_invoke;
    block[3] = &unk_27841E650;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)displayState:(id)a3 didUpdateToMode:(int64_t)a4
{
  v60 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_didNotifyDisplayModeTransitionStartedButNotCompleted && self->_lock_lastNotifiedTargetDisplayMode == a4)
  {
    p_lock_lastNotifiedCompletedDisplayMode = &self->_lock_lastNotifiedCompletedDisplayMode;
    lock_lastNotifiedCompletedDisplayMode = self->_lock_lastNotifiedCompletedDisplayMode;
    self->_lock_didNotifyDisplayModeTransitionStartedButNotCompleted = 0;
    v10 = lock_lastNotifiedCompletedDisplayMode != a4;
LABEL_9:
    *p_lock_lastNotifiedCompletedDisplayMode = a4;
    v9 = 1;
    goto LABEL_10;
  }

  p_lock_lastNotifiedCompletedDisplayMode = &self->_lock_lastNotifiedCompletedDisplayMode;
  lock_lastNotifiedCompletedDisplayMode = self->_lock_lastNotifiedCompletedDisplayMode;
  if (lock_lastNotifiedCompletedDisplayMode != a4)
  {
    v10 = 1;
    goto LABEL_9;
  }

  v9 = 0;
  v10 = 0;
  lock_lastNotifiedCompletedDisplayMode = a4;
LABEL_10:
  v11 = [(BLSHPendingUpdateDisplayMode *)self->_lock_pendingUpdateDisplayMode updateOperation];
  v12 = v11;
  if (self->_lock_pendingUpdateDisplayMode && [v11 targetDisplayMode] == a4)
  {
    [v12 setCompleted:1];
    v13 = [v12 currentDisplayMode];
    v14 = bls_backlight_log();
    if (os_log_type_enabled(v14, (v13 == lock_lastNotifiedCompletedDisplayMode)))
    {
      v15 = NSStringFromBLSBacklightDisplayMode(v13);
      *buf = 134218754;
      v45 = self;
      v46 = 2114;
      v47 = v12;
      v48 = 1024;
      *v49 = v13 == lock_lastNotifiedCompletedDisplayMode;
      *&v49[4] = 2114;
      *&v49[6] = v15;
      _os_log_impl(&dword_21FD11000, v14, (v13 == lock_lastNotifiedCompletedDisplayMode), "TSM:%p completed updateOperation:%{public}@ modeMatches:%{BOOL}u lastNotifiedMode:%{public}@", buf, 0x26u);
    }

    LODWORD(v16) = 1;
  }

  else
  {
    LODWORD(v16) = 0;
    v13 = lock_lastNotifiedCompletedDisplayMode;
  }

  v17 = [(BLSHPendingUpdateDisplayMode *)self->_lock_pendingUpdateDisplayMode rampOperation];
  v18 = v17;
  v42 = v12;
  v41 = v16;
  if (v17 && [v17 targetDisplayMode] == a4)
  {
    [v18 setCompleted:1];
    v13 = [v12 currentDisplayMode];
    v16 = bls_backlight_log();
    if (os_log_type_enabled(v16, (v13 == lock_lastNotifiedCompletedDisplayMode)))
    {
      NSStringFromBLSBacklightDisplayMode(v13);
      v19 = v39 = v9;
      *buf = 134218754;
      v45 = self;
      v46 = 2114;
      v47 = v12;
      v48 = 1024;
      *v49 = v13 == lock_lastNotifiedCompletedDisplayMode;
      *&v49[4] = 2114;
      *&v49[6] = v19;
      _os_log_impl(&dword_21FD11000, v16, (v13 == lock_lastNotifiedCompletedDisplayMode), "TSM:%p completed rampOperation:%{public}@ modeMatches:%{BOOL}u lastNotifiedMode:%{public}@", buf, 0x26u);

      v9 = v39;
    }

    v20 = 1;
    LOBYTE(v16) = v41;
  }

  else
  {
    v20 = 0;
  }

  if (v10)
  {
    v21 = lock_lastNotifiedCompletedDisplayMode;
  }

  else
  {
    v21 = v13;
  }

  if (!v9)
  {
    v21 = lock_lastNotifiedCompletedDisplayMode;
  }

  v43 = v21;
  lock_targetState = self->_lock_targetState;
  if (!lock_targetState)
  {
    goto LABEL_32;
  }

  v23 = (v16 | v20) ^ 1;
  if (!self->_lock_pendingUpdateDisplayMode)
  {
    v23 = 1;
  }

  if (v23)
  {
LABEL_32:
    v24 = v9;
    v27 = 0;
  }

  else
  {
    v24 = v9;
    v25 = [(BLSHBacklightMutableTargetState *)lock_targetState displayMode];
    v26 = [(BLSHPendingUpdateDisplayMode *)self->_lock_pendingUpdateDisplayMode last];
    v27 = v25 == [v26 targetDisplayMode];
  }

  v28 = [(NSMutableArray *)self->_lock_activeEvents copy];
  v29 = [(NSMutableArray *)self->_lock_abortedEvents copy];
  v30 = bls_backlight_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v40 = NSStringFromBLSBacklightDisplayMode(a4);
    v34 = NSStringFromBLSBacklightDisplayMode(v43);
    lock_pendingUpdateDisplayMode = self->_lock_pendingUpdateDisplayMode;
    v38 = v34;
    v35 = NSStringFromBLSBacklightChangeEvents();
    *buf = 134220034;
    v45 = self;
    v46 = 2114;
    v47 = v40;
    v48 = 2114;
    *v49 = v38;
    *&v49[8] = 1024;
    *&v49[10] = v41;
    v50 = 1024;
    v51 = v20;
    v52 = 1024;
    v53 = v27;
    v54 = 1024;
    v55 = v24;
    v56 = 2114;
    v57 = lock_pendingUpdateDisplayMode;
    v58 = 2114;
    v36 = v35;
    v59 = v35;
    _os_log_debug_impl(&dword_21FD11000, v30, OS_LOG_TYPE_DEBUG, "TSM:%p didUpdateToMode:%{public}@ fromMode:%{public}@ matchesUpdate:%{BOOL}u matchesRamp:%{BOOL}u matchesTargetDisplayMode:%{BOOL}u shouldNotify:%{BOOL}u update:%{public}@ events:%{public}@", buf, 0x4Cu);
  }

  os_unfair_lock_unlock(&self->_lock);
  v31 = v29;
  v32 = v28;
  BSDispatchMain();

  v33 = *MEMORY[0x277D85DE8];
}

void __68__BLSHBacklightTransitionStateMachine_displayState_didUpdateToMode___block_invoke(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = [*(a1 + 32) performerDelegate];
    [v2 backlight:*(a1 + 32) didUpdateToDisplayMode:*(a1 + 56) fromDisplayMode:*(a1 + 64) activeEvents:*(a1 + 40) abortedEvents:*(a1 + 48)];
  }

  if (*(a1 + 73) == 1)
  {
    v3 = *(a1 + 32);

    [(BLSHBacklightTransitionStateMachine *)v3 onMain_performNextStepInTransition];
  }
}

- (BOOL)hasEnsureFlipbookCurrent
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_ensureFlipbookCurrentOperation != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)abortContextForTimer:(id)a3
{
  v4 = [(BLSHOSInterfaceProviding *)self->_osInterfaceProvider systemSleepMonitor];
  v19 = [BLSHBacklightTransitionStateMachineAbortContext alloc];
  lock_targetState = self->_lock_targetState;
  currentState = self->_currentState;
  lock_activeEvents = self->_lock_activeEvents;
  lock_abortedEvents = self->_lock_abortedEvents;
  lock_pendingEnvironmentUpdate = self->_lock_pendingEnvironmentUpdate;
  lock_pendingUpdatePresentation = self->_lock_pendingUpdatePresentation;
  v16 = *&self->_lock_pendingUpdateToSpecifier;
  lock_ensureFlipbookCurrentOperation = self->_lock_ensureFlipbookCurrentOperation;
  pendingPrewarmedEvent = self->_pendingPrewarmedEvent;
  lock_queuedEventsToPerform = self->_lock_queuedEventsToPerform;
  environmentStateMachine = self->_environmentStateMachine;
  v13 = [v4 aggregateState];
  v14 = [(BLSHBacklightTransitionStateMachineAbortContext *)v19 initWithCurrentState:currentState targetState:lock_targetState activeEvents:lock_activeEvents abortedEvents:lock_abortedEvents pendingEnvironmentUpdate:lock_pendingEnvironmentUpdate pendingUpdatePresentation:lock_pendingUpdatePresentation pendingUpdateToSpecifier:v16 pendingUpdateDisplayMode:lock_ensureFlipbookCurrentOperation ensureFlipbookCurrentOperation:lock_queuedEventsToPerform queuedEventsToPerform:pendingPrewarmedEvent pendingPrewarmedEvent:environmentStateMachine environmentStateMachine:v13 sleepMonitorAggregateState:?];

  return v14;
}

- (id)identifier
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v3 = [v2 build];

  return v3;
}

- (void)acquireTouchLockAssertion
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_15_2(a1);
    os_unfair_lock_lock(v2);
    v3 = *(v1 + 56);
    if (v3)
    {
      v4 = [v3 isActive];
      os_unfair_lock_unlock((v1 + 8));
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      os_unfair_lock_unlock((v1 + 8));
    }

    v5 = MEMORY[0x277CF0868];
    v6 = [MEMORY[0x277CF09D8] touchLock];
    v13[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = [v5 acquireWithExplanation:@"inactiveBacklight" observer:0 attributes:v7];

    os_unfair_lock_lock((v1 + 8));
    v9 = *(v1 + 56);
    *(v1 + 56) = v8;
    v10 = v8;
    v11 = v9;

    os_unfair_lock_unlock((v1 + 8));
    [v11 invalidate];
  }

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
}

- (uint64_t)createSession
{
  if (result)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    return BSDispatchMain();
  }

  return result;
}

- (NSString)backlightStateDescription
{
  v3 = OUTLINED_FUNCTION_15_2(self);
  os_unfair_lock_lock(v3);
  v4 = [(BLSHBacklightTransitionStateMachine *)v2 withLock_backlightStateDescription];
  os_unfair_lock_unlock(v2 + 2);

  return v4;
}

- (uint64_t)_lock_updateCacheFlipbookWithSession:(uint64_t)a1
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = *(a1 + 229);
    if (*(a1 + 228))
    {
      v7 = 1;
    }

    else
    {
      v8 = [v4 presentation];
      v2 = [v8 presentationEntries];

      v7 = OUTLINED_FUNCTION_43(v9, v10, v11, v12, v13, v14, v15, v16, 0, 0, 0, 0, 0, 0, 0, 0, buf, v53, *(&v53 + 1), v54, v55);
      if (v7)
      {
        v17 = *v46;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v46 != v17)
            {
              objc_enumerationMutation(v2);
            }

            v19 = *(v45 + 8 * i);
            v20 = [v19 environment];
            v21 = BLSCacheFlipbookOnDisplayWakeForEnvironment(v20);

            if (v21)
            {
              v30 = bls_backlight_log();
              v31 = v30;
              if (v6)
              {
                v32 = OS_LOG_TYPE_DEBUG;
              }

              else
              {
                v32 = OS_LOG_TYPE_INFO;
              }

              if (os_log_type_enabled(v30, v32))
              {
                v33 = [v19 environment];
                v34 = [v33 identifier];
                OUTLINED_FUNCTION_37_0();
                WORD2(v53) = 2114;
                *(&v53 + 6) = v35;
                _os_log_impl(&dword_21FD11000, v31, v32, "TSM:%p cacheFlipbook:YES for %{public}@", &buf, 0x16u);
              }

              v7 = 1;
              goto LABEL_19;
            }
          }

          v7 = OUTLINED_FUNCTION_43(v22, v23, v24, v25, v26, v27, v28, v29, v44, v45, v46, v47, v48, v49, v50, v51, buf, v53, *(&v53 + 1), v54, v55);
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }

    if (v6 == v7)
    {
      a1 = 0;
    }

    else
    {
      v36 = bls_backlight_log();
      if (OUTLINED_FUNCTION_32_0(v36))
      {
        OUTLINED_FUNCTION_37_0();
        WORD2(v53) = 1024;
        *(&v53 + 6) = v7;
        OUTLINED_FUNCTION_27_0();
        _os_log_impl(v37, v38, v39, v40, v41, 0x12u);
      }

      *(a1 + 229) = v7;
      [*(a1 + 40) setCacheFlipbook:v7];
      a1 = 1;
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return a1;
}

- (uint64_t)lock_isHighLuminanceAlwaysOnWithSession:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 241))
    {
      a1 = 1;
    }

    else
    {
      v5 = [v3 presentation];
      a1 = [v5 isHighLuminanceAlwaysOn];
    }
  }

  return a1;
}

- (void)destroySession
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_15_2(a1);
    os_unfair_lock_lock(v3);
    v4 = *(v1 + 144);
    v5 = bls_backlight_log();
    if (OUTLINED_FUNCTION_32_0(v5))
    {
      v6 = [*(v1 + 32) presentation];
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_27();
      _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
    }

    [v4 setUpdater:0];
    v12 = *(v1 + 144);
    *(v1 + 144) = 0;

    [*(v1 + 152) setPresentationSource:0];
    v13 = *(v1 + 32);
    *(v1 + 32) = 0;
    v14 = v13;

    v15 = *(v1 + 160);
    *(v1 + 160) = 0;

    os_unfair_lock_unlock((v1 + 8));
    [v4 sessionDidEnd];
    [v14 invalidate];
    v16 = [*(v1 + 40) stopForReason:@"destroySession"];
    [*(v1 + 40) purgeFlipbook];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (uint64_t)hasUnrestrictedFramerateWithSession:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [v3 presentation];
      a1 = [v5 hasUnrestrictedFramerateUpdates];
    }

    else
    {
      a1 = 1;
    }
  }

  return a1;
}

- (void)releaseTransitionAPAwakeAssertion
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_15_2(a1);
    os_unfair_lock_lock(v3);
    if (*(v1 + 88))
    {
      v4 = bls_backlight_log();
      if (OUTLINED_FUNCTION_33_0(v4))
      {
        v7 = *(v1 + 88);
        OUTLINED_FUNCTION_18_1();
        OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v8, v9, v10, v11, v12, v13);
      }

      [*(v1 + 88) invalidate];
      v5 = *(v1 + 88);
      *(v1 + 88) = 0;
    }

    os_unfair_lock_unlock((v1 + 8));
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)onMain_performEvent:(uint64_t)a1
{
  v13 = a2;
  if (!a1)
  {
    goto LABEL_12;
  }

  os_unfair_lock_lock((a1 + 8));
  v3 = [v13 state];
  v4 = *(a1 + 168);
  *(a1 + 168) = 0;

  [v13 setAninmationPropertiesWithPlatformProvider:*(a1 + 248)];
  if (*(a1 + 227))
  {
    v5 = 0;
  }

  else
  {
    v5 = [v13 isTransitionForcedUnanimated];
  }

  *(a1 + 226) = v5;
  [(BLSHBacklightTransitionStateMachine *)a1 _lock_enqueueNewEvent:v13];
  v6 = *(a1 + 72);
  *(a1 + 72) = v3;
  if (v6 == v3)
  {
    os_unfair_lock_unlock((a1 + 8));
    if (BLSBacklightStateIsActive())
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(a1 + 80) = mach_continuous_time();
    os_unfair_lock_unlock((a1 + 8));
  }

  [(BLSHBacklightTransitionStateMachine *)a1 onMain_ensureSessionCreated];
LABEL_10:
  v7 = v4 == v13;
  os_unfair_lock_lock((a1 + 8));
  v8 = [(BLSHBacklightTransitionStateMachine *)a1 withLock_ensureTargetStateCreated];
  [v8 setDisplayMode:{-[BLSHBacklightTransitionStateMachine lock_displayModeForBacklightState:](a1, *(a1 + 72))}];
  os_unfair_lock_unlock((a1 + 8));
  [(BLSHBacklightTransitionStateMachine *)a1 logForPerformEvent:v13 currentState:*(a1 + 152) targetState:v8 matchesPrewarm:v7 pendingPrewarmedEvent:*(a1 + 168)];
  if (v6 != v3)
  {
    if (BLSBacklightStateIsActive())
    {
      [(BLSHBacklightTransitionStateMachine *)a1 invalidateTouchLockAssertion];
    }

    else
    {
      [(BLSHBacklightTransitionStateMachine *)a1 acquireTouchLockAssertion];
    }
  }

  [*(a1 + 48) invalidate:1];
  v9 = *(a1 + 24);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"TSM:%p transition to backlight state for event:%@", a1, v13];
  v11 = [v9 scheduleWatchdogWithDelegate:a1 explanation:v10 timeout:20.0];
  v12 = *(a1 + 48);
  *(a1 + 48) = v11;

  [(BLSHBacklightTransitionStateMachine *)a1 onMain_performNextStepInTransition];
LABEL_12:
}

- (void)_lock_enqueueNewEvent:(id *)a1
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 state];
    v6 = [a1[23] firstObject];
    v7 = v6;
    if (v6 && v5 != [v6 state])
    {
      [a1[24] addObjectsFromArray:a1[23]];
      v10[0] = v4;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [a1[23] setArray:v8];
      [a1[22] setArray:v8];
    }

    else
    {
      [a1[23] addObject:v4];
      [a1[22] addObject:v4];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logForPerformEvent:(void *)a3 currentState:(void *)a4 targetState:(int)a5 matchesPrewarm:(void *)a6 pendingPrewarmedEvent:
{
  v103[1] = *MEMORY[0x277D85DE8];
  v72 = a2;
  v11 = a3;
  v71 = a4;
  v70 = a6;
  if (a1)
  {
    if (!a5 || (bls_backlight_log(), v12 = objc_claimAutoreleasedReturnValue(), v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO), v12, v13))
    {
      v63 = a1;
      v14 = [v11 presentation];
      v15 = [v71 presentation];
      v16 = [v15 presentationEntries];
      v17 = [v16 count];

      if (v17 >= 2)
      {
        v18 = v11;
        v19 = [BLSHBacklightEnvironmentPresentation alloc];
        v20 = [v15 presentationEntries];
        v21 = [v20 firstObject];
        v103[0] = v21;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:1];
        v23 = [v15 flipbookContext];
        [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:20.0];
        v25 = v24 = v14;
        v26 = [(BLSHBacklightEnvironmentPresentation *)v19 initWithPresentationEntries:v22 flipbookContext:v23 expirationDate:v25];

        v14 = v26;
        v11 = v18;
      }

      v27 = [v15 differenceFromPresentation:v14];
      v28 = [v27 insertions];
      v29 = [v27 removals];
      v68 = v28;
      v66 = [v28 count];
      v67 = v29;
      v30 = [v29 count];
      v31 = [v72 changeRequest];
      v32 = bls_backlight_log();
      v33 = a5;
      if (a5)
      {
        v34 = OS_LOG_TYPE_INFO;
      }

      else
      {
        v34 = OS_LOG_TYPE_ERROR;
      }

      log = v32;
      if (os_log_type_enabled(v32, v34))
      {
        v35 = @"(unmatched prewarm event) ";
        v36 = &stru_283373E60;
        v64 = v33;
        if (v33)
        {
          v35 = &stru_283373E60;
        }

        v54 = v35;
        v53 = [v72 eventID];
        [v72 previousState];
        v62 = NSStringFromBLSBacklightState();
        [v72 state];
        v61 = NSStringFromBLSBacklightState();
        [v31 sourceEvent];
        v60 = NSStringFromBLSBacklightChangeSourceEvent();
        [v31 explanation];
        v57 = v56 = v11;
        v59 = NSStringFromBLSBacklightDisplayMode([v11 displayMode]);
        v58 = NSStringFromBLSBacklightDisplayMode([v71 displayMode]);
        if (v14 != v15)
        {
          v37 = MEMORY[0x277CCACA8];
          v50 = [v14 presentationEntries];
          v38 = [v50 count];
          v52 = [v15 presentationEntries];
          v36 = [v37 stringWithFormat:@"presentation:%p(%lu)->%p(%lu)", v14, v38, v15, objc_msgSend(v52, "count")];
        }

        if (v66)
        {
          v39 = MEMORY[0x277CCACA8];
          v51 = [v68 bs_map:&__block_literal_global_186];
          v40 = [v39 stringWithFormat:@"\nadded %@", v51];
        }

        else
        {
          v40 = &stru_283373E60;
        }

        v55 = v14;
        if (v30)
        {
          v41 = v40;
          v42 = 0x277CCA000;
          v43 = MEMORY[0x277CCACA8];
          v49 = [v67 bs_map:&__block_literal_global_194];
          v44 = v43;
          v40 = v41;
          v45 = [v44 stringWithFormat:@"\nremoved %@", v49];
        }

        else
        {
          v42 = 0x277CCA000;
          v45 = &stru_283373E60;
        }

        v65 = [v15 bls_shortLoggingString];
        if (v64)
        {
          v46 = &stru_283373E60;
        }

        else
        {
          v47 = MEMORY[0x277CCACA8];
          v42 = [v70 bls_shortLoggingString];
          v46 = [v47 stringWithFormat:@"\n%@", v42];
        }

        *buf = 134221570;
        v74 = v63;
        v75 = 2114;
        v76 = v54;
        v77 = 2048;
        v78 = v53;
        v79 = 2048;
        v80 = v72;
        v81 = 2114;
        v82 = v62;
        v83 = 2114;
        v84 = v61;
        v85 = 2114;
        v86 = v60;
        v87 = 2114;
        v88 = v57;
        v89 = 2114;
        v90 = v59;
        v91 = 2114;
        v92 = v58;
        v93 = 2114;
        v94 = v36;
        v95 = 2114;
        v96 = v40;
        v97 = 2114;
        v98 = v45;
        v99 = 2114;
        v100 = v65;
        v101 = 2114;
        v102 = v46;
        _os_log_impl(&dword_21FD11000, log, v34, "TSM:%p %{public}@will performEvent(%llu:%p) %{public}@->%{public}@ %{public}@:%{public}@ %{public}@->%{public}@ %{public}@%{public}@%{public}@\n%{public}@%{public}@", buf, 0x98u);
        if ((v64 & 1) == 0)
        {
        }

        if (v30)
        {
        }

        v11 = v56;
        if (v66)
        {
        }

        v14 = v55;
        if (v55 != v15)
        {
        }
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (id)lock_displayOperationForTarget:(uint64_t)a3 isNullOperationAllowed:
{
  if (a1)
  {
    v6 = [*(a1 + 152) displayMode];
    v7 = objc_opt_new();
    [v7 setIsNullOperationAllowed:a3];
    v8 = OUTLINED_FUNCTION_41();
    [v7 setIsAnimatedTransition:{-[BLSHBacklightTransitionStateMachine isDisplayModeTransitionAnimatedToMode:fromMode:](v8, v9, v6)}];
    [v7 setPendingOperation:*(a1 + 128)];
    v10 = [BLSHPendingUpdateDisplayMode operationForUpdateFromCurrentDisplayMode:v6 toTargetDisplayMode:a2 withConfiguration:v7];
    v11 = [v10 rampOperation];
    v12 = v11;
    if (v11)
    {
      [v11 duration];
      if (v13 == 0.0)
      {
        [*(a1 + 248) backlightFadeOutDuration];
        [v12 setDuration:?];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)onMainWithLock_stopPresentationEngineIfNeededForDisplayMode:(uint64_t)a1
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 40);
  if (a2 == 1)
  {
    v6 = [v5 suppressForReason:@"flipbookSuppressed"];
    goto LABEL_17;
  }

  v7 = [v5 engineState];
  if (v7)
  {
    if (a2 == 2)
    {
      if (v7 != 1)
      {
        goto LABEL_17;
      }

      v8 = *(a1 + 40);
      v9 = @"wantFlipbookEngine";
    }

    else
    {
      if (*(a1 + 72) != 1)
      {
        v11 = *(a1 + 40);
        if (*(a1 + 229) == 1)
        {
          [v11 suppressForReason:@"cacheFlipbook"];
        }

        else
        {
          [v11 stopForReason:@"wantStopped"];
        }
        v10 = ;
        goto LABEL_16;
      }

      if ((v7 - 2) > 2)
      {
        goto LABEL_17;
      }

      v8 = *(a1 + 40);
      v9 = @"wantLiveUpdatingEngine";
    }

    v10 = [v8 suspendForReason:v9];
LABEL_16:
    v12 = *(a1 + 96);
    *(a1 + 96) = v10;
  }

LABEL_17:
  v13 = *(a1 + 136);
  if (v13 && ([v13 isCompleted] & 1) == 0)
  {
    v14 = bls_backlight_log();
    if (OUTLINED_FUNCTION_32_0(v14))
    {
      v15 = *(a1 + 136);
      v16 = NSStringFromBLSBacklightDisplayMode(a2);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_27();
      _os_log_impl(v17, v18, v19, v20, v21, 0x20u);
    }
  }

  v22 = *(a1 + 136);
  *(a1 + 136) = 0;

LABEL_23:
  v23 = *MEMORY[0x277D85DE8];
}

- (id)onMainWithLock_onScreenSpecifierForDisplayMode:(uint64_t)a1
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2 == 2)
    {
      v4 = [*(a1 + 40) onGlassFlipbookFrame];
      v5 = [v4 bls_specifier];
    }

    else
    {
      v6 = [*(a1 + 144) presentation];
      v7 = [v6 currentSpecifier];

      v5 = v7;
      v4 = v5;
    }

    v8 = v5;
    v9 = bls_backlight_log();
    if (OUTLINED_FUNCTION_44(v9))
    {
      v12 = NSStringFromBLSBacklightDisplayMode(a2);
      v13 = [v4 bls_shortLoggingString];
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_16_2();
      _os_log_debug_impl(v14, v15, OS_LOG_TYPE_DEBUG, v16, v17, 0x20u);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (uint64_t)setDisplayMode:(uint64_t)result withRampDuration:
{
  if (result)
  {
    OUTLINED_FUNCTION_0_5();
    return BSDispatchMain();
  }

  return result;
}

- (void)onMain_setDisplayMode:(double)a3 withRampDuration:
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v6 = *(a1 + 208);
    *(a1 + 208) = a2;
    v9 = [*(a1 + 184) copy];
    v7 = [*(a1 + 192) copy];
    os_unfair_lock_unlock((a1 + 8));
    if (v6 != a2)
    {
      v8 = [a1 performerDelegate];
      [v8 backlight:a1 willUpdateToDisplayMode:a2 fromDisplayMode:v6 forEvents:v9 abortedEvents:v7];
    }

    [*(a1 + 256) setDisplayMode:a2 withRampDuration:a3];
    if (a2 != 2)
    {
      [*(a1 + 40) invalidateOnGlassFlipbookFrame];
    }

    [*(a1 + 40) setOnStandby:IsOffForBLSBacklightDisplayMode(a2) ^ 1];
  }
}

- (id)onMainWithLock_performEventOperationIfNeededWhenBeforeDisplayBlankingChange:(id *)a1
{
  v2 = a1;
  v33 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_9;
  }

  if ([a1[22] count])
  {
    v4 = [*(v2 + 22) firstObject];
    if ((([v4 state] == 0) ^ a2))
    {
      v11 = [*(v2 + 22) copy];
      [*(v2 + 22) removeAllObjects];
      v2 = [(BLSHBacklightTransitionStateMachine *)v2 onMainWithLock_environmentUpdateOperationForEvents:v11];

      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (!*(v2 + 13))
  {
LABEL_6:
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(v2 + 22);
      v9 = NSStringFromBLSBacklightChangeEvents();
      OUTLINED_FUNCTION_18_1();
      v29 = 1024;
      v30 = a2;
      v31 = 2114;
      v32 = v10;
      _os_log_debug_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEBUG, "TSM:%p (findNextOperation) no environmentPerformUpdate operation needed isBeforeDisplayBlankingChange:%{BOOL}u (queuedEvents:%{public}@})", v28, 0x1Cu);
    }

    v2 = 0;
    goto LABEL_9;
  }

  [*(v2 + 20) displayMode];
  v12 = OUTLINED_FUNCTION_30_0();
  v14 = [(BLSHBacklightTransitionStateMachine *)v12 willUnblankTransitioningToDisplayMode:v13];
  v15 = *(v2 + 16);
  if (v15 && [v15 isCompleted] && (objc_msgSend(*(v2 + 16), "isDirectRamp") & 1) == 0 && *(v2 + 20))
  {
    v16 = [*(v2 + 16) last];
    v17 = [v16 targetDisplayMode];
    v18 = v17 == [*(v2 + 20) displayMode];
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v2 + 13);
  if (a2 && (v14 || v18))
  {
    if ([v19 didUpdateInitialState])
    {
      goto LABEL_6;
    }
  }

  else if ([v19 isCompleted])
  {
    goto LABEL_6;
  }

  v20 = bls_backlight_log();
  if (OUTLINED_FUNCTION_33_0(v20))
  {
    v21 = *(v2 + 13);
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_13_3();
    _os_log_debug_impl(v22, v23, v24, v25, v26, v27);
  }

  v2 = *(v2 + 13);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)onMainWithLock_environmentPerformUpdateIfNeededAfterDisplayUpdate
{
  if (a1)
  {
    a1 = [(BLSHBacklightTransitionStateMachine *)a1 onMainWithLock_performEventOperationIfNeededWhenBeforeDisplayBlankingChange:?];
    v1 = vars8;
  }

  return a1;
}

- (BLSHPendingEnvironmentUpdateOperation)onMainWithLock_environmentUpdateOperationForEvents:(BLSHPendingEnvironmentUpdateOperation *)a1
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    isa = a1[5].super.isa;
    if (!isa)
    {
      isa = a1[4]._initialSpecifier;
    }

    v5 = [isa displayMode];
    if (v5 == 1)
    {
      v6 = [[BLSHPendingEnvironmentUpdateOperation alloc] initWithEvents:v3 withInitialSpecifier:0];
      v7 = *&a1[3]._started;
      *&a1[3]._started = v6;

      v8 = v6;
      [(BLSHPendingEnvironmentUpdateOperation *)v8 setStarted:1];
      [(BLSHPendingEnvironmentUpdateOperation *)v8 setUpdatedInitialState:1];
      v9 = bls_backlight_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = NSStringFromBLSBacklightChangeEvents();
        OUTLINED_FUNCTION_6_5(3.8522e-34);
        v98 = v8;
        v99 = v11;
        v100 = v12;
        OUTLINED_FUNCTION_22_1();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__BLSHBacklightTransitionStateMachine_onMainWithLock_environmentUpdateOperationForEvents___block_invoke;
      block[3] = &unk_27841E538;
      v19 = v8;
      v94 = v19;
      v95 = a1;
      dispatch_async(MEMORY[0x277D85CD0], block);
      a1 = v19;
      v20 = v94;
    }

    else
    {
      if (BYTE3(a1[7].super.isa))
      {
        v21 = 1;
      }

      else
      {
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v22 = v3;
        v23 = [v22 countByEnumeratingWithState:&v89 objects:v97 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v90;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v90 != v25)
              {
                objc_enumerationMutation(v22);
              }

              if ([*(*(&v89 + 1) + 8 * i) isEnvironmentTransitionAnimated])
              {
                v21 = 1;
                goto LABEL_20;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v89 objects:v97 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v21 = 0;
LABEL_20:
      }

      if (IsBlankedForBLSBacklightDisplayMode(v5))
      {
        v27 = bls_backlight_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = [*&a1[1]._started description];
          v29 = NSStringFromBLSBacklightDisplayMode(v5);
          OUTLINED_FUNCTION_6_5(3.8522e-34);
          v98 = v28;
          v99 = v30;
          v100 = v31;
          OUTLINED_FUNCTION_22_1();
          _os_log_impl(v32, v33, v34, v35, v36, v37);
        }
      }

      else
      {
        v76 = OUTLINED_FUNCTION_41();
        [(BLSHBacklightTransitionStateMachine *)v76 onMainWithLock_stopPresentationEngineIfNeededForDisplayMode:v77];
      }

      v38 = [v3 firstObject];
      v39 = v38;
      if (a1[3].super.isa)
      {
        v40 = [v38 previousState];
        v41 = a1[3].super.isa;
        v20 = v41;
        if (v40 != 1)
        {
          if (v41)
          {
            v42 = bls_backlight_log();
            if (OUTLINED_FUNCTION_35_0(v42))
            {
              v43 = NSStringFromBLSBacklightChangeEvents();
              OUTLINED_FUNCTION_6_5(3.8522e-34);
              v98 = v20;
              v99 = v44;
              v100 = v45;
              OUTLINED_FUNCTION_22_1();
              _os_log_impl(v46, v47, v48, v49, v50, v51);
            }
          }

          v20 = 0;
        }

        v52 = a1[3].super.isa;
        a1[3].super.isa = 0;
      }

      else
      {
        v20 = 0;
      }

      [v39 state];
      IsActive = BLSBacklightStateIsActive();
      v54 = *&a1[3]._started;
      v55 = v54;
      if (v54 && !v20 && IsActive)
      {
        v20 = [(BLSHPendingEnvironmentUpdateOperation *)v54 initialSpecifier];
      }

      if (!v20)
      {
        if ((IsActive & 1) != 0 || ([v39 previousState], (BLSBacklightStateIsActive() & 1) == 0))
        {
          v20 = [(BLSHBacklightTransitionStateMachine *)a1 onMainWithLock_onScreenSpecifierForDisplayMode:?];
        }

        else
        {
          v20 = 0;
        }
      }

      v56 = [[BLSHPendingEnvironmentUpdateOperation alloc] initWithEvents:v3 withInitialSpecifier:v20];
      v57 = *&a1[3]._started;
      *&a1[3]._started = v56;

      v58 = v56;
      BYTE3(a1[7].super.isa) = v21;
      if (v21)
      {
        v59 = 0;
      }

      else
      {
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v60 = v3;
        v61 = [v60 countByEnumeratingWithState:&v85 objects:v96 count:16];
        if (v61)
        {
          v62 = v61;
          v84 = v39;
          v59 = v21 ^ 1;
          v63 = *v86;
          while (2)
          {
            for (j = 0; j != v62; ++j)
            {
              if (*v86 != v63)
              {
                objc_enumerationMutation(v60);
              }

              if (![*(*(&v85 + 1) + 8 * j) isTransitionForcedUnanimated])
              {
                v59 = 0;
                goto LABEL_54;
              }
            }

            v62 = [v60 countByEnumeratingWithState:&v85 objects:v96 count:16];
            if (v62)
            {
              continue;
            }

            break;
          }

LABEL_54:
          v39 = v84;
        }

        else
        {
          v59 = 1;
        }
      }

      BYTE2(a1[7].super.isa) = v59;
      v65 = bls_backlight_log();
      v66 = v65;
      if (v55)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_5(3.8522e-34);
          v98 = v55;
          v99 = v67;
          v100 = v58;
          OUTLINED_FUNCTION_22_1();
          _os_log_impl(v68, v69, v70, v71, v72, v73);
        }
      }

      else if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_6_5(3.8521e-34);
        v98 = v58;
        OUTLINED_FUNCTION_13_3();
        _os_log_debug_impl(v78, v79, v80, v81, v82, v83);
      }

      a1 = v58;
    }
  }

  v74 = *MEMORY[0x277D85DE8];

  return a1;
}

- (BOOL)willUnblankTransitioningToDisplayMode:(uint64_t)a1
{
  if (!a1 || IsBlankedForBLSBacklightDisplayMode(a2))
  {
    return 0;
  }

  v4 = [*(a1 + 152) displayMode];

  return IsBlankedForBLSBacklightDisplayMode(v4);
}

- (uint64_t)isDisplayModeTransitionAnimatedToMode:(unint64_t)a3 fromMode:
{
  if (!a1)
  {
    return 0;
  }

  v5 = BLSBacklightStateForBLSBacklightDisplayMode(a2);
  v6 = BLSBacklightStateForBLSBacklightDisplayMode(a3);
  v7 = *(a1 + 248);
  if (objc_opt_respondsToSelector())
  {
    if (([*(a1 + 248) isTransitionForcedUnanimatedToState:v5 fromPreviousState:v6] & 1) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v11 = OUTLINED_FUNCTION_41();
  if (DefaultIsTransitionForcedUnanimated(v11, v12))
  {
    return 0;
  }

LABEL_4:
  v8 = *(a1 + 248);
  if (objc_opt_respondsToSelector())
  {
    v9 = *(a1 + 248);

    return [v9 isEnvironmentTransitionAnimatedToState:v5 fromPreviousState:v6];
  }

  else
  {
    v13 = OUTLINED_FUNCTION_41();

    return DefaultIsEnvironmentTransitionAnimated(v13, v14);
  }
}

- (void)_lock_setPendingUpdateDisplayMode:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 128);
    v7 = v6;
    if (v6 == v5)
    {
LABEL_12:

      goto LABEL_13;
    }

    if (v6)
    {
      [v6 isStartedButIncomplete];
      v8 = bls_backlight_log();
      if (OUTLINED_FUNCTION_35_0(v8))
      {
        OUTLINED_FUNCTION_16_2();
        v13 = 42;
LABEL_9:
        _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, v13);
      }
    }

    else
    {
      if (!v5)
      {
LABEL_11:
        objc_storeStrong((a1 + 128), a2);
        goto LABEL_12;
      }

      v14 = bls_backlight_log();
      if (OUTLINED_FUNCTION_35_0(v14))
      {
        OUTLINED_FUNCTION_16_2();
        v13 = 22;
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (NSObject)_lock_ensureFlipbookCurrent
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_7:
    v3 = 0;
    goto LABEL_9;
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    v3 = v2;
    if (![v2 isCompleted])
    {
      goto LABEL_9;
    }

    *(a1 + 230) = 0;
    v4 = bls_backlight_log();
    if (OUTLINED_FUNCTION_33_0(v4))
    {
      OUTLINED_FUNCTION_18_1();
      _os_log_debug_impl(&dword_21FD11000, v3, OS_LOG_TYPE_DEBUG, "TSM:%p flipbookIsStale=NO ensureCurrent completed", v9, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = +[BLSHEnsureFlipbookCurrentOperation operation];
  v6 = *(a1 + 136);
  *(a1 + 136) = v5;

  v3 = v5;
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)environmentStateMachineDidBeginUpdateToState:(uint64_t)a1
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v4 = [*(a1 + 184) copy];
    v5 = [*(a1 + 192) copy];
    v6 = [*(a1 + 104) triggerEvent];
    v7 = v6;
    if (*(a1 + 104))
    {
      v8 = [v6 state] == a2;
    }

    else
    {
      v8 = 0;
    }

    v9 = bls_backlight_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = NSStringFromBLSBacklightState();
      v12 = *(a1 + 104);
      v13 = NSStringFromBLSBacklightChangeEvents();
      *buf = 134219010;
      v17 = a1;
      v18 = 2114;
      v19 = v11;
      v20 = 1024;
      v21 = v8;
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "TSM:%p didBeginUpdateToState:%{public}@ matchesPendingEvent:%{BOOL}u pendingEvent:%{public}@ events:%{public}@", buf, 0x30u);
    }

    if (v8)
    {
      [*(a1 + 104) setUpdatedInitialState:1];
      os_unfair_lock_unlock((a1 + 8));
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_3_2();
      v14 = v4;
      v15 = v5;
      BSDispatchMain();
    }

    else
    {
      os_unfair_lock_unlock((a1 + 8));
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)environmentStateMachineDidCompleteUpdateToState:(uint64_t)a1
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = OUTLINED_FUNCTION_15_2(a1);
    os_unfair_lock_lock(v4);
    v5 = *(v2 + 104);
    if (v5)
    {
      v6 = [v5 triggerEvent];
      v7 = [v6 state] == a2;
    }

    else
    {
      v7 = 0;
    }

    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromBLSBacklightState();
      v14 = *(v2 + 104);
      OUTLINED_FUNCTION_2_4();
      v19 = v15;
      v20 = 1024;
      v21 = v7;
      v22 = v16;
      v23 = v17;
      _os_log_debug_impl(&dword_21FD11000, v8, OS_LOG_TYPE_DEBUG, "TSM:%p environmentStateMachine didCompleteUpdateToState:%{public}@ matchesPendingEvent:%{BOOL}u pendingEvent:%{public}@ ", buf, 0x26u);
    }

    if (v7)
    {
      [*(v2 + 104) setCompleted:1];
      v9 = bls_backlight_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(v2 + 104);
        OUTLINED_FUNCTION_2_4();
        v19 = v11;
        _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_INFO, "TSM:%p completed pendingEnvironmentUpdate %{public}@", buf, 0x16u);
      }

      os_unfair_lock_unlock((v2 + 8));
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_18();
      BSDispatchMain();
    }

    else
    {
      os_unfair_lock_unlock((v2 + 8));
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)environmentStateMachine:(id)a3 didUpdateToPresentation:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  lock_pendingUpdatePresentation = self->_lock_pendingUpdatePresentation;
  if (lock_pendingUpdatePresentation && (-[BLSHPendingUpdatePresentation presentation](lock_pendingUpdatePresentation, "presentation"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqual:v6], v8, v9))
  {
    v10 = 1;
    [(BLSHPendingUpdatePresentation *)self->_lock_pendingUpdatePresentation setCompleted:1];
    v11 = bls_backlight_log();
    if (OUTLINED_FUNCTION_32_0(v11))
    {
      v12 = self->_lock_pendingUpdatePresentation;
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_27_0();
      _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    }

    self->_lock_flipbookIsStale = 1;
  }

  else
  {
    v10 = 0;
  }

  v18 = [(BLSHBacklightTransitionStateMachine *)self withLock_ensureTargetStateCreated];
  v19 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
  v20 = bls_backlight_log();
  if (OUTLINED_FUNCTION_44(v20))
  {
    v25 = NSStringFromBLSBacklightDisplayMode(v19);
    v26 = self->_lock_pendingUpdatePresentation;
    OUTLINED_FUNCTION_37_0();
    v32 = 2114;
    v33 = v6;
    v34 = 1024;
    v35 = v10;
    v36 = 2114;
    v37 = v27;
    v38 = 2114;
    v39 = v28;
    _os_log_debug_impl(&dword_21FD11000, v4, OS_LOG_TYPE_DEBUG, "TSM:%p didUpdateToPresentation:%{public}@ matchesPendingUpdate:%{BOOL}u targetDisplayMode:%{public}@ pending:%{public}@", buf, 0x30u);
  }

  [v18 setDisplayMode:v19];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v21 = self->_lock_session;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    v29 = v22;
    v30 = v6;
    v23 = v21;
    BSDispatchMain();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)updateTargetAndPerformNextStepForUnrestrictedFramerateChangeWithEnvironment:(uint64_t)a1
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v4 = *(a1 + 72);
    if (*(a1 + 240))
    {
      v5 = 1;
    }

    else
    {
      v5 = [(BLSHBacklightTransitionStateMachine *)a1 hasUnrestrictedFramerateWithSession:?];
    }

    if (v4 == 1 && v5 != 0)
    {
      [(BLSHBacklightTransitionStateMachine *)a1 withLock_acquireTransitionAPAwakeAssertion];
    }

    v7 = [(BLSHBacklightTransitionStateMachine *)a1 withLock_ensureTargetStateCreated];
    v8 = [v7 displayMode];
    v9 = [(BLSHBacklightTransitionStateMachine *)a1 lock_displayModeForBacklightState:?];
    v10 = bls_backlight_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v11)
      {
        v22 = [v3 identifier];
        v12 = NSStringFromBLSBacklightDisplayMode(v9);
        OUTLINED_FUNCTION_23_0();
        v27 = v22;
        v28 = v13;
        v29 = v14;
        v30 = v13;
        v31 = v7;
        _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "TSM:%p changed unrestrictedFramerate:%{BOOL}u forEnvironment:%{public}@ targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x30u);
      }
    }

    else if (v11)
    {
      v19 = NSStringFromBLSBacklightDisplayMode(v9);
      OUTLINED_FUNCTION_23_0();
      v27 = v20;
      v28 = v21;
      v29 = v7;
      _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "TSM:%p changed global unrestrictedFramerate:%{BOOL}u targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x26u);
    }

    [v7 setDisplayMode:v9];
    v15 = *(a1 + 256);
    v16 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 8));
    if (v8 != v9 || v4 == 1)
    {
      v23 = v15;
      v24 = v3;
      v25 = v16;
      BSDispatchMain();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setGlobalHighLuminanceAlwaysOn:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_globalHighLuminanceAlwaysOn = self->_lock_globalHighLuminanceAlwaysOn;
  self->_lock_globalHighLuminanceAlwaysOn = v3;
  [(BLSHBacklightTransitionStateMachine *)self lock_isHighLuminanceAlwaysOnWithSession:?];
  if (lock_globalHighLuminanceAlwaysOn != v3 && v3 != 0)
  {
    [(BLSHBacklightTransitionStateMachine *)self withLock_acquireTransitionAPAwakeAssertion];
  }

  os_unfair_lock_unlock(&self->_lock);
  if (lock_globalHighLuminanceAlwaysOn != v3)
  {
    v7 = self->_displayStateMachine;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3_2();
    v10 = v8;
    v9 = v8;
    BSDispatchMain();
  }
}

- (void)hostEnvironment:(id)a3 hostDidSetAlwaysOnEnabledForEnvironment:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(BLSHBacklightTransitionStateMachine *)self withLock_acquireTransitionAPAwakeAssertion];
  v7 = [(BLSHBacklightTransitionStateMachine *)self withLock_ensureTargetStateCreated];
  v8 = [(BLSHBacklightTransitionStateMachine *)self lock_displayModeForBacklightState:?];
  v9 = bls_backlight_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 identifier];
    v11 = NSStringFromBLSBacklightDisplayMode(v8);
    *buf = 134219010;
    v14 = self;
    v15 = 1024;
    v16 = v4;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_INFO, "TSM:%p hostDidSetAlwaysOnEnabled:%{BOOL}u forEnvironment:%{public}@ targetDisplayMode:%{public}@ previousTarget:%{public}@", buf, 0x30u);
  }

  [v7 setDisplayMode:v8];
  os_unfair_lock_unlock(&self->_lock);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_18();
  BSDispatchMain();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)onMain_updateHostEnvironmentAndPerformNextStep:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock((a1 + 8));
    v4 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 8));
    [v4 updateEnvironment:v3];

    [(BLSHBacklightTransitionStateMachine *)a1 onMain_performNextStepInTransition];
  }
}

- (void)hostEnvironment:(id)a3 hostDidSetCacheFlipbookOnDisplayWake:(BOOL)a4
{
  v5 = OUTLINED_FUNCTION_15_2(self);
  os_unfair_lock_lock(v5);
  if ([(BLSHBacklightTransitionStateMachine *)v4 _lock_updateCacheFlipbookWithSession:?])
  {
    v6 = *(v4 + 144);
    os_unfair_lock_unlock((v4 + 8));
    if (v6)
    {
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_18();
      v8 = __92__BLSHBacklightTransitionStateMachine_hostEnvironment_hostDidSetCacheFlipbookOnDisplayWake___block_invoke;
      v9 = &unk_27841E650;
      v10 = v4;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {

    os_unfair_lock_unlock((v4 + 8));
  }
}

- (void)hostEnvironment:(id)a3 hostDidSetHighLuminanceAlwaysOn:(BOOL)a4
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BLSHBacklightTransitionStateMachine *)self lock_isHighLuminanceAlwaysOnWithSession:?];
  v6 = self->_displayStateMachine;
  v7 = [(BLSHBacklightDisplayStateMachine *)v6 isHighLuminanceAlwaysOn];
  os_unfair_lock_unlock(&self->_lock);
  if (v5 != v7)
  {
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3_2();
    v8 = v6;
    BSDispatchMain();
  }
}

- (BOOL)hostEnvironment:(id)a3 didAmendSceneSettings:(id)a4
{
  v102 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [v7 isForeground];
  lock_backlightState = self->_lock_backlightState;
  v10 = [(BLSHBacklightAggregateState *)self->_currentState presentation];
  v11 = [(BLSHBacklightTransitionStateMachine *)self withLock_isTransitioning];
  os_unfair_lock_unlock(&self->_lock);
  v12 = [v10 containsEnvironment:v6];
  v84 = [v6 presentationDate];
  v13 = [v7 bls_presentationDate];
  if (v13)
  {
    v14 = BSEqualObjects();
  }

  else
  {
    v14 = 1;
  }

  v15 = (v8 | v11) & v12;
  v83 = (v15 ^ 1) & v14;
  if (v83)
  {
    v80 = v13;
    v16 = OUTLINED_FUNCTION_38_0();
    v21 = BLSVisualStateForBacklightStateAndSettings(v16, v17, v18, v19, v20);
    v22 = bls_backlight_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v74 = [v6 identifier];
      v23 = NSStringFromBLSBacklightState();
      v57 = [v21 bls_shortLoggingString];
      v61 = v12 & 1;
      v59 = [v10 bls_shortLoggingString];
      v69 = [v6 visualState];
      v24 = [v69 bls_shortLoggingString];
      v67 = [v6 presentationDate];
      v25 = [v67 bls_shortLoggingString];
      v63 = [v7 bls_visualState];
      [v63 bls_shortLoggingString];
      v26 = v65 = v6;
      [v7 bls_presentationDate];
      v27 = v71 = v10;
      [v27 bls_shortLoggingString];
      v28 = log = v21;
      OUTLINED_FUNCTION_21_1();
      v86 = v74;
      v87 = v29;
      v88 = v23;
      v89 = v29;
      v90 = v57;
      OUTLINED_FUNCTION_20_1();
      v91 = v61;
      v92 = v30;
      v93 = v59;
      v94 = v30;
      v95 = v24;
      v96 = v30;
      v97 = v25;
      v98 = v30;
      v99 = v26;
      v100 = v30;
      v101 = v31;
      _os_log_impl(&dword_21FD11000, v22, OS_LOG_TYPE_INFO, "TSM:%p will amend scene %{public}@ for backlightState:%{public}@ with visualState:%{public}@ – willBeForeground:%{BOOL}u containsEnv:%{BOOL}u presentation:%{public}@ oldVisualState:%{public}@ oldPresentationDate:%{public}@ settingsVisualState:%{public}@ settingsPresentationDate:%{public}@", buf, 0x68u);

      v10 = v71;
      v21 = log;

      v6 = v65;
    }

    [v7 bls_setVisualState:v21];
    [v7 bls_setPresentationDate:0];
    v13 = v80;
  }

  else
  {
    v32 = bls_backlight_log();
    v33 = v32;
    if (v15)
    {
      v21 = v32;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v75 = [v6 identifier];
        v34 = NSStringFromBLSBacklightState();
        loga = [v7 bls_visualState];
        [loga bls_shortLoggingString];
        v35 = v81 = v13;
        v36 = [v10 bls_shortLoggingString];
        [v6 visualState];
        v37 = v72 = v10;
        v38 = [v37 bls_shortLoggingString];
        OUTLINED_FUNCTION_21_1();
        v86 = v75;
        v87 = v39;
        v88 = v34;
        v89 = v39;
        v90 = v35;
        OUTLINED_FUNCTION_20_1();
        v91 = 1;
        v92 = v40;
        v93 = v36;
        v94 = v40;
        v95 = v41;
        _os_log_debug_impl(&dword_21FD11000, v21, OS_LOG_TYPE_DEBUG, "TSM:%p will not amend scene %{public}@ for backlightState:%{public}@ with settingsVisualState:%{public}@ willBeForeground:%{BOOL}u containsEnv:%{BOOL}u presentation:%{public}@ oldVisualState:%{public}@", buf, 0x4Au);

        v10 = v72;
        v13 = v81;
      }
    }

    else
    {
      v21 = v32;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v76 = [v6 identifier];
        v73 = NSStringFromBLSBacklightState();
        v42 = OUTLINED_FUNCTION_38_0();
        v70 = BLSVisualStateForBacklightStateAndSettings(v42, v43, v44, v45, v46);
        v64 = [v70 bls_shortLoggingString];
        v62 = v12 & 1;
        v60 = [v10 bls_shortLoggingString];
        v68 = [v6 visualState];
        v58 = [v68 bls_shortLoggingString];
        [v6 presentationDate];
        v66 = v82 = v13;
        v47 = [v66 bls_shortLoggingString];
        v48 = [v7 bls_visualState];
        [v48 bls_shortLoggingString];
        v49 = logb = v33;
        v50 = [v7 bls_presentationDate];
        [v50 bls_shortLoggingString];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_21_1();
        v86 = v76;
        v87 = v51;
        v88 = v73;
        v89 = v51;
        v90 = v64;
        OUTLINED_FUNCTION_20_1();
        v91 = v62;
        v92 = v52;
        v93 = v60;
        v94 = v52;
        v95 = v58;
        v96 = v52;
        v97 = v47;
        v98 = v52;
        v99 = v49;
        v100 = v52;
        v101 = v53;
        v54 = v53;
        _os_log_impl(&dword_21FD11000, logb, OS_LOG_TYPE_INFO, "TSM:%p would have (but will not) amend scene %{public}@ for backlightState:%{public}@ with visualState:%{public}@ – willBeForeground:%{BOOL}u containsEnv:%{BOOL}u presentation:%{public}@ oldVisualState:%{public}@ oldPresentationDate:%{public}@ settingsVisualState:%{public}@ settingsPresentationDate:%{public}@", buf, 0x68u);

        v13 = v82;
        v21 = logb;
      }
    }
  }

  v55 = *MEMORY[0x277D85DE8];
  return v83 & 1;
}

- (void)initWithPlatformProvider:(uint64_t *)a1 osInterfaceProvider:(char *)a2 inactiveBudgetPolicy:.cold.1(uint64_t *a1, char *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"presentationEngine:%@ is not stopped on intitialization"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_4();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v12, v13, v14);
  }

  v11 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)lock_displayModeForBacklightState:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unexpectedly wants suppression when backlightState:BLSBacklightStateInactiveOn"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
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

- (void)ifStillValidPerformAlwaysOnBrightnessRamp:(char *)a1 withDuration:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"rampOperation != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)inactiveEnvironmentSession:(uint64_t)a1 updateToPresentation:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"session:%@ exists but no environment state machine"];
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

- (void)setGlobalCacheFlipbookOnDisplayWake:(void *)a3 .cold.1(uint64_t a1, os_unfair_lock_s *a2, void *a3)
{
  [(BLSHBacklightTransitionStateMachine *)a1 withLock_acquireTransitionAPAwakeAssertion];
  os_unfair_lock_unlock(a2);
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __75__BLSHBacklightTransitionStateMachine_setGlobalCacheFlipbookOnDisplayWake___block_invoke;
  a3[3] = &unk_27841E650;
  a3[4] = a1;
  dispatch_async(MEMORY[0x277D85CD0], a3);
}

@end