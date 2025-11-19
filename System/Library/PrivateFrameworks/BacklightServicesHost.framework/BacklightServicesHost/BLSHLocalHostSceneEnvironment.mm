@interface BLSHLocalHostSceneEnvironment
- (BLSHLocalHostSceneEnvironment)initWithBacklightSceneEnvironment:(id)a3;
- (BOOL)clientAlwaysOnContentIs1hz;
- (BOOL)clientHasDelegate;
- (BOOL)clientSupportsAlwaysOn;
- (BOOL)hasUnrestrictedFramerateUpdates;
- (BOOL)hasVisualStateMistmach;
- (BOOL)isClientActive;
- (BOOL)isLiveUpdating;
- (id)presentationDate;
- (id)visualState;
- (void)clearPresentationDate;
- (void)requestDateSpecifiersForDateInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 completion:(id)a6;
- (void)requestedFidelityForInactiveContentWithCompletion:(id)a3;
- (void)setLiveUpdating:(BOOL)a3;
- (void)setUnrestrictedFramerateUpdates:(BOOL)a3;
- (void)updateToDateSpecifier:(id)a3 sceneContentsUpdated:(id)a4;
- (void)updateToVisualState:(id)a3 presentationDateSpecifier:(id)a4 animated:(BOOL)a5 triggerEvent:(id)a6 touchTargetable:(BOOL)a7 sceneContentsUpdated:(id)a8 performBacklightRamp:(id)a9 animationComplete:(id)a10;
@end

@implementation BLSHLocalHostSceneEnvironment

- (BLSHLocalHostSceneEnvironment)initWithBacklightSceneEnvironment:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v12.receiver = self;
  v12.super_class = BLSHLocalHostSceneEnvironment;
  v6 = [(BLSHBaseSceneHostEnvironment *)&v12 initWithIdentifier:v5];

  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v6->_clientEnvironment, v4);
    v7 = [v4 visualState];
    lock_visualState = v6->_lock_visualState;
    v6->_lock_visualState = v7;

    v9 = [v4 presentationDate];
    lock_presentationDate = v6->_lock_presentationDate;
    v6->_lock_presentationDate = v9;

    [(BLSHBaseSceneHostEnvironment *)v6 setAlwaysOnEnabledForEnvironment:1];
  }

  return v6;
}

- (BOOL)hasVisualStateMistmach
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_visualStateMismatchStartTime != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)clientHasDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v3 = [WeakRetained delegate];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isClientActive
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v3 = [WeakRetained isDelegateActive];

  return v3;
}

- (id)visualState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_visualState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)clientSupportsAlwaysOn
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v3 = [WeakRetained supportsAlwaysOn];

  return v3;
}

- (BOOL)clientAlwaysOnContentIs1hz
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v3 = [WeakRetained alwaysOnContentIs1hz];

  return v3;
}

- (BOOL)isLiveUpdating
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v3 = [WeakRetained isLiveUpdating];

  return v3;
}

- (void)setLiveUpdating:(BOOL)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shouldn't be called on this subclass"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BLSHLocalHostSceneEnvironment.m";
    v17 = 1024;
    v18 = 71;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)hasUnrestrictedFramerateUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v3 = [WeakRetained hasUnrestrictedFramerateUpdates];

  return v3;
}

- (void)setUnrestrictedFramerateUpdates:(BOOL)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shouldn't be called on this subclass"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BLSHLocalHostSceneEnvironment.m";
    v17 = 1024;
    v18 = 79;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)presentationDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_presentationDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)clearPresentationDate
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = bls_environment_log();
  v4 = v3;
  lock_presentationDate = self->_lock_presentationDate;
  if (lock_presentationDate)
  {
    v6 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v6))
  {
    v7 = [(NSDate *)lock_presentationDate bls_shortLoggingString];
    v9 = 134218242;
    v10 = self;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_21FD11000, v4, v6, "%p (localHostEnv) not clearing cached presentation date:%{public}@ (should be cleared later by host)", &v9, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestDateSpecifiersForDateInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v13 = [WeakRetained delegate];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __118__BLSHLocalHostSceneEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke;
  v18[3] = &unk_278420768;
  v19 = v10;
  v20 = WeakRetained;
  v21 = v9;
  v22 = v11;
  v14 = v11;
  v15 = v9;
  v16 = WeakRetained;
  v17 = v10;
  [v13 environment:v16 timelinesForDateInterval:v15 previousSpecifier:0 completion:v18];
}

void __118__BLSHLocalHostSceneEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) alwaysOnSession];
    v4 = [v3 specifierForPresentationDate:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277CF0858] constructFrameSpecifiersForTimelines:v8 dateInterval:*(a1 + 48) shouldConstructStartSpecifier:1 framesPerSecond:v4 previousSpecifier:30.0];
  v6 = [v5 bs_map:&__block_literal_global_25];

  v7 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

id __118__BLSHLocalHostSceneEnvironment_requestDateSpecifiersForDateInterval_previousPresentationDate_shouldReset_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CF0848];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 presentationInterval];
  v6 = [v5 startDate];
  v7 = [v3 requestedFidelity];

  v8 = [v4 initWithDate:v6 fidelity:v7];

  return v8;
}

- (void)requestedFidelityForInactiveContentWithCompletion:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v6 = [WeakRetained visualState];
  (*(a3 + 2))(v5, [v6 updateFidelity]);
}

- (void)updateToDateSpecifier:(id)a3 sceneContentsUpdated:(id)a4
{
  v103 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v10 = [WeakRetained visualState];
  v11 = [v7 userObject];
  v81 = v10;
  v78 = v11;
  v75 = a2;
  if (v11)
  {
    v12 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BLSHLocalHostSceneEnvironment *)self updateToDateSpecifier:v7 sceneContentsUpdated:a2];
    }

    v13 = [v12 context];
    v14 = [v13 isAnimated];
    v15 = [v13 isTouchTargetable];
    v80 = [v13 previousVisualState];
    v16 = [v13 triggerEvent];

    if (v16)
    {
      [BLSHLocalHostSceneEnvironment updateToDateSpecifier:v75 sceneContentsUpdated:?];
    }

    v17 = [v13 visualState];
    v18 = [v17 isEqual:v81];

    if ((v18 & 1) == 0)
    {
      v57 = MEMORY[0x277CCACA8];
      v58 = [(BLSHBaseSceneHostEnvironment *)self identifier];
      v59 = [v13 visualState];
      v60 = [v57 stringWithFormat:@"%p %@: scene update visual state and clientEnvironment's visual state don't match: %@, %@", self, v58, v59, v81];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BLSHLocalHostSceneEnvironment updateToDateSpecifier:v75 sceneContentsUpdated:?];
      }

      [v60 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21FD69A70);
    }
  }

  else
  {
    v80 = v10;
    v15 = 0;
    v14 = 0;
  }

  v19 = [WeakRetained alwaysOnSession];
  v20 = [v7 date];
  v77 = v19;
  v21 = [v19 specifierForPresentationDate:v20];

  if (v21)
  {
    v22 = [v21 grantedFidelity];
    if (v22 != [v7 fidelity])
    {
      v52 = MEMORY[0x277CCACA8];
      v53 = [(BLSHBaseSceneHostEnvironment *)self identifier];
      [v21 grantedFidelity];
      v54 = NSStringFromBLSUpdateFidelity();
      [v7 fidelity];
      v55 = NSStringFromBLSUpdateFidelity();
      v56 = [v52 stringWithFormat:@"%p %@:frameSpecifier %@ grantedFidelity (%@) doesn't match dateSpecifier %@ fidelity (%@)", self, v53, v21, v54, v7, v55];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BLSHLocalHostSceneEnvironment updateToDateSpecifier:v75 sceneContentsUpdated:?];
      }

      [v56 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21FD699E0);
    }
  }

  BYTE1(v66) = 1;
  LOBYTE(v66) = v15;
  v79 = [objc_alloc(MEMORY[0x277CF08A0]) initForEnvironment:WeakRetained visualState:v81 previousVisualState:v80 frameSpecifier:v21 animated:v14 triggerEvent:0 touchTargetable:v66 isUpdateToDateSpecifier:v8 sceneContentsUpdated:0 performBacklightRamp:0 sceneContentsAnimationComplete:?];
  os_unfair_lock_lock(&self->_lock);
  v23 = [v21 presentationInterval];
  v24 = v23;
  v76 = v8;
  if (v23)
  {
    v25 = [v23 startDate];
    lock_presentationDate = self->_lock_presentationDate;
    self->_lock_presentationDate = v25;

    v88 = 0.0;
    v27 = [WeakRetained presentationDate];
    v28 = [v24 bls_containsDate:v27 withEpsilon:&v88 outDelta:0.0001];

    if ((v28 & 1) == 0)
    {
      v29 = bls_environment_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        v73 = [WeakRetained identifier];
        v47 = @"early";
        if (v88 > 0.0)
        {
          v47 = @"late";
        }

        v67 = v47;
        if (v88 >= 0.0)
        {
          v48 = v88;
        }

        else
        {
          v48 = -v88;
        }

        v70 = [v7 bls_shortLoggingString];
        v49 = [WeakRetained frameSpecifier];
        v50 = [v81 bls_shortLoggingString];
        v51 = [v81 bls_shortLoggingString];
        *buf = 138544898;
        v90 = v73;
        v91 = 2112;
        v92 = v67;
        v93 = 2048;
        v94 = v48;
        v95 = 2114;
        v96 = v70;
        v97 = 2114;
        v98 = v49;
        v99 = 2114;
        v100 = v50;
        v101 = 2114;
        v102 = v51;
        _os_log_fault_impl(&dword_21FD11000, v29, OS_LOG_TYPE_FAULT, "updateToDateSpecifier: %{public}@ clientEnv.presentationDate too %@ for presentationInterval by %0.4fs dateSpecifier:%{public}@ clientEnv.frameSpecifier:%{public}@ visualState:%{public}@ clientEnv.visualState:%{public}@", buf, 0x48u);
      }
    }

    if (v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v33 = [WeakRetained presentationDate];
    v34 = self->_lock_presentationDate;
    self->_lock_presentationDate = v33;

    if (v7)
    {
LABEL_14:
      v30 = [v7 fidelity];
      if ([(BLSBacklightSceneVisualState *)self->_lock_visualState updateFidelity]!= v30)
      {
        v31 = [(BLSBacklightSceneVisualState *)self->_lock_visualState newVisualStateWithUpdateFidelity:v30];
        lock_visualState = self->_lock_visualState;
        self->_lock_visualState = v31;
      }

      goto LABEL_20;
    }
  }

  v35 = bls_environment_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
  {
    [(BLSHLocalHostSceneEnvironment *)self updateToDateSpecifier:v79 sceneContentsUpdated:v35];
  }

LABEL_20:
  v36 = self->_lock_visualState;
  v37 = v81;
  if (([(BLSBacklightSceneVisualState *)v36 isEqual:v81]& 1) == 0)
  {
    v38 = bls_environment_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      v72 = [(BLSBacklightSceneVisualState *)v36 bls_shortLoggingString];
      v69 = [WeakRetained identifier];
      v45 = [v81 bls_shortLoggingString];
      *buf = 138543874;
      v90 = v72;
      v91 = 2114;
      v92 = v69;
      v93 = 2114;
      v94 = *&v45;
      v46 = v45;
      _os_log_fault_impl(&dword_21FD11000, v38, OS_LOG_TYPE_FAULT, "hostSceneVisualState != clientEnvVisualState. visualState:%{public}@ clientEnvironment:%{public}@ clientEnvVisualState:%{public}@", buf, 0x20u);
    }

    if (os_variant_has_internal_diagnostics() && ([(BLSBacklightSceneVisualState *)v36 isEqual:v81]& 1) == 0)
    {
      v71 = MEMORY[0x277CCACA8];
      v74 = [(BLSBacklightSceneVisualState *)v36 bls_shortLoggingString];
      v68 = [WeakRetained identifier];
      v61 = [v81 bls_shortLoggingString];
      v62 = [v71 stringWithFormat:@"visualState:%@ clientEnvironment:%@ clientEnvVisualState:%@", v74, v68, v61];

      v63 = v62;
      BLSHRecordCriticalAssertFailure(v62, 1, 0);
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __76__BLSHLocalHostSceneEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke;
      v82[3] = &unk_278420790;
      v83 = v36;
      v84 = WeakRetained;
      v86 = self;
      v87 = v75;
      v85 = v81;
      v64 = MEMORY[0x223D70730](v82);
      if (BLSHIsUnitTestRunning())
      {
        v64[2](v64);
      }

      else
      {
        v65 = dispatch_time(0, 1000000000);
        dispatch_after(v65, MEMORY[0x277D85CD0], v64);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v39 = bls_environment_log();
  if ([(BLSHLocalHostSceneEnvironment *)self hasVisualStateMistmach])
  {
    v40 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v40 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v39, v40))
  {
    v41 = [(BLSHBaseSceneHostEnvironment *)self identifier];
    v42 = [WeakRetained delegate];
    *buf = 134218754;
    v90 = self;
    v91 = 2114;
    v92 = v41;
    v93 = 2114;
    v94 = *&v42;
    v95 = 2114;
    v96 = v79;
    _os_log_impl(&dword_21FD11000, v39, v40, "%p (localHostEnv) updateToDateSpecifier: calling performBacklightSceneUpdate: on delegate for %{public}@ %{public}@ with %{public}@", buf, 0x2Au);

    v37 = v81;
  }

  v43 = [WeakRetained delegate];
  [v43 environment:WeakRetained performBacklightSceneUpdate:v79];

  v44 = *MEMORY[0x277D85DE8];
}

void __76__BLSHLocalHostSceneEnvironment_updateToDateSpecifier_sceneContentsUpdated___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) bls_shortLoggingString];
  v5 = [*(a1 + 40) identifier];
  v6 = [*(a1 + 48) bls_shortLoggingString];
  v7 = [v3 stringWithFormat:@"visualState:%@ clientEnvironment:%@ clientEnvVisualState:%@", v4, v5, v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(*(a1 + 64));
    v9 = *(a1 + 56);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a1 + 56);
    *buf = 138544642;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2114;
    v20 = @"BLSHLocalHostSceneEnvironment.m";
    v21 = 1024;
    v22 = 172;
    v23 = 2114;
    v24 = v7;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateToVisualState:(id)a3 presentationDateSpecifier:(id)a4 animated:(BOOL)a5 triggerEvent:(id)a6 touchTargetable:(BOOL)a7 sceneContentsUpdated:(id)a8 performBacklightRamp:(id)a9 animationComplete:(id)a10
{
  v88 = a5;
  v111 = *MEMORY[0x277D85DE8];
  v94 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  WeakRetained = objc_loadWeakRetained(&self->_clientEnvironment);
  v95 = v14;
  v20 = [v14 userObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v76 = MEMORY[0x277CCACA8];
    v77 = [WeakRetained identifier];
    v78 = [v76 stringWithFormat:@"%p %@: userObject on %@ is not a BLSBacklightSceneUpdate", self, v77, v14];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BLSHLocalHostSceneEnvironment updateToVisualState:a2 presentationDateSpecifier:? animated:? triggerEvent:? touchTargetable:? sceneContentsUpdated:? performBacklightRamp:? animationComplete:?];
    }

    [v78 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21FD6A4ACLL);
  }

  v93 = v20;
  [v20 context];
  v22 = v21 = v16;
  v23 = [v22 previousVisualState];

  [WeakRetained alwaysOnSession];
  v25 = v24 = self;
  v26 = [v95 date];
  v83 = v25;
  v27 = v25;
  v28 = v24;
  v29 = [v27 specifierForPresentationDate:v26];

  v30 = objc_alloc(MEMORY[0x277CF08A0]);
  v91 = v18;
  v84 = v17;
  v85 = v21;
  LOWORD(v79) = a7;
  v31 = v88;
  v87 = v23;
  v89 = v15;
  v81 = [v30 initForEnvironment:WeakRetained visualState:v94 previousVisualState:v23 frameSpecifier:v29 animated:v31 triggerEvent:v15 touchTargetable:v79 isUpdateToDateSpecifier:v21 sceneContentsUpdated:v17 performBacklightRamp:v18 sceneContentsAnimationComplete:?];
  os_unfair_lock_lock(&v28->_lock);
  v82 = v29;
  v32 = [v29 presentationInterval];
  v33 = v32;
  v34 = v94;
  if (v32)
  {
    v35 = [v32 startDate];
    lock_presentationDate = v28->_lock_presentationDate;
    v28->_lock_presentationDate = v35;

    v96 = 0.0;
    v37 = [WeakRetained presentationDate];
    v38 = [v33 bls_containsDate:v37 withEpsilon:&v96 outDelta:0.0001];

    v39 = WeakRetained;
    if ((v38 & 1) == 0)
    {
      v40 = bls_environment_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        v68 = [WeakRetained identifier];
        v69 = @"early";
        if (v96 > 0.0)
        {
          v69 = @"late";
        }

        v80 = v69;
        if (v96 >= 0.0)
        {
          v70 = v96;
        }

        else
        {
          v70 = -v96;
        }

        v71 = [v95 bls_shortLoggingString];
        v72 = [WeakRetained frameSpecifier];
        v73 = [(__CFString *)v94 bls_shortLoggingString];
        v74 = [WeakRetained visualState];
        v75 = [v74 bls_shortLoggingString];
        *buf = 138544898;
        v98 = v68;
        v99 = 2112;
        v100 = v80;
        v101 = 2048;
        v102 = v70;
        v103 = 2114;
        v104 = v71;
        v105 = 2114;
        v106 = v72;
        v107 = 2114;
        v108 = v73;
        v109 = 2114;
        v110 = v75;
        _os_log_fault_impl(&dword_21FD11000, v40, OS_LOG_TYPE_FAULT, "updateToVisualState: %{public}@ clientEnv.presentationDate too %@ for presentationInterval by %0.4fs presentationDateSpecifier:%{public}@ clientEnv.frameSpecifier:%{public}@ visualState:%{public}@ clientEnv.visualState:%{public}@", buf, 0x48u);

        v34 = v94;
      }
    }
  }

  else
  {
    v41 = [WeakRetained presentationDate];
    v42 = v28->_lock_presentationDate;
    v28->_lock_presentationDate = v41;

    v39 = WeakRetained;
  }

  lock_visualStateMismatchStartTime = v28->_lock_visualStateMismatchStartTime;
  v44 = [v39 visualState];
  v45 = [(__CFString *)v34 isEssentiallyEqualToVisualState:v44];

  v46 = v28->_lock_visualStateMismatchStartTime;
  if (lock_visualStateMismatchStartTime && v45)
  {
    v47 = v28->_lock_visualStateMismatchStartTime;
    v28->_lock_visualStateMismatchStartTime = 0;
    v48 = v93;
    v49 = a3;
  }

  else
  {
    v48 = v93;
    if ((lock_visualStateMismatchStartTime != 0) | v45 & 1)
    {
      v49 = a3;
      goto LABEL_14;
    }

    v50 = [MEMORY[0x277CBEAA8] now];
    v51 = v28->_lock_visualStateMismatchStartTime;
    v28->_lock_visualStateMismatchStartTime = v50;

    v52 = v50;
    v47 = v46;
    v46 = v52;
    v49 = a3;
  }

LABEL_14:
  objc_storeStrong(&v28->_lock_visualState, v49);
  os_unfair_lock_unlock(&v28->_lock);
  v53 = v33;
  if (v45)
  {
    v54 = v91;
    v55 = v81;
    if (!lock_visualStateMismatchStartTime)
    {
      goto LABEL_25;
    }

    v56 = bls_environment_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [(NSDate *)v46 bls_loggingString];
      *buf = 134218498;
      v98 = v28;
      v99 = 2114;
      v100 = v57;
      v101 = 2114;
      v102 = *&v94;
      _os_log_impl(&dword_21FD11000, v56, OS_LOG_TYPE_DEFAULT, "%p: (localhostEnv) resolved visualStateMismatch from %{public}@ to %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v58 = bls_environment_log();
    v56 = v58;
    if (lock_visualStateMismatchStartTime)
    {
      v59 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v59 = OS_LOG_TYPE_FAULT;
    }

    v55 = v81;
    if (os_log_type_enabled(v58, v59))
    {
      v60 = [v39 visualState];
      v61 = [v39 identifier];
      v62 = [(NSDate *)v46 bls_loggingString];
      *buf = 134219010;
      v98 = v28;
      v99 = 2112;
      v100 = v94;
      v101 = 2112;
      v102 = *&v60;
      v103 = 2112;
      v104 = v61;
      v105 = 2114;
      v106 = v62;
      _os_log_impl(&dword_21FD11000, v56, v59, "%p (localHostEnv) new visualState %@ is not the same as visualState from clientEnvironment: %@, %@ mismatch began at %{public}@", buf, 0x34u);
    }

    v54 = v91;
  }

  v48 = v93;
LABEL_25:
  v63 = bls_environment_log();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    v66 = [(BLSHBaseSceneHostEnvironment *)v28 identifier];
    v67 = [v39 delegate];
    *buf = 134218754;
    v98 = v28;
    v99 = 2114;
    v100 = v66;
    v101 = 2114;
    v102 = *&v67;
    v103 = 2114;
    v104 = v55;
    _os_log_debug_impl(&dword_21FD11000, v63, OS_LOG_TYPE_DEBUG, "%p (localHostEnv) updateToVisualState: calling performBacklightSceneUpdate: on delegate for %{public}@ %{public}@ with %{public}@", buf, 0x2Au);

    v54 = v91;
  }

  v64 = [v39 delegate];
  [v64 environment:v39 performBacklightSceneUpdate:v55];

  v65 = *MEMORY[0x277D85DE8];
}

- (void)updateToDateSpecifier:(const char *)a3 sceneContentsUpdated:.cold.1(void *a1, uint64_t a2, const char *a3)
{
  v6 = MEMORY[0x277CCACA8];
  v7 = [a1 identifier];
  v8 = [v6 stringWithFormat:@"%p %@: userObject on %@ is not a BLSBacklightSceneUpdate", a1, v7, a2];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a3);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    v17 = a1;
    v18 = 2114;
    v19 = @"BLSHLocalHostSceneEnvironment.m";
    v20 = 1024;
    v21 = 127;
    v22 = 2114;
    v23 = v8;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateToDateSpecifier:(void *)a1 sceneContentsUpdated:(const char *)a2 .cold.2(void *a1, const char *a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a1 identifier];
  v6 = [v4 stringWithFormat:@"%p %@: trigger event should be nil", a1, v5];

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
    v15 = a1;
    v16 = 2114;
    v17 = @"BLSHLocalHostSceneEnvironment.m";
    v18 = 1024;
    v19 = 134;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateToDateSpecifier:(const char *)a1 sceneContentsUpdated:.cold.3(const char *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateToDateSpecifier:(const char *)a1 sceneContentsUpdated:.cold.4(const char *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateToDateSpecifier:(NSObject *)a3 sceneContentsUpdated:.cold.5(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a1 identifier];
  v8 = 134218498;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = a2;
  _os_log_fault_impl(&dword_21FD11000, a3, OS_LOG_TYPE_FAULT, "%p: (localHostEnv) updateToDateSpecifier: got nil dateSpecifier for %{public}@ sceneUpdate:%{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateToVisualState:(const char *)a1 presentationDateSpecifier:animated:triggerEvent:touchTargetable:sceneContentsUpdated:performBacklightRamp:animationComplete:.cold.1(const char *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end