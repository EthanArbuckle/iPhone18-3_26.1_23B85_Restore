@interface ATXAnchorModelTrainingDatasetBuilder
+ (id)_pickTopSamplesFromArray:(id)a3 sampleSize:(unint64_t)a4;
+ (id)fetchAnchorEvents:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (ATXAnchorModelTrainingDatasetBuilder)init;
- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)a3;
- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)a3 dataStoreWrapper:(id)a4 harvester:(id)a5;
- (BOOL)anchorOccurredLongEnoughAgo:(id)a3 anchor:(id)a4;
- (double)secondsAfterAnchorToCollectPositiveSamples:(id)a3;
- (id)actionCandidateIdsToTargetForAnchor:(id)a3 excludeCandidateIdsFromActions:(id)a4;
- (id)anchorsToIncludeInTrainingData;
- (id)appCandidateIdsToTargetForAnchor:(id)a3 excludeCandidateIdsFromAppLaunches:(id)a4;
- (id)appLaunchEventsFromNowPlayingStreamForAnchor:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)candidateIdSetFromAppIntentEvents:(id)a3;
- (id)candidateIdSetFromAppLaunchDuetEvents:(id)a3;
- (id)candidateIdSetFromModeEvents:(id)a3;
- (id)featurizeActionEvent:(id)a3 anchorOccurrenceDate:(id)a4;
- (id)featurizeAppEvent:(id)a3 anchorOccurrenceDate:(id)a4 eventFeaturizer:(id)a5;
- (id)featurizeModeEvent:(id)a3 anchorOccurrenceDate:(id)a4 eventFeaturizer:(id)a5;
- (id)fetchNegativeActionEventsAfterAnchorDate:(id)a3 anchor:(id)a4 positiveActionEvents:(id)a5;
- (id)fetchNegativeAppEventsAfterAnchorDate:(id)a3 anchor:(id)a4 positiveAppEvents:(id)a5;
- (id)fetchNegativeModeEventsAfterAnchorDate:(id)a3 anchor:(id)a4 positiveModeEvents:(id)a5;
- (id)fetchNewAnchorEventsForAnchor:(id)a3;
- (id)fetchPositiveActionEventsAfterAnchorDate:(id)a3 durationOfAnchorEvent:(double)a4;
- (id)fetchPositiveAppEventsAfterAnchorDate:(id)a3 durationOfAnchorEvent:(double)a4 anchor:(id)a5;
- (id)fetchPositiveModeEventsAfterAnchorDate:(id)a3 durationOfAnchorEvent:(double)a4 anchor:(id)a5;
- (id)modeCandidateIdsToTargetForAnchor:(id)a3 excludeCandidateIdsFromModes:(id)a4;
- (id)queryStartDateForAnchor:(id)a3;
- (id)targetedNegativeActionSamplesForAnchor:(id)a3 anchorOccurrenceDate:(id)a4 eventsToExclude:(id)a5;
- (id)targetedNegativeAppSamplesForAnchor:(id)a3 anchorOccurrenceDate:(id)a4 eventsToExclude:(id)a5;
- (id)targetedNegativeModeSamplesForAnchor:(id)a3 anchorOccurrenceDate:(id)a4 eventsToExclude:(id)a5;
- (int64_t)addActionEventsToDatabaseAfterAnchorEvent:(id)a3 anchor:(id)a4;
- (int64_t)addAppEventsToDatabaseAfterAnchorEvent:(id)a3 anchor:(id)a4;
- (int64_t)addCandidateTrainingSamplesToDatabaseForAnchor:(id)a3 anchorEvents:(id)a4;
- (int64_t)addModeEventsToDatabaseAfterAnchorEvent:(id)a3 anchor:(id)a4;
- (int64_t)addNewTrainingSamplesToDatabase;
- (int64_t)addNewTrainingSamplesToDatabaseForAnchor:(id)a3;
- (int64_t)addNewTrainingSamplesToDatabaseForAnchorEvent:(id)a3 anchor:(id)a4;
- (unint64_t)cleanupDatasetForPrivacyPreservation;
- (void)addAnchorEventToDatabase:(id)a3 anchor:(id)a4;
@end

@implementation ATXAnchorModelTrainingDatasetBuilder

- (ATXAnchorModelTrainingDatasetBuilder)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self initWithActivity:0 dataStoreWrapper:v3 harvester:v4];

  return v5;
}

- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXAnchorModelTrainingDatasetBuilder *)self initWithActivity:v4 dataStoreWrapper:v5 harvester:v6];

  return v7;
}

- (ATXAnchorModelTrainingDatasetBuilder)initWithActivity:(id)a3 dataStoreWrapper:(id)a4 harvester:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXAnchorModelTrainingDatasetBuilder;
  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activity, a3);
    objc_storeStrong(&v13->_dataStoreWrapper, a4);
    objc_storeStrong(&v13->_harvester, a5);
  }

  return v13;
}

- (id)anchorsToIncludeInTrainingData
{
  v2 = +[ATXAnchorModelHyperParameters sharedInstance];
  v3 = [v2 enabledAnchors];
  v4 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_183];

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

  v5 = [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper deleteSamplesThatAreMoreThan28DaysOld];
  v6 = +[_ATXAppIconState sharedInstance];
  v7 = [v6 allInstalledAppsKnownToSpringBoard];

  if ([v7 count])
  {
    v5 += [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper deleteSamplesForBundleIdsNotInList:v7];
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
    v13 = v5;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "AnchorModel: Done cleaning up Anchor Model Database for Privacy Preservation. Deleted %lu samples in total.", &v12, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
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
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self anchorsToIncludeInTrainingData];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
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

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
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

- (int64_t)addNewTrainingSamplesToDatabaseForAnchor:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "[START] ============= \nAnchorModel: Harvesting training data for %@.", &v11, 0xCu);
  }

  v6 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNewAnchorEventsForAnchor:v4];
  v7 = [(ATXAnchorModelTrainingDatasetBuilder *)self addCandidateTrainingSamplesToDatabaseForAnchor:v4 anchorEvents:v6];
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = v7;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "AnchorModel: Added %ld new samples for %@. \n============= [END]", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)addCandidateTrainingSamplesToDatabaseForAnchor:(id)a3 anchorEvents:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        if ([(ATXAnchorModelTrainingDatasetBuilder *)self shouldCreateTrainingSamplesForAnchorEvent:v13 anchor:v6])
        {
          v10 += [(ATXAnchorModelTrainingDatasetBuilder *)self addNewTrainingSamplesToDatabaseForAnchorEvent:v13 anchor:v6];
          if ([(ATXBackgroundActivityProtocol *)self->_activity didDefer])
          {
            v16 = __atxlog_handle_anchor();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v25 = v6;
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

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v30 count:16];
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

- (BOOL)anchorOccurredLongEnoughAgo:(id)a3 anchor:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;
  [(ATXAnchorModelTrainingDatasetBuilder *)self secondsAfterAnchorToCollectPositiveSamples:v7];
  v12 = v10 - v11;
  v13 = objc_opt_class();

  v14 = [v13 anchorOccurenceDateFromDuetEvent:v8];

  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  return v16 < v12;
}

- (id)fetchNewAnchorEventsForAnchor:(id)a3
{
  v4 = a3;
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self queryStartDateForAnchor:v4];
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 fetchAnchorEvents:v4 startDate:v5 endDate:v7];

  return v8;
}

- (int64_t)addNewTrainingSamplesToDatabaseForAnchorEvent:(id)a3 anchor:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Adding new training samples based on anchor event %@", &v14, 0xCu);
  }

  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self addActionEventsToDatabaseAfterAnchorEvent:v6 anchor:v7];
  v10 = [(ATXAnchorModelTrainingDatasetBuilder *)self addAppEventsToDatabaseAfterAnchorEvent:v6 anchor:v7];
  v11 = [(ATXAnchorModelTrainingDatasetBuilder *)self addModeEventsToDatabaseAfterAnchorEvent:v6 anchor:v7];
  [(ATXAnchorModelTrainingDatasetBuilder *)self addAnchorEventToDatabase:v6 anchor:v7];

  v12 = *MEMORY[0x277D85DE8];
  return v10 + v9 + v11;
}

- (void)addAnchorEventToDatabase:(id)a3 anchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder addAnchorEventToDatabase:anchor:];
  }

  v9 = objc_opt_new();
  v10 = [v9 featurizeAnchorEvent:v6 anchor:v7];

  [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper updateOrInsertAnchorEvent:v6 anchor:v7 featureMetadata:v10];
}

+ (id)fetchAnchorEvents:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 earlierDate:v9];

  if (v10 == v8)
  {
    v12 = [objc_opt_class() fetchAnchorOccurrencesBetweenStartDate:v8 endDate:v9];
  }

  else
  {
    v11 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "Skipping operation to fetch anchor events since the query startDate (%@) occurred on or after the query endDate (%@).", &v15, 0x16u);
    }

    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)queryStartDateForAnchor:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ATXAnchorModelDataStoreWrapperProtocol *)self->_dataStoreWrapper timestampOfMostRecentRecordedAnchorOccurrenceForAnchor:v4];
  if (v5 == 0.0)
  {
    v6 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v4;
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
    v13 = v4;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Query start date for anchor %@ is %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (double)secondsAfterAnchorToCollectPositiveSamples:(id)a3
{
  v3 = a3;
  [objc_opt_class() secondsOfInfluence];
  v5 = v4;
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder secondsAfterAnchorToCollectPositiveSamples:];
  }

  return v5;
}

+ (id)_pickTopSamplesFromArray:(id)a3 sampleSize:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count] <= a4)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 subarrayWithRange:{0, a4}];
  }

  v7 = v6;

  return v7;
}

- (int64_t)addActionEventsToDatabaseAfterAnchorEvent:(id)a3 anchor:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39 = a4;
  v7 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v6;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Adding new action training samples based on anchor event %@", buf, 0xCu);
  }

  v8 = [objc_opt_class() candidateQueryStartDateFromDuetEvent:v6];
  v9 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:v6];
  [objc_opt_class() durationOfAnchorEvent:v6];
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

  v14 = v6;

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
        v17 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedActionToDatabase:v20 featurizedAction:v22 actionOccurred:1 actionEngaged:0 anchorEvent:v14 anchor:v39];

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

  v23 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNegativeActionEventsAfterAnchorDate:v36 anchor:v39 positiveActionEvents:obj];
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
        v17 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedActionToDatabase:v31 featurizedAction:v33 actionOccurred:0 actionEngaged:0 anchorEvent:v14 anchor:v39];

        objc_autoreleasePoolPop(v32);
      }

      v28 = [v37 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v28);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)fetchPositiveActionEventsAfterAnchorDate:(id)a3 durationOfAnchorEvent:(double)a4
{
  harvester = self->_harvester;
  v6 = a3;
  v7 = [(ATXAnchorModelEventHarvester *)harvester fetchEventsAfterAnchorOccurrenceDate:v6 withDuetDataProviderClass:objc_opt_class() limit:100000 maxSecondsBeforeAnchor:0 maxSecondsAfterAnchor:a4 predicates:0];

  return v7;
}

- (id)fetchNegativeActionEventsAfterAnchorDate:(id)a3 anchor:(id)a4 positiveActionEvents:(id)a5
{
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self targetedNegativeActionSamplesForAnchor:a4 anchorOccurrenceDate:a3 eventsToExclude:a5];
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder fetchNegativeActionEventsAfterAnchorDate:v5 anchor:? positiveActionEvents:?];
  }

  return v5;
}

- (id)targetedNegativeActionSamplesForAnchor:(id)a3 anchorOccurrenceDate:(id)a4 eventsToExclude:(id)a5
{
  v8 = a4;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self actionCandidateIdsToTargetForAnchor:a3 excludeCandidateIdsFromActions:a5];
  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder targetedNegativeActionSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:];
  }

  dataStoreWrapper = self->_dataStoreWrapper;
  v12 = [v9 allObjects];
  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper appIntentDuetEventsFromCandidateIds:v12 date:v8];

  return v13;
}

- (id)actionCandidateIdsToTargetForAnchor:(id)a3 excludeCandidateIdsFromActions:(id)a4
{
  dataStoreWrapper = self->_dataStoreWrapper;
  v7 = a4;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper uniqueCandidateIdsThatOccurredAfterAnchor:a3 candidateType:@"action" minOccurrences:3];
  v9 = [v8 mutableCopy];

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder actionCandidateIdsToTargetForAnchor:v9 excludeCandidateIdsFromActions:?];
  }

  v11 = [(ATXAnchorModelTrainingDatasetBuilder *)self candidateIdSetFromAppIntentEvents:v7];

  [v9 minusSet:v11];

  return v9;
}

- (id)candidateIdSetFromAppIntentEvents:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

- (id)candidateIdSetFromAppLaunchDuetEvents:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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

- (id)featurizeActionEvent:(id)a3 anchorOccurrenceDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setShouldComputeLaunchHistoryForAppLaunches:0];
  [v7 setShouldComputeLaunchHistoryForActionKeyLaunches:0];
  [v7 setShouldComputeLaunchHistoryForActionUUIDLaunches:1];
  v8 = [v7 featurizeActionEvent:v6 anchorOccurrenceDate:v5];

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

- (int64_t)addAppEventsToDatabaseAfterAnchorEvent:(id)a3 anchor:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v41 = v7;
  v9 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v6;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Adding new app training samples based on anchor event %@", buf, 0xCu);
  }

  v10 = [objc_opt_class() candidateQueryStartDateFromDuetEvent:v6];
  v11 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:v6];
  [objc_opt_class() durationOfAnchorEvent:v6];
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

- (id)fetchPositiveAppEventsAfterAnchorDate:(id)a3 durationOfAnchorEvent:(double)a4 anchor:(id)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  harvester = self->_harvester;
  v10 = a5;
  v11 = [(ATXAnchorModelEventHarvester *)harvester fetchAppLaunchEventsAfterAnchorOccurrenceDate:v8 limit:100000 maxSecondsBeforeAnchor:0 maxSecondsAfterAnchor:a4 isIncluded:&__block_literal_global_31_1];
  v12 = [(ATXAnchorModelTrainingDatasetBuilder *)self appLaunchEventsFromNowPlayingStreamForAnchor:v10 anchorOccurrenceDate:v8];

  v13 = objc_opt_new();
  [v13 addObjectsFromArray:v11];
  [v13 addObjectsFromArray:v12];
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v28[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  v16 = [v13 sortedArrayUsingDescriptors:v15];
  v17 = [v16 mutableCopy];

  v18 = MEMORY[0x277CBEAA8];
  v19 = v8;
  v20 = [[v18 alloc] initWithTimeInterval:v19 sinceDate:a4];
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

- (id)appLaunchEventsFromNowPlayingStreamForAnchor:(id)a3 anchorOccurrenceDate:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277CBEAA8];
  v8 = a3;
  v9 = [v7 alloc];
  [(ATXAnchorModelTrainingDatasetBuilder *)self secondsAfterAnchorToCollectPositiveSamples:v8];
  v11 = v10;

  v12 = [v9 initWithTimeInterval:v6 sinceDate:v11];
  v13 = objc_opt_new();
  v14 = [v13 playbackEventsAfterSecondsOfInactivity:v6 betweenStartDate:v12 endDate:600.0];
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

- (id)fetchNegativeAppEventsAfterAnchorDate:(id)a3 anchor:(id)a4 positiveAppEvents:(id)a5
{
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self targetedNegativeAppSamplesForAnchor:a4 anchorOccurrenceDate:a3 eventsToExclude:a5];
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder fetchNegativeAppEventsAfterAnchorDate:v5 anchor:? positiveAppEvents:?];
  }

  return v5;
}

- (id)targetedNegativeAppSamplesForAnchor:(id)a3 anchorOccurrenceDate:(id)a4 eventsToExclude:(id)a5
{
  v8 = a4;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self appCandidateIdsToTargetForAnchor:a3 excludeCandidateIdsFromAppLaunches:a5];
  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder targetedNegativeAppSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:];
  }

  dataStoreWrapper = self->_dataStoreWrapper;
  v12 = [v9 allObjects];
  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper appLaunchDuetEventsFromCandidateIds:v12 date:v8];

  return v13;
}

- (id)appCandidateIdsToTargetForAnchor:(id)a3 excludeCandidateIdsFromAppLaunches:(id)a4
{
  dataStoreWrapper = self->_dataStoreWrapper;
  v7 = a4;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper uniqueCandidateIdsThatOccurredAfterAnchor:a3 candidateType:@"app" minOccurrences:3];
  v9 = [v8 mutableCopy];

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder actionCandidateIdsToTargetForAnchor:v9 excludeCandidateIdsFromActions:?];
  }

  v11 = [(ATXAnchorModelTrainingDatasetBuilder *)self candidateIdSetFromAppLaunchDuetEvents:v7];

  [v9 minusSet:v11];

  return v9;
}

- (id)featurizeAppEvent:(id)a3 anchorOccurrenceDate:(id)a4 eventFeaturizer:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v7 = MEMORY[0x277CBEA60];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 arrayWithObjects:&v19 count:1];

  v12 = [v8 featurizeAppLaunchEvents:v11 anchorOccurrenceDate:{v9, v19, v20}];

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

- (int64_t)addModeEventsToDatabaseAfterAnchorEvent:(id)a3 anchor:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v39 = a4;
  v7 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v6;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Adding new mode training samples based on anchor event %@", buf, 0xCu);
  }

  v8 = [objc_opt_class() candidateQueryStartDateFromDuetEvent:v6];
  v38 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:v6];
  [objc_opt_class() durationOfAnchorEvent:v6];
  v35 = v8;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchPositiveModeEventsAfterAnchorDate:v8 durationOfAnchorEvent:v39 anchor:?];
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
        v16 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedModeToDatabase:v19 featurizedMode:v21 modeOccurred:1 modeEngaged:0 anchorEvent:v6 anchor:v39];

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

  v22 = [(ATXAnchorModelTrainingDatasetBuilder *)self fetchNegativeModeEventsAfterAnchorDate:v35 anchor:v39 positiveModeEvents:obj];
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
        v16 += [(ATXAnchorModelTrainingDatasetBuilder *)self addFeaturizedModeToDatabase:v30 featurizedMode:v32 modeOccurred:0 modeEngaged:0 anchorEvent:v6 anchor:v39];

        objc_autoreleasePoolPop(v31);
      }

      v27 = [v36 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v27);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)fetchPositiveModeEventsAfterAnchorDate:(id)a3 durationOfAnchorEvent:(double)a4 anchor:(id)a5
{
  v7 = a3;
  v8 = BiomeLibrary();
  v9 = [v8 UserFocus];
  v10 = [v9 ComputedMode];
  v11 = [v10 atx_publisherFromStartDate:v7];

  v12 = [(ATXAnchorModelEventHarvester *)self->_harvester fetchEventsAfterAnchorOccurenceDate:v7 withBiomePublisher:v11 maxSecondsBeforeAnchor:5 maxSecondsAfterAnchor:a4];

  return v12;
}

- (id)featurizeModeEvent:(id)a3 anchorOccurrenceDate:(id)a4 eventFeaturizer:(id)a5
{
  v5 = [a5 featurizeModeEvent:a3 anchorOccurrenceDate:a4];
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

- (id)fetchNegativeModeEventsAfterAnchorDate:(id)a3 anchor:(id)a4 positiveModeEvents:(id)a5
{
  v5 = [(ATXAnchorModelTrainingDatasetBuilder *)self targetedNegativeModeSamplesForAnchor:a4 anchorOccurrenceDate:a3 eventsToExclude:a5];
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder fetchNegativeModeEventsAfterAnchorDate:v5 anchor:? positiveModeEvents:?];
  }

  return v5;
}

- (id)targetedNegativeModeSamplesForAnchor:(id)a3 anchorOccurrenceDate:(id)a4 eventsToExclude:(id)a5
{
  v8 = a4;
  v9 = [(ATXAnchorModelTrainingDatasetBuilder *)self modeCandidateIdsToTargetForAnchor:a3 excludeCandidateIdsFromModes:a5];
  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder targetedNegativeModeSamplesForAnchor:anchorOccurrenceDate:eventsToExclude:];
  }

  dataStoreWrapper = self->_dataStoreWrapper;
  v12 = [v9 allObjects];
  v13 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper modeBiomeEventsFromCandidateIds:v12 date:v8];

  return v13;
}

- (id)modeCandidateIdsToTargetForAnchor:(id)a3 excludeCandidateIdsFromModes:(id)a4
{
  dataStoreWrapper = self->_dataStoreWrapper;
  v7 = a4;
  v8 = [(ATXAnchorModelDataStoreWrapperProtocol *)dataStoreWrapper uniqueCandidateIdsThatOccurredAfterAnchor:a3 candidateType:@"mode" minOccurrences:3];
  v9 = [v8 mutableCopy];

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelTrainingDatasetBuilder modeCandidateIdsToTargetForAnchor:v9 excludeCandidateIdsFromModes:?];
  }

  v11 = [(ATXAnchorModelTrainingDatasetBuilder *)self candidateIdSetFromModeEvents:v7];

  [v9 minusSet:v11];

  return v9;
}

- (id)candidateIdSetFromModeEvents:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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