@interface HKSleepDaySummaryQuery
+ (void)configureClientInterface:(id)interface;
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (HKSleepDaySummaryQuery)initWithMorningIndexRange:(id)range ascending:(BOOL)ascending limit:(int64_t)limit options:(unint64_t)options resultsHandler:(id)handler;
- (void)client_deliverDaySummaries:(id)summaries clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
- (void)setCacheSettings:(id)settings;
- (void)setCalendarOverrides:(id)overrides;
@end

@implementation HKSleepDaySummaryQuery

- (HKSleepDaySummaryQuery)initWithMorningIndexRange:(id)range ascending:(BOOL)ascending limit:(int64_t)limit options:(unint64_t)options resultsHandler:(id)handler
{
  var1 = range.var1;
  var0 = range.var0;
  v36 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = HKSleepDaySummaryQuery;
  v14 = [(HKQuery *)&v27 _initWithObjectType:0 predicate:0];
  v15 = v14;
  if (v14)
  {
    v14->_morningIndexRange.start = var0;
    v14->_morningIndexRange.duration = var1;
    if (var0 >= 1 && var1 <= 0)
    {
      _HKInitializeLogging();
      v16 = HKLogSleep;
      if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_FAULT))
      {
        v23 = v16;
        v24 = objc_opt_class();
        v26 = v24;
        debugIdentifier = [(HKQuery *)v15 debugIdentifier];
        *buf = 138544130;
        v29 = v24;
        v30 = 2114;
        v31 = debugIdentifier;
        v32 = 2048;
        v33 = var0;
        v34 = 2048;
        v35 = var1;
        _os_log_fault_impl(&dword_19197B000, v23, OS_LOG_TYPE_FAULT, "[%{public}@:%{public}@] Morning index range (start %ld duration %ld) has an incorrect duration", buf, 0x2Au);
      }
    }

    v15->_ascending = ascending;
    v15->_limit = limit;
    v15->_options = options;
    v17 = [handlerCopy copy];
    resultsHandler = v15->_resultsHandler;
    v15->_resultsHandler = v17;

    cacheSettings = v15->_cacheSettings;
    v15->_cacheSettings = 0;

    calendarOverrides = v15->_calendarOverrides;
    v15->_calendarOverrides = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)setCacheSettings:(id)settings
{
  settingsCopy = settings;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__HKSleepDaySummaryQuery_setCacheSettings___block_invoke;
  v8[3] = &unk_1E7378400;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_sync(queue, v8);
}

uint64_t __43__HKSleepDaySummaryQuery_setCacheSettings___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setCalendarOverrides:(id)overrides
{
  overridesCopy = overrides;
  [(HKQuery *)self _throwInvalidArgumentExceptionIfHasBeenExecuted:a2];
  queue = [(HKQuery *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__HKSleepDaySummaryQuery_setCalendarOverrides___block_invoke;
  v8[3] = &unk_1E7378400;
  v8[4] = self;
  v9 = overridesCopy;
  v7 = overridesCopy;
  dispatch_sync(queue, v8);
}

uint64_t __47__HKSleepDaySummaryQuery_setCalendarOverrides___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 200);
  *(v3 + 200) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)client_deliverDaySummaries:(id)summaries clearPending:(BOOL)pending isFinalBatch:(BOOL)batch queryUUID:(id)d
{
  summariesCopy = summaries;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke;
  v15[3] = &unk_1E7379FC0;
  v15[4] = self;
  v16 = summariesCopy;
  pendingCopy = pending;
  batchCopy = batch;
  v17 = dCopy;
  v13 = dCopy;
  v14 = summariesCopy;
  dispatch_async(queue, v15);
}

void __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogSleep;
  if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEBUG))
  {
    __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_cold_1(a1, v2);
  }

  v3 = *(*(a1 + 32) + 160);
  if (v3 && *(a1 + 56) != 1)
  {
    [v3 addObjectsFromArray:*(a1 + 40)];
  }

  else
  {
    v4 = [*(a1 + 40) mutableCopy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 160);
    *(v5 + 160) = v4;
  }

  if (*(a1 + 57) == 1)
  {
    v7 = [*(*(a1 + 32) + 160) copy];
    v8 = *(a1 + 32);
    v9 = *(v8 + 160);
    *(v8 + 160) = 0;

    v10 = _Block_copy(*(*(a1 + 32) + 152));
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_27;
      v15[3] = &unk_1E73766C8;
      v13 = v7;
      v14 = *(a1 + 32);
      v16 = v13;
      v17 = v14;
      v18 = v10;
      [v11 queue_dispatchToClientForUUID:v12 shouldDeactivate:1 block:v15];
    }
  }
}

void __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_27(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 hk_addDayIndex:{objc_msgSend(*(*(&v31 + 1) + 8 * i), "morningIndex")}];
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    }

    while (v5);
  }

  _HKInitializeLogging();
  v8 = HKLogSleep;
  if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = v8;
    v11 = objc_opt_class();
    v12 = *(a1 + 40);
    v13 = v11;
    v14 = [v12 debugIdentifier];
    *buf = 138543874;
    v37 = v11;
    v38 = 2114;
    v39 = v14;
    v40 = 2114;
    v41 = v2;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Delivering summaries for: %{public}@", buf, 0x20u);
  }

  if (HKShowSensitiveLogItems() && os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEBUG))
  {
    _HKInitializeLogging();
    v15 = HKLogSleep;
    if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEBUG))
    {
      __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_27_cold_1(a1, v15);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = a1;
    v16 = *(a1 + 32);
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * v20);
          _HKInitializeLogging();
          v22 = HKLogSleep;
          if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v37 = v21;
            _os_log_debug_impl(&dword_19197B000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    a1 = v26;
  }

  v23 = *(a1 + 40);
  v24 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();

  v25 = *MEMORY[0x1E69E9840];
}

- (void)queue_populateConfiguration:(id)configuration
{
  v18 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = HKSleepDaySummaryQuery;
  [(HKQuery *)&v11 queue_populateConfiguration:configurationCopy];
  [configurationCopy setMorningIndexRange:{self->_morningIndexRange.start, self->_morningIndexRange.duration}];
  [configurationCopy setAscending:self->_ascending];
  [configurationCopy setLimit:self->_limit];
  [configurationCopy setOptions:self->_options];
  [configurationCopy setCacheSettings:self->_cacheSettings];
  [configurationCopy setCalendarOverrides:self->_calendarOverrides];
  _HKInitializeLogging();
  v5 = HKLogSleep;
  if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = v7;
    debugIdentifier = [(HKQuery *)self debugIdentifier];
    *buf = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = debugIdentifier;
    v16 = 2114;
    v17 = configurationCopy;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Configuration populated: %{public}@", buf, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)configureClientInterface:(id)interface
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HKSleepDaySummaryQuery;
  interfaceCopy = interface;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, interfaceCopy);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0, v7.receiver, v7.super_class}];
  [interfaceCopy setClasses:v6 forSelector:sel_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__HKSleepDaySummaryQuery_queue_deliverError___block_invoke;
  block[3] = &unk_1E7376618;
  v10 = errorCopy;
  v11 = v5;
  block[4] = self;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(clientQueue, block);
}

- (void)queue_validate
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v4 = objc_opt_class();
  v5 = v4;
  debugIdentifier = [a2 debugIdentifier];
  cacheSettings = [a2 cacheSettings];
  identifier = [cacheSettings identifier];
  v10 = 138543874;
  v11 = v4;
  v12 = 2114;
  v13 = debugIdentifier;
  v14 = 2112;
  v15 = identifier;
  _os_log_fault_impl(&dword_19197B000, selfCopy, OS_LOG_TYPE_FAULT, "[%{public}@:%{public}@] Not using cached results for query with caching identifier %@ due to unbounded morning index range", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKSleepDaySummaryQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange
{
  p_morningIndexRange = &self->_morningIndexRange;
  start = self->_morningIndexRange.start;
  duration = p_morningIndexRange->duration;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

void __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  log = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v18 = v4;
  v6 = [v5 debugIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v8 = MEMORY[0x1E696AD98];
  v9 = [*(a1 + 40) firstObject];
  v10 = [v8 numberWithInteger:{objc_msgSend(v9, "morningIndex")}];
  v11 = MEMORY[0x1E696AD98];
  v12 = [*(a1 + 40) lastObject];
  v13 = [v11 numberWithInteger:{objc_msgSend(v12, "morningIndex")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 57)];
  *buf = 138544898;
  v20 = v4;
  v21 = 2114;
  v22 = v6;
  v23 = 2112;
  v24 = v7;
  v25 = 2112;
  v26 = v10;
  v27 = 2112;
  v28 = v13;
  v29 = 2112;
  v30 = v14;
  v31 = 2112;
  v32 = v15;
  _os_log_debug_impl(&dword_19197B000, log, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Received batch of %@ summaries (%@ - %@), clear pending: %@, is final: %@", buf, 0x48u);

  v16 = *MEMORY[0x1E69E9840];
}

void __89__HKSleepDaySummaryQuery_client_deliverDaySummaries_clearPending_isFinalBatch_queryUUID___block_invoke_27_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = *(a1 + 40);
  v7 = v5;
  v8 = [v6 debugIdentifier];
  v10 = 138543618;
  v11 = v5;
  v12 = 2114;
  v13 = v8;
  _os_log_debug_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@:%{public}@] Summaries:", &v10, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end