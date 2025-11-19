@interface ATXAppPredictor
@end

@implementation ATXAppPredictor

float __77___ATXAppPredictor__copyValidScoreInputsFromPredictionItem_toPredictionItem___block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = *(*(a1 + 32) + 4 * a2 + 16);
  if (v2 != -31337.0)
  {
    *&v2 = ATXSetInput(*(a1 + 40), a2, v2);
  }

  return *&v2;
}

void __65___ATXAppPredictor_scoreAppsWithFeaturesUsingCoreML_scoreLogger___block_invoke(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  [v5 score];
  v7 = v6;
  v8 = __atxlog_handle_app_prediction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __65___ATXAppPredictor_scoreAppsWithFeaturesUsingCoreML_scoreLogger___block_invoke_cold_1(a2);
  }

  v9 = v7;
  *(a2 + 832) = v9;
  v10 = +[_ATXGlobals sharedInstance];
  [v10 appPredictionMediumConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3332) = v7 >= v11;

  v12 = +[_ATXGlobals sharedInstance];
  [v12 appPredictionHighConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3333) = v7 >= v13;

  if (*(a1 + 32))
  {
    v14 = [v5 intermediateValues];
    if (v14)
    {
      v15 = [v5 intermediateValues];
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = [MEMORY[0x277CBEB38] dictionary];
    }

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    [v16 setObject:v17 forKeyedSubscript:@"TotalScore"];

    v18 = *(a1 + 32);
    v19 = [v5 inputs];
    [v18 logInputs:v19 subscores:v16 forBundleId:*a2];
  }
}

void __84___ATXAppPredictor_scoreActionsWithFeaturesUsingCoreML_consumerSubType_scoreLogger___block_invoke(uint64_t a1, float *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [v5 score];
  v7 = v6;
  v8 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v21 = *a2;
    v22 = *(a1 + 32);
    v23 = 134218498;
    v24 = v7;
    v25 = 2112;
    v26 = v21;
    v27 = 2112;
    v28 = v22;
    _os_log_debug_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEBUG, "Got a score of %f for %@ by model %@", &v23, 0x20u);
  }

  v9 = v7;
  a2[832] = v9;
  v10 = +[_ATXGlobals sharedInstance];
  [v10 actionPredictionMediumConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3332) = v7 >= v11;

  v12 = +[_ATXGlobals sharedInstance];
  [v12 actionPredictionHighConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3333) = v7 >= v13;

  if (*(a1 + 40))
  {
    v14 = [v5 intermediateValues];
    if (v14)
    {
      v15 = [v5 intermediateValues];
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = [MEMORY[0x277CBEB38] dictionary];
    }

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    [v16 setObject:v17 forKeyedSubscript:@"TotalScore"];

    v18 = *(a1 + 40);
    v19 = [v5 inputs];
    [v18 logInputs:v19 subscores:v16 forBundleId:*a2];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52___ATXAppPredictor_scoreAppWithFeaturesUsingCoreML___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [v5 score];
  v7 = v6;
  v8 = __atxlog_handle_app_prediction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __65___ATXAppPredictor_scoreAppsWithFeaturesUsingCoreML_scoreLogger___block_invoke_cold_1(a2);
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
  v9 = +[_ATXGlobals sharedInstance];
  [v9 appPredictionMediumConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3332) = v7 >= v10;

  v11 = +[_ATXGlobals sharedInstance];
  [v11 appPredictionHighConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3333) = v7 >= v12;
}

void __71___ATXAppPredictor_scoreActionWithFeaturesUsingCoreML_consumerSubType___block_invoke(uint64_t a1, uint64_t *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [v5 score];
  v7 = v6;
  v8 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v14 = *a2;
    v15 = *(a1 + 32);
    v16 = 134218498;
    v17 = v7;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    _os_log_debug_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEBUG, "Got a score of %f for %@ by model %@", &v16, 0x20u);
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  v9 = +[_ATXGlobals sharedInstance];
  [v9 actionPredictionMediumConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3332) = v7 >= v10;

  v11 = +[_ATXGlobals sharedInstance];
  [v11 actionPredictionHighConfidenceThresholdForBlendingLayerCoreML];
  *(a2 + 3333) = v7 >= v12;

  v13 = *MEMORY[0x277D85DE8];
}

float __119___ATXAppPredictor__getPredictionForItems_clipBundleIdsToRank_consumerSubType_intent_scoreLogger_context_featureCache___block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = *(*(*(a1 + 64) + 8) + 48);
  if (0x13A524387AC82261 * ((*(*(*(a1 + 64) + 8) + 56) - v2) >> 3) <= a2 || ([*(a1 + 32) _predictionScoreAndUpdateConfidenceForItem:v2 + 3336 * a2 interpreter:*(a1 + 40) consumerSubType:*(a1 + 72) scoreLogger:*(a1 + 48) intentType:*(a1 + 56)], v6 = *(*(*(a1 + 64) + 8) + 48), 0x13A524387AC82261 * ((*(*(*(a1 + 64) + 8) + 56) - v6) >> 3) <= a2))
  {
    std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
  }

  result = v5;
  *(v6 + 3336 * a2 + 3328) = result;
  return result;
}

void __49___ATXAppPredictor_inputScoresForPredictionItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 4 * a2 + 16);
  v4 = [_ATXScoreTypes stringForScoreInput:a2];
  [v2 setScore:v3 forKey:?];
}

uint64_t __32___ATXAppPredictor_initInternal__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initAppLaunchAndInstallMonitors];
  [*(a1 + 32) _initDependencies];
  v2 = *(a1 + 32);

  return [v2 _initFeaturizers];
}

void __36___ATXAppPredictor__updateFromAsset__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 192) abGroupIdentifierForConsumerSubType:a2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v6 = v5;

  [*(a1 + 40) addObject:v6];
}

void __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 136));
  if ((v1 & 1) == 0)
  {
    v3 = +[_ATXAppInfoManager sharedInstance];
    v4 = objc_opt_new();
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v7 = objc_alloc_init(ATXPredictionContextBuilder);
    v8 = *(a1 + 32);
    v9 = *(v8 + 72);
    *(v8 + 72) = v7;

    v10 = [_ATXAppLaunchMonitor alloc];
    v11 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v12 = +[_ATXAppLaunchSequenceManager sharedInstance];
    v13 = *(*(a1 + 32) + 56);
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    v16 = *(*(a1 + 32) + 72);
    v17 = objc_opt_new();
    v18 = [(_ATXAppLaunchMonitor *)v10 initWithAppInfoManager:v3 appLaunchHistogramManager:v11 appLaunchSequenceManager:v12 appDailyDose:v13 appInFocusStream:v14 displayOnIntervalStream:v15 contextBuilder:v16 tracker:v17];
    v19 = *(a1 + 32);
    v20 = *(v19 + 80);
    *(v19 + 80) = v18;

    [*(*(a1 + 32) + 80) start];
    v21 = __atxlog_handle_app_prediction();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke_cold_1();
    }

    v22 = +[ATXAppLaunchLogger sharedInstance];
    v23 = *(a1 + 32);
    v24 = *(v23 + 104);
    *(v23 + 104) = v22;

    v25 = objc_opt_new();
    v26 = *(a1 + 32);
    v27 = *(v26 + 48);
    *(v26 + 48) = v25;

    v28 = [ATXAppIntentMonitor alloc];
    v29 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v30 = +[_ATXAppLaunchSequenceManager sharedInstance];
    v31 = +[_ATXDataStore sharedInstance];
    v32 = [(ATXAppIntentMonitor *)v28 initWithAppLaunchHistogramManager:v29 appInfoManager:v3 appActionLaunchSequenceManager:v30 dataStore:v31];
    v33 = *(a1 + 32);
    v34 = *(v33 + 88);
    *(v33 + 88) = v32;

    [*(*(a1 + 32) + 88) start];
    v35 = __atxlog_handle_default();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke_cold_2();
    }

    objc_storeStrong((*(a1 + 32) + 176), v3);
    v36 = [[_ATXAppInstallMonitor alloc] initWithAppInfoManager:*(*(a1 + 32) + 176)];
    v37 = *(a1 + 32);
    v38 = *(v37 + 96);
    *(v37 + 96) = v36;

    [*(*(a1 + 32) + 96) start];
    v39 = [[_ATXRecentInstallCache alloc] initTrackingAppsMoreRecentThan:300.0];
    v40 = *(a1 + 32);
    v41 = *(v40 + 64);
    *(v40 + 64) = v39;

    atomic_store(1u, (*(a1 + 32) + 136));
    v42 = objc_opt_new();
    v43 = *(a1 + 32);
    v44 = *(v43 + 168);
    *(v43 + 168) = v42;
  }
}

void __37___ATXAppPredictor__initDependencies__block_invoke(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 137));
  if ((v1 & 1) == 0)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = *(v7 + 216);
    *(v7 + 216) = v6;

    v9 = +[ATXBBNotificationManager sharedInstance];
    v10 = *(a1 + 32);
    v11 = *(v10 + 120);
    *(v10 + 120) = v9;

    v12 = objc_opt_new();
    v13 = *(a1 + 32);
    v14 = *(v13 + 184);
    *(v13 + 184) = v12;

    atomic_store(1u, (*(a1 + 32) + 137));
  }
}

void __200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 152);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = +[ATXDigitalHealthBlacklist sharedInstance];
  v9 = [v8 blacklistedBundleIds];
  v65 = [v4 _appsToPredictWithConsumerSubType:v2 intent:v3 candidateBundleIdentifiers:v5 allSBApps:v6 appPredictionBlacklist:v7 digitalHealthBlacklist:v9];

  v10 = objc_opt_new();
  if ([MEMORY[0x277CEBCF0] consumerTypeForSubType:*(a1 + 152)] == 8)
  {
    v11 = +[ATXHistogramBundleIdTable sharedInstance];
    v12 = *(a1 + 72);
    if (v12)
    {
      v13 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 72)];
    }

    else
    {
      v13 = 0;
    }

    v22 = [_ATXActionUtils actionKeyFilterForCandidateBundleIds:v65 candidateActionTypes:v13 blacklist:*(*(a1 + 32) + 160)];
    v21 = [v11 allKeysFilteredBy:v22];

    if (v12)
    {
    }
  }

  else
  {
    v14 = [v65 allObjects];
    if (+[ATXHeroClipManager clipsSupported])
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v15 = [MEMORY[0x277CFA6E8] appClips];
      v16 = [v15 countByEnumeratingWithState:&v70 objects:v81 count:16];
      if (v16)
      {
        v17 = *v71;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v71 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = [*(*(&v70 + 1) + 8 * i) bundleIdentifier];
            [v10 addObject:v19];
          }

          v16 = [v15 countByEnumeratingWithState:&v70 objects:v81 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v20 = __atxlog_handle_hero();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "Not predicting installed App Clips, since not allowed by MCProfileConnection", buf, 2u);
      }
    }

    v21 = v14;
  }

  v66 = [_ATXAppPredictor pruneItemsToRankForConsumerSubType:*(a1 + 152) itemsToRank:v21 datastore:*(a1 + 80)];

  v23 = *(a1 + 32);
  if (v23)
  {
    [v23 _getPredictionForItems:v66 clipBundleIdsToRank:v10 consumerSubType:*(a1 + 152) intent:*(a1 + 40) scoreLogger:*(a1 + 88) context:*(a1 + 96) featureCache:*(a1 + 104)];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v24 = *(a1 + 120);
  std::vector<ATXPredictionItem>::__vdeallocate(v24);
  *v24 = *buf;
  *(v24 + 16) = *&buf[16];
  memset(buf, 0, sizeof(buf));
  v74 = buf;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v74);
  v25 = __atxlog_handle_default();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 32);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:*(a1 + 152)];
    v30 = [v66 count];
    v31 = [v10 count];
    v32 = 0x13A524387AC82261 * ((*(*(a1 + 120) + 8) - **(a1 + 120)) >> 3);
    *buf = 138544386;
    *&buf[4] = v28;
    *&buf[12] = 2114;
    *&buf[14] = v29;
    *&buf[22] = 2050;
    v76 = v30;
    v77 = 2050;
    v78 = v31;
    v79 = 2050;
    v80 = v32;
    _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - finished app predictions for consumerSubType: %{public}@, num app candidates: %{public}lu, num clip candidates: %{public}lu, num predicted items: %{public}lu", buf, 0x34u);
  }

  v67 = objc_alloc_init(MEMORY[0x277CEB7C8]);
  v33 = objc_alloc(MEMORY[0x277CEB550]);
  v34 = [*(*(a1 + 32) + 208) objectAtIndexedSubscript:*(a1 + 152)];
  v35 = [v33 initWithABGroup:v34 assetVersion:{objc_msgSend(MEMORY[0x277CEB3C0], "version")}];

  v36 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v37 = [v36 histogramForLaunchType:0];

  v38 = *(a1 + 128);
  if (v38 && *(*(a1 + 120) + 8) != **(a1 + 120))
  {
    v39 = 0;
    v40 = 0;
    v41 = 3328;
    do
    {
      v42 = objc_autoreleasePoolPush();
      v43 = *(**(a1 + 120) + v41 - 3328);
      if ([MEMORY[0x277CEBCF0] consumerTypeForSubType:*(a1 + 152)] == 8 || ATXShouldPredictBundle(*(*(a1 + 32) + 176), v43, v37))
      {
        if (v43)
        {
          LODWORD(v44) = *(**(a1 + 120) + v41);
          [v67 recordPrediction:v43 score:v44];
          v45 = **(a1 + 120) + v41;
          LODWORD(v46) = *v45;
          [v35 recordPrediction:v43 actionHash:0 totalScore:v45 - 3312 scoreInputs:*(v45 + 4) isMediumConfidenceForBlendingLayer:*(v45 + 5) isHighConfidenceForBlendingLayer:v46];
        }

        ++v39;
      }

      objc_autoreleasePoolPop(v42);
      v38 = *(a1 + 128);
      if (v38 <= v39)
      {
        break;
      }

      ++v40;
      v41 += 3336;
    }

    while (0x13A524387AC82261 * ((*(*(a1 + 120) + 8) - **(a1 + 120)) >> 3) > v40);
  }

  v47 = *(a1 + 136);
  if (v47)
  {
    v48 = *(a1 + 120);
    v49 = +[_ATXGlobals sharedInstance];
    ATXKeepRandomPredictionItemsBelowLimit(v48, v38, v47, [v49 numberOfRandomAppActionTypesToKeepForLogging]);
  }

  v50 = [ATXAppPredictorPredictionChunks alloc];
  v51 = [v67 finish];
  v52 = [v35 finish];
  v53 = [(ATXAppPredictorPredictionChunks *)v50 initWithPredictionSetChunk:v51 feedbackStateChunk:v52];
  v54 = *(*(a1 + 112) + 8);
  v55 = *(v54 + 40);
  *(v54 + 40) = v53;

  if ([MEMORY[0x277CEBCF0] consumerTypeForSubType:*(a1 + 152)] != 8)
  {
    v56 = atomic_load((*(a1 + 32) + 136));
    if (v56)
    {
      v57 = [*(*(a1 + 32) + 176) allAppsWithInstallDate];
      if ([v57 count])
      {
LABEL_45:

        goto LABEL_46;
      }

      v58 = _ZZZ200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache__EUb_E23hasRunFirstTimeTraining;

      if ((v58 & 1) == 0)
      {
        _ZZZ200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache__EUb_E23hasRunFirstTimeTraining = 1;
        v59 = __atxlog_handle_default();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2263AA000, v59, OS_LOG_TYPE_INFO, "Since app prediction expert has never been trained, training in background.", buf, 2u);
        }

        sel_getName(*(a1 + 144));
        v60 = os_transaction_create();
        v61 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v57 = dispatch_queue_attr_make_with_qos_class(v61, QOS_CLASS_BACKGROUND, 0);

        v62 = dispatch_queue_create("ATXAppPrediction-initialTrain", v57);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache___block_invoke_188;
        block[3] = &unk_2785A0168;
        block[4] = *(a1 + 32);
        v69 = v60;
        v63 = v60;
        dispatch_async(v62, block);

        goto LABEL_45;
      }
    }
  }

LABEL_46:

  v64 = *MEMORY[0x277D85DE8];
}

id __200___ATXAppPredictor_predictWithLimit_consumerSubType_intent_candidateBundleIdentifiers_candidateActiontypes_scoreLogger_predictionItemsToKeep_predictedItemsOutParameter_context_datastore_featureCache___block_invoke_188(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) train];
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 40);
  return objc_opt_self();
}

id __161___ATXAppPredictor_receiveFeedbackForConsumerType_consumerSubType_atxResponse_engagementType_engagedBundleId_bundleIdsShown_explicitlyRejectedBundleIds_context___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) objectAtIndexedSubscript:*(a1 + 112)];
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = [ATXAppPredictionFeedbackItem feedbackItemsForResponse:*(a1 + 40)];
  v9 = *(*(*(a1 + 88) + 8) + 40);
  [ATXAppPredictorFeedback receiveFeedbackForConsumerType:v6 consumerSubType:v7 feedbackItemsForResponse:v8 engagementType:*(a1 + 104) engagedBundleId:*(a1 + 48) bundleIdsShown:*(a1 + 56) explicitlyRejectedBundleIds:*(a1 + 64) abGroupIdentifier:v9 context:*(a1 + 72)];

  objc_autoreleasePoolPop(v5);
  v10 = *(a1 + 80);
  return objc_opt_self();
}

void __34___ATXAppPredictor_trainWithTask___block_invoke(uint64_t a1)
{
  v137 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "Training app prediction expert", buf, 2u);
  }

  v3 = +[_ATXDataStore sharedInstance];
  v4 = +[_ATXGlobals sharedInstance];
  v5 = +[ATXHeroAndClipConstants sharedInstance];
  v6 = __atxlog_handle_default();
  v7 = os_signpost_id_generate(v6);

  v8 = __atxlog_handle_default();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 136446210;
    v136 = "TOP_LEVEL";
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
  }

  v10 = os_transaction_create();
  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "Checking data store integrity", buf, 2u);
  }

  [v3 integrityCheckOrAbort];
  v12 = __atxlog_handle_default();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "Check for actions without titles", buf, 2u);
  }

  [v3 removeActionsWithoutTitle];
  v13 = __atxlog_handle_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __34___ATXAppPredictor_trainWithTask___block_invoke_cold_1();
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [*(a1 + 32) appInstallMonitor];
  [v15 train];

  objc_autoreleasePoolPop(v14);
  if ([*(a1 + 40) didDefer])
  {
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "App prediction training deferring after app install monitor training";
LABEL_29:
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  [*(a1 + 40) setProgressUnits:20];
  v18 = __atxlog_handle_default();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __34___ATXAppPredictor_trainWithTask___block_invoke_cold_2();
  }

  v19 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 48) train];
  objc_autoreleasePoolPop(v19);
  if (![*(a1 + 40) didDefer])
  {
    [*(a1 + 40) setProgressUnits:30];
    v20 = objc_autoreleasePoolPush();
    [*(*(a1 + 32) + 184) train];
    objc_autoreleasePoolPop(v20);
    if ([*(a1 + 40) didDefer])
    {
      v16 = __atxlog_handle_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "App prediction training deferring after micro location training";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    [*(a1 + 40) setProgressUnits:40];
    v21 = objc_autoreleasePoolPush();
    [*(*(a1 + 32) + 56) train];
    objc_autoreleasePoolPop(v21);
    if ([*(a1 + 40) didDefer])
    {
      v16 = __atxlog_handle_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "App prediction training deferring after app daily dose training";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    [*(a1 + 40) setProgressUnits:50];
    v22 = objc_autoreleasePoolPush();
    [*(*(a1 + 32) + 176) train];
    objc_autoreleasePoolPop(v22);
    if ([*(a1 + 40) didDefer])
    {
      v16 = __atxlog_handle_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "App prediction training deferring after app info manager training";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    [*(a1 + 40) setProgressUnits:60];
    v24 = __atxlog_handle_default();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __34___ATXAppPredictor_trainWithTask___block_invoke_cold_3();
    }

    v16 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v134 = +[_ATXAppLaunchSequenceManager sharedInstance];
    v133 = +[ATXHistogramBundleIdTable sharedInstance];
    v25 = [[ATXPredictionDataHistograms alloc] initWithAppInfoManager:*(*(a1 + 32) + 176) bundleIdTable:v133 launchSequenceManager:v134 histogramManager:v16];
    [(ATXPredictionDataHistograms *)v25 verifyHistograms];
    if ([*(a1 + 40) didDefer])
    {
      v26 = __atxlog_handle_default();
      if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v27 = "App prediction training deferring after histogram verification";
LABEL_47:
        _os_log_impl(&dword_2263AA000, &v26->super, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
      }
    }

    else
    {
      [*(a1 + 40) setProgressUnits:70];
      v28 = [(ATXPredictionDataHistograms *)v25 appLaunchHistogram];
      [v4 appLaunchDecayHalflife];
      [v28 decayWithHalfLifeInDays:?];

      v29 = [(ATXPredictionDataHistograms *)v25 spotlightLaunchHistogram];
      [v4 spotlightLaunchDecayHalflife];
      [v29 decayWithHalfLifeInDays:?];

      v30 = [(ATXPredictionDataHistograms *)v25 homescreenLaunchHistogram];
      [v4 homescreenLaunchDecayHalflife];
      [v30 decayWithHalfLifeInDays:?];

      v31 = [(ATXPredictionDataHistograms *)v25 appDirectoryLaunchHistogram];
      [v4 appDirectoryLaunchDecayHalflife];
      [v31 decayWithHalfLifeInDays:?];

      v32 = [(ATXPredictionDataHistograms *)v25 airplaneModeLaunchHistogram];
      [v4 airplaneModeLaunchDecayHalflife];
      [v32 decayWithHalfLifeInDays:?];

      v33 = [(ATXPredictionDataHistograms *)v25 trendingLaunchHistogram];
      [v4 trendingLaunchDecayHalflife];
      [v33 decayWithHalfLifeInDays:?];

      v34 = [(ATXPredictionDataHistograms *)v25 wifiLaunchHistogram];
      [v4 wifiSSIDLaunchDecayHalflife];
      [v34 decayWithHalfLifeInDays:?];

      v35 = [(ATXPredictionDataHistograms *)v25 coreMotionLaunchHistogram];
      [v4 coreMotionLaunchDecayHalflife];
      [v35 decayWithHalfLifeInDays:?];

      v36 = [(ATXPredictionDataHistograms *)v25 timeAndDayHistogram];
      [v4 timeAndDayAppLaunchesDecayHalflife];
      [v36 decayWithHalfLifeInDays:?];

      v37 = [(ATXPredictionDataHistograms *)v25 notificationsHistoryHistogram];
      [v4 notificationsHistoryDecayHalflife];
      [v37 decayWithHalfLifeInDays:?];

      v38 = [(ATXPredictionDataHistograms *)v25 appCoarseTimePOWLocationLaunchesHistogram];
      [v4 appAndActionCoarseTimePowLocationDecayHalflife];
      [v38 decayWithHalfLifeInDays:?];

      v39 = [(ATXPredictionDataHistograms *)v25 appSpecificTimeDOWLocationLaunchesHistogram];
      [v4 appAndActionSpecificTimePowLocationDecayHalflife];
      [v39 decayWithHalfLifeInDays:?];

      v40 = [(ATXPredictionDataHistograms *)v25 appCoarseTimePOWLocationConfirmsHistogram];
      [v4 appAndActionCoarseTimePowLocationDecayHalflife];
      [v40 decayWithHalfLifeInDays:?];

      v41 = [(ATXPredictionDataHistograms *)v25 appSpecificTimeDOWLocationConfirmsHistogram];
      [v4 appAndActionSpecificTimePowLocationDecayHalflife];
      [v41 decayWithHalfLifeInDays:?];

      v42 = [(ATXPredictionDataHistograms *)v25 appCoarseTimePOWLocationRejectsHistogram];
      [v4 appAndActionCoarseTimePowLocationDecayHalflife];
      [v42 decayWithHalfLifeInDays:?];

      v43 = [(ATXPredictionDataHistograms *)v25 appSpecificTimeDOWLocationRejectsHistogram];
      [v4 appAndActionSpecificTimePowLocationDecayHalflife];
      [v43 decayWithHalfLifeInDays:?];

      v44 = [(ATXPredictionDataHistograms *)v25 appSpecificGeoHashHistogram];
      [v4 appSpecificGeoHashDecayHalflife];
      [v44 decayWithHalfLifeInDays:?];

      v45 = [(ATXPredictionDataHistograms *)v25 appCoarseGeoHashHistogram];
      [v4 appCoarseGeoHashDecayHalflife];
      [v45 decayWithHalfLifeInDays:?];

      v46 = [(ATXPredictionDataHistograms *)v25 appZoom7GeoHashHistogram];
      [v4 appZoom7GeoHashDecayHalflife];
      [v46 decayWithHalfLifeInDays:?];

      v47 = [(ATXPredictionDataHistograms *)v25 appLaunchesTwoHourTimeInterval];
      [v4 appLaunchesTwoHourTimeIntervalDecayHalflife];
      [v47 decayWithHalfLifeInDays:?];

      v48 = [(ATXPredictionDataHistograms *)v25 appConfirmsTwoHourTimeInterval];
      [v4 appConfirmsTwoHourTimeIntervalDecayHalflife];
      [v48 decayWithHalfLifeInDays:?];

      v49 = [(ATXPredictionDataHistograms *)v25 appRejectsTwoHourTimeInterval];
      [v4 appRejectsTwoHourTimeIntervalDecayHalflife];
      [v49 decayWithHalfLifeInDays:?];

      v50 = [(ATXPredictionDataHistograms *)v25 appConfirmsDayOfWeek];
      [v4 appConfirmsDayOfWeekDecayHalflife];
      [v50 decayWithHalfLifeInDays:?];

      v51 = [(ATXPredictionDataHistograms *)v25 appRejectsDayOfWeek];
      [v4 appRejectsDayOfWeekDecayHalflife];
      [v51 decayWithHalfLifeInDays:?];

      v52 = [(ATXPredictionDataHistograms *)v25 appConfirmsCoarseGeoHash];
      [v4 appConfirmsCoarseGeoHashDecayHalflife];
      [v52 decayWithHalfLifeInDays:?];

      v53 = [(ATXPredictionDataHistograms *)v25 appRejectsCoarseGeoHash];
      [v4 appRejectsCoarseGeoHashDecayHalflife];
      [v53 decayWithHalfLifeInDays:?];

      v54 = [(ATXPredictionDataHistograms *)v25 appConfirmsSpecificGeoHash];
      [v4 appConfirmsSpecificGeoHashDecayHalflife];
      [v54 decayWithHalfLifeInDays:?];

      v55 = [(ATXPredictionDataHistograms *)v25 appRejectsSpecificGeoHash];
      [v4 appRejectsSpecificGeoHashDecayHalflife];
      [v55 decayWithHalfLifeInDays:?];

      v56 = [(ATXPredictionDataHistograms *)v25 appExplicitRejectsCoarseTimePOWLocationHistogram];
      [v4 appExplicitRejectsCoarseTimePOWLocationDecayHalflife];
      [v56 decayWithHalfLifeInDays:?];

      v57 = [(ATXPredictionDataHistograms *)v25 appClipsFeedbackHistogram];
      [v5 appClipsFeedbackHistogramHalfLifeInDays];
      [v57 decayWithHalfLifeInDays:?];

      v58 = [(ATXPredictionDataHistograms *)v25 unlockTimeHistogram];
      [v4 unlockTimeDecayHalflife];
      [v58 decayWithHalfLifeInDays:?];

      v59 = [(ATXPredictionDataHistograms *)v25 dayOfWeekLaunchHistogram];
      [v4 dayOfWeekLaunchDecayHalflife];
      [v59 decayWithHalfLifeInDays:?];

      v60 = [(ATXPredictionDataHistograms *)v25 homeScreenAppConfirmsCoarseTimePOWLocationHistogram];
      [v4 homeScreenAppConfirmsCoarseTimePOWLocationDecayHalflife];
      [v60 decayWithHalfLifeInDays:?];

      v61 = [(ATXPredictionDataHistograms *)v25 homeScreenAppConfirmsSpecificTimeDOWLocationHistogram];
      [v4 homeScreenAppConfirmsSpecificTimeDOWLocationDecayHalflife];
      [v61 decayWithHalfLifeInDays:?];

      v62 = [(ATXPredictionDataHistograms *)v25 homeScreenAppConfirmsTwoHourTimeIntervalHistogram];
      [v4 homeScreenAppConfirmsTwoHourTimeIntervalDecayHalflife];
      [v62 decayWithHalfLifeInDays:?];

      v63 = [(ATXPredictionDataHistograms *)v25 homeScreenAppConfirmsDayOfWeekHistogram];
      [v4 homeScreenAppConfirmsDayOfWeekDecayHalflife];
      [v63 decayWithHalfLifeInDays:?];

      v64 = [(ATXPredictionDataHistograms *)v25 homeScreenAppConfirmsCoarseGeohashHistogram];
      [v4 homeScreenAppConfirmsCoarseGeohashDecayHalflife];
      [v64 decayWithHalfLifeInDays:?];

      v65 = [(ATXPredictionDataHistograms *)v25 homeScreenAppConfirmsSpecificGeohashHistogram];
      [v4 homeScreenAppConfirmsSpecificGeohashDecayHalflife];
      [v65 decayWithHalfLifeInDays:?];

      v66 = [(ATXPredictionDataHistograms *)v25 homeScreenAppRejectsCoarseTimePOWLocationHistogram];
      [v4 homeScreenAppRejectsCoarseTimePOWLocationDecayHalflife];
      [v66 decayWithHalfLifeInDays:?];

      v67 = [(ATXPredictionDataHistograms *)v25 homeScreenAppRejectsSpecificTimeDOWLocationHistogram];
      [v4 homeScreenAppRejectsSpecificTimeDOWLocationDecayHalflife];
      [v67 decayWithHalfLifeInDays:?];

      v68 = [(ATXPredictionDataHistograms *)v25 homeScreenAppRejectsTwoHourTimeIntervalHistogram];
      [v4 homeScreenAppRejectsTwoHourTimeIntervalDecayHalflife];
      [v68 decayWithHalfLifeInDays:?];

      v69 = [(ATXPredictionDataHistograms *)v25 homeScreenAppRejectsDayOfWeekHistogram];
      [v4 homeScreenAppRejectsDayOfWeekDecayHalflife];
      [v69 decayWithHalfLifeInDays:?];

      v70 = [(ATXPredictionDataHistograms *)v25 homeScreenAppRejectsCoarseGeohashHistogram];
      [v4 homeScreenAppRejectsCoarseGeohashDecayHalflife];
      [v70 decayWithHalfLifeInDays:?];

      v71 = [(ATXPredictionDataHistograms *)v25 homeScreenAppRejectsSpecificGeohashHistogram];
      [v4 homeScreenAppRejectsSpecificGeohashDecayHalflife];
      [v71 decayWithHalfLifeInDays:?];

      v72 = [(ATXPredictionDataHistograms *)v25 homeScreenAppExplicitRejectsCoarseTimePOWLocationHistogram];
      [v4 homeScreenAppExplicitRejectsCoarseTimePOWLocationDecayHalflife];
      [v72 decayWithHalfLifeInDays:?];

      v73 = [(ATXPredictionDataHistograms *)v25 appDirectoryConfirmsCoarseTimePOWLocationHistogram];
      [v4 appDirectoryConfirmsCoarseTimePOWLocationDecayHalflife];
      [v73 decayWithHalfLifeInDays:?];

      v74 = [(ATXPredictionDataHistograms *)v25 appDirectoryConfirmsSpecificTimeDOWLocationHistogram];
      [v4 appDirectoryConfirmsSpecificTimeDOWLocationDecayHalflife];
      [v74 decayWithHalfLifeInDays:?];

      v75 = [(ATXPredictionDataHistograms *)v25 appDirectoryConfirmsTwoHourTimeIntervalHistogram];
      [v4 appDirectoryConfirmsTwoHourTimeIntervalDecayHalflife];
      [v75 decayWithHalfLifeInDays:?];

      v76 = [(ATXPredictionDataHistograms *)v25 appDirectoryConfirmsDayOfWeekHistogram];
      [v4 appDirectoryConfirmsDayOfWeekDecayHalflife];
      [v76 decayWithHalfLifeInDays:?];

      v77 = [(ATXPredictionDataHistograms *)v25 appDirectoryConfirmsCoarseGeohashHistogram];
      [v4 appDirectoryConfirmsCoarseGeohashDecayHalflife];
      [v77 decayWithHalfLifeInDays:?];

      v78 = [(ATXPredictionDataHistograms *)v25 appDirectoryConfirmsSpecificGeohashHistogram];
      [v4 appDirectoryConfirmsSpecificGeohashDecayHalflife];
      [v78 decayWithHalfLifeInDays:?];

      v79 = [(ATXPredictionDataHistograms *)v25 appDirectoryRejectsCoarseTimePOWLocationHistogram];
      [v4 appDirectoryRejectsCoarseTimePOWLocationDecayHalflife];
      [v79 decayWithHalfLifeInDays:?];

      v80 = [(ATXPredictionDataHistograms *)v25 appDirectoryRejectsSpecificTimeDOWLocationHistogram];
      [v4 appDirectoryRejectsSpecificTimeDOWLocationDecayHalflife];
      [v80 decayWithHalfLifeInDays:?];

      v81 = [(ATXPredictionDataHistograms *)v25 appDirectoryRejectsTwoHourTimeIntervalHistogram];
      [v4 appDirectoryRejectsTwoHourTimeIntervalDecayHalflife];
      [v81 decayWithHalfLifeInDays:?];

      v82 = [(ATXPredictionDataHistograms *)v25 appDirectoryRejectsDayOfWeekHistogram];
      [v4 appDirectoryRejectsDayOfWeekDecayHalflife];
      [v82 decayWithHalfLifeInDays:?];

      v83 = [(ATXPredictionDataHistograms *)v25 appDirectoryRejectsCoarseGeohashHistogram];
      [v4 appDirectoryRejectsCoarseGeohashDecayHalflife];
      [v83 decayWithHalfLifeInDays:?];

      v84 = [(ATXPredictionDataHistograms *)v25 appDirectoryRejectsSpecificGeohashHistogram];
      [v4 appDirectoryRejectsSpecificGeohashDecayHalflife];
      [v84 decayWithHalfLifeInDays:?];

      v85 = [(ATXPredictionDataHistograms *)v25 appDirectoryExplicitRejectsCoarseTimePOWLocationHistogram];
      [v4 appDirectoryExplicitRejectsCoarseTimePOWLocationDecayHalflife];
      [v85 decayWithHalfLifeInDays:?];

      [v4 launchSequenceDecayHalflife];
      [v134 decayAllLaunchSequencesWithHalfLifeInDays:?];
      [v4 appActionLaunchSequenceDecayHalflife];
      [v134 decayAllAppActionLaunchSequencesWithHalfLifeInDays:?];
      v86 = [(ATXPredictionDataHistograms *)v25 appIntentLaunchHistogram];
      [v4 appActionLaunchDecayHalflife];
      [v86 decayWithHalfLifeInDays:?];

      v87 = [(ATXPredictionDataHistograms *)v25 appIntentAirplaneModeLaunchHistogram];
      [v4 appActionAirplaneModeLaunchDecayHalflife];
      [v87 decayWithHalfLifeInDays:?];

      v88 = [(ATXPredictionDataHistograms *)v25 appIntentTrendingLaunchHistogram];
      [v4 appActionTrendingLaunchDecayHalflife];
      [v88 decayWithHalfLifeInDays:?];

      v89 = [(ATXPredictionDataHistograms *)v25 appIntentWifiHistogram];
      [v4 appActionWifiSSIDLaunchDecayHalflife];
      [v89 decayWithHalfLifeInDays:?];

      v90 = [(ATXPredictionDataHistograms *)v25 appIntentCoreMotionLaunchHistogram];
      [v4 appActionCoreMotionLaunchDecayHalflife];
      [v90 decayWithHalfLifeInDays:?];

      v91 = [(ATXPredictionDataHistograms *)v25 appIntentUnlockTimeHistogram];
      [v4 appActionUnlockTimeDecayHalflife];
      [v91 decayWithHalfLifeInDays:?];

      v92 = [(ATXPredictionDataHistograms *)v25 appIntentDayOfWeekHistogram];
      [v4 appActionDayOfWeekLaunchDecayHalflife];
      [v92 decayWithHalfLifeInDays:?];

      v93 = [(ATXPredictionDataHistograms *)v25 appForAllIntentsLaunchHistogram];
      [v4 appActionLaunchDecayHalflife];
      [v93 decayWithHalfLifeInDays:?];

      v94 = [(ATXPredictionDataHistograms *)v25 appForAllIntentsAirplaneModeLaunchHistogram];
      [v4 appActionAirplaneModeLaunchDecayHalflife];
      [v94 decayWithHalfLifeInDays:?];

      v95 = [(ATXPredictionDataHistograms *)v25 appForAllIntentsTrendingLaunchHistogram];
      [v4 appActionTrendingLaunchDecayHalflife];
      [v95 decayWithHalfLifeInDays:?];

      v96 = [(ATXPredictionDataHistograms *)v25 appForAllIntentsWifiHistogram];
      [v4 appActionWifiSSIDLaunchDecayHalflife];
      [v96 decayWithHalfLifeInDays:?];

      v97 = [(ATXPredictionDataHistograms *)v25 appForAllIntentsUnlockTimeHistogram];
      [v4 appActionUnlockTimeDecayHalflife];
      [v97 decayWithHalfLifeInDays:?];

      v98 = [(ATXPredictionDataHistograms *)v25 appForAllIntentsDayOfWeekHistogram];
      [v4 appActionDayOfWeekLaunchDecayHalflife];
      [v98 decayWithHalfLifeInDays:?];

      v99 = [(ATXPredictionDataHistograms *)v25 appForAllIntentsCoreMotionLaunchHistogram];
      [v4 appActionCoreMotionLaunchDecayHalflife];
      [v99 decayWithHalfLifeInDays:?];

      v100 = [(ATXPredictionDataHistograms *)v25 poiCategoryHistogram];
      [v4 poiCategoryDecayHalfLife];
      [v100 decayWithHalfLifeInDays:?];

      v101 = [(ATXPredictionDataHistograms *)v25 documentOpenHistogram];
      [v4 documentOpenDecayHalflife];
      [v101 decayWithHalfLifeInDays:?];

      v102 = [(ATXPredictionDataHistograms *)v25 documentDayOfWeekHistogram];
      [v4 documentDayOfWeekDecayHalflife];
      [v102 decayWithHalfLifeInDays:?];

      v103 = [(ATXPredictionDataHistograms *)v25 documentUnlockTimeHistogram];
      [v4 documentUnlockTimeDecayHalflife];
      [v103 decayWithHalfLifeInDays:?];

      v104 = [(ATXPredictionDataHistograms *)v25 documentAirplaneModeHistogram];
      [v4 documentAirplaneModeDecayHalflife];
      [v104 decayWithHalfLifeInDays:?];

      v105 = [(ATXPredictionDataHistograms *)v25 documentTrendingOpenHistogram];
      [v4 documentTrendingOpenDecayHalflife];
      [v105 decayWithHalfLifeInDays:?];

      v106 = [(ATXPredictionDataHistograms *)v25 documentConfirmsHistogram];
      [v4 documentConfirmsDecayHalflife];
      [v106 decayWithHalfLifeInDays:?];

      v107 = [(ATXPredictionDataHistograms *)v25 documentRejectsHistogram];
      [v4 documentConfirmsDecayHalflife];
      [v107 decayWithHalfLifeInDays:?];

      v108 = [(ATXPredictionDataHistograms *)v25 documentCategoryOpenHistogram];
      [v4 documentCategoryOpenDecayHalflife];
      [v108 decayWithHalfLifeInDays:?];

      v109 = [(ATXPredictionDataHistograms *)v25 documentCategoryDayOfWeekHistogram];
      [v4 documentCategoryDayOfWeekDecayHalflife];
      [v109 decayWithHalfLifeInDays:?];

      v110 = [(ATXPredictionDataHistograms *)v25 documentCategoryTrendingOpenHistogram];
      [v4 documentCategoryTrendingOpenDecayHalflife];
      [v110 decayWithHalfLifeInDays:?];

      v111 = [(ATXPredictionDataHistograms *)v25 documentWifiOpenHistogram];
      [v4 documentWifiOpenDecayHalflife];
      [v111 decayWithHalfLifeInDays:?];

      v112 = [(ATXPredictionDataHistograms *)v25 documentCoreMotionOpenHistogram];
      [v4 documentCoreMotionOpenDecayHalflife];
      [v112 decayWithHalfLifeInDays:?];

      v113 = [(ATXPredictionDataHistograms *)v25 documentPartOfWeekHistogram];
      [v4 documentPartOfWeekDecayHalflife];
      [v113 decayWithHalfLifeInDays:?];

      v114 = [(ATXPredictionDataHistograms *)v25 documentAmbientLightHistogram];
      [v4 documentAmbientLightDecayHalflife];
      [v114 decayWithHalfLifeInDays:?];

      v115 = [(ATXPredictionDataHistograms *)v25 documentCategoryPartOfWeekHistogram];
      [v4 documentCategoryPartOfWeekDecayHalflife];
      [v115 decayWithHalfLifeInDays:?];

      v116 = __atxlog_handle_default();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
      {
        __34___ATXAppPredictor_trainWithTask___block_invoke_cold_4();
      }

      v117 = +[_ATXFeedback sharedInstance];
      [v117 decayCounts];

      v118 = +[ATXActionFeedback sharedInstance];
      [v118 decayCounts];

      if ([*(a1 + 40) didDefer])
      {
        v26 = __atxlog_handle_default();
        if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v27 = "App prediction training deferring after decaying histograms and feedback";
          goto LABEL_47;
        }
      }

      else
      {
        [*(a1 + 40) setProgressUnits:85];
        [(ATXPredictionDataHistograms *)v25 removeExpiredData];
        if ([*(a1 + 40) didDefer])
        {
          v26 = __atxlog_handle_default();
          if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v27 = "App prediction training deferring after removing expired apps data";
            goto LABEL_47;
          }
        }

        else
        {
          [v3 deleteSamplesThatAreMoreThan28DaysOldFromActionDatabases];
          if (![*(a1 + 40) didDefer])
          {
            v119 = [*(*(a1 + 32) + 176) allApps];
            [v3 trimActionHistoryWithAppWhitelist:v119];

            v120 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(v4, "messageContentTimeElapsed")}];
            [v3 pruneMessageRecipientsAddedBefore:v120];

            v26 = [[ATXExpiredDataProvider alloc] initWithAppInfoManager:*(*(a1 + 32) + 176) histogramBundleIdTable:v133];
            v121 = [(ATXExpiredDataProvider *)v26 expiredBundleIdsAndActionKeys];
            v129 = *(*(a1 + 32) + 176);
            v132 = v121;
            v122 = [v121 expiredBundleIds];
            v123 = v129;
            v130 = v122;
            [v123 removeBundleIds:v122];

            v131 = [v132 expiredBundleIds];
            [v133 removeBundleIds:v131];

            v124 = __atxlog_handle_default();
            v125 = v124;
            if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v126 = v124;
              v127 = os_signpost_enabled(v124);
              v125 = v126;
              if (v127)
              {
                *buf = 136446210;
                v136 = "TOP_LEVEL";
                _os_signpost_emit_with_name_impl(&dword_2263AA000, v126, OS_SIGNPOST_INTERVAL_END, v7, "Train", "Component=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", buf, 0xCu);
                v125 = v126;
              }
            }

            [*(a1 + 40) setProgressUnits:95];
            if ([*(a1 + 40) setDone])
            {
              v128 = __atxlog_handle_default();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2263AA000, v128, OS_LOG_TYPE_DEFAULT, "App prediction training activity successfully set to DONE", buf, 2u);
              }
            }

            else
            {
              v128 = __atxlog_handle_default();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
              {
                __34___ATXAppPredictor_trainWithTask___block_invoke_cold_5();
              }
            }

            goto LABEL_48;
          }

          v26 = __atxlog_handle_default();
          if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v27 = "App prediction training deferring after removing expired actions data";
            goto LABEL_47;
          }
        }
      }
    }

LABEL_48:

    goto LABEL_30;
  }

  v16 = __atxlog_handle_default();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v17 = "App prediction training deferring after app launch location training";
    goto LABEL_29;
  }

LABEL_30:

  v23 = *MEMORY[0x277D85DE8];
}

void __65___ATXAppPredictor_scoreAppsWithFeaturesUsingCoreML_scoreLogger___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52___ATXAppPredictor__initAppLaunchAndInstallMonitors__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __34___ATXAppPredictor_trainWithTask___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end