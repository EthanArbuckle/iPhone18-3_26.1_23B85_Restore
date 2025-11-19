@interface ATXAppSessionModeLoggingPipeline
- (ATXAppSessionModeLoggingPipeline)init;
- (ATXAppSessionModeLoggingPipeline)initWithModeTransitionPublisher:(id)a3 appLaunchPublisher:(id)a4 notificationEventPublisher:(id)a5 lastEventTimestamp:(double)a6 lastActivityType:(unint64_t)a7;
- (double)lastPipelineRunTimestampFromStore;
- (unint64_t)lastKnownActivityFromStore;
- (void)lastKnownActivityFromStore;
- (void)logAppSessionMetricsWithXPCActivity:(id)a3;
- (void)persistState;
@end

@implementation ATXAppSessionModeLoggingPipeline

- (ATXAppSessionModeLoggingPipeline)init
{
  [(ATXAppSessionModeLoggingPipeline *)self lastPipelineRunTimestampFromStore];
  v4 = v3;
  v5 = [(ATXAppSessionModeLoggingPipeline *)self lastKnownActivityFromStore];
  v6 = objc_opt_new();
  v7 = [v6 transitionPublisherFromStartTime:v4];

  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
  v10 = [v8 appLaunchesSinceDate:v9];

  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = [v12 publisherFromStartTime:v4];
  v14 = [v11 stripStoreEvent:v13];

  v15 = [(ATXAppSessionModeLoggingPipeline *)self initWithModeTransitionPublisher:v7 appLaunchPublisher:v10 notificationEventPublisher:v14 lastEventTimestamp:v5 lastActivityType:v4];
  return v15;
}

- (ATXAppSessionModeLoggingPipeline)initWithModeTransitionPublisher:(id)a3 appLaunchPublisher:(id)a4 notificationEventPublisher:(id)a5 lastEventTimestamp:(double)a6 lastActivityType:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = ATXAppSessionModeLoggingPipeline;
  v16 = [(ATXAppSessionModeLoggingPipeline *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_modeTransitionPublisher, a3);
    objc_storeStrong(&v17->_appLaunchPublisher, a4);
    objc_storeStrong(&v17->_notificationEventPublisher, a5);
    v17->_lastEventTimestamp = a6;
    v17->_lastActivityType = a7;
  }

  return v17;
}

- (double)lastPipelineRunTimestampFromStore
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v3 doubleForKey:@"modeAppSessionPipelineLastRunTimestampKey"];
  v5 = v4;

  return v5;
}

- (unint64_t)lastKnownActivityFromStore
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 objectForKey:@"modeAppSessionPipelineLastKnownModeKey"];
  if (!v4)
  {
LABEL_7:
    v5 = 14;
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

  v5 = [v4 unsignedIntegerValue];
LABEL_8:

  return v5;
}

- (void)logAppSessionMetricsWithXPCActivity:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  notificationEventPublisher = self->_notificationEventPublisher;
  v30[0] = self->_appLaunchPublisher;
  v30[1] = notificationEventPublisher;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v7 = objc_opt_new();
  v27[0] = 0;
  v27[1] = v27;
  lastEventTimestamp = self->_lastEventTimestamp;
  v27[2] = 0x2020000000;
  *&v27[3] = lastEventTimestamp;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  modeTransitionPublisher = self->_modeTransitionPublisher;
  v26[3] = self->_lastActivityType;
  v10 = [(ATXAppSessionModeLoggingPipeline *)self timeMergedPublisherFromEventPublishers:v6 modeTransitionPublisher:modeTransitionPublisher];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke;
  v21[3] = &unk_278598858;
  v21[4] = self;
  v23 = v28;
  v22 = v7;
  v24 = v27;
  v25 = v26;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30;
  v15[3] = &unk_278598880;
  v15[4] = self;
  v18 = v27;
  v19 = v26;
  v11 = v22;
  v16 = v11;
  v12 = v4;
  v17 = v12;
  v20 = v28;
  v13 = [v10 sinkWithCompletion:v21 shouldContinue:v15];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v27, 8);

  _Block_object_dispose(v28, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke(uint64_t a1, void *a2)
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

uint64_t __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30(uint64_t a1, void *a2)
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
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) handleNotificationEvent:v4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [ATXModeDimensionSet alloc];
          v10 = *(*(*(a1 + 64) + 8) + 24);
          v11 = ATXActivityTypeToString();
          v12 = [(ATXModeDimensionSet *)v9 initWithMode:v11];

          [*(a1 + 40) handleNextAppLaunch:v4 dimensionSet:v12];
        }

        else
        {
          v12 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_1(a1);
          }
        }
      }
    }

    v8 = 1;
    if ([*(a1 + 48) didDefer])
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v8 = 0;
    }
  }

  else
  {
    v7 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_2(a1);
    }

    v8 = 1;
  }

  return v8;
}

- (void)persistState
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v5 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v5 setDouble:@"modeAppSessionPipelineLastRunTimestampKey" forKey:self->_lastEventTimestamp];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_lastActivityType];
  [v5 setObject:v4 forKey:@"modeAppSessionPipelineLastKnownModeKey"];
}

uint64_t __99__ATXAppSessionModeLoggingPipeline_timeMergedPublisherFromEventPublishers_modeTransitionPublisher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)lastKnownActivityFromStore
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 error];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __72__ATXAppSessionModeLoggingPipeline_logAppSessionMetricsWithXPCActivity___block_invoke_30_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v9 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end