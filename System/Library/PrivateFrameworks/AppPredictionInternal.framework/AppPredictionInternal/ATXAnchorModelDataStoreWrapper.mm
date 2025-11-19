@interface ATXAnchorModelDataStoreWrapper
+ (id)actionDetailsFromActionCandidateId:(id)a3;
+ (id)actionKeyFromActionCandidateId:(id)a3;
+ (id)anchorFeaturesForAnchorOccurrence:(id)a3 anchor:(id)a4 anchorMetadata:(id)a5;
+ (id)candidateIdFromAppIntentDuetEvent:(id)a3;
+ (id)candidateIdFromAppLaunchBiomeEvent:(id)a3;
+ (id)candidateIdFromAppLaunchDuetEvent:(id)a3;
+ (id)candidateIdFromBiomeEvent:(id)a3;
+ (id)candidateIdFromLinkActionBiomeEvent:(id)a3;
+ (id)candidateIdFromModeBiomeEvent:(id)a3;
+ (id)linkActionDetailsFromLinkActionCandidateId:(id)a3;
+ (id)modeDetailsFromModeCandidateId:(id)a3;
+ (id)populateCandidateOccurrencesForFeatures:(id)a3 withLaunchHistoryMetadata:(id)a4;
+ (int64_t)dayOfWeekIntegerFromATXAnchorModelPBDayOfWeek:(int)a3;
- (ATXAnchorModelDataStoreWrapper)init;
- (ATXAnchorModelDataStoreWrapper)initWithDataStore:(id)a3;
- (double)timestampOfMostRecentRecordedAnchorOccurrenceForAnchor:(id)a3;
- (id)appIntentDuetEventFromCandidateId:(id)a3 date:(id)a4;
- (id)appIntentDuetEventsFromCandidateIds:(id)a3 date:(id)a4;
- (id)appLaunchDuetEventFromCandidateId:(id)a3 date:(id)a4;
- (id)appLaunchDuetEventsFromCandidateIds:(id)a3 date:(id)a4;
- (id)candidateIdFromActionMetadata:(id)a3;
- (id)candidateTypeForCandidateId:(id)a3;
- (id)dateAnchorModelWasLastTrainedForAnchor:(id)a3;
- (id)dateOfFirstPositiveCandidateOccurrence:(id)a3 anchor:(id)a4 startDate:(id)a5 limit:(unint64_t)a6;
- (id)historicalAnchorOccurrenceDatesForAnchor:(id)a3;
- (id)linkActionBiomeEventFromCandidateId:(id)a3 date:(id)a4;
- (id)linkActionBiomeEventsFromCandidateIds:(id)a3 date:(id)a4;
- (id)minSlotResolutionParametersFromALogId:(int64_t)a3 paramHash:(int64_t)a4;
- (id)modeBiomeEventFromCandidateId:(id)a3 date:(id)a4;
- (id)modeBiomeEventsFromCandidateIds:(id)a3 date:(id)a4;
- (id)scoredActionFromAnchorModelPrediction:(id)a3;
- (id)secondsAfterAnchorWhenCandidateOccurredForAnchor:(id)a3 candidateId:(id)a4 onlyConsiderFirstOccurrencePerAnchor:(BOOL)a5;
- (id)trainingDataForCandidate:(id)a3 anchor:(id)a4 replacementStringForNilStringValues:(id)a5;
- (id)trainingResultsForAnchor:(id)a3;
- (id)uniqueAnchorEventIdentifiersForAnchor:(id)a3;
- (id)uniqueCandidateIdsThatOccurredAfterAnchor:(id)a3;
- (id)uniqueCandidateIdsThatOccurredAfterAnchor:(id)a3 candidateType:(id)a4 minOccurrences:(int64_t)a5;
- (int64_t)latestAlogIdForCandidateId:(id)a3;
- (int64_t)numActionOccurrencesInAllContexts;
- (int64_t)numActionOccurrencesInAllContextsForActionId:(id)a3;
- (int64_t)numAppLaunchOccurrencesInAllContexts;
- (int64_t)numAppLaunchOccurrencesInAllContextsForAppLaunchCandidateId:(id)a3;
- (int64_t)numCandidateIdOccurrencesInJointAnchorContext:(id)a3 anchor:(id)a4 anchorMetadata:(id)a5;
- (int64_t)numCandidateOccurrencesInAllContextsForCandidate:(id)a3;
- (int64_t)numCandidateOccurrencesInAllContextsForCandidateType:(id)a3;
- (int64_t)numCandidateOccurrencesInAnchorContextForCandidate:(id)a3 anchor:(id)a4;
- (int64_t)numCandidateOccurrencesInAnchorContextForCandidateType:(id)a3 anchor:(id)a4;
- (int64_t)numLinkActionOccurrencesInAllContexts;
- (int64_t)numLinkActionOccurrencesInAllContextsForCandidateId:(id)a3;
- (int64_t)numModeOccurrencesInAllContexts;
- (int64_t)numModeOccurrencesInAllContextsForModeId:(id)a3;
- (int64_t)numUniqueAnchorOccurrencesForAnchor:(id)a3 candidateId:(id)a4;
- (int64_t)numUniqueAnchorOccurrencesForGenericCandidateId:(id)a3 anchor:(id)a4;
- (int64_t)numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId:(id)a3 anchor:(id)a4;
- (unint64_t)deleteSamplesForBundleIdsNotInList:(id)a3;
- (unint64_t)deleteSamplesThatAreMoreThan28DaysOld;
- (void)assignMetricsForTrainingResult:(id)a3 anchorType:(id)a4 anchorEventIdentifier:(id)a5 candidateId:(id)a6;
- (void)insertAnchorOccurrence:(id)a3 anchor:(id)a4 featureMetadata:(id)a5;
- (void)insertAnchorSuggestionOutcome:(unint64_t)a3 date:(id)a4 anchorType:(id)a5 anchorEventIdentifier:(id)a6 candidateId:(id)a7;
- (void)populateCachedCountsForCandidateIds:(id)a3;
- (void)updateOrInsertAnchorEvent:(id)a3 anchor:(id)a4 featureMetadata:(id)a5;
- (void)updateOrInsertAnchorModelTrainingResults:(id)a3 anchor:(id)a4;
- (void)updateOrInsertAnchorType:(id)a3;
- (void)updateOrInsertCandidateEventToDatabaseWithCandidateFeatures:(id)a3 anchor:(id)a4 anchorEvent:(id)a5;
- (void)updateOrInsertLinkActionTrainingSample:(id)a3 featurizedAction:(id)a4 actionOccurred:(BOOL)a5 actionEngaged:(BOOL)a6 anchorEvent:(id)a7 anchor:(id)a8;
- (void)updateOrInsertLocation:(id)a3;
@end

@implementation ATXAnchorModelDataStoreWrapper

- (ATXAnchorModelDataStoreWrapper)init
{
  v3 = +[_ATXDataStore sharedInstance];
  v4 = [(ATXAnchorModelDataStoreWrapper *)self initWithDataStore:v3];

  return v4;
}

- (ATXAnchorModelDataStoreWrapper)initWithDataStore:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = ATXAnchorModelDataStoreWrapper;
  v6 = [(ATXAnchorModelDataStoreWrapper *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-1814400.0];
    twentyOneDaysAgo = v7->_twentyOneDaysAgo;
    v7->_twentyOneDaysAgo = v8;

    v10 = objc_alloc(MEMORY[0x277CBEAA8]);
    v11 = +[ATXAnchorModelHyperParameters sharedInstance];
    [v11 maxSecondsSinceCandidateOccurrenceToConsiderCandidateForPrediction];
    v13 = [v10 initWithTimeIntervalSinceNow:-v12];
    dateOfOldestAllowedCandidateOccurrenceForCandidateGeneration = v7->_dateOfOldestAllowedCandidateOccurrenceForCandidateGeneration;
    v7->_dateOfOldestAllowedCandidateOccurrenceForCandidateGeneration = v13;

    v15 = objc_opt_new();
    numCandidateOccurrencesInAllContextsForCandidateTypeCache = v7->_numCandidateOccurrencesInAllContextsForCandidateTypeCache;
    v7->_numCandidateOccurrencesInAllContextsForCandidateTypeCache = v15;
  }

  return v7;
}

- (double)timestampOfMostRecentRecordedAnchorOccurrenceForAnchor:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelDataStoreWrapper timestampOfMostRecentRecordedAnchorOccurrenceForAnchor:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  store = self->_store;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke;
  v10[3] = &unk_2785987E0;
  v10[4] = self;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [(_ATXDataStore *)store _doSync:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke_2;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke_3;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT MAX(anchorDate) FROM anchorOccurrence where anchorType=?" onPrep:v6 onRow:v5 onError:v3];
}

void __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 anchorTypeString];
  [v3 bindParam:1 toNSString:v4];
}

uint64_t __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "getIntegerForColumn:", 0)}];
  [v3 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v4;

  return *MEMORY[0x277D42698];
}

uint64_t __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (void)updateOrInsertLinkActionTrainingSample:(id)a3 featurizedAction:(id)a4 actionOccurred:(BOOL)a5 actionEngaged:(BOOL)a6 anchorEvent:(id)a7 anchor:(id)a8
{
  v9 = a3;
  v10 = a8;
  v11 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [ATXAnchorModelDataStoreWrapper updateOrInsertLinkActionTrainingSample:featurizedAction:actionOccurred:actionEngaged:anchorEvent:anchor:];
  }
}

- (void)updateOrInsertCandidateEventToDatabaseWithCandidateFeatures:(id)a3 anchor:(id)a4 anchorEvent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  store = self->_store;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke;
  v15[3] = &unk_2785978C0;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(_ATXDataStore *)store _doAsync:v15];
}

void __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_cold_1(a1);
  }

  v3 = [*(*(a1 + 40) + 8) db];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_46;
  v13[3] = &unk_278599DB8;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v16 = v5;
  [v3 prepAndRunQuery:@"INSERT INTO anchorModelTrainingData (anchorType onPrep:anchorDate onRow:candidateType onError:{candidateId, candidateOccurrencesInLast12Hours, candidateOccurrencesInLast24Hours, candidateOccurrencesInLast48Hours, candidateOccurrencesInLast7Days, candidateOccurrencesInLast14Days, candidateOccurrencesInLast28Days, candidatePerformed, candidateEngaged, secondsSinceAnchor, candidateLocation, candidateOccurrenceId) VALUES (:anchorType, :anchorDate, :candidateType, :candidateId, :candidateOccurrencesInLast12Hours, :candidateOccurrencesInLast24Hours, :candidateOccurrencesInLast48Hours, :candidateOccurrencesInLast7Days, :candidateOccurrencesInLast14Days, :candidateOccurrencesInLast28Days, :candidatePerformed, :candidateEngaged, :secondsSinceAnchor, :candidateLocation, :candidateOccurrenceId)", v13, 0, &__block_literal_global_206}];

  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_cold_2(v4, v6, v7, v8, v9, v10, v11, v12);
  }
}

void __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) anchorTypeString];
  [v3 bindNamedParam:":anchorType" toNSString:v5];

  v6 = *(a1 + 32);
  v7 = [objc_opt_class() anchorOccurenceDateFromDuetEvent:*(a1 + 40)];
  [v7 timeIntervalSince1970];
  [v3 bindNamedParam:":anchorDate" toInt64:v8];
  v10 = *(a1 + 48);
  v9 = (a1 + 48);
  v11 = [v10 objectForKeyedSubscript:@"candidateType"];
  [v3 bindNamedParam:":candidateType" toNSString:v11];

  v12 = [*v9 objectForKeyedSubscript:@"candidateId"];
  [v3 bindNamedParam:":candidateId" toNSString:v12];

  v13 = [*v9 objectForKey:@"candidateOccurrenceId"];
  v14 = v13;
  if (v13)
  {
    [v3 bindNamedParam:":candidateOccurrenceId" toInt64:{objc_msgSend(v13, "longLongValue")}];
    v15 = [*v9 objectForKeyedSubscript:@"candidateOccurrencesInLast12Hours"];
    [v3 bindNamedParam:":candidateOccurrencesInLast12Hours" toInteger:{objc_msgSend(v15, "integerValue")}];

    v16 = [*v9 objectForKeyedSubscript:@"candidateOccurrencesInLast24Hours"];
    [v3 bindNamedParam:":candidateOccurrencesInLast24Hours" toInteger:{objc_msgSend(v16, "integerValue")}];

    v17 = [*v9 objectForKeyedSubscript:@"candidateOccurrencesInLast48Hours"];
    [v3 bindNamedParam:":candidateOccurrencesInLast48Hours" toInteger:{objc_msgSend(v17, "integerValue")}];

    v18 = [*v9 objectForKeyedSubscript:@"candidateOccurrencesInLast7Days"];
    [v3 bindNamedParam:":candidateOccurrencesInLast7Days" toInteger:{objc_msgSend(v18, "integerValue")}];

    v19 = [*v9 objectForKeyedSubscript:@"candidateOccurrencesInLast14Days"];
    [v3 bindNamedParam:":candidateOccurrencesInLast14Days" toInteger:{objc_msgSend(v19, "integerValue")}];

    v20 = [*v9 objectForKeyedSubscript:@"candidateOccurrencesInLast28Days"];
    [v3 bindNamedParam:":candidateOccurrencesInLast28Days" toInteger:{objc_msgSend(v20, "integerValue")}];

    v21 = [*v9 objectForKeyedSubscript:@"candidatePerformed"];
    [v3 bindNamedParam:":candidatePerformed" toInteger:{objc_msgSend(v21, "integerValue")}];

    v22 = [*v9 objectForKeyedSubscript:@"candidateEngaged"];
    [v3 bindNamedParam:":candidateEngaged" toInteger:{objc_msgSend(v22, "integerValue")}];

    v23 = [*v9 objectForKeyedSubscript:@"secondsSinceAnchor"];
    [v3 bindNamedParam:":secondsSinceAnchor" toInteger:{objc_msgSend(v23, "integerValue")}];

    v24 = [*v9 objectForKey:@"candidateLocation"];
    if (v24)
    {
      [v3 bindNamedParam:":candidateLocation" toNSString:v24];
    }

    else
    {
      [v3 bindNamedParamToNull:":candidateLocation"];
    }
  }

  else
  {
    v25 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_46_cold_1(v9, v4);
    }
  }
}

uint64_t __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_101(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_101_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)updateOrInsertAnchorModelTrainingResults:(id)a3 anchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  store = self->_store;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke;
  v11[3] = &unk_278597828;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(_ATXDataStore *)store _doAsync:v11];
}

void __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_2;
  v4[3] = &unk_278597828;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 writeTransaction:v4];
}

void __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) db];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_3;
  v19[3] = &unk_278598768;
  v20 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM anchorModelTrainingResults WHERE anchorType LIKE :anchorType" onPrep:v19 onRow:0 onError:&__block_literal_global_106_0];

  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 48);
  v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(*(a1 + 32) + 8) db];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_110;
        v13[3] = &unk_278598718;
        v13[4] = v8;
        v14 = v3;
        [v10 prepAndRunQuery:@"INSERT INTO anchorModelTrainingResults (trainingDate onPrep:anchorType onRow:anchorEventIdentifier onError:{candidateType, candidateId, numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence, posteriorProbability, classConditionalProbability, classifierType, trainedClassifier, classifierDescription, startSecondsAfterAnchor, endSecondsAfterAnchor, standardDeviationOfOffsetFromAnchor, launchesInLast28Days, launchesInLast14Days, launchesInLast7Days, launchesInLast48Hours, launchesInLast24Hours, launchesInLast12Hours, launchesInLast2Hours, anchorPopularity, globalPopularity) VALUES (:trainingDate, :anchorType, :anchorEventIdentifier, :candidateType, :candidateId, :numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence, :posteriorProbability, :classConditionalProbability, :classifierType, :trainedClassifier, :classifierDescription, :startSecondsAfterAnchor, :endSecondsAfterAnchor, :standardDeviationOfOffsetFromAnchor, :launchesInLast28Days, :launchesInLast14Days, :launchesInLast7Days, :launchesInLast48Hours, :launchesInLast24Hours, :launchesInLast12Hours, :launchesInLast2Hours, :anchorPopularity, :globalPopularity)", v13, 0, &__block_literal_global_135_0}];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 anchorTypeString];
  [v3 bindNamedParam:":anchorType" toNSString:v4];
}

uint64_t __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_101_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier configureKeyedArchiver:v5];
  v6 = (a1 + 32);
  v7 = [*(a1 + 32) candidateClassifier];
  [v5 encodeObject:v7 forKey:*MEMORY[0x277CCA308]];

  [v5 finishEncoding];
  v8 = [v5 encodedData];
  v9 = [v5 error];

  objc_autoreleasePoolPop(v4);
  if (v8)
  {
    [v3 bindNamedParam:":trainedClassifier" toNSData:v8];
    [*(a1 + 40) timeIntervalSince1970];
    [v3 bindNamedParam:":trainingDate" toInt64:v10];
    v11 = [*(a1 + 32) anchor];
    v12 = [v11 anchorTypeString];
    [v3 bindNamedParam:":anchorType" toNSString:v12];

    v13 = [*(a1 + 32) anchor];
    v14 = [v13 anchorEventIdentifier];

    if (v14)
    {
      v15 = [*v6 anchor];
      v16 = [v15 anchorEventIdentifier];
      [v3 bindNamedParam:":anchorEventIdentifier" toNSString:v16];
    }

    else
    {
      [v3 bindNamedParamToNull:":anchorEventIdentifier"];
    }

    v18 = [*v6 candidateType];
    [v3 bindNamedParam:":candidateType" toNSString:v18];

    v19 = [*v6 candidateId];
    [v3 bindNamedParam:":candidateId" toNSString:v19];

    v20 = [*v6 phase1TrainingResult];
    [v3 bindNamedParam:":numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence" toInteger:{objc_msgSend(v20, "numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence")}];

    v21 = [*v6 phase1TrainingResult];
    [v21 posteriorProbability];
    [v3 bindNamedParam:":posteriorProbability" toDouble:?];

    v22 = [*v6 phase1TrainingResult];
    [v22 classConditionalProbability];
    [v3 bindNamedParam:":classConditionalProbability" toDouble:?];

    [v3 bindNamedParam:":classifierType" toInteger:{objc_msgSend(*v6, "candidateClassifierType")}];
    v23 = [*v6 candidateClassifier];
    v24 = [v23 description];
    [v3 bindNamedParam:":classifierDescription" toNSString:v24];

    v25 = [*v6 offsetFromAnchorToShowPrediction];
    [v25 startSecondsAfterAnchor];
    [v3 bindNamedParam:":startSecondsAfterAnchor" toDouble:?];

    v26 = [*v6 offsetFromAnchorToShowPrediction];
    [v26 endSecondsAfterAnchor];
    [v3 bindNamedParam:":endSecondsAfterAnchor" toDouble:?];

    v27 = [*v6 phase1TrainingResult];
    [v27 standardDeviationOfOffsetFromAnchor];
    [v3 bindNamedParam:":standardDeviationOfOffsetFromAnchor" toDouble:?];

    v28 = [*v6 phase1TrainingResult];
    v17 = [v28 launchHistory];

    if ([v17 hasLaunchesInLast28Days])
    {
      [v3 bindNamedParam:":launchesInLast28Days" toInteger:{-[NSObject launchesInLast28Days](v17, "launchesInLast28Days")}];
    }

    else
    {
      [v3 bindNamedParamToNull:":launchesInLast28Days"];
    }

    if ([v17 hasLaunchesInLast14Days])
    {
      [v3 bindNamedParam:":launchesInLast14Days" toInteger:{-[NSObject launchesInLast14Days](v17, "launchesInLast14Days")}];
    }

    else
    {
      [v3 bindNamedParamToNull:":launchesInLast14Days"];
    }

    if ([v17 hasLaunchesInLast7Days])
    {
      [v3 bindNamedParam:":launchesInLast7Days" toInteger:{-[NSObject launchesInLast7Days](v17, "launchesInLast7Days")}];
    }

    else
    {
      [v3 bindNamedParamToNull:":launchesInLast7Days"];
    }

    if ([v17 hasLaunchesInLast48Hours])
    {
      [v3 bindNamedParam:":launchesInLast48Hours" toInteger:{-[NSObject launchesInLast48Hours](v17, "launchesInLast48Hours")}];
    }

    else
    {
      [v3 bindNamedParamToNull:":launchesInLast48Hours"];
    }

    if ([v17 hasLaunchesInLast24Hours])
    {
      [v3 bindNamedParam:":launchesInLast24Hours" toInteger:{-[NSObject launchesInLast24Hours](v17, "launchesInLast24Hours")}];
    }

    else
    {
      [v3 bindNamedParamToNull:":launchesInLast12Hours"];
    }

    if ([v17 hasLaunchesInLast12Hours])
    {
      [v3 bindNamedParam:":launchesInLast12Hours" toInteger:{-[NSObject launchesInLast12Hours](v17, "launchesInLast12Hours")}];
    }

    else
    {
      [v3 bindNamedParamToNull:":launchesInLast24Hours"];
    }

    if ([v17 hasLaunchesInLast2Hours])
    {
      [v3 bindNamedParam:":launchesInLast2Hours" toInteger:{-[NSObject launchesInLast2Hours](v17, "launchesInLast2Hours")}];
    }

    else
    {
      [v3 bindNamedParamToNull:":launchesInLast2Hours"];
    }

    v29 = [*v6 phase1TrainingResult];
    [v29 anchorPopularity];
    [v3 bindNamedParam:":anchorPopularity" toDouble:?];

    v30 = [*v6 phase1TrainingResult];
    [v30 globalPopularity];
    [v3 bindNamedParam:":globalPopularity" toDouble:?];
  }

  else
  {
    v17 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_110_cold_1(v6, v9, v17);
    }
  }
}

uint64_t __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_133(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_101_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)insertAnchorSuggestionOutcome:(unint64_t)a3 date:(id)a4 anchorType:(id)a5 anchorEventIdentifier:(id)a6 candidateId:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (!v13)
  {
    v18 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelDataStoreWrapper insertAnchorSuggestionOutcome:date:anchorType:anchorEventIdentifier:candidateId:];
    }

    goto LABEL_8;
  }

  if (!v15)
  {
    v18 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelDataStoreWrapper insertAnchorSuggestionOutcome:date:anchorType:anchorEventIdentifier:candidateId:];
    }

LABEL_8:

    goto LABEL_9;
  }

  store = self->_store;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __114__ATXAnchorModelDataStoreWrapper_insertAnchorSuggestionOutcome_date_anchorType_anchorEventIdentifier_candidateId___block_invoke;
  v19[3] = &unk_2785A03F0;
  v19[4] = self;
  v20 = v13;
  v21 = v12;
  v22 = v14;
  v23 = v16;
  v24 = a3;
  [(_ATXDataStore *)store _doAsync:v19];

LABEL_9:
}

void __114__ATXAnchorModelDataStoreWrapper_insertAnchorSuggestionOutcome_date_anchorType_anchorEventIdentifier_candidateId___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __114__ATXAnchorModelDataStoreWrapper_insertAnchorSuggestionOutcome_date_anchorType_anchorEventIdentifier_candidateId___block_invoke_2;
  v9[3] = &unk_27859C7D0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 72);
  [v2 prepAndRunQuery:@"INSERT INTO anchorModelSuggestionOutcomes (anchorType onPrep:date onRow:anchorEventIdentifier onError:{candidateId, outcome) VALUES (:anchorType, :date, :anchorEventIdentifier, :candidateId, :outcome)", v9, 0, &__block_literal_global_142_0}];
}

void __114__ATXAnchorModelDataStoreWrapper_insertAnchorSuggestionOutcome_date_anchorType_anchorEventIdentifier_candidateId___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 bindNamedParam:":anchorType" toNSString:*(a1 + 32)];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":date" toInt64:v3];
  if (*(a1 + 48))
  {
    [v4 bindNamedParam:":anchorEventIdentifier" toNSString:?];
  }

  else
  {
    [v4 bindNamedParamToNull:":anchorEventIdentifier"];
  }

  [v4 bindNamedParam:":candidateId" toNSString:*(a1 + 56)];
  [v4 bindNamedParam:":outcome" toInt64:*(a1 + 64)];
}

uint64_t __114__ATXAnchorModelDataStoreWrapper_insertAnchorSuggestionOutcome_date_anchorType_anchorEventIdentifier_candidateId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __114__ATXAnchorModelDataStoreWrapper_insertAnchorSuggestionOutcome_date_anchorType_anchorEventIdentifier_candidateId___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)assignMetricsForTrainingResult:(id)a3 anchorType:(id)a4 anchorEventIdentifier:(id)a5 candidateId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    v17 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelDataStoreWrapper insertAnchorSuggestionOutcome:date:anchorType:anchorEventIdentifier:candidateId:];
    }

    goto LABEL_8;
  }

  if (!v13)
  {
    v17 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelDataStoreWrapper insertAnchorSuggestionOutcome:date:anchorType:anchorEventIdentifier:candidateId:];
    }

LABEL_8:

    goto LABEL_9;
  }

  v15 = malloc_type_calloc(8uLL, 4uLL, 0x71CB51C4uLL);
  store = self->_store;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke;
  v18[3] = &unk_278599D90;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  v22 = v15;
  [(_ATXDataStore *)store _doSync:v18];
  [v10 setNumShownSuggestions:v15[1]];
  [v10 setNumEngagedSuggestions:v15[2]];
  [v10 setNumRejectedSuggestion:v15[3]];
  free(v15);

LABEL_9:
}

void __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_2;
  v4[3] = &unk_278599DB8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_3;
  v3[3] = &__block_descriptor_40_e49___PASDBIterAction__B_16__0___PASSqliteStatement_8l;
  v3[4] = *(a1 + 64);
  [v2 prepAndRunQuery:@"SELECT outcome onPrep:COUNT(*) FROM anchorModelSuggestionOutcomes WHERE anchorType = :anchorType AND anchorEventIdentifier = :anchorEventIdentifier AND candidateId = :candidateId GROUP BY outcome" onRow:v4 onError:{v3, &__block_literal_global_149_0}];
}

void __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:":anchorType" toNSString:v3];
  if (a1[5])
  {
    [v4 bindNamedParam:":anchorEventIdentifier" toNSString:?];
  }

  else
  {
    [v4 bindNamedParamToNull:":anchorEventIdentifier"];
  }

  [v4 bindNamedParam:":candidateId" toNSString:a1[6]];
}

uint64_t __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getIntegerForColumn:1];
  if (v4 < 0)
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_3_cold_2();
    }
  }

  else
  {
    v5 = v4;
    v6 = [v3 getIntegerForColumnName:"outcome" table:0];
    if (v6 < 4)
    {
      *(*(a1 + 32) + 8 * v6) += v5;
      goto LABEL_9;
    }

    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_3_cold_1();
    }
  }

LABEL_9:
  v8 = MEMORY[0x277D42690];

  return *v8;
}

uint64_t __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_147(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_147_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (id)trainingResultsForAnchor:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 anchorEventIdentifier];

  v7 = @"SELECT trainingDate, anchorType, candidateType, candidateId, numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence, posteriorProbability, classConditionalProbability, classifierType, trainedClassifier, startSecondsAfterAnchor, endSecondsAfterAnchor, standardDeviationOfOffsetFromAnchor, launchesInLast28Days, launchesInLast14Days, launchesInLast7Days, launchesInLast48Hours, launchesInLast24Hours, launchesInLast12Hours, launchesInLast2Hours FROM anchorModelTrainingResults WHERE anchorType=:anchorType AND anchorEventIdentifier=:anchorEventIdentifier";
  v8 = v6 == 0;
  store = self->_store;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke;
  v32[3] = &unk_2785978C0;
  if (v8)
  {
    v7 = @"SELECT trainingDate, anchorType, candidateType, candidateId, numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence, posteriorProbability, classConditionalProbability, classifierType, trainedClassifier, startSecondsAfterAnchor, endSecondsAfterAnchor, standardDeviationOfOffsetFromAnchor, launchesInLast28Days, launchesInLast14Days, launchesInLast7Days, launchesInLast48Hours, launchesInLast24Hours, launchesInLast12Hours, launchesInLast2Hours FROM anchorModelTrainingResults WHERE anchorType=:anchorType AND anchorEventIdentifier IS NULL";
  }

  v32[4] = self;
  v33 = v7;
  v10 = v4;
  v34 = v10;
  v11 = v5;
  v35 = v11;
  [(_ATXDataStore *)store _doSync:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v17 phase1TrainingResult];
        v19 = [v10 anchorTypeString];
        v20 = [v10 anchorEventIdentifier];
        v21 = [v17 candidateId];
        [(ATXAnchorModelDataStoreWrapper *)self assignMetricsForTrainingResult:v18 anchorType:v19 anchorEventIdentifier:v20 candidateId:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v14);
  }

  v22 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v12 count];
    *buf = 134218242;
    v37 = v23;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Recovered %lu training results for anchor %@", buf, 0x16u);
  }

  v24 = v35;
  v25 = v12;

  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

void __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke_2;
  v9[3] = &unk_278598768;
  v3 = *(a1 + 40);
  v10 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke_3;
  v6[3] = &unk_27859C820;
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke_185;
  v4[3] = &unk_2785987B8;
  v5 = *(a1 + 48);
  [v2 prepAndRunQuery:v3 onPrep:v9 onRow:v6 onError:v4];
}

void __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) anchorTypeString];
  [v6 bindNamedParam:":anchorType" toNSString:v3];

  v4 = [*(a1 + 32) anchorEventIdentifier];

  if (v4)
  {
    v5 = [*(a1 + 32) anchorEventIdentifier];
    [v6 bindNamedParam:":anchorEventIdentifier" toNSString:v5];
  }

  else
  {
    [v6 bindNamedParamToNull:":anchorEventIdentifier"];
  }
}

uint64_t __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke_3(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v36 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v2, "getInt64ForColumnName:table:", "trainingDate", "anchorModelTrainingResults")}];
  v35 = [v2 getNSStringForColumnName:"anchorType" table:"anchorModelTrainingResults"];
  v34 = [v2 getNSStringForColumnName:"candidateType" table:"anchorModelTrainingResults"];
  v3 = [v2 getNSStringForColumnName:"candidateId" table:"anchorModelTrainingResults"];
  v4 = objc_opt_new();
  v38 = v3;
  [v4 setCandidateId:v3];
  [v4 setNumUniqueAnchorOccurrencesWithUniqueCandidateOccurrence:{objc_msgSend(v2, "getIntegerForColumnName:table:", "numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence", "anchorModelTrainingResults")}];
  [v2 getDoubleForColumnName:"posteriorProbability" table:"anchorModelTrainingResults"];
  [v4 setPosteriorProbability:?];
  [v2 getDoubleForColumnName:"classConditionalProbability" table:"anchorModelTrainingResults"];
  [v4 setClassConditionalProbability:?];
  [v2 getDoubleForColumnName:"standardDeviationOfOffsetFromAnchor" table:"anchorModelTrainingResults"];
  [v4 setStandardDeviationOfOffsetFromAnchor:?];
  if (([v2 isNullForColumnName:"launchesInLast28Days" table:"anchorModelTrainingResults"] & 1) == 0)
  {
    v5 = objc_opt_new();
    [v5 setLaunchesInLast28Days:{objc_msgSend(v2, "getIntegerForColumnName:table:", "launchesInLast28Days", "anchorModelTrainingResults")}];
    [v5 setLaunchesInLast14Days:{objc_msgSend(v2, "getIntegerForColumnName:table:", "launchesInLast14Days", "anchorModelTrainingResults")}];
    [v5 setLaunchesInLast7Days:{objc_msgSend(v2, "getIntegerForColumnName:table:", "launchesInLast7Days", "anchorModelTrainingResults")}];
    [v5 setLaunchesInLast48Hours:{objc_msgSend(v2, "getIntegerForColumnName:table:", "launchesInLast48Hours", "anchorModelTrainingResults")}];
    [v5 setLaunchesInLast24Hours:{objc_msgSend(v2, "getIntegerForColumnName:table:", "launchesInLast24Hours", "anchorModelTrainingResults")}];
    [v5 setLaunchesInLast12Hours:{objc_msgSend(v2, "getIntegerForColumnName:table:", "launchesInLast12Hours", "anchorModelTrainingResults")}];
    [v5 setLaunchesInLast2Hours:{objc_msgSend(v2, "getIntegerForColumnName:table:", "launchesInLast2Hours", "anchorModelTrainingResults")}];
    [v4 setLaunchHistory:v5];
  }

  v32 = [v2 getIntegerForColumnName:"classifierType" table:"anchorModelTrainingResults"];
  v6 = [v2 getNSDataForColumnName:"trainedClassifier" table:"anchorModelTrainingResults"];
  v7 = objc_autoreleasePoolPush();
  v39 = 0;
  v33 = v6;
  v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v6 error:&v39];
  v9 = v39;
  [v8 setRequiresSecureCoding:1];
  [v8 setDecodingFailurePolicy:1];
  [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier configureKeyedUnarchiver:v8];
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc(MEMORY[0x277CBEB98]);
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 initWithObjects:{v12, v13, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v10);
  v15 = [v8 decodeObjectOfClasses:v14 forKey:*MEMORY[0x277CCA308]];

  [v8 finishDecoding];
  v16 = [v8 error];

  objc_autoreleasePoolPop(v7);
  if (!v15 || v9 || v16)
  {
    v28 = __atxlog_handle_anchor();
    v27 = v35;
    v24 = v36;
    v21 = v34;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      if (v9)
      {
        v31 = v9;
      }

      else
      {
        v31 = v16;
      }

      *buf = 138544130;
      v41 = v31;
      v42 = 2112;
      v43 = v35;
      v44 = 2112;
      v45 = v36;
      v46 = 2112;
      v47 = v38;
      _os_log_fault_impl(&dword_2263AA000, v28, OS_LOG_TYPE_FAULT, "Failed to unarchive trained classifier from anchorModelTrainingResults with error: %{public}@. Anchor: %@, trainingDate: %@, candidateId: %@", buf, 0x2Au);
    }

    [*(a1 + 32) removeAllObjects];
    v26 = *MEMORY[0x277D42698];
  }

  else
  {
    [v2 getDoubleForColumnName:"startSecondsAfterAnchor" table:"anchorModelTrainingResults"];
    v18 = v17;
    [v2 getDoubleForColumnName:"endSecondsAfterAnchor" table:"anchorModelTrainingResults"];
    v20 = [[ATXAnchorModelPredictionOffsetFromAnchorOccurrence alloc] initWithStartSecondsAfterAnchor:v18 endSecondsAfterAnchor:v19];
    v21 = v34;
    v22 = [[ATXAnchorModelTrainingResult alloc] initWithAnchor:*(a1 + 40) candidateId:v38 candidateType:v34 phase1TrainingResult:v4 candidateClassifier:v15 candidateClassifierType:v32 offsetFromAnchorToShowPrediction:v20];
    v23 = __atxlog_handle_anchor();
    v24 = v36;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v36;
      _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "Recovered training result that was added on %@", buf, 0xCu);
    }

    v25 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v22;
      _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Training result: %@", buf, 0xCu);
    }

    [*(a1 + 32) addObject:v22];
    v26 = *MEMORY[0x277D42690];

    v27 = v35;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke_185(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke_185_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)dateAnchorModelWasLastTrainedForAnchor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  store = self->_store;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __73__ATXAnchorModelDataStoreWrapper_dateAnchorModelWasLastTrainedForAnchor___block_invoke;
  v16 = &unk_2785978C0;
  v17 = self;
  v18 = @"SELECT trainingDate FROM anchorModelTrainingResults WHERE anchorType=:anchorType";
  v7 = v4;
  v19 = v7;
  v8 = v5;
  v20 = v8;
  [(_ATXDataStore *)store _doSync:&v13];
  if ([v8 count] < 2)
  {
    if ([v8 count])
    {
      v10 = [v8 anyObject];
      goto LABEL_8;
    }
  }

  else
  {
    v9 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelDataStoreWrapper dateAnchorModelWasLastTrainedForAnchor:];
    }
  }

  v10 = [MEMORY[0x277CBEAA8] distantPast];
LABEL_8:
  v11 = v10;

  return v11;
}

void __73__ATXAnchorModelDataStoreWrapper_dateAnchorModelWasLastTrainedForAnchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ATXAnchorModelDataStoreWrapper_dateAnchorModelWasLastTrainedForAnchor___block_invoke_2;
  v8[3] = &unk_278598768;
  v3 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__ATXAnchorModelDataStoreWrapper_dateAnchorModelWasLastTrainedForAnchor___block_invoke_3;
  v6[3] = &unk_278599FC8;
  v7 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__ATXAnchorModelDataStoreWrapper_dateAnchorModelWasLastTrainedForAnchor___block_invoke_4;
  v4[3] = &unk_2785987B8;
  v5 = *(a1 + 48);
  [v2 prepAndRunQuery:v3 onPrep:v8 onRow:v6 onError:v4];
}

void __73__ATXAnchorModelDataStoreWrapper_dateAnchorModelWasLastTrainedForAnchor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 anchorTypeString];
  [v3 bindNamedParam:":anchorType" toNSString:v4];
}

uint64_t __73__ATXAnchorModelDataStoreWrapper_dateAnchorModelWasLastTrainedForAnchor___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(a2, "getInt64ForColumnName:table:", "trainingDate", "anchorModelTrainingResults")}];
  [*(a1 + 32) addObject:v3];
  v4 = MEMORY[0x277D42690];

  return *v4;
}

uint64_t __73__ATXAnchorModelDataStoreWrapper_dateAnchorModelWasLastTrainedForAnchor___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke_185_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

+ (id)populateCandidateOccurrencesForFeatures:(id)a3 withLaunchHistoryMetadata:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInt:{objc_msgSend(v7, "launchesInLast12Hours")}];
  [v5 setObject:v8 forKeyedSubscript:@"candidateOccurrencesInLast12Hours"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "launchesInLast24Hours")}];
  [v5 setObject:v9 forKeyedSubscript:@"candidateOccurrencesInLast24Hours"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "launchesInLast48Hours")}];
  [v5 setObject:v10 forKeyedSubscript:@"candidateOccurrencesInLast48Hours"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "launchesInLast7Days")}];
  [v5 setObject:v11 forKeyedSubscript:@"candidateOccurrencesInLast7Days"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "launchesInLast14Days")}];
  [v5 setObject:v12 forKeyedSubscript:@"candidateOccurrencesInLast14Days"];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v7 launchesInLast28Days];

  v15 = [v13 numberWithUnsignedInt:v14];
  [v5 setObject:v15 forKeyedSubscript:@"candidateOccurrencesInLast28Days"];

  v16 = [v5 objectForKeyedSubscript:@"candidateOccurrencesInLast12Hours"];
  v17 = [v16 integerValue];
  v18 = MEMORY[0x277CBEC28];
  v19 = MEMORY[0x277CBEC38];
  if (v17 <= 0)
  {
    v20 = MEMORY[0x277CBEC28];
  }

  else
  {
    v20 = MEMORY[0x277CBEC38];
  }

  [v5 setObject:v20 forKeyedSubscript:@"candidateOccurredInLast12Hours"];

  v21 = [v5 objectForKeyedSubscript:@"candidateOccurrencesInLast24Hours"];
  if ([v21 integerValue] <= 0)
  {
    v22 = v18;
  }

  else
  {
    v22 = v19;
  }

  [v5 setObject:v22 forKeyedSubscript:@"candidateOccurredInLast24Hours"];

  v23 = [v5 objectForKeyedSubscript:@"candidateOccurrencesInLast48Hours"];
  if ([v23 integerValue] <= 0)
  {
    v24 = v18;
  }

  else
  {
    v24 = v19;
  }

  [v5 setObject:v24 forKeyedSubscript:@"candidateOccurredInLast48Hours"];

  v25 = [v5 objectForKeyedSubscript:@"candidateOccurrencesInLast7Days"];
  if ([v25 integerValue] <= 0)
  {
    v26 = v18;
  }

  else
  {
    v26 = v19;
  }

  [v5 setObject:v26 forKeyedSubscript:@"candidateOccurredInLast7Days"];

  v27 = [v5 objectForKeyedSubscript:@"candidateOccurrencesInLast14Days"];
  if ([v27 integerValue] <= 0)
  {
    v28 = v18;
  }

  else
  {
    v28 = v19;
  }

  [v5 setObject:v28 forKeyedSubscript:@"candidateOccurredInLast14Days"];

  v29 = [v5 objectForKeyedSubscript:@"candidateOccurrencesInLast28Days"];
  if ([v29 integerValue] <= 0)
  {
    v30 = v18;
  }

  else
  {
    v30 = v19;
  }

  [v5 setObject:v30 forKeyedSubscript:@"candidateOccurredInLast28Days"];

  return v5;
}

- (void)updateOrInsertAnchorEvent:(id)a3 anchor:(id)a4 featureMetadata:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_debug_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEBUG, "AnchorModel: ATXDATASTORE. Adding anchor event to database %@ for anchor %@, featureMetadata: %@", &v13, 0x20u);
  }

  [(ATXAnchorModelDataStoreWrapper *)self updateOrInsertAnchorType:v9];
  [(ATXAnchorModelDataStoreWrapper *)self updateOrInsertLocation:v10];
  [(ATXAnchorModelDataStoreWrapper *)self insertAnchorOccurrence:v8 anchor:v9 featureMetadata:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateOrInsertAnchorType:(id)a3
{
  v4 = a3;
  v5 = [v4 anchorTypeString];
  v6 = objc_opt_class();

  v7 = [v6 longDescription];
  store = self->_store;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorType___block_invoke;
  v11[3] = &unk_278597828;
  v11[4] = self;
  v12 = v5;
  v13 = v7;
  v9 = v7;
  v10 = v5;
  [(_ATXDataStore *)store _doAsync:v11];
}

void __59__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorType___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorType___block_invoke_2;
  v3[3] = &unk_278598718;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 prepAndRunQuery:@"INSERT OR REPLACE INTO anchorType (name onPrep:description) VALUES (:name onRow::description)" onError:{v3, 0, &__block_literal_global_215_0}];
}

void __59__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":name" toNSString:v3];
  [v4 bindNamedParam:":description" toNSString:*(a1 + 40)];
}

uint64_t __59__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorType___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __59__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorType___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)updateOrInsertLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 locationIdentifier];

  if (v5)
  {
    store = self->_store;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__ATXAnchorModelDataStoreWrapper_updateOrInsertLocation___block_invoke;
    v7[3] = &unk_278596C10;
    v7[4] = self;
    v8 = v4;
    [(_ATXDataStore *)store _doAsync:v7];
  }
}

void __57__ATXAnchorModelDataStoreWrapper_updateOrInsertLocation___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__ATXAnchorModelDataStoreWrapper_updateOrInsertLocation___block_invoke_2;
  v3[3] = &unk_278598768;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"INSERT OR REPLACE INTO locations (uuid onPrep:type onRow:description onError:{lat, long) VALUES (:uuid, :type, :description, :lat, :long)", v3, 0, &__block_literal_global_224}];
}

void __57__ATXAnchorModelDataStoreWrapper_updateOrInsertLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) locationIdentifier];
  [v6 bindNamedParam:":uuid" toNSString:v3];

  v4 = [*(a1 + 32) locationType];
  if (v4 >= 4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = off_2785A04C8[v4];
  }

  [v6 bindNamedParam:":type" toNSString:v5];

  [v6 bindNamedParamToNull:":description"];
  [v6 bindNamedParamToNull:":lat"];
  [v6 bindNamedParamToNull:":long"];
}

uint64_t __57__ATXAnchorModelDataStoreWrapper_updateOrInsertLocation___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __57__ATXAnchorModelDataStoreWrapper_updateOrInsertLocation___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (void)insertAnchorOccurrence:(id)a3 anchor:(id)a4 featureMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  store = self->_store;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__ATXAnchorModelDataStoreWrapper_insertAnchorOccurrence_anchor_featureMetadata___block_invoke;
  v15[3] = &unk_2785978C0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(_ATXDataStore *)store _doAsync:v15];
}

void __80__ATXAnchorModelDataStoreWrapper_insertAnchorOccurrence_anchor_featureMetadata___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__ATXAnchorModelDataStoreWrapper_insertAnchorOccurrence_anchor_featureMetadata___block_invoke_2;
  v8[3] = &unk_27859C758;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 prepAndRunQuery:@"INSERT OR REPLACE INTO anchorOccurrence (anchorType onPrep:anchorDate onRow:anchorLocalHour onError:{anchorLocalDoW, anchorLocalIsWeekend, anchorLocation, anchorEventIdentifier) VALUES (:anchorType, :anchorDate, :anchorLocalHour, :anchorLocalDoW, :anchorLocalIsWeekend, :anchorLocation, :anchorEventIdentifier)", v8, 0, &__block_literal_global_251}];
}

void __80__ATXAnchorModelDataStoreWrapper_insertAnchorOccurrence_anchor_featureMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v12 = [objc_opt_class() anchorFeaturesForAnchorOccurrence:*(a1 + 40) anchor:*(a1 + 48) anchorMetadata:*(a1 + 56)];
  v5 = [v12 objectForKeyedSubscript:@"anchorType"];
  [v4 bindNamedParam:":anchorType" toNSString:v5];

  v6 = [v12 objectForKeyedSubscript:@"anchorDate"];
  [v4 bindNamedParam:":anchorDate" toInt64:{objc_msgSend(v6, "longLongValue")}];

  v7 = [v12 objectForKeyedSubscript:@"anchorLocalHour"];
  [v4 bindNamedParam:":anchorLocalHour" toInteger:{objc_msgSend(v7, "integerValue")}];

  v8 = [v12 objectForKeyedSubscript:@"anchorLocalDoW"];
  [v4 bindNamedParam:":anchorLocalDoW" toInteger:{objc_msgSend(v8, "integerValue")}];

  v9 = [v12 objectForKeyedSubscript:@"anchorLocalIsWeekend"];
  [v4 bindNamedParam:":anchorLocalIsWeekend" toInteger:{objc_msgSend(v9, "integerValue")}];

  v10 = [v12 objectForKeyedSubscript:@"anchorLocation"];
  [v4 bindNamedParam:":anchorLocation" toNSString:v10];

  v11 = [*(a1 + 40) identifier];
  [v4 bindNamedParam:":anchorEventIdentifier" toNSString:v11];
}

uint64_t __80__ATXAnchorModelDataStoreWrapper_insertAnchorOccurrence_anchor_featureMetadata___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __80__ATXAnchorModelDataStoreWrapper_insertAnchorOccurrence_anchor_featureMetadata___block_invoke_3_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (unint64_t)deleteSamplesThatAreMoreThan28DaysOld
{
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Deleting Anchor Model samples that are more than 28 days old.", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2419200.0];
  *buf = 0;
  v20 = buf;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  store = self->_store;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke;
  v9[3] = &unk_2785A0438;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = buf;
  v12 = &v15;
  v13 = v14;
  [(_ATXDataStore *)store _doSync:v9];
  v7 = v16[3];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(buf, 8);

  return v7;
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2;
  v4[3] = &unk_2785A0438;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  [v2 writeTransaction:v4];
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_3;
  v21[3] = &unk_278598768;
  v22 = *(a1 + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_4;
  v20[3] = &unk_278598790;
  v20[4] = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT COUNT(*) FROM anchorOccurrence WHERE anchorDate < :anchorDateCutoff" onPrep:v21 onRow:v20 onError:&__block_literal_global_258];

  v3 = [*(*(a1 + 32) + 8) db];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_262;
  v18[3] = &unk_278598768;
  v19 = *(a1 + 40);
  [v3 prepAndRunQuery:@"DELETE FROM anchorOccurrence WHERE anchorDate < :anchorDateCutoff" onPrep:v18 onRow:0 onError:&__block_literal_global_265];

  v4 = [*(*(a1 + 32) + 8) db];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_269;
  v16[3] = &unk_278598768;
  v17 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_270;
  v15[3] = &unk_278598790;
  v15[4] = *(a1 + 56);
  [v4 prepAndRunQuery:@"SELECT COUNT(*) FROM anchorModelTrainingData WHERE anchorDate < :anchorDateCutoff" onPrep:v16 onRow:v15 onError:&__block_literal_global_273];

  v5 = [*(*(a1 + 32) + 8) db];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_277;
  v13[3] = &unk_278598768;
  v14 = *(a1 + 40);
  [v5 prepAndRunQuery:@"DELETE FROM anchorModelTrainingData WHERE anchorDate < :anchorDateCutoff" onPrep:v13 onRow:0 onError:&__block_literal_global_280];

  v6 = [*(*(a1 + 32) + 8) db];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_284;
  v11[3] = &unk_278598768;
  v12 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_286;
  v10[3] = &unk_278598790;
  v10[4] = *(a1 + 64);
  [v6 prepAndRunQuery:@"SELECT COUNT(*) FROM anchorModelSuggestionOutcomes WHERE date < :suggestionDateCutoff" onPrep:v11 onRow:v10 onError:&__block_literal_global_289];

  v7 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_293;
  v8[3] = &unk_278598768;
  v9 = *(a1 + 40);
  [v7 prepAndRunQuery:@"DELETE FROM anchorModelSuggestionOutcomes WHERE date < :suggestionDateCutoff" onPrep:v8 onRow:0 onError:&__block_literal_global_296];
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSince1970];
  [v4 bindNamedParam:":anchorDateCutoff" toInt64:v3];
}

uint64_t __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 8) + 24) = [a2 getIntegerForColumn:0];
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Removing %lu samples from anchorOccurrence table because the samples are more than 28 days old.", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

uint64_t __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_256(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_256_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_262(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSince1970];
  [v4 bindNamedParam:":anchorDateCutoff" toInt64:v3];
}

uint64_t __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_263(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_263_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_269(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSince1970];
  [v4 bindNamedParam:":anchorDateCutoff" toInt64:v3];
}

uint64_t __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_270(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 8) + 24) = [a2 getIntegerForColumn:0];
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Removing %lu samples from anchorModelTrainingData table because the samples are more than 28 days old.", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

uint64_t __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_271(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_271_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_277(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSince1970];
  [v4 bindNamedParam:":anchorDateCutoff" toInt64:v3];
}

uint64_t __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_278(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_278_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_284(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":suggestionDateCutoff" toInt64:v3];
}

uint64_t __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_286(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 8) + 24) = [a2 getIntegerForColumn:0];
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Removing %lu outcomes from anchorModelSuggestionOutcomes table because the samples are more than 28 days old.", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

uint64_t __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_287(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_287_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_293(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 timeIntervalSinceReferenceDate];
  [v4 bindNamedParam:":suggestionDateCutoff" toInt64:v3];
}

uint64_t __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_294(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_294_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

- (unint64_t)deleteSamplesForBundleIdsNotInList:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Deleting Anchor Model samples for apps that are uninstalled.", buf, 2u);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  *buf = 0;
  v15 = buf;
  v16 = 0x2020000000;
  v17 = 0;
  store = self->_store;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke;
  v11[3] = &unk_2785987E0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = buf;
  [(_ATXDataStore *)store _doSync:v11];
  v9 = *(v15 + 3);

  _Block_object_dispose(buf, 8);
  return v9;
}

void __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_2;
  v6[3] = &unk_2785987E0;
  v3 = a1[5];
  v6[4] = a1[4];
  v4 = v3;
  v5 = a1[6];
  v7 = v4;
  v8 = v5;
  [v2 writeTransaction:v6];
}

void __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_3;
  v5[3] = &unk_278598768;
  v6 = *(a1 + 40);
  [v2 prepAndRunQuery:@"DELETE FROM anchorModelTrainingData WHERE (CASE WHEN INSTR(candidateId onPrep:':') IS 0 THEN candidateId ELSE SUBSTR(candidateId onRow:1 onError:{INSTR(candidateId, ':')-1) END) NOT IN _pas_nsset(:installedBundleIds)", v5, 0, &__block_literal_global_302}];

  v3 = [*(*(a1 + 32) + 8) db];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_306;
  v4[3] = &unk_278598790;
  v4[4] = *(a1 + 48);
  [v3 prepAndRunQuery:@"SELECT changes()" onPrep:0 onRow:v4 onError:&__block_literal_global_309];
}

uint64_t __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_4_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

uint64_t __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_306(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 8) + 24) = [a2 getIntegerForColumn:0];
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Removed %ld samples from anchorModelTrainingData because the associated apps were uninstalled.", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

uint64_t __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_307(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_307_cold_1();
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

+ (id)anchorFeaturesForAnchorOccurrence:(id)a3 anchor:(id)a4 anchorMetadata:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = [v10 anchorTypeString];
  [v11 setObject:v12 forKeyedSubscript:@"anchorType"];

  v13 = objc_opt_class();
  v14 = [v13 anchorOccurenceDateFromDuetEvent:v8];
  v15 = MEMORY[0x277CCABB0];
  [v14 timeIntervalSince1970];
  v16 = [v15 numberWithDouble:?];
  [v11 setObject:v16 forKeyedSubscript:@"anchorDate"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "hourOfDay")}];
  [v11 setObject:v17 forKeyedSubscript:@"anchorLocalHour"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "dayOfWeekIntegerFromATXAnchorModelPBDayOfWeek:", objc_msgSend(v9, "dayOfWeek"))}];
  [v11 setObject:v18 forKeyedSubscript:@"anchorLocalDoW"];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "isWeekendFromATXAnchorModelPBDayOfWeek:", objc_msgSend(v9, "dayOfWeek"))}];
  [v11 setObject:v19 forKeyedSubscript:@"anchorLocalIsWeekend"];

  v20 = [v9 locationIdentifier];

  if (v20)
  {
    v21 = [v9 locationIdentifier];
    [v11 setObject:v21 forKeyedSubscript:@"anchorLocation"];
  }

  v22 = [v8 identifier];
  [v11 setObject:v22 forKeyedSubscript:@"anchorEventIdentifier"];

  return v11;
}

+ (int64_t)dayOfWeekIntegerFromATXAnchorModelPBDayOfWeek:(int)a3
{
  if (a3 > 7)
  {
    return 1;
  }

  else
  {
    return qword_226872910[a3];
  }
}

- (id)historicalAnchorOccurrenceDatesForAnchor:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__93;
  v16 = __Block_byref_object_dispose__93;
  v17 = objc_opt_new();
  store = self->_store;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke;
  v9[3] = &unk_2785987E0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_ATXDataStore *)store _doSync:v9];
  v7 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke_2;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke_3;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT anchorDate FROM anchorOccurrence WHERE anchorType=:anchorType ORDER BY anchorDate DESC LIMIT 30;" onPrep:v6 onRow:v5 onError:v3];
}

void __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 anchorTypeString];
  [v3 bindNamedParam:":anchorType" toNSString:v4];
}

uint64_t __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 getInt64ForColumnName:"anchorDate" table:"anchorOccurrence"];

  v7 = [v5 initWithTimeIntervalSince1970:v6];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
  v8 = MEMORY[0x277D42690];

  return *v8;
}

uint64_t __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)uniqueAnchorEventIdentifiersForAnchor:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__93;
  v16 = __Block_byref_object_dispose__93;
  v17 = objc_opt_new();
  store = self->_store;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke;
  v9[3] = &unk_2785987E0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_ATXDataStore *)store _doSync:v9];
  v7 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke_2;
  v8[3] = &unk_278598718;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke_3;
  v7[3] = &unk_278598790;
  v7[4] = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke_323;
  v5[3] = &unk_2785987B8;
  v6 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT DISTINCT anchorEventIdentifier FROM anchorOccurrence WHERE anchorType=:anchorType AND anchorDate>:oldestAllowedAnchorDate" onPrep:v8 onRow:v7 onError:v5];
}

void __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 anchorTypeString];
  [v6 bindNamedParam:":anchorType" toNSString:v4];

  [*(*(a1 + 40) + 16) timeIntervalSince1970];
  [v6 bindNamedParam:":oldestAllowedAnchorDate" toInt64:v5];
}

uint64_t __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"anchorEventIdentifier" table:"anchorOccurrence"];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  else
  {
    v4 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke_3_cold_1();
    }
  }

  v5 = MEMORY[0x277D42690];

  return *v5;
}

uint64_t __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke_323(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke_323_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (int64_t)numUniqueAnchorOccurrencesForAnchor:(id)a3 candidateId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(ATXAnchorModelDataStoreWrapper *)self dateOfFirstPositiveCandidateOccurrence:v7 anchor:v6 startDate:self->_twentyOneDaysAgo limit:9999999];
  store = self->_store;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForAnchor_candidateId___block_invoke;
  v14[3] = &unk_27859C520;
  v14[4] = self;
  v10 = v6;
  v15 = v10;
  v11 = v8;
  v16 = v11;
  v17 = &v18;
  [(_ATXDataStore *)store _doSync:v14];
  v12 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v12;
}

void __82__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForAnchor_candidateId___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForAnchor_candidateId___block_invoke_2;
  v6[3] = &unk_278598718;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForAnchor_candidateId___block_invoke_3;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForAnchor_candidateId___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT COUNT(*) FROM anchorOccurrence WHERE anchorType=:anchorType AND anchorEventIdentifier LIKE :anchorEventIdentifier AND anchorDate >= :oldestAllowedAnchorDate" onPrep:v6 onRow:v5 onError:v3];
}

void __82__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForAnchor_candidateId___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 anchorTypeString];
  [v9 bindNamedParam:":anchorType" toNSString:v4];

  v5 = [*(a1 + 32) anchorEventIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"%";
  }

  [v9 bindNamedParam:":anchorEventIdentifier" toNSString:v7];

  [*(a1 + 40) timeIntervalSince1970];
  [v9 bindNamedParam:":oldestAllowedAnchorDate" toInt64:v8];
}

uint64_t __82__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForAnchor_candidateId___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __82__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForAnchor_candidateId___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (int64_t)numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId:(id)a3 anchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  store = self->_store;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke;
  v13[3] = &unk_27859C520;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v16 = &v17;
  [(_ATXDataStore *)store _doSync:v13];
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke_2;
  v8[3] = &unk_278599DB8;
  v9 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke_3;
  v7[3] = &unk_278598790;
  v7[4] = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke_4;
  v5[3] = &unk_2785987B8;
  v6 = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT COUNT( DISTINCT dates) FROM (SELECT anchorOccurrence.anchorDate AS dates FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorModelTrainingData.anchorType=anchorOccurrence.anchorType AND anchorModelTrainingData.anchorDate=anchorOccurrence.anchorDate WHERE candidateId=:candidateId AND anchorOccurrence.anchorType=:anchorType AND anchorEventIdentifier LIKE :anchorEventIdentifier AND candidatePerformed=1 AND secondsSinceAnchor<:secondsSinceAnchor AND anchorOccurrence.anchorDate>:oldestAllowedAnchorDate GROUP BY candidateOccurrenceId)" onPrep:v8 onRow:v7 onError:v5];
}

void __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v13 = a2;
  v4 = [v3 anchorEventIdentifier];
  v5 = v4;
  v6 = @"%";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  [v13 bindNamedParam:":candidateId" toNSString:*(a1 + 40)];
  v8 = [*(a1 + 32) anchorTypeString];
  [v13 bindNamedParam:":anchorType" toNSString:v8];

  [v13 bindNamedParam:":anchorEventIdentifier" toNSString:v7];
  v9 = MEMORY[0x277CCABB0];
  v10 = *(a1 + 32);
  [objc_opt_class() secondsOfInfluence];
  v11 = [v9 numberWithDouble:?];
  [v13 bindNamedParam:":secondsSinceAnchor" toInteger:{objc_msgSend(v11, "integerValue")}];

  [*(*(a1 + 48) + 16) timeIntervalSince1970];
  [v13 bindNamedParam:":oldestAllowedAnchorDate" toInt64:v12];
}

uint64_t __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (int64_t)numUniqueAnchorOccurrencesForGenericCandidateId:(id)a3 anchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  store = self->_store;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForGenericCandidateId_anchor___block_invoke;
  v13[3] = &unk_27859C520;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v16 = &v17;
  [(_ATXDataStore *)store _doSync:v13];
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __89__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForGenericCandidateId_anchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForGenericCandidateId_anchor___block_invoke_2;
  v8[3] = &unk_278599DB8;
  v9 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForGenericCandidateId_anchor___block_invoke_3;
  v7[3] = &unk_278598790;
  v7[4] = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForGenericCandidateId_anchor___block_invoke_4;
  v5[3] = &unk_2785987B8;
  v6 = *(a1 + 48);
  [v2 prepAndRunQuery:@"SELECT COUNT(DISTINCT anchorOccurrence.anchorDate) FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorModelTrainingData.anchorType=anchorOccurrence.anchorType AND anchorModelTrainingData.anchorDate=anchorOccurrence.anchorDate WHERE candidateId=:candidateId AND anchorOccurrence.anchorType=:anchorType AND anchorEventIdentifier LIKE :anchorEventIdentifier AND candidatePerformed=1 AND secondsSinceAnchor<:secondsSinceAnchor AND anchorOccurrence.anchorDate >= :oldestAllowedAnchorDate" onPrep:v8 onRow:v7 onError:v5];
}

void __89__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForGenericCandidateId_anchor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v13 = a2;
  v4 = [v3 anchorEventIdentifier];
  v5 = v4;
  v6 = @"%";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  [v13 bindNamedParam:":candidateId" toNSString:*(a1 + 40)];
  v8 = [*(a1 + 32) anchorTypeString];
  [v13 bindNamedParam:":anchorType" toNSString:v8];

  [v13 bindNamedParam:":anchorEventIdentifier" toNSString:v7];
  v9 = MEMORY[0x277CCABB0];
  v10 = *(a1 + 32);
  [objc_opt_class() secondsOfInfluence];
  v11 = [v9 numberWithDouble:?];
  [v13 bindNamedParam:":secondsSinceAnchor" toInteger:{objc_msgSend(v11, "integerValue")}];

  [*(*(a1 + 48) + 16) timeIntervalSince1970];
  [v13 bindNamedParam:":oldestAllowedAnchorDate" toInt64:v12];
}

uint64_t __89__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForGenericCandidateId_anchor___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)candidateTypeForCandidateId:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__93;
  v14[3] = __Block_byref_object_dispose__93;
  v15 = objc_opt_new();
  store = self->_store;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ATXAnchorModelDataStoreWrapper_candidateTypeForCandidateId___block_invoke;
  v10[3] = &unk_2785987E0;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  [(_ATXDataStore *)store _doSync:v10];
  if ([*(v14[0] + 40) count] < 2)
  {
    v8 = [*(v14[0] + 40) firstObject];
  }

  else
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ATXAnchorModelDataStoreWrapper *)v6 candidateTypeForCandidateId:v14];
    }

    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __62__ATXAnchorModelDataStoreWrapper_candidateTypeForCandidateId___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__ATXAnchorModelDataStoreWrapper_candidateTypeForCandidateId___block_invoke_2;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ATXAnchorModelDataStoreWrapper_candidateTypeForCandidateId___block_invoke_3;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__ATXAnchorModelDataStoreWrapper_candidateTypeForCandidateId___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT DISTINCT candidateType FROM anchorModelTrainingData WHERE candidateId = ?" onPrep:v6 onRow:v5 onError:v3];
}

uint64_t __62__ATXAnchorModelDataStoreWrapper_candidateTypeForCandidateId___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 getNSStringForColumn:0];
  [v2 addObject:v3];

  return *MEMORY[0x277D42690];
}

uint64_t __62__ATXAnchorModelDataStoreWrapper_candidateTypeForCandidateId___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __62__ATXAnchorModelDataStoreWrapper_candidateTypeForCandidateId___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (void)populateCachedCountsForCandidateIds:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1814400.0];
  v6 = BiomeLibrary();
  v7 = [v6 App];
  v8 = [v7 InFocus];
  v9 = [v8 atx_publisherFromStartDate:v5];
  v10 = [v9 mapWithTransform:&__block_literal_global_341];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __70__ATXAnchorModelDataStoreWrapper_populateCachedCountsForCandidateIds___block_invoke_2;
  v30[3] = &unk_27859B908;
  v11 = v4;
  v31 = v11;
  v12 = [v10 filterWithIsIncluded:v30];

  v13 = [[ATXCachedCandidateCounter alloc] initWithCandidateIdPublisher:v12];
  cachedAppLaunchCounter = self->_cachedAppLaunchCounter;
  self->_cachedAppLaunchCounter = v13;

  [(ATXCachedCandidateCounter *)self->_cachedAppLaunchCounter populateCache];
  v15 = BiomeLibrary();
  v16 = [v15 UserFocus];
  v17 = [v16 ComputedMode];
  v18 = [v17 atx_publisherFromStartDate:v5];
  v19 = [v18 mapWithTransform:&__block_literal_global_345];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __70__ATXAnchorModelDataStoreWrapper_populateCachedCountsForCandidateIds___block_invoke_4;
  v28 = &unk_27859B908;
  v29 = v11;
  v20 = v11;
  v21 = [v19 filterWithIsIncluded:&v25];

  v22 = [ATXCachedCandidateCounter alloc];
  v23 = [(ATXCachedCandidateCounter *)v22 initWithCandidateIdPublisher:v21, v25, v26, v27, v28];
  cachedModeCounter = self->_cachedModeCounter;
  self->_cachedModeCounter = v23;

  [(ATXCachedCandidateCounter *)self->_cachedModeCounter populateCache];
}

- (int64_t)numCandidateOccurrencesInAllContextsForCandidate:(id)a3
{
  v4 = a3;
  v5 = [(ATXAnchorModelDataStoreWrapper *)self candidateTypeForCandidateId:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 isEqualToString:@"action"])
    {
      v7 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
      }

      v8 = [(ATXAnchorModelDataStoreWrapper *)self numActionOccurrencesInAllContextsForActionId:v4];
LABEL_22:
      v10 = v8;
      goto LABEL_23;
    }

    if ([v6 isEqualToString:@"app"])
    {
      v11 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
      }

      v8 = [(ATXAnchorModelDataStoreWrapper *)self numAppLaunchOccurrencesInAllContextsForAppLaunchCandidateId:v4];
      goto LABEL_22;
    }

    if ([v6 isEqualToString:@"mode"])
    {
      v12 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
      }

      v8 = [(ATXAnchorModelDataStoreWrapper *)self numModeOccurrencesInAllContextsForModeId:v4];
      goto LABEL_22;
    }

    v13 = [v6 isEqualToString:@"linkaction"];
    v14 = __atxlog_handle_anchor();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
      }

      v8 = [(ATXAnchorModelDataStoreWrapper *)self numLinkActionOccurrencesInAllContextsForCandidateId:v4];
      goto LABEL_22;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
    }
  }

  else
  {
    v9 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
    }
  }

  v10 = 0;
LABEL_23:

  return v10;
}

- (int64_t)numCandidateOccurrencesInAllContextsForCandidateType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"action"])
  {
    v5 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
    }

    v6 = [(ATXAnchorModelDataStoreWrapper *)self numActionOccurrencesInAllContexts];
LABEL_17:
    v12 = v6;
    goto LABEL_18;
  }

  if ([v4 isEqualToString:@"app"])
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
    }

    v6 = [(ATXAnchorModelDataStoreWrapper *)self numAppLaunchOccurrencesInAllContexts];
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"mode"])
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
    }

    v6 = [(ATXAnchorModelDataStoreWrapper *)self numModeOccurrencesInAllContexts];
    goto LABEL_17;
  }

  v9 = [v4 isEqualToString:@"linkaction"];
  v10 = __atxlog_handle_anchor();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidate:];
    }

    v6 = [(ATXAnchorModelDataStoreWrapper *)self numLinkActionOccurrencesInAllContexts];
    goto LABEL_17;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [ATXAnchorModelDataStoreWrapper numCandidateOccurrencesInAllContextsForCandidateType:];
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (int64_t)numActionOccurrencesInAllContextsForActionId:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 dateByAddingTimeInterval:-1814400.0];
  v7 = [ATXAnchorModelDataStoreWrapper actionDetailsFromActionCandidateId:v4];
  if (v7)
  {
    store = self->_store;
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [v7 bundleId];
    v11 = [v7 actionType];
    v12 = [v9 initWithFormat:@"%@:%@", v10, v11];
    v13 = -[_ATXDataStore numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:](store, "numActionParameterHashOccurrencesForActionKey:parameterHash:startDate:endDate:", v12, [v7 paramHash], v6, v5);
  }

  else
  {
    v14 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelDataStoreWrapper numActionOccurrencesInAllContextsForActionId:];
    }

    v13 = 0;
  }

  return v13;
}

- (int64_t)numActionOccurrencesInAllContexts
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_numCandidateOccurrencesInAllContextsForCandidateTypeCache objectForKeyedSubscript:@"action"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [v6 dateByAddingTimeInterval:-1814400.0];
    v8 = [(_ATXDataStore *)self->_store numActionKeyOccurrencesBetweenStartDate:v7 endDate:v6];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v5 = 0;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v8 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
          v5 += [v13 integerValue];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v5 = 0;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    [(NSMutableDictionary *)self->_numCandidateOccurrencesInAllContextsForCandidateTypeCache setObject:v14 forKeyedSubscript:@"action"];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int64_t)numAppLaunchOccurrencesInAllContextsForAppLaunchCandidateId:(id)a3
{
  cachedAppLaunchCounter = self->_cachedAppLaunchCounter;
  v4 = a3;
  if (cachedAppLaunchCounter)
  {
    v5 = [(ATXCachedCandidateCounter *)cachedAppLaunchCounter countForCandidate:v4];
  }

  else
  {
    v6 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelDataStoreWrapper numAppLaunchOccurrencesInAllContextsForAppLaunchCandidateId:];
    }

    v7 = objc_opt_new();
    v8 = [v7 dateByAddingTimeInterval:-1814400.0];
    v9 = objc_opt_new();
    v5 = [v9 numberOfAppLaunchSessionsBetweenStartDate:v8 endDate:v7 forBundleID:v4];

    v4 = v7;
  }

  return v5;
}

- (int64_t)numAppLaunchOccurrencesInAllContexts
{
  v3 = [(NSMutableDictionary *)self->_numCandidateOccurrencesInAllContextsForCandidateTypeCache objectForKeyedSubscript:@"app"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [v6 dateByAddingTimeInterval:-1814400.0];
    v8 = objc_opt_new();
    v5 = [v8 numberOfAppLaunchSessionsBetweenStartDate:v7 endDate:v6 forBundleID:0];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    [(NSMutableDictionary *)self->_numCandidateOccurrencesInAllContextsForCandidateTypeCache setObject:v9 forKeyedSubscript:@"app"];
  }

  return v5;
}

- (int64_t)numModeOccurrencesInAllContextsForModeId:(id)a3
{
  v4 = a3;
  cachedModeCounter = self->_cachedModeCounter;
  if (cachedModeCounter)
  {
    v6 = [(ATXCachedCandidateCounter *)cachedModeCounter countForCandidate:v4];
  }

  else
  {
    v7 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelDataStoreWrapper numModeOccurrencesInAllContextsForModeId:];
    }

    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1814400.0];
    v9 = [ATXAnchorModelDataStoreWrapper modeDetailsFromModeCandidateId:v4];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v10 = BiomeLibrary();
    v11 = [v10 UserFocus];
    v12 = [v11 ComputedMode];
    v13 = [v12 atx_publisherFromStartDate:v8];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__ATXAnchorModelDataStoreWrapper_numModeOccurrencesInAllContextsForModeId___block_invoke;
    v19[3] = &unk_27859A798;
    v14 = v9;
    v20 = v14;
    v15 = [v13 filterWithIsIncluded:v19];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__ATXAnchorModelDataStoreWrapper_numModeOccurrencesInAllContextsForModeId___block_invoke_3;
    v18[3] = &unk_278597BA8;
    v18[4] = &v21;
    v16 = [v15 sinkWithCompletion:&__block_literal_global_354 receiveInput:v18];

    v6 = v22[3];
    _Block_object_dispose(&v21, 8);
  }

  return v6;
}

uint64_t __75__ATXAnchorModelDataStoreWrapper_numModeOccurrencesInAllContextsForModeId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 mode];
  v6 = [*(a1 + 32) modeUUID];
  if ([v5 isEqualToString:v6])
  {
    v7 = [v3 eventBody];
    v8 = [v7 starting];
    v9 = v8 ^ [*(a1 + 32) isStart] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)numModeOccurrencesInAllContexts
{
  v3 = [(NSMutableDictionary *)self->_numCandidateOccurrencesInAllContextsForCandidateTypeCache objectForKeyedSubscript:@"mode"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1814400.0];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v7 = BiomeLibrary();
    v8 = [v7 UserFocus];
    v9 = [v8 ComputedMode];
    v10 = [v9 atx_publisherFromStartDate:v6];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__ATXAnchorModelDataStoreWrapper_numModeOccurrencesInAllContexts__block_invoke_2;
    v14[3] = &unk_278597BA8;
    v14[4] = &v15;
    v11 = [v10 sinkWithCompletion:&__block_literal_global_357 receiveInput:v14];

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v16[3]];
    [(NSMutableDictionary *)self->_numCandidateOccurrencesInAllContextsForCandidateTypeCache setObject:v12 forKeyedSubscript:@"mode"];

    v5 = v16[3];
    _Block_object_dispose(&v15, 8);
  }

  return v5;
}

- (int64_t)numLinkActionOccurrencesInAllContextsForCandidateId:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1814400.0];
  v5 = [ATXAnchorModelDataStoreWrapper linkActionDetailsFromLinkActionCandidateId:v3];
  v20 = 0;
  v6 = [ATXLinkTranscriptUtil systemLinkTranscriptPublisherFromDate:v4 toDate:0 error:&v20];
  v7 = v20;
  if (v7)
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXAnchorModelDataStoreWrapper numLinkActionOccurrencesInAllContextsForCandidateId:];
    }

    v9 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __86__ATXAnchorModelDataStoreWrapper_numLinkActionOccurrencesInAllContextsForCandidateId___block_invoke;
    v14[3] = &unk_27859A798;
    v15 = v5;
    v10 = [v6 filterWithIsIncluded:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__ATXAnchorModelDataStoreWrapper_numLinkActionOccurrencesInAllContextsForCandidateId___block_invoke_3;
    v13[3] = &unk_278597BA8;
    v13[4] = &v16;
    v11 = [v10 sinkWithCompletion:&__block_literal_global_360 receiveInput:v13];

    v9 = v17[3];
    _Block_object_dispose(&v16, 8);
  }

  return v9;
}

uint64_t __86__ATXAnchorModelDataStoreWrapper_numLinkActionOccurrencesInAllContextsForCandidateId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 bundleIdentifier];

  v6 = [v3 eventBody];

  v7 = [v6 action];
  v8 = [v7 identifier];

  v9 = [*(a1 + 32) bundleId];
  if ([v5 isEqualToString:v9])
  {
    v10 = [*(a1 + 32) actionId];
    v11 = [v8 isEqualToString:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)numLinkActionOccurrencesInAllContexts
{
  v3 = [(NSMutableDictionary *)self->_numCandidateOccurrencesInAllContextsForCandidateTypeCache objectForKeyedSubscript:@"mode"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1814400.0];
    v18 = 0;
    v7 = [ATXLinkTranscriptUtil systemLinkTranscriptPublisherFromDate:v6 toDate:0 error:&v18];
    v8 = v18;
    if (v8)
    {
      v9 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXAnchorModelDataStoreWrapper numLinkActionOccurrencesInAllContextsForCandidateId:];
      }

      v5 = 0;
    }

    else
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71__ATXAnchorModelDataStoreWrapper_numLinkActionOccurrencesInAllContexts__block_invoke_2;
      v13[3] = &unk_278597BA8;
      v13[4] = &v14;
      v10 = [v7 sinkWithCompletion:&__block_literal_global_362 receiveInput:v13];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v15[3]];
      [(NSMutableDictionary *)self->_numCandidateOccurrencesInAllContextsForCandidateTypeCache setObject:v11 forKeyedSubscript:@"mode"];

      v5 = v15[3];
      _Block_object_dispose(&v14, 8);
    }
  }

  return v5;
}

- (int64_t)numCandidateOccurrencesInAnchorContextForCandidate:(id)a3 anchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  store = self->_store;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidate_anchor___block_invoke;
  v13[3] = &unk_27859C520;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  [(_ATXDataStore *)store _doSync:v13];
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __92__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidate_anchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidate_anchor___block_invoke_2;
  v8[3] = &unk_278599DB8;
  v9 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidate_anchor___block_invoke_3;
  v7[3] = &unk_278598790;
  v7[4] = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidate_anchor___block_invoke_4;
  v5[3] = &unk_2785987B8;
  v6 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT COUNT(DISTINCT candidateOccurrenceId) FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorModelTrainingData.anchorType=anchorOccurrence.anchorType AND anchorModelTrainingData.anchorDate=anchorOccurrence.anchorDate WHERE candidateId=:candidateId AND candidatePerformed=1 AND anchorOccurrence.anchorType=:anchorType AND anchorEventIdentifier LIKE :anchorEventIdentifier AND secondsSinceAnchor<:secondsSinceAnchor AND anchorOccurrence.anchorDate>:oldestAllowedAnchorDate" onPrep:v8 onRow:v7 onError:v5];
}

void __92__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidate_anchor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v12 = a2;
  [v12 bindNamedParam:":candidateId" toNSString:v3];
  v4 = [*(a1 + 40) anchorTypeString];
  [v12 bindNamedParam:":anchorType" toNSString:v4];

  v5 = [*(a1 + 40) anchorEventIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"%";
  }

  [v12 bindNamedParam:":anchorEventIdentifier" toNSString:v7];

  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 40);
  [objc_opt_class() secondsOfInfluence];
  v10 = [v8 numberWithDouble:?];
  [v12 bindNamedParam:":secondsSinceAnchor" toInteger:{objc_msgSend(v10, "integerValue")}];

  [*(*(a1 + 48) + 16) timeIntervalSince1970];
  [v12 bindNamedParam:":oldestAllowedAnchorDate" toInt64:v11];
}

uint64_t __92__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidate_anchor___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __92__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidate_anchor___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (int64_t)numCandidateOccurrencesInAnchorContextForCandidateType:(id)a3 anchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  store = self->_store;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidateType_anchor___block_invoke;
  v13[3] = &unk_27859C520;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v16 = &v17;
  [(_ATXDataStore *)store _doSync:v13];
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __96__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidateType_anchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidateType_anchor___block_invoke_2;
  v8[3] = &unk_278599DB8;
  v9 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidateType_anchor___block_invoke_3;
  v7[3] = &unk_278598790;
  v7[4] = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __96__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidateType_anchor___block_invoke_4;
  v5[3] = &unk_2785987B8;
  v6 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT COUNT(DISTINCT candidateOccurrenceId) FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorModelTrainingData.anchorType=anchorOccurrence.anchorType AND anchorModelTrainingData.anchorDate=anchorOccurrence.anchorDate WHERE candidateType=:candidateType AND candidatePerformed=1 AND anchorOccurrence.anchorType=:anchorType AND anchorEventIdentifier LIKE :anchorEventIdentifier AND secondsSinceAnchor<:secondsSinceAnchor AND anchorOccurrence.anchorDate>:oldestAllowedAnchorDate" onPrep:v8 onRow:v7 onError:v5];
}

void __96__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidateType_anchor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v12 = a2;
  [v12 bindNamedParam:":candidateType" toNSString:v3];
  v4 = [*(a1 + 40) anchorTypeString];
  [v12 bindNamedParam:":anchorType" toNSString:v4];

  v5 = [*(a1 + 40) anchorEventIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"%";
  }

  [v12 bindNamedParam:":anchorEventIdentifier" toNSString:v7];

  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 40);
  [objc_opt_class() secondsOfInfluence];
  v10 = [v8 numberWithDouble:?];
  [v12 bindNamedParam:":secondsSinceAnchor" toInteger:{objc_msgSend(v10, "integerValue")}];

  [*(*(a1 + 48) + 16) timeIntervalSince1970];
  [v12 bindNamedParam:":oldestAllowedAnchorDate" toInt64:v11];
}

uint64_t __96__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidateType_anchor___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __96__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidateType_anchor___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)uniqueCandidateIdsThatOccurredAfterAnchor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelDataStoreWrapper *)self uniqueCandidateIdsThatOccurredAfterAnchor:v4 candidateType:@"action"];
  v7 = [(ATXAnchorModelDataStoreWrapper *)self uniqueCandidateIdsThatOccurredAfterAnchor:v4 candidateType:@"app"];
  v8 = [(ATXAnchorModelDataStoreWrapper *)self uniqueCandidateIdsThatOccurredAfterAnchor:v4 candidateType:@"mode"];
  v9 = [(ATXAnchorModelDataStoreWrapper *)self uniqueCandidateIdsThatOccurredAfterAnchor:v4 candidateType:@"linkaction"];

  v10 = [v6 allObjects];
  [v5 addObjectsFromArray:v10];

  v11 = [v7 allObjects];
  [v5 addObjectsFromArray:v11];

  v12 = [v8 allObjects];
  [v5 addObjectsFromArray:v12];

  v13 = [v9 allObjects];
  [v5 addObjectsFromArray:v13];

  return v5;
}

- (id)uniqueCandidateIdsThatOccurredAfterAnchor:(id)a3 candidateType:(id)a4 minOccurrences:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__93;
  v25 = __Block_byref_object_dispose__93;
  v26 = objc_opt_new();
  store = self->_store;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke;
  v15[3] = &unk_2785A0480;
  v15[4] = self;
  v16 = @"SELECT candidateId FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorModelTrainingData.anchorType=anchorOccurrence.anchorType AND anchorModelTrainingData.anchorDate=anchorOccurrence.anchorDate WHERE anchorModelTrainingData.anchorType=:anchorType AND anchorOccurrence.anchorEventIdentifier LIKE :anchorEventIdentifier AND candidatePerformed=1 AND secondsSinceAnchor<:secondsSinceAnchor AND candidateType=:candidateType AND anchorOccurrence.anchorDate>:anchorDate GROUP BY candidateId HAVING COUNT(candidateId) >= :minOccurrences LIMIT 30";
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v19 = &v21;
  v20 = a5;
  v18 = v12;
  [(_ATXDataStore *)store _doSync:v15];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke_2;
  v9[3] = &unk_278599D68;
  v3 = *(a1 + 40);
  v10 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v11 = v4;
  v12 = v5;
  v13 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke_4;
  v6[3] = &unk_2785987B8;
  v7 = *(a1 + 48);
  [v2 prepAndRunQuery:v3 onPrep:v9 onRow:v8 onError:v6];
}

void __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v12 = a2;
  v4 = [v3 anchorTypeString];
  [v12 bindNamedParam:":anchorType" toNSString:v4];

  v5 = [*(a1 + 32) anchorEventIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"%";
  }

  [v12 bindNamedParam:":anchorEventIdentifier" toNSString:v7];

  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 32);
  [objc_opt_class() secondsOfInfluence];
  v10 = [v8 numberWithDouble:?];
  [v12 bindNamedParam:":secondsSinceAnchor" toInteger:{objc_msgSend(v10, "integerValue")}];

  [v12 bindNamedParam:":candidateType" toNSString:*(a1 + 40)];
  [*(*(a1 + 48) + 24) timeIntervalSince1970];
  [v12 bindNamedParam:":anchorDate" toInt64:v11];
  [v12 bindNamedParam:":minOccurrences" toInteger:*(a1 + 56)];
}

uint64_t __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 getNSStringForColumn:0];
  [v2 addObject:v3];

  return *MEMORY[0x277D42690];
}

uint64_t __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)secondsAfterAnchorWhenCandidateOccurredForAnchor:(id)a3 candidateId:(id)a4 onlyConsiderFirstOccurrencePerAnchor:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__93;
  v26 = __Block_byref_object_dispose__93;
  v27 = objc_opt_new();
  v10 = @"SELECT secondsSinceAnchor FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorOccurrence.anchorType = anchorModelTrainingData.anchorType AND anchorOccurrence.anchorDate = anchorModelTrainingData.anchorDate WHERE candidateId=:candidateId AND candidatePerformed=1 AND anchorOccurrence.anchorType=:anchorType AND anchorOccurrence.anchorEventIdentifier LIKE :anchorEventIdentifier AND secondsSinceAnchor<:secondsSinceAnchor AND anchorOccurrence.anchorDate>:oldestAllowedAnchorDate ORDER BY secondsSinceAnchor ASC";
  v11 = !v5;
  store = self->_store;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke;
  v17[3] = &unk_27859C7A8;
  if (!v11)
  {
    v10 = @"SELECT secondsSinceAnchor FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorOccurrence.anchorType = anchorModelTrainingData.anchorType AND anchorOccurrence.anchorDate = anchorModelTrainingData.anchorDate WHERE candidateId=:candidateId AND candidatePerformed=1 AND anchorOccurrence.anchorType=:anchorType AND anchorOccurrence.anchorEventIdentifier LIKE :anchorEventIdentifier AND secondsSinceAnchor<:secondsSinceAnchor AND anchorOccurrence.anchorDate>:oldestAllowedAnchorDate GROUP BY anchorOccurrence.anchorDate ORDER BY secondsSinceAnchor ASC";
  }

  v17[4] = self;
  v18 = v10;
  v13 = v9;
  v19 = v13;
  v14 = v8;
  v20 = v14;
  v21 = &v22;
  [(_ATXDataStore *)store _doSync:v17];
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

void __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke_2;
  v9[3] = &unk_278599DB8;
  v3 = *(a1 + 40);
  v10 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v11 = v4;
  v12 = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke_4;
  v6[3] = &unk_2785987B8;
  v7 = *(a1 + 48);
  [v2 prepAndRunQuery:v3 onPrep:v9 onRow:v8 onError:v6];
}

void __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v12 = a2;
  [v12 bindNamedParam:":candidateId" toNSString:v3];
  v4 = [*(a1 + 40) anchorTypeString];
  [v12 bindNamedParam:":anchorType" toNSString:v4];

  v5 = [*(a1 + 40) anchorEventIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"%";
  }

  [v12 bindNamedParam:":anchorEventIdentifier" toNSString:v7];

  v8 = MEMORY[0x277CCABB0];
  v9 = *(a1 + 40);
  [objc_opt_class() secondsOfInfluence];
  v10 = [v8 numberWithDouble:?];
  [v12 bindNamedParam:":secondsSinceAnchor" toInteger:{objc_msgSend(v10, "integerValue")}];

  [*(*(a1 + 48) + 16) timeIntervalSince1970];
  [v12 bindNamedParam:":oldestAllowedAnchorDate" toInt64:v11];
}

uint64_t __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getIntegerForColumn:0];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v3 & ~(v3 >> 63)];
  [v4 addObject:v5];

  return *MEMORY[0x277D42690];
}

uint64_t __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)scoredActionFromAnchorModelPrediction:(id)a3
{
  v4 = a3;
  v5 = [v4 candidateType];
  v6 = [v5 isEqualToString:@"action"];

  if (!v6)
  {
    v18 = 0;
    goto LABEL_15;
  }

  v7 = [v4 candidateId];
  v8 = [ATXAnchorModelDataStoreWrapper actionDetailsFromActionCandidateId:v7];

  if (v8)
  {
    v9 = [v8 paramHash];
    v10 = [v4 candidateId];
    v11 = [(ATXAnchorModelDataStoreWrapper *)self latestAlogIdForCandidateId:v10];

    v12 = [(ATXAnchorModelDataStoreWrapper *)self minSlotResolutionParametersFromALogId:v11 paramHash:v9];
    if (v12)
    {
      v13 = [v4 candidateId];
      v14 = [ATXAnchorModelDataStoreWrapper actionKeyFromActionCandidateId:v13];

      if (v14)
      {
        v15 = [ATXActionPredictionContainer alloc];
        [v4 score];
        *&v16 = v16;
        v17 = [(ATXActionPredictionContainer *)v15 initWithMinimalSlotResolutionParameters:v12 score:v14 actionKey:v16];
        v18 = [(ATXActionPredictionContainer *)v17 scoredAction];
      }

      else
      {
        v19 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          [ATXAnchorModelDataStoreWrapper scoredActionFromAnchorModelPrediction:v4];
        }

        v18 = 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXAnchorModelDataStoreWrapper scoredActionFromAnchorModelPrediction:v4];
    }
  }

  v18 = 0;
LABEL_14:

LABEL_15:

  return v18;
}

- (int64_t)latestAlogIdForCandidateId:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  store = self->_store;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__ATXAnchorModelDataStoreWrapper_latestAlogIdForCandidateId___block_invoke;
  v9[3] = &unk_2785987E0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(_ATXDataStore *)store _doSync:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __61__ATXAnchorModelDataStoreWrapper_latestAlogIdForCandidateId___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__ATXAnchorModelDataStoreWrapper_latestAlogIdForCandidateId___block_invoke_2;
  v6[3] = &unk_278598768;
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__ATXAnchorModelDataStoreWrapper_latestAlogIdForCandidateId___block_invoke_3;
  v5[3] = &unk_278598790;
  v5[4] = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__ATXAnchorModelDataStoreWrapper_latestAlogIdForCandidateId___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT candidateOccurrenceId FROM anchorModelTrainingData WHERE candidateId=? AND candidatePerformed=1 ORDER BY ID DESC" onPrep:v6 onRow:v5 onError:v3];
}

uint64_t __61__ATXAnchorModelDataStoreWrapper_latestAlogIdForCandidateId___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __61__ATXAnchorModelDataStoreWrapper_latestAlogIdForCandidateId___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)minSlotResolutionParametersFromALogId:(int64_t)a3 paramHash:(int64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__93;
  v12 = __Block_byref_object_dispose__93;
  v13 = 0;
  store = self->_store;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke;
  v7[3] = &unk_27859A178;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = self;
  v7[5] = &v8;
  [(_ATXDataStore *)store _doSync:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) db];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_2;
  v6[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  v3 = a1[7];
  v7 = a1[6];
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_3;
  v5[3] = &unk_2785A04A8;
  v5[4] = a1[5];
  v5[5] = v7;
  v5[6] = v3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_389;
  v4[3] = &__block_descriptor_40_e37___PASDBIterAction__B_16__0__NSError_8l;
  v4[4] = v7;
  [v2 prepAndRunQuery:@"SELECT uuid onPrep:slotHash onRow:paramCount FROM slotSetKey WHERE alogId=? AND paramHash=? LIMIT 1" onError:{v6, v5, v4}];
}

void __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindParam:1 toInt64:v3];
  [v4 bindParam:2 toInt64:*(a1 + 40)];
}

uint64_t __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSDataForColumn:0];
  if ([v4 length] == 16)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v4, "bytes")}];
    v6 = [v3 getInt64ForColumn:1];
    v7 = [v3 getInt64ForColumn:2];
    v24 = [ATXMinimalSlotResolutionParameters alloc];
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 48)];
    v9 = [v8 unsignedIntegerValue];
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
    v11 = [v10 unsignedIntegerValue];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
    v13 = -[ATXMinimalSlotResolutionParameters initWithParameterHash:slotHash:uuid:paramCount:](v24, "initWithParameterHash:slotHash:uuid:paramCount:", v9, v11, v5, [v12 unsignedIntegerValue]);
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v5 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_3_cold_1(a1, v5, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = MEMORY[0x277D42698];
  return *v22;
}

uint64_t __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_389(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_389_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (int64_t)numCandidateIdOccurrencesInJointAnchorContext:(id)a3 anchor:(id)a4 anchorMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = [v10 locationIdentifier];
  v12 = @"SELECT COUNT(DISTINCT candidateOccurrenceId) FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorOccurrence.anchorType = anchorModelTrainingData.anchorType AND anchorOccurrence.anchorDate = anchorModelTrainingData.anchorDate WHERE candidateId=:candidateId AND candidatePerformed=1 AND anchorModelTrainingData.anchorType=:anchorType AND anchorOccurrence.anchorEventIdentifier LIKE :anchorEventIdentifier AND secondsSinceAnchor<:secondsSinceAnchor AND anchorOccurrence.anchorDate>:oldestAllowedAnchorDate AND anchorLocalHour=:anchorLocalHour AND anchorLocalDoW=:anchorLocalDoW AND anchorLocation=:anchorLocation";
  if (!v11)
  {
    v12 = @"SELECT COUNT(DISTINCT candidateOccurrenceId) FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorOccurrence.anchorType = anchorModelTrainingData.anchorType AND anchorOccurrence.anchorDate = anchorModelTrainingData.anchorDate WHERE candidateId=:candidateId AND candidatePerformed=1 AND anchorModelTrainingData.anchorType=:anchorType AND anchorOccurrence.anchorEventIdentifier LIKE :anchorEventIdentifier AND secondsSinceAnchor<:secondsSinceAnchor AND anchorOccurrence.anchorDate>:oldestAllowedAnchorDate AND anchorLocalHour=:anchorLocalHour AND anchorLocalDoW=:anchorLocalDoW AND anchorLocation IS NULL";
  }

  v13 = v12;

  store = self->_store;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke;
  v21[3] = &unk_27859C780;
  v21[4] = self;
  v15 = v13;
  v22 = v15;
  v16 = v8;
  v23 = v16;
  v17 = v9;
  v24 = v17;
  v18 = v10;
  v25 = v18;
  v26 = &v27;
  [(_ATXDataStore *)store _doSync:v21];
  v19 = v28[3];

  _Block_object_dispose(&v27, 8);
  return v19;
}

void __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke_2;
  v9[3] = &unk_27859C758;
  v3 = *(a1 + 40);
  v10 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v11 = v4;
  v12 = v5;
  v13 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = *(a1 + 72);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke_4;
  v6[3] = &unk_2785987B8;
  v7 = *(a1 + 48);
  [v2 prepAndRunQuery:v3 onPrep:v9 onRow:v8 onError:v6];
}

void __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  [v14 bindNamedParam:":candidateId" toNSString:*(a1 + 32)];
  v3 = [*(a1 + 40) anchorTypeString];
  [v14 bindNamedParam:":anchorType" toNSString:v3];

  v4 = [*(a1 + 40) anchorEventIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"%";
  }

  [v14 bindNamedParam:":anchorEventIdentifier" toNSString:v6];

  v7 = MEMORY[0x277CCABB0];
  v8 = *(a1 + 40);
  [objc_opt_class() secondsOfInfluence];
  v9 = [v7 numberWithDouble:?];
  [v14 bindNamedParam:":secondsSinceAnchor" toInteger:{objc_msgSend(v9, "integerValue")}];

  [*(*(a1 + 48) + 16) timeIntervalSince1970];
  [v14 bindNamedParam:":oldestAllowedAnchorDate" toInt64:v10];
  [v14 bindNamedParam:":anchorLocalHour" toInteger:{objc_msgSend(*(a1 + 56), "hourOfDay")}];
  v11 = *(a1 + 48);
  [v14 bindNamedParam:":anchorLocalDoW" toInteger:{objc_msgSend(objc_opt_class(), "dayOfWeekIntegerFromATXAnchorModelPBDayOfWeek:", objc_msgSend(*(a1 + 56), "dayOfWeek"))}];
  v12 = [*(a1 + 56) locationIdentifier];

  if (v12)
  {
    v13 = [*(a1 + 56) locationIdentifier];
    [v14 bindNamedParam:":anchorLocation" toNSString:v13];
  }
}

uint64_t __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)trainingDataForCandidate:(id)a3 anchor:(id)a4 replacementStringForNilStringValues:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [MEMORY[0x277CBEAA8] distantPast];
  v13 = [(ATXAnchorModelDataStoreWrapper *)self dateOfFirstPositiveCandidateOccurrence:v8 anchor:v9 startDate:v12 limit:30];

  store = self->_store;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke;
  v23[3] = &unk_27859BD78;
  v23[4] = self;
  v24 = v8;
  v25 = v9;
  v26 = v13;
  v27 = v10;
  v15 = v11;
  v28 = v15;
  v16 = v10;
  v17 = v13;
  v18 = v9;
  v19 = v8;
  [(_ATXDataStore *)store _doSync:v23];
  v20 = v28;
  v21 = v15;

  return v15;
}

void __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke_2;
  v8[3] = &unk_278599DB8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke_3;
  v5[3] = &unk_27859C820;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke_4;
  v3[3] = &unk_2785987B8;
  v4 = *(a1 + 40);
  [v2 prepAndRunQuery:@"SELECT candidateOccurrencesInLast12Hours onPrep:candidateOccurrencesInLast24Hours onRow:candidateOccurrencesInLast48Hours onError:{candidateOccurrencesInLast7Days, candidateOccurrencesInLast14Days, candidateOccurrencesInLast28Days, anchorLocalHour, anchorLocalDoW, anchorLocalIsWeekend, anchorLocation, anchorEventIdentifier, candidatePerformed FROM anchorModelTrainingData INNER JOIN anchorOccurrence ON anchorModelTrainingData.anchorType = anchorOccurrence.anchorType AND anchorModelTrainingData.anchorDate = anchorOccurrence.anchorDate WHERE candidateId=:candidateId AND anchorModelTrainingData.anchorType=:anchorType AND anchorOccurrence.anchorEventIdentifier LIKE :anchorEventIdentifier AND anchorOccurrence.anchorDate >= :dateOfFirstPositiveCandidateOccurrence GROUP BY anchorModelTrainingData.anchorDate ORDER BY anchorModelTrainingData.anchorDate DESC LIMIT 30", v8, v5, v3}];
}

void __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  [v9 bindNamedParam:":candidateId" toNSString:v3];
  v4 = [*(a1 + 40) anchorTypeString];
  [v9 bindNamedParam:":anchorType" toNSString:v4];

  v5 = [*(a1 + 40) anchorEventIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"%";
  }

  [v9 bindNamedParam:":anchorEventIdentifier" toNSString:v7];

  [*(a1 + 48) timeIntervalSince1970];
  [v9 bindNamedParam:":dateOfFirstPositiveCandidateOccurrence" toInt64:v8];
}

uint64_t __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 0)}];
  [v4 setObject:v5 forKeyedSubscript:@"candidateOccurrencesInLast12Hours"];

  v6 = [v3 getIntegerForColumn:0];
  v7 = MEMORY[0x277CBEC28];
  v8 = MEMORY[0x277CBEC38];
  if (v6 <= 0)
  {
    v9 = MEMORY[0x277CBEC28];
  }

  else
  {
    v9 = MEMORY[0x277CBEC38];
  }

  [v4 setObject:v9 forKeyedSubscript:@"candidateOccurredInLast12Hours"];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 1)}];
  [v4 setObject:v10 forKeyedSubscript:@"candidateOccurrencesInLast24Hours"];

  if ([v3 getIntegerForColumn:1] <= 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  [v4 setObject:v11 forKeyedSubscript:@"candidateOccurredInLast24Hours"];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 2)}];
  [v4 setObject:v12 forKeyedSubscript:@"candidateOccurrencesInLast48Hours"];

  if ([v3 getIntegerForColumn:2] <= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  [v4 setObject:v13 forKeyedSubscript:@"candidateOccurredInLast48Hours"];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 3)}];
  [v4 setObject:v14 forKeyedSubscript:@"candidateOccurrencesInLast7Days"];

  if ([v3 getIntegerForColumn:3] <= 0)
  {
    v15 = v7;
  }

  else
  {
    v15 = v8;
  }

  [v4 setObject:v15 forKeyedSubscript:@"candidateOccurredInLast7Days"];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 4)}];
  [v4 setObject:v16 forKeyedSubscript:@"candidateOccurrencesInLast14Days"];

  if ([v3 getIntegerForColumn:4] <= 0)
  {
    v17 = v7;
  }

  else
  {
    v17 = v8;
  }

  [v4 setObject:v17 forKeyedSubscript:@"candidateOccurredInLast14Days"];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 5)}];
  [v4 setObject:v18 forKeyedSubscript:@"candidateOccurrencesInLast28Days"];

  if ([v3 getIntegerForColumn:5] <= 0)
  {
    v19 = v7;
  }

  else
  {
    v19 = v8;
  }

  [v4 setObject:v19 forKeyedSubscript:@"candidateOccurredInLast28Days"];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 6)}];
  [v4 setObject:v20 forKeyedSubscript:@"anchorLocalHour"];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 7)}];
  [v4 setObject:v21 forKeyedSubscript:@"anchorLocalDoW"];

  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 8)}];
  [v4 setObject:v22 forKeyedSubscript:@"anchorLocalIsWeekend"];

  v23 = [v3 getNSStringForColumn:9];
  v24 = v23;
  if (!v23)
  {
    v24 = *(a1 + 32);
  }

  [v4 setObject:v24 forKeyedSubscript:@"anchorLocation"];

  v25 = [v3 getNSStringForColumn:10];
  v26 = v25;
  if (!v25)
  {
    v26 = *(a1 + 32);
  }

  [v4 setObject:v26 forKeyedSubscript:@"anchorEventIdentifier"];

  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "getIntegerForColumn:", 11)}];
  [v4 setObject:v27 forKeyedSubscript:@"candidatePerformed"];

  v28 = *(a1 + 40);
  v29 = [v4 copy];
  [v28 addObject:v29];

  v30 = MEMORY[0x277D42690];
  return *v30;
}

uint64_t __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)dateOfFirstPositiveCandidateOccurrence:(id)a3 anchor:(id)a4 startDate:(id)a5 limit:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__93;
  v31 = __Block_byref_object_dispose__93;
  v32 = 0;
  store = self->_store;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__ATXAnchorModelDataStoreWrapper_dateOfFirstPositiveCandidateOccurrence_anchor_startDate_limit___block_invoke;
  v20[3] = &unk_27859C7F8;
  v20[4] = self;
  v21 = @"SELECT MIN(dates)     FROM(        SELECT anchorOccurrence.anchorDate as dates, candidatePerformed as candidatePerformed         FROM anchorModelTrainingData         INNER JOIN anchorOccurrence ON anchorModelTrainingData.anchorType = anchorOccurrence.anchorType AND anchorModelTrainingData.anchorDate = anchorOccurrence.anchorDate         WHERE candidateId=:candidateId         AND anchorModelTrainingData.anchorType=:anchorType         AND anchorOccurrence.anchorEventIdentifier LIKE :anchorEventIdentifier         AND anchorOccurrence.anchorDate >= :startDateTimeInterval         GROUP BY anchorModelTrainingData.anchorDate         ORDER BY anchorModelTrainingData.anchorDate DESC LIMIT :limit        )     WHERE candidatePerformed=1";
  v14 = v10;
  v22 = v14;
  v15 = v11;
  v23 = v15;
  v16 = v12;
  v25 = &v27;
  v26 = a6;
  v24 = v16;
  [(_ATXDataStore *)store _doSync:v20];
  v17 = v28[5];
  if (!v17)
  {
    objc_storeStrong(v28 + 5, a5);
    v17 = v28[5];
  }

  v18 = v17;

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __96__ATXAnchorModelDataStoreWrapper_dateOfFirstPositiveCandidateOccurrence_anchor_startDate_limit___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) db];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__ATXAnchorModelDataStoreWrapper_dateOfFirstPositiveCandidateOccurrence_anchor_startDate_limit___block_invoke_2;
  v9[3] = &unk_278599D68;
  v3 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 80);
  v12 = v4;
  v13 = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__ATXAnchorModelDataStoreWrapper_dateOfFirstPositiveCandidateOccurrence_anchor_startDate_limit___block_invoke_3;
  v8[3] = &unk_278598790;
  v8[4] = *(a1 + 72);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__ATXAnchorModelDataStoreWrapper_dateOfFirstPositiveCandidateOccurrence_anchor_startDate_limit___block_invoke_4;
  v6[3] = &unk_2785987B8;
  v7 = *(a1 + 48);
  [v2 prepAndRunQuery:v3 onPrep:v9 onRow:v8 onError:v6];
}

void __96__ATXAnchorModelDataStoreWrapper_dateOfFirstPositiveCandidateOccurrence_anchor_startDate_limit___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  [v9 bindNamedParam:":candidateId" toNSString:v3];
  v4 = [*(a1 + 40) anchorTypeString];
  [v9 bindNamedParam:":anchorType" toNSString:v4];

  v5 = [*(a1 + 40) anchorEventIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"%";
  }

  [v9 bindNamedParam:":anchorEventIdentifier" toNSString:v7];

  [*(a1 + 48) timeIntervalSince1970];
  [v9 bindNamedParam:":startDateTimeInterval" toInt64:v8];
  [v9 bindNamedParam:":limit" toInteger:*(a1 + 56)];
}

uint64_t __96__ATXAnchorModelDataStoreWrapper_dateOfFirstPositiveCandidateOccurrence_anchor_startDate_limit___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 getIntegerForColumn:0];
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v3 + -1.0];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *MEMORY[0x277D42698];
}

uint64_t __96__ATXAnchorModelDataStoreWrapper_dateOfFirstPositiveCandidateOccurrence_anchor_startDate_limit___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke_4_cold_1(a1);
  }

  v5 = MEMORY[0x277D42698];
  return *v5;
}

- (id)appIntentDuetEventFromCandidateId:(id)a3 date:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [ATXAnchorModelDataStoreWrapper actionDetailsFromActionCandidateId:v6];
  if (v8)
  {
    v9 = -[ATXAnchorModelDataStoreWrapper minSlotResolutionParametersFromALogId:paramHash:](self, "minSlotResolutionParametersFromALogId:paramHash:", -[ATXAnchorModelDataStoreWrapper latestAlogIdForCandidateId:](self, "latestAlogIdForCandidateId:", v6), [v8 paramHash]);
    v19 = [ATXAppIntentDuetEvent alloc];
    v18 = [v8 bundleId];
    v17 = [v8 actionType];
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "paramHash")}];
    v22[0] = v20;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "slotHash")}];
    v21 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "paramCount")}];
    v14 = [(ATXAppIntentDuetEvent *)v19 initWithBundleId:v18 actionType:v17 parameterHashes:v10 slotSetHashes:v12 paramCount:v13 startDate:v7 endDate:v7 alogId:&unk_283A573F8];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)appLaunchDuetEventFromCandidateId:(id)a3 date:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ATXAppLaunchDuetEvent alloc] initWithBundleId:v6 startDate:v5 endDate:v5];

  return v7;
}

- (id)modeBiomeEventFromCandidateId:(id)a3 date:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() modeDetailsFromModeCandidateId:v6];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CF16F0]);
    v9 = [v7 modeUUID];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isStart")}];
    v11 = [v8 initWithMode:v9 starting:v10 updateReason:0 semanticType:0 updateSource:0 semanticModeIdentifier:0];

    v12 = objc_alloc(MEMORY[0x277CF1800]);
    [v5 timeIntervalSinceReferenceDate];
    v13 = [v12 initWithEventBody:v11 timestamp:?];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)linkActionBiomeEventFromCandidateId:(id)a3 date:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() linkActionDetailsFromLinkActionCandidateId:v6];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D23CB8]);
    v9 = [v7 bundleId];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v7 linkAction];
    v12 = [v7 linkAction];
    v13 = [v8 initWithBundleIdentifier:v9 source:0 clientLabel:0 executionUUID:v10 executionDate:v5 action:v11 resolvedAction:v12 actionOutput:0 predictions:MEMORY[0x277CBEBF8]];

    v14 = objc_alloc(MEMORY[0x277CF1800]);
    [v5 timeIntervalSinceReferenceDate];
    v15 = [v14 initWithEventBody:v13 timestamp:?];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)appIntentDuetEventsFromCandidateIds:(id)a3 date:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(ATXAnchorModelDataStoreWrapper *)self appIntentDuetEventFromCandidateId:*(*(&v17 + 1) + 8 * i) date:v7, v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)appLaunchDuetEventsFromCandidateIds:(id)a3 date:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(ATXAnchorModelDataStoreWrapper *)self appLaunchDuetEventFromCandidateId:*(*(&v17 + 1) + 8 * i) date:v7, v17];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)modeBiomeEventsFromCandidateIds:(id)a3 date:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(ATXAnchorModelDataStoreWrapper *)self modeBiomeEventFromCandidateId:*(*(&v17 + 1) + 8 * i) date:v7, v17];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)linkActionBiomeEventsFromCandidateIds:(id)a3 date:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(ATXAnchorModelDataStoreWrapper *)self linkActionBiomeEventFromCandidateId:*(*(&v17 + 1) + 8 * i) date:v7, v17];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)actionKeyFromActionCandidateId:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 3)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v4 objectAtIndexedSubscript:1];
    v8 = [v5 initWithFormat:@"%@:%@", v6, v7];
  }

  else
  {
    v9 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      +[ATXAnchorModelDataStoreWrapper actionKeyFromActionCandidateId:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)actionDetailsFromActionCandidateId:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 3)
  {
    v5 = [ATXAnchorModelActionDetails alloc];
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v4 objectAtIndexedSubscript:1];
    v8 = [v4 objectAtIndexedSubscript:2];
    v9 = -[ATXAnchorModelActionDetails initWithBundleId:actionType:paramHash:](v5, "initWithBundleId:actionType:paramHash:", v6, v7, [v8 longLongValue]);
  }

  else
  {
    v10 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      +[ATXAnchorModelDataStoreWrapper actionDetailsFromActionCandidateId:];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)modeDetailsFromModeCandidateId:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v4 objectAtIndexedSubscript:1];
    v7 = [v6 BOOLValue];

    v8 = [[ATXAnchorModelModeDetails alloc] initWithModeUUID:v5 isStart:v7];
  }

  else
  {
    v9 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      +[ATXAnchorModelDataStoreWrapper modeDetailsFromModeCandidateId:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)linkActionDetailsFromLinkActionCandidateId:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 3)
  {
    v5 = [ATXAnchorModelLinkActionDetails alloc];
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v4 objectAtIndexedSubscript:1];
    v8 = [v4 objectAtIndexedSubscript:2];
    v9 = [(ATXAnchorModelLinkActionDetails *)v5 initWithBundleID:v6 actionId:v7 linkActionEncodedString:v8];
  }

  else
  {
    v10 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      +[ATXAnchorModelDataStoreWrapper linkActionDetailsFromLinkActionCandidateId:];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)candidateIdFromAppIntentDuetEvent:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 bundleId];
  v7 = [v4 actionType];
  v8 = [v4 parameterHashes];

  v9 = [v8 firstObject];
  v10 = [v5 initWithFormat:@"%@:%@:%lld", v6, v7, objc_msgSend(v9, "longLongValue")];

  return v10;
}

- (id)candidateIdFromActionMetadata:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 appLaunchMetadata];
  v7 = [v6 bundleId];
  v8 = [v4 actionKeyMetadata];
  v9 = [v8 actionType];
  v10 = [v4 actionUUIDMetadatas];

  v11 = [v10 firstObject];
  v12 = [v5 initWithFormat:@"%@:%@:%lld", v7, v9, objc_msgSend(v11, "actionUUID")];

  return v12;
}

+ (id)candidateIdFromAppLaunchDuetEvent:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 bundleId];

  v7 = [v5 initWithFormat:@"%@", v6];

  return v7;
}

+ (id)candidateIdFromAppLaunchBiomeEvent:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 eventBody];

  v7 = [v6 bundleID];
  v8 = [v5 initWithFormat:@"%@", v7];

  return v8;
}

+ (id)candidateIdFromModeBiomeEvent:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 eventBody];
  v7 = [v6 mode];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v4 eventBody];

  v10 = [v8 numberWithBool:{objc_msgSend(v9, "starting")}];
  v11 = [v5 initWithFormat:@"%@:%@", v7, v10];

  return v11;
}

+ (id)candidateIdFromLinkActionBiomeEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 eventBody];
  v5 = [v4 action];
  v6 = [ATXAnchorModelLinkActionDetails encodedStringForLinkAction:v5];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [v3 eventBody];
    v9 = [v8 bundleIdentifier];
    v10 = [v3 eventBody];
    v11 = [v10 action];
    v12 = [v11 identifier];
    v13 = [v7 initWithFormat:@"%@:%@:%@", v9, v12, v6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)candidateIdFromBiomeEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [a1 candidateIdFromModeBiomeEvent:v4];
LABEL_3:
    v8 = v7;
    goto LABEL_11;
  }

  v9 = [v4 eventBody];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  v11 = [v4 eventBody];
  v12 = v11;
  if (v10)
  {
    v8 = [v11 bundleID];
  }

  else
  {
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if (v13)
    {
      v7 = [a1 candidateIdFromLinkActionBiomeEvent:v4];
      goto LABEL_3;
    }

    v14 = __atxlog_handle_blending();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      +[ATXAnchorModelDataStoreWrapper candidateIdFromBiomeEvent:];
    }

    v8 = &stru_2839A6058;
  }

LABEL_11:

  return v8;
}

- (void)timestampOfMostRecentRecordedAnchorOccurrenceForAnchor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v0, v1, "AnchorModel: ATXDATASTORE. Fetching the most recent recorded anchor event for the following anchor: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __89__ATXAnchorModelDataStoreWrapper_timestampOfMostRecentRecordedAnchorOccurrenceForAnchor___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the most recent recorded event for the following anchor: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateOrInsertActionTrainingSample:featurizedAction:actionOccurred:actionEngaged:anchorEvent:anchor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "AnchorModel: Trying to add action event to anchorModelTrainingData table with an actionEvent that doesn't have an associated alogId. actionEvent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateOrInsertLinkActionTrainingSample:featurizedAction:actionOccurred:actionEngaged:anchorEvent:anchor:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v0, v1, "Unexpectedly executing separate path for LinkActions for Anchor training: %@ : %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, v1, v2, "AnchorModel: ATXDATASTORE. Running insertion query! candidateFeatures:%@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_4(&dword_2263AA000, a2, a3, "AnchorModel: ATXDATASTORE. DONE running insertion query! candidateFeatures:%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_46_cold_1(id *a1, id *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [*a1 objectForKeyedSubscript:@"candidateId"];
  v4 = [*a2 anchorTypeString];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __113__ATXAnchorModelDataStoreWrapper_updateOrInsertCandidateEventToDatabaseWithCandidateFeatures_anchor_anchorEvent___block_invoke_101_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error inserting training sample record: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorModelTrainingResults_anchor___block_invoke_110_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [*a1 anchor];
  v7 = [v6 anchorTypeString];
  v8 = [*a1 candidateId];
  [*a1 candidateClassifierType];
  v12 = 138413058;
  v13 = v7;
  OUTLINED_FUNCTION_2_8();
  v14 = v8;
  v15 = 2048;
  v16 = v9;
  v17 = v10;
  v18 = a2;
  _os_log_fault_impl(&dword_2263AA000, a3, OS_LOG_TYPE_FAULT, "Skipping writing Anchor Model training result to ATXDataStore because of error while archiving candidate classifier. Anchor: %@, CandidateId: %@, Classifier Type: %ld. Error: %@", &v12, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)insertAnchorSuggestionOutcome:date:anchorType:anchorEventIdentifier:candidateId:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)insertAnchorSuggestionOutcome:date:anchorType:anchorEventIdentifier:candidateId:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __114__ATXAnchorModelDataStoreWrapper_insertAnchorSuggestionOutcome_date_anchorType_anchorEventIdentifier_candidateId___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error inserting anchorModelSuggestionOutcomes record: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __110__ATXAnchorModelDataStoreWrapper_assignMetricsForTrainingResult_anchorType_anchorEventIdentifier_candidateId___block_invoke_147_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error fetching anchorModelSuggestionOutcomes: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__ATXAnchorModelDataStoreWrapper_trainingResultsForAnchor___block_invoke_185_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the trainingResultsForAnchor: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)dateAnchorModelWasLastTrainedForAnchor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Recovered more than 1 unique training date from the training results for the following anchor: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__ATXAnchorModelDataStoreWrapper_updateOrInsertAnchorType___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error inserting anchor event record: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__ATXAnchorModelDataStoreWrapper_updateOrInsertLocation___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error inserting location record: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__ATXAnchorModelDataStoreWrapper_insertAnchorOccurrence_anchor_featureMetadata___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error inserting anchor occurrence record: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_256_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error fetching how many samples we're going to delete the anchorOccurrence table: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_263_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error deleting samples from the anchorOccurrence table: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_271_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error fetching how many samples we're going to delete the anchorModelTrainingData table: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_278_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error deleting samples from the anchorModelTrainingData table: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_287_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error fetching how many outcomes we're going to delete the anchorModelSuggestionOutcomes table: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__ATXAnchorModelDataStoreWrapper_deleteSamplesThatAreMoreThan28DaysOld__block_invoke_2_294_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error deleting suggestion outcomes from the anchorModelSuggestionOutcomes table: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error deleting bundleIds from anchorModelTrainingData: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__ATXAnchorModelDataStoreWrapper_deleteSamplesForBundleIdsNotInList___block_invoke_307_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "error fetching how many samples were deleted due to uninstalled apps: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__ATXAnchorModelDataStoreWrapper_historicalAnchorOccurrenceDatesForAnchor___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the historicalAnchorOccurrenceDatesForAnchor: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __72__ATXAnchorModelDataStoreWrapper_uniqueAnchorEventIdentifiersForAnchor___block_invoke_323_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the uniqueAnchorEventIdentifiersForAnchor: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __82__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesForAnchor_candidateId___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the numUniqueAnchorOccurrencesForAnchor: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __118__ATXAnchorModelDataStoreWrapper_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrenceForGenericCandidateId_anchor___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the numUniqueAnchorOccurrencesForCandidate: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)candidateTypeForCandidateId:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v3, v4, "Encountered candidateId that is associated with multiple candidate types. candidateId: %@, candidateTypes: %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __62__ATXAnchorModelDataStoreWrapper_candidateTypeForCandidateId___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the candidateTypeForCandidateId: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)numCandidateOccurrencesInAllContextsForCandidate:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_8();
  v4 = v0;
  _os_log_error_impl(&dword_2263AA000, v1, OS_LOG_TYPE_ERROR, "Returning 0 for numCandidateOccurrencesInAllContextsForCandidate: %@ because the candidateType was not a known value. candidateType: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)numCandidateOccurrencesInAllContextsForCandidate:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Unable to determine candidateType for candidate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)numCandidateOccurrencesInAllContextsForCandidateType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Returning 0 for numCandidateOccurrencesInAllContextsForCandidateType because the candidateType was not a known value. candidateType: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)numActionOccurrencesInAllContextsForActionId:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Unable to get actionDetails for candidateId: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)numAppLaunchOccurrencesInAllContextsForAppLaunchCandidateId:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)numModeOccurrencesInAllContextsForModeId:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)numLinkActionOccurrencesInAllContextsForCandidateId:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Error when fetching Link transcript publisher: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __92__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidate_anchor___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the numCandidateOccurrencesInAnchorContextForCandidate: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __96__ATXAnchorModelDataStoreWrapper_numCandidateOccurrencesInAnchorContextForCandidateType_anchor___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the numCandidateOccurrencesInAnchorContextForCandidateType: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __105__ATXAnchorModelDataStoreWrapper_uniqueCandidateIdsThatOccurredAfterAnchor_candidateType_minOccurrences___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the uniqueCandidateIdsThatOccurredAfterAnchor: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __132__ATXAnchorModelDataStoreWrapper_secondsAfterAnchorWhenCandidateOccurredForAnchor_candidateId_onlyConsiderFirstOccurrencePerAnchor___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the secondsAfterAnchorWhenCandidateOccurredForAnchor: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)scoredActionFromAnchorModelPrediction:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 candidateId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)scoredActionFromAnchorModelPrediction:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 candidateId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __61__ATXAnchorModelDataStoreWrapper_latestAlogIdForCandidateId___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the latestAlogIdForCandidateId: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a2, a3, "Error obtaining slotset UUID for action row: %lld", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __82__ATXAnchorModelDataStoreWrapper_minSlotResolutionParametersFromALogId_paramHash___block_invoke_389_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Unable to fetch minimalSlotResolutionParametersFromALogId %lld. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __102__ATXAnchorModelDataStoreWrapper_numCandidateIdOccurrencesInJointAnchorContext_anchor_anchorMetadata___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the numCandidateIdOccurrencesInJointAnchorContext: %@. Error %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __102__ATXAnchorModelDataStoreWrapper_trainingDataForCandidate_anchor_replacementStringForNilStringValues___block_invoke_4_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_12_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_9(&dword_2263AA000, v1, v2, "Error fetching the trainingDataForCandidate: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)actionKeyFromActionCandidateId:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Anchor Model Data Store Wrapper: Attempted to get ActionKey from candidateId that didn't have 3 components. CandidateId: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)actionDetailsFromActionCandidateId:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Anchor Model Data Store Wrapper: Attempted to get actionDetails from candidateId that didn't have 3 components. CandidateId: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)modeDetailsFromModeCandidateId:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Anchor Model Data Store Wrapper: Attempted to get modeDetails from candidateId that didn't have 3 components. CandidateId: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)linkActionDetailsFromLinkActionCandidateId:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Anchor Model Data Store Wrapper: Attempted to get linkActionDetails from candidateId that didn't have 3 components. CandidateId: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)candidateIdFromBiomeEvent:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

@end