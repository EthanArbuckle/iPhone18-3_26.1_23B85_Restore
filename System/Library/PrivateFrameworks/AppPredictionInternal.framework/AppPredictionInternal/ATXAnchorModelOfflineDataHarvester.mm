@interface ATXAnchorModelOfflineDataHarvester
+ (id)actionIdentifiersFromActionsInMessage:(id)a3;
+ (id)bundleIdsFromAppLaunchesInMessage:(id)a3;
+ (id)getUserUUIDForDataCollection;
- (ATXAnchorModelOfflineDataHarvester)init;
- (ATXAnchorModelOfflineDataHarvester)initWithSamplingGroup:(id)a3 userId:(id)a4;
- (id)allInstalledAppsKnownToSpringBoard;
- (id)fetchAnchorEvents:(id)a3;
- (id)processAnchorOccurrence:(id)a3 anchor:(id)a4;
- (void)addActionEventsFromAnchorOccurrenceDate:(id)a3 toMessage:(id)a4;
- (void)addAppLaunchEventsFromAnchorOccurrenceDate:(id)a3 toMessage:(id)a4;
- (void)addNegativeSamplesForAnchorOccurrenceDate:(id)a3 toMessage:(id)a4;
- (void)harvestData;
- (void)harvestDataForAnchor:(id)a3;
- (void)setNegativeActionSamplesForAnchorOccurrenceDate:(id)a3 mainMessage:(id)a4;
- (void)setNegativeAppLaunchSamplesForAnchorOccurrenceDate:(id)a3 mainMessage:(id)a4;
@end

@implementation ATXAnchorModelOfflineDataHarvester

- (ATXAnchorModelOfflineDataHarvester)init
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXAnchorModelOfflineDataHarvester is being initialized.", &v11, 2u);
  }

  v4 = [objc_opt_class() getUserUUIDForDataCollection];
  if (v4)
  {
    v5 = [objc_opt_class() getSamplingGroupForDataCollection];
    if (v5)
    {
      v6 = __atxlog_handle_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 description];
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "AnchorModel: User is enrolled in Anchor Model data collection. Sampling group description: %@", &v11, 0xCu);
      }

      self = [(ATXAnchorModelOfflineDataHarvester *)self initWithSamplingGroup:v5 userId:v4];
      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)getUserUUIDForDataCollection
{
  v2 = [ATXEnrollmentManager getUserIdForScheme:@"com.apple.duetexpertd.anchormodel.dataharvester.enrollmentmanager" enrollmentPeriod:7776000.0 enrollmentRate:0.1];
  if ([v2 length])
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ATXAnchorModelOfflineDataHarvester)initWithSamplingGroup:(id)a3 userId:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [ATXAnchorModelOfflineDataHarvester initWithSamplingGroup:a2 userId:self];
  }

  v17.receiver = self;
  v17.super_class = ATXAnchorModelOfflineDataHarvester;
  v9 = [(ATXAnchorModelOfflineDataHarvester *)&v17 init];
  if (v9)
  {
    v10 = [v7 anchorWhitelist];
    anchorsToCollect = v9->_anchorsToCollect;
    v9->_anchorsToCollect = v10;

    v12 = objc_opt_new();
    eventFeaturizer = v9->_eventFeaturizer;
    v9->_eventFeaturizer = v12;

    v14 = objc_opt_new();
    harvester = v9->_harvester;
    v9->_harvester = v14;

    objc_storeStrong(&v9->_userId, a4);
  }

  return v9;
}

- (void)harvestData
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  userId = self->_userId;
  v5 = __atxlog_handle_default();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (userId)
  {
    v17 = v3;
    if (v6)
    {
      v7 = [(NSArray *)self->_anchorsToCollect count];
      *buf = 134217984;
      v24 = v7;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "AnchorModel: User is enrolled in Anchor Model data collection. Beginning collection of %lu different types of anchors. [START HARVESTING DATA]", buf, 0xCu);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_anchorsToCollect;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = __atxlog_handle_default();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v13;
            _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "AnchorModel: Harvesting data on %@ anchor.", buf, 0xCu);
          }

          [(ATXAnchorModelOfflineDataHarvester *)self harvestDataForAnchor:v13];
          objc_autoreleasePoolPop(v14);
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "AnchorModel: Finished harvesting data. [DONE HARVESTING DATA]", buf, 2u);
    }

    v3 = v17;
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "AnchorModel: User is not enrolled in Anchor Model data collection. Exiting early.", buf, 2u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)harvestDataForAnchor:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXAnchorModelOfflineDataHarvester *)self fetchAnchorEvents:v4];
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = [v5 count];
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "AnchorModel: Found %lu anchor events.", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = __atxlog_handle_default();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_debug_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEBUG, "AnchorModel: Anchor description: %@", buf, 0xCu);
        }

        v14 = [(ATXAnchorModelOfflineDataHarvester *)self processAnchorOccurrence:v12 anchor:v4];
        [ATXAnchorModelDataAnonymizer anonymizeMessage:v14];
        v15 = [MEMORY[0x277D41DA8] sharedInstance];
        [v15 logMessage:v14];

        v16 = __atxlog_handle_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "AnchorModel: Logged message with PET2.", buf, 2u);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)fetchAnchorEvents:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  v6 = objc_opt_class();

  v7 = [v5 dateByAddingTimeInterval:-115200.0];
  v8 = [v5 dateByAddingTimeInterval:-7200.0];
  v9 = [v6 fetchAnchorOccurrencesBetweenStartDate:v7 endDate:v8];

  return v9;
}

- (id)processAnchorOccurrence:(id)a3 anchor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(NSUUID *)self->_userId UUIDString];
  [v8 setUserId:v9];

  v10 = [(ATXAnchorModelEventFeaturizer *)self->_eventFeaturizer featurizeAnchorEvent:v7 anchor:v6];
  [v8 setAnchor:v10];

  v11 = objc_opt_class();
  v12 = [v11 anchorOccurenceDateFromDuetEvent:v7];

  [(ATXAnchorModelOfflineDataHarvester *)self addAppLaunchEventsFromAnchorOccurrenceDate:v12 toMessage:v8];
  [(ATXAnchorModelOfflineDataHarvester *)self addActionEventsFromAnchorOccurrenceDate:v12 toMessage:v8];
  [(ATXAnchorModelOfflineDataHarvester *)self addNegativeSamplesForAnchorOccurrenceDate:v12 toMessage:v8];

  return v8;
}

- (void)addAppLaunchEventsFromAnchorOccurrenceDate:(id)a3 toMessage:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 dateByAddingTimeInterval:-300.0];
  v10 = [v6 dateByAddingTimeInterval:5400.0];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12 && [v9 compare:v10] == -1)
  {
    v13 = objc_alloc_init(MEMORY[0x277CEBBE0]);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __91__ATXAnchorModelOfflineDataHarvester_addAppLaunchEventsFromAnchorOccurrenceDate_toMessage___block_invoke;
    v24[3] = &unk_278596DC8;
    v25 = v8;
    [v13 enumerateAppLaunchSessionsBetweenStartDate:v9 endDate:v11 limit:100 shouldReverse:0 bundleIDFilter:0 block:v24];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [(ATXAnchorModelEventFeaturizer *)self->_eventFeaturizer featurizeAppLaunchEvents:v8 anchorOccurrenceDate:v6, 0];
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v7 addPositiveAppLaunches:*(*(&v20 + 1) + 8 * i)];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __91__ATXAnchorModelOfflineDataHarvester_addAppLaunchEventsFromAnchorOccurrenceDate_toMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXAppLaunchDuetEvent alloc] initWithATXEvent:v3];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

- (void)addActionEventsFromAnchorOccurrenceDate:(id)a3 toMessage:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ATXAnchorModelOfflineDataHarvester *)self fetchEventsAfterAnchorOccurrenceDate:v6 withDuetDataProviderClass:objc_opt_class() limit:100 maxSecondsBeforeAnchor:300 maxSecondsAfterAnchor:5400];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(ATXAnchorModelEventFeaturizer *)self->_eventFeaturizer featurizeActionEvent:*(*(&v15 + 1) + 8 * v12) anchorOccurrenceDate:v6];
        [v7 addPositiveActions:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addNegativeSamplesForAnchorOccurrenceDate:(id)a3 toMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ATXAnchorModelOfflineDataHarvester *)self setNegativeAppLaunchSamplesForAnchorOccurrenceDate:v7 mainMessage:v6];
  [(ATXAnchorModelOfflineDataHarvester *)self setNegativeActionSamplesForAnchorOccurrenceDate:v7 mainMessage:v6];
}

- (id)allInstalledAppsKnownToSpringBoard
{
  v2 = +[_ATXAppIconState sharedInstance];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = [v2 allInstalledAppsKnownToSpringBoard];
  v5 = [v3 initWithArray:v4];

  return v5;
}

- (void)setNegativeAppLaunchSamplesForAnchorOccurrenceDate:(id)a3 mainMessage:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ATXAnchorModelOfflineDataHarvester *)self allInstalledAppsKnownToSpringBoard];
  v9 = [ATXAnchorModelOfflineDataHarvester bundleIdsFromAppLaunchesInMessage:v7];
  v10 = [ATXAnchorModelEventHarvester negativeAppsGivenAllAppIds:v8 positiveAppIds:v9];

  v25 = v10;
  v24 = [v10 allObjects];
  [ATXAnchorModelEventHarvester randomSampleFromArray:"randomSampleFromArray:sampleSize:" sampleSize:?];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v11 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        v16 = [ATXAppLaunchDuetEvent alloc];
        v17 = [v6 dateByAddingTimeInterval:1.0];
        v18 = [(ATXAppLaunchDuetEvent *)v16 initWithBundleId:v15 startDate:v6 endDate:v17];

        eventFeaturizer = self->_eventFeaturizer;
        v31 = v18;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v21 = [(ATXAnchorModelEventFeaturizer *)eventFeaturizer featurizeAppLaunchEvents:v20 anchorOccurrenceDate:v6];
        v22 = [v21 objectAtIndexedSubscript:0];
        [v7 addNegativeAppLaunches:v22];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setNegativeActionSamplesForAnchorOccurrenceDate:(id)a3 mainMessage:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [ATXAnchorModelOfflineDataHarvester actionIdentifiersFromActionsInMessage:v7];
  v9 = [(ATXAnchorModelEventHarvester *)self->_harvester negativeActionsOnAnchorOccurrenceDate:v6 positiveActionIds:v8];
  v10 = [ATXAnchorModelEventHarvester randomSampleFromArray:v9 sampleSize:7];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(ATXAnchorModelEventFeaturizer *)self->_eventFeaturizer featurizeActionEvent:*(*(&v17 + 1) + 8 * v14) anchorOccurrenceDate:v6];
        [v7 addNegativeActions:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)bundleIdsFromAppLaunchesInMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 positiveAppLaunches];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasBundleId])
        {
          v11 = [v10 bundleId];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)actionIdentifiersFromActionsInMessage:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [v19 positiveActions];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 hasAppLaunchMetadata])
        {
          v9 = [v8 appLaunchMetadata];
          if ([v9 hasBundleId] && objc_msgSend(v8, "hasActionKeyMetadata"))
          {
            v10 = [v8 actionKeyMetadata];
            if ([v10 hasActionType])
            {
              v11 = [v8 actionUUIDMetadatasCount];

              if (v11 != 1)
              {
                continue;
              }

              v12 = objc_alloc(MEMORY[0x277CCACA8]);
              v9 = [v8 appLaunchMetadata];
              v10 = [v9 bundleId];
              v21 = [v8 actionKeyMetadata];
              v13 = [v21 actionType];
              v14 = [v8 actionUUIDMetadatas];
              v15 = [v14 firstObject];
              v16 = [v12 initWithFormat:@"%@:%@:%lld", v10, v13, objc_msgSend(v15, "actionUUID")];
              [v20 addObject:v16];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)initWithSamplingGroup:(uint64_t)a1 userId:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAnchorModelOfflineDataHarvester.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"samplingGroup"}];
}

@end