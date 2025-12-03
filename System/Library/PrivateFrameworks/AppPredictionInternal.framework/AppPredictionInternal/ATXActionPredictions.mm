@interface ATXActionPredictions
+ (BOOL)actionScoreAboveThresholdOrWhitelistedAction:(id)action confidenceThreshold:(double)threshold actionKeyWhitelist:(id)whitelist actionTypeWhitelist:(id)typeWhitelist;
+ (BOOL)isActionPredictionContainerEligibleForLimit:(id)limit;
+ (id)_actionPredictionCandidatesForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger multiStageScoreLogger:(id)stageScoreLogger context:(id)context featureCache:(id)cache remainingPredictionItems:(void *)self0;
+ (id)_actionPredictionCandidatesForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger multiStageScoreLogger:(id)stageScoreLogger featureCache:(id)cache remainingPredictionItems:(void *)items;
+ (id)actionsFromActions:(id)actions byMovingActionsWithBundleIdentifiers:(id)identifiers toRemainingPredictionItems:(void *)items;
+ (id)filterHighQualityActionResults:(id)results consumerSubType:(unsigned __int8)type;
+ (id)removeActionsBelowThresholdForActionPredictions:(id)predictions withThreshold:(double)threshold actionKeyWhitelist:(id)whitelist actionTypeWhitelist:(id)typeWhitelist;
+ (id)scoredActionsWithoutLog:(id)log;
+ (id)sortStageScores:(id)scores;
+ (unint64_t)numActionResultsWithOnlyPredictionItemForLogging:(id)logging;
+ (void)fetchDataAndUpdateContentAttributeSetForActions:(id)actions;
+ (void)penalizeMultipleActionsPerAppAndKeepSorted:(id)sorted;
+ (void)setTVActionPredictionsConfidenceToLow:(id)low;
@end

@implementation ATXActionPredictions

+ (BOOL)isActionPredictionContainerEligibleForLimit:(id)limit
{
  limitCopy = limit;
  mEMORY[0x277CEBC70] = [MEMORY[0x277CEBC70] sharedInstance];
  isTestModeEnabled = [mEMORY[0x277CEBC70] isTestModeEnabled];

  if (isTestModeEnabled)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CEB7F8];
    scoredAction = [limitCopy scoredAction];
    predictedItem = [scoredAction predictedItem];
    LOBYTE(v7) = [v7 isActionEligibleForAnySettingsSuggestions:predictedItem];

    v6 = v7 ^ 1;
  }

  return v6;
}

+ (id)_actionPredictionCandidatesForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger multiStageScoreLogger:(id)stageScoreLogger featureCache:(id)cache remainingPredictionItems:(void *)items
{
  identifiersCopy = identifiers;
  actiontypesCopy = actiontypes;
  loggerCopy = logger;
  scoreLoggerCopy = scoreLogger;
  stageScoreLoggerCopy = stageScoreLogger;
  cacheCopy = cache;
  v21 = +[_ATXAppPredictor sharedInstance];
  appLaunchMonitor = [v21 appLaunchMonitor];

  if (appLaunchMonitor)
  {
    v23 = +[ATXPredictionContextBuilder sharedInstance];
    predictionContextForCurrentContext = [v23 predictionContextForCurrentContext];

    if (!predictionContextForCurrentContext)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ATXActionPredictions.mm" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"predictionContext"}];
    }

    v25 = [self _actionPredictionCandidatesForCandidateBundleIdentifiers:identifiersCopy candidateActiontypes:actiontypesCopy firstStageScoreLogger:loggerCopy secondStageScoreLogger:scoreLoggerCopy multiStageScoreLogger:stageScoreLoggerCopy context:predictionContextForCurrentContext featureCache:cacheCopy remainingPredictionItems:items];
  }

  else
  {
    v25 = objc_opt_new();
  }

  return v25;
}

+ (id)_actionPredictionCandidatesForCandidateBundleIdentifiers:(id)identifiers candidateActiontypes:(id)actiontypes firstStageScoreLogger:(id)logger secondStageScoreLogger:(id)scoreLogger multiStageScoreLogger:(id)stageScoreLogger context:(id)context featureCache:(id)cache remainingPredictionItems:(void *)self0
{
  v112 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  actiontypesCopy = actiontypes;
  loggerCopy = logger;
  scoreLoggerCopy = scoreLogger;
  stageScoreLoggerCopy = stageScoreLogger;
  contextCopy = context;
  cacheCopy = cache;
  v85 = objc_opt_new();
  v77 = objc_autoreleasePoolPush();
  v81 = +[_ATXAppPredictor sharedInstance];
  v87 = +[_ATXGlobals sharedInstance];
  v15 = [v81 predictWithLimit:objc_msgSend(v87 consumerSubType:"actionPredictionFirstStageBeamWidth") intent:24 candidateBundleIdentifiers:0 candidateActiontypes:identifiersCopy scoreLogger:actiontypesCopy predictionItemsToKeep:loggerCopy predictedItemsOutParameter:items context:0 featureCache:{contextCopy, cacheCopy}];
  if (loggerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = dispatch_semaphore_create(0);
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke;
      v105[3] = &unk_27859AED0;
      v17 = v16;
      v106 = v17;
      [loggerCopy flushWithCompletion:v105];
      [MEMORY[0x277D425A0] waitForSemaphore:v17 timeoutSeconds:&__block_literal_global_132 onAcquire:&__block_literal_global_50 onTimeout:5.0];
    }
  }

  if (v15 && ([v15 predictionSetChunk], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v76 = v15;
    feedbackStateChunk = [v15 feedbackStateChunk];
    v20 = feedbackStateChunk == 0;

    if (v20)
    {
      v57 = v85;
    }

    else
    {
      v21 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        +[ATXActionPredictions _actionPredictionCandidatesForCandidateBundleIdentifiers:candidateActiontypes:firstStageScoreLogger:secondStageScoreLogger:multiStageScoreLogger:context:featureCache:remainingPredictionItems:];
      }

      v22 = MEMORY[0x277CEB7D0];
      predictionSetChunk = [v76 predictionSetChunk];
      v75 = [v22 bundleIdReader:predictionSetChunk];

      v93 = [v75 readScoredPredictionsWithLimit:0x7FFFFFFFLL];
      feedbackStateChunk2 = [v76 feedbackStateChunk];
      [ATXActionCacheReader getActionKeyToPredictionItemMapFromChunk:feedbackStateChunk2];

      v82 = objc_opt_new();
      v25 = objc_opt_new();
      v26 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = [v93 count];
        *buf = 138543618;
        v109 = v28;
        v110 = 2050;
        v111 = v29;
        _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ - Stage 1 Action Predictions returned num candidates: %{public}lu", buf, 0x16u);
      }

      [ATXActionPredictionsHelpers applyLogSoftmaxToPredictions:v93];
      v90 = objc_opt_new();
      v86 = objc_opt_new();
      v30 = arc4random_uniform([v93 count]);
      if ([MEMORY[0x277CEBC58] isSpotlightPlusEnabled])
      {
        v31 = +[_ATXAppPredictor sharedInstance];
        [v31 prewarmModelForConsumerSubtype:25];
      }

      v96 = 0;
      v84 = v30;
      while ([v93 count] > v96)
      {
        context = objc_autoreleasePoolPush();
        v95 = [v93 objectAtIndexedSubscript:v96];
        predictedItem = [v95 predictedItem];
        v32 = std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::find<NSString * {__strong}>(v104, &predictedItem);
        if (v32)
        {
          v94 = [v90 statisticsForActionKey:predictedItem context:contextCopy];
          v33 = predictedItem;
          [v95 score];
          v35 = v34;
          [v87 predictionsForMultiStageLoggingLimit];
          v37 = v36;
          timeContext = [contextCopy timeContext];
          date = [timeContext date];
          if (v96 == v84)
          {
            [v90 actionPredictionsForActionKey:v33 statistics:v94 appActionPredictionItem:v32 + 3 appActionLogProbability:scoreLoggerCopy scoreLogger:v37 andLimit:0 forMagicalMoments:v35 predictionItemsToKeep:items currentDate:date];
          }

          else
          {
            [v90 actionPredictionsForActionKey:v33 statistics:v94 appActionPredictionItem:v32 + 3 appActionLogProbability:scoreLoggerCopy scoreLogger:v37 andLimit:0 forMagicalMoments:v35 currentDate:date];
          }
          v40 = ;

          [v86 updateActionStatisticsForSlotResolutionStatistics:v94 candidateActionPredictions:v40];
          if (stageScoreLoggerCopy)
          {
            v41 = MEMORY[0x277CCABB0];
            [v95 score];
            v42 = [v41 numberWithFloat:?];
            v43 = MEMORY[0x277CCACA8];
            v44 = predictedItem;
            [v95 score];
            v46 = [v43 stringWithFormat:@"%@:%f", v44, v45];
            [v82 setObject:v42 forKeyedSubscript:v46];

            v101 = 0u;
            v102 = 0u;
            v99 = 0u;
            v100 = 0u;
            v47 = v40;
            v48 = [v47 countByEnumeratingWithState:&v99 objects:v107 count:16];
            if (v48)
            {
              v49 = *v100;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  if (*v100 != v49)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v51 = *(*(&v99 + 1) + 8 * i);
                  scoredAction = [v51 scoredAction];
                  v53 = [scoredAction description];

                  v54 = MEMORY[0x277CCABB0];
                  [v51 score];
                  v55 = [v54 numberWithFloat:?];
                  [v25 setObject:v55 forKeyedSubscript:v53];
                }

                v48 = [v47 countByEnumeratingWithState:&v99 objects:v107 count:16];
              }

              while (v48);
            }
          }

          if ([v40 count])
          {
            v56 = __atxlog_handle_action_prediction();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v109 = v40;
              v110 = 2112;
              v111 = predictedItem;
              _os_log_debug_impl(&dword_2263AA000, v56, OS_LOG_TYPE_DEBUG, "Got %@ predictions based on slot resolution for: %@", buf, 0x16u);
            }

            [v85 addObjectsFromArray:v40];
          }
        }

        objc_autoreleasePoolPop(context);
        ++v96;
      }

      if ([MEMORY[0x277CEBC58] isSpotlightPlusEnabled])
      {
        v58 = +[_ATXAppPredictor sharedInstance];
        [v58 coolDownModelForConsumerSubtype:25];
      }

      v59 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        v62 = [v85 count];
        *buf = 138543618;
        v109 = v61;
        v110 = 2050;
        v111 = v62;
        _os_log_impl(&dword_2263AA000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@ - Stage 2 Action Predictions returned num candidates from slot exploration: %{public}lu", buf, 0x16u);
      }

      v63 = [ATXActionPredictionsProcessor removeAlarmActionsInconsistentWithAlarmAppState:v85];
      v57 = [v63 mutableCopy];

      v64 = objc_opt_new();
      [v64 setFeatureValuesAndFilterPredictableActions:v57 actionStatistics:v86];
      if (scoreLoggerCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v65 = dispatch_semaphore_create(0);
          v97[0] = MEMORY[0x277D85DD0];
          v97[1] = 3221225472;
          v97[2] = __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_62;
          v97[3] = &unk_27859AED0;
          v66 = v65;
          v98 = v66;
          [scoreLoggerCopy flushWithCompletion:v97];
          [MEMORY[0x277D425A0] waitForSemaphore:v66 timeoutSeconds:&__block_literal_global_65_0 onAcquire:&__block_literal_global_68 onTimeout:5.0];
        }
      }

      if (stageScoreLoggerCopy)
      {
        v67 = [ATXActionPredictions sortStageScores:v82];
        [stageScoreLoggerCopy logStageScores:v67 forStageType:0];

        v68 = [ATXActionPredictions sortStageScores:v25];
        [stageScoreLoggerCopy logStageScores:v68 forStageType:1];
      }

      v69 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = objc_opt_class();
        v71 = NSStringFromClass(v70);
        v72 = [v57 count];
        *buf = 138543618;
        v109 = v71;
        v110 = 2050;
        v111 = v72;
        _os_log_impl(&dword_2263AA000, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ - Stage 2 Action Predictions retained num candidates after post-processing: %{public}lu", buf, 0x16u);
      }

      std::__hash_table<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringHash,ATXNSStringEqual,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},ATXPredictionItem>,ATXNSStringEqual,ATXNSStringHash,true>,std::allocator<std::__hash_value_type<NSString * {__strong},ATXPredictionItem>>>::~__hash_table(v104);
    }

    v15 = v76;
  }

  else
  {
    v57 = v85;
  }

  objc_autoreleasePoolPop(v77);
  v73 = *MEMORY[0x277D85DE8];

  return v57;
}

void __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_2()
{
  v0 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_2_cold_1();
  }
}

void __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_48()
{
  v0 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_48_cold_1();
  }
}

void __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_2_63()
{
  v0 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_2_63_cold_1();
  }
}

void __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_66()
{
  v0 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __215__ATXActionPredictions__actionPredictionCandidatesForCandidateBundleIdentifiers_candidateActiontypes_firstStageScoreLogger_secondStageScoreLogger_multiStageScoreLogger_context_featureCache_remainingPredictionItems___block_invoke_66_cold_1();
  }
}

void __188__ATXActionPredictions__predictionsForConsumerSubType_thirdStageScoreLogger_multiStageScoreLogger_context_actionPredictionCandidates_remainingPredictionItems_predictionsPerAppActionLimit___block_invoke_2()
{
  v0 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __188__ATXActionPredictions__predictionsForConsumerSubType_thirdStageScoreLogger_multiStageScoreLogger_context_actionPredictionCandidates_remainingPredictionItems_predictionsPerAppActionLimit___block_invoke_2_cold_1();
  }
}

void __188__ATXActionPredictions__predictionsForConsumerSubType_thirdStageScoreLogger_multiStageScoreLogger_context_actionPredictionCandidates_remainingPredictionItems_predictionsPerAppActionLimit___block_invoke_71()
{
  v0 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __188__ATXActionPredictions__predictionsForConsumerSubType_thirdStageScoreLogger_multiStageScoreLogger_context_actionPredictionCandidates_remainingPredictionItems_predictionsPerAppActionLimit___block_invoke_71_cold_1();
  }
}

+ (id)actionsFromActions:(id)actions byMovingActionsWithBundleIdentifiers:(id)identifiers toRemainingPredictionItems:(void *)items
{
  actionsCopy = actions;
  identifiersCopy = identifiers;
  v9 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__ATXActionPredictions_actionsFromActions_byMovingActionsWithBundleIdentifiers_toRemainingPredictionItems___block_invoke;
  v16[3] = &unk_27859E088;
  v10 = identifiersCopy;
  v17 = v10;
  itemsCopy = items;
  v11 = v9;
  v18 = v11;
  [actionsCopy enumerateObjectsUsingBlock:v16];
  v12 = [v11 count];
  if (v12 == [actionsCopy count])
  {
    v13 = actionsCopy;
  }

  else
  {
    v13 = [actionsCopy objectsAtIndexes:v11];
  }

  v14 = v13;

  return v14;
}

void __107__ATXActionPredictions_actionsFromActions_byMovingActionsWithBundleIdentifiers_toRemainingPredictionItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 scoredAction];
  v8 = [v7 predictedItem];
  v9 = [v8 bundleId];
  LODWORD(v6) = [v6 containsObject:v9];

  if (v6)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v12 = *v10;
      v11 = v10[1];
      v13 = +[_ATXGlobals sharedInstance];
      v14 = [v13 numberOfActionsToKeepForLogging];

      if (0x13A524387AC82261 * ((v11 - v12) >> 3) < v14)
      {
        v15 = *(a1 + 48);
        if (v5)
        {
          [v5 predictionItem];
        }

        else
        {
          bzero(v16, 0xD08uLL);
        }

        std::vector<ATXPredictionItem>::push_back[abi:ne200100](v15, v16);
      }
    }
  }

  else
  {
    [*(a1 + 40) addIndex:a3];
  }
}

+ (void)fetchDataAndUpdateContentAttributeSetForActions:(id)actions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  actionsCopy = actions;
  v4 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(actionsCopy);
        }

        scoredAction = [*(*(&v10 + 1) + 8 * v6) scoredAction];
        predictedItem = [scoredAction predictedItem];
        [_ATXActionUtils fetchDataAndUpdateContentAttributeSetForAction:predictedItem];

        ++v6;
      }

      while (v4 != v6);
      v4 = [actionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)setTVActionPredictionsConfidenceToLow:(id)low
{
  MEMORY[0x28223BE20](self, a2);
  v32 = *MEMORY[0x277D85DE8];
  v18 = v3;
  v4 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.tv" actionType:@"INPlayMediaIntent"];
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v5 = v18;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        actionKey = [v9 actionKey];
        v11 = [actionKey isEqualToString:v4];

        if (v11)
        {
          if (v9)
          {
            [v9 predictionItem];
            v12 = v23[0];
            v13 = v23[1];
            v14 = v25;
          }

          else
          {
            bzero(v23, 0xD08uLL);
            v13 = 0;
            v12 = 0;
            v14 = 0;
          }

          v15 = v12;
          memcpy(v30, v24, sizeof(v30));
          v16 = v15;
          v19[0] = v16;
          v19[1] = v13;
          memcpy(v20, v30, sizeof(v20));
          v21 = v14;
          v22 = 0;
          if (v9)
          {
            [v9 setPredictionItem:v19];
          }

          else
          {
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)filterHighQualityActionResults:(id)results consumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  resultsCopy = results;
  v6 = +[_ATXGlobals sharedInstance];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__60;
  v36 = __Block_byref_object_dispose__60;
  v37 = MEMORY[0x277CBEBF8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke;
  aBlock[3] = &unk_27859E0D0;
  aBlock[4] = &v32;
  v7 = _Block_copy(aBlock);
  switch(typeCopy)
  {
    case '1':
      v22 = [resultsCopy _pas_filteredArrayWithTest:&__block_literal_global_92_0];
      v23 = v33[5];
      v33[5] = v22;

      v18 = v33[5];
      v24 = [v18 count];
      maxSettingsZKWSuggestionsToBlend = [v6 maxSettingsZKWSuggestionsToBlend];
      if (v24 >= maxSettingsZKWSuggestionsToBlend)
      {
        v21 = maxSettingsZKWSuggestionsToBlend;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_11;
    case '.':
      v16 = [resultsCopy _pas_filteredArrayWithTest:&__block_literal_global_90_1];
      v17 = v33[5];
      v33[5] = v16;

      v18 = v33[5];
      v19 = [v18 count];
      maxSettingsZKWSuggestionsToBlend2 = [v6 maxSettingsZKWSuggestionsToBlend];
      if (v19 >= maxSettingsZKWSuggestionsToBlend2)
      {
        v21 = maxSettingsZKWSuggestionsToBlend2;
      }

      else
      {
        v21 = v19;
      }

LABEL_11:
      v26 = [v18 subarrayWithRange:{0, v21}];
      v10 = v33[5];
      v33[5] = v26;
      goto LABEL_12;
    case '&':
      v8 = MEMORY[0x277CBEB98];
      whitelistedActionKeysForHomeScreen = [v6 whitelistedActionKeysForHomeScreen];
      v10 = [v8 setWithArray:whitelistedActionKeysForHomeScreen];

      v11 = MEMORY[0x277CBEB98];
      whitelistedActionTypesForHomeScreen = [v6 whitelistedActionTypesForHomeScreen];
      v13 = [v11 setWithArray:whitelistedActionTypesForHomeScreen];

      [v6 behavioralHomeScreenActionMinimumConfidenceThreshold];
      v14 = [ATXActionPredictions removeActionsBelowThresholdForActionPredictions:resultsCopy withThreshold:v10 actionKeyWhitelist:v13 actionTypeWhitelist:?];
      v15 = v33[5];
      v33[5] = v14;

      v7[2](v7);
LABEL_12:

      goto LABEL_14;
  }

  [v6 actionExperienceMediumConfidenceThreshold];
  v27 = [ATXActionPredictions removeActionsBelowThresholdForActionPredictions:resultsCopy withThreshold:0 actionKeyWhitelist:0 actionTypeWhitelist:?];
  v28 = v33[5];
  v33[5] = v27;

  v7[2](v7);
LABEL_14:
  v29 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v29;
}

uint64_t __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) _pas_filteredArrayWithTest:&__block_literal_global_87_0];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB7F8];
  v3 = [a2 scoredAction];
  v4 = [v3 predictedItem];
  LODWORD(v2) = [v2 isActionEligibleForAnySettingsSuggestions:v4];

  return v2 ^ 1;
}

uint64_t __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB7F8];
  v3 = [a2 scoredAction];
  v4 = [v3 predictedItem];
  v5 = [v2 isActionEligibleForSettingsSuggestions:v4];

  return v5;
}

uint64_t __71__ATXActionPredictions_filterHighQualityActionResults_consumerSubType___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEB7F8];
  v3 = [a2 scoredAction];
  v4 = [v3 predictedItem];
  v5 = [v2 isActionEligibleForWatchAppSettingsSuggestions:v4];

  return v5;
}

+ (id)removeActionsBelowThresholdForActionPredictions:(id)predictions withThreshold:(double)threshold actionKeyWhitelist:(id)whitelist actionTypeWhitelist:(id)typeWhitelist
{
  v42 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  whitelistCopy = whitelist;
  typeWhitelistCopy = typeWhitelist;
  v28 = objc_opt_new();
  v9 = [objc_opt_class() numActionResultsWithOnlyPredictionItemForLogging:predictionsCopy];
  if ([predictionsCopy count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = predictionsCopy;
    v10 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v10)
    {
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          if ([ATXActionPredictions actionScoreAboveThresholdOrWhitelistedAction:v13 confidenceThreshold:whitelistCopy actionKeyWhitelist:typeWhitelistCopy actionTypeWhitelist:threshold])
          {
            v14 = __atxlog_handle_action_prediction();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              scoredAction = [v13 scoredAction];
              predictedItem = [scoredAction predictedItem];
              actionTitle = [predictedItem actionTitle];
              *buf = 138412290;
              v36 = actionTitle;
              _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "Adding high confidence action %@", buf, 0xCu);
            }

            [v28 addObject:v13];
          }

          else
          {
            v18 = +[_ATXGlobals sharedInstance];
            v19 = v9 < [v18 numberOfActionsToKeepForLogging];

            if (v19)
            {
              v20 = -[ATXActionResult initForLoggingWithPredictionItem:]([ATXActionResult alloc], "initForLoggingWithPredictionItem:", [v13 predictionItem]);
              [v28 addObject:v20];

              ++v9;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v10);
    }
  }

  v21 = __atxlog_handle_default();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v28 count];
    v23 = [predictionsCopy count];
    *buf = 134218496;
    v36 = v22;
    v37 = 2048;
    thresholdCopy = threshold;
    v39 = 2048;
    v40 = v23;
    _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_INFO, "Filtered %tu predictions with score above %0.2f threshold, out of %tu.", buf, 0x20u);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (unint64_t)numActionResultsWithOnlyPredictionItemForLogging:(id)logging
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  loggingCopy = logging;
  v4 = 0;
  v5 = [loggingCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(loggingCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        scoredAction = [v8 scoredAction];
        if (!scoredAction)
        {
          actionKey = [v8 actionKey];
          v11 = [actionKey isEqualToString:@"predictionItem"];

          v4 += v11;
        }
      }

      v5 = [loggingCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)actionScoreAboveThresholdOrWhitelistedAction:(id)action confidenceThreshold:(double)threshold actionKeyWhitelist:(id)whitelist actionTypeWhitelist:(id)typeWhitelist
{
  v55 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  whitelistCopy = whitelist;
  typeWhitelistCopy = typeWhitelist;
  scoredAction = [actionCopy scoredAction];

  if (scoredAction)
  {
    if ([actionCopy predictionItem] && *(objc_msgSend(actionCopy, "predictionItem") + 1028) < 3.0)
    {
      scoredAction2 = [actionCopy scoredAction];
      predictedItem = [scoredAction2 predictedItem];
      parameterKeysForToolInvocation = [predictedItem parameterKeysForToolInvocation];
      if ([parameterKeysForToolInvocation count])
      {

LABEL_7:
        actionKey = __atxlog_handle_action_prediction();
        if (os_log_type_enabled(actionKey, OS_LOG_TYPE_INFO))
        {
          scoredAction3 = [actionCopy scoredAction];
          predictedItem2 = [scoredAction3 predictedItem];
          v23 = *([actionCopy predictionItem] + 1028);
          *buf = 138412546;
          v50 = predictedItem2;
          v51 = 2048;
          v52 = v23;
          _os_log_impl(&dword_2263AA000, actionKey, OS_LOG_TYPE_INFO, "Filtering out low confidence parameterized action: %@ : %f", buf, 0x16u);
        }

        v24 = 0;
        goto LABEL_25;
      }

      scoredAction4 = [actionCopy scoredAction];
      predictedItem3 = [scoredAction4 predictedItem];
      intent = [predictedItem3 intent];
      atx_nonNilParameters = [intent atx_nonNilParameters];
      v19 = [atx_nonNilParameters count];

      if (v19)
      {
        goto LABEL_7;
      }
    }

    if ([actionCopy predictionItem])
    {
      v25 = __atxlog_handle_action_prediction();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        scoredAction5 = [actionCopy scoredAction];
        predictedItem4 = [scoredAction5 predictedItem];
        v28 = *([actionCopy predictionItem] + 1028);
        *buf = 138412546;
        v50 = predictedItem4;
        v51 = 2048;
        v52 = v28;
        _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "Allowing action: %@ : %f", buf, 0x16u);
      }
    }

    scoredAction6 = [actionCopy scoredAction];
    [scoredAction6 score];
    v31 = v30 < threshold;

    if (!v31)
    {
      v24 = 1;
      goto LABEL_26;
    }

    v32 = __atxlog_handle_action_prediction();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      scoredAction7 = [actionCopy scoredAction];
      predictedItem5 = [scoredAction7 predictedItem];
      scoredAction8 = [actionCopy scoredAction];
      [scoredAction8 score];
      *buf = 138412802;
      v50 = predictedItem5;
      v51 = 2048;
      v52 = v36;
      v53 = 2048;
      thresholdCopy = threshold;
      _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_DEFAULT, "Action %@ has a score of %f which is below the confidenceThreshold of %f", buf, 0x20u);
    }

    scoredAction9 = [actionCopy scoredAction];
    predictedItem6 = [scoredAction9 predictedItem];
    intent2 = [predictedItem6 intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_21;
    }

    scoredAction10 = [actionCopy scoredAction];
    predictedItem7 = [scoredAction10 predictedItem];
    intent3 = [predictedItem7 intent];

    _nonNilParameters = [intent3 _nonNilParameters];
    LOBYTE(predictedItem7) = [_nonNilParameters containsObject:@"content"];

    if ((predictedItem7 & 1) == 0)
    {
LABEL_21:
      actionKey = [actionCopy actionKey];
      v45 = [_ATXActionUtils getActionTypeFromActionKey:actionKey];
      if ([whitelistCopy containsObject:actionKey])
      {
        v24 = 1;
      }

      else
      {
        v24 = [typeWhitelistCopy containsObject:v45];
      }

LABEL_25:
      goto LABEL_26;
    }
  }

  v24 = 0;
LABEL_26:

  v46 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)scoredActionsWithoutLog:(id)log
{
  v19 = *MEMORY[0x277D85DE8];
  logCopy = log;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(logCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = logCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        scoredAction = [v9 scoredAction];
        v11 = [scoredAction copy];

        [v9 score];
        [v11 setScore:?];
        [v4 addObject:v11];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)penalizeMultipleActionsPerAppAndKeepSorted:(id)sorted
{
  v30 = *MEMORY[0x277D85DE8];
  sortedCopy = sorted;
  v24 = +[_ATXGlobals sharedInstance];
  v3 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = sortedCopy;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = MEMORY[0x277CEB7F8];
        scoredAction = [v8 scoredAction];
        predictedItem = [scoredAction predictedItem];
        LOBYTE(v9) = [v9 isActionEligibleForAnySettingsSuggestions:predictedItem];

        if ((v9 & 1) == 0)
        {
          scoredAction2 = [v8 scoredAction];
          predictedItem2 = [scoredAction2 predictedItem];
          bundleId = [predictedItem2 bundleId];

          v15 = [v3 objectForKeyedSubscript:bundleId];
          integerValue = [v15 integerValue];

          v17 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
          [v3 setObject:v17 forKeyedSubscript:bundleId];

          if (integerValue >= 1)
          {
            [v24 penaltyForMultipleActionsPerApp];
            v19 = v18;
            [v8 score];
            v21 = v19 + v20;
            *&v21 = v21;
            [v8 setScore:v21];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  [ATXActionPredictionsHelpers sortPredictions:v4];
  v22 = *MEMORY[0x277D85DE8];
}

+ (id)sortStageScores:(id)scores
{
  v3 = [scores keysSortedByValueUsingComparator:&__block_literal_global_102_1];

  return v3;
}

uint64_t __40__ATXActionPredictions_sortStageScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

@end