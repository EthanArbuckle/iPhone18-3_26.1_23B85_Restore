@interface ATXCandidateRelevanceModelConfigApp
- (ATXCandidateRelevanceModelConfigApp)init;
- (BOOL)bundleIdIsEnabledForPrediction:(id)prediction;
- (BOOL)candidateIsStillValidToSuggest:(id)suggest;
- (id)appInstallAgesForAppsWithExcludedApps:(id)apps appInfoManager:(id)manager;
- (id)datasetGenerator;
- (id)heuristicSuggestionsForContext:(id)context currentSuggestionExecutableIds:(id)ids;
- (id)heuristicSuggestionsForContext:(id)context currentSuggestionExecutableIds:(id)ids appInfoManager:(id)manager;
- (id)proactiveSuggestionForBundleId:(id)id prediction:(float)prediction;
- (id)proactiveSuggestionForCandidate:(id)candidate prediction:(float)prediction;
- (id)recentlyInstalledAndNotLaunchedAppsFromAppInfoManager:(id)manager currentSuggestionExecutableIds:(id)ids launchedApps:(id)apps;
- (id)recentlyLaunchedAppsFromAppLaunchAges:(id)ages;
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
    modelTrainingPlanParameters = [(ATXCandidateRelevanceModelConfig *)v2 modelTrainingPlanParameters];
    v5 = [(ATXCandidateRelevanceLogisticRegressionModelTrainingPlan *)v3 initWithParameters:modelTrainingPlanParameters];
    [(ATXCandidateRelevanceModelConfig *)v2 setModelTrainingPlan:v5];

    v6 = objc_opt_new();
    [(ATXCandidateRelevanceModelConfig *)v2 setDatastore:v6];

    v7 = objc_alloc(MEMORY[0x277D42070]);
    v8 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:14];
    v9 = +[ATXClientModelSuggestionReceiver sharedInstance];
    blendingLayerServer = [v9 blendingLayerServer];
    v11 = [v7 initWithClientModelId:v8 blendingLayerServer:blendingLayerServer];
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

- (id)proactiveSuggestionForCandidate:(id)candidate prediction:(float)prediction
{
  identifier = [candidate identifier];
  *&v7 = prediction;
  v8 = [(ATXCandidateRelevanceModelConfigApp *)self proactiveSuggestionForBundleId:identifier prediction:v7];

  return v8;
}

- (id)proactiveSuggestionForBundleId:(id)id prediction:(float)prediction
{
  v6 = MEMORY[0x277D42078];
  idCopy = id;
  v8 = [v6 alloc];
  clientModel = [(ATXCandidateRelevanceModelConfig *)self clientModel];
  clientModelId = [clientModel clientModelId];
  v11 = [v8 initWithClientModelId:clientModelId clientModelVersion:@"1.0" engagementResetPolicy:0];

  v12 = [ATXProactiveSuggestionBuilder _executableSpecForAppWithBundleId:idCopy];
  v13 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:2 suggestedConfidenceCategory:prediction];
  v14 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:2];
  LOWORD(v18) = 1;
  v15 = [objc_alloc(MEMORY[0x277D420A0]) initWithTitle:idCopy subtitle:0 predictionReason:0 preferredLayoutConfigs:v14 allowedOnLockscreen:0 allowedOnHomeScreen:1 allowedOnSpotlight:v18 shouldClearOnEngagement:?];

  v16 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v11 executableSpecification:v12 uiSpecification:v15 scoreSpecification:v13];

  return v16;
}

- (BOOL)candidateIsStillValidToSuggest:(id)suggest
{
  suggestCopy = suggest;
  installedAppsKnownToSpringBoard = [(ATXCandidateRelevanceModelConfig *)self installedAppsKnownToSpringBoard];
  identifier = [suggestCopy identifier];
  v7 = [installedAppsKnownToSpringBoard containsObject:identifier];

  if (v7)
  {
    identifier2 = [suggestCopy identifier];
    v9 = [(ATXCandidateRelevanceModelConfigApp *)self bundleIdIsEnabledForPrediction:identifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)bundleIdIsEnabledForPrediction:(id)prediction
{
  predictionCopy = prediction;
  appBlacklist = [(ATXCandidateRelevanceModelConfigApp *)self appBlacklist];
  disabledBundleIds = [appBlacklist disabledBundleIds];
  v7 = [disabledBundleIds containsObject:predictionCopy];

  appDigitalHealthBlacklist = [(ATXCandidateRelevanceModelConfigApp *)self appDigitalHealthBlacklist];
  blacklistedBundleIds = [appDigitalHealthBlacklist blacklistedBundleIds];
  LODWORD(disabledBundleIds) = [blacklistedBundleIds containsObject:predictionCopy];

  return ((v7 | disabledBundleIds) & 1) == 0;
}

- (id)heuristicSuggestionsForContext:(id)context currentSuggestionExecutableIds:(id)ids
{
  idsCopy = ids;
  contextCopy = context;
  v8 = +[_ATXAppInfoManager sharedInstance];
  v9 = [(ATXCandidateRelevanceModelConfigApp *)self heuristicSuggestionsForContext:contextCopy currentSuggestionExecutableIds:idsCopy appInfoManager:v8];

  return v9;
}

- (id)heuristicSuggestionsForContext:(id)context currentSuggestionExecutableIds:(id)ids appInfoManager:(id)manager
{
  v48 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  idsCopy = ids;
  managerCopy = manager;
  v11 = MEMORY[0x277CBEB98];
  candidateIdentifiersLaunchAge = [contextCopy candidateIdentifiersLaunchAge];
  allKeys = [candidateIdentifiersLaunchAge allKeys];
  v14 = allKeys;
  if (allKeys)
  {
    v15 = allKeys;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = [v11 setWithArray:v15];
  v39 = managerCopy;
  v40 = idsCopy;
  v17 = [(ATXCandidateRelevanceModelConfigApp *)self recentlyInstalledAndNotLaunchedAppsFromAppInfoManager:managerCopy currentSuggestionExecutableIds:idsCopy launchedApps:v16];

  v18 = [v17 subarrayWithRange:{0, objc_msgSend(v17, "count") != 0}];

  v41 = contextCopy;
  candidateIdentifiersLaunchAge2 = [contextCopy candidateIdentifiersLaunchAge];
  v20 = [(ATXCandidateRelevanceModelConfigApp *)self recentlyLaunchedAppsFromAppLaunchAges:candidateIdentifiersLaunchAge2];

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
      executableSpecification = [v26 executableSpecification];
      executableIdentifier = [executableSpecification executableIdentifier];

      if (([v23 containsObject:executableIdentifier] & 1) == 0 && -[ATXCandidateRelevanceModelConfigApp bundleIdIsEnabledForPrediction:](self, "bundleIdIsEnabledForPrediction:", executableIdentifier))
      {
        v29 = __atxlog_handle_relevance_model();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          scoreSpecification = [v26 scoreSpecification];
          [scoreSpecification rawScore];
          *buf = v36;
          v43 = v31;
          v44 = 2112;
          v45 = executableIdentifier;
          v46 = 2048;
          v47 = v33;
          _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "%@ - Scored heuristic with identifier %@ and score: %f.", buf, 0x20u);
        }

        [v22 addObject:v26];
        [v23 addObject:executableIdentifier];
      }

      ++v25;
    }

    while ([v21 count] > v25);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)recentlyInstalledAndNotLaunchedAppsFromAppInfoManager:(id)manager currentSuggestionExecutableIds:(id)ids launchedApps:(id)apps
{
  v48 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  idsCopy = ids;
  appsCopy = apps;
  v11 = objc_opt_new();
  v35 = idsCopy;
  v12 = [idsCopy mutableCopy];
  v34 = appsCopy;
  [v12 unionSet:appsCopy];
  v33 = v12;
  v36 = managerCopy;
  v13 = [(ATXCandidateRelevanceModelConfigApp *)self appInstallAgesForAppsWithExcludedApps:v12 appInfoManager:managerCopy];
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

- (id)appInstallAgesForAppsWithExcludedApps:(id)apps appInfoManager:(id)manager
{
  v29 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  managerCopy = manager;
  installedAppsKnownToSpringBoard = [(ATXCandidateRelevanceModelConfig *)self installedAppsKnownToSpringBoard];
  v9 = [installedAppsKnownToSpringBoard mutableCopy];

  recentInstallCache = [(ATXCandidateRelevanceModelConfigApp *)self recentInstallCache];
  allRecentlyInstalledApplications = [recentInstallCache allRecentlyInstalledApplications];
  [v9 unionSet:allRecentlyInstalledApplications];

  [v9 minusSet:appsCopy];
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
        v19 = [managerCopy appInfoForBundleId:{v18, v24}];
        installDate = [v19 installDate];

        if (installDate)
        {
          installDate2 = [v19 installDate];
          [v12 setObject:installDate2 forKeyedSubscript:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)recentlyLaunchedAppsFromAppLaunchAges:(id)ages
{
  v38 = *MEMORY[0x277D85DE8];
  agesCopy = ages;
  if (agesCopy)
  {
    v5 = objc_opt_new();
    [agesCopy keysSortedByValueUsingComparator:&__block_literal_global_152];
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
        v12 = [agesCopy objectForKeyedSubscript:v11];
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