@interface ATXAnchorModelTrainingDatasetBuilder
+ (id)_pickTopSamplesFromArray:(id)array sampleSize:(unint64_t)size;
+ (id)fetchAnchorEvents:(id)events startDate:(id)date endDate:(id)endDate;
- (ATXAnchorModelTrainingDatasetBuilder)init;
- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)activity;
- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)activity dataStoreWrapper:(id)wrapper harvester:(id)harvester;
- (BOOL)anchorOccurredLongEnoughAgo:(id)ago anchor:(id)anchor;
- (double)secondsAfterAnchorToCollectPositiveSamples:(id)samples;
- (id)actionCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromActions:(id)actions;
- (id)anchorsToIncludeInTrainingData;
- (id)appCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromAppLaunches:(id)launches;
- (id)appLaunchEventsFromNowPlayingStreamForAnchor:(id)anchor anchorOccurrenceDate:(id)date;
- (id)candidateIdSetFromAppIntentEvents:(id)events;
- (id)candidateIdSetFromAppLaunchDuetEvents:(id)events;
- (id)candidateIdSetFromModeEvents:(id)events;
- (id)featurizeActionEvent:(id)event anchorOccurrenceDate:(id)date;
- (id)featurizeAppEvent:(id)event anchorOccurrenceDate:(id)date eventFeaturizer:(id)featurizer;
- (id)featurizeModeEvent:(id)event anchorOccurrenceDate:(id)date eventFeaturizer:(id)featurizer;
- (id)fetchNegativeActionEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveActionEvents:(id)events;
- (id)fetchNegativeAppEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveAppEvents:(id)events;
- (id)fetchNegativeModeEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveModeEvents:(id)events;
- (id)fetchNewAnchorEventsForAnchor:(id)anchor;
- (id)fetchPositiveActionEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event;
- (id)fetchPositiveAppEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event anchor:(id)anchor;
- (id)fetchPositiveModeEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event anchor:(id)anchor;
- (id)modeCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromModes:(id)modes;
- (id)queryStartDateForAnchor:(id)anchor;
- (id)targetedNegativeActionSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude;
- (id)targetedNegativeAppSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude;
- (id)targetedNegativeModeSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude;
- (int64_t)addActionEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor;
- (int64_t)addAppEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor;
- (int64_t)addCandidateTrainingSamplesToDatabaseForAnchor:(id)anchor anchorEvents:(id)events;
- (int64_t)addModeEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor;
- (int64_t)addNewTrainingSamplesToDatabase;
- (int64_t)addNewTrainingSamplesToDatabaseForAnchor:(id)anchor;
- (int64_t)addNewTrainingSamplesToDatabaseForAnchorEvent:(id)event anchor:(id)anchor;
- (unint64_t)cleanupDatasetForPrivacyPreservation;
- (void)addAnchorEventToDatabase:(id)database anchor:(id)anchor;
@end

@implementation ATXAnchorModelTrainingDatasetBuilder

- (ATXAnchorModelTrainingDatasetBuilder)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self initWithActivity:0 dataStoreWrapper:v3 harvester:v4];

  return v5;
}

- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXAnchorModelTrainingDatasetBuilder *)self initWithActivity:activityCopy dataStoreWrapper:v5 harvester:v6];

  return v7;
}

- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)activity dataStoreWrapper:(id)wrapper harvester:(id)harvester
{
  activityCopy = activity;
  wrapperCopy = wrapper;
  harvesterCopy = harvester;
  v15.receiver = self;
  v15.super_class = ATXAnchorModelTrainingDatasetBuilder;
  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activity, activity);
    objc_storeStrong(&v13->_dataStoreWrapper, wrapper);
    objc_storeStrong(&v13->_harvester, harvester);
  }

  return v13;
}

- (id)anchorsToIncludeInTrainingData
{
  v2 = +[ATXAnchorModelHyperParameters sharedInstance];
  enabledAnchors = [v2 enabledAnchors];
  v4 = [enabledAnchors _pas_mappedArrayWithTransform:&__block_literal_global_183];

  return v4;
}

id __70__ATXAnchorModelTrainingDatasetBuilder_anchorsToIncludeInTrainingData__block_invoke(int a1, NSString *aClassName)
{
  NSClassFromString(aClassName);
  v2 = objc_opt_new();

  return v2;
}

- (unint64_t)cleanupDatasetForPrivacyPreservation
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "AnchorModel: Cleaning up Anchor Model Database for Privacy Preservation...", &v12, 2u);
  }

  deleteSamplesThatAreMoreThan28DaysOld = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper deleteSamplesThatAreMoreThan28DaysOld];
  v6 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v6 allInstalledAppsKnownToSpringBoard];

  if ([allInstalledAppsKnownToSpringBoard count])
  {
    deleteSamplesThatAreMoreThan28DaysOld += [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper deleteSamplesForBundleIdsNotInList:allInstalledAppsKnownToSpringBoard];
  }

  else
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelTrainingDatasetBuilder cleanupDatasetForPrivacyPreservation];
    }
  }

  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = deleteSamplesThatAreMoreThan28DaysOld;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "AnchorModel: Done cleaning up Anchor Model Database for Privacy Preservation. Deleted %lu samples in total.", &v12, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return deleteSamplesThatAreMoreThan28DaysOld;
}

- (int64_t)addNewTrainingSamplesToDatabase
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "AnchorModel: Harvesting new training samples for Anchor Model and adding them to the database.", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  anchorsToIncludeInTrainingData = [(ATXAnchorModelTrainingDatasetBuilder *)self anchorsToIncludeInTrainingData];
  v6 = [anchorsToIncludeInTrainingData countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(anchorsToIncludeInTrainingData);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v8 += [(ATXAnchorModelTrainingDatasetBuilder *)self addNewTrainingSamplesToDatabaseForAnchor:v11];
        if ([(ATXBackgroundActivityProtocol *)self->_activity didDefer])
        {
          v12 = __atxlog_handle_anchor();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v11;
            _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Deferring adding new training samples right after processing anchor %@ because XPC activity asked for deferral. Not going to process any other anchors for now.", buf, 0xCu);
          }

          goto LABEL_16;
        }
      }

      v7 = [anchorsToIncludeInTrainingData countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)addNewTrainingSamplesToDatabaseForAnchor:(id)anchor
{
  v15 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = anchorCopy;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[START] ============= \nAnchorModel: Harvesting training data for %@.", &v11, 0xCu);
  }

  v6 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNewAnchorEventsForAnchor:anchorCopy];
  v7 = [(ATXAnchorModelTrainingDatasetBuilder *)self addCandidateTrainingSamplesToDatabaseForAnchor:anchorCopy anchorEvents:v6];
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = v7;
    v13 = 2112;
    v14 = anchorCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "AnchorModel: Added %ld new samples for %@. \n============= [END]", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)addCandidateTrainingSamplesToDatabaseForAnchor:(id)anchor anchorEvents:(id)events
{
  v31 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  eventsCopy = events;
  v8 = [eventsCopy countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        if ([(ATXAnchorModelTrainingDatasetBuilder *)self shouldCreateTrainingSamplesForAnchorEvent:v13 anchor:anchorCopy])
        {
          v10 += [(ATXAnchorModelTrainingDatasetBuilder *)self addNewTrainingSamplesToDatabaseForAnchorEvent:v13 anchor:anchorCopy];
          if ([(ATXBackgroundActivityProtocol *)self->_activity didDefer])
          {
            v16 = __atxlog_handle_anchor();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v25 = anchorCopy;
              v26 = 2048;
              v27 = v10;
              v28 = 2112;
              v29 = v13;
              _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Deferring adding new training samples while processing anchor %@ because XPC activity asked for deferral. Not going to finish processing this anchor or other anchors for now. We added %lu training samples for this anchor, and the last anchor event we processed was: %@.", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v14);
            goto LABEL_19;
          }
        }

        else
        {
          v15 = __atxlog_handle_anchor();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v13;
            _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Anchor event does not qualify for producing training samples. Anchor event: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v9 = [eventsCopy countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)anchorOccurredLongEnoughAgo:(id)ago anchor:(id)anchor
{
  v6 = MEMORY[0x277CBEAA8];
  anchorCopy = anchor;
  agoCopy = ago;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;
  [(ATXAnchorModelTrainingDatasetBuilder *)self secondsAfterAnchorToCollectPositiveSamples:anchorCopy];
  v12 = v10 - v11;
  v13 = objc_opt_class();

  v14 = [v13 anchorOccurenceDateFromDuetEvent:agoCopy];

  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  return v16 < v12;
}

- (id)fetchNewAnchorEventsForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self queryStartDateForAnchor:anchorCopy];
  v6 = objc_opt_class();
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 fetchAnchorEvents:anchorCopy startDate:v5 endDate:date];

  return v8;
}

- (int64_t)addNewTrainingSamplesToDatabaseForAnchorEvent:(id)event anchor:(id)anchor
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  anchorCopy = anchor;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = eventCopy;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Adding new training samples based on anchor event %@", &v14, 0xCu);
  }

  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self addActionEventsToDatabaseAfterAnchorEvent:eventCopy anchor:anchorCopy];
  v10 = [(ATXAnchorModelTrainingDatasetBuilder *)self addAppEventsToDatabaseAfterAnchorEvent:eventCopy anchor:anchorCopy];
  v11 = [(ATXAnchorModelTrainingDatasetBuilder *)self addModeEventsToDatabaseAfterAnchorEvent:eventCopy anchor:anchorCopy];
  [(ATXAnchorModelTrainingDatasetBuilder *)self addAnchorEventToDatabase:eventCopy anchor:anchorCopy];

  v12 = *MEMORY[0x277D85DE8];
  return v10 + v9 + v11;
}

- (void)addAnchorEventToDatabase:(id)database anchor:(id)anchor
{
  databaseCopy = database;
  anchorCopy = anchor;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder addAnchorEventToDatabase:anchor:];
  }

  v9 = objc_opt_new();
  v10 = [v9 featurizeAnchorEvent:databaseCopy anchor:anchorCopy];

  [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper updateOrInsertAnchorEvent:databaseCopy anchor:anchorCopy featureMetadata:v10];
}

+ (id)fetchAnchorEvents:(id)events startDate:(id)date endDate:(id)endDate
{
  v19 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  endDateCopy = endDate;
  v10 = [dateCopy earlierDate:endDateCopy];

  if (v10 == dateCopy)
  {
    v12 = [objc_opt_class() fetchAnchorOccurrencesBetweenStartDate:dateCopy endDate:endDateCopy];
  }

  else
  {
    v11 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = dateCopy;
      v17 = 2112;
      v18 = endDateCopy;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "Skipping operation to fetch anchor events since the query startDate (%@) occurred on or after the query endDate (%@).", &v15, 0x16u);
    }

    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)queryStartDateForAnchor:(id)anchor
{
  v16 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper timestampOfMostRecentRecordedAnchorOccurrenceForAnchor:anchorCopy];
  if (v5 == 0.0)
  {
    v6 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = anchorCopy;
      v14 = 2048;
      v15 = 1296000;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "When computing the query start date for anchor %@, we were unable to fetch the most recent recorded anchor occurrence timestamp. Starting by adding anchor events that were at most %lu seconds ago.", &v12, 0x16u);
    }

    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-1296000.0];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v5 + 1.0];
  }

  v8 = v7;
  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = anchorCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Query start date for anchor %@ is %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (double)secondsAfterAnchorToCollectPositiveSamples:(id)samples
{
  samplesCopy = samples;
  [objc_opt_class() secondsOfInfluence];
  v5 = v4;
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder secondsAfterAnchorToCollectPositiveSamples:];
  }

  return v5;
}

+ (id)_pickTopSamplesFromArray:(id)array sampleSize:(unint64_t)size
{
  arrayCopy = array;
  if ([arrayCopy count] <= size)
  {
    v6 = arrayCopy;
  }

  else
  {
    v6 = [arrayCopy subarrayWithRange:{0, size}];
  }

  v7 = v6;

  return v7;
}

- (int64_t)addActionEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor
{
  v52 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  anchorCopy = anchor;
  v7 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = eventCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Adding new action training samples based on anchor event %@", buf, 0xCu);
  }

  v8 = [objc_opt_class() candidateQueryStartDateFromDuetEvent:eventCopy];
  v9 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:eventCopy];
  [objc_opt_class() durationOfAnchorEvent:eventCopy];
  v36 = v8;
  v10 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchPositiveActionEventsAfterAnchorDate:v8 durationOfAnchorEvent:?];
  v11 = [objc_opt_class() _pickTopSamplesFromArray:v10 sampleSize:15];

  v12 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 count];
    *buf = 134217984;
    v51 = v13;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "Inserting %lu positive action events after the anchor.", buf, 0xCu);
  }

  v14 = eventCopy;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v45;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeActionEvent:v20 anchorOccurrenceDate:v9];
        v17 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedActionToDatabase:v20 featurizedAction:v22 actionOccurred:1 actionEngaged:0 anchorEvent:v14 anchor:anchorCopy];

        objc_autoreleasePoolPop(v21);
      }

      v16 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v23 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNegativeActionEventsAfterAnchorDate:v36 anchor:anchorCopy positiveActionEvents:obj];
  v24 = [objc_opt_class() _pickTopSamplesFromArray:v23 sampleSize:15];

  v25 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v24 count];
    *buf = 134217984;
    v51 = v26;
    _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Inserting %lu negative action events after the anchor.", buf, 0xCu);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v37 = v24;
  v27 = [v37 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v37);
        }

        v31 = *(*(&v40 + 1) + 8 * j);
        v32 = objc_autoreleasePoolPush();
        v33 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeActionEvent:v31 anchorOccurrenceDate:v9];
        v17 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedActionToDatabase:v31 featurizedAction:v33 actionOccurred:0 actionEngaged:0 anchorEvent:v14 anchor:anchorCopy];

        objc_autoreleasePoolPop(v32);
      }

      v28 = [v37 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v28);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)fetchPositiveActionEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event
{
  harvester = self->_harvester;
  dateCopy = date;
  v7 = [(ATXAnchorModelEventHarvester *)harvester fetchEventsAfterAnchorOccurrenceDate:dateCopy withDuetDataProviderClass:objc_opt_class() limit:100000 maxSecondsBeforeAnchor:0 maxSecondsAfterAnchor:event predicates:0];

  return v7;
}

- (id)fetchNegativeActionEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveActionEvents:(id)events
{
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self targetedNegativeActionSamplesForAnchor:anchor anchorOccurrenceDate:date eventsToExclude:events];
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder fetchNegativeActionEventsAfterAnchorDate:v5 anchor:? positiveActionEvents:?];
  }

  return v5;
}

- (id)targetedNegativeActionSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude
{
  dateCopy = date;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self actionCandidateIdsToTargetForAnchor:anchor excludeCandidateIdsFromActions:exclude];
  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder targetedNegativeActionSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:];
  }

  dataStoreWrapper = self->_dataStoreWrapper;
  allObjects = [v9 allObjects];
  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper appIntentDuetEventsFromCandidateIds:allObjects date:dateCopy];

  return v13;
}

- (id)actionCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromActions:(id)actions
{
  dataStoreWrapper = self->_dataStoreWrapper;
  actionsCopy = actions;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper uniqueCandidateIdsThatOccurredAfterAnchor:anchor candidateType:@"action" minOccurrences:3];
  v9 = [v8 mutableCopy];

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder actionCandidateIdsToTargetForAnchor:v9 excludeCandidateIdsFromActions:?];
  }

  v11 = [(ATXAnchorModelTrainingDatasetBuilder *)self candidateIdSetFromAppIntentEvents:actionsCopy];

  [v9 minusSet:v11];

  return v9;
}

- (id)candidateIdSetFromAppIntentEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [ATXAnchorModelDataStoreWrapper candidateIdFromAppIntentDuetEvent:v10, v15];
        [v4 addObject:v12];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)candidateIdSetFromAppLaunchDuetEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [ATXAnchorModelDataStoreWrapper candidateIdFromAppLaunchDuetEvent:v10, v15];
        [v4 addObject:v12];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)featurizeActionEvent:(id)event anchorOccurrenceDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  v7 = objc_opt_new();
  [v7 setShouldComputeLaunchHistoryForAppLaunches:0];
  [v7 setShouldComputeLaunchHistoryForActionKeyLaunches:0];
  [v7 setShouldComputeLaunchHistoryForActionUUIDLaunches:1];
  v8 = [v7 featurizeActionEvent:eventCopy anchorOccurrenceDate:dateCopy];

  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:v8 anchorOccurrenceDate:?];
  }

  v11 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:v8 anchorOccurrenceDate:?];
  }

  v12 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:v8 anchorOccurrenceDate:?];
  }

  v13 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  return v8;
}

- (int64_t)addAppEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor
{
  v54 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  anchorCopy = anchor;
  v8 = eventCopy;
  v41 = anchorCopy;
  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = eventCopy;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Adding new app training samples based on anchor event %@", buf, 0xCu);
  }

  v10 = [objc_opt_class() candidateQueryStartDateFromDuetEvent:eventCopy];
  v11 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:eventCopy];
  [objc_opt_class() durationOfAnchorEvent:eventCopy];
  v38 = v10;
  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchPositiveAppEventsAfterAnchorDate:v10 durationOfAnchorEvent:v41 anchor:?];
  v13 = [objc_opt_class() _pickTopSamplesFromArray:v12 sampleSize:15];

  v14 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    *buf = 134217984;
    v53 = v15;
    _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "Inserting %lu positive app events after the anchor.", buf, 0xCu);
  }

  v16 = objc_opt_new();
  [v16 warmLaunchHistoryForAppEvents:v13 anchorOccurrenceDate:v11];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v13;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v47;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v46 + 1) + 8 * i);
        v23 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeAppEvent:v22 anchorOccurrenceDate:v11 eventFeaturizer:v16];
        v19 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedAppToDatabase:v22 featurizedApp:v23 appWasLaunched:1 appEngaged:0 anchorEvent:v8 anchor:v41];
      }

      v18 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v40 = v8;

  v24 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNegativeAppEventsAfterAnchorDate:v38 anchor:v41 positiveAppEvents:obj];
  v25 = [objc_opt_class() _pickTopSamplesFromArray:v24 sampleSize:15];

  v26 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v25 count];
    *buf = 134217984;
    v53 = v27;
    _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "Inserting %lu negative app events after the anchor.", buf, 0xCu);
  }

  v28 = objc_opt_new();
  [v28 warmLaunchHistoryForAppEvents:v25 anchorOccurrenceDate:v11];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = v25;
  v30 = [v29 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v43;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v42 + 1) + 8 * j);
        v35 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeAppEvent:v34 anchorOccurrenceDate:v11 eventFeaturizer:v28];
        v19 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedAppToDatabase:v34 featurizedApp:v35 appWasLaunched:0 appEngaged:0 anchorEvent:v40 anchor:v41];
      }

      v31 = [v29 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v31);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)fetchPositiveAppEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event anchor:(id)anchor
{
  v28[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  harvester = self->_harvester;
  anchorCopy = anchor;
  v11 = [(ATXAnchorModelEventHarvester *)harvester fetchAppLaunchEventsAfterAnchorOccurrenceDate:dateCopy limit:100000 maxSecondsBeforeAnchor:0 maxSecondsAfterAnchor:event isIncluded:&__block_literal_global_31_1];
  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)self appLaunchEventsFromNowPlayingStreamForAnchor:anchorCopy anchorOccurrenceDate:dateCopy];

  v13 = objc_opt_new();
  [v13 addObjectsFromArray:v11];
  [v13 addObjectsFromArray:v12];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v28[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v16 = [v13 sortedArrayUsingDescriptors:v15];
  v17 = [v16 mutableCopy];

  v18 = MEMORY[0x277CBEAA8];
  v19 = dateCopy;
  v20 = [[v18 alloc] initWithTimeInterval:v19 sinceDate:event];
  v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v19 endDate:v20];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __107__ATXAnchorModelTrainingDatasetBuilder_fetchPositiveAppEventsAfterAnchorDate_durationOfAnchorEvent_anchor___block_invoke_2;
  v26[3] = &unk_278597F30;
  v27 = v21;
  v22 = v21;
  v23 = [v17 _pas_filteredArrayWithTest:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

BOOL __107__ATXAnchorModelTrainingDatasetBuilder_fetchPositiveAppEventsAfterAnchorDate_durationOfAnchorEvent_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 endDate];
  v4 = [v2 startDate];

  [v3 timeIntervalSinceDate:v4];
  v6 = v5 >= 2.0;

  return v6;
}

uint64_t __107__ATXAnchorModelTrainingDatasetBuilder_fetchPositiveAppEventsAfterAnchorDate_durationOfAnchorEvent_anchor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 startDate];
  v4 = [v2 containsDate:v3];

  return v4;
}

- (id)appLaunchEventsFromNowPlayingStreamForAnchor:(id)anchor anchorOccurrenceDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = MEMORY[0x277CBEAA8];
  anchorCopy = anchor;
  v9 = [v7 alloc];
  [(ATXAnchorModelTrainingDatasetBuilder *)self secondsAfterAnchorToCollectPositiveSamples:anchorCopy];
  v11 = v10;

  v12 = [v9 initWithTimeInterval:dateCopy sinceDate:v11];
  v13 = objc_opt_new();
  v14 = [v13 playbackEventsAfterSecondsOfInactivity:dateCopy betweenStartDate:v12 endDate:600.0];
  v15 = [v13 convertNowPlayingEventsToAppLaunchEvents:v14];
  v16 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 134217984;
    v20 = [v15 count];
    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "Generated %lu App Launch Events from Now Playing Events.", &v19, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)fetchNegativeAppEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveAppEvents:(id)events
{
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self targetedNegativeAppSamplesForAnchor:anchor anchorOccurrenceDate:date eventsToExclude:events];
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder fetchNegativeAppEventsAfterAnchorDate:v5 anchor:? positiveAppEvents:?];
  }

  return v5;
}

- (id)targetedNegativeAppSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude
{
  dateCopy = date;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self appCandidateIdsToTargetForAnchor:anchor excludeCandidateIdsFromAppLaunches:exclude];
  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder targetedNegativeAppSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:];
  }

  dataStoreWrapper = self->_dataStoreWrapper;
  allObjects = [v9 allObjects];
  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper appLaunchDuetEventsFromCandidateIds:allObjects date:dateCopy];

  return v13;
}

- (id)appCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromAppLaunches:(id)launches
{
  dataStoreWrapper = self->_dataStoreWrapper;
  launchesCopy = launches;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper uniqueCandidateIdsThatOccurredAfterAnchor:anchor candidateType:@"app" minOccurrences:3];
  v9 = [v8 mutableCopy];

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder actionCandidateIdsToTargetForAnchor:v9 excludeCandidateIdsFromActions:?];
  }

  v11 = [(ATXAnchorModelTrainingDatasetBuilder *)self candidateIdSetFromAppLaunchDuetEvents:launchesCopy];

  [v9 minusSet:v11];

  return v9;
}

- (id)featurizeAppEvent:(id)event anchorOccurrenceDate:(id)date eventFeaturizer:(id)featurizer
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = MEMORY[0x277CBEA60];
  featurizerCopy = featurizer;
  dateCopy = date;
  eventCopy2 = event;
  v11 = [v7 arrayWithObjects:&eventCopy count:1];

  v12 = [featurizerCopy featurizeAppLaunchEvents:v11 anchorOccurrenceDate:{dateCopy, eventCopy, v20}];

  v13 = [v12 objectAtIndexedSubscript:0];

  v14 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  v15 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeAppEvent:anchorOccurrenceDate:eventFeaturizer:];
  }

  v16 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (int64_t)addModeEventsToDatabaseAfterAnchorEvent:(id)event anchor:(id)anchor
{
  v52 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  anchorCopy = anchor;
  v7 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = eventCopy;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Adding new mode training samples based on anchor event %@", buf, 0xCu);
  }

  v8 = [objc_opt_class() candidateQueryStartDateFromDuetEvent:eventCopy];
  v38 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:eventCopy];
  [objc_opt_class() durationOfAnchorEvent:eventCopy];
  v35 = v8;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchPositiveModeEventsAfterAnchorDate:v8 durationOfAnchorEvent:anchorCopy anchor:?];
  v10 = [objc_opt_class() _pickTopSamplesFromArray:v9 sampleSize:15];

  v11 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 count];
    *buf = 134217984;
    v51 = v12;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Inserting %lu positive mode events after the anchor.", buf, 0xCu);
  }

  v13 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v44 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeModeEvent:v19 anchorOccurrenceDate:v38 eventFeaturizer:v13];
        v16 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedModeToDatabase:v19 featurizedMode:v21 modeOccurred:1 modeEngaged:0 anchorEvent:eventCopy anchor:anchorCopy];

        objc_autoreleasePoolPop(v20);
      }

      v15 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v22 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNegativeModeEventsAfterAnchorDate:v35 anchor:anchorCopy positiveModeEvents:obj];
  v23 = [objc_opt_class() _pickTopSamplesFromArray:v22 sampleSize:15];

  v24 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v23 count];
    *buf = 134217984;
    v51 = v25;
    _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "Inserting %lu negative activity change events after the anchor.", buf, 0xCu);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v36 = v23;
  v26 = [v36 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v36);
        }

        v30 = *(*(&v40 + 1) + 8 * j);
        v31 = objc_autoreleasePoolPush();
        v32 = [(ATXAnchorModelTrainingDatasetBuilder *)self featurizeModeEvent:v30 anchorOccurrenceDate:v38 eventFeaturizer:v13];
        v16 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedModeToDatabase:v30 featurizedMode:v32 modeOccurred:0 modeEngaged:0 anchorEvent:eventCopy anchor:anchorCopy];

        objc_autoreleasePoolPop(v31);
      }

      v27 = [v36 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v27);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)fetchPositiveModeEventsAfterAnchorDate:(id)date durationOfAnchorEvent:(double)event anchor:(id)anchor
{
  dateCopy = date;
  v8 = BiomeLibrary();
  userFocus = [v8 UserFocus];
  computedMode = [userFocus ComputedMode];
  v11 = [computedMode atx_publisherFromStartDate:dateCopy];

  v12 = [(ATXAnchorModelEventHarvester *)self->_harvester fetchEventsAfterAnchorOccurenceDate:dateCopy withBiomePublisher:v11 maxSecondsBeforeAnchor:5 maxSecondsAfterAnchor:event];

  return v12;
}

- (id)featurizeModeEvent:(id)event anchorOccurrenceDate:(id)date eventFeaturizer:(id)featurizer
{
  v5 = [featurizer featurizeModeEvent:event anchorOccurrenceDate:date];
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  v7 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeModeEvent:anchorOccurrenceDate:eventFeaturizer:];
  }

  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder featurizeActionEvent:anchorOccurrenceDate:];
  }

  return v5;
}

- (id)fetchNegativeModeEventsAfterAnchorDate:(id)date anchor:(id)anchor positiveModeEvents:(id)events
{
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self targetedNegativeModeSamplesForAnchor:anchor anchorOccurrenceDate:date eventsToExclude:events];
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder fetchNegativeModeEventsAfterAnchorDate:v5 anchor:? positiveModeEvents:?];
  }

  return v5;
}

- (id)targetedNegativeModeSamplesForAnchor:(id)anchor anchorOccurrenceDate:(id)date eventsToExclude:(id)exclude
{
  dateCopy = date;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self modeCandidateIdsToTargetForAnchor:anchor excludeCandidateIdsFromModes:exclude];
  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder targetedNegativeModeSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:];
  }

  dataStoreWrapper = self->_dataStoreWrapper;
  allObjects = [v9 allObjects];
  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper modeBiomeEventsFromCandidateIds:allObjects date:dateCopy];

  return v13;
}

- (id)modeCandidateIdsToTargetForAnchor:(id)anchor excludeCandidateIdsFromModes:(id)modes
{
  dataStoreWrapper = self->_dataStoreWrapper;
  modesCopy = modes;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper uniqueCandidateIdsThatOccurredAfterAnchor:anchor candidateType:@"mode" minOccurrences:3];
  v9 = [v8 mutableCopy];

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder modeCandidateIdsToTargetForAnchor:v9 excludeCandidateIdsFromModes:?];
  }

  v11 = [(ATXAnchorModelTrainingDatasetBuilder *)self candidateIdSetFromModeEvents:modesCopy];

  [v9 minusSet:v11];

  return v9;
}

- (id)candidateIdSetFromModeEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [ATXAnchorModelDataStoreWrapper candidateIdFromModeBiomeEvent:v10, v15];
        [v4 addObject:v12];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addAnchorEventToDatabase:anchor:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEBUG, "AnchorModel: Adding anchor event to database %@ for anchor %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)secondsAfterAnchorToCollectPositiveSamples:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchNegativeActionEventsAfterAnchorDate:(uint64_t)a1 anchor:positiveActionEvents:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [ATXAnchorModelEventHarvester idsFromDuetEvents:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Selected negative action events: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)targetedNegativeActionSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)actionCandidateIdsToTargetForAnchor:(void *)a1 excludeCandidateIdsFromActions:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "%lu action events have happened after the anchor historically.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)featurizeActionEvent:anchorOccurrenceDate:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)featurizeActionEvent:(void *)a1 anchorOccurrenceDate:.cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 actionUUIDMetadatas];
  v2 = [v1 objectAtIndexedSubscript:0];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v3, v4, "Featurized action - action UUID: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)featurizeActionEvent:(void *)a1 anchorOccurrenceDate:.cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 actionKeyMetadata];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Featurized action - action key: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)featurizeActionEvent:(void *)a1 anchorOccurrenceDate:.cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 appLaunchMetadata];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Featurized action - app launch: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)featurizeActionEvent:anchorOccurrenceDate:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchNegativeAppEventsAfterAnchorDate:(uint64_t)a1 anchor:positiveAppEvents:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [ATXAnchorModelEventHarvester idsFromDuetEvents:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Selected negative app events: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)targetedNegativeAppSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)featurizeAppEvent:anchorOccurrenceDate:eventFeaturizer:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)featurizeModeEvent:anchorOccurrenceDate:eventFeaturizer:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchNegativeModeEventsAfterAnchorDate:(uint64_t)a1 anchor:positiveModeEvents:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [ATXAnchorModelEventHarvester idsFromBiomeEvents:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v2, v3, "Selected negative mode events: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)targetedNegativeModeSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)modeCandidateIdsToTargetForAnchor:(void *)a1 excludeCandidateIdsFromModes:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "%lu mode events have happened after the anchor historically.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end