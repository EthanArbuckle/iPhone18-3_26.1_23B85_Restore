@interface ATXContinuousUsageAccumulator
- (ATXContinuousUsageAccumulator)init;
- (ATXContinuousUsageAccumulator)initWithAppLaunchPublisher:(id)publisher;
- (BOOL)successfullyAccumulatedContinuousUseEvents;
- (id)eventWithBundleID:(id)d launchReason:(id)reason startTime:(id)time endTime:(id)endTime duration:(double)duration;
- (void)recordAppLaunchEndEvent:(id)event;
- (void)successfullyAccumulatedContinuousUseEvents;
@end

@implementation ATXContinuousUsageAccumulator

- (ATXContinuousUsageAccumulator)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = BiomeLibrary();
  v5 = [v4 App];
  inFocus = [v5 InFocus];

  v7 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v3 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v8 = [inFocus publisherWithUseCase:*MEMORY[0x277CEBB48] options:v7];
  v9 = [(ATXContinuousUsageAccumulator *)self initWithAppLaunchPublisher:v8];

  return v9;
}

- (ATXContinuousUsageAccumulator)initWithAppLaunchPublisher:(id)publisher
{
  publisherCopy = publisher;
  v13.receiver = self;
  v13.super_class = ATXContinuousUsageAccumulator;
  v6 = [(ATXContinuousUsageAccumulator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLaunchPublisher, publisher);
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
  allInstalledAppsKnownToSpringBoard = [v4 allInstalledAppsKnownToSpringBoard];
  v6 = [v3 initWithArray:allInstalledAppsKnownToSpringBoard];

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
  selfCopy = self;
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

- (void)recordAppLaunchEndEvent:(id)event
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
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
        bundleID = [eventCopy bundleID];
        bundleID2 = [v11 bundleID];
        v14 = [bundleID isEqualToString:bundleID2];

        if (v14)
        {
          absoluteTimestamp = [v11 absoluteTimestamp];
          absoluteTimestamp2 = [eventCopy absoluteTimestamp];
          v17 = [absoluteTimestamp compare:absoluteTimestamp2];

          if (v17 == -1)
          {
            v18 = objc_alloc(MEMORY[0x277CCA970]);
            absoluteTimestamp3 = [v11 absoluteTimestamp];
            absoluteTimestamp4 = [eventCopy absoluteTimestamp];
            v21 = [v18 initWithStartDate:absoluteTimestamp3 endDate:absoluteTimestamp4];

            [v21 duration];
            if (v22 >= 60.0)
            {
              bundleID3 = [eventCopy bundleID];
              launchReason = [v11 launchReason];
              absoluteTimestamp5 = [v11 absoluteTimestamp];
              absoluteTimestamp6 = [eventCopy absoluteTimestamp];
              [v21 duration];
              [(ATXContinuousUsageAccumulator *)self eventWithBundleID:bundleID3 launchReason:launchReason startTime:absoluteTimestamp5 endTime:absoluteTimestamp6 duration:?];
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

- (id)eventWithBundleID:(id)d launchReason:(id)reason startTime:(id)time endTime:(id)endTime duration:(double)duration
{
  endTimeCopy = endTime;
  timeCopy = time;
  reasonCopy = reason;
  dCopy = d;
  v15 = [ATXSessionTaggingAppEntity genreIdForBundleId:dCopy];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  v17 = objc_alloc(MEMORY[0x277CEB8F8]);
  v18 = [MEMORY[0x277CEB8F8] usageInsightsAppLaunchReasonFromBMAppInFocus:reasonCopy];

  v19 = [v17 initWithBundleID:dCopy category:unsignedIntegerValue launchReason:v18 startTime:timeCopy endTime:endTimeCopy duration:duration];

  return v19;
}

- (void)successfullyAccumulatedContinuousUseEvents
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v4 = 136315394;
  v5 = "[ATXContinuousUsageAccumulator successfullyAccumulatedContinuousUseEvents]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error reading merged publishers: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end