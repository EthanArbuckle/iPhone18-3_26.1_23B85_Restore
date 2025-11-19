@interface ATXCandidateRelevanceModelConfigApp
- (ATXCandidateRelevanceModelConfigApp)init;
- (BOOL)bundleIdIsEnabledForPrediction:(id)a3;
- (BOOL)candidateIsStillValidToSuggest:(id)a3;
- (id)appInstallAgesForAppsWithExcludedApps:(id)a3 appInfoManager:(id)a4;
- (id)datasetGenerator;
- (id)heuristicSuggestionsForContext:(id)a3 currentSuggestionExecutableIds:(id)a4;
- (id)heuristicSuggestionsForContext:(id)a3 currentSuggestionExecutableIds:(id)a4 appInfoManager:(id)a5;
- (id)proactiveSuggestionForBundleId:(id)a3 prediction:(float)a4;
- (id)proactiveSuggestionForCandidate:(id)a3 prediction:(float)a4;
- (id)recentlyInstalledAndNotLaunchedAppsFromAppInfoManager:(id)a3 currentSuggestionExecutableIds:(id)a4 launchedApps:(id)a5;
- (id)recentlyLaunchedAppsFromAppLaunchAges:(id)a3;
@end

@implementation ATXCandidateRelevanceModelConfigApp

- (ATXCandidateRelevanceModelConfigApp)init
{
  v16.receiver = self;
  v16.super_class = ATXCandidateRelevanceModelConfigApp;
  v2 = [(ATXCandidateRelevanceModelConfig *)&v16 init];
  if (v2)
  {
    v3 = [ATXCandidateRelevanceLogisticRegressionModelTrainingPlan alloc];
    v4 = [(ATXCandidateRelevanceModelConfig *)v2 modelTrainingPlanParameters];
    v5 = [(ATXCandidateRelevanceLogisticRegressionModelTrainingPlan *)v3 initWithParameters:v4];
    [(ATXCandidateRelevanceModelConfig *)v2 setModelTrainingPlan:v5];

    v6 = objc_opt_new();
    [(ATXCandidateRelevanceModelConfig *)v2 setDatastore:v6];

    v7 = objc_alloc(MEMORY[0x277D42070]);
    v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:14];
    v9 = +[ATXClientModelSuggestionReceiver sharedInstance];
    v10 = [v9 blendingLayerServer];
    v11 = [v7 initWithClientModelId:v8 blendingLayerServer:v10];
    [(ATXCandidateRelevanceModelConfig *)v2 setClientModel:v11];

    v12 = +[ATXAppPredictionBlacklist sharedInstance];
    [(ATXCandidateRelevanceModelConfigApp *)v2 setAppBlacklist:v12];

    v13 = +[ATXDigitalHealthBlacklist sharedInstance];
    [(ATXCandidateRelevanceModelConfigApp *)v2 setAppDigitalHealthBlacklist:v13];

    v14 = [[_ATXRecentInstallCache alloc] initTrackingAppsMoreRecentThan:300.0];
    [(ATXCandidateRelevanceModelConfigApp *)v2 setRecentInstallCache:v14];
  }

  return v2;
}

- (id)datasetGenerator
{
  v2 = [ATXCandidateRelevanceModelDatasetGenerator alloc];
  v3 = objc_opt_new();
  v4 = [(ATXCandidateRelevanceModelDatasetGenerator *)v2 initWithConfig:v3];

  return v4;
}

- (id)proactiveSuggestionForCandidate:(id)a3 prediction:(float)a4
{
  v6 = [a3 identifier];
  *&v7 = a4;
  v8 = [(ATXCandidateRelevanceModelConfigApp *)self proactiveSuggestionForBundleId:v6 prediction:v7];

  return v8;
}

- (id)proactiveSuggestionForBundleId:(id)a3 prediction:(float)a4
{
  v6 = MEMORY[0x277D42078];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [(ATXCandidateRelevanceModelConfig *)self clientModel];
  v10 = [v9 clientModelId];
  v11 = [v8 initWithClientModelId:v10 clientModelVersion:@"1.0" engagementResetPolicy:0];

  v12 = [ATXProactiveSuggestionBuilder _executableSpecForAppWithBundleId:v7];
  v13 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:2 suggestedConfidenceCategory:a4];
  v14 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:2];
  LOWORD(v18) = 1;
  v15 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:v7 subtitle:0 predictionReason:0 preferredLayoutConfigs:v14 allowedOnLockscreen:0 allowedOnHomeScreen:1 allowedOnSpotlight:v18 shouldClearOnEngagement:?];

  v16 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v11 executableSpecification:v12 uiSpecification:v15 scoreSpecification:v13];

  return v16;
}

- (BOOL)candidateIsStillValidToSuggest:(id)a3
{
  v4 = a3;
  v5 = [(ATXCandidateRelevanceModelConfig *)self installedAppsKnownToSpringBoard];
  v6 = [v4 identifier];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v4 identifier];
    v9 = [(ATXCandidateRelevanceModelConfigApp *)self bundleIdIsEnabledForPrediction:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)bundleIdIsEnabledForPrediction:(id)a3
{
  v4 = a3;
  v5 = [(ATXCandidateRelevanceModelConfigApp *)self appBlacklist];
  v6 = [v5 disabledBundleIds];
  v7 = [v6 containsObject:v4];

  v8 = [(ATXCandidateRelevanceModelConfigApp *)self appDigitalHealthBlacklist];
  v9 = [v8 blacklistedBundleIds];
  LODWORD(v6) = [v9 containsObject:v4];

  return ((v7 | v6) & 1) == 0;
}

- (id)heuristicSuggestionsForContext:(id)a3 currentSuggestionExecutableIds:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_ATXAppInfoManager sharedInstance];
  v9 = [(ATXCandidateRelevanceModelConfigApp *)self heuristicSuggestionsForContext:v7 currentSuggestionExecutableIds:v6 appInfoManager:v8];

  return v9;
}

- (id)heuristicSuggestionsForContext:(id)a3 currentSuggestionExecutableIds:(id)a4 appInfoManager:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEB98];
  v12 = [v8 candidateIdentifiersLaunchAge];
  v13 = [v12 allKeys];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = [v11 setWithArray:v15];
  v39 = v10;
  v40 = v9;
  v17 = [(ATXCandidateRelevanceModelConfigApp *)self recentlyInstalledAndNotLaunchedAppsFromAppInfoManager:v10 currentSuggestionExecutableIds:v9 launchedApps:v16];

  v18 = [v17 subarrayWithRange:{0, objc_msgSend(v17, "count") != 0}];

  v41 = v8;
  v19 = [v8 candidateIdentifiersLaunchAge];
  v20 = [(ATXCandidateRelevanceModelConfigApp *)self recentlyLaunchedAppsFromAppLaunchAges:v19];

  v37 = v20;
  v38 = v18;
  v21 = [v18 arrayByAddingObjectsFromArray:v20];
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  if ([v21 count])
  {
    v25 = 0;
    *&v24 = 138412802;
    v36 = v24;
    do
    {
      if ([v22 count] >= 2)
      {
        break;
      }

      v26 = [v21 objectAtIndexedSubscript:v25];
      v27 = [v26 executableSpecification];
      v28 = [v27 executableIdentifier];

      if (([v23 containsObject:v28] & 1) == 0 && -[ATXCandidateRelevanceModelConfigApp bundleIdIsEnabledForPrediction:](self, "bundleIdIsEnabledForPrediction:", v28))
      {
        v29 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [v26 scoreSpecification];
          [v32 rawScore];
          *buf = v36;
          v43 = v31;
          v44 = 2112;
          v45 = v28;
          v46 = 2048;
          v47 = v33;
          _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "%@ - Scored heuristic with identifier %@ and score: %f.", buf, 0x20u);
        }

        [v22 addObject:v26];
        [v23 addObject:v28];
      }

      ++v25;
    }

    while ([v21 count] > v25);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)recentlyInstalledAndNotLaunchedAppsFromAppInfoManager:(id)a3 currentSuggestionExecutableIds:(id)a4 launchedApps:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v35 = v9;
  v12 = [v9 mutableCopy];
  v34 = v10;
  [v12 unionSet:v10];
  v33 = v12;
  v36 = v8;
  v13 = [(ATXCandidateRelevanceModelConfigApp *)self appInstallAgesForAppsWithExcludedApps:v12 appInfoManager:v8];
  [v13 keysSortedByValueUsingComparator:&__block_literal_global_14];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v40 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v38 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v37 + 1) + 8 * v18);
      v20 = [v13 objectForKeyedSubscript:v19];
      [v20 timeIntervalSinceNow];
      v22 = v21;

      if (v22 < -14400.0)
      {
        break;
      }

      v23 = __atxlog_handle_relevance_model();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138412802;
        v42 = v25;
        v43 = 2112;
        v44 = v19;
        v45 = 2048;
        v46 = -v22;
        _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "%@ - Found recently installed app with identifier %@ and install age %f.", buf, 0x20u);
      }

      LODWORD(v26) = 1.0;
      v27 = [(ATXCandidateRelevanceModelConfigApp *)self proactiveSuggestionForBundleId:v19 prediction:v26];
      if (v27)
      {
        [v11 addObject:v27];
      }

      else
      {
        v28 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v32 = NSStringFromClass(v29);
          *buf = 138412546;
          v42 = v32;
          v43 = 2112;
          v44 = v19;
          _os_log_error_impl(&dword_2263AA000, v28, OS_LOG_TYPE_ERROR, "%@ - Could not create suggestion for recently installed app with identifier %@.", buf, 0x16u);
        }
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)appInstallAgesForAppsWithExcludedApps:(id)a3 appInfoManager:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ATXCandidateRelevanceModelConfig *)self installedAppsKnownToSpringBoard];
  v9 = [v8 mutableCopy];

  v10 = [(ATXCandidateRelevanceModelConfigApp *)self recentInstallCache];
  v11 = [v10 allRecentlyInstalledApplications];
  [v9 unionSet:v11];

  [v9 minusSet:v6];
  v12 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v7 appInfoForBundleId:{v18, v24}];
        v20 = [v19 installDate];

        if (v20)
        {
          v21 = [v19 installDate];
          [v12 setObject:v21 forKeyedSubscript:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)recentlyLaunchedAppsFromAppLaunchAges:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    [v4 keysSortedByValueUsingComparator:&__block_literal_global_152];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v30 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = [v4 objectForKeyedSubscript:v11];
        [v12 timeIntervalSinceNow];
        v14 = v13;

        if (v14 < -1800.0)
        {
          break;
        }

        v15 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138412802;
          v32 = v17;
          v33 = 2112;
          v34 = v11;
          v35 = 2048;
          v36 = -v14;
          _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "%@ - Found recently launched app with identifier %@ and launch age %f.", buf, 0x20u);
        }

        v18 = v14 * 0.009 / 1800.0 + 0.999;
        *&v18 = v18;
        v19 = [(ATXCandidateRelevanceModelConfigApp *)self proactiveSuggestionForBundleId:v11 prediction:v18];
        if (v19)
        {
          [v5 addObject:v19];
        }

        else
        {
          v20 = __atxlog_handle_relevance_model();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = objc_opt_class();
            v26 = NSStringFromClass(v21);
            *buf = 138412546;
            v32 = v26;
            v33 = 2112;
            v34 = v11;
            _os_log_error_impl(&dword_2263AA000, v20, OS_LOG_TYPE_ERROR, "%@ - Could not create suggestion for recently launched app with identifier %@.", buf, 0x16u);
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    v6 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138412290;
      v32 = v23;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - appLaunchAges is nil, so returning an empty list.", buf, 0xCu);
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v5;
}

@end