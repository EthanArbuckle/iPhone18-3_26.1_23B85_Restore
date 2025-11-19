@interface ATXContinuousUsageAccumulator
- (ATXContinuousUsageAccumulator)init;
- (ATXContinuousUsageAccumulator)initWithAppLaunchPublisher:(id)a3;
- (BOOL)successfullyAccumulatedContinuousUseEvents;
- (id)eventWithBundleID:(id)a3 launchReason:(id)a4 startTime:(id)a5 endTime:(id)a6 duration:(double)a7;
- (void)recordAppLaunchEndEvent:(id)a3;
- (void)successfullyAccumulatedContinuousUseEvents;
@end

@implementation ATXContinuousUsageAccumulator

- (ATXContinuousUsageAccumulator)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = BiomeLibrary();
  v5 = [v4 App];
  v6 = [v5 InFocus];

  v7 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v3 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v8 = [v6 publisherWithUseCase:*MEMORY[0x277CEBB48] options:v7];
  v9 = [(ATXContinuousUsageAccumulator *)self initWithAppLaunchPublisher:v8];

  return v9;
}

- (ATXContinuousUsageAccumulator)initWithAppLaunchPublisher:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ATXContinuousUsageAccumulator;
  v6 = [(ATXContinuousUsageAccumulator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLaunchPublisher, a3);
    v8 = objc_opt_new();
    appInFocusStartingEvents = v7->_appInFocusStartingEvents;
    v7->_appInFocusStartingEvents = v8;

    v10 = objc_opt_new();
    continuousUsageAccumulator = v7->_continuousUsageAccumulator;
    v7->_continuousUsageAccumulator = v10;
  }

  return v7;
}

- (BOOL)successfullyAccumulatedContinuousUseEvents
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = +[_ATXAppIconState sharedInstance];
  v5 = [v4 allInstalledAppsKnownToSpringBoard];
  v6 = [v3 initWithArray:v5];

  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__29;
  v19[3] = __Block_byref_object_dispose__29;
  v20 = 0;
  appLaunchPublisher = self->_appLaunchPublisher;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__ATXContinuousUsageAccumulator_successfullyAccumulatedContinuousUseEvents__block_invoke;
  v17[3] = &unk_278597540;
  v17[4] = &v18;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__ATXContinuousUsageAccumulator_successfullyAccumulatedContinuousUseEvents__block_invoke_2;
  v14[3] = &unk_2785988C8;
  v8 = v6;
  v15 = v8;
  v16 = self;
  v9 = [(BPSPublisher *)appLaunchPublisher sinkWithCompletion:v17 receiveInput:v14];
  v10 = *(v19[0] + 40);
  if (v10)
  {
    p_super = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [(ATXContinuousUsageAccumulator *)v19 successfullyAccumulatedContinuousUseEvents];
    }
  }

  else
  {
    v12 = self->_continuousUsageAccumulator;
    p_super = &self->_continuousUseSessions->super;
    self->_continuousUseSessions = &v12->super;
  }

  _Block_object_dispose(&v18, 8);
  return v10 == 0;
}

uint64_t __75__ATXContinuousUsageAccumulator_successfullyAccumulatedContinuousUseEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __75__ATXContinuousUsageAccumulator_successfullyAccumulatedContinuousUseEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 bundleID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    if ([v6 starting])
    {
      [*(a1 + 40) recordAppLaunchStartEvent:v6];
    }

    else if (([v6 starting] & 1) == 0)
    {
      [*(a1 + 40) recordAppLaunchEndEvent:v6];
    }
  }
}

- (void)recordAppLaunchEndEvent:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_appInFocusStartingEvents copy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    v29 = *v33;
    v30 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v4 bundleID];
        v13 = [v11 bundleID];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v15 = [v11 absoluteTimestamp];
          v16 = [v4 absoluteTimestamp];
          v17 = [v15 compare:v16];

          if (v17 == -1)
          {
            v18 = objc_alloc(MEMORY[0x277CCA970]);
            v19 = [v11 absoluteTimestamp];
            v20 = [v4 absoluteTimestamp];
            v21 = [v18 initWithStartDate:v19 endDate:v20];

            [v21 duration];
            if (v22 >= 60.0)
            {
              v31 = [v4 bundleID];
              v23 = [v11 launchReason];
              v24 = [v11 absoluteTimestamp];
              v25 = [v4 absoluteTimestamp];
              [v21 duration];
              [(ATXContinuousUsageAccumulator *)self eventWithBundleID:v31 launchReason:v23 startTime:v24 endTime:v25 duration:?];
              v27 = v26 = self;

              v9 = v29;
              v6 = v30;

              [(NSMutableArray *)v26->_continuousUsageAccumulator addObject:v27];
              self = v26;
            }

            [(NSMutableArray *)self->_appInFocusStartingEvents removeObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)eventWithBundleID:(id)a3 launchReason:(id)a4 startTime:(id)a5 endTime:(id)a6 duration:(double)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [ATXSessionTaggingAppEntity genreIdForBundleId:v14];
  v16 = [v15 unsignedIntegerValue];

  v17 = objc_alloc(MEMORY[0x277CEB8F8]);
  v18 = [MEMORY[0x277CEB8F8] usageInsightsAppLaunchReasonFromBMAppInFocus:v13];

  v19 = [v17 initWithBundleID:v14 category:v16 launchReason:v18 startTime:v12 endTime:v11 duration:a7];

  return v19;
}

- (void)successfullyAccumulatedContinuousUseEvents
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 136315394;
  v5 = "[ATXContinuousUsageAccumulator successfullyAccumulatedContinuousUseEvents]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error reading merged publishers: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end