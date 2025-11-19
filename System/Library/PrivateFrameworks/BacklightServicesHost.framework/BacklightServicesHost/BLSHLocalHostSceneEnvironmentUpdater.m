@interface BLSHLocalHostSceneEnvironmentUpdater
- (BLSHLocalHostSceneEnvironmentUpdater)initWithSessionProvider:(id)a3 localHostEnvironment:(id)a4 osTimerProvider:(id)a5;
- (BOOL)_lock_update1HzFromPresentation:(id)a3;
- (BOOL)ensureAlwaysOnSessionCreated;
- (NSString)description;
- (id)subHostedHostEnvironments;
- (void)aggregateDesiredFidelityForBacklightState:(int64_t)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)destroyInactiveEnvSession;
- (void)environmentStateMachine:(id)a3 didBeginUpdateToState:(int64_t)a4;
- (void)environmentStateMachine:(id)a3 didCompleteUpdateToState:(int64_t)a4;
- (void)environmentStateMachine:(id)a3 didUpdateToPresentation:(id)a4;
- (void)environmentStateMachine:(id)a3 didUpdateToSpecifier:(id)a4;
- (void)hostEnvironment:(id)a3 invalidateContentForReason:(id)a4;
- (void)inactiveEnvironmentSession:(id)a3 updateToPresentation:(id)a4;
- (void)onMain_ensureInactiveEnvSessionCreated;
- (void)performBlockWithSubhostedEnvironments:(id)a3;
- (void)performDesiredFidelityRequest:(id)a3;
- (void)performFrameSpecifiersRequest:(id)a3;
- (void)performWithSubhostedEnvironmentsFromPresentationEntries:(id)a3 block:(id)a4;
- (void)timelinesForDateInterval:(id)a3 previousPresentationDate:(id)a4 localHostEnvironment:(id)a5 shouldReset:(BOOL)a6 completion:(id)a7;
- (void)updatedEnvironmentWithDelta:(id)a3 backlightSceneUpdate:(id)a4;
@end

@implementation BLSHLocalHostSceneEnvironmentUpdater

- (BLSHLocalHostSceneEnvironmentUpdater)initWithSessionProvider:(id)a3 localHostEnvironment:(id)a4 osTimerProvider:(id)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v34.receiver = self;
  v34.super_class = BLSHLocalHostSceneEnvironmentUpdater;
  v12 = [(BLSHLocalHostSceneEnvironmentUpdater *)&v34 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_lock_nextEventID = 0x8000000000000000;
    objc_storeStrong(&v12->_sessionProvider, a3);
    objc_storeStrong(&v13->_osTimerProvider, a5);
    objc_storeStrong(&v13->_localHostEnvironment, a4);
    v14 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
    v35 = @"disableClientInvalidationBudget";
    v36[0] = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [v14 registerDefaults:v15];

    v16 = [v14 BOOLForKey:@"disableClientInvalidationBudget"];
    v17 = bls_backlight_log();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21FD11000, v18, OS_LOG_TYPE_DEFAULT, "disabling client side invalidation budget because default is set", &buf, 2u);
      }

      v19 = objc_alloc_init(BLSHNullInactiveBudgetPolicy);
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_21FD11000, v18, OS_LOG_TYPE_INFO, "enabling client side invalidation budget.", &buf, 2u);
      }

      v19 = [[BLSHInactiveBudgetPolicy alloc] initWithOSTimerProvider:v13->_osTimerProvider];
    }

    inactiveBudgetPolicy = v13->_inactiveBudgetPolicy;
    v13->_inactiveBudgetPolicy = v19;

    objc_initWeak(&buf, v13);
    objc_copyWeak(&v31, &buf);
    v32 = v16;
    v13->_stateHandler = os_state_add_handler();
    v21 = [v10 visualState];
    v22 = BLSBacklightStateForVisuaState() == 1;

    if (v22)
    {
      [(BLSHLocalHostSceneEnvironmentUpdater *)v13 ensureInactiveEnvSessionCreated];
    }

    if (os_variant_has_internal_diagnostics())
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = [MEMORY[0x277CCAC38] processInfo];
      v25 = [v24 processName];
      v26 = [v23 stringWithFormat:@"com.apple.BacklightServices.BLSHBacklightSceneEnvironmentHosting.%@.criticalasserttest", v25];

      v27 = [[BLSHCriticalAssertTester alloc] initWithNotificationName:v26];
      criticalAssertTester = v13->_criticalAssertTester;
      v13->_criticalAssertTester = v27;
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&buf);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __101__BLSHLocalHostSceneEnvironmentUpdater_initWithSessionProvider_localHostEnvironment_osTimerProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (*(a1 + 40))
  {
    v4 = @"disabled";
  }

  else
  {
    v4 = @"enabled";
  }

  v5 = WeakRetained[2];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ for <%@: %p>", v4, objc_opt_class(), v3[2]];
  v7 = BLSStateDataWithTitleDescriptionAndHints();

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  sessionProvider = self->_sessionProvider;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>", objc_opt_class(), sessionProvider];
  [v3 appendString:v5 withName:@"sessionProvider"];

  v6 = [v3 appendObject:self->_localHostEnvironment withName:@"localHostEnvironment"];
  v7 = [v3 build];

  return v7;
}

- (void)dealloc
{
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BLSHLocalHostSceneEnvironmentUpdater;
  [(BLSHLocalHostSceneEnvironmentUpdater *)&v3 dealloc];
}

- (void)destroyInactiveEnvSession
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = [*(a1 + 64) presentation];
  v8 = 134218498;
  v9 = a1;
  v10 = 2048;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p (localHostUpdater) destroy session:%p with current presentation:%{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)onMain_ensureInactiveEnvSessionCreated
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_inactiveEnvSession;
  v4 = [(BLSHBacklightInactiveEnvironmentSession *)v3 presentation];
  [(BLSHLocalHostSceneEnvironmentUpdater *)self _lock_update1HzFromPresentation:v4];

  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    v3 = [(BLSHBacklightEnvironmentSessionProviding *)self->_sessionProvider createInactiveEnvironmentSession];
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_lock_inactiveEnvSession, v3);
    [(BLSHBacklightInactiveEnvironmentSession *)v3 setUpdater:self];
    v5 = [(BLSHBacklightInactiveEnvironmentSession *)v3 presentation];
    v6 = bls_backlight_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218498;
      v11 = self;
      v12 = 2048;
      v13 = v3;
      v14 = 2114;
      v15 = v5;
      _os_log_debug_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEBUG, "%p (localHostUpdater) createdSession:%p with presentation:%{public}@", &v10, 0x20u);
    }

    v7 = [[BLSHBacklightEnvironmentStateMachine alloc] initWithPresentation:v5 backlightState:self->_backlightState delegate:self inactiveBudgetPolicy:self->_inactiveBudgetPolicy osTimerProvider:self->_osTimerProvider platformProvider:0];
    environmentStateMachine = self->_environmentStateMachine;
    self->_environmentStateMachine = v7;

    os_unfair_lock_unlock(&self->_lock);
    [(BLSHBacklightInactiveEnvironmentSession *)v3 addEnvironmentsObserver:self];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)ensureAlwaysOnSessionCreated
{
  v2 = self->_localHostEnvironment;
  v3 = [(BLSBacklightSceneEnvironment_Private *)v2 alwaysOnSession];
  v4 = v3;
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CF0850]) initWithEnvironment:v2];
    [(BLSBacklightSceneEnvironment_Private *)v2 setAlwaysOnSession:v4];
  }

  return v3 == 0;
}

void __134__BLSHLocalHostSceneEnvironmentUpdater_timelinesForDateInterval_previousPresentationDate_localHostEnvironment_shouldReset_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(*(a1 + 32) + 72) removeObject:WeakRetained];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  (*(*(a1 + 40) + 16))();
}

- (void)aggregateDesiredFidelityForBacklightState:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(BLSHBacklightInactiveEnvironmentSession *)self->_lock_inactiveEnvSession presentation];
  v8 = [v7 presentationEntries];

  os_unfair_lock_unlock(&self->_lock);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2810000000;
  v34[3] = &unk_21FDBF2D6;
  v35 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = [v8 count];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __97__BLSHLocalHostSceneEnvironmentUpdater_aggregateDesiredFidelityForBacklightState_withCompletion___block_invoke;
  v27[3] = &unk_278420608;
  v29 = v34;
  v30 = v32;
  v31 = v33;
  v9 = v6;
  v28 = v9;
  v10 = MEMORY[0x223D70730](v27);
  v11 = self->_localHostEnvironment;
  v12 = objc_alloc(MEMORY[0x277CCA970]);
  v13 = [(BLSHOSTimerProviding *)self->_osTimerProvider now];
  v14 = [v12 initWithStartDate:v13 duration:60.0];

  v15 = [(BLSBacklightSceneEnvironment_Private *)v11 delegate];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__BLSHLocalHostSceneEnvironmentUpdater_aggregateDesiredFidelityForBacklightState_withCompletion___block_invoke_2;
  v23[3] = &unk_278420630;
  v16 = v11;
  v24 = v16;
  v17 = v14;
  v25 = v17;
  v18 = v10;
  v26 = v18;
  [v15 environment:v16 timelinesForDateInterval:v17 previousSpecifier:0 completion:v23];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__BLSHLocalHostSceneEnvironmentUpdater_aggregateDesiredFidelityForBacklightState_withCompletion___block_invoke_3;
  v20[3] = &unk_278420658;
  v22 = a3;
  v19 = v18;
  v21 = v19;
  [(BLSHLocalHostSceneEnvironmentUpdater *)self performWithSubhostedEnvironmentsFromPresentationEntries:v8 block:v20];

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v34, 8);
}

void __97__BLSHLocalHostSceneEnvironmentUpdater_aggregateDesiredFidelityForBacklightState_withCompletion___block_invoke(void *a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1[5] + 8) + 32));
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 24);
  if (v5 <= a2)
  {
    v5 = a2;
  }

  *(v4 + 24) = v5;
  v6 = --*(*(a1[7] + 8) + 24);
  os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  if (!v6)
  {
    v7 = *(*(a1[6] + 8) + 24);
    v8 = *(a1[4] + 16);

    v8();
  }
}

void __97__BLSHLocalHostSceneEnvironmentUpdater_aggregateDesiredFidelityForBacklightState_withCompletion___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 alwaysOnSession];
  [v5 desiredFidelityForDateInterval:a1[5] timelines:v4 withCompletion:a1[6]];
}

- (void)performBlockWithSubhostedEnvironments:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BLSHBacklightInactiveEnvironmentSession *)self->_lock_inactiveEnvSession presentation];
  v6 = [v5 presentationEntries];

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHLocalHostSceneEnvironmentUpdater *)self performWithSubhostedEnvironmentsFromPresentationEntries:v6 block:v4];
}

- (void)performWithSubhostedEnvironmentsFromPresentationEntries:(id)a3 block:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(BLSBacklightSceneEnvironment_Private *)self->_localHostEnvironment identifier];
  os_unfair_lock_unlock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) environment];
        v15 = [v14 identifier];
        v16 = [v15 isEqualToString:v8];

        if ((v16 & 1) == 0)
        {
          v7[2](v7, v14);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)subHostedHostEnvironments
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BLSBacklightSceneEnvironment_Private *)self->_localHostEnvironment identifier];
  v4 = [(BLSHBacklightInactiveEnvironmentSession *)self->_lock_inactiveEnvSession presentation];
  v5 = [v4 presentationEntries];

  os_unfair_lock_unlock(&self->_lock);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__BLSHLocalHostSceneEnvironmentUpdater_subHostedHostEnvironments__block_invoke;
  v9[3] = &unk_27841F630;
  v10 = v3;
  v6 = v3;
  v7 = [v5 bs_compactMap:v9];

  return v7;
}

id __65__BLSHLocalHostSceneEnvironmentUpdater_subHostedHostEnvironments__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 environment];
  v4 = [v3 identifier];
  LOBYTE(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)updatedEnvironmentWithDelta:(id)a3 backlightSceneUpdate:(id)a4
{
  v4 = a3;
  v102 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = self->_localHostEnvironment;
  if (v6)
  {
    v74 = [v6 isUpdateToDateSpecifier] ^ 1;
  }

  else
  {
    v74 = 0;
  }

  v75 = v7;
  v76 = [(BLSBacklightSceneEnvironment_Private *)v7 alwaysOnSession];
  if ((v4 & 4) == 0)
  {
    if (!v6)
    {
LABEL_56:
      v21 = bls_environment_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v97 = self;
        _os_log_impl(&dword_21FD11000, v21, OS_LOG_TYPE_INFO, "%p (localHostUpdater) updatedEnvironmentWithDelta: backlightSceneUpdate=nil", buf, 0xCu);
      }

      goto LABEL_58;
    }

    goto LABEL_26;
  }

  v8 = [(BLSBacklightSceneEnvironment_Private *)v7 visualState];
  v9 = [v8 updateFidelity];
  v10 = [v8 adjustedLuminance];
  if (v10 == 2)
  {
    v11 = v74;
  }

  else
  {
    v11 = 0;
  }

  if (v10 != 1 && (v11 & 1) == 0 && (v9 - 1) > 1)
  {
    if (v76)
    {
      v12 = BLSDeviceSupports1HzFlipbook();
      v13 = bls_environment_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v12)
      {
        if (v14)
        {
          v15 = [(BLSBacklightSceneEnvironment_Private *)v75 identifier];
          v16 = BLSBacklightFBSSceneEnvironmentDeltaDescription();
          *buf = 134218754;
          v97 = self;
          v98 = 2114;
          *v99 = v76;
          *&v99[8] = 2112;
          *&v99[10] = v15;
          *&v99[18] = 2112;
          *&v99[20] = v16;
          _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_INFO, "%p (localHostUpdater) (rdar://133418257)  keeping alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
        }

        if (!v6)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v14)
        {
          v47 = [(BLSBacklightSceneEnvironment_Private *)v75 identifier];
          v48 = BLSBacklightFBSSceneEnvironmentDeltaDescription();
          *buf = 134218754;
          v97 = self;
          v98 = 2114;
          *v99 = v76;
          *&v99[8] = 2114;
          *&v99[10] = v47;
          *&v99[18] = 2114;
          *&v99[20] = v48;
          _os_log_impl(&dword_21FD11000, v13, OS_LOG_TYPE_INFO, "%p (localHostUpdater) destroying alwaysOnSession:%{public}@ for updatedEnvironment:%{public}@ withDelta:%{public}@", buf, 0x2Au);
        }

        [v76 invalidate];
        [(BLSBacklightSceneEnvironment_Private *)v75 setAlwaysOnSession:0];

        v76 = 0;
        if (!v6)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {

      v76 = 0;
      if (!v6)
      {
        goto LABEL_56;
      }
    }

LABEL_26:
    [(BLSHLocalHostSceneEnvironmentUpdater *)self ensureInactiveEnvSessionCreated];
    goto LABEL_27;
  }

  if ([(BLSHLocalHostSceneEnvironmentUpdater *)self ensureAlwaysOnSessionCreated])
  {
    v17 = [(BLSBacklightSceneEnvironment_Private *)v75 alwaysOnSession];

    v18 = bls_environment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(BLSBacklightSceneEnvironment_Private *)v75 identifier];
      v20 = BLSBacklightFBSSceneEnvironmentDeltaDescription();
      *buf = 134218754;
      v97 = self;
      v98 = 2114;
      *v99 = v17;
      *&v99[8] = 2114;
      *&v99[10] = v19;
      *&v99[18] = 2114;
      *&v99[20] = v20;
      _os_log_impl(&dword_21FD11000, v18, OS_LOG_TYPE_INFO, "%p (localHostUpdater) created alwaysOnSession:%{public}@ for updatedEnvironment:%{public}@ withDelta:%{public}@", buf, 0x2Au);
    }

    v76 = v17;
  }

  [(BLSHLocalHostSceneEnvironmentUpdater *)self ensureInactiveEnvSessionCreated];
  if (!v6)
  {
    goto LABEL_56;
  }

LABEL_27:
  v21 = [v6 context];
  v22 = [v21 triggerEvent];
  v23 = [v21 frameSpecifier];
  os_unfair_lock_lock(&self->_lock);
  v24 = [(BLSBacklightSceneEnvironment_Private *)self->_localHostEnvironment identifier];
  v71 = self->_lock_inactiveEnvSession;
  v73 = [(BLSHBacklightInactiveEnvironmentSession *)self->_lock_inactiveEnvSession presentation];
  os_unfair_lock_unlock(&self->_lock);
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__10;
  v90 = __Block_byref_object_dispose__10;
  v91 = 0;
  v25 = [v73 presentationEntries];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __89__BLSHLocalHostSceneEnvironmentUpdater_updatedEnvironmentWithDelta_backlightSceneUpdate___block_invoke;
  v80[3] = &unk_278420680;
  v67 = v24;
  v81 = v67;
  v84 = &v92;
  v85 = &v86;
  v26 = v23;
  v82 = v26;
  v70 = v6;
  v83 = v70;
  v68 = v25;
  v72 = [v25 bs_map:v80];
  v27 = bls_environment_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v73 bls_shortLoggingString];
    v29 = *(v93 + 24);
    if (v29 == 1)
    {
      v30 = [v87[5] bls_shortLoggingString];
    }

    else
    {
      v30 = @"(n/a)";
    }

    v31 = [v26 description];
    *buf = 134219266;
    v97 = self;
    v98 = 1024;
    *v99 = v74;
    *&v99[4] = 2048;
    *&v99[6] = v71;
    *&v99[14] = 2114;
    *&v99[16] = v28;
    *&v99[24] = 2114;
    *&v99[26] = v30;
    v100 = 2114;
    v101 = v31;
    _os_log_impl(&dword_21FD11000, v27, OS_LOG_TYPE_INFO, "%p (localHostUpdater) updatedEnvironmentWithDelta: doPerformEvent:%{BOOL}u inactiveEnvSession:%p presentation:%{public}@ %{public}@ -> %{public}@", buf, 0x3Au);
    if (v29)
    {
    }
  }

  v32 = [v26 presentationInterval];
  v33 = [v32 startDate];
  v34 = [BLSHPresentationDateSpecifier specifierWithPresentationDate:v33 specifiers:v72];

  os_unfair_lock_lock(&self->_lock);
  if (v74)
  {
    if (!v22)
    {
      lock_nextEventID = self->_lock_nextEventID;
      self->_lock_nextEventID = lock_nextEventID + 1;
      v36 = [v21 visualState];
      v37 = BLSBacklightStateForVisuaState();

      v38 = BLSBacklightActivityStateForBLSBacklightState();
      v39 = objc_alloc(MEMORY[0x277CF0888]);
      v40 = [objc_alloc(MEMORY[0x277CF0890]) initWithRequestedActivityState:v38 explanation:@"createdLocalEvent — just added to presentation?" timestamp:mach_continuous_time() sourceEvent:10 sourceEventMetadata:0];
      v22 = [v39 initWithEventID:lock_nextEventID state:v37 previousState:v37 changeRequest:v40];

      v41 = bls_backlight_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v97 = self;
        v98 = 2114;
        *v99 = v22;
        *&v99[8] = 2114;
        *&v99[10] = v70;
        _os_log_impl(&dword_21FD11000, v41, OS_LOG_TYPE_INFO, "%p (localHostUpdater) created new triggerEvent:%{public}@ sceneUpdate:%{public}@", buf, 0x20u);
      }
    }

    v42 = self->_lock_sceneUpdateForPerformingEvent;
    objc_storeStrong(&self->_lock_localTriggerEventForPerformingEvent, v22);
    objc_storeStrong(&self->_lock_sceneUpdateForPerformingEvent, a4);
    v43 = self->_environmentStateMachine;
    os_unfair_lock_unlock(&self->_lock);
    v44 = bls_environment_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v97 = self;
      v98 = 2114;
      *v99 = v22;
      *&v99[8] = 2114;
      *&v99[10] = v34;
      _os_log_debug_impl(&dword_21FD11000, v44, OS_LOG_TYPE_DEBUG, "%p (localHostUpdater) calling [environmentStateMachine performEvent:withInitialSpecifier:performBacklightRamp:], event:%{public}@, dateSpecifier:%{public}@", buf, 0x20u);
    }

    if (v42)
    {
      [v70 setReplacedSceneUpdate:v42];
      v45 = bls_backlight_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v97 = self;
        v98 = 2114;
        *v99 = v42;
        *&v99[8] = 2114;
        *&v99[10] = v70;
        _os_log_impl(&dword_21FD11000, v45, OS_LOG_TYPE_INFO, "%p (localHostUpdater) replaced sceneUpdateForPerformingEvent:%{public}@ with new sceneUpdate:%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v45 = bls_backlight_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [BLSHLocalHostSceneEnvironmentUpdater updatedEnvironmentWithDelta:backlightSceneUpdate:];
      }
    }

    if (!v43)
    {
      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected nil environmentStateMachine doPerformEvent=YES backlightSceneUpdate:%@", v70];
      v59 = MEMORY[0x277D86220];
      v60 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v61 = NSStringFromSelector(a2);
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        *buf = 138544642;
        v97 = v61;
        v98 = 2114;
        *v99 = v63;
        *&v99[8] = 2048;
        *&v99[10] = self;
        *&v99[18] = 2114;
        *&v99[20] = @"BLSHLocalHostSceneEnvironmentUpdater.m";
        *&v99[28] = 1024;
        *&v99[30] = 560;
        v100 = 2114;
        v101 = v58;
        _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v64 = v58;
      [v58 UTF8String];
      v65 = _bs_set_crash_log_message();
      [BLSHFlipbook cancelAllFramesWithError:v65];
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __89__BLSHLocalHostSceneEnvironmentUpdater_updatedEnvironmentWithDelta_backlightSceneUpdate___block_invoke_217;
    v77[3] = &unk_27841EAA0;
    v77[4] = self;
    v22 = v22;
    v78 = v22;
    v79 = v70;
    [(BLSHBacklightEnvironmentStateMachine *)v43 performEvent:v22 withInitialSpecifier:v34 performBacklightRamp:v77];
  }

  else
  {
    v42 = self->_environmentStateMachine;
    os_unfair_lock_unlock(&self->_lock);
    v46 = bls_environment_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      [BLSHLocalHostSceneEnvironmentUpdater updatedEnvironmentWithDelta:backlightSceneUpdate:];
    }

    if (!v42)
    {
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected nil environmentStateMachine doPerformEvent=NO backlightSceneUpdate:%@", v70];
      v51 = MEMORY[0x277D86220];
      v52 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v53 = NSStringFromSelector(a2);
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        *buf = 138544642;
        v97 = v53;
        v98 = 2114;
        *v99 = v55;
        *&v99[8] = 2048;
        *&v99[10] = self;
        *&v99[18] = 2114;
        *&v99[20] = @"BLSHLocalHostSceneEnvironmentUpdater.m";
        *&v99[28] = 1024;
        *&v99[30] = 570;
        v100 = 2114;
        v101 = v50;
        _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v56 = v50;
      [v50 UTF8String];
      v57 = _bs_set_crash_log_message();
      [BLSHFlipbook cancelAllFramesWithError:v57];
    }

    [(BLSBacklightSceneUpdate *)v42 updateToSpecifier:v34];
  }

  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v92, 8);

LABEL_58:
  v49 = *MEMORY[0x277D85DE8];
}

BLSHEnvironmentDateSpecifier *__89__BLSHLocalHostSceneEnvironmentUpdater_updatedEnvironmentWithDelta_backlightSceneUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 environment];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = [v3 presentationDate];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 40) presentationInterval];
    v10 = [v9 startDate];

    v11 = [*(a1 + 48) context];
    v12 = [v11 visualState];
    v13 = [v12 updateFidelity];

    v14 = [[BLSHEnvironmentDateSpecifier alloc] initWithPresentationDate:v10 fidelity:v13 environment:v3 userObject:*(a1 + 48)];
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = BLSHSubhostedEnvironmentIdentifierForEnvironment(v3);
    v10 = [v15 entrySpecifierForTimelineIdentifier:v16];

    v17 = [v10 timelineEntry];
    v18 = [v17 presentationTime];

    v14 = -[BLSHEnvironmentDateSpecifier initWithPresentationDate:fidelity:environment:userObject:]([BLSHEnvironmentDateSpecifier alloc], "initWithPresentationDate:fidelity:environment:userObject:", v18, [v10 grantedFidelity], v3, *(a1 + 48));
  }

  return v14;
}

uint64_t __89__BLSHLocalHostSceneEnvironmentUpdater_updatedEnvironmentWithDelta_backlightSceneUpdate___block_invoke_217(uint64_t a1, double a2)
{
  v4 = bls_environment_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __89__BLSHLocalHostSceneEnvironmentUpdater_updatedEnvironmentWithDelta_backlightSceneUpdate___block_invoke_217_cold_1(a1, v4, a2);
  }

  return [*(a1 + 48) performBacklightRampWithDuration:a2];
}

- (void)performDesiredFidelityRequest:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(BLSHLocalHostSceneEnvironmentUpdater *)self ensureInactiveEnvSessionCreated];
  v5 = [(BLSHLocalHostSceneEnvironmentUpdater *)self ensureAlwaysOnSessionCreated];
  v6 = self->_localHostEnvironment;
  v7 = [(BLSBacklightSceneEnvironment_Private *)v6 alwaysOnSession];
  v8 = bls_environment_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(BLSBacklightSceneEnvironment_Private *)v6 identifier];
    *buf = 134219266;
    v15 = self;
    v16 = 2114;
    v17 = v4;
    v18 = 2114;
    v19 = v7;
    v20 = 2048;
    v21 = v6;
    v22 = 2114;
    v23 = v9;
    v24 = 1024;
    v25 = v5;
    _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_INFO, "%p (localHostUpdater) performDesiredFidelityRequest:%{public}@ alwaysOnSession:%{public}@ environment:<%p %{public}@>, createdSession=%{BOOL}u", buf, 0x3Au);
  }

  v10 = [(BLSBacklightSceneEnvironment_Private *)v6 delegate];

  if (v10)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __70__BLSHLocalHostSceneEnvironmentUpdater_performDesiredFidelityRequest___block_invoke;
    v12[3] = &unk_2784206A8;
    v13 = v4;
    [(BLSHLocalHostSceneEnvironmentUpdater *)self aggregateDesiredFidelityForBacklightState:1 withCompletion:v12];
  }

  else
  {
    [v4 completeWithDesiredFidelity:1];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)performFrameSpecifiersRequest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(BLSHLocalHostSceneEnvironmentUpdater *)self ensureInactiveEnvSessionCreated];
  v5 = self->_localHostEnvironment;
  v6 = [(BLSBacklightSceneEnvironment_Private *)v5 alwaysOnSession];
  v7 = bls_environment_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 model];
    v9 = [v8 specifierCount];
    v10 = [(BLSBacklightSceneEnvironment_Private *)v5 identifier];
    *buf = 134219010;
    v20 = self;
    v21 = 2114;
    v22 = v4;
    v23 = 1024;
    v24 = v9;
    v25 = 2048;
    v26 = v5;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "%p (localHostUpdater) performFrameSpecifiersRequest:%{public}@ session-model:%d environment:<%p %{public}@>", buf, 0x30u);
  }

  v11 = [(BLSBacklightSceneEnvironment_Private *)v5 delegate];

  if (v11 && v6)
  {
    v12 = [v4 dateInterval];
    v13 = [v4 previousPresentationDate];
    v14 = [v4 shouldReset];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__BLSHLocalHostSceneEnvironmentUpdater_performFrameSpecifiersRequest___block_invoke;
    v16[3] = &unk_2784206D0;
    v17 = v6;
    v18 = v4;
    [(BLSHLocalHostSceneEnvironmentUpdater *)self timelinesForDateInterval:v12 previousPresentationDate:v13 localHostEnvironment:v5 shouldReset:v14 completion:v16];
  }

  else
  {
    [v4 completeWithDateSpecifiers:MEMORY[0x277CBEBF8]];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)environmentStateMachine:(id)a3 didBeginUpdateToState:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_localTriggerEventForPerformingEvent;
  v7 = v6;
  if (self->_lock_sceneUpdateForPerformingEvent)
  {
    v8 = [(BLSBacklightChangeEvent *)v6 state]== a4;
  }

  else
  {
    v8 = 0;
  }

  v9 = bls_backlight_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = NSStringFromBLSBacklightState();
    *buf = 134218754;
    v14 = self;
    v15 = 2114;
    v16 = v12;
    v17 = 1024;
    v18 = v8;
    v19 = 2114;
    v20 = v7;
    _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "%p (localHostUpdater) didBeginUpdateToState:%{public}@ matchesPendingEvent:%{BOOL}u pendingEvent:%{public}@", buf, 0x26u);
  }

  v10 = self->_lock_sceneUpdateForPerformingEvent;
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    [(BLSBacklightSceneUpdate *)v10 sceneContentsDidUpdate];
    BSDispatchMain();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __86__BLSHLocalHostSceneEnvironmentUpdater_environmentStateMachine_didBeginUpdateToState___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  os_unfair_lock_unlock((v2 + 8));
  [v3 updaterDidBeginUpdateToBacklightState:*(a1 + 40)];
}

- (void)environmentStateMachine:(id)a3 didCompleteUpdateToState:(int64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_localTriggerEventForPerformingEvent;
  v7 = v6;
  if (self->_lock_sceneUpdateForPerformingEvent)
  {
    v8 = [(BLSBacklightChangeEvent *)v6 state]== a4;
  }

  else
  {
    v8 = 0;
  }

  v9 = bls_backlight_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v19 = NSStringFromBLSBacklightState();
    v20 = 134218754;
    v21 = self;
    v22 = 2114;
    v23 = v19;
    v24 = 1024;
    v25 = v8;
    v26 = 2114;
    v27 = v7;
    _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "%p (localHostUpdater) didCompleteUpdateToState:%{public}@ matchesPendingEvent:%{BOOL}u pendingEvent:%{public}@", &v20, 0x26u);
  }

  v10 = self->_lock_sceneUpdateForPerformingEvent;
  if (v8)
  {
    lock_localTriggerEventForPerformingEvent = self->_lock_localTriggerEventForPerformingEvent;
    self->_lock_localTriggerEventForPerformingEvent = 0;

    lock_sceneUpdateForPerformingEvent = self->_lock_sceneUpdateForPerformingEvent;
    self->_lock_sceneUpdateForPerformingEvent = 0;

    os_unfair_lock_unlock(&self->_lock);
    v13 = [(BLSBacklightSceneUpdate *)v10 context];
    v14 = [v13 isAnimated];

    if (v14)
    {
      [(BLSBacklightSceneUpdate *)v10 sceneContentsAnimationDidComplete];
    }

    v15 = [(BLSBacklightSceneUpdate *)v10 context];
    v16 = [v15 visualState];
    BLSBacklightStateForVisuaState();
    IsActive = BLSBacklightStateIsActive();

    if (IsActive)
    {
      [(BLSHLocalHostSceneEnvironmentUpdater *)self destroyInactiveEnvSession];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)environmentStateMachine:(id)a3 didUpdateToPresentation:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_lock_inactiveEnvSession;
  v7 = [(BLSHBacklightEnvironmentPresentation *)self->_lock_updatingToPresentation isEqual:v5];
  lock_updatingToPresentation = self->_lock_updatingToPresentation;
  self->_lock_updatingToPresentation = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v9 = v6;
    v10 = v5;
    BSDispatchMain();
  }
}

- (void)environmentStateMachine:(id)a3 didUpdateToSpecifier:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (!v7)
  {
LABEL_6:

    return;
  }

  os_unfair_lock_lock(&self->_lock);
  v8 = [v7 specifiers];
  v9 = [v8 firstObject];
  v10 = [v9 userObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    os_unfair_lock_unlock(&self->_lock);
    v11 = [v10 context];
    v12 = [v11 isAnimated];

    if (v12)
    {
      [v10 sceneContentsAnimationDidComplete];
    }

    [v10 sceneContentsDidUpdate];

    goto LABEL_6;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p (localHostSceneEnvironmentUpdater) didUpdateToSpecifier: specifier %@ userObject %@ isn't a BLSBacklightSceneUpdate", self, v7, v10];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BLSHLocalHostSceneEnvironmentUpdater environmentStateMachine:a2 didUpdateToSpecifier:?];
  }

  [v13 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)inactiveEnvironmentSession:(id)a3 updateToPresentation:(id)a4
{
  v15 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  lock_inactiveEnvSession = self->_lock_inactiveEnvSession;
  if (lock_inactiveEnvSession != v15)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"session:%@ does not match _session:%@", v15, lock_inactiveEnvSession];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BLSHLocalHostSceneEnvironmentUpdater inactiveEnvironmentSession:a2 updateToPresentation:?];
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21FD65144);
  }

  if (!self->_environmentStateMachine)
  {
    [(BLSHLocalHostSceneEnvironmentUpdater *)v15 inactiveEnvironmentSession:a2 updateToPresentation:self];
  }

  objc_storeStrong(&self->_lock_updatingToPresentation, a4);
  v9 = self->_lock_sceneUpdateForPerformingEvent;
  v10 = [(BLSBacklightSceneUpdate *)v9 context];
  v11 = [v10 visualState];
  if (v11)
  {
    v12 = BLSBacklightStateForVisuaState();
  }

  else
  {
    v13 = [(BLSBacklightSceneEnvironment_Private *)self->_localHostEnvironment visualState];
    v12 = BLSBacklightStateForVisuaState();
  }

  [(BLSHLocalHostSceneEnvironmentUpdater *)self _lock_update1HzFromPresentation:v7];
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightEnvironmentStateMachine *)self->_environmentStateMachine setPresentation:v7 withTargetBacklightState:v12];
}

- (void)hostEnvironment:(id)a3 invalidateContentForReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  inactiveBudgetPolicy = self->_inactiveBudgetPolicy;
  v9 = [(BLSHOSTimerProviding *)self->_osTimerProvider now];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__BLSHLocalHostSceneEnvironmentUpdater_hostEnvironment_invalidateContentForReason___block_invoke;
  v12[3] = &unk_27841EAF0;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [(BLSHInactiveBudgetPolicing_Private *)inactiveBudgetPolicy invalidateAtRequestDate:v9 forEnvironment:v10 invalidationBlock:v12];
}

void __83__BLSHLocalHostSceneEnvironmentUpdater_hostEnvironment_invalidateContentForReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 24);
  v3 = MEMORY[0x277CCACA8];
  v5 = [*(a1 + 48) identifier];
  v4 = [v3 stringWithFormat:@"%@ (env:%@)", v1, v5];
  [v2 invalidateAllTimelinesForReason:v4];
}

- (BOOL)_lock_update1HzFromPresentation:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BLSBacklightSceneEnvironment_Private *)self->_localHostEnvironment alwaysOnContentIs1hz];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v4 presentationEntries];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (v7)
  {
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 environment];
        v12 = [v11 clientAlwaysOnContentIs1hz];

        if (v12)
        {
          v7 = v10;
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = bls_flipbook_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v7 environment];
    v19 = [v18 identifier];
    v20 = [v4 bls_shortLoggingString];
    *buf = 134219010;
    v26 = self;
    v27 = 1024;
    v28 = v13;
    v29 = 1024;
    v30 = v5;
    v31 = 2114;
    v32 = v19;
    v33 = 2114;
    v34 = v20;
    _os_log_debug_impl(&dword_21FD11000, v14, OS_LOG_TYPE_DEBUG, "%p:update1HzFromPresentation new1HzFlipbook:%{BOOL}u old1HzFlipbook:%{BOOL}u environment:%{public}@ presentation::%{public}@", buf, 0x2Cu);
  }

  v15 = v5 ^ v13;
  if (v15 == 1)
  {
    [(BLSBacklightSceneEnvironment_Private *)self->_localHostEnvironment setAlwaysOnContentIs1hz:v13];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)timelinesForDateInterval:(id)a3 previousPresentationDate:(id)a4 localHostEnvironment:(id)a5 shouldReset:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator alloc];
  v17 = [(BLSHLocalHostSceneEnvironmentUpdater *)self subHostedHostEnvironments];
  v18 = [(BLSHLocalHostSceneEnvironmentUpdaterTimelinesCalculator *)&v16->super.isa initWithDateInterval:v12 previousPresentationDate:v13 localHostEnvironment:v14 subHostedHostEnvironments:v17 shouldReset:a6 osTimerProvider:self->_osTimerProvider];

  os_unfair_lock_lock(&self->_lock);
  lock_timelinesCalculators = self->_lock_timelinesCalculators;
  if (!lock_timelinesCalculators)
  {
    v20 = [MEMORY[0x277CBEB58] set];
    v21 = self->_lock_timelinesCalculators;
    self->_lock_timelinesCalculators = v20;

    lock_timelinesCalculators = self->_lock_timelinesCalculators;
  }

  [(NSMutableSet *)lock_timelinesCalculators addObject:v18];
  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, v18);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __134__BLSHLocalHostSceneEnvironmentUpdater_timelinesForDateInterval_previousPresentationDate_localHostEnvironment_shouldReset_completion___block_invoke;
  v23[3] = &unk_2784205E0;
  objc_copyWeak(&v25, &location);
  v23[4] = self;
  v22 = v15;
  v24 = v22;
  [v18 calculateWithCompletion:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)updatedEnvironmentWithDelta:backlightSceneUpdate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_4(&dword_21FD11000, v0, v1, "%p (localHostUpdater) calling [environmentStateMachine updateToSpecifier:], dateSpecifier:%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updatedEnvironmentWithDelta:backlightSceneUpdate:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_4(&dword_21FD11000, v0, v1, "%p (localHostUpdater) will start sceneUpdateForPerformingEvent:%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __89__BLSHLocalHostSceneEnvironmentUpdater_updatedEnvironmentWithDelta_backlightSceneUpdate___block_invoke_217_cold_1(uint64_t a1, NSObject *a2, double a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 134218498;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  v10 = 2048;
  v11 = a3;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p (localHostUpdater) [environmentStateMachine performEvent:withInitialSpecifier:performBacklightRamp:] finished, event:%{public}@, duration:%1.1f", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)environmentStateMachine:(const char *)a1 didUpdateToSpecifier:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)inactiveEnvironmentSession:(const char *)a1 updateToPresentation:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)inactiveEnvironmentSession:(uint64_t)a3 updateToPresentation:.cold.2(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"session:%@ exists but no environment state machine", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2114;
    v16 = @"BLSHLocalHostSceneEnvironmentUpdater.m";
    v17 = 1024;
    v18 = 686;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end