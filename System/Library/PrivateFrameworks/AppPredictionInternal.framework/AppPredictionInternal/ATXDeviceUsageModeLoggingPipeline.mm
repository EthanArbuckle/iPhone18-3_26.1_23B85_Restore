@interface ATXDeviceUsageModeLoggingPipeline
- (ATXDeviceUsageModeLoggingPipeline)init;
- (ATXDeviceUsageModeLoggingPipeline)initWithModeTransitionPublisher:(id)publisher displayIntervalPublisher:(id)intervalPublisher lastEventTimestamp:(double)timestamp lastActivityType:(unint64_t)type;
- (BOOL)_shouldCoalesceOnInterval:(id)interval nextInterval:(id)nextInterval;
- (double)lastPipelineRunTimestampFromStore;
- (id)_coalesceAndFilterDisplayOnIntervals:(id)intervals;
- (id)displayIntervalsFromStartDate:(id)date endDate:(id)endDate;
- (unint64_t)lastKnownActivityFromStore;
- (void)logDeviceUsageWithXPCActivity:(id)activity;
- (void)persistState;
@end

@implementation ATXDeviceUsageModeLoggingPipeline

- (ATXDeviceUsageModeLoggingPipeline)initWithModeTransitionPublisher:(id)publisher displayIntervalPublisher:(id)intervalPublisher lastEventTimestamp:(double)timestamp lastActivityType:(unint64_t)type
{
  publisherCopy = publisher;
  intervalPublisherCopy = intervalPublisher;
  v16.receiver = self;
  v16.super_class = ATXDeviceUsageModeLoggingPipeline;
  v13 = [(ATXDeviceUsageModeLoggingPipeline *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_modeTransitionPublisher, publisher);
    objc_storeStrong(&v14->_displayIntervalPublisher, intervalPublisher);
    v14->_lastEventTimestamp = timestamp;
    v14->_lastActivityType = type;
  }

  return v14;
}

- (ATXDeviceUsageModeLoggingPipeline)init
{
  [(ATXDeviceUsageModeLoggingPipeline *)self lastPipelineRunTimestampFromStore];
  v4 = v3;
  lastKnownActivityFromStore = [(ATXDeviceUsageModeLoggingPipeline *)self lastKnownActivityFromStore];
  v6 = objc_opt_new();
  v7 = [v6 transitionPublisherFromStartTime:v4];

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [(ATXDeviceUsageModeLoggingPipeline *)self displayIntervalsFromStartDate:v8 endDate:v9];

  v11 = [(ATXDeviceUsageModeLoggingPipeline *)self initWithModeTransitionPublisher:v7 displayIntervalPublisher:v10 lastEventTimestamp:lastKnownActivityFromStore lastActivityType:v4];
  return v11;
}

- (double)lastPipelineRunTimestampFromStore
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v3 doubleForKey:@"modeDeviceUsagePipelineLastRunTimestampKey"];
  v5 = v4;

  return v5;
}

- (unint64_t)lastKnownActivityFromStore
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 objectForKey:@"modeDeviceUsagePipelineLastKnownModeKey"];
  if (!v4)
  {
LABEL_7:
    unsignedIntegerValue = 14;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXAppSessionModeLoggingPipeline lastKnownActivityFromStore];
    }

    goto LABEL_7;
  }

  unsignedIntegerValue = [v4 unsignedIntegerValue];
LABEL_8:

  return unsignedIntegerValue;
}

- (id)displayIntervalsFromStartDate:(id)date endDate:(id)endDate
{
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v8 = endDateCopy;
  if (dateCopy && endDateCopy && [dateCopy compare:endDateCopy] != 1)
  {
    v11 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [dateCopy timeIntervalSinceReferenceDate];
      v15 = v14;
      [v8 timeIntervalSinceReferenceDate];
      *buf = 138412802;
      v28 = v13;
      v29 = 2048;
      v30 = v15;
      v31 = 2048;
      v32 = v16;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "%@ - Retrieving display on intervals between timestamps %f and %f", buf, 0x20u);
    }

    v17 = objc_opt_new();
    v18 = objc_opt_new();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __75__ATXDeviceUsageModeLoggingPipeline_displayIntervalsFromStartDate_endDate___block_invoke;
    v25[3] = &unk_278599810;
    v26 = v18;
    v19 = v18;
    [v17 enumerateDisplayOnIntervalsFromStartDate:dateCopy endDate:v8 block:v25];
    v20 = [(ATXDeviceUsageModeLoggingPipeline *)self _coalesceAndFilterDisplayOnIntervals:v19];
    bpsPublisher = [v20 bpsPublisher];
  }

  else
  {
    v9 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412802;
      v28 = v24;
      v29 = 2112;
      v30 = dateCopy;
      v31 = 2112;
      v32 = v8;
      _os_log_error_impl(&dword_2263AA000, v9, OS_LOG_TYPE_ERROR, "%@ - Invalid start and end dates for reading display on intervals, startDate: %@, endDate: %@", buf, 0x20u);
    }

    bpsPublisher = [MEMORY[0x277CBEBF8] bpsPublisher];
  }

  v21 = *MEMORY[0x277D85DE8];

  return bpsPublisher;
}

- (id)_coalesceAndFilterDisplayOnIntervals:(id)intervals
{
  v33 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v25 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = intervalsCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  obj = v5;
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v5 = 0;
  v8 = *v29;
  do
  {
    v9 = 0;
    v26 = v7;
    do
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v28 + 1) + 8 * v9);
      if (v5)
      {
        if ([(ATXDeviceUsageModeLoggingPipeline *)self _shouldCoalesceOnInterval:v5 nextInterval:*(*(&v28 + 1) + 8 * v9)])
        {
          v11 = v8;
          selfCopy = self;
          v13 = objc_alloc(MEMORY[0x277CEBC48]);
          v14 = objc_alloc(MEMORY[0x277CCA970]);
          onInterval = [v5 onInterval];
          startDate = [onInterval startDate];
          onInterval2 = [v10 onInterval];
          endDate = [onInterval2 endDate];
          v19 = [v14 initWithStartDate:startDate endDate:endDate];
          v20 = [v13 initWithOnInterval:v19];

          v5 = v20;
          self = selfCopy;
          v8 = v11;
          v7 = v26;
        }

        else
        {
          [v25 addObject:v5];
          v21 = v10;

          v5 = v21;
        }
      }

      else
      {
        v5 = v10;
      }

      ++v9;
    }

    while (v7 != v9);
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v7);

  if (v5)
  {
    [v25 addObject:v5];
LABEL_15:
  }

  v22 = [v25 _pas_filteredArrayWithTest:&__block_literal_global_213];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

BOOL __74__ATXDeviceUsageModeLoggingPipeline__coalesceAndFilterDisplayOnIntervals___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 onInterval];
  [v2 duration];
  v4 = v3 >= 3.0;

  return v4;
}

- (BOOL)_shouldCoalesceOnInterval:(id)interval nextInterval:(id)nextInterval
{
  intervalCopy = interval;
  nextIntervalCopy = nextInterval;
  onInterval = [nextIntervalCopy onInterval];
  endDate = [onInterval endDate];
  [endDate timeIntervalSinceReferenceDate];
  v10 = v9;
  onInterval2 = [intervalCopy onInterval];
  startDate = [onInterval2 startDate];
  [startDate timeIntervalSinceReferenceDate];
  v14 = v13;

  if (v10 <= v14)
  {
    v20 = 0;
  }

  else
  {
    onInterval3 = [nextIntervalCopy onInterval];
    startDate2 = [onInterval3 startDate];
    onInterval4 = [intervalCopy onInterval];
    endDate2 = [onInterval4 endDate];
    [startDate2 timeIntervalSinceDate:endDate2];
    v20 = v19 < 2.0;
  }

  return v20;
}

- (void)logDeviceUsageWithXPCActivity:(id)activity
{
  v46[1] = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v46[0] = self->_displayIntervalPublisher;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v34 = 0;
  v35 = &v34;
  lastEventTimestamp = self->_lastEventTimestamp;
  v36 = 0x2020000000;
  v37 = lastEventTimestamp;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  lastActivityType = self->_lastActivityType;
  v7 = objc_opt_new();
  v8 = [(ATXDeviceUsageModeLoggingPipeline *)self timeMergedPublisherFromEventPublishers:v5 modeTransitionPublisher:self->_modeTransitionPublisher];
  v9 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = v35[3];
    v13 = v31[3];
    v14 = ATXActivityTypeToString();
    *buf = 138412802;
    v41 = v11;
    v42 = 2048;
    v43 = v12;
    v44 = 2112;
    v45 = v14;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "%@ - Logging Device Usage starting from timestamp %f with most recent transition %@", buf, 0x20u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __67__ATXDeviceUsageModeLoggingPipeline_logDeviceUsageWithXPCActivity___block_invoke;
  v25[3] = &unk_278598858;
  v25[4] = self;
  v27 = v38;
  v26 = v7;
  v28 = &v34;
  v29 = &v30;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__ATXDeviceUsageModeLoggingPipeline_logDeviceUsageWithXPCActivity___block_invoke_33;
  v19[3] = &unk_278598880;
  v19[4] = self;
  v22 = &v34;
  v23 = &v30;
  v15 = v26;
  v20 = v15;
  v16 = activityCopy;
  v21 = v16;
  v24 = v38;
  v17 = [v8 sinkWithCompletion:v25 shouldContinue:v19];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __67__ATXDeviceUsageModeLoggingPipeline_logDeviceUsageWithXPCActivity___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_cold_1(a1, v3);
    }
  }

  else
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v6 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ - Terminating due to XPC deferral", &v11, 0xCu);
      }
    }

    [*(a1 + 40) logToCoreAnalytics];
    *(*(a1 + 32) + 8) = *(*(*(a1 + 56) + 8) + 24);
    *(*(a1 + 32) + 16) = *(*(*(a1 + 64) + 8) + 24);
    [*(a1 + 32) persistState];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __67__ATXDeviceUsageModeLoggingPipeline_logDeviceUsageWithXPCActivity___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eventTime];
    [v5 timeIntervalSinceReferenceDate];
    *(*(*(a1 + 56) + 8) + 24) = v6;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 64) + 8) + 24) = [v4 activityTypeAfterTransition];
      v7 = [ATXModeDimensionSet alloc];
      v8 = *(*(*(a1 + 64) + 8) + 24);
      v9 = ATXActivityTypeToString();
      v10 = [(ATXModeDimensionSet *)v7 initWithMode:v9];

      v11 = *(a1 + 40);
      v12 = [v4 eventTime];
      [v11 handleModeDimensionSetChange:v10 changeTime:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v4;
        v16 = [ATXModeDimensionSet alloc];
        v17 = *(*(*(a1 + 64) + 8) + 24);
        v18 = ATXActivityTypeToString();
        v10 = [(ATXModeDimensionSet *)v16 initWithMode:v18];

        [*(a1 + 40) handleNextOnInterval:v15 dimensionSet:v10];
      }

      else
      {
        v10 = __atxlog_handle_metrics();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_1(a1);
        }
      }
    }

    v14 = 1;
    if ([*(a1 + 48) didDefer])
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v14 = 0;
    }
  }

  else
  {
    v13 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_2(a1);
    }

    v14 = 1;
  }

  return v14;
}

uint64_t __100__ATXDeviceUsageModeLoggingPipeline_timeMergedPublisherFromEventPublishers_modeTransitionPublisher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)persistState
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v5 setDouble:@"modeDeviceUsagePipelineLastRunTimestampKey" forKey:self->_lastEventTimestamp];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_lastActivityType];
  [v5 setObject:v4 forKey:@"modeDeviceUsagePipelineLastKnownModeKey"];
}

@end