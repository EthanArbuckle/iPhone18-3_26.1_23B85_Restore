@interface BLSHEnvironmentTransitionState
+ (id)createStateForEnvironment:(id)a3 delegate:(id)a4;
- (BOOL)isAnimating;
- (BOOL)isUpdatedToBacklightState:(int64_t)a3;
- (BOOL)isUpdatingInitialState;
- (BOOL)isUpdatingVisualState;
- (BOOL)performBacklightRampIfPendingForReason:(id)a3;
- (id)debugDescription;
- (id)descriptionAbbreviated:(uint64_t)a1;
- (id)initWithEnvironment:(void *)a3 delegate:;
- (id)visualStateForBacklightState:(uint64_t)a3 requestedFidelity:;
- (void)animationCompleteToTarget:(uint64_t)a1 forEvent:(void *)a2 animated:(void *)a3;
- (void)dealloc;
- (void)sceneContentsUpdatedToTarget:(uint64_t)a1 forEvent:(void *)a2 animated:(void *)a3;
- (void)updateToBacklightState:(int64_t)a3 forEvent:(id)a4 touchTargetable:(BOOL)a5 presentationDate:(id)a6 sceneUpdate:(id)a7 performBacklightRamp:(id)a8;
- (void)updateToDateSpecifier:(id)a3;
- (void)updateToTarget:(uint64_t)a3 touchTargetable:(void *)a4 presentationDate:(void *)a5 sceneUpdate:(uint64_t)a6 requestedFidelity:;
@end

@implementation BLSHEnvironmentTransitionState

- (BOOL)isUpdatingInitialState
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_requestingFidelityTarget)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    lock_inProgressUpdateTarget = self->_lock_inProgressUpdateTarget;
    if (lock_inProgressUpdateTarget)
    {
      v3 = ![(BLSHEnvironmentTransitionStateTarget *)lock_inProgressUpdateTarget didUpdateInitialState];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isUpdatingVisualState
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_inProgressUpdateTarget)
  {
    v3 = 1;
  }

  else
  {
    v3 = self->_lock_requestingFidelityTarget != 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 72) identifier];
  v6 = 134218242;
  v7 = a1;
  v8 = 2114;
  v9 = v4;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "ETS:%p:%{public}@ transitionState dealloc", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)createStateForEnvironment:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BLSHEnvironmentTransitionState alloc] initWithEnvironment:v6 delegate:v5];

  return v7;
}

id __57__BLSHEnvironmentTransitionState_descriptionAbbreviated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 72) identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"<NULL>";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", *(a1 + 40)];
  [v2 appendString:v5 withName:v6];

  v7 = *(a1 + 40);
  if (*(v7 + 64) == 1)
  {
    [*(a1 + 32) appendString:@"animating" withName:0];
    v7 = *(a1 + 40);
  }

  v8 = *(v7 + 24);
  if (v8)
  {
    v9 = [*(a1 + 32) appendObject:v8 withName:@"->"];
    v7 = *(a1 + 40);
  }

  result = *(v7 + 32);
  if (result)
  {
    v11 = [result didUpdateInitialState];
    v12 = [*(*(a1 + 40) + 32) didCompleteAnimation];
    v13 = *(a1 + 32);
    v14 = @"-()->";
    v15 = @"-->";
    if ((v11 & v12) != 0)
    {
      v15 = @"->|";
    }

    if (v11 & 1 | ((v12 & 1) == 0))
    {
      v14 = v15;
    }

    if (v11)
    {
      v16 = v12 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = @"-•->";
    }

    else
    {
      v17 = v14;
    }

    result = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:v17];
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v18 = *(*(a1 + 40) + 40);
    if (v18)
    {
      v19 = [*(a1 + 32) appendObject:v18 withName:@"completedOld"];
      if (*(*(a1 + 40) + 48))
      {
        v20 = *(*(a1 + 40) + 48);
      }

      else
      {
        v20 = @"<NULL>";
      }

      return [*(a1 + 32) appendObject:v20 withName:@"newPending"];
    }
  }

  return result;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_lock_animating withName:@"animating"];
  v5 = [v3 appendObject:self->_lock_requestingFidelityTarget withName:@"requestingFidelityTarget" skipIfNil:1];
  v6 = [v3 appendObject:self->_lock_inProgressUpdateTarget withName:@"inProgressUpdateTarget" skipIfNil:1];
  v7 = [(BLSHBacklightSceneHostEnvironment *)self->_environment debugDescription];
  v8 = [v3 appendObject:v7 withName:@"environment"];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%p:%@>", self->_delegate, objc_opt_class()];
  [v3 appendString:v9 withName:@"delegate"];

  v10 = [(BLSHEnvironmentTransitionStateTarget *)self->_lock_animationCompletedForOldTarget debugDescription];
  v11 = [v3 appendObject:v10 withName:@"completed" skipIfNil:1];

  v12 = [(BLSHEnvironmentTransitionStateTarget *)self->_lock_animationCompletedWithNewTarget debugDescription];
  v13 = [v3 appendObject:v12 withName:@"wasPending" skipIfNil:1];

  v14 = [v3 build];

  return v14;
}

- (BOOL)isAnimating
{
  os_unfair_lock_lock(&self->_lock);
  lock_animating = self->_lock_animating;
  os_unfair_lock_unlock(&self->_lock);
  return lock_animating;
}

- (BOOL)isUpdatedToBacklightState:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (([(BLSHBacklightSceneHostEnvironment *)self->_environment clientHasDelegate]& 1) != 0)
  {
    v8 = [(BLSHBacklightSceneHostEnvironment *)self->_environment visualState];
    v9 = -[BLSHEnvironmentTransitionState visualStateForBacklightState:requestedFidelity:](self, a3, [v8 updateFidelity]);
    v10 = [v9 isEqual:v8];

    v11 = *MEMORY[0x277D85DE8];
    return v10;
  }

  else
  {
    v5 = bls_scenes_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      environment = self->_environment;
      v13 = NSStringFromBLSBacklightState();
      v14 = 134218498;
      v15 = self;
      v16 = 2048;
      v17 = environment;
      v18 = 2114;
      v19 = v13;
      _os_log_debug_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEBUG, "ETS:%p: client disabled:%p, pretending state matches:%{public}@", &v14, 0x20u);
    }

    v6 = *MEMORY[0x277D85DE8];
    return 1;
  }
}

- (void)updateToBacklightState:(int64_t)a3 forEvent:(id)a4 touchTargetable:(BOOL)a5 presentationDate:(id)a6 sceneUpdate:(id)a7 performBacklightRamp:(id)a8
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a4;
  os_unfair_lock_lock(&self->_lock);
  v17 = [BLSHEnvironmentTransitionStateTarget alloc];
  v18 = self->_lock_nextSequenceID + 1;
  self->_lock_nextSequenceID = v18;
  v19 = [(BLSHBacklightSceneHostEnvironment *)self->_environment identifier];
  v20 = [(BLSHEnvironmentTransitionStateTarget *)v17 initWithSequenceID:v18 backlightState:a3 triggerEvent:v16 backlightRampBlock:v15 forIdentifier:v19 previousTarget:self->_lock_requestingFidelityTarget];

  objc_storeStrong(&self->_lock_requestingFidelityTarget, v20);
  os_unfair_lock_unlock(&self->_lock);
  environment = self->_environment;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __132__BLSHEnvironmentTransitionState_updateToBacklightState_forEvent_touchTargetable_presentationDate_sceneUpdate_performBacklightRamp___block_invoke;
  v26[3] = &unk_27841EA50;
  v26[4] = self;
  v27 = v20;
  v30 = a5;
  v28 = v13;
  v29 = v14;
  v22 = v14;
  v23 = v13;
  v24 = v20;
  BLSHGetRequestedFidelityForBacklightState(a3, environment, v26);
}

- (void)updateToTarget:(uint64_t)a3 touchTargetable:(void *)a4 presentationDate:(void *)a5 sceneUpdate:(uint64_t)a6 requestedFidelity:
{
  v102 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v67 = a4;
  v65 = a5;
  if (a1)
  {
    v71 = [v10 triggerEvent];
    os_unfair_lock_lock((a1 + 8));
    v68 = *(a1 + 24);
    if (v68 == v10)
    {
      v11 = *(a1 + 24);
      *(a1 + 24) = 0;
    }

    v69 = -[BLSHEnvironmentTransitionState visualStateForBacklightState:requestedFidelity:](a1, [v10 backlightState], a6);
    v12 = [[BLSHEnvironmentTransitionStateTarget alloc] initWithTarget:v10 visualState:v69 presentationDate:v67];
    v13 = [*(a1 + 72) visualState];
    v14 = [*(a1 + 72) presentationDate];
    v15 = [(BLSHEnvironmentTransitionStateTarget *)v12 isEqualToVisualState:v13 presentationDate:v14];

    v16 = *(a1 + 32);
    if (v71)
    {
      v17 = [v71 isEnvironmentTransitionAnimated];
    }

    else
    {
      v17 = 0;
    }

    v70 = v16;
    if (v16)
    {
      v18 = [v16 visualState];
      v19 = [v70 presentationDate];
      v20 = [(BLSHEnvironmentTransitionStateTarget *)v12 isEqualToVisualState:v18 presentationDate:v19];
      v21 = v20 ^ 1;
    }

    else
    {
      v21 = 1;
      v20 = 1;
    }

    v22 = *(a1 + 64);
    if (v22 == 1)
    {
      if (v71)
      {
        v23 = [v71 previousState];
        v24 = v23 == [(BLSHEnvironmentTransitionStateTarget *)v12 backlightState];
        v25 = v24;
        if (v24 || ((v17 ^ 1) & 1) != 0)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v25 = 1;
    }

    else
    {
      if (v17)
      {
LABEL_16:
        v25 = [*(a1 + 72) isAlwaysOnEnabledForEnvironment];
        goto LABEL_19;
      }

      v25 = 0;
    }

LABEL_19:
    if ((v15 & v20) == 1)
    {
      v26 = v22 & (v25 ^ 1);
    }

    else
    {
      v26 = 1;
    }

    v66 = [*(a1 + 72) identifier];
    if (v68 != v10)
    {
      os_unfair_lock_unlock((a1 + 8));
      v27 = bls_scenes_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [(BLSHEnvironmentTransitionStateTarget *)v12 pendingBacklightRamp];
        *buf = 134219522;
        v88 = a1;
        v89 = 2114;
        v90 = v66;
        v91 = 2114;
        v92 = v12;
        v93 = 2114;
        *v94 = v68;
        *&v94[8] = 1024;
        *v95 = [v28 hasPendingRamp];
        *&v95[4] = 2114;
        *v96 = v71;
        *&v96[8] = 1024;
        *v97 = v26;
        _os_log_impl(&dword_21FD11000, v27, OS_LOG_TYPE_INFO, "ETS:%p:%{public}@ will skip update to oldTarget:%{public}@ was replaced with newPartialTarget:%{public}@ hadBacklightRamp:%{BOOL}u oldEvent:%{public}@ wouldTransitionHaveBeenNeeded:%{BOOL}U", buf, 0x40u);
      }

      goto LABEL_25;
    }

    if (v26)
    {
      objc_storeStrong((a1 + 32), v12);
      *(a1 + 64) = v25;
      os_unfair_lock_unlock((a1 + 8));
      v29 = bls_scenes_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v50 = [(BLSHEnvironmentTransitionStateTarget *)v12 pendingBacklightRamp];
        v51 = [v50 hasPendingRamp];
        v52 = [v71 bls_shortLoggingString];
        *buf = 134219778;
        v88 = a1;
        v89 = 2114;
        v90 = v66;
        v91 = 2114;
        v92 = v12;
        v93 = 1024;
        *v94 = v70 != 0;
        *&v94[4] = 1024;
        *&v94[6] = v25;
        *v95 = 1024;
        *&v95[2] = v51;
        *v96 = 2114;
        *&v96[2] = v52;
        *v97 = 1024;
        *&v97[2] = a3;
        _os_log_debug_impl(&dword_21FD11000, v29, OS_LOG_TYPE_DEBUG, "ETS:%p:%{public}@ will update to target:%{public}@ wasUpdating:%{BOOL}u animated:%{BOOL}u hasBacklightRamp:%{BOOL}u event:%{public}@ touchTarget:%{BOOL}u", buf, 0x42u);
      }

      objc_initWeak(buf, a1);
      v63 = [objc_alloc(MEMORY[0x277CF0848]) initWithDate:v67 fidelity:objc_msgSend(v69 userObject:{"updateFidelity"), v65}];
      v30 = v71;
      [v30 eventID];
      [v30 state];
      BLSEncode4Chars();
      BLSEncode4Chars();
      kdebug_trace();

      v62 = *(a1 + 72);
      v31 = v81;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __112__BLSHEnvironmentTransitionState_updateToTarget_touchTargetable_presentationDate_sceneUpdate_requestedFidelity___block_invoke;
      v81[3] = &unk_27841EA78;
      v32 = v30;
      v82 = v32;
      v33 = v66;
      v83 = v33;
      v86 = v25;
      v34 = v12;
      v84 = v34;
      objc_copyWeak(&v85, buf);
      if (v25)
      {
        v35 = [(BLSHEnvironmentTransitionStateTarget *)v34 pendingBacklightRamp];
        v60 = [v35 hasPendingRamp];
        v61 = v35;
        if (v60)
        {
          v36 = v77;
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __112__BLSHEnvironmentTransitionState_updateToTarget_touchTargetable_presentationDate_sceneUpdate_requestedFidelity___block_invoke_2;
          v77[3] = &unk_27841EAA0;
          v55 = &v78;
          v78 = v32;
          v56 = &v79;
          v79 = v33;
          v57 = &v80;
          v80 = v34;
        }

        else
        {
          v36 = 0;
        }

        v40 = v72;
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __112__BLSHEnvironmentTransitionState_updateToTarget_touchTargetable_presentationDate_sceneUpdate_requestedFidelity___block_invoke_3;
        v72[3] = &unk_27841EAC8;
        v73 = v32;
        v74 = v33;
        v33 = &v76;
        objc_copyWeak(&v76, buf);
        v58 = &v73;
        v59 = &v74;
        v31 = v75;
        v75[0] = v34;
        v75[1] = a1;
        v39 = v60;
      }

      else
      {
        v36 = 0;
        v39 = 0;
        v40 = 0;
      }

      [v62 updateToVisualState:v69 presentationDateSpecifier:v63 animated:v25 triggerEvent:v32 touchTargetable:a3 sceneContentsUpdated:v81 performBacklightRamp:v36 animationComplete:v40];
      if (v25)
      {

        objc_destroyWeak(v33);
      }

      if (v39)
      {
      }

      objc_destroyWeak(&v85);

      objc_destroyWeak(buf);
      goto LABEL_57;
    }

    v37 = bls_scenes_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = [(BLSHEnvironmentTransitionStateTarget *)v12 pendingBacklightRamp];
      *buf = 134220034;
      v88 = a1;
      v89 = 2114;
      v90 = v66;
      v91 = 2114;
      v92 = v12;
      v93 = 1024;
      *v94 = v70 != 0;
      *&v94[4] = 1024;
      *&v94[6] = v25;
      *v95 = 1024;
      *&v95[2] = [v38 hasPendingRamp];
      *v96 = 2114;
      *&v96[2] = v71;
      *v97 = 1024;
      *&v97[2] = a3;
      v98 = 2114;
      v99 = v70;
      _os_log_impl(&dword_21FD11000, v37, OS_LOG_TYPE_INFO, "ETS:%p:%{public}@ redundant update to target:%{public}@ wasUpdating:%{BOOL}u animated:%{BOOL}u hasBacklightRamp:%{BOOL}u event:%{public}@ touchTarget:%{BOOL}u existingInProgress:%{public}@", buf, 0x4Cu);
    }

    if (v70)
    {
      if (v21)
      {
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"ETS:%p:%@ targetMatchesInProgress=NO — redundant update to target:%@ wasUpdating:%u animated:%u event:%@ touchTarget:%u existingInProgress:%@", a1, v66, v12, 1, v25, v71, a3, v70];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [BLSHEnvironmentTransitionState updateToTarget:a1 touchTargetable:v53 presentationDate:? sceneUpdate:? requestedFidelity:?];
        }

        v54 = v53;
        [v53 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x21FD2942CLL);
      }

      if (([BLSHEnvironmentTransitionState updateToTarget:v12 touchTargetable:v70 presentationDate:(a1 + 8) sceneUpdate:? requestedFidelity:?]& 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 8));
    }

    [BLSHEnvironmentTransitionState updateToTarget:v12 touchTargetable:a1 presentationDate:? sceneUpdate:? requestedFidelity:?];
LABEL_41:
    os_unfair_lock_lock((a1 + 8));
    v27 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 8));
    if (v27 == v70)
    {
      v44 = [(BLSHEnvironmentTransitionStateTarget *)v12 pendingBacklightRamp];
      v45 = v44;
      v46 = 0.0;
      if (v25)
      {
        v46 = 0.5;
      }

      [v44 performBacklightRampIfNeededWithDuration:v46];

      if (v70)
      {
        goto LABEL_25;
      }

      [(BLSHEnvironmentTransitionStateTarget *)v12 setDidCompleteAnimation:1];
      v47 = *(a1 + 16);
      v48 = [(BLSHEnvironmentTransitionStateTarget *)v12 backlightState];
      v41 = [(BLSHEnvironmentTransitionStateTarget *)v12 visualState];
      [v47 transitionState:a1 didCompleteUpdateToBacklightState:v48 visualState:v41];
    }

    else
    {
      v41 = bls_scenes_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = [(BLSHEnvironmentTransitionStateTarget *)v12 pendingBacklightRamp];
        v43 = [v42 hasPendingRamp];
        *buf = 134220290;
        v88 = a1;
        v89 = 2114;
        v90 = v66;
        v91 = 2114;
        v92 = v12;
        v93 = 1024;
        *v94 = v70 != 0;
        *&v94[4] = 1024;
        *&v94[6] = v25;
        *v95 = 1024;
        *&v95[2] = v43;
        *v96 = 2114;
        *&v96[2] = v71;
        *v97 = 1024;
        *&v97[2] = a3;
        v98 = 2114;
        v99 = v70;
        v100 = 2114;
        v101 = v27;
        _os_log_impl(&dword_21FD11000, v41, OS_LOG_TYPE_INFO, "ETS:%p:%{public}@ (now obsolete - will not call backlight ramp or animation completion) redundant update to target:%{public}@ wasUpdating:%{BOOL}u animated:%{BOOL}u hasBacklightRamp:%{BOOL}u event:%{public}@ touchTarget:%{BOOL}u oldInProgress:%{public}@ currentInProgress:%{public}@", buf, 0x56u);
      }
    }

LABEL_25:
LABEL_57:
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (BOOL)performBacklightRampIfPendingForReason:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_inProgressUpdateTarget;
  v6 = [(BLSHEnvironmentTransitionStateTarget *)v5 pendingBacklightRamp];
  v7 = [v6 hasPendingRamp];

  if ((v7 & 1) == 0)
  {
    v8 = self->_lock_requestingFidelityTarget;

    v5 = v8;
  }

  v9 = [(BLSHEnvironmentTransitionStateTarget *)v5 triggerEvent];
  v10 = [v9 isEnvironmentTransitionAnimated];

  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v11 = 0.5;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [(BLSHEnvironmentTransitionStateTarget *)v5 pendingBacklightRamp];
  v13 = [v12 performBacklightRampIfNeededWithDuration:v11];

  if (v13)
  {
    v14 = bls_scenes_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(BLSHBacklightSceneHostEnvironment *)self->_environment identifier];
      v18 = 134219010;
      v19 = self;
      v20 = 2114;
      v21 = v15;
      v22 = 2112;
      v23 = v4;
      v24 = 2048;
      v25 = v11;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&dword_21FD11000, v14, OS_LOG_TYPE_INFO, "ETS:%p:%{public}@ (%@) did perform backlightRamp duration:%.2f to target:%{public}@ ", &v18, 0x34u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

void __112__BLSHEnvironmentTransitionState_updateToTarget_touchTargetable_presentationDate_sceneUpdate_requestedFidelity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 eventID];
  [v2 state];
  v3 = *(a1 + 40);
  BLSEncode4Chars();
  v4 = *(a1 + 40);
  BLSEncode4Chars();

  kdebug_trace();
  if ((*(a1 + 64) & 1) == 0)
  {
    v5 = [*(a1 + 48) pendingBacklightRamp];
    [v5 performBacklightRampIfNeededWithDuration:0.0];
  }

  [*(a1 + 48) setDidUpdateInitialState:1];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = *(a1 + 64);
  v9 = WeakRetained;
  [BLSHEnvironmentTransitionState sceneContentsUpdatedToTarget:*(a1 + 48) forEvent:*(a1 + 32) animated:?];
  if (*(a1 + 64) == 1)
  {
    if (![*(a1 + 48) didCompleteAnimation])
    {
      goto LABEL_5;
    }

    v8 = *(a1 + 64);
  }

  [BLSHEnvironmentTransitionState animationCompleteToTarget:v9 forEvent:*(a1 + 48) animated:*(a1 + 32)];
LABEL_5:
}

void __112__BLSHEnvironmentTransitionState_updateToTarget_touchTargetable_presentationDate_sceneUpdate_requestedFidelity___block_invoke_2(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  [v4 eventID];
  [v4 state];
  v5 = *(a1 + 40);
  BLSEncode4Chars();
  v6 = *(a1 + 40);
  BLSEncode4Chars();

  kdebug_trace();
  v7 = [*(a1 + 48) pendingBacklightRamp];
  [v7 performBacklightRampIfNeededWithDuration:a2];
}

void __112__BLSHEnvironmentTransitionState_updateToTarget_touchTargetable_presentationDate_sceneUpdate_requestedFidelity___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  [v2 eventID];
  [v2 state];
  v3 = *(a1 + 40);
  BLSEncode4Chars();
  v4 = *(a1 + 40);
  BLSEncode4Chars();

  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = [*(a1 + 48) pendingBacklightRamp];
  v7 = [v6 performBacklightRampIfNeededWithDuration:0.0];

  if (v7)
  {
    v8 = bls_scenes_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v10 = *(a1 + 56);
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = 134218754;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      _os_log_error_impl(&dword_21FD11000, v8, OS_LOG_TYPE_ERROR, "ETS:%p:%{public}@ target:%{public}@ snapped because client failed to perform backlight ramp for event:%{public}@", &v14, 0x2Au);
    }
  }

  [*(a1 + 48) setDidCompleteAnimation:1];
  if ([*(a1 + 48) didUpdateInitialState])
  {
    [BLSHEnvironmentTransitionState animationCompleteToTarget:*(a1 + 48) forEvent:*(a1 + 32) animated:?];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateToDateSpecifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_environment;
  v6 = bls_scenes_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v14 = self;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v4;
    _os_log_debug_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEBUG, "ETS:%p:%{public}@ update to dateSpecifier:%{public}@", buf, 0x20u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__BLSHEnvironmentTransitionState_updateToDateSpecifier___block_invoke;
  v10[3] = &unk_27841EAF0;
  v10[4] = self;
  v11 = v5;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [(BLSHBacklightSceneHostEnvironment *)v8 updateToDateSpecifier:v7 sceneContentsUpdated:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __56__BLSHEnvironmentTransitionState_updateToDateSpecifier___block_invoke(uint64_t a1)
{
  v2 = bls_scenes_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__BLSHEnvironmentTransitionState_updateToDateSpecifier___block_invoke_cold_1(a1, v2);
  }

  return [*(*(a1 + 32) + 16) transitionState:*(a1 + 32) didUpdateToDateSpecifier:*(a1 + 48)];
}

- (id)initWithEnvironment:(void *)a3 delegate:
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = BLSHEnvironmentTransitionState;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v8;
    if (v8)
    {
      *(v8 + 2) = 0;
      objc_storeStrong(v8 + 9, a2);
      objc_storeStrong(a1 + 2, a3);
      v9 = bls_scenes_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = [a1[9] identifier];
        OUTLINED_FUNCTION_0_3();
        v16 = v13;
        _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "ETS:%p:%{public}@ transitionState init", buf, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

- (id)descriptionAbbreviated:(uint64_t)a1
{
  if (a1)
  {
    v4 = objc_opt_new();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__BLSHEnvironmentTransitionState_descriptionAbbreviated___block_invoke;
    v8[3] = &unk_27841EA28;
    v9 = v4;
    v10 = a1;
    v11 = a2;
    v5 = v4;
    [v5 appendProem:0 block:v8];
    v6 = [v5 description];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)visualStateForBacklightState:(uint64_t)a3 requestedFidelity:
{
  if (a1)
  {
    v6 = *(a1 + 72);
    v7 = [*(a1 + 16) inactiveBudgetPolicy];
    v8 = [*(a1 + 16) osTimerProvider];
    v9 = BLSVisualStateForBacklightState(a2, a3, v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)sceneContentsUpdatedToTarget:(uint64_t)a1 forEvent:(void *)a2 animated:(void *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    os_unfair_lock_unlock((a1 + 8));
    v9 = bls_scenes_log();
    v10 = v9;
    v11 = v7 == v5 && v8 == 0;
    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if (os_log_type_enabled(v9, v12))
    {
      [a1 environment];
      v13 = HIDWORD(v24) = v7 == v5 && v8 == 0;
      v14 = [v13 identifier];
      OUTLINED_FUNCTION_0_3();
      v11 = v7 == v5 && v8 == 0;
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_3_1(&dword_21FD11000, v15, v16, "ETS:%p:%{public}@ scene contents updated to target:%{public}@ event:%{public}@ animated:%{BOOL}u inProgressUpdateTarget:%{public}@ requestingFidelityTarget:%{public}@", v17, v18, v19, v20, v23, v24, v25);
    }

    if (v11)
    {
      v21 = *(a1 + 16);
      [v5 backlightState];
      [v5 visualState];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_3() transitionState:? didBeginUpdateToBacklightState:? visualState:?];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)animationCompleteToTarget:(uint64_t)a1 forEvent:(void *)a2 animated:(void *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v8 = *(a1 + 32);
    v9 = [v6 isEqual:v8];
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (v9)
    {
      *(a1 + 64) = 0;
      v12 = *(a1 + 32);
      *(a1 + 32) = 0;

      v13 = *(a1 + 48);
      *(a1 + 48) = 0;

      v14 = *(a1 + 40);
      *(a1 + 40) = 0;
    }

    else
    {
      objc_storeStrong((a1 + 40), a2);
      v15 = v8;
      v14 = *(a1 + 48);
      *(a1 + 48) = v15;
    }

    v16 = bls_scenes_log();
    v17 = v16;
    if (v11)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    if (os_log_type_enabled(v16, v18))
    {
      [a1 environment];
      v19 = HIDWORD(v32) = v11;
      v20 = [v19 identifier];
      [v7 bls_shortLoggingString];
      v21 = v33 = v7;
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_3_1(&dword_21FD11000, v22, v23, "ETS:%p:%{public}@ animationComplete to target:%{public}@ event:%{public}@ animated:%{BOOL}u inProgressUpdateTarget:%{public}@ requestingFidelityTarget:%{public}@", v24, v25, v26, v27, v32, v33, v35);

      v7 = v34;
    }

    os_unfair_lock_unlock((a1 + 8));
    if (v11)
    {
      v28 = v7;
      [v6 backlightState];
      if (BLSBacklightStateIsActive())
      {
        v29 = [*(a1 + 72) presentationDate];

        if (v29)
        {
          [*(a1 + 72) clearPresentationDate];
        }
      }

      v30 = *(a1 + 16);
      [v6 backlightState];
      [v6 visualState];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_3() transitionState:? didCompleteUpdateToBacklightState:? visualState:?];

      v7 = v28;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)updateToTarget:(uint64_t)a3 touchTargetable:presentationDate:sceneUpdate:requestedFidelity:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138544642;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2048;
  v14 = a2;
  v15 = 2114;
  v16 = @"BLSHEnvironmentTransitionState.m";
  v17 = 1024;
  v18 = 248;
  v19 = 2114;
  v20 = a3;
  _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)updateToTarget:(os_unfair_lock_s *)a3 touchTargetable:presentationDate:sceneUpdate:requestedFidelity:.cold.2(void *a1, void *a2, os_unfair_lock_s *a3)
{
  [a2 setBacklightState:{objc_msgSend(a1, "backlightState")}];
  os_unfair_lock_unlock(a3);
  return [a2 didUpdateInitialState];
}

- (void)updateToTarget:(void *)a1 touchTargetable:(uint64_t)a2 presentationDate:sceneUpdate:requestedFidelity:.cold.3(void *a1, uint64_t a2)
{
  [a1 setDidUpdateInitialState:1];
  v4 = *(a2 + 16);
  v5 = [a1 backlightState];
  v6 = [a1 visualState];
  [v4 transitionState:a2 didBeginUpdateToBacklightState:v5 visualState:v6];
}

void __56__BLSHEnvironmentTransitionState_updateToDateSpecifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) identifier];
  v6 = *(a1 + 48);
  v8 = 134218498;
  v9 = v4;
  v10 = 2114;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "ETS:%p:%{public}@ did update to dateSpecifier:%{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end