@interface BLSHWatchdogTester
- (BLSHWatchdogTester)initWithWatchdogProviderDelegate:(id)delegate testables:(id)testables;
- (id)_watchdogProvider;
- (void)_triggerTestWatchdog:(id)watchdog;
@end

@implementation BLSHWatchdogTester

- (BLSHWatchdogTester)initWithWatchdogProviderDelegate:(id)delegate testables:(id)testables
{
  delegateCopy = delegate;
  testablesCopy = testables;
  v16.receiver = self;
  v16.super_class = BLSHWatchdogTester;
  v9 = [(BLSHWatchdogTester *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_lock_nextTimerID = 1;
    objc_storeStrong(&v9->_watchdogProviderDelegate, delegate);
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    testables = v10->_testables;
    v10->_testables = strongToWeakObjectsMapTable;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__BLSHWatchdogTester_initWithWatchdogProviderDelegate_testables___block_invoke;
    v14[3] = &unk_278420BD0;
    v15 = v10;
    [testablesCopy enumerateKeysAndObjectsUsingBlock:v14];
  }

  return v10;
}

void __65__BLSHWatchdogTester_initWithWatchdogProviderDelegate_testables___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(*(a1 + 32) + 8) setObject:a3 forKey:v5];
  v6 = bls_diagnostics_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "observing %{public}@", &v9, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _triggerTestWatchdog, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_watchdogProvider
{
  watchdogProvider = self->_watchdogProvider;
  if (!watchdogProvider)
  {
    v4 = [[BLSHWatchdogProvider alloc] initWithDelegate:self->_watchdogProviderDelegate];
    v5 = self->_watchdogProvider;
    self->_watchdogProvider = v4;

    watchdogProvider = self->_watchdogProvider;
  }

  return watchdogProvider;
}

- (void)_triggerTestWatchdog:(id)watchdog
{
  v61 = *MEMORY[0x277D85DE8];
  watchdogCopy = watchdog;
  v5 = [(NSMapTable *)self->_testables objectForKey:watchdogCopy];
  v6 = bls_diagnostics_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = watchdogCopy;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "got test watchdog %{public}@ with testable %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v58 = __Block_byref_object_copy__14;
  v59 = __Block_byref_object_dispose__14;
  v7 = [BLSHWatchdogTesterTimer alloc];
  watchdogCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Test watchdog %@", watchdogCopy];
  v60 = [(BLSHWatchdogTesterTimer *)v7 initWithExplanation:watchdogCopy];

  if ([watchdogCopy hasSuffix:@".sleepImminent"])
  {
    [*(*&buf[8] + 40) setSleepImminentSinceScheduled:1];
  }

  if ([watchdogCopy hasSuffix:@".delayCBTransitions-15"])
  {
    v9 = [watchdogCopy componentsSeparatedByString:@"-"];
    lastObject = [v9 lastObject];

    [lastObject doubleValue];
    v12 = v11;
    if (objc_opt_respondsToSelector())
    {
      [v5 setCBTransitionsDelayForTesting:v12];
    }

LABEL_8:

    goto LABEL_28;
  }

  if ([watchdogCopy hasSuffix:@".delayCATransitions-7"])
  {
    v13 = [watchdogCopy componentsSeparatedByString:@"-"];
    lastObject = [v13 lastObject];

    [lastObject doubleValue];
    v15 = v14;
    if (objc_opt_respondsToSelector())
    {
      [v5 setCATransitionsDelayForTesting:v15];
    }

    goto LABEL_8;
  }

  _watchdogProvider = [(BLSHWatchdogTester *)self _watchdogProvider];
  [_watchdogProvider fireWatchdogWithTimer:*(*&buf[8] + 40) delegate:v5 timeout:0.0 elapsedTime:3.0];

  if ([watchdogCopy hasSuffix:@".invalidateAfterFire"])
  {
    BSContinuousMachTimeNow();
    v18 = v17;
    v19 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__BLSHWatchdogTester__triggerTestWatchdog___block_invoke;
    block[3] = &unk_278420BF8;
    block[6] = v18;
    block[4] = self;
    block[5] = buf;
    dispatch_after(v19, MEMORY[0x277D85CD0], block);
  }

  else if ([watchdogCopy hasSuffix:@".completeAfterDelay-20"])
  {
    v20 = [watchdogCopy componentsSeparatedByString:@"-"];
    lastObject2 = [v20 lastObject];

    [lastObject2 doubleValue];
    v23 = v22;
    v24 = bls_diagnostics_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v53 = 134217984;
      v54 = v23;
      _os_log_impl(&dword_21FD11000, v24, OS_LOG_TYPE_INFO, "_triggerTestWatchdog: will clear watchdog as complete after %1.1fs", v53, 0xCu);
    }

    BSContinuousMachTimeNow();
    v26 = v25;
    v27 = dispatch_time(0, (v23 * 1000000000.0));
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __43__BLSHWatchdogTester__triggerTestWatchdog___block_invoke_66;
    v51[3] = &unk_278420C20;
    v51[6] = v26;
    *&v51[7] = v23;
    v51[4] = self;
    v51[5] = buf;
    dispatch_after(v27, MEMORY[0x277D85CD0], v51);
  }

  else if ([watchdogCopy hasSuffix:@".replaceAndCompleteAfterDelay-2-10"])
  {
    v28 = [watchdogCopy componentsSeparatedByString:@"-"];
    v29 = [v28 count];
    if (v29 <= 2)
    {
      v42 = bls_diagnostics_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [(BLSHWatchdogTester *)watchdogCopy _triggerTestWatchdog:v29, v42];
      }
    }

    else
    {
      v30 = [v28 objectAtIndex:v29 - 2];
      [v30 doubleValue];
      v32 = v31;

      lastObject3 = [v28 lastObject];
      [lastObject3 doubleValue];
      v35 = v34;

      v36 = bls_diagnostics_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v53 = 134218240;
        v54 = v32;
        v55 = 2048;
        v56 = v35;
        _os_log_impl(&dword_21FD11000, v36, OS_LOG_TYPE_INFO, "_triggerTestWatchdog: will replace after %1.1fs and then clear watchdog as complete after %1.1fs", v53, 0x16u);
      }

      BSContinuousMachTimeNow();
      v38 = v37;
      v39 = dispatch_time(0, (v32 * 1000000000.0));
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __43__BLSHWatchdogTester__triggerTestWatchdog___block_invoke_67;
      v45[3] = &unk_278420C48;
      v49 = v38;
      v50 = v32;
      v48 = buf;
      v45[4] = self;
      v46 = watchdogCopy;
      v47 = v5;
      v40 = MEMORY[0x277D85CD0];
      dispatch_after(v39, MEMORY[0x277D85CD0], v45);
      v41 = dispatch_time(0, (v35 * 1000000000.0));
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __43__BLSHWatchdogTester__triggerTestWatchdog___block_invoke_71;
      v44[3] = &unk_278420C20;
      v44[6] = v38;
      *&v44[7] = v35;
      v44[4] = self;
      v44[5] = buf;
      dispatch_after(v41, v40, v44);
    }
  }

LABEL_28:
  _Block_object_dispose(buf, 8);

  v43 = *MEMORY[0x277D85DE8];
}

void __43__BLSHWatchdogTester__triggerTestWatchdog___block_invoke(uint64_t a1)
{
  BSContinuousMachTimeNow();
  v3 = v2 - *(a1 + 48);
  [*(*(*(a1 + 40) + 8) + 40) invalidate:2];
  v5 = [*(a1 + 32) _watchdogProvider];
  v4 = [*(*(*(a1 + 40) + 8) + 40) explanation];
  [v5 clearWatchdogWithExplanation:v4 reason:2 timeout:0.0 elapsedTime:v3];
}

void __43__BLSHWatchdogTester__triggerTestWatchdog___block_invoke_66(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  BSContinuousMachTimeNow();
  v3 = v2;
  v4 = *(a1 + 48);
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 56);
    v10 = 134217984;
    v11 = v6;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "_triggerTestWatchdog: clearing watchdog as complete after %1.1fs", &v10, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate:2];
  v7 = [*(a1 + 32) _watchdogProvider];
  v8 = [*(*(*(a1 + 40) + 8) + 40) explanation];
  [v7 clearWatchdogWithExplanation:v8 reason:2 timeout:0.0 elapsedTime:v3 - v4];

  v9 = *MEMORY[0x277D85DE8];
}

void __43__BLSHWatchdogTester__triggerTestWatchdog___block_invoke_67(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  BSContinuousMachTimeNow();
  v3 = v2;
  v4 = *(a1 + 64);
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 72);
    *buf = 134217984;
    v17 = v6;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "_triggerTestWatchdog: clearing watchdog as replaced after %1.1fs", buf, 0xCu);
  }

  [*(*(*(a1 + 56) + 8) + 40) invalidate:1];
  v7 = [*(a1 + 32) _watchdogProvider];
  v8 = [*(*(*(a1 + 56) + 8) + 40) explanation];
  [v7 clearWatchdogWithExplanation:v8 reason:1 timeout:0.0 elapsedTime:v3 - v4];

  v9 = [BLSHWatchdogTesterTimer alloc];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Test watchdog %@ (replacement)", *(a1 + 40)];
  v11 = [(BLSHWatchdogTesterTimer *)v9 initWithExplanation:v10];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) _watchdogProvider];
  [v14 fireWatchdogWithTimer:*(*(*(a1 + 56) + 8) + 40) delegate:*(a1 + 48) timeout:0.0 elapsedTime:0.0];

  v15 = *MEMORY[0x277D85DE8];
}

void __43__BLSHWatchdogTester__triggerTestWatchdog___block_invoke_71(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  BSContinuousMachTimeNow();
  v3 = v2;
  v4 = *(a1 + 48);
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 56);
    v10 = 134217984;
    v11 = v6;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "_triggerTestWatchdog: clearing watchdog as complete after %1.1fs", &v10, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate:2];
  v7 = [*(a1 + 32) _watchdogProvider];
  v8 = [*(*(*(a1 + 40) + 8) + 40) explanation];
  [v7 clearWatchdogWithExplanation:v8 reason:2 timeout:0.0 elapsedTime:v3 - v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_triggerTestWatchdog:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2114;
  v7 = a1;
  _os_log_error_impl(&dword_21FD11000, log, OS_LOG_TYPE_ERROR, "only found %lu components in notificationName. should have at least:%{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end