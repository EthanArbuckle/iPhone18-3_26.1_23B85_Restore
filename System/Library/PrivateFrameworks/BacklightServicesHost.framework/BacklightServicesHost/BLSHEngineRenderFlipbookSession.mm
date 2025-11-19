@interface BLSHEngineRenderFlipbookSession
- (BLSHEngineRenderFlipbookSession)initWithDelegate:(id)a3 flipbook:(id)a4 presentation:(id)a5 osInterfaceProvider:(id)a6;
- (NSArray)renderedFrames;
- (NSString)debugDescription;
- (NSString)description;
- (id)telemetryDataWithEndTime:(double)a3 reasonEnded:(id)a4 preventedSleepDuration:(double)a5;
- (uint64_t)lock_memoryUsage;
- (unint64_t)count;
- (unint64_t)memoryUsage;
- (void)_lock_scheduleTimeoutForSpecifier:(uint64_t)a1;
- (void)dealloc;
- (void)environment:(void *)a3 didUpdateToSpecifier:;
- (void)invalidate;
- (void)prepareAndRenderFrameSpecifier:(id)a3;
- (void)renderFrameSpecifier:(void *)a3 timedOutEnvironments:;
- (void)timeoutTimerFiredForSpecifier:(uint64_t)a1;
@end

@implementation BLSHEngineRenderFlipbookSession

- (BLSHEngineRenderFlipbookSession)initWithDelegate:(id)a3 flipbook:(id)a4 presentation:(id)a5 osInterfaceProvider:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v35.receiver = self;
  v35.super_class = BLSHEngineRenderFlipbookSession;
  v14 = [(BLSHEngineRenderFlipbookSession *)&v35 init];
  v15 = v14;
  if (v14)
  {
    v27 = v13;
    v28 = v11;
    objc_storeStrong(&v14->_flipbook, a4);
    objc_storeStrong(&v15->_presentation, a5);
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v15->_lock_delegate, v10);
    objc_storeStrong(&v15->_osInterfaceProvider, a6);
    v16 = [MEMORY[0x277CBEB18] array];
    lock_renderedFrames = v15->_lock_renderedFrames;
    v15->_lock_renderedFrames = v16;

    BSContinuousMachTimeNow();
    v15->_sessionStartTime = v18;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [v12 presentationEntries];
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v31 + 1) + 8 * i) environment];
          if (objc_opt_respondsToSelector())
          {
            [v24 willBeginRenderSession:v15];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v21);
    }

    objc_initWeak(&location, v15);
    objc_copyWeak(&v29, &location);
    v15->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    v13 = v27;
    v11 = v28;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __94__BLSHEngineRenderFlipbookSession_initWithDelegate_flipbook_presentation_osInterfaceProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];
  v3 = BLSStateDataWithTitleDescriptionAndHints();

  return v3;
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_invalidated", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[BLSHEngineRenderFlipbookSession count](self withName:{"count"), @"renderedCount"}];
  v5 = [v3 build];

  return v5;
}

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSMutableArray count](self->_lock_renderedFrames withName:{"count"), @"renderedCount"}];
  v5 = [v3 appendBool:self->_lock_didFailToRender withName:@"didFailToRender" ifEqualTo:1];
  v6 = [v3 appendBool:self->_lock_timedOut withName:@"timedOut" ifEqualTo:1];
  v7 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  if (self->_lock_retryRenderCount >= 1)
  {
    v8 = [v3 appendInt:? withName:?];
  }

  BSContinuousMachTimeNow();
  v10 = [v3 appendDouble:@"totalPreparationSeconds" withName:3 decimalPrecision:v9 - self->_sessionStartTime];
  v11 = [v3 appendDouble:@"accumulatedLayoutSeconds" withName:3 decimalPrecision:self->_lock_accumulatedLayoutDuration];
  v12 = [v3 appendDouble:@"accumulatedRenderSeconds" withName:3 decimalPrecision:self->_lock_accumulatedRenderDuration];
  v13 = [v3 appendObject:self->_lock_preparingSpecifier withName:@"preparingSpecifier" skipIfNil:1];
  v14 = [v3 appendObject:self->_lock_timeoutTimer withName:@"timeoutTimer" skipIfNil:1];
  v15 = [(NSMutableSet *)self->_lock_pendingEnvironments allObjects];
  [v3 appendArraySection:v15 withName:@"pendingEnvironments" multilinePrefix:@"      " skipIfEmpty:1];

  [v3 appendArraySection:self->_lock_renderedFrames withName:@"renderedFrames" multilinePrefix:@"      " skipIfEmpty:1];
  os_unfair_lock_unlock(&self->_lock);
  v16 = [v3 build];

  return v16;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_renderedFrames count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)memoryUsage
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BLSHEngineRenderFlipbookSession *)self lock_memoryUsage];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSArray)renderedFrames
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_renderedFrames copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)invalidate
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  if (self->_lock_didDisableFlipbookPowerSavings)
  {
    WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
    [WeakRetained decrementDisablePowerSavingUsageCountForReason:3];

    self->_lock_didDisableFlipbookPowerSavings = 0;
  }

  [(BSTimerScheduleQuerying *)self->_lock_timeoutTimer invalidate];
  lock_timeoutTimer = self->_lock_timeoutTimer;
  self->_lock_timeoutTimer = 0;

  objc_storeWeak(&self->_lock_delegate, 0);
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(BLSHBacklightEnvironmentPresentation *)self->_presentation presentationEntries];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) environment];
        if (objc_opt_respondsToSelector())
        {
          [v10 willEndRenderSession:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)prepareAndRenderFrameSpecifier:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    [BLSHEngineRenderFlipbookSession prepareAndRenderFrameSpecifier:a2];
  }

  v7 = v6;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    [BLSHEngineRenderFlipbookSession prepareAndRenderFrameSpecifier:a2];
  }

  if (self->_lock_preparingSpecifier)
  {
    [BLSHEngineRenderFlipbookSession prepareAndRenderFrameSpecifier:a2];
  }

  BSContinuousMachTimeNow();
  self->_lock_layoutStartTime = v8;
  if (!self->_lock_didDisableFlipbookPowerSavings)
  {
    self->_lock_didDisableFlipbookPowerSavings = 1;
    WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
    [WeakRetained incrementDisablePowerSavingUsageCountForReason:3];
  }

  objc_storeStrong(&self->_lock_preparingSpecifier, a3);
  v10 = [MEMORY[0x277CBEB58] set];
  lock_pendingEnvironments = self->_lock_pendingEnvironments;
  self->_lock_pendingEnvironments = v10;

  [v7 specifiers];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v12 = v38 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v13)
  {
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = self->_lock_pendingEnvironments;
        v17 = [*(*(&v37 + 1) + 8 * i) environment];
        v18 = [v17 identifier];
        [(NSMutableSet *)v16 addObject:v18];
      }

      v13 = [v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  if (![(NSMutableSet *)self->_lock_pendingEnvironments count])
  {
    [BLSHEngineRenderFlipbookSession prepareAndRenderFrameSpecifier:a2];
  }

  [(BLSHEngineRenderFlipbookSession *)self _lock_scheduleTimeoutForSpecifier:v7];
  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, self);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v20)
  {
    v21 = *v33;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v32 + 1) + 8 * j);
        v24 = [v23 environment];
        v25 = [v23 dateSpecifier];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __66__BLSHEngineRenderFlipbookSession_prepareAndRenderFrameSpecifier___block_invoke;
        v28[3] = &unk_27841EE88;
        objc_copyWeak(&v31, &location);
        v26 = v24;
        v29 = v26;
        v30 = v7;
        [v26 updateToDateSpecifier:v25 sceneContentsUpdated:v28];

        objc_destroyWeak(&v31);
      }

      v20 = [v19 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v20);
  }

  objc_destroyWeak(&location);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)_lock_scheduleTimeoutForSpecifier:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    [*(a1 + 48) invalidate];
    v4 = *(a1 + 64);
    v5 = [MEMORY[0x277CF0C00] builderWithObject:a1];
    v6 = [v5 build];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__BLSHEngineRenderFlipbookSession__lock_scheduleTimeoutForSpecifier___block_invoke;
    v9[3] = &unk_27841EED0;
    objc_copyWeak(&v11, &location);
    v10 = v3;
    v7 = [v4 scheduledTimerWithIdentifier:v6 interval:v9 leewayInterval:1.0 handler:2.0];
    v8 = *(a1 + 48);
    *(a1 + 48) = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __66__BLSHEngineRenderFlipbookSession_prepareAndRenderFrameSpecifier___block_invoke(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [(BLSHEngineRenderFlipbookSession *)WeakRetained environment:a1[5] didUpdateToSpecifier:?];
}

- (id)telemetryDataWithEndTime:(double)a3 reasonEnded:(id)a4 preventedSleepDuration:(double)a5
{
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  v10 = [v9 bls_initWithBSContinuousMachTime:a3];

  v11 = [BLSHFlipbookFramesHistogram histogramWithReferenceDate:v10 flipbookFrames:self->_lock_renderedFrames];
  v12 = [(BLSHBacklightEnvironmentPresentation *)self->_presentation presentationEntries];
  v13 = [v12 bs_mapNoNulls:&__block_literal_global_612];

  v14 = [[BLSHFlipbookRenderSessionTelemetryData alloc] initWithTimestamp:v13 environmentIdentifiers:v8 reasonEnded:v11 sessionFramesHistogram:self->_lock_didFailToRender totalPreparationDuration:[(NSMutableSet *)self->_lock_pendingEnvironments count] accumulatedLayoutDuration:a3 accumulatedRenderDuration:a3 - self->_sessionStartTime preventedSleepDuration:self->_lock_accumulatedLayoutDuration didFailToRender:self->_lock_accumulatedRenderDuration timedOutEnvironmentCount:a5];
  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

id __95__BLSHEngineRenderFlipbookSession_telemetryDataWithEndTime_reasonEnded_preventedSleepDuration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 environment];
  v3 = [v2 identifier];

  return v3;
}

void __69__BLSHEngineRenderFlipbookSession__lock_scheduleTimeoutForSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(BLSHEngineRenderFlipbookSession *)WeakRetained timeoutTimerFiredForSpecifier:?];
}

- (void)timeoutTimerFiredForSpecifier:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    v4 = *(a1 + 24);
    if (v4 != v3)
    {
      [BLSHEngineRenderFlipbookSession timeoutTimerFiredForSpecifier:?];
    }

    *(a1 + 117) = 1;
    v5 = *(a1 + 118);
    *(a1 + 24) = 0;

    v6 = [*(a1 + 32) allObjects];
    [*(a1 + 48) invalidate];
    v7 = *(a1 + 48);
    *(a1 + 48) = 0;

    os_unfair_lock_unlock((a1 + 16));
    if (v5 == 1)
    {
      v8 = bls_flipbook_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [BLSHEngineRenderFlipbookSession timeoutTimerFiredForSpecifier:];
      }
    }

    else
    {
      v9 = BSIsBeingDebugged();
      v10 = bls_flipbook_log();
      v8 = v10;
      if (!v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BLSHEngineRenderFlipbookSession timeoutTimerFiredForSpecifier:];
        }

        [(BLSHEngineRenderFlipbookSession *)a1 renderFrameSpecifier:v3 timedOutEnvironments:v6];
        goto LABEL_10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 134218242;
        v13 = a1;
        v14 = 2114;
        v15 = v6;
        _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_INFO, "%p prepare frame operation did not complete after ~1 second (+leeway), (but it is being debugged), pending environments:%{public}@ ", &v12, 0x16u);
      }
    }

LABEL_10:
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke(void *a1)
{
  os_unfair_lock_lock((a1[4] + 16));
  WeakRetained = objc_loadWeakRetained((a1[4] + 56));
  os_unfair_lock_unlock((a1[4] + 16));
  [WeakRetained renderFramesSession:a1[4] beganRenderingSpecifier:a1[5] timedOutEnvironments:a1[6]];
}

- (uint64_t)lock_memoryUsage
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_28();
    v2 = *(v1 + 40);
    v3 = [v2 countByEnumeratingWithState:v10 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v5 += [*(v10[1] + 8 * i) memoryUsage];
        }

        v4 = [v2 countByEnumeratingWithState:v10 objects:v12 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)environment:(void *)a3 didUpdateToSpecifier:
{
  v10 = a2;
  v5 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    if ((*(a1 + 118) & 1) != 0 || (*(a1 + 117) & 1) != 0 || *(a1 + 24) != v5 || (v6 = *(a1 + 32), [v10 identifier], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "removeObject:", v7), v7, objc_msgSend(*(a1 + 32), "count")))
    {
      os_unfair_lock_unlock((a1 + 16));
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = 0;

      [*(a1 + 48) invalidate];
      v9 = *(a1 + 48);
      *(a1 + 48) = 0;

      *(a1 + 112) = 0;
      os_unfair_lock_unlock((a1 + 16));
      [(BLSHEngineRenderFlipbookSession *)a1 renderFrameSpecifier:v5 timedOutEnvironments:0];
    }
  }
}

- (void)renderFrameSpecifier:(void *)a3 timedOutEnvironments:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 encodedPresentationTime];
    [v6 count];
    [v5 encodedPresentationTime];
    kdebug_trace();
    BSContinuousMachTimeNow();
    *(a1 + 96) = *(a1 + 96) + v8 - *(a1 + 88);
    v9 = [v5 specifiers];
    [v9 count];
    kdebug_trace();

    BSContinuousMachTimeNow();
    v11 = v10;
    v12 = *(a1 + 8);
    v13 = *(a1 + 120);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke;
    v24[3] = &unk_27841EAF0;
    v24[4] = a1;
    v25 = v5;
    v26 = v6;
    OUTLINED_FUNCTION_0_5();
    v15 = 3221225472;
    v16 = __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_2;
    v17 = &unk_27841EF20;
    v21 = v7;
    v18 = v25;
    v19 = a1;
    v22 = v11;
    v20 = v26;
    v23 = sel_renderFrameSpecifier_timedOutEnvironments_;
    [v12 renderFrameForPresentation:v13 dateSpecifier:v18 onRenderBegin:v24 onRenderComplete:v14];
  }
}

void __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v161 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  [v5 frameId];
  v9 = *(a1 + 40);
  kdebug_trace();
  BSContinuousMachTimeNow();
  v11 = v10 - *(a1 + 64);
  v12 = OUTLINED_FUNCTION_25();
  os_unfair_lock_lock(v12);
  *(*(a1 + 40) + 104) = v11 + *(*(a1 + 40) + 104);
  v13 = *(a1 + 40);
  v14 = *(v13 + 118);
  WeakRetained = objc_loadWeakRetained((v13 + 56));
  if (v5)
  {
    [*(*(a1 + 40) + 40) addObject:v5];
  }

  v16 = [*(*(a1 + 40) + 40) count];
  v17 = [(BLSHEngineRenderFlipbookSession *)*(a1 + 40) lock_memoryUsage];
  if (v6)
  {
    v18 = [v6 domain];
    v19 = [v18 isEqual:*MEMORY[0x277CD9DC8]];

    if (v19)
    {
      v20 = [v6 code];
      if (v20 == 5)
      {
        ++*(*(a1 + 40) + 112);
        v51 = OUTLINED_FUNCTION_25();
        os_unfair_lock_unlock(v51);
        v52 = bls_flipbook_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          [OUTLINED_FUNCTION_29() bls_loggingString];
          objc_claimAutoreleasedReturnValue();
          v53 = [OUTLINED_FUNCTION_37() bls_loggingString];
          v54 = [MEMORY[0x277CF0978] sharedFormatter];
          v55 = [v54 stringFromByteCount:v17];
          OUTLINED_FUNCTION_5_1(3.8524e-34, v55, v56, v57, v58, v59, v60, v61, v62, v133, v134, v135, v136, v137, v138, v140);
          *v158 = v53;
          OUTLINED_FUNCTION_6_0(v63, v64);
          OUTLINED_FUNCTION_21();
          _os_log_impl(v65, v66, OS_LOG_TYPE_INFO, v67, v68, 0x30u);
        }

        objc_initWeak(location, *(a1 + 40));
        v69 = dispatch_time(0, 10000000);
        v70 = block;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_619;
        block[3] = &unk_27841EE88;
        objc_copyWeak(&v149, location);
        v147 = *(a1 + 32);
        v148 = *(a1 + 48);
        dispatch_after(v69, MEMORY[0x277D85CD0], block);

        v71 = v147;
        goto LABEL_24;
      }

      if (v20 == 2)
      {
        v21 = *(*(a1 + 40) + 64);
        if (objc_opt_respondsToSelector())
        {
          v22 = [*(*(a1 + 40) + 64) isFlipbookTransparent];
        }

        else
        {
          v22 = 0;
        }

        v19 = v22 & ([WeakRetained isUsingPseudoFlipbook] ^ 1);
        v72 = *(a1 + 40);
        if (v72[28]._os_unfair_lock_opaque >= 1)
        {
          v73 = bls_flipbook_log();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v136 = *(a1 + 40);
            v140 = [v6 bls_loggingString];
            v138 = [*(a1 + 32) bls_loggingString];
            v137 = [MEMORY[0x277CF0978] sharedFormatter];
            v135 = [v137 stringFromByteCount:v17];
            *location = 134219010;
            *&location[4] = v136;
            OUTLINED_FUNCTION_22();
            *(v88 + 14) = v140;
            v157 = v89;
            *v158 = v138;
            *&v158[8] = 1024;
            *(v88 + 34) = v16;
            *&v158[14] = v89;
            *&v158[16] = v90;
            OUTLINED_FUNCTION_21();
            _os_log_error_impl(v91, v92, OS_LOG_TYPE_ERROR, v93, v94, 0x30u);
          }

          v74 = OUTLINED_FUNCTION_25();
          os_unfair_lock_unlock(v74);
          if (v19)
          {
            goto LABEL_33;
          }

          goto LABEL_10;
        }

        if ((v19 | v14))
        {
          os_unfair_lock_unlock(v72 + 4);
          if (v19)
          {
LABEL_33:
            v27 = bls_flipbook_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [OUTLINED_FUNCTION_29() bls_loggingString];
              objc_claimAutoreleasedReturnValue();
              v95 = [OUTLINED_FUNCTION_37() bls_loggingString];
              v96 = [MEMORY[0x277CF0978] sharedFormatter];
              v97 = [v96 stringFromByteCount:v17];
              OUTLINED_FUNCTION_5_1(3.8524e-34, v97, v98, v99, v100, v101, v102, v103, v104, v133, v134, v135, v136, v137, v138, v140);
              *v158 = v95;
              OUTLINED_FUNCTION_6_0(v105, v106);
              OUTLINED_FUNCTION_21();
              _os_log_error_impl(v107, v108, OS_LOG_TYPE_ERROR, v109, v110, 0x30u);
            }

LABEL_35:

            goto LABEL_36;
          }

          goto LABEL_10;
        }

        v72[28]._os_unfair_lock_opaque = 1;
        v85 = OUTLINED_FUNCTION_25();
        os_unfair_lock_unlock(v85);
        v86 = bls_flipbook_log();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          [OUTLINED_FUNCTION_29() bls_loggingString];
          objc_claimAutoreleasedReturnValue();
          v111 = [OUTLINED_FUNCTION_37() bls_loggingString];
          v112 = [MEMORY[0x277CF0978] sharedFormatter];
          v113 = [v112 stringFromByteCount:v17];
          OUTLINED_FUNCTION_5_1(3.8524e-34, v113, v114, v115, v116, v117, v118, v119, v120, v133, v134, v135, v136, v137, v138, v140);
          *v158 = v111;
          OUTLINED_FUNCTION_6_0(v121, v122);
          OUTLINED_FUNCTION_21();
          _os_log_error_impl(v123, v124, OS_LOG_TYPE_ERROR, v125, v126, 0x30u);
        }

        objc_initWeak(location, *(a1 + 40));
        v87 = dispatch_time(0, 50000000);
        v70 = v150;
        v150[0] = MEMORY[0x277D85DD0];
        v150[1] = 3221225472;
        v150[2] = __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_618;
        v150[3] = &unk_27841EE88;
        objc_copyWeak(&v153, location);
        v151 = *(a1 + 32);
        v152 = *(a1 + 48);
        dispatch_after(v87, MEMORY[0x277D85CD0], v150);

        v71 = v151;
LABEL_24:

        objc_destroyWeak(v70 + 6);
        objc_destroyWeak(location);
        goto LABEL_36;
      }
    }

    v23 = OUTLINED_FUNCTION_25();
    os_unfair_lock_unlock(v23);
LABEL_10:
    v24 = bls_flipbook_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v139 = *(a1 + 40);
      [v6 bls_loggingString];
      objc_claimAutoreleasedReturnValue();
      v76 = [OUTLINED_FUNCTION_37() bls_loggingString];
      v142 = [MEMORY[0x277CF0978] sharedFormatter];
      v77 = [v142 stringFromByteCount:v17];
      *location = 134219010;
      *&location[4] = v139;
      OUTLINED_FUNCTION_22();
      *(v78 + 14) = v19;
      v157 = v79;
      *v158 = v76;
      OUTLINED_FUNCTION_6_0(v80, v79);
      OUTLINED_FUNCTION_21();
      _os_log_fault_impl(v81, v82, OS_LOG_TYPE_FAULT, v83, v84, 0x30u);
    }

    if ((v14 & 1) == 0)
    {
      v143 = WeakRetained;
      v141 = *(a1 + 32);
      v25 = v141.i64[0];
      v144 = v6;
      v145 = *(a1 + 48);
      BSDispatchMain();
    }

    goto LABEL_36;
  }

  v26 = OUTLINED_FUNCTION_25();
  os_unfair_lock_unlock(v26);
  if (v14)
  {
    v27 = bls_flipbook_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 40);
      v29 = [v5 bls_loggingString];
      v30 = [MEMORY[0x277CF0978] sharedFormatter];
      v31 = [v30 stringFromByteCount:v17];
      *location = 134218754;
      *&location[4] = v28;
      OUTLINED_FUNCTION_22();
      v156 = v29;
      OUTLINED_FUNCTION_36(v32);
      *&v158[6] = v33;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v34, v35, OS_LOG_TYPE_INFO, v36, v37, 0x26u);
    }

    goto LABEL_35;
  }

  if (!v5)
  {
    v127 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"renderedFrame != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v128 = NSStringFromSelector(*(a1 + 72));
      v129 = *(a1 + 40);
      v130 = objc_opt_class();
      v131 = NSStringFromClass(v130);
      v132 = *(a1 + 40);
      *location = 138544642;
      *&location[4] = v128;
      v155 = 2114;
      v156 = v131;
      v157 = 2048;
      *v158 = v132;
      *&v158[8] = 2114;
      *&v158[10] = @"BLSHAlwaysOnPresentationEngine.m";
      *&v158[18] = 1024;
      *&v158[20] = 2406;
      v159 = 2114;
      v160 = v127;
      _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    [v127 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21FD7FCACLL);
  }

  v38 = bls_flipbook_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = *(a1 + 40);
    v40 = [v5 bls_loggingString];
    v41 = [MEMORY[0x277CF0978] sharedFormatter];
    v42 = [v41 stringFromByteCount:v17];
    *location = 134218754;
    *&location[4] = v39;
    OUTLINED_FUNCTION_22();
    *(v43 + 14) = v40;
    OUTLINED_FUNCTION_36(v44);
    *(v46 + 30) = v45;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v47, v48, OS_LOG_TYPE_INFO, v49, v50, 0x26u);
  }

  [WeakRetained renderFramesSession:*(a1 + 40) didRenderFrame:v5 timedOutEnvironments:*(a1 + 48)];
LABEL_36:

  v75 = *MEMORY[0x277D85DE8];
}

void __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(BLSHEngineRenderFlipbookSession *)WeakRetained renderFrameSpecifier:*(a1 + 40) timedOutEnvironments:?];
}

void __77__BLSHEngineRenderFlipbookSession_renderFrameSpecifier_timedOutEnvironments___block_invoke_619(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(BLSHEngineRenderFlipbookSession *)WeakRetained renderFrameSpecifier:*(a1 + 40) timedOutEnvironments:?];
}

- (void)prepareAndRenderFrameSpecifier:(char *)a1 .cold.1(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_preparingSpecifier == nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)prepareAndRenderFrameSpecifier:(char *)a1 .cold.2(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_lock_pendingEnvironments count] > 0", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)prepareAndRenderFrameSpecifier:(char *)a1 .cold.3(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_invalidated", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)prepareAndRenderFrameSpecifier:(char *)a1 .cold.4(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"specifier != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)timeoutTimerFiredForSpecifier:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_preparingSpecifier == specifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)timeoutTimerFiredForSpecifier:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_30();
  v4 = v0;
  _os_log_error_impl(&dword_21FD11000, v1, OS_LOG_TYPE_ERROR, "%p prepare frame operation did not complete after ~1 second (+leeway), pending environments:%{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)timeoutTimerFiredForSpecifier:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end