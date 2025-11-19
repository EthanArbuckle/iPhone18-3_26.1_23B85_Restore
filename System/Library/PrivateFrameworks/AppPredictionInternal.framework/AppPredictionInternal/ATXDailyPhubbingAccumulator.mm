@interface ATXDailyPhubbingAccumulator
- (ATXDailyPhubbingAccumulator)init;
- (ATXDailyPhubbingAccumulator)initWithProximityEventPublisher:(id)a3 screenLockedPublisher:(id)a4 appLaunchPublisher:(id)a5;
- (BOOL)appInFocusEventOccured:(id)a3 whileNearPeople:(id)a4;
- (BOOL)screenEventOccured:(id)a3 whileNearPeople:(id)a4;
- (BOOL)successfullyAccumulatedPhubbingEvents;
- (id)dateIntervalFromAppInFocusEvent:(id)a3;
- (id)dateIntervalFromPeopleEvent:(id)a3;
- (id)dateIntervalFromScreenLockEvent:(id)a3;
- (void)addAppSession:(id)a3 launchReason:(id)a4 startTime:(id)a5 endTime:(id)a6 duration:(double)a7;
- (void)recordAppLaunchEndEvent:(id)a3;
- (void)recordAppLaunchStartEvent:(id)a3;
- (void)successfullyAccumulatedPhubbingEvents;
- (void)trackScreenEndingEvent:(id)a3;
- (void)trackScreenStartingEvent:(id)a3;
@end

@implementation ATXDailyPhubbingAccumulator

- (ATXDailyPhubbingAccumulator)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v4 fetchPeopleWithProximityFromStartDate:v3 toEndDate:v5];

  v7 = BiomeLibrary();
  v8 = [v7 Device];
  v9 = [v8 ScreenLocked];

  v10 = BiomeLibrary();
  v11 = [v10 App];
  v12 = [v11 InFocus];

  v13 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v3 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v14 = *MEMORY[0x277CEBB48];
  v15 = [v9 publisherWithUseCase:*MEMORY[0x277CEBB48] options:v13];
  v16 = [v12 publisherWithUseCase:v14 options:v13];
  v17 = [(ATXDailyPhubbingAccumulator *)self initWithProximityEventPublisher:v6 screenLockedPublisher:v15 appLaunchPublisher:v16];

  return v17;
}

- (ATXDailyPhubbingAccumulator)initWithProximityEventPublisher:(id)a3 screenLockedPublisher:(id)a4 appLaunchPublisher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = ATXDailyPhubbingAccumulator;
  v12 = [(ATXDailyPhubbingAccumulator *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_proximityPublisher, a3);
    objc_storeStrong(&v13->_deviceScreenLockedPublisher, a4);
    objc_storeStrong(&v13->_appLaunchPublisher, a5);
    v14 = objc_opt_new();
    phubbingSessionEvents = v13->_phubbingSessionEvents;
    v13->_phubbingSessionEvents = v14;

    v16 = objc_opt_new();
    appInFocusStartingEvents = v13->_appInFocusStartingEvents;
    v13->_appInFocusStartingEvents = v16;

    v18 = objc_opt_new();
    appSessionsWithinPhubbingEvent = v13->_appSessionsWithinPhubbingEvent;
    v13->_appSessionsWithinPhubbingEvent = v18;
  }

  return v13;
}

- (BOOL)successfullyAccumulatedPhubbingEvents
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = +[_ATXAppIconState sharedInstance];
  v5 = [v4 allInstalledAppsKnownToSpringBoard];
  v6 = [v3 initWithArray:v5];

  proximityPublisher = self->_proximityPublisher;
  appLaunchPublisher = self->_appLaunchPublisher;
  v28[0] = self->_deviceScreenLockedPublisher;
  v28[1] = appLaunchPublisher;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke;
  v25[3] = &unk_278597CB8;
  v25[4] = self;
  v10 = [(BPSPublisher *)proximityPublisher orderedMergeWithOthers:v9 comparator:v25];

  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x3032000000;
  v23[2] = __Block_byref_object_copy__69;
  v23[3] = __Block_byref_object_dispose__69;
  v24 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_18;
  v21[3] = &unk_278597540;
  v21[4] = &v22;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_2;
  v19[3] = &unk_278598CE8;
  v19[4] = self;
  v11 = v6;
  v20 = v11;
  v12 = [v10 sinkWithCompletion:v21 receiveInput:v19];
  v13 = *(v23[0] + 40);
  if (v13)
  {
    p_super = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [(ATXDailyPhubbingAccumulator *)v23 successfullyAccumulatedPhubbingEvents];
    }
  }

  else
  {
    v15 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "[ATXDailyPhubbingAccumulator successfullyAccumulatedPhubbingEvents]";
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "%s: Successfully accumulated phubbing session events", buf, 0xCu);
    }

    v16 = self->_phubbingSessionEvents;
    p_super = &self->_phubbingSessions->super;
    self->_phubbingSessions = &v16->super;
  }

  _Block_object_dispose(&v22, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

uint64_t __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dateIntervalFromPeopleEvent:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [*(a1 + 32) dateIntervalFromScreenLockEvent:v5];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [*(a1 + 32) dateIntervalFromAppInFocusEvent:v5];
    }

    v9 = v12;
  }

  v13 = [*(a1 + 32) dateIntervalFromPeopleEvent:v6];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [*(a1 + 32) dateIntervalFromScreenLockEvent:v6];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [*(a1 + 32) dateIntervalFromAppInFocusEvent:v6];
    }

    v15 = v18;
  }

  if (v9)
  {
    if (v15)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v19 = __atxlog_handle_usage_insights();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_cold_1(v5, v19);
  }

  if (!v15)
  {
LABEL_19:
    v20 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_cold_1(v6, v20);
    }
  }

LABEL_22:
  v21 = [v9 startDate];
  [v21 timeIntervalSinceReferenceDate];
  v23 = v22;

  v24 = [v15 startDate];
  [v24 timeIntervalSinceReferenceDate];
  v26 = v25;

  v27 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
  v29 = [v27 compare:v28];

  return v29;
}

uint64_t __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) trackMostRecentDiscoveredPeopleEvent:v13];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v13;
    v4 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [v3 eventBody];
      if ([v6 starting])
      {
        if ([v6 starting])
        {
          objc_storeStrong((*(a1 + 32) + 48), v6);
          [*(a1 + 32) trackScreenEndingEvent:v3];
        }
      }

      else
      {
        if ([*(*(a1 + 32) + 48) starting])
        {
          [*(a1 + 32) trackScreenStartingEvent:v3];
        }

        objc_storeStrong((*(a1 + 32) + 48), v6);
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = [v7 eventBody];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    if (v9)
    {
      v10 = [v7 eventBody];
      v11 = *(a1 + 40);
      v12 = [v10 bundleID];
      LODWORD(v11) = [v11 containsObject:v12];

      if (v11)
      {
        if ([v10 starting])
        {
          [*(a1 + 32) recordAppLaunchStartEvent:v10];
        }

        else if (([v10 starting] & 1) == 0)
        {
          [*(a1 + 32) recordAppLaunchEndEvent:v10];
        }
      }
    }
  }
}

- (id)dateIntervalFromPeopleEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 endDate];

    v6 = objc_alloc(MEMORY[0x277CCA970]);
    v7 = [v4 startDate];
    if (v5)
    {
      [v4 endDate];
    }

    else
    {
      [v4 startDate];
    }
    v9 = ;
    v8 = [v6 initWithStartDate:v7 endDate:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dateIntervalFromScreenLockEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v4 timestamp];
      v8 = [v7 initWithTimeIntervalSinceReferenceDate:?];
      v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dateIntervalFromAppInFocusEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 eventBody];
      v8 = objc_alloc(MEMORY[0x277CCA970]);
      v9 = [v7 absoluteTimestamp];
      v10 = [v7 absoluteTimestamp];
      v11 = [v8 initWithStartDate:v9 endDate:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)trackScreenStartingEvent:(id)a3
{
  v8 = a3;
  v4 = [v8 eventBody];
  if (([v4 starting] & 1) == 0 && -[ATXDailyPhubbingAccumulator screenEventOccured:whileNearPeople:](self, "screenEventOccured:whileNearPeople:", v8, self->_mostRecentProximityPeopleEvent))
  {
    v5 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v8 timestamp];
    v6 = [v5 initWithTimeIntervalSinceReferenceDate:?];
    phubbingStartTime = self->_phubbingStartTime;
    self->_phubbingStartTime = v6;
  }
}

- (void)trackScreenEndingEvent:(id)a3
{
  v16 = a3;
  v4 = [v16 eventBody];
  if ([v4 starting] && self->_phubbingStartTime && -[ATXDailyPhubbingAccumulator screenEventOccured:whileNearPeople:](self, "screenEventOccured:whileNearPeople:", v16, self->_mostRecentProximityPeopleEvent))
  {
    v5 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v16 timestamp];
    v6 = [v5 initWithTimeIntervalSinceReferenceDate:?];
    objc_storeStrong(&self->_phubbingEndTime, v6);
    v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:self->_phubbingStartTime endDate:self->_phubbingEndTime];
    if ([(RTProximityEvent *)self->_mostRecentProximityPeopleEvent relationship]== 1)
    {
      v8 = @"Family";
    }

    else if ([(RTProximityEvent *)self->_mostRecentProximityPeopleEvent relationship]== 2)
    {
      v8 = @"Friend";
    }

    else
    {
      v8 = @"Unknown";
    }

    v9 = objc_alloc(MEMORY[0x277CEB910]);
    phubbingStartTime = self->_phubbingStartTime;
    phubbingEndTime = self->_phubbingEndTime;
    [v7 duration];
    v12 = [v9 initWithRelationshipType:v8 startTime:phubbingStartTime endTime:phubbingEndTime duration:self->_appSessionsWithinPhubbingEvent appSessions:?];
    [(NSMutableArray *)self->_phubbingSessionEvents addObject:v12];
    v13 = objc_opt_new();
    appSessionsWithinPhubbingEvent = self->_appSessionsWithinPhubbingEvent;
    self->_appSessionsWithinPhubbingEvent = v13;

    v15 = self->_phubbingStartTime;
    self->_phubbingStartTime = 0;
  }
}

- (void)recordAppLaunchStartEvent:(id)a3
{
  v4 = a3;
  mostRecentProximityPeopleEvent = self->_mostRecentProximityPeopleEvent;
  v6 = v4;
  if ([ATXDailyPhubbingAccumulator appInFocusEventOccured:"appInFocusEventOccured:whileNearPeople:" whileNearPeople:?]&& self->_phubbingStartTime)
  {
    [(NSMutableArray *)self->_appInFocusStartingEvents addObject:v6];
  }
}

- (void)recordAppLaunchEndEvent:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_appInFocusStartingEvents copy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v4 bundleID];
        v13 = [v11 bundleID];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          if ([(ATXDailyPhubbingAccumulator *)self appInFocusEventOccured:v4 whileNearPeople:self->_mostRecentProximityPeopleEvent])
          {
            v15 = objc_alloc(MEMORY[0x277CCA970]);
            v16 = [v11 absoluteTimestamp];
            v17 = [v4 absoluteTimestamp];
            v18 = [v15 initWithStartDate:v16 endDate:v17];

            v19 = [v4 bundleID];
            v20 = [v11 launchReason];
            v21 = [v11 absoluteTimestamp];
            v22 = [v4 absoluteTimestamp];
            [v18 duration];
            [(ATXDailyPhubbingAccumulator *)self addAppSession:v19 launchReason:v20 startTime:v21 endTime:v22 duration:?];
          }

          [(NSMutableArray *)self->_appInFocusStartingEvents removeObject:v11];
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addAppSession:(id)a3 launchReason:(id)a4 startTime:(id)a5 endTime:(id)a6 duration:(double)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [ATXSessionTaggingAppEntity genreIdForBundleId:v15];
  v17 = [v16 unsignedIntegerValue];

  v18 = objc_alloc(MEMORY[0x277CEB8F8]);
  v19 = [MEMORY[0x277CEB8F8] usageInsightsAppLaunchReasonFromBMAppInFocus:v14];

  v20 = [v18 initWithBundleID:v15 category:v17 launchReason:v19 startTime:v13 endTime:v12 duration:a7];
  [(NSMutableArray *)self->_appSessionsWithinPhubbingEvent addObject:v20];
}

- (BOOL)screenEventOccured:(id)a3 whileNearPeople:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 alloc];
  [v7 timestamp];
  v10 = v9;

  v11 = [v8 initWithTimeIntervalSinceReferenceDate:v10];
  [v11 timeIntervalSince1970];
  v13 = v12;
  v14 = [v5 startDate];
  [v14 timeIntervalSince1970];
  if (v13 <= v15)
  {
    v20 = 0;
  }

  else
  {
    [v11 timeIntervalSince1970];
    v17 = v16;
    v18 = [v5 endDate];
    [v18 timeIntervalSince1970];
    v20 = v17 < v19;
  }

  return v20;
}

- (BOOL)appInFocusEventOccured:(id)a3 whileNearPeople:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 absoluteTimestamp];
  [v7 timeIntervalSince1970];
  v9 = v8;
  v10 = [v6 startDate];
  [v10 timeIntervalSince1970];
  if (v9 <= v11)
  {
    v17 = 0;
  }

  else
  {
    v12 = [v5 absoluteTimestamp];
    [v12 timeIntervalSince1970];
    v14 = v13;
    v15 = [v6 endDate];
    [v15 timeIntervalSince1970];
    v17 = v14 < v16;
  }

  return v17;
}

- (void)successfullyAccumulatedPhubbingEvents
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 136315394;
  v5 = "[ATXDailyPhubbingAccumulator successfullyAccumulatedPhubbingEvents]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error from merged publishers: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __68__ATXDailyPhubbingAccumulator_successfullyAccumulatedPhubbingEvents__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXDailyPhubbingAccumulator: During ordered merge, encountered unknown event: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end