@interface ATXFocusModeSignalsMetricLogger
- (ATXFocusModeSignalsMetricLogger)init;
- (id)appScoresForDenyListForMode:(unint64_t)a3;
- (id)appScoresForMode:(unint64_t)a3;
- (id)fetchRelevantBundleIdsWithModeConfigurationUIFlowLoggingEvent:(id)a3 suggestedEntities:(id)a4 candidateEntities:(id)a5 currentEntities:(id)a6;
- (id)widgetScoresForMode:(unint64_t)a3;
- (unint64_t)logWidgetSignalsForMode:(unint64_t)a3 modeAffinitySignals:(id)a4 entitiesLogged:(unint64_t)a5;
- (void)addAppEntitySpecificFeatures:(id)a3 toMetric:(id)a4;
- (void)logFocusModeAppSignalsWithModeConfigurationUIFlowLoggingEvent:(id)a3 xpcActivity:(id)a4;
- (void)logFocusModeWidgetSignalsWithXPCActivity:(id)a3;
- (void)populateAppModeAffinitySignalsForMode:(unint64_t)a3 bundleId:(id)a4 metric:(id)a5;
- (void)populateAppModeDenyListSignalsForMode:(unint64_t)a3 bundleId:(id)a4 metric:(id)a5;
- (void)populateWidgetModeAffinitySignalsForMode:(unint64_t)a3 metric:(id)a4 modeEntity:(id)a5;
@end

@implementation ATXFocusModeSignalsMetricLogger

- (ATXFocusModeSignalsMetricLogger)init
{
  v24.receiver = self;
  v24.super_class = ATXFocusModeSignalsMetricLogger;
  v2 = [(ATXFocusModeSignalsMetricLogger *)&v24 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedAppScores = v2->_cachedAppScores;
    v2->_cachedAppScores = v3;

    v5 = objc_opt_new();
    cachedAppScoresForDenyList = v2->_cachedAppScoresForDenyList;
    v2->_cachedAppScoresForDenyList = v5;

    v7 = objc_opt_new();
    cachedWidgetScores = v2->_cachedWidgetScores;
    v2->_cachedWidgetScores = v7;

    v9 = [MEMORY[0x277CEB440] sharedInstance];
    modeConfigClient = v2->_modeConfigClient;
    v2->_modeConfigClient = v9;

    v11 = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v2->_modeEntityTrialClientWrapper;
    v2->_modeEntityTrialClientWrapper = v11;

    v13 = objc_opt_new();
    modeEntityStore = v2->_modeEntityStore;
    v2->_modeEntityStore = v13;

    v15 = +[ATXGlobalAppModeAffinityModel modelWithAllInstalledAppsKnownToSpringBoard];
    globalAppModeAffinityModel = v2->_globalAppModeAffinityModel;
    v2->_globalAppModeAffinityModel = v15;

    v17 = +[ATXGlobalInterruptingAppModel modelWithAllInstalledAppsKnownToSpringBoard];
    globalInterruptingAppModel = v2->_globalInterruptingAppModel;
    v2->_globalInterruptingAppModel = v17;

    v19 = +[ATXGlobalWidgetPopularityModel modelWithAllAvailableWidgets];
    globalWidgetPopularityModel = v2->_globalWidgetPopularityModel;
    v2->_globalWidgetPopularityModel = v19;

    v21 = objc_opt_new();
    modeAffinityModelsConstants = v2->_modeAffinityModelsConstants;
    v2->_modeAffinityModelsConstants = v21;
  }

  return v2;
}

- (void)logFocusModeAppSignalsWithModeConfigurationUIFlowLoggingEvent:(id)a3 xpcActivity:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 modeConfigurationEntityType])
  {
    modeConfigClient = self->_modeConfigClient;
    v9 = [v6 dndModeUUID];
    v10 = [(ATXDNDModeConfigurationClient *)modeConfigClient atxModeForDNDMode:v9];

    if (v10)
    {
      v44 = v10;
      v11 = [(ATXDNDModeConfigurationClient *)self->_modeConfigClient dndSemanticTypeForATXMode:v10];
      v12 = MEMORY[0x277CBEB98];
      v13 = [v6 currentEntityIdentifiers];
      v14 = [v12 setWithArray:v13];

      v15 = MEMORY[0x277CBEB98];
      v16 = [v6 suggestedEntityIdentifiers];
      v17 = [v15 setWithArray:v16];

      v18 = MEMORY[0x277CBEB98];
      v19 = [v6 candidateEntityIdentifiers];
      v20 = [v18 setWithArray:v19];

      v53 = v17;
      v54 = v20;
      v21 = [(ATXFocusModeSignalsMetricLogger *)self fetchRelevantBundleIdsWithModeConfigurationUIFlowLoggingEvent:v6 suggestedEntities:v17 candidateEntities:v20 currentEntities:v14];
      v42 = v11;
      if (v11)
      {
        v52 = -[ATXDNDModeConfigurationClient iOSAppDenyListForMode:](self->_modeConfigClient, "iOSAppDenyListForMode:", [v11 integerValue]);
        v51 = -[ATXDNDModeConfigurationClient iOSAppAllowListForMode:](self->_modeConfigClient, "iOSAppAllowListForMode:", [v11 integerValue]);
      }

      else
      {
        v51 = MEMORY[0x277CBEBF8];
        v52 = MEMORY[0x277CBEBF8];
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v21;
      v22 = v44;
      v50 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v50)
      {
        v43 = 0;
        v48 = *v56;
        while (2)
        {
          v23 = 0;
          v24 = v43 <= 0x13;
          v25 = 19 - v43;
          v43 += v50;
          if (v24)
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v49 = v26;
          do
          {
            if (*v56 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v55 + 1) + 8 * v23);
            v28 = objc_opt_new();
            [v28 setAbGroup:@"default"];
            [v28 setFocusMode:v22];
            if (([v52 containsObject:v27] & 1) != 0 || objc_msgSend(v6, "modeConfigurationType") == 1)
            {
              [v28 setActiveConfigurationType:{@"DenyList", v42}];
            }

            if (([v51 containsObject:{v27, v42}] & 1) != 0 || !objc_msgSend(v6, "modeConfigurationType"))
            {
              [v28 setActiveConfigurationType:@"AllowList"];
            }

            v29 = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialExperimentId];
            [v28 setExperimentId:v29];

            v30 = [MEMORY[0x277CCABB0] numberWithInt:{-[ATXModeEntityTrialClientWrapper trialDeploymentId](self->_modeEntityTrialClientWrapper, "trialDeploymentId")}];
            [v28 setDeploymentId:v30];

            v31 = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialTreatmentId];
            [v28 setTreatmentId:v31];

            [v28 setAppBundleId:v27];
            [v28 setIsAppCandidateSuggestion:{objc_msgSend(v54, "containsObject:", v27)}];
            [v28 setIsAppRecommendedSuggestion:{objc_msgSend(v53, "containsObject:", v27)}];
            if (([v53 containsObject:v27] & 1) != 0 || objc_msgSend(v54, "containsObject:", v27))
            {
              [v28 setWasAppSuggestedDuringModeSetup:1];
            }

            [v28 setWasAppSuggestionDuringModeSetupAccepted:{objc_msgSend(v14, "containsObject:", v27)}];
            if (![v6 modeConfigurationType])
            {
              [(ATXFocusModeSignalsMetricLogger *)self populateAppModeAffinitySignalsForMode:v22 bundleId:v27 metric:v28];
            }

            if ([v6 modeConfigurationType] == 1)
            {
              [(ATXFocusModeSignalsMetricLogger *)self populateAppModeDenyListSignalsForMode:v22 bundleId:v27 metric:v28];
            }

            v32 = __atxlog_handle_modes();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = objc_opt_class();
              v47 = v33;
              v34 = NSStringFromSelector(a2);
              [v28 coreAnalyticsDictionary];
              v35 = self;
              v36 = v6;
              v37 = v14;
              v39 = v38 = v7;
              *buf = 138412802;
              v60 = v33;
              v61 = 2112;
              v62 = v34;
              v63 = 2112;
              v64 = v39;
              _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_INFO, "[%@][%@] Logging: %@", buf, 0x20u);

              v7 = v38;
              v14 = v37;
              v6 = v36;
              self = v35;

              v22 = v44;
            }

            [v28 logToCoreAnalytics];
            if (v49 == v23)
            {

              goto LABEL_35;
            }

            v40 = [v7 didDefer];

            if (v40)
            {
              goto LABEL_35;
            }

            ++v23;
          }

          while (v50 != v23);
          v50 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

LABEL_35:
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)populateAppModeAffinitySignalsForMode:(unint64_t)a3 bundleId:(id)a4 metric:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(ATXFocusModeSignalsMetricLogger *)self appScoresForMode:a3];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (v11)
  {
    v34 = v10;
    v35 = v8;
    v12 = [v10 objectForKeyedSubscript:v8];
    v13 = [v12 scoreMetadata];
    v14 = [v13 featureVector];

    v32 = [[ATXModeEntityScoringFeatures alloc] initFromJSON:v14];
    v33 = v12;
    v15 = MEMORY[0x277CCABB0];
    v16 = [v12 scoreMetadata];
    [v16 score];
    v17 = [v15 numberWithDouble:?];
    [v9 setEntityModeEntityScore:v17];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        v22 = 0;
        do
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v36 + 1) + 8 * v22);
          v24 = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
          v25 = [v24 objectForKeyedSubscript:v23];

          if (v25)
          {
            v26 = [v14 objectForKeyedSubscript:v25];

            if (v26)
            {
              v27 = [v14 objectForKeyedSubscript:v25];
              [v9 setValue:v27 forKey:v23];
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v20);
    }

    [(ATXFocusModeSignalsMetricLogger *)self addAppEntitySpecificFeatures:v32 toMetric:v9];
    v28 = MEMORY[0x277CCABB0];
    globalInterruptingAppModel = self->_globalInterruptingAppModel;
    [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
    v8 = v35;
    [(ATXGlobalInterruptingAppModel *)globalInterruptingAppModel scoreForBundleId:v35 scalingFactor:?];
    v30 = [v28 numberWithDouble:?];
    [v9 setGlobalInterruptingPrior:v30];

    v10 = v34;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)populateAppModeDenyListSignalsForMode:(unint64_t)a3 bundleId:(id)a4 metric:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(ATXFocusModeSignalsMetricLogger *)self appScoresForDenyListForMode:a3];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (v11)
  {
    v34 = a3;
    v35 = v10;
    v36 = v8;
    v12 = [v10 objectForKeyedSubscript:v8];
    v13 = [v12 scoreMetadata];
    v14 = [v13 featureVector];

    v32 = [[ATXModeEntityScoringFeatures alloc] initFromJSON:v14];
    v33 = v12;
    v15 = MEMORY[0x277CCABB0];
    v16 = [v12 scoreMetadata];
    [v16 score];
    v17 = [v15 numberWithDouble:?];
    [v9 setEntityModeEntityScore:v17];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        v22 = 0;
        do
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v37 + 1) + 8 * v22);
          v24 = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
          v25 = [v24 objectForKeyedSubscript:v23];

          if (v25)
          {
            v26 = [v14 objectForKeyedSubscript:v25];

            if (v26)
            {
              v27 = [v14 objectForKeyedSubscript:v25];
              [v9 setValue:v27 forKey:v23];
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v20);
    }

    [(ATXFocusModeSignalsMetricLogger *)self addAppEntitySpecificFeatures:v32 toMetric:v9];
    v28 = MEMORY[0x277CCABB0];
    globalAppModeAffinityModel = self->_globalAppModeAffinityModel;
    [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
    v8 = v36;
    [(ATXGlobalAppModeAffinityModel *)globalAppModeAffinityModel scoreForMode:v34 bundleId:v36 scalingFactor:?];
    v30 = [v28 numberWithDouble:?];
    [v9 setGlobalModeAffinityPrior:v30];

    v10 = v35;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)addAppEntitySpecificFeatures:(id)a3 toMetric:(id)a4
{
  modeAffinityModelsConstants = self->_modeAffinityModelsConstants;
  v7 = a4;
  v8 = a3;
  [v7 setEntityOccurredGloballyOverLastNDays:{objc_msgSend(v8, "entityOccurredGloballyOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  [v7 setEntityOccurredInModeOverLastNDays:{objc_msgSend(v8, "entityOccurredInModeOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  v29 = [v8 entitySpecificFeatures];

  v9 = [v29 appCategoryScore_v2];
  [v7 setCategoryScore:v9];

  v10 = [v29 globalInterruptingPrior];
  [v7 setGlobalInterruptingPrior:v10];

  v11 = [v29 modeAppInterruptionsCountByEntity];
  [v7 setModeAppInterruptionsCountByEntity:v11];

  v12 = [v29 globalAppInterruptionsCountByEntity];
  [v7 setGlobalAppInterruptionsCountByEntity:v12];

  v13 = [v29 modePopularityOfInterruptingEntity];
  [v7 setModePopularityOfInterruptingEntity:v13];

  v14 = [v29 globalPopularityOfInterruptingEntity];
  [v7 setGlobalPopularityOfInterruptingEntity:v14];

  v15 = [v29 ratioOfModePopularityToGlobalPopularityOfInterruptingEntity];
  [v7 setRatioOfModePopularityToGlobalPopularityOfInterruptingEntity:v15];

  v16 = [v29 modeAppInterruptionsClassConditionalProbabilityByEntity];
  [v7 setModeAppInterruptionsClassConditionalProbabilityByEntity:v16];

  v17 = [v29 modeCountOfNotificationsClearedForEntity];
  [v7 setNotificationsClearedInMode:v17];

  v18 = [v29 globalCountOfNotificationsClearedForEntity];
  [v7 setNotificationsClearedGlobally:v18];

  v19 = [v29 localNotificationsClearedRateForEntity];
  [v7 setLocalClearanceRateForEntity:v19];

  v20 = [v29 globalNotificationsClearedRateForEntity];
  [v7 setGlobalClearanceRateForEntity:v20];

  v21 = [v29 ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  [v7 setRatioOfLocalToGlobalNotificationsClearedRateForEntity:v21];

  v22 = [v29 classConditionalOfNotificationsClearedForEntity];
  [v7 setClassConditionalOfNotificationsClearedForEntity:v22];

  v23 = [v29 globalCountOfNotificationsReceivedForEntity];
  [v7 setNotificationsReceivedGlobally:v23];

  v24 = [v29 modeCountOfNotificationsReceivedForEntity];
  [v7 setNotificationsReceivedInMode:v24];

  v25 = [v29 localPopularityOfNotificationsReceivedForEntity];
  [v7 setLocalPopularityOfNotificationsReceivedForEntity:v25];

  v26 = [v29 globalPopularityOfNotificationsReceivedForEntity];
  [v7 setGlobalPopularityOfNotificationsReceivedForEntity:v26];

  v27 = [v29 ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  [v7 setRatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity:v27];

  v28 = [v29 classConditionalOfNotificationsReceivedForEntity];
  [v7 setClassConditionalOfNotificationsReceivedForEntity:v28];
}

- (id)fetchRelevantBundleIdsWithModeConfigurationUIFlowLoggingEvent:(id)a3 suggestedEntities:(id)a4 candidateEntities:(id)a5 currentEntities:(id)a6
{
  v9 = MEMORY[0x277CBEB98];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 previousEntityIdentifiers];
  v14 = [v9 setWithArray:v13];

  v15 = [v12 setByAddingObjectsFromSet:v11];

  v16 = [v10 setByAddingObjectsFromSet:v15];
  v17 = [v16 mutableCopy];

  [v17 minusSet:v14];
  v18 = [v14 mutableCopy];
  [v18 minusSet:v10];

  v19 = [v18 allObjects];
  [v17 addObjectsFromArray:v19];

  return v17;
}

- (id)appScoresForMode:(unint64_t)a3
{
  cachedAppScores = self->_cachedAppScores;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedAppScores objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedAppScores;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXAppModeModel alloc] initWithMode:a3 modeEntityStore:self->_modeEntityStore globalAppModeAffinityModel:self->_globalAppModeAffinityModel];
    v11 = [(ATXAppModeModel *)v9 scoredEntitiesWithXPCActivity:0];
    v12 = self->_cachedAppScores;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

    v14 = self->_cachedAppScores;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  return v10;
}

- (id)appScoresForDenyListForMode:(unint64_t)a3
{
  cachedAppScoresForDenyList = self->_cachedAppScoresForDenyList;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedAppScoresForDenyList objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedAppScoresForDenyList;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXAppModeDenyListModel alloc] initWithMode:a3 modeEntityStore:self->_modeEntityStore globalInterruptingAppModel:self->_globalInterruptingAppModel];
    v11 = [(ATXAppModeDenyListModel *)v9 scoredEntitiesWithXPCActivity:0];
    v12 = self->_cachedAppScoresForDenyList;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

    v14 = self->_cachedAppScoresForDenyList;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  return v10;
}

- (void)logFocusModeWidgetSignalsWithXPCActivity:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = allModesForTraining();
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 integerValue];
        if (v11 > 0xD || ((1 << v11) & 0x3010) == 0)
        {
          v13 = v11;
          v14 = [(ATXFocusModeSignalsMetricLogger *)self widgetScoresForMode:v11];
          v15 = [(ATXFocusModeSignalsMetricLogger *)self logWidgetSignalsForMode:v13 modeAffinitySignals:v14 entitiesLogged:v6];
          if (v15 > 0x13 || (v6 = v15, [v18 didDefer]))
          {

            objc_autoreleasePoolPop(v10);
            goto LABEL_18;
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)logWidgetSignalsForMode:(unint64_t)a3 modeAffinitySignals:(id)a4 entitiesLogged:(unint64_t)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    v41 = *v47;
    do
    {
      v10 = 0;
      v42 = v8;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:v11];
        v13 = [v12 scoreMetadata];
        if (v13)
        {
          v14 = v13;
          v15 = [v6 objectForKeyedSubscript:v11];
          v16 = [v15 scoreMetadata];
          [v16 score];
          v18 = v17;

          if (v18 > 0.0)
          {
            v45 = [v6 objectForKeyedSubscript:v11];
            v19 = [v45 widget];
            v20 = objc_opt_new();
            [v20 setFocusMode:a3];
            v21 = [v19 extensionIdentity];
            v22 = [v21 containerBundleIdentifier];
            [v20 setAppBundleId:v22];

            v23 = objc_alloc(MEMORY[0x277CCACA8]);
            v24 = [v19 extensionIdentity];
            v25 = [v24 extensionBundleIdentifier];
            v26 = [v19 kind];
            v27 = [v23 initWithFormat:@"%@:%@", v25, v26];
            [v20 setWidgetBundleIdAndKind:v27];

            [v19 family];
            v28 = NSStringFromWidgetFamily();
            [v20 setWidgetSize:v28];

            v29 = [v19 intentReference];
            v30 = [v29 intent];

            if (v30)
            {
              v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v30, "_indexingHash")];
              [v20 setIntentHash:v31];
            }

            [(ATXFocusModeSignalsMetricLogger *)self populateWidgetModeAffinitySignalsForMode:a3 metric:v20 modeEntity:v45];
            v32 = __atxlog_handle_modes();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = objc_opt_class();
              v40 = v33;
              NSStringFromSelector(a2);
              v35 = v34 = a5;
              v36 = [v20 coreAnalyticsDictionary];
              *buf = 138412802;
              v51 = v33;
              v52 = 2112;
              v53 = v35;
              v54 = 2112;
              v55 = v36;
              _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_INFO, "[%@][%@] Logging: %@", buf, 0x20u);

              a5 = v34;
            }

            [v20 logToCoreAnalytics];
            ++a5;

            v9 = v41;
            v8 = v42;
            if (a5 > 0x13)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v8);
  }

LABEL_17:

  v37 = *MEMORY[0x277D85DE8];
  return a5;
}

- (void)populateWidgetModeAffinitySignalsForMode:(unint64_t)a3 metric:(id)a4 modeEntity:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [v8 scoreMetadata];
    [v11 score];
    v12 = [v10 numberWithDouble:?];
    [v7 setEntityModeEntityScore:v12];

    v26 = v9;
    v13 = [v9 scoreMetadata];
    v14 = [v13 featureVector];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        v19 = 0;
        do
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * v19);
          v21 = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
          v22 = [v21 objectForKeyedSubscript:v20];

          if (v22)
          {
            v23 = [v14 objectForKeyedSubscript:v22];

            if (v23)
            {
              v24 = [v14 objectForKeyedSubscript:v22];
              [v7 setValue:v24 forKey:v20];
            }
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v17);
    }

    v9 = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)widgetScoresForMode:(unint64_t)a3
{
  cachedWidgetScores = self->_cachedWidgetScores;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedWidgetScores objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedWidgetScores;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXWidgetModeModel alloc] initWithMode:a3 globalWidgetPopularityModel:self->_globalWidgetPopularityModel];
    v11 = [(ATXFocusModeSignalsMetricLogger *)self appScoresForMode:a3];
    v12 = [(ATXWidgetModeModel *)v9 scoredEntitiesWithScoredAppEntities:v11];
    v13 = self->_cachedWidgetScores;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];

    v15 = self->_cachedWidgetScores;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];
  }

  return v10;
}

@end