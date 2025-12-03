@interface EKTravelAdvisoryTimelinessAuthority
+ (id)stringForPeriod:(unint64_t)period;
- (BOOL)active;
- (EKTravelAdvisoryTimelinessAuthority)init;
- (EKTravelAdvisoryTimelinessAuthority)initWithDateProvider:(id)provider;
- (NSDate)startOfLeaveNowPeriod;
- (NSDate)startOfRunningLatePeriod;
- (id)periodChangedCallback;
- (unint64_t)period;
- (void)_refresh;
- (void)_refreshOnDate:(id)date;
- (void)_refreshPeriod;
- (void)_refreshTimer;
- (void)_uninstallTimer;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)setPeriodChangedCallback:(id)callback;
- (void)updateWithHypothesis:(id)hypothesis;
@end

@implementation EKTravelAdvisoryTimelinessAuthority

- (EKTravelAdvisoryTimelinessAuthority)init
{
  mEMORY[0x1E6993008] = [MEMORY[0x1E6993008] sharedInstance];
  v4 = [(EKTravelAdvisoryTimelinessAuthority *)self initWithDateProvider:mEMORY[0x1E6993008]];

  return v4;
}

- (EKTravelAdvisoryTimelinessAuthority)initWithDateProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = EKTravelAdvisoryTimelinessAuthority;
  v6 = [(EKTravelAdvisoryTimelinessAuthority *)&v14 init];
  if (v6)
  {
    objc_opt_class();
    v7 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v7 UTF8String];

    v9 = dispatch_queue_create(uTF8String, 0);
    [(EKTravelAdvisoryTimelinessAuthority *)v6 setWorkQueue:v9];

    objc_opt_class();
    v10 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String2 = [v10 UTF8String];

    v12 = dispatch_queue_create(uTF8String2, 0);
    [(EKTravelAdvisoryTimelinessAuthority *)v6 setCallbackQueue:v12];

    objc_storeStrong(&v6->_dateProvider, provider);
  }

  return v6;
}

- (void)dealloc
{
  [(EKTravelAdvisoryTimelinessAuthority *)self _uninstallTimer];
  v3.receiver = self;
  v3.super_class = EKTravelAdvisoryTimelinessAuthority;
  [(EKTravelAdvisoryTimelinessAuthority *)&v3 dealloc];
}

- (BOOL)active
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__EKTravelAdvisoryTimelinessAuthority_active__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __45__EKTravelAdvisoryTimelinessAuthority_active__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalActive];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)activate
{
  workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKTravelAdvisoryTimelinessAuthority_activate__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __47__EKTravelAdvisoryTimelinessAuthority_activate__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) internalActive])
  {
    v2 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __47__EKTravelAdvisoryTimelinessAuthority_activate__block_invoke_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  else
  {
    [*v1 setInternalActive:1];
    v9 = *v1;

    [v9 _refresh];
  }
}

- (void)deactivate
{
  workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EKTravelAdvisoryTimelinessAuthority_deactivate__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __49__EKTravelAdvisoryTimelinessAuthority_deactivate__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) internalActive])
  {
    [*v1 setInternalActive:0];
    v2 = *v1;

    [v2 _refresh];
  }

  else
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __49__EKTravelAdvisoryTimelinessAuthority_deactivate__block_invoke_cold_1(v1, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (NSDate)startOfLeaveNowPeriod
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__EKTravelAdvisoryTimelinessAuthority_startOfLeaveNowPeriod__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __60__EKTravelAdvisoryTimelinessAuthority_startOfLeaveNowPeriod__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) startOfLeaveNowPeriodInternal];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSDate)startOfRunningLatePeriod
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__EKTravelAdvisoryTimelinessAuthority_startOfRunningLatePeriod__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __63__EKTravelAdvisoryTimelinessAuthority_startOfRunningLatePeriod__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) startOfRunningLatePeriodInternal];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)updateWithHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  objc_initWeak(&location, self);
  workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__EKTravelAdvisoryTimelinessAuthority_updateWithHypothesis___block_invoke;
  v7[3] = &unk_1E77FEB10;
  v8 = hypothesisCopy;
  selfCopy = self;
  v6 = hypothesisCopy;
  objc_copyWeak(&v10, &location);
  dispatch_async(workQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__EKTravelAdvisoryTimelinessAuthority_updateWithHypothesis___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __60__EKTravelAdvisoryTimelinessAuthority_updateWithHypothesis___block_invoke_cold_1(a1, v3);
    }

    v2 = *(a1 + 32);
  }

  v4 = [v2 suggestedDepartureDate];
  v5 = [v4 dateByAddingTimeInterval:-120.0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setStartOfLeaveNowPeriodInternal:v5];

  v7 = [*(a1 + 32) aggressiveDepartureDate];
  v8 = objc_loadWeakRetained((a1 + 48));
  [v8 setStartOfRunningLatePeriodInternal:v7];

  v9 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __60__EKTravelAdvisoryTimelinessAuthority_updateWithHypothesis___block_invoke_cold_2(v9, (a1 + 48));
  }

  v10 = objc_loadWeakRetained((a1 + 48));
  [v10 _refresh];
}

- (void)setPeriodChangedCallback:(id)callback
{
  callbackCopy = callback;
  workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__EKTravelAdvisoryTimelinessAuthority_setPeriodChangedCallback___block_invoke;
  v7[3] = &unk_1E77FD1A8;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(workQueue, v7);
}

- (id)periodChangedCallback
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__EKTravelAdvisoryTimelinessAuthority_periodChangedCallback__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __60__EKTravelAdvisoryTimelinessAuthority_periodChangedCallback__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalPeriodChangedCallback];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)period
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__EKTravelAdvisoryTimelinessAuthority_period__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __45__EKTravelAdvisoryTimelinessAuthority_period__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalPeriod];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (id)stringForPeriod:(unint64_t)period
{
  if (period > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77FEB58[period];
  }
}

- (void)_refresh
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Refreshing [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_refreshPeriod
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v6 = +[EKTravelAdvisoryTimelinessAuthority stringForPeriod:](EKTravelAdvisoryTimelinessAuthority, "stringForPeriod:", [a2 internalPeriod]);
  v7 = [EKTravelAdvisoryTimelinessAuthority stringForPeriod:a3];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x20u);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_refreshTimer
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "Calculated next refresh date of [%@] in [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_refreshOnDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    v6 = [dateCopy CalIsBeforeDate:date];

    if (v6)
    {
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        [EKTravelAdvisoryTimelinessAuthority _refreshOnDate:];
      }
    }

    else
    {
      timer = [(EKTravelAdvisoryTimelinessAuthority *)self timer];
      if (!timer)
      {
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
        {
          [EKTimedEventStorePurger _resetIdleTimer];
        }

        workQueue = [(EKTravelAdvisoryTimelinessAuthority *)self workQueue];
        timer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, workQueue);

        [(EKTravelAdvisoryTimelinessAuthority *)self setTimer:timer];
        objc_initWeak(&location, self);
        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __54__EKTravelAdvisoryTimelinessAuthority__refreshOnDate___block_invoke;
        v16 = &unk_1E77FD3F0;
        objc_copyWeak(&v17, &location);
        dispatch_source_set_event_handler(timer, &v13);
        dispatch_activate(timer);
        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      [dateCopy timeIntervalSinceNow];
      v10 = v9;
      v11 = dispatch_time(0, (v9 * 1000000000.0));
      v12 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
      {
        [(EKTravelAdvisoryTimelinessAuthority *)v12 _refreshOnDate:v10];
      }

      dispatch_source_set_timer(timer, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  else
  {
    [(EKTravelAdvisoryTimelinessAuthority *)self _uninstallTimer];
  }
}

void __54__EKTravelAdvisoryTimelinessAuthority__refreshOnDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __54__EKTravelAdvisoryTimelinessAuthority__refreshOnDate___block_invoke_cold_1();
    }

    [WeakRetained _refresh];
  }
}

- (void)_uninstallTimer
{
  timer = [(EKTravelAdvisoryTimelinessAuthority *)self timer];
  if (timer)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKTimedEventStorePurger _uninstallTimer];
    }

    dispatch_source_cancel(timer);
    [(EKTravelAdvisoryTimelinessAuthority *)self setTimer:0];
  }
}

void __47__EKTravelAdvisoryTimelinessAuthority_activate__block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, a2, a3, "Already active.  Will not activate [%@]", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __49__EKTravelAdvisoryTimelinessAuthority_deactivate__block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, a2, a3, "Already inactive.  Will not deactivate [%@]", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __60__EKTravelAdvisoryTimelinessAuthority_updateWithHypothesis___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "nil 'hypothesis' received in [%@]", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __60__EKTravelAdvisoryTimelinessAuthority_updateWithHypothesis___block_invoke_cold_2(void *a1, id *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  WeakRetained = objc_loadWeakRetained(a2);
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = objc_loadWeakRetained(a2);
  v7 = [v6 startOfLeaveNowPeriodInternal];
  v8 = objc_loadWeakRetained(a2);
  v9 = [v8 startOfRunningLatePeriodInternal];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v10, v11, v12, v13, v14, 0x2Au);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_refreshOnDate:(void *)a1 .cold.2(void *a1, double a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithDouble:a2];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [v7 dateByAddingTimeInterval:a2];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x2Au);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_refreshOnDate:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "[%@] is before now.  Will not set up a timer to refresh [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

void __54__EKTravelAdvisoryTimelinessAuthority__refreshOnDate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Timer fired in [%@].", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end