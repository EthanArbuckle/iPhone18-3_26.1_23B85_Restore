@interface ATXAnchorModelOfflineDataHarvester
+ (id)actionIdentifiersFromActionsInMessage:(id)message;
+ (id)bundleIdsFromAppLaunchesInMessage:(id)message;
+ (id)getUserUUIDForDataCollection;
- (ATXAnchorModelOfflineDataHarvester)init;
- (ATXAnchorModelOfflineDataHarvester)initWithSamplingGroup:(id)group userId:(id)id;
- (id)allInstalledAppsKnownToSpringBoard;
- (id)fetchAnchorEvents:(id)events;
- (id)processAnchorOccurrence:(id)occurrence anchor:(id)anchor;
- (void)addActionEventsFromAnchorOccurrenceDate:(id)date toMessage:(id)message;
- (void)addAppLaunchEventsFromAnchorOccurrenceDate:(id)date toMessage:(id)message;
- (void)addNegativeSamplesForAnchorOccurrenceDate:(id)date toMessage:(id)message;
- (void)harvestData;
- (void)harvestDataForAnchor:(id)anchor;
- (void)setNegativeActionSamplesForAnchorOccurrenceDate:(id)date mainMessage:(id)message;
- (void)setNegativeAppLaunchSamplesForAnchorOccurrenceDate:(id)date mainMessage:(id)message;
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

  getUserUUIDForDataCollection = [objc_opt_class() getUserUUIDForDataCollection];
  if (getUserUUIDForDataCollection)
  {
    getSamplingGroupForDataCollection = [objc_opt_class() getSamplingGroupForDataCollection];
    if (getSamplingGroupForDataCollection)
    {
      v6 = __atxlog_handle_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [getSamplingGroupForDataCollection description];
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "AnchorModel: User is enrolled in Anchor Model data collection. Sampling group description: %@", &v11, 0xCu);
      }

      self = [(ATXAnchorModelOfflineDataHarvester *)self initWithSamplingGroup:getSamplingGroupForDataCollection userId:getUserUUIDForDataCollection];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return selfCopy;
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

- (ATXAnchorModelOfflineDataHarvester)initWithSamplingGroup:(id)group userId:(id)id
{
  groupCopy = group;
  idCopy = id;
  if (!groupCopy)
  {
    [ATXAnchorModelOfflineDataHarvester initWithSamplingGroup:a2 userId:self];
  }

  v17.receiver = self;
  v17.super_class = ATXAnchorModelOfflineDataHarvester;
  v9 = [(ATXAnchorModelOfflineDataHarvester *)&v17 init];
  if (v9)
  {
    anchorWhitelist = [groupCopy anchorWhitelist];
    anchorsToCollect = v9->_anchorsToCollect;
    v9->_anchorsToCollect = anchorWhitelist;

    v12 = objc_opt_new();
    eventFeaturizer = v9->_eventFeaturizer;
    v9->_eventFeaturizer = v12;

    v14 = objc_opt_new();
    harvester = v9->_harvester;
    v9->_harvester = v14;

    objc_storeStrong(&v9->_userId, id);
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

- (void)harvestDataForAnchor:(id)anchor
{
  v25 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  v5 = [(ATXAnchorModelOfflineDataHarvester *)self fetchAnchorEvents:anchorCopy];
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

        v14 = [(ATXAnchorModelOfflineDataHarvester *)self processAnchorOccurrence:v12 anchor:anchorCopy];
        [ATXAnchorModelDataAnonymizer anonymizeMessage:v14];
        mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
        [mEMORY[0x277D41DA8] logMessage:v14];

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

- (id)fetchAnchorEvents:(id)events
{
  v3 = MEMORY[0x277CBEAA8];
  eventsCopy = events;
  date = [v3 date];
  v6 = objc_opt_class();

  v7 = [date dateByAddingTimeInterval:-115200.0];
  v8 = [date dateByAddingTimeInterval:-7200.0];
  v9 = [v6 fetchAnchorOccurrencesBetweenStartDate:v7 endDate:v8];

  return v9;
}

- (id)processAnchorOccurrence:(id)occurrence anchor:(id)anchor
{
  anchorCopy = anchor;
  occurrenceCopy = occurrence;
  v8 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_userId UUIDString];
  [v8 setUserId:uUIDString];

  v10 = [(ATXAnchorModelEventFeaturizer *)self->_eventFeaturizer featurizeAnchorEvent:occurrenceCopy anchor:anchorCopy];
  [v8 setAnchor:v10];

  v11 = objc_opt_class();
  v12 = [v11 anchorOccurenceDateFromDuetEvent:occurrenceCopy];

  [(ATXAnchorModelOfflineDataHarvester *)self addAppLaunchEventsFromAnchorOccurrenceDate:v12 toMessage:v8];
  [(ATXAnchorModelOfflineDataHarvester *)self addActionEventsFromAnchorOccurrenceDate:v12 toMessage:v8];
  [(ATXAnchorModelOfflineDataHarvester *)self addNegativeSamplesForAnchorOccurrenceDate:v12 toMessage:v8];

  return v8;
}

- (void)addAppLaunchEventsFromAnchorOccurrenceDate:(id)date toMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  messageCopy = message;
  v8 = objc_opt_new();
  v9 = [dateCopy dateByAddingTimeInterval:-300.0];
  v10 = [dateCopy dateByAddingTimeInterval:5400.0];
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
  v14 = [(ATXAnchorModelEventFeaturizer *)self->_eventFeaturizer featurizeAppLaunchEvents:v8 anchorOccurrenceDate:dateCopy, 0];
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

        [messageCopy addPositiveAppLaunches:*(*(&v20 + 1) + 8 * i)];
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

- (void)addActionEventsFromAnchorOccurrenceDate:(id)date toMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  messageCopy = message;
  v8 = [(ATXAnchorModelOfflineDataHarvester *)self fetchEventsAfterAnchorOccurrenceDate:dateCopy withDuetDataProviderClass:objc_opt_class() limit:100 maxSecondsBeforeAnchor:300 maxSecondsAfterAnchor:5400];
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

        v13 = [(ATXAnchorModelEventFeaturizer *)self->_eventFeaturizer featurizeActionEvent:*(*(&v15 + 1) + 8 * v12) anchorOccurrenceDate:dateCopy];
        [messageCopy addPositiveActions:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addNegativeSamplesForAnchorOccurrenceDate:(id)date toMessage:(id)message
{
  messageCopy = message;
  dateCopy = date;
  [(ATXAnchorModelOfflineDataHarvester *)self setNegativeAppLaunchSamplesForAnchorOccurrenceDate:dateCopy mainMessage:messageCopy];
  [(ATXAnchorModelOfflineDataHarvester *)self setNegativeActionSamplesForAnchorOccurrenceDate:dateCopy mainMessage:messageCopy];
}

- (id)allInstalledAppsKnownToSpringBoard
{
  v2 = +[_ATXAppIconState sharedInstance];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  allInstalledAppsKnownToSpringBoard = [v2 allInstalledAppsKnownToSpringBoard];
  v5 = [v3 initWithArray:allInstalledAppsKnownToSpringBoard];

  return v5;
}

- (void)setNegativeAppLaunchSamplesForAnchorOccurrenceDate:(id)date mainMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  messageCopy = message;
  allInstalledAppsKnownToSpringBoard = [(ATXAnchorModelOfflineDataHarvester *)self allInstalledAppsKnownToSpringBoard];
  v9 = [ATXAnchorModelOfflineDataHarvester bundleIdsFromAppLaunchesInMessage:messageCopy];
  v10 = [ATXAnchorModelEventHarvester negativeAppsGivenAllAppIds:allInstalledAppsKnownToSpringBoard positiveAppIds:v9];

  v25 = v10;
  allObjects = [v10 allObjects];
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
        v17 = [dateCopy dateByAddingTimeInterval:1.0];
        v18 = [(ATXAppLaunchDuetEvent *)v16 initWithBundleId:v15 startDate:dateCopy endDate:v17];

        eventFeaturizer = self->_eventFeaturizer;
        v31 = v18;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v21 = [(ATXAnchorModelEventFeaturizer *)eventFeaturizer featurizeAppLaunchEvents:v20 anchorOccurrenceDate:dateCopy];
        v22 = [v21 objectAtIndexedSubscript:0];
        [messageCopy addNegativeAppLaunches:v22];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setNegativeActionSamplesForAnchorOccurrenceDate:(id)date mainMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  messageCopy = message;
  v8 = [ATXAnchorModelOfflineDataHarvester actionIdentifiersFromActionsInMessage:messageCopy];
  v9 = [(ATXAnchorModelEventHarvester *)self->_harvester negativeActionsOnAnchorOccurrenceDate:dateCopy positiveActionIds:v8];
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

        v15 = [(ATXAnchorModelEventFeaturizer *)self->_eventFeaturizer featurizeActionEvent:*(*(&v17 + 1) + 8 * v14) anchorOccurrenceDate:dateCopy];
        [messageCopy addNegativeActions:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)bundleIdsFromAppLaunchesInMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  positiveAppLaunches = [messageCopy positiveAppLaunches];
  v6 = [positiveAppLaunches countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(positiveAppLaunches);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasBundleId])
        {
          bundleId = [v10 bundleId];
          [v4 addObject:bundleId];
        }
      }

      v7 = [positiveAppLaunches countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)actionIdentifiersFromActionsInMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v20 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  positiveActions = [messageCopy positiveActions];
  v4 = [positiveActions countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(positiveActions);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 hasAppLaunchMetadata])
        {
          appLaunchMetadata = [v8 appLaunchMetadata];
          if ([appLaunchMetadata hasBundleId] && objc_msgSend(v8, "hasActionKeyMetadata"))
          {
            actionKeyMetadata = [v8 actionKeyMetadata];
            if ([actionKeyMetadata hasActionType])
            {
              actionUUIDMetadatasCount = [v8 actionUUIDMetadatasCount];

              if (actionUUIDMetadatasCount != 1)
              {
                continue;
              }

              v12 = objc_alloc(MEMORY[0x277CCACA8]);
              appLaunchMetadata = [v8 appLaunchMetadata];
              actionKeyMetadata = [appLaunchMetadata bundleId];
              actionKeyMetadata2 = [v8 actionKeyMetadata];
              actionType = [actionKeyMetadata2 actionType];
              actionUUIDMetadatas = [v8 actionUUIDMetadatas];
              firstObject = [actionUUIDMetadatas firstObject];
              v16 = [v12 initWithFormat:@"%@:%@:%lld", actionKeyMetadata, actionType, objc_msgSend(firstObject, "actionUUID")];
              [v20 addObject:v16];
            }
          }
        }
      }

      v5 = [positiveActions countByEnumeratingWithState:&v22 objects:v26 count:16];
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