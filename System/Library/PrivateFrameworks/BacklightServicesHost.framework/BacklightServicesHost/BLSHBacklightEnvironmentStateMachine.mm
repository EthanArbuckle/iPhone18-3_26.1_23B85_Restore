@interface BLSHBacklightEnvironmentStateMachine
- (BLSHBacklightEnvironmentPresentation)presentation;
- (BLSHBacklightEnvironmentStateMachine)initWithPresentation:(id)presentation backlightState:(int64_t)state delegate:(id)delegate inactiveBudgetPolicy:(id)policy osTimerProvider:(id)provider platformProvider:(id)platformProvider;
- (BLSHBacklightEnvironmentStateMachineDelegate)lock_delegate;
- (BOOL)_lock_transitionCompleteAfterCompletingTransitionState:(uint64_t)state;
- (BOOL)isUpdatingPresentation;
- (BOOL)isUpdatingState;
- (BOOL)pendingNotifyBeganUpdatingState;
- (NSSet)updatingDateSpecifierTransitionStates;
- (NSSet)updatingVisualStateTransitionStates;
- (NSString)debugDescription;
- (NSString)description;
- (id)_descriptionOfTransitionStates:(int)states shouldFilter:(char)filter countOnly:(void *)only environmentFilter:(void *)environmentFilter filter:;
- (id)_lock_descriptionOfUpdatingTransitionStatesToBacklightState:(int)state shouldFilter:(char)filter countOnly:;
- (id)_lock_etsLoggingStringForBacklightState:(uint64_t)state;
- (id)_lock_transitionStateForEnvironment:(uint64_t)environment;
- (id)transitionStateForEnvironment:(os_unfair_lock_s *)environment;
- (int)_lock_debugDescription;
- (uint64_t)_lock_allTransitionsDidBeginUpdateBacklightState:(void *)state environmentFilter:;
- (uint64_t)_lock_isActiveTransitionState:(uint64_t)state;
- (uint64_t)_lock_isSetPresentationOperationComplete:(uint64_t)complete;
- (uint64_t)_lock_numTransitionsDidNotBeginUpdateBacklightState:(uint64_t)state;
- (uint64_t)isInvalid;
- (void)_checkCompletedOperationsToBacklightState:(void *)state transitionState:(int)transitionState shouldCompleteTransitionState:(void *)completeTransitionState setupWithLock:(void *)lock completeWithoutLock:;
- (void)_lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:(char)filter countOnly:;
- (void)_lock_ifPossibleStopTrackingTransitionState:(uint64_t)state;
- (void)_lock_updateHistory:(uint64_t)history backlightState:(void *)state transitionState:(uint64_t)transitionState pendingTransitionStateCount:;
- (void)checkCompletedOperationsToBacklightState:(void *)state visualState:(void *)visualState transitionState:(int)transitionState isBeginUpdate:;
- (void)completedOperation:(uint64_t)operation;
- (void)dealloc;
- (void)endAddingEnvironments;
- (void)enumerateRemoteEnvironmentsFirstFromSource:(void *)source environmentTransformer:(void *)transformer block:;
- (void)invalidate;
- (void)onMain_performEvent:(void *)event withInitialSpecifier:(void *)specifier performBacklightRamp:;
- (void)onMain_setPresentation:(uint64_t)presentation withTargetBacklightState:;
- (void)onMain_updateEnvironment:(uint64_t)environment;
- (void)onMain_updateToSpecifier:(uint64_t)specifier;
- (void)performEvent:(id)event withInitialSpecifier:(id)specifier performBacklightRamp:(id)ramp;
- (void)populateEnvironmentStateMachineStruct:(id *)struct;
- (void)populateOperationCompletedMismatchedBacklightStatesStruct:(uint64_t)struct backlightState:(uint64_t)state targetBacklightState:(void *)backlightState performEventHistory:(void *)history didBeginUpdateHistory:(void *)updateHistory didCompleteUpdateHistory:;
- (void)setPresentation:(id)presentation withTargetBacklightState:(int64_t)state;
- (void)transitionState:(id)state didUpdateToDateSpecifier:(id)specifier;
- (void)updateAllEnvironmentsInPresentation;
- (void)updateEnvironment:(id)environment;
- (void)updateRemovedEnvironmentsToActiveOn;
- (void)updateToSpecifier:(id)specifier;
- (void)updateTransitionStatesForEnvironments:(uint64_t)environments toBacklightState:(void *)state forEvent:(void *)event withInitialSpecifier:(void *)specifier forReason:(void *)reason performBacklightRamp:(void *)ramp environmentTransformer:;
@end

@implementation BLSHBacklightEnvironmentStateMachine

- (BLSHBacklightEnvironmentPresentation)presentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_presentation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)endAddingEnvironments
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v4 = objc_opt_class();
    v11 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_addingEnvironmentsCount == 0", v10, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BLSHBacklightEnvironmentStateMachine)initWithPresentation:(id)presentation backlightState:(int64_t)state delegate:(id)delegate inactiveBudgetPolicy:(id)policy osTimerProvider:(id)provider platformProvider:(id)platformProvider
{
  presentationCopy = presentation;
  delegateCopy = delegate;
  policyCopy = policy;
  providerCopy = provider;
  platformProviderCopy = platformProvider;
  v36.receiver = self;
  v36.super_class = BLSHBacklightEnvironmentStateMachine;
  v19 = [(BLSHBacklightEnvironmentStateMachine *)&v36 init];
  v20 = v19;
  if (v19)
  {
    if (!presentationCopy)
    {
      [BLSHBacklightEnvironmentStateMachine initWithPresentation:v19 backlightState:a2 delegate:? inactiveBudgetPolicy:? osTimerProvider:? platformProvider:?];
    }

    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_lock_presentation, presentation);
    v20->_lock_targetBacklightState = state;
    v20->_lock_performEventTargetBacklightState = state;
    array = [MEMORY[0x277CBEB18] array];
    performEventHistory = v20->_performEventHistory;
    v20->_performEventHistory = array;

    array2 = [MEMORY[0x277CBEB18] array];
    didBeginUpdateHistory = v20->_didBeginUpdateHistory;
    v20->_didBeginUpdateHistory = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    didCompleteUpdateHistory = v20->_didCompleteUpdateHistory;
    v20->_didCompleteUpdateHistory = array3;

    objc_storeWeak(&v20->_lock_delegate, delegateCopy);
    objc_storeStrong(&v20->_inactiveBudgetPolicy, policy);
    objc_storeStrong(&v20->_osTimerProvider, provider);
    objc_storeStrong(&v20->_platformProvider, platformProvider);
    v27 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:517 capacity:4];
    transitionStates = v20->_transitionStates;
    v20->_transitionStates = v27;

    v29 = [MEMORY[0x277CBEB58] set];
    lock_updatingVisualStateTransitionStates = v20->_lock_updatingVisualStateTransitionStates;
    v20->_lock_updatingVisualStateTransitionStates = v29;

    objc_initWeak(&location, v20);
    objc_copyWeak(&v34, &location);
    v20->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v20;
}

uint64_t __139__BLSHBacklightEnvironmentStateMachine_initWithPresentation_backlightState_delegate_inactiveBudgetPolicy_osTimerProvider_platformProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];
  v3 = BLSStateDataWithTitleDescriptionAndHints();

  return v3;
}

- (void)dealloc
{
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BLSHBacklightEnvironmentStateMachine;
  [(BLSHBacklightEnvironmentStateMachine *)&v3 dealloc];
}

- (NSString)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  if (self->_lock_addingEnvironmentsCount >= 1)
  {
    v5 = [v3 appendInt:? withName:?];
  }

  v6 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  v7 = [(BLSHBacklightEnvironmentStateMachine *)self _lock_descriptionOfUpdatingTransitionStatesToBacklightState:0 shouldFilter:0 countOnly:?];
  v8 = [v3 appendObject:v7 withName:@"updatingVisualState"];

  v9 = [(BLSHBacklightEnvironmentStateMachine *)&self->super.isa _lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:0 countOnly:?];
  v10 = [v3 appendObject:v9 withName:@"updatingDateSpecifier" skipIfNil:1];

  v11 = [v3 appendObject:self->_lock_presentation withName:@"presentation"];
  v12 = [v3 appendObject:self->_updatingSpecifier withName:@"updatingSpecifier"];
  lock_targetBacklightState = self->_lock_targetBacklightState;
  v14 = NSStringFromBLSBacklightState();
  [v3 appendString:v14 withName:@"target"];

  if (self->_lock_targetBacklightState != self->_lock_performEventTargetBacklightState)
  {
    v15 = NSStringFromBLSBacklightState();
    [v3 appendString:v15 withName:@"performEventTarget"];
  }

  v16 = [v3 appendBool:self->_pendingNotifyBeganUpdatingState withName:@"pendingNotifyBeganUpdatingState"];
  v17 = [v3 appendBool:self->_updatingState withName:@"updatingState"];
  v18 = [v3 appendBool:self->_lock_setPresentationOperation != 0 withName:@"updatingPresentation"];
  if ([(NSMutableSet *)self->_lock_staleEnvironmentsThatNeedDeferredUpdate count])
  {
    allObjects = [(NSMutableSet *)self->_lock_staleEnvironmentsThatNeedDeferredUpdate allObjects];
    v20 = [allObjects valueForKey:@"identifier"];
    v21 = [v20 componentsJoinedByString:{@", "}];
    [v3 appendString:v21 withName:@"removedEnvsForStateUpdateLater"];
  }

  os_unfair_lock_unlock(&self->_lock);
  build = [v3 build];

  return build;
}

- (void)invalidate
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  presentationEntries = [(BLSHBacklightEnvironmentPresentation *)self->_lock_presentation presentationEntries];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [presentationEntries countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(presentationEntries);
        }

        environment = [*(*(&v14 + 1) + 8 * v7) environment];
        [environment deactivateClient];

        ++v7;
      }

      while (v5 != v7);
      v5 = [presentationEntries countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  lock_presentation = self->_lock_presentation;
  self->_lock_presentation = 0;

  objc_storeWeak(&self->_lock_delegate, 0);
  [(NSMutableSet *)self->_lock_updatingVisualStateTransitionStates removeAllObjects];
  lock_updatingVisualStateTransitionStates = self->_lock_updatingVisualStateTransitionStates;
  self->_lock_updatingVisualStateTransitionStates = 0;

  [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates removeAllObjects];
  lock_updatingDateSpecifierTransitionStates = self->_lock_updatingDateSpecifierTransitionStates;
  self->_lock_updatingDateSpecifierTransitionStates = 0;

  transitionStates = self->_transitionStates;
  self->_transitionStates = 0;

  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightEnvironmentStateMachine *)self updateRemovedEnvironmentsToActiveOn];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateRemovedEnvironmentsToActiveOn
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"environment for later update must implement updateToVisualState:presentationDateSpecifier: from BLSHBacklightSceneHostEnvironment_Private"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHBacklightEnvironmentStateMachine.m";
    v16 = 1024;
    v17 = 676;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setPresentation:(id)presentation withTargetBacklightState:(int64_t)state
{
  presentationCopy = presentation;
  v4 = presentationCopy;
  BSDispatchMain();
}

- (void)onMain_setPresentation:(uint64_t)presentation withTargetBacklightState:
{
  v84 = *MEMORY[0x277D85DE8];
  v53 = a2;
  if (self)
  {
    if ([(BLSHBacklightEnvironmentStateMachine *)self isInvalid])
    {
      oslog = bls_backlight_log();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        [(BLSHBacklightEnvironmentStateMachine *)self onMain_setPresentation:v53 withTargetBacklightState:oslog];
      }

      goto LABEL_58;
    }

    if (!v53)
    {
      [BLSHBacklightEnvironmentStateMachine onMain_setPresentation:self withTargetBacklightState:sel_onMain_setPresentation_withTargetBacklightState_];
    }

    os_unfair_lock_lock((self + 8));
    v5 = *(self + 16);
    *(self + 112) = presentation;
    oslog = v5;
    objc_storeStrong((self + 16), a2);
    v51 = [v53 differenceFromPresentation:oslog];
    insertions = [v51 insertions];
    v7 = *(self + 104);
    v47 = v7;
    if (v7)
    {
      v8 = insertions;
      additions = [v7 additions];
      presentationEntries = [v53 presentationEntries];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke;
      v77[3] = &unk_27841F488;
      v78 = v8;
      v11 = additions;
      v79 = v11;
      v12 = [presentationEntries bs_compactMap:v77];

      backlightState = [v47 backlightState];
      v14 = backlightState != presentation;
      if (backlightState == presentation)
      {
        v49 = v8;
      }

      else
      {
        v49 = v12;
      }

      v48 = v12;
    }

    else
    {
      v14 = 0;
      v48 = insertions;
      v49 = insertions;
    }

    v15 = [[BLSSetPresentationOperation alloc] initWithBacklightState:presentation additions:v48];
    v16 = *(self + 104);
    v46 = v15;
    *(self + 104) = v15;

    os_unfair_lock_unlock((self + 8));
    hasChanges = [v51 hasChanges];
    v18 = hasChanges;
    if ((v14 | hasChanges) != 1)
    {
      removals = bls_backlight_log();
      if (os_log_type_enabled(removals, OS_LOG_TYPE_INFO))
      {
        v26 = NSStringFromBLSBacklightState();
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_impl(&dword_21FD11000, removals, OS_LOG_TYPE_INFO, "ESM:%p setPresentation (redundant) targetBacklightState:%{public}@", buf, 0x16u);
      }

      v27 = 0;
      goto LABEL_57;
    }

    removals = [v51 removals];
    v45 = [v49 count];
    v19 = [removals count];
    v20 = bls_backlight_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

    if (v21)
    {
      log = bls_backlight_log();
      v22 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
      if (v18)
      {
        if (!v19)
        {
          if (v22)
          {
            v31 = [v49 bs_map:&__block_literal_global_139];
            v32 = NSStringFromBLSBacklightState();
            *buf = 134218498;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v31;
            *&buf[22] = 2114;
            v81 = v32;
            _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_INFO, "ESM:%p setPresentation by adding:%{public}@ targetBacklightState:%{public}@", buf, 0x20u);
          }

          goto LABEL_51;
        }

        if (v45)
        {
          if (v22)
          {
            v23 = [v49 bs_map:&__block_literal_global_145];
            v24 = [removals bs_map:&__block_literal_global_148];
            v25 = NSStringFromBLSBacklightState();
            *buf = 134218754;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v23;
            *&buf[22] = 2114;
            v81 = v24;
            LOWORD(v82) = 2114;
            *(&v82 + 2) = v25;
            _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_INFO, "ESM:%p setPresentation by adding:%{public}@ and removing:%{public}@ targetBacklightState:%{public}@", buf, 0x2Au);
          }
        }

        else if (v22)
        {
          v33 = [removals bs_map:&__block_literal_global_142];
          v34 = NSStringFromBLSBacklightState();
          *buf = 134218498;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v33;
          *&buf[22] = 2114;
          v81 = v34;
          _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_INFO, "ESM:%p setPresentation by removing:%{public}@ targetBacklightState:%{public}@", buf, 0x20u);
        }

LABEL_32:
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        log = [v51 removals];
        v35 = [log countByEnumeratingWithState:&v73 objects:v83 count:16];
        if (v35)
        {
          v27 = 0;
          v36 = *v74;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v74 != v36)
              {
                objc_enumerationMutation(log);
              }

              v38 = *(*(&v73 + 1) + 8 * i);
              os_unfair_lock_lock((self + 8));
              v39 = [*(self + 48) objectForKey:v38];
              if (v39)
              {
                v40 = bls_backlight_log();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  *buf = 134218242;
                  *&buf[4] = self;
                  *&buf[12] = 2114;
                  *&buf[14] = v39;
                  _os_log_impl(&dword_21FD11000, v40, OS_LOG_TYPE_INFO, "ESM:%p removal— no longer active transitionState:%{public}@", buf, 0x16u);
                }

                [*(self + 56) removeObject:v39];
                [*(self + 64) removeObject:v39];
                os_unfair_lock_unlock((self + 8));
                [v39 performBacklightRampIfPendingForReason:@"removed"];
              }

              else
              {
                os_unfair_lock_unlock((self + 8));
              }

              [v38 deactivateClient];
              if (presentation != 2 && (objc_opt_respondsToSelector() & 1) != 0 && [v38 wantsStateUpdateToActiveAfterRemovalFromPresentation])
              {
                if (!v27)
                {
                  v27 = [MEMORY[0x277CBEB58] set];
                }

                [v27 addObject:v38];
              }
            }

            v35 = [log countByEnumeratingWithState:&v73 objects:v83 count:16];
          }

          while (v35);
          goto LABEL_52;
        }

LABEL_51:
        v27 = 0;
LABEL_52:

LABEL_53:
        if (v45)
        {
          v41 = bls_backlight_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            [(BLSHBacklightEnvironmentStateMachine *)presentation onMain_setPresentation:v49 withTargetBacklightState:v41];
          }

          [(BLSHBacklightEnvironmentStateMachine *)self updateTransitionStatesForEnvironments:v49 toBacklightState:presentation forEvent:0 withInitialSpecifier:0 forReason:@"setPresentation" performBacklightRamp:0 environmentTransformer:&__block_literal_global_160];
        }

LABEL_57:

        v71[0] = 0;
        v71[1] = v71;
        v71[2] = 0x2020000000;
        v72 = 0;
        v69[0] = 0;
        v69[1] = v69;
        v69[2] = 0x2020000000;
        v70 = 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v81 = __Block_byref_object_copy__5;
        *&v82 = __Block_byref_object_dispose__5;
        *(&v82 + 1) = 0;
        v67[0] = 0;
        v67[1] = v67;
        v67[2] = 0x3032000000;
        v67[3] = __Block_byref_object_copy__5;
        v67[4] = __Block_byref_object_dispose__5;
        v68 = 0;
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_161;
        v57[3] = &unk_27841F4F0;
        v42 = v27;
        v58 = v42;
        selfCopy = self;
        v43 = v49;
        v60 = v43;
        v62 = v71;
        v63 = buf;
        v64 = v67;
        v65 = v69;
        presentationCopy = presentation;
        v61 = v53;
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_167;
        v56[3] = &unk_27841F518;
        v56[6] = v67;
        v56[7] = buf;
        v56[4] = self;
        v56[5] = v71;
        v56[8] = v69;
        [(BLSHBacklightEnvironmentStateMachine *)self _checkCompletedOperationsToBacklightState:presentation transitionState:0 shouldCompleteTransitionState:0 setupWithLock:v57 completeWithoutLock:v56];

        _Block_object_dispose(v67, 8);
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(v69, 8);
        _Block_object_dispose(v71, 8);

LABEL_58:
        goto LABEL_59;
      }

      if (v22)
      {
        [v47 backlightState];
        v28 = NSStringFromBLSBacklightState();
        v29 = NSStringFromBLSBacklightState();
        v30 = [v49 bs_map:&__block_literal_global_9];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        *&buf[22] = 2114;
        v81 = v29;
        LOWORD(v82) = 2114;
        *(&v82 + 2) = v30;
        _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_INFO, "ESM:%p setPresentation (redundant) targetBacklightState:%{public}@->%{public}@ additions:%{public}@", buf, 0x2Au);
      }
    }

    if (!v19)
    {
      v27 = 0;
      goto LABEL_53;
    }

    goto LABEL_32;
  }

LABEL_59:

  v44 = *MEMORY[0x277D85DE8];
}

- (NSSet)updatingVisualStateTransitionStates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_updatingVisualStateTransitionStates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)updatingDateSpecifierTransitionStates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)pendingNotifyBeganUpdatingState
{
  os_unfair_lock_lock(&self->_lock);
  pendingNotifyBeganUpdatingState = self->_pendingNotifyBeganUpdatingState;
  os_unfair_lock_unlock(&self->_lock);
  return pendingNotifyBeganUpdatingState;
}

- (BOOL)isUpdatingState
{
  os_unfair_lock_lock(&self->_lock);
  updatingState = self->_updatingState;
  os_unfair_lock_unlock(&self->_lock);
  return updatingState;
}

- (BOOL)isUpdatingPresentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_setPresentationOperation != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 environment];
  if (([*(a1 + 32) containsObject:v3] & 1) != 0 || objc_msgSend(*(a1 + 40), "containsObject:", v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_137(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_140(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_143(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_2_146(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

void __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_161(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v47 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v10 = *(a1 + 40);
    v13 = *(v10 + 128);
    v11 = (v10 + 128);
    v12 = v13;
    if (v13)
    {
      [v12 unionSet:*(a1 + 32)];
    }

    else
    {
      objc_storeStrong(v11, *(a1 + 32));
    }

    v14 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 48)];
    [*(*(a1 + 40) + 128) minusSet:v14];
    v15 = bls_backlight_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 40);
      v17 = [*(v16 + 128) valueForKey:@"identifier"];
      v39 = 134218242;
      v40 = v16;
      v41 = 2114;
      v42 = v17;
      _os_log_impl(&dword_21FD11000, v15, OS_LOG_TYPE_INFO, "ESM:%p setPresentation: staleEnvironmentsThatNeedDeferredUpdate:%{public}@", &v39, 0x16u);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(*(a1 + 40) + 64) count] == 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 152));
  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = WeakRetained;

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(*(a1 + 40) + 72));
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v21 = *(a1 + 40);
    v22 = *(v21 + 64);
    *(v21 + 64) = 0;

    v23 = *(a1 + 40);
    v24 = *(v23 + 72);
    *(v23 + 72) = 0;
  }

  *(*(*(a1 + 88) + 8) + 24) = *(a1 + 96) != *(*(a1 + 40) + 112);
  if (a4 | a5 | a6) != 1 || (*(*(*(a1 + 88) + 8) + 24))
  {
    v25 = bls_backlight_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 40);
      if (*(*(*(a1 + 88) + 8) + 24))
      {
        v31 = "obsolete";
      }

      else
      {
        v31 = "waiting";
      }

      v32 = *(a1 + 56);
      v33 = [(BLSHBacklightEnvironmentStateMachine *)*(a1 + 40) _lock_descriptionOfUpdatingTransitionStatesToBacklightState:0 shouldFilter:0 countOnly:?];
      v39 = 134218754;
      v40 = v30;
      v41 = 2080;
      v42 = v31;
      v43 = 2048;
      v44 = v32;
      v45 = 2114;
      v46 = v33;
      _os_log_debug_impl(&dword_21FD11000, v25, OS_LOG_TYPE_DEBUG, "ESM:%p (finishing - %s) setPresentation:%p transitionStates:%{public}@", &v39, 0x2Au);
    }

    goto LABEL_36;
  }

  if (a4)
  {
    v25 = bls_backlight_log();
    if ([MEMORY[0x277CF09B8] isHostProcess])
    {
      v26 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v26 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_36;
    }

    v27 = *(a1 + 40);
    v28 = *(a1 + 56);
    v39 = 134218242;
    v40 = v27;
    v41 = 2114;
    v42 = v28;
    v29 = "ESM:%p finishing (immediate complete - update end also) setPresentation:%{public}@";
LABEL_35:
    _os_log_impl(&dword_21FD11000, v25, v26, v29, &v39, 0x16u);
LABEL_36:

    goto LABEL_37;
  }

  if (a5)
  {
    v25 = bls_backlight_log();
    if ([MEMORY[0x277CF09B8] isHostProcess])
    {
      v26 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v26 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_36;
    }

    v34 = *(a1 + 40);
    v35 = *(a1 + 56);
    v39 = 134218242;
    v40 = v34;
    v41 = 2114;
    v42 = v35;
    v29 = "ESM:%p finishing (immediate complete - update begin also) setPresentation:%{public}@";
    goto LABEL_35;
  }

  if (a6)
  {
    v25 = bls_backlight_log();
    if ([MEMORY[0x277CF09B8] isHostProcess])
    {
      v26 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v26 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_36;
    }

    v36 = *(a1 + 40);
    v37 = *(a1 + 56);
    v39 = 134218242;
    v40 = v36;
    v41 = 2114;
    v42 = v37;
    v29 = "ESM:%p finishing (immediate complete) setPresentation:%{public}@";
    goto LABEL_35;
  }

LABEL_37:
  v38 = *MEMORY[0x277D85DE8];
}

BOOL __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_167(void *a1)
{
  if (*(*(a1[5] + 8) + 24) == 1 && *(*(a1[6] + 8) + 40))
  {
    [*(*(a1[7] + 8) + 40) environmentStateMachine:a1[4] didUpdateToSpecifier:?];
  }

  return (*(*(a1[8] + 8) + 24) & 1) == 0;
}

void __179__BLSHBacklightEnvironmentStateMachine_updateTransitionStatesForEnvironments_toBacklightState_forEvent_withInitialSpecifier_forReason_performBacklightRamp_environmentTransformer___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = *(a1 + 80);
  v5 = *(*(a1 + 32) + 112);
  v6 = bls_backlight_log();
  v7 = 2 * (v4 == v5);
  if (os_log_type_enabled(v6, v7))
  {
    if (v4 == v5)
    {
      v8 = "";
    }

    else
    {
      v8 = "(OBSOLETE - ignoring) ";
    }

    v9 = *(a1 + 80);
    v10 = NSStringFromBLSBacklightState();
    v11 = [v3 identifier];
    v29 = 136315906;
    v30 = v8;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    v35 = 2112;
    v36 = v3;
    _os_log_impl(&dword_21FD11000, v6, v7, "ESM: %supdateTransitionStatesForEnvironments: -> %@ environment %@: %@", &v29, 0x2Au);
  }

  v12 = *(a1 + 32);
  if (v4 == v5)
  {
    v13 = [*(v12 + 16) containsEnvironment:v3];
    v14 = *(a1 + 32);
    if (v13)
    {
      v15 = [(BLSHBacklightEnvironmentStateMachine *)v14 _lock_transitionStateForEnvironment:v3];
      [*(*(a1 + 32) + 56) addObject:v15];
      os_unfair_lock_unlock((*(a1 + 32) + 8));
      v17 = *(a1 + 40);
      if (v17)
      {
        v18 = [v17 dateSpecifierForEnvironment:v3];
      }

      else
      {
        v18 = 0;
      }

      v22 = *(a1 + 80);
      v24 = *(a1 + 48);
      v23 = *(a1 + 56);
      if (v24 == v3)
      {
        v25 = *(a1 + 88);
      }

      else
      {
        v25 = 0;
      }

      v26 = [v18 date];
      v27 = [v18 userObject];
      if (v24 == v3)
      {
        v28 = *(a1 + 72);
      }

      else
      {
        v28 = 0;
      }

      [v15 updateToBacklightState:v22 forEvent:v23 touchTargetable:v25 & 1 presentationDate:v26 sceneUpdate:v27 performBacklightRamp:v28];
    }

    else
    {
      os_unfair_lock_unlock(v14 + 2);
      v15 = bls_backlight_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 64);
        v21 = [v3 identifier];
        v29 = 134218754;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        v33 = 2048;
        v34 = v3;
        v35 = 2114;
        v36 = v21;
        _os_log_debug_impl(&dword_21FD11000, v15, OS_LOG_TYPE_DEBUG, "ESM:%p will skip environment update, no longer in presentation — updateTransitionStatesForReason:%{public}@ environment:%p:%{public}@", &v29, 0x2Au);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock((v12 + 8));
  }

  v16 = *MEMORY[0x277D85DE8];
}

BLSHEnvironmentAndSource *__112__BLSHBacklightEnvironmentStateMachine_enumerateRemoteEnvironmentsFirstFromSource_environmentTransformer_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2, v4);
  v6 = [[BLSHEnvironmentAndSource alloc] initWithEnvironment:v5 environmentSource:v4];

  return v6;
}

void __112__BLSHBacklightEnvironmentStateMachine_enumerateRemoteEnvironmentsFirstFromSource_environmentTransformer_block___block_invoke_2(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 environment];
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 isLocal];
        }

        else
        {
          v11 = 1;
        }

        if (v11 == a2)
        {
          v12 = *(a1 + 40);
          v13 = [v9 environmentSource];
          (*(v12 + 16))(v12, v10, v13);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performEvent:(id)event withInitialSpecifier:(id)specifier performBacklightRamp:(id)ramp
{
  eventCopy = event;
  specifierCopy = specifier;
  rampCopy = ramp;
  v8 = rampCopy;
  v9 = specifierCopy;
  v10 = eventCopy;
  BSDispatchMain();
}

- (void)onMain_performEvent:(void *)event withInitialSpecifier:(void *)specifier performBacklightRamp:
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  eventCopy = event;
  specifierCopy = specifier;
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v10 = *(self + 142);
    os_unfair_lock_unlock((self + 8));
    if (v10 == 1)
    {
      v11 = bls_backlight_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = [self debugDescription];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2114;
        v32 = v7;
        v33 = 2114;
        v34 = eventCopy;
        _os_log_fault_impl(&dword_21FD11000, v11, OS_LOG_TYPE_FAULT, "ESM:%p calling performEvent on invalidated state machine:%{public}@ event:%{public}@ initialSpecifier:%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      os_unfair_lock_lock((self + 8));
      previousState = [v7 previousState];
      state = [v7 state];
      v15 = *(self + 80);
      v16 = [[BLSHEnvironmentPerformEventData alloc] initWithStateMachineOldBacklightState:*(self + 112) eventPreviousBacklightState:previousState eventNewBacklightState:state];
      [v15 addObject:v16];

      v17 = [*(self + 80) count];
      if (v17 >= 6)
      {
        [*(self + 80) removeObjectsInRange:{0, v17 - 5}];
      }

      *(self + 112) = state;
      *(self + 120) = state;
      *(self + 140) = 257;
      v11 = *(self + 16);
      presentationEntries = [v11 presentationEntries];
      os_unfair_lock_unlock((self + 8));
      if ([presentationEntries count])
      {
        [v7 setAninmationPropertiesWithPlatformProvider:*(self + 40)];
        v19 = bls_backlight_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v25 = NSStringFromBLSBacklightState();
          v23 = [presentationEntries valueForKeyPath:@"environment.identifier"];
          bls_shortLoggingString = [v7 bls_shortLoggingString];
          *buf = 138412802;
          *&buf[4] = v25;
          *&buf[12] = 2112;
          *&buf[14] = v23;
          *&buf[22] = 2112;
          v32 = bls_shortLoggingString;
          _os_log_debug_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEBUG, "ESM: performEvent: -> %@ environments:%@ event:%@", buf, 0x20u);
        }

        [(BLSHBacklightEnvironmentStateMachine *)self updateTransitionStatesForEnvironments:presentationEntries toBacklightState:state forEvent:v7 withInitialSpecifier:eventCopy forReason:@"performEvent" performBacklightRamp:specifierCopy environmentTransformer:&__block_literal_global_185];
      }

      else if (specifierCopy)
      {
        isEnvironmentTransitionAnimated = [v7 isEnvironmentTransitionAnimated];
        v21.n128_u64[0] = 0;
        if (isEnvironmentTransitionAnimated)
        {
          v21.n128_f64[0] = 0.5;
        }

        specifierCopy[2](specifierCopy, v21);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v32) = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2;
      v27[3] = &unk_27841F5E0;
      v29 = buf;
      v30 = state;
      v27[4] = self;
      v28 = v7;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_186;
      v26[3] = &unk_27841F608;
      v26[4] = buf;
      [(BLSHBacklightEnvironmentStateMachine *)self _checkCompletedOperationsToBacklightState:state transitionState:0 shouldCompleteTransitionState:0 setupWithLock:v27 completeWithoutLock:v26];

      _Block_object_dispose(buf, 8);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 32);
  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 56) != *(*(a1 + 32) + 112);
  if (a4 | a5 | a6) != 1 || (*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = bls_backlight_log();
    v8 = v9;
    v10 = *(*(*(a1 + 48) + 8) + 24);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v11 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v9, v11))
    {
      if (v10)
      {
        v13 = "obsolete";
      }

      else
      {
        v13 = "waiting";
      }

      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) bls_shortLoggingString];
      v16 = [(BLSHBacklightEnvironmentStateMachine *)*(a1 + 32) _lock_descriptionOfUpdatingTransitionStatesToBacklightState:0 shouldFilter:0 countOnly:?];
      v17 = 134218754;
      v18 = v14;
      v19 = 2080;
      v20 = v13;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_21FD11000, v8, v11, "ESM:%p (performEvent finishing - %s) performEvent:%{public}@ transitionStates:%{public}@ ", &v17, 0x2Au);
    }
  }

  else if (a4)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_3(v7, a1);
    }
  }

  else if (a5)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_2(v7, a1);
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_1(v7, a1);
    }
  }

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
}

void __75__BLSHBacklightEnvironmentStateMachine_updateAllEnvironmentsInPresentation__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) environment];
        [(BLSHBacklightEnvironmentStateMachine *)v7 onMain_updateEnvironment:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateEnvironment:(id)environment
{
  environmentCopy = environment;
  v3 = environmentCopy;
  BSDispatchMain();
}

- (void)updateToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v3 = specifierCopy;
  BSDispatchMain();
}

void __65__BLSHBacklightEnvironmentStateMachine_onMain_updateToSpecifier___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 dateSpecifierForEnvironment:a2];
  [v5 updateToDateSpecifier:v6];
}

- (void)populateEnvironmentStateMachineStruct:(id *)struct
{
  lock_presentation = self->_lock_presentation;
  lock_addingEnvironmentsCount = self->_lock_addingEnvironmentsCount;
  allObjects = [(NSMutableSet *)self->_lock_updatingVisualStateTransitionStates allObjects];
  allObjects2 = [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates allObjects];
  BYTE2(v8) = self->_lock_setPresentationOperation != 0;
  LOWORD(v8) = *&self->_pendingNotifyBeganUpdatingState;
  [BLSHBacklightEnvironmentStateMachineAbortPayload populateEnvironmentStateMachineStruct:"populateEnvironmentStateMachineStruct:machineIsNil:presentation:addingEnvironmentsCount:updatingVisualStateTransitionStates:updatingDateSpecifierTransitionStates:backlightState:previousBacklightState:pendingNotifyBeganUpdatingState:updatingState:updatingPresentation:" machineIsNil:struct presentation:0 addingEnvironmentsCount:lock_presentation updatingVisualStateTransitionStates:lock_addingEnvironmentsCount updatingDateSpecifierTransitionStates:allObjects backlightState:allObjects2 previousBacklightState:self->_lock_targetBacklightState pendingNotifyBeganUpdatingState:self->_lock_performEventTargetBacklightState updatingState:v8 updatingPresentation:?];
}

uint64_t __123__BLSHBacklightEnvironmentStateMachine__lock_descriptionOfUpdatingTransitionStatesToBacklightState_shouldFilter_countOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUpdatingInitialState])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isUpdatedToBacklightState:*(a1 + 32)] ^ 1;
  }

  return v4;
}

- (id)_descriptionOfTransitionStates:(int)states shouldFilter:(char)filter countOnly:(void *)only environmentFilter:(void *)environmentFilter filter:
{
  v10 = a2;
  onlyCopy = only;
  environmentFilterCopy = environmentFilter;
  if (self)
  {
    v12 = [v10 count];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v13 = objc_opt_new();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke;
    v27[3] = &unk_27841F6E8;
    v28 = v10;
    v14 = environmentFilterCopy;
    v31 = v14;
    v32 = &v38;
    v34 = onlyCopy != 0;
    v29 = onlyCopy;
    v33 = v37;
    filterCopy = filter;
    statesCopy = states;
    v15 = v13;
    v30 = v15;
    [v15 appendBodySectionWithName:0 block:v27];
    v16 = objc_opt_new();
    v17 = v16;
    if (v14)
    {
      if (onlyCopy)
      {
        v18 = v24;
      }

      else
      {
        v24[1] = MEMORY[0x277D85DD0];
        v24[2] = 3221225472;
        v24[3] = __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke_4;
        v24[4] = &unk_27841F730;
        v24[5] = &v38;
        v18 = v25;
      }
    }

    else
    {
      v25[1] = MEMORY[0x277D85DD0];
      v25[2] = 3221225472;
      v25[3] = __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke_3;
      v25[4] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
      v18 = &v26;
    }

    *v18 = v12;
    [v16 appendCustomFormatWithName:0 block:?];
    if (filter)
    {
      goto LABEL_13;
    }

    if (states)
    {
      if (v39[3] <= 0)
      {
        goto LABEL_13;
      }
    }

    else if (v12 < 1)
    {
LABEL_13:
      v20 = [v17 description];

      _Block_object_dispose(v37, 8);
      _Block_object_dispose(&v38, 8);
      goto LABEL_14;
    }

    v19 = [v15 description];
    [v17 appendString:v19 withName:0];

    goto LABEL_13;
  }

  v20 = 0;
LABEL_14:

  return v20;
}

void __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = *(a1 + 56);
        if (v8 && !(*(v8 + 16))(v8, *(*(&v17 + 1) + 8 * v6)))
        {
          v9 = 0;
        }

        else
        {
          ++*(*(*(a1 + 64) + 8) + 24);
          v9 = 1;
        }

        if (*(a1 + 80) == 1)
        {
          v10 = *(a1 + 40);
          v11 = [v7 environment];
          v12 = [v10 containsObject:v11];

          if ((v9 & v12) == 1)
          {
            ++*(*(*(a1 + 72) + 8) + 24);
            LOBYTE(v12) = 1;
          }
        }

        else
        {
          LOBYTE(v12) = 0;
        }

        if ((*(a1 + 81) & 1) == 0 && ((v9 & 1) != 0 || (*(a1 + 82) & 1) == 0))
        {
          v13 = *(a1 + 48);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke_2;
          v15[3] = &unk_27841F6C0;
          v16 = v12;
          v15[4] = v7;
          [v13 appendCustomFormatWithName:0 block:v15];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v2 = "+";
  }

  else
  {
    v2 = "";
  }

  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 bls_shortLoggingString];
  [v4 appendFormat:@"%s%@", v2, v5];
}

void __80__BLSHBacklightEnvironmentStateMachine__lock_etsLoggingStringForBacklightState___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = NSStringFromBLSBacklightState();
  [v2 appendString:v4 withName:@"mismatch"];

  v5 = a1[4];
  v6 = *(a1[5] + 112);
  v7 = NSStringFromBLSBacklightState();
  [v5 appendString:v7 withName:@"targ"];

  if (*(a1[5] + 112) != *(a1[5] + 120))
  {
    v8 = a1[4];
    v9 = NSStringFromBLSBacklightState();
    [v8 appendString:v9 withName:@"ev"];
  }
}

- (uint64_t)_lock_isSetPresentationOperationComplete:(uint64_t)complete
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (complete && v3)
  {
    backlightState = [v3 backlightState];
    additions = [v4 additions];
    v5 = [(BLSHBacklightEnvironmentStateMachine *)complete _lock_allTransitionsDidBeginUpdateBacklightState:backlightState environmentFilter:additions];
  }

  return v5;
}

uint64_t __59__BLSHBacklightEnvironmentStateMachine_completedOperation___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  [*(a1 + 32) UTF8String];
  v5 = abort_with_payload();
  return __92__BLSHBacklightEnvironmentStateMachine__lock_numTransitionsDidNotBeginUpdateBacklightState___block_invoke(v5);
}

uint64_t __92__BLSHBacklightEnvironmentStateMachine__lock_numTransitionsDidNotBeginUpdateBacklightState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUpdatingInitialState])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isUpdatedToBacklightState:*(a1 + 32)] ^ 1;
  }

  return v4;
}

- (BLSHBacklightEnvironmentStateMachineDelegate)lock_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);

  return WeakRetained;
}

- (int)_lock_debugDescription
{
  selfCopy = self;
  if (self)
  {
    v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
    v3 = v2;
    if (selfCopy[34] >= 1)
    {
      v4 = [v2 appendInt:? withName:?];
    }

    v5 = [v3 appendObject:*(selfCopy + 7) withName:@"updatingVisualState"];
    v6 = *(selfCopy + 8);
    v7 = [OUTLINED_FUNCTION_9_0() appendObject:? withName:? skipIfNil:?];
    v8 = [v3 appendObject:*(selfCopy + 2) withName:@"presentation"];
    v9 = [v3 appendObject:*(selfCopy + 9) withName:@"updatingSpecifier"];
    v10 = *(selfCopy + 14);
    v11 = NSStringFromBLSBacklightState();
    [v3 appendString:v11 withName:@"target"];

    if (*(selfCopy + 14) != *(selfCopy + 15))
    {
      v12 = NSStringFromBLSBacklightState();
      [v3 appendString:v12 withName:@"performEventTarget"];
    }

    v13 = [v3 appendBool:*(selfCopy + 140) withName:@"pendingNotifyBeganUpdatingState"];
    v14 = [v3 appendBool:*(selfCopy + 141) withName:@"updatingState"];
    v15 = *(selfCopy + 13);
    v16 = [OUTLINED_FUNCTION_9_0() appendObject:? withName:? skipIfNil:?];
    v17 = *(selfCopy + 10);
    [OUTLINED_FUNCTION_9_0() appendArraySection:? withName:? skipIfEmpty:?];
    v18 = *(selfCopy + 11);
    [OUTLINED_FUNCTION_9_0() appendArraySection:? withName:? skipIfEmpty:?];
    v19 = *(selfCopy + 12);
    [OUTLINED_FUNCTION_9_0() appendArraySection:? withName:? skipIfEmpty:?];
    selfCopy = [v3 build];
  }

  return selfCopy;
}

- (id)_lock_descriptionOfUpdatingTransitionStatesToBacklightState:(int)state shouldFilter:(char)filter countOnly:
{
  if (self)
  {
    v8 = *(self + 56);
    additions = [*(self + 104) additions];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    v13 = __123__BLSHBacklightEnvironmentStateMachine__lock_descriptionOfUpdatingTransitionStatesToBacklightState_shouldFilter_countOnly___block_invoke;
    v14 = &__block_descriptor_40_e40_B16__0__BLSHEnvironmentTransitionState_8l;
    v15 = a2;
    v10 = [(BLSHBacklightEnvironmentStateMachine *)self _descriptionOfTransitionStates:v8 shouldFilter:state countOnly:filter environmentFilter:additions filter:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:(char)filter countOnly:
{
  if (self)
  {
    self = [(BLSHBacklightEnvironmentStateMachine *)self _descriptionOfTransitionStates:a2 shouldFilter:filter countOnly:0 environmentFilter:0 filter:?];
    v3 = vars8;
  }

  return self;
}

- (NSString)debugDescription
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  _lock_debugDescription = [(BLSHBacklightEnvironmentStateMachine *)self _lock_debugDescription];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_debugDescription;
}

- (uint64_t)isInvalid
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 142);
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)updateTransitionStatesForEnvironments:(uint64_t)environments toBacklightState:(void *)state forEvent:(void *)event withInitialSpecifier:(void *)specifier forReason:(void *)reason performBacklightRamp:(void *)ramp environmentTransformer:
{
  stateCopy = state;
  eventCopy = event;
  specifierCopy = specifier;
  reasonCopy = reason;
  if (self)
  {
    rampCopy = ramp;
    v19 = a2;
    os_unfair_lock_lock(self + 2);
    ++self[34]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(self + 2);
    [v19 firstObject];
    v20 = reasonCopy;
    v22 = v21 = eventCopy;
    v23 = rampCopy[2](rampCopy, v22);

    eventCopy = v21;
    reasonCopy = v20;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __179__BLSHBacklightEnvironmentStateMachine_updateTransitionStatesForEnvironments_toBacklightState_forEvent_withInitialSpecifier_forReason_performBacklightRamp_environmentTransformer___block_invoke;
    v26[3] = &unk_27841F540;
    v26[4] = self;
    environmentsCopy = environments;
    v27 = eventCopy;
    v28 = v23;
    v29 = stateCopy;
    v33 = stateCopy != 0;
    v31 = v20;
    v30 = specifierCopy;
    v24 = v23;
    [(BLSHBacklightEnvironmentStateMachine *)self enumerateRemoteEnvironmentsFirstFromSource:v19 environmentTransformer:rampCopy block:v26];

    [(BLSHBacklightEnvironmentStateMachine *)self endAddingEnvironments];
  }
}

- (id)_lock_transitionStateForEnvironment:(uint64_t)environment
{
  v3 = a2;
  if (environment)
  {
    v4 = [*(environment + 48) objectForKey:v3];
    if (!v4)
    {
      v4 = [BLSHEnvironmentTransitionState createStateForEnvironment:v3 delegate:environment];
      [*(environment + 48) setObject:v4 forKey:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enumerateRemoteEnvironmentsFirstFromSource:(void *)source environmentTransformer:(void *)transformer block:
{
  sourceCopy = source;
  transformerCopy = transformer;
  if (self)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __112__BLSHBacklightEnvironmentStateMachine_enumerateRemoteEnvironmentsFirstFromSource_environmentTransformer_block___block_invoke;
    v19[3] = &unk_27841F568;
    v20 = sourceCopy;
    v9 = [a2 bs_map:v19];
    OUTLINED_FUNCTION_0_5();
    v14 = 3221225472;
    v15 = __112__BLSHBacklightEnvironmentStateMachine_enumerateRemoteEnvironmentsFirstFromSource_environmentTransformer_block___block_invoke_2;
    v16 = &unk_27841F590;
    v17 = v10;
    v18 = transformerCopy;
    v11 = v9;
    v12 = MEMORY[0x223D70730](v13);
    v12[2](v12, 0);
    v12[2](v12, 1);
  }
}

- (void)updateAllEnvironmentsInPresentation
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(BLSHBacklightEnvironmentStateMachine *)self isInvalid])
  {
    v3 = bls_backlight_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = [(BLSHBacklightEnvironmentStateMachine *)self debugDescription];
      *buf = 134218242;
      selfCopy = self;
      v10 = 2114;
      v11 = v4;
      _os_log_fault_impl(&dword_21FD11000, v3, OS_LOG_TYPE_FAULT, "ESM:%p calling updateAllEnvironmentsInPresentation on invalidated state machine:%{public}@", buf, 0x16u);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    presentationEntries = [(BLSHBacklightEnvironmentPresentation *)self->_lock_presentation presentationEntries];
    os_unfair_lock_unlock(&self->_lock);
    OUTLINED_FUNCTION_12();
    v7 = presentationEntries;
    v3 = presentationEntries;
    BSDispatchMain();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)onMain_updateEnvironment:(uint64_t)environment
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (environment)
  {
    os_unfair_lock_lock((environment + 8));
    v4 = *(environment + 142);
    os_unfair_lock_unlock((environment + 8));
    if (v4 == 1)
    {
      visualState = bls_backlight_log();
      if (os_log_type_enabled(visualState, OS_LOG_TYPE_FAULT))
      {
        v6 = [environment debugDescription];
        OUTLINED_FUNCTION_1_0();
        v28 = v7;
        v29 = v8;
        v30 = v3;
        _os_log_fault_impl(&dword_21FD11000, visualState, OS_LOG_TYPE_FAULT, "ESM:%p calling updateEnvironment on invalidated state machine:%{public}@ environment:%{public}@", v27, 0x20u);
      }

      goto LABEL_11;
    }

    presentation = [environment presentation];
    os_unfair_lock_lock((environment + 8));
    v10 = *(environment + 112);
    v11 = [*(environment + 16) containsEnvironment:v3];
    presentationEntries = [*(environment + 16) presentationEntries];
    firstObject = [presentationEntries firstObject];
    environment = [firstObject environment];

    os_unfair_lock_unlock((environment + 8));
    if (!v11)
    {
      visualState = bls_backlight_log();
      if (!os_log_type_enabled(visualState, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      identifier = [v3 identifier];
      v23 = NSStringFromBLSBacklightState();
      OUTLINED_FUNCTION_1_0();
      v28 = identifier;
      v29 = v24;
      v30 = v25;
      _os_log_debug_impl(&dword_21FD11000, visualState, OS_LOG_TYPE_DEBUG, "ESM:%p will not update environment:%{public}@ (not in presentation) to backlightState:%{public}@", v27, 0x20u);

LABEL_9:
LABEL_11:

      goto LABEL_12;
    }

    visualState = [v3 visualState];
    identifier = BLSVisualStateForBacklightState(v10, [visualState updateFidelity], v3, *(environment + 24), *(environment + 32));
    if (([visualState isEqual:identifier]& 1) != 0)
    {
      v16 = bls_backlight_log();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_8:

        goto LABEL_9;
      }

      identifier2 = [v3 identifier];
      v26 = NSStringFromBLSBacklightState();
      OUTLINED_FUNCTION_1_0();
      v28 = identifier2;
      OUTLINED_FUNCTION_12_1();
      _os_log_debug_impl(&dword_21FD11000, v16, OS_LOG_TYPE_DEBUG, "ESM:%p not will update environment:%{public}@ (unchanged) to backlightState:%{public}@ visualState:%{public}@", v27, 0x2Au);
    }

    else
    {
      v16 = [(BLSHBacklightEnvironmentStateMachine *)environment transitionStateForEnvironment:v3];
      os_unfair_lock_lock((environment + 8));
      [*(environment + 56) addObject:v16];
      os_unfair_lock_unlock((environment + 8));
      v18 = bls_backlight_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        identifier3 = [v3 identifier];
        v20 = NSStringFromBLSBacklightState();
        OUTLINED_FUNCTION_1_0();
        v28 = identifier3;
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(&dword_21FD11000, v18, OS_LOG_TYPE_INFO, "ESM:%p will update environment:%{public}@ to backlightState:%{public}@ visualState:%{public}@", v27, 0x2Au);
      }

      v21 = environment == v3;

      identifier2 = [v3 presentationDate];
      [v16 updateToBacklightState:v10 forEvent:0 touchTargetable:v21 presentationDate:identifier2 sceneUpdate:0 performBacklightRamp:0];
    }

    goto LABEL_8;
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)transitionStateForEnvironment:(os_unfair_lock_s *)environment
{
  if (environment)
  {
    v3 = a2;
    os_unfair_lock_lock(environment + 2);
    v4 = [(BLSHBacklightEnvironmentStateMachine *)environment _lock_transitionStateForEnvironment:v3];

    os_unfair_lock_unlock(environment + 2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)onMain_updateToSpecifier:(uint64_t)specifier
{
  v4 = a2;
  if (specifier)
  {
    os_unfair_lock_lock((specifier + 8));
    v5 = *(specifier + 64);
    *(specifier + 64) = 0;

    v6 = *(specifier + 16);
    presentationEntries = [v6 presentationEntries];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__BLSHBacklightEnvironmentStateMachine_onMain_updateToSpecifier___block_invoke;
    v14[3] = &unk_27841F630;
    v14[4] = specifier;
    v8 = [presentationEntries bs_map:v14];
    v9 = [v8 mutableCopy];
    v10 = *(specifier + 64);
    *(specifier + 64) = v9;

    objc_storeStrong((specifier + 72), a2);
    WeakRetained = objc_loadWeakRetained((specifier + 152));
    os_unfair_lock_unlock((specifier + 8));
    if ([v8 count])
    {
      OUTLINED_FUNCTION_12();
      v12[1] = 3221225472;
      v12[2] = __65__BLSHBacklightEnvironmentStateMachine_onMain_updateToSpecifier___block_invoke_3;
      v12[3] = &unk_27841F678;
      v13 = v4;
      [(BLSHBacklightEnvironmentStateMachine *)specifier enumerateRemoteEnvironmentsFirstFromSource:v8 environmentTransformer:&__block_literal_global_189 block:v12];
    }

    else
    {
      [WeakRetained environmentStateMachine:specifier didUpdateToSpecifier:v4];
    }
  }
}

id __65__BLSHBacklightEnvironmentStateMachine_onMain_updateToSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 environment];
  v4 = [(BLSHBacklightEnvironmentStateMachine *)v2 _lock_transitionStateForEnvironment:v3];

  return v4;
}

- (void)populateOperationCompletedMismatchedBacklightStatesStruct:(uint64_t)struct backlightState:(uint64_t)state targetBacklightState:(void *)backlightState performEventHistory:(void *)history didBeginUpdateHistory:(void *)updateHistory didCompleteUpdateHistory:
{
  if (self)
  {
    v12 = *(self + 16);
    v13 = *(self + 136);
    v14 = *(self + 56);
    updateHistoryCopy = updateHistory;
    historyCopy = history;
    backlightStateCopy = backlightState;
    allObjects = [v14 allObjects];
    allObjects2 = [*(self + 64) allObjects];
    BYTE2(v21) = *(self + 104) != 0;
    LOWORD(v21) = *(self + 140);
    LODWORD(v20) = v13;
    LOBYTE(v19) = 0;
    [BLSHBacklightEnvironmentStateMachineAbortPayload populateOperationCompletedMismatchedBacklightStatesStruct:"populateOperationCompletedMismatchedBacklightStatesStruct:backlightState:targetBacklightState:performEventHistory:didBeginUpdateHistory:didCompleteUpdateHistory:envStateMachineIsNil:envStateMachinePresentation:addingEnvironmentsCount:envStateMachineUpdatingVisualStateTransitionStates:envStateMachineUpdatingDateSpecifierTransitionStates:envStateMachineBacklightState:envStateMachinePreviousBacklightState:envStateMachinePendingNotifyBeganUpdatingState:envStateMachineUpdatingState:envStateMachineUpdatingPresentation:" backlightState:a2 targetBacklightState:struct performEventHistory:state didBeginUpdateHistory:backlightStateCopy didCompleteUpdateHistory:historyCopy envStateMachineIsNil:updateHistoryCopy envStateMachinePresentation:v19 addingEnvironmentsCount:v12 envStateMachineUpdatingVisualStateTransitionStates:v20 envStateMachineUpdatingDateSpecifierTransitionStates:allObjects envStateMachineBacklightState:allObjects2 envStateMachinePreviousBacklightState:*(self + 112) envStateMachinePendingNotifyBeganUpdatingState:*(self + 120) envStateMachineUpdatingState:v21 envStateMachineUpdatingPresentation:?];
  }
}

- (id)_lock_etsLoggingStringForBacklightState:(uint64_t)state
{
  if (state)
  {
    if (*(state + 112) == a2 && *(state + 120) == a2)
    {
      v4 = NSStringFromBLSBacklightState();
    }

    else
    {
      objc_opt_new();
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_18();
      v9 = __80__BLSHBacklightEnvironmentStateMachine__lock_etsLoggingStringForBacklightState___block_invoke;
      v10 = &unk_27841E510;
      stateCopy = state;
      v13 = a2;
      v11 = v5;
      v6 = v5;
      [v6 appendProem:0 block:v8];
      v4 = [v6 description];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_lock_updateHistory:(uint64_t)history backlightState:(void *)state transitionState:(uint64_t)transitionState pendingTransitionStateCount:
{
  v15 = a2;
  stateCopy = state;
  if (self)
  {
    v10 = [BLSHEnvironmentUpdateData alloc];
    environment = [stateCopy environment];
    identifier = [environment identifier];
    v13 = [(BLSHEnvironmentUpdateData *)v10 initWithEnvironmentIdentifier:identifier newBacklightState:history pendingTransitionStateCount:transitionState];
    [v15 addObject:v13];

    v14 = [v15 count];
    if (v14 >= 6)
    {
      [v15 removeObjectsInRange:{0, v14 - 5}];
    }
  }
}

- (void)_checkCompletedOperationsToBacklightState:(void *)state transitionState:(int)transitionState shouldCompleteTransitionState:(void *)completeTransitionState setupWithLock:(void *)lock completeWithoutLock:
{
  stateCopy = state;
  completeTransitionStateCopy = completeTransitionState;
  if (self)
  {
    lockCopy = lock;
    os_unfair_lock_lock((self + 8));
    v12 = *(self + 104);
    v13 = *(self + 112);
    if (stateCopy)
    {
      v14 = [*(self + 56) containsObject:?] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    v15 = *(self + 140);
    if (transitionState)
    {
      v16 = [(BLSHBacklightEnvironmentStateMachine *)self _lock_transitionCompleteAfterCompletingTransitionState:stateCopy];
    }

    else
    {
      v16 = 0;
    }

    v34 = v15;
    if (v13 != a2 || *(self + 136))
    {
      v17 = v12;
      v18 = 0;
      v19 = 0;
      goto LABEL_10;
    }

    if (transitionState)
    {
      if (!v16)
      {
LABEL_24:
        v26 = OUTLINED_FUNCTION_14_1();
        v18 = [(BLSHBacklightEnvironmentStateMachine *)v26 _lock_allTransitionsDidBeginUpdateBacklightState:v27 environmentFilter:0];
        if (v18 && (v15 & 1) != 0)
        {
          v17 = v12;
          v16 = 0;
          v19 = 0;
          v18 = 1;
        }

        else
        {
          v17 = v12;
          v19 = [(BLSHBacklightEnvironmentStateMachine *)self _lock_isSetPresentationOperationComplete:v12];
          v16 = 0;
        }

LABEL_10:
        v20 = completeTransitionStateCopy[2];
        OUTLINED_FUNCTION_7_1();
        v21();
        os_unfair_lock_unlock((self + 8));
        v22 = lockCopy[2];
        OUTLINED_FUNCTION_7_1();
        v24 = v23();
        if (v13 == a2)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (!(v14 & 1 | ((v25 & 1) == 0)))
        {
          if (v16)
          {
            v28 = [BLSHCompletedUpdateOperation didCompleteUpdateToBacklightState:a2];
          }

          else
          {
            if ((v18 & v34) != 1)
            {
              if (v19)
              {
                v32 = OUTLINED_FUNCTION_13_1();
                [(BLSHBacklightEnvironmentStateMachine *)v32 completedOperation:v33];
              }

              goto LABEL_18;
            }

            v28 = [BLSHBegunUpdateOperation didBeginUpdateToBacklightState:a2];
          }

          v29 = v28;
          v30 = OUTLINED_FUNCTION_14_1();
          [(BLSHBacklightEnvironmentStateMachine *)v30 completedOperation:v31];
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    else if ([*(self + 56) count])
    {
      goto LABEL_24;
    }

    v17 = v12;
    v18 = 0;
    v19 = 0;
    v16 = 1;
    goto LABEL_10;
  }

LABEL_19:
}

- (BOOL)_lock_transitionCompleteAfterCompletingTransitionState:(uint64_t)state
{
  v3 = a2;
  if (state)
  {
    [*(state + 56) removeObject:v3];
    v4 = *(state + 136) <= 0 && [*(state + 56) count] == 0;
    v5 = OUTLINED_FUNCTION_13_1();
    [(BLSHBacklightEnvironmentStateMachine *)v5 _lock_ifPossibleStopTrackingTransitionState:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)completedOperation:(uint64_t)operation
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (operation)
  {
    os_unfair_lock_lock((operation + 8));
    backlightState = [v3 backlightState];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
    v8 = v6 & *(operation + 141);
    v73 = backlightState;
    if (v8)
    {
      *(operation + 141) = 0;
      v9 = *(operation + 112);
      if (v9 != backlightState && *(operation + 120) != backlightState)
      {
        v58 = backlightState;
        v59 = malloc_type_calloc(1uLL, 0x290uLL, 0x3EC24470uLL);
        [(BLSHBacklightEnvironmentStateMachine *)operation populateOperationCompletedMismatchedBacklightStatesStruct:v59 backlightState:v9 targetBacklightState:v58 performEventHistory:*(operation + 80) didBeginUpdateHistory:*(operation + 88) didCompleteUpdateHistory:*(operation + 96)];
        v60 = MEMORY[0x277CCACA8];
        v61 = NSStringFromBLSBacklightState();
        v62 = *(operation + 112);
        v63 = NSStringFromBLSBacklightState();
        v64 = *(operation + 120);
        v65 = NSStringFromBLSBacklightState();
        v66 = [v60 stringWithFormat:@"no more transitionStates but state:%@ != target:%@ and != performEventTarget:%@ eventHistory:%@ didBeginUpdateHistory:%@ didCompleteHistory:%@", v61, v63, v65, *(operation + 80), *(operation + 88), *(operation + 96)];

        BLSHRecordCriticalAssertFailure(v66, 1, 0);
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __59__BLSHBacklightEnvironmentStateMachine_completedOperation___block_invoke;
        v75[3] = &unk_27841F7C8;
        v78 = 656;
        v76 = v66;
        v77 = v59;
        v67 = v66;
        v68 = MEMORY[0x223D70730](v75);
        if (BLSHIsUnitTestRunning())
        {
          v68[2](v68);
        }

        else
        {
          v69 = dispatch_time(0, 1000000000);
          dispatch_after(v69, MEMORY[0x277D85CD0], v68);
        }
      }

      v10 = (operation + 140);
      if (*(operation + 140) != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = (operation + 140);
      if ((*(operation + 140) & isKindOfClass & 1) == 0 || backlightState != *(operation + 120))
      {
LABEL_10:
        v11 = 0;
        goto LABEL_11;
      }
    }

    *v10 = 0;
    v11 = 1;
LABEL_11:
    v12 = *(operation + 104);
    if ((v7 & (v12 == v3)) != 0 || (v13 = OUTLINED_FUNCTION_14_1(), [(BLSHBacklightEnvironmentStateMachine *)v13 _lock_isSetPresentationOperationComplete:v14]))
    {
      v15 = *(operation + 104);
      *(operation + 104) = 0;

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(operation + 16);
    WeakRetained = objc_loadWeakRetained((operation + 152));
    os_unfair_lock_unlock((operation + 8));
    v19 = bls_backlight_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v47 = *(operation + 112);
      v72 = NSStringFromBLSBacklightState();
      v48 = *(operation + 120);
      v70 = NSStringFromBLSBacklightState();
      v49 = *(operation + 80);
      v50 = *(operation + 96);
      OUTLINED_FUNCTION_5_4();
      v84 = v72;
      v85 = v51;
      v86 = v52;
      OUTLINED_FUNCTION_3_4();
      v92 = v11;
      v93 = v53;
      v94 = v54;
      v95 = v55;
      v96 = v12;
      v97 = v55;
      v98 = v56;
      v99 = v55;
      v100 = v57;
      _os_log_debug_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEBUG, "ESM:%p completedOperation:%{public}@ target:%{public}@ performEventTarget:%{public}@ updatingState:%{BOOL}u shouldNotifyUpdatedPresentation:%{BOOL}u shouldNotifyBegan:%{BOOL}u shouldNotifyCompleted:%{BOOL}u, setPresentationOperation:%{public}@ eventHistory:%{public}@ updateHistory:%{public}@", buf, 0x60u);
    }

    if (v16)
    {
      [WeakRetained environmentStateMachine:operation didUpdateToPresentation:v17];
    }

    v20 = &off_21FDA5000;
    if (v11)
    {
      os_unfair_lock_lock((operation + 8));
      if (*v10 == 1)
      {
        v21 = bls_backlight_log();
        v22 = v73;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = *(operation + 112);
          v71 = NSStringFromBLSBacklightState();
          v24 = *(operation + 120);
          NSStringFromBLSBacklightState();
          objc_claimAutoreleasedReturnValue();
          v25 = *(operation + 80);
          v26 = *(operation + 96);
          OUTLINED_FUNCTION_5_4();
          v84 = v71;
          v85 = v27;
          v86 = v28;
          v29 = v28;
          OUTLINED_FUNCTION_3_4();
          v92 = 0;
          v93 = v30;
          v94 = v31;
          v95 = v32;
          v96 = v33;
          v97 = v32;
          v98 = v34;
          _os_log_impl(&dword_21FD11000, v21, OS_LOG_TYPE_INFO, "ESM:%p (dropping didBeginUpdateToState callback) completedOperation:%{public}@ target:%{public}@ performEventTarget:%{public}@ updatingState:%{BOOL}u shouldNotifyUpdatedPresentation:%{BOOL}u shouldNotifyBegan:%{BOOL}u shouldNotifyCompleted:%{BOOL}u eventHistory:%{public}@ updateHistory:%{public}@", buf, 0x56u);
        }

        v35 = v8;

        os_unfair_lock_unlock((operation + 8));
        v36 = 0;
        v20 = &off_21FDA5000;
        if ((v35 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v38 = v8;
      os_unfair_lock_unlock((operation + 8));
      v22 = v73;
      [WeakRetained environmentStateMachine:operation didBeginUpdateToState:v73];
      v36 = 1;
      if (v38)
      {
LABEL_28:
        os_unfair_lock_lock((operation + 8));
        if (*(operation + 112) == v22 && *(operation + 120) == v22)
        {
          os_unfair_lock_unlock((operation + 8));
          [WeakRetained environmentStateMachine:operation didCompleteUpdateToState:v22];
        }

        else
        {
          v39 = bls_backlight_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = *(operation + 112);
            NSStringFromBLSBacklightState();
            v41 = v74 = v17;
            v42 = *(operation + 120);
            v43 = NSStringFromBLSBacklightState();
            v44 = *(operation + 80);
            v45 = *(operation + 96);
            *buf = *(v20 + 83);
            operationCopy = operation;
            v81 = 2114;
            v82 = v3;
            v83 = 2114;
            v84 = v41;
            v85 = 2114;
            v86 = v43;
            v87 = 1024;
            v88 = 1;
            v89 = 1024;
            v90 = v16;
            v91 = 1024;
            v92 = v36;
            v93 = 1024;
            v94 = 0;
            v95 = 2114;
            v96 = v44;
            v97 = 2114;
            v98 = v45;
            _os_log_impl(&dword_21FD11000, v39, OS_LOG_TYPE_INFO, "ESM:%p (dropping didCompleteUpdateToState callback) completedOperation:%{public}@ target:%{public}@ performEventTarget:%{public}@ updatingState:%{BOOL}u shouldNotifyUpdatedPresentation:%{BOOL}u shouldNotifyBegan:%{BOOL}u shouldNotifyCompleted:%{BOOL}u eventHistory:%{public}@ updateHistory:%{public}@", buf, 0x56u);

            v17 = v74;
          }

          os_unfair_lock_unlock((operation + 8));
        }
      }
    }

    else
    {
      v37 = v8;
      v36 = 0;
      v22 = v73;
      if (v37)
      {
        goto LABEL_28;
      }
    }

LABEL_34:
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)checkCompletedOperationsToBacklightState:(void *)state visualState:(void *)visualState transitionState:(int)transitionState isBeginUpdate:
{
  stateCopy = state;
  visualStateCopy = visualState;
  if (self)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    v12 = __123__BLSHBacklightEnvironmentStateMachine_checkCompletedOperationsToBacklightState_visualState_transitionState_isBeginUpdate___block_invoke;
    v13 = &unk_27841F780;
    transitionStateCopy = transitionState;
    selfCopy = self;
    v17 = a2;
    v15 = visualStateCopy;
    v16 = stateCopy;
    [(BLSHBacklightEnvironmentStateMachine *)self _checkCompletedOperationsToBacklightState:a2 transitionState:v15 shouldCompleteTransitionState:transitionState ^ 1 setupWithLock:v11 completeWithoutLock:&__block_literal_global_234];
  }
}

void __123__BLSHBacklightEnvironmentStateMachine_checkCompletedOperationsToBacklightState_visualState_transitionState_isBeginUpdate___block_invoke(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v72 = *MEMORY[0x277D85DE8];
  v11 = bls_backlight_log();
  v12 = v11;
  v13 = *(a1 + 64);
  if ((v13 & a4) != 0)
  {
    v14 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v14 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v11, v14))
  {
    v15 = "etsDidCompleteUpdateTo";
    if (v13)
    {
      v15 = "etsDidBeginUpdateTo";
    }

    v35 = v15;
    v36 = *(a1 + 32);
    v39 = [(BLSHBacklightEnvironmentStateMachine *)v36 _lock_etsLoggingStringForBacklightState:?];
    v37 = [*(a1 + 40) bls_shortLoggingString];
    v40 = a6;
    v41 = a3;
    v38 = a5;
    if (*(a1 + 64))
    {
      v16 = "";
    }

    else
    {
      v16 = "";
      if ([*(a1 + 40) isUpdatingInitialState] && objc_msgSend(*(a1 + 40), "isUpdatedToBacklightState:", *(*(a1 + 32) + 112)))
      {
        v16 = "completed before begun! ";
      }
    }

    v17 = [(BLSHBacklightEnvironmentStateMachine *)*(a1 + 32) _lock_descriptionOfUpdatingTransitionStatesToBacklightState:*(a1 + 64) shouldFilter:0 countOnly:?];
    v18 = *(a1 + 32);
    v19 = *(v18 + 136);
    v20 = *(v18 + 140);
    v21 = *(v18 + 104) != 0;
    v34 = *(v18 + 141);
    v22 = [*(a1 + 48) bls_shortLoggingString];
    *buf = 134221570;
    v43 = v36;
    v44 = 2080;
    v45 = v35;
    v46 = 2114;
    v47 = v39;
    v48 = 2114;
    v49 = v37;
    v50 = 2080;
    v51 = v16;
    v52 = 2114;
    v53 = v17;
    v54 = 1024;
    v55 = v19;
    v56 = 1024;
    v57 = v20;
    v58 = 1024;
    v59 = v38;
    v60 = 1024;
    v61 = v21;
    v62 = 1024;
    v63 = v40;
    v64 = 1024;
    v65 = v34;
    v66 = 1024;
    v67 = a4;
    v68 = 2114;
    v69 = v22;
    v70 = 1024;
    v71 = v41;
    _os_log_impl(&dword_21FD11000, v12, v14, "ESM:%p %s:%{public}@ for:%{public}@ %sets:%{public}@ ∂env:%d ∂begin:%{BOOL}u/%{BOOL}u ∂end:%{BOOL}u/%{BOOL}u ∂pres:%{BOOL}u/%{BOOL}u %{public}@ stale:%{BOOL}u", buf, 0x78u);
  }

  v23 = *(a1 + 64);
  v24 = 96;
  if (*(a1 + 64))
  {
    v24 = 88;
  }

  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(v25 + v24);
  v28 = *(a1 + 56);
  if (v23)
  {
    v29 = OUTLINED_FUNCTION_13_1();
    [BLSHBacklightEnvironmentStateMachine _lock_numTransitionsDidNotBeginUpdateBacklightState:v29];
  }

  else
  {
    [*(v25 + 56) count];
  }

  v30 = OUTLINED_FUNCTION_14_1();
  [(BLSHBacklightEnvironmentStateMachine *)v30 _lock_updateHistory:v31 backlightState:v28 transitionState:v26 pendingTransitionStateCount:v32];
  v33 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_lock_numTransitionsDidNotBeginUpdateBacklightState:(uint64_t)state
{
  if (!state)
  {
    return 0;
  }

  v1 = *(state + 56);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_18();
  v8 = __92__BLSHBacklightEnvironmentStateMachine__lock_numTransitionsDidNotBeginUpdateBacklightState___block_invoke;
  v9 = &__block_descriptor_40_e44_B24__0__BLSHEnvironmentTransitionState_8_B16l;
  v10 = v2;
  v4 = [v3 objectsPassingTest:v7];
  v5 = [v4 count];

  return v5;
}

- (uint64_t)_lock_isActiveTransitionState:(uint64_t)state
{
  v3 = a2;
  if (state)
  {
    if ([*(state + 56) containsObject:v3])
    {
      state = 1;
    }

    else
    {
      state = [*(state + 64) containsObject:v3];
    }
  }

  return state;
}

- (void)_lock_ifPossibleStopTrackingTransitionState:(uint64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (state)
  {
    v4 = OUTLINED_FUNCTION_13_1();
    v6 = [(BLSHBacklightEnvironmentStateMachine *)v4 _lock_isActiveTransitionState:v5];
    if (v6 & 1) != 0 || ([v3 isUpdatingInitialState] & 1) != 0 || (objc_msgSend(v3, "isUpdatingVisualState"))
    {
      environment = bls_backlight_log();
      if (os_log_type_enabled(environment, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_8_0();
        v13 = 1024;
        v14 = v6;
        _os_log_debug_impl(&dword_21FD11000, environment, OS_LOG_TYPE_DEBUG, "ESM:%p will not stop tracking transitionState:%{public}@ (isActiveTransitionState:%{BOOL}u)", v12, 0x1Cu);
      }
    }

    else
    {
      v9 = bls_backlight_log();
      if ([MEMORY[0x277CF09B8] isHostProcess])
      {
        v10 = OS_LOG_TYPE_INFO;
      }

      else
      {
        v10 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v9, v10))
      {
        OUTLINED_FUNCTION_8_0();
        _os_log_impl(&dword_21FD11000, v9, v10, "ESM:%p will stop tracking transitionState:%{public}@", v12, 0x16u);
      }

      v11 = *(state + 48);
      environment = [v3 environment];
      [v11 removeObjectForKey:environment];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)transitionState:(id)state didUpdateToDateSpecifier:(id)specifier
{
  v37 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  specifierCopy = specifier;
  os_unfair_lock_lock(&self->_lock);
  v8 = self->_updatingSpecifier;
  if (v8 && [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates containsObject:stateCopy])
  {
    environment = [stateCopy environment];
    v10 = [(BLSHPresentationDateSpecifier *)v8 dateSpecifierForEnvironment:environment];
    date = [v10 date];

    if (specifierCopy)
    {
      date2 = [specifierCopy date];
      if ([date2 isEqualToDate:date])
      {
      }

      else
      {

        if (date)
        {
LABEL_16:
          v21 = 0;
          goto LABEL_17;
        }
      }
    }

    else if (date)
    {
      goto LABEL_16;
    }

    [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates removeObject:stateCopy];
    v21 = 1;
LABEL_17:
    v22 = [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates count];
    v23 = bls_backlight_log();
    if ([MEMORY[0x277CF09B8] isHostProcess] | v21 ^ 1)
    {
      v24 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v24 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v23, v24))
    {
      bls_shortLoggingString = [specifierCopy bls_shortLoggingString];
      bls_shortLoggingString2 = [stateCopy bls_shortLoggingString];
      v30 = bls_backlight_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [(BLSHBacklightEnvironmentStateMachine *)&self->super.isa _lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:0 countOnly:?];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithLong:v22];
      }
      v25 = ;
      OUTLINED_FUNCTION_15_0();
      v34 = bls_shortLoggingString;
      v35 = 1024;
      *v36 = v21;
      *&v36[4] = v26;
      *&v36[6] = bls_shortLoggingString2;
      *&v36[14] = v26;
      *&v36[16] = v27;
      _os_log_impl(&dword_21FD11000, v23, v24, "ESM:%p etsUpdateTo:%{public}@ dateMatch:%{BOOL}u for:%{public}@ ets:%{public}@", buf, 0x30u);
    }

    v17 = v22 == 0;
    if (!v22)
    {
      lock_updatingDateSpecifierTransitionStates = self->_lock_updatingDateSpecifierTransitionStates;
      self->_lock_updatingDateSpecifierTransitionStates = 0;

      updatingSpecifier = self->_updatingSpecifier;
      self->_updatingSpecifier = 0;

      v17 = 1;
    }

    goto LABEL_9;
  }

  date = bls_backlight_log();
  if (os_log_type_enabled(date, OS_LOG_TYPE_DEBUG))
  {
    bls_shortLoggingString3 = [specifierCopy bls_shortLoggingString];
    bls_shortLoggingString4 = [stateCopy bls_shortLoggingString];
    v14 = [(BLSHBacklightEnvironmentStateMachine *)&self->super.isa _lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:0 countOnly:?];
    OUTLINED_FUNCTION_15_0();
    v34 = bls_shortLoggingString3;
    v35 = v15;
    *v36 = bls_shortLoggingString4;
    *&v36[8] = v15;
    *&v36[10] = v16;
    _os_log_debug_impl(&dword_21FD11000, date, OS_LOG_TYPE_DEBUG, "ESM:%p (stale) etsUpdateTo:%{public}@ for:%{public}@ ets:%{public}@", buf, 0x2Au);
  }

  v17 = 0;
LABEL_9:

  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  [(BLSHBacklightEnvironmentStateMachine *)self _lock_ifPossibleStopTrackingTransitionState:stateCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v17)
  {
    [WeakRetained environmentStateMachine:self didUpdateToSpecifier:v8];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_lock_allTransitionsDidBeginUpdateBacklightState:(void *)state environmentFilter:
{
  v22 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (self && *(self + 136) <= 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(self + 56);
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          if (!stateCopy || ([*(*(&v17 + 1) + 8 * v11) environment], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(stateCopy, "containsObject:", v13), v13, v14))
          {
            if (([v12 isUpdatingInitialState] & 1) != 0 || !objc_msgSend(v12, "isUpdatedToBacklightState:", a2))
            {
              v6 = 0;
              goto LABEL_17;
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_17:
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)initWithPresentation:(int *)a1 backlightState:(const char *)a2 delegate:inactiveBudgetPolicy:osTimerProvider:platformProvider:.cold.1(int *a1, const char *a2)
{
  v4 = MEMORY[0x277CCACA8];
  v14 = [(BLSHBacklightEnvironmentStateMachine *)a1 _lock_debugDescription];
  v5 = [v4 stringWithFormat:@"%p cannot initialize with nil presentation, %@"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, a1, v14, v15);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)onMain_setPresentation:(NSObject *)a3 withTargetBacklightState:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromBLSBacklightState();
  v6 = [a2 valueForKeyPath:@"identifier"];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "ESM: setPresentation: -> %@ environments %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)onMain_setPresentation:(void *)a1 withTargetBacklightState:(const char *)a2 .cold.2(void *a1, const char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v15 = [a1 debugDescription];
  v5 = [v4 stringWithFormat:@"%p cannot set nil presentation, %@"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, a1, v15, v16);
  }

  v14 = v5;
  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)onMain_setPresentation:(NSObject *)a3 withTargetBacklightState:.cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a1 debugDescription];
  v8 = 134218498;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = a2;
  _os_log_fault_impl(&dword_21FD11000, a3, OS_LOG_TYPE_FAULT, "ESM:%p calling setPresentation on invalidated state machine:%{public}@ presentation:%{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_6_3(a1 a2)];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_3(&dword_21FD11000, v4, v5, "ESM:%p finishing (performEvent immediate setPresentation complete) performEvent:%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_2(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_6_3(a1 a2)];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_3(&dword_21FD11000, v4, v5, "ESM:%p finishing (performEvent immediate begin update) performEvent:%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_3(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_6_3(a1 a2)];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_3(&dword_21FD11000, v4, v5, "ESM:%p finishing (performEvent immediate complete) performEvent:%{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end