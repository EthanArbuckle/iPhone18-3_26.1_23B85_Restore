@interface ATXMindlessCyclingUsageAccumulator
- (ATXMindlessCyclingUsageAccumulator)init;
- (ATXMindlessCyclingUsageAccumulator)initWithAppLaunchPublisher:(id)a3;
- (BOOL)accumulateMindlessCyclingEvents;
- (id)eventWithBundleID:(id)a3 launchReason:(id)a4 startTime:(id)a5 endTime:(id)a6 duration:(double)a7;
- (void)accumulateMindlessCyclingEvents;
- (void)recordAppLaunchEndEvent:(id)a3;
@end

@implementation ATXMindlessCyclingUsageAccumulator

- (ATXMindlessCyclingUsageAccumulator)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = BiomeLibrary();
  v5 = [v4 App];
  v6 = [v5 InFocus];
  v7 = [v6 atx_publisherFromStartDate:v3];

  v8 = [(ATXMindlessCyclingUsageAccumulator *)self initWithAppLaunchPublisher:v7];
  return v8;
}

- (ATXMindlessCyclingUsageAccumulator)initWithAppLaunchPublisher:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ATXMindlessCyclingUsageAccumulator;
  v6 = [(ATXMindlessCyclingUsageAccumulator *)&v12 init];
  if (v6)
  {
    v7 = objc_opt_new();
    appInFocusStartingEvents = v6->_appInFocusStartingEvents;
    v6->_appInFocusStartingEvents = v7;

    v9 = objc_opt_new();
    mindlessCyclingEventsAccumulator = v6->_mindlessCyclingEventsAccumulator;
    v6->_mindlessCyclingEventsAccumulator = v9;

    objc_storeStrong(&v6->_appLaunchPublisher, a3);
  }

  return v6;
}

- (BOOL)accumulateMindlessCyclingEvents
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = +[_ATXAppIconState sharedInstance];
  v5 = [v4 allInstalledAppsKnownToSpringBoard];
  v6 = [v3 initWithArray:v5];

  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__12;
  v19[3] = __Block_byref_object_dispose__12;
  v20 = 0;
  appLaunchPublisher = self->_appLaunchPublisher;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__ATXMindlessCyclingUsageAccumulator_accumulateMindlessCyclingEvents__block_invoke;
  v17[3] = &unk_278597540;
  v17[4] = &v18;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__ATXMindlessCyclingUsageAccumulator_accumulateMindlessCyclingEvents__block_invoke_2;
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
      [(ATXMindlessCyclingUsageAccumulator *)v19 accumulateMindlessCyclingEvents];
    }
  }

  else
  {
    v12 = self->_mindlessCyclingEventsAccumulator;
    p_super = &self->_mindlessCyclingEvents->super;
    self->_mindlessCyclingEvents = &v12->super;
  }

  _Block_object_dispose(&v18, 8);
  return v10 == 0;
}

uint64_t __69__ATXMindlessCyclingUsageAccumulator_accumulateMindlessCyclingEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __69__ATXMindlessCyclingUsageAccumulator_accumulateMindlessCyclingEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v3 bundleID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v8 starting];
    v7 = *(a1 + 40);
    if (v6)
    {
      [v7 recordAppLaunchStartEvent:v8];
    }

    else
    {
      [v7 recordAppLaunchEndEvent:v8];
    }
  }
}

- (void)recordAppLaunchEndEvent:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_appInFocusStartingEvents copy];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    v35 = v6;
    v36 = *v39;
    v33 = self;
    v34 = v4;
    do
    {
      v10 = 0;
      v37 = v8;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = [v4 bundleID];
        v13 = [v11 bundleID];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          stagedEventToAdd = self->_stagedEventToAdd;
          if (stagedEventToAdd)
          {
            v16 = stagedEventToAdd;
          }

          else
          {
            v16 = [(NSMutableArray *)self->_mindlessCyclingEventsAccumulator lastObject];
          }

          v17 = v16;
          v18 = [(ATXUsageInsightsAppSessionEvent *)v16 endTime];
          v19 = [v11 absoluteTimestamp];
          v20 = [v4 absoluteTimestamp];
          [v19 timeIntervalSinceReferenceDate];
          v22 = v21;
          [v20 timeIntervalSinceReferenceDate];
          if (v22 <= v23)
          {
            v24 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v19 endDate:v20];
            [v24 duration];
            if (v25 <= 30.0)
            {
              v26 = [v4 bundleID];
              [v11 launchReason];
              v28 = v27 = self;
              [v24 duration];
              v29 = [(ATXMindlessCyclingUsageAccumulator *)v27 eventWithBundleID:v26 launchReason:v28 startTime:v19 endTime:v20 duration:?];

              if (v18 && ([v19 timeIntervalSinceDate:v18], v30 <= 10.0))
              {
                self = v33;
                if (v33->_stagedEventToAdd)
                {
                  [(NSMutableArray *)v33->_mindlessCyclingEventsAccumulator addObject:?];
                  v31 = v33->_stagedEventToAdd;
                  v33->_stagedEventToAdd = 0;
                }

                [(NSMutableArray *)v33->_mindlessCyclingEventsAccumulator addObject:v29];
              }

              else
              {
                self = v33;
                objc_storeStrong(&v33->_stagedEventToAdd, v29);
              }

              v4 = v34;
            }

            [(NSMutableArray *)self->_appInFocusStartingEvents removeObject:v11];

            v6 = v35;
          }

          v9 = v36;
          v8 = v37;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v8);
  }

  v32 = *MEMORY[0x277D85DE8];
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

- (void)accumulateMindlessCyclingEvents
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 136315394;
  v5 = "[ATXMindlessCyclingUsageAccumulator accumulateMindlessCyclingEvents]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error with reading app launch stream: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end