@interface ATXFocusModeSignalsMetricLogger
- (ATXFocusModeSignalsMetricLogger)init;
- (id)appScoresForDenyListForMode:(unint64_t)mode;
- (id)appScoresForMode:(unint64_t)mode;
- (id)fetchRelevantBundleIdsWithModeConfigurationUIFlowLoggingEvent:(id)event suggestedEntities:(id)entities candidateEntities:(id)candidateEntities currentEntities:(id)currentEntities;
- (id)widgetScoresForMode:(unint64_t)mode;
- (unint64_t)logWidgetSignalsForMode:(unint64_t)mode modeAffinitySignals:(id)signals entitiesLogged:(unint64_t)logged;
- (void)addAppEntitySpecificFeatures:(id)features toMetric:(id)metric;
- (void)logFocusModeAppSignalsWithModeConfigurationUIFlowLoggingEvent:(id)event xpcActivity:(id)activity;
- (void)logFocusModeWidgetSignalsWithXPCActivity:(id)activity;
- (void)populateAppModeAffinitySignalsForMode:(unint64_t)mode bundleId:(id)id metric:(id)metric;
- (void)populateAppModeDenyListSignalsForMode:(unint64_t)mode bundleId:(id)id metric:(id)metric;
- (void)populateWidgetModeAffinitySignalsForMode:(unint64_t)mode metric:(id)metric modeEntity:(id)entity;
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

    mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
    modeConfigClient = v2->_modeConfigClient;
    v2->_modeConfigClient = mEMORY[0x277CEB440];

    mEMORY[0x277CEB6A8] = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v2->_modeEntityTrialClientWrapper;
    v2->_modeEntityTrialClientWrapper = mEMORY[0x277CEB6A8];

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

- (void)logFocusModeAppSignalsWithModeConfigurationUIFlowLoggingEvent:(id)event xpcActivity:(id)activity
{
  v66 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  activityCopy = activity;
  if (![eventCopy modeConfigurationEntityType])
  {
    modeConfigClient = self->_modeConfigClient;
    dndModeUUID = [eventCopy dndModeUUID];
    v10 = [(ATXDNDModeConfigurationClient *)modeConfigClient atxModeForDNDMode:dndModeUUID];

    if (v10)
    {
      v44 = v10;
      v11 = [(ATXDNDModeConfigurationClient *)self->_modeConfigClient dndSemanticTypeForATXMode:v10];
      v12 = MEMORY[0x277CBEB98];
      currentEntityIdentifiers = [eventCopy currentEntityIdentifiers];
      v14 = [v12 setWithArray:currentEntityIdentifiers];

      v15 = MEMORY[0x277CBEB98];
      suggestedEntityIdentifiers = [eventCopy suggestedEntityIdentifiers];
      v17 = [v15 setWithArray:suggestedEntityIdentifiers];

      v18 = MEMORY[0x277CBEB98];
      candidateEntityIdentifiers = [eventCopy candidateEntityIdentifiers];
      v20 = [v18 setWithArray:candidateEntityIdentifiers];

      v53 = v17;
      v54 = v20;
      v21 = [(ATXFocusModeSignalsMetricLogger *)self fetchRelevantBundleIdsWithModeConfigurationUIFlowLoggingEvent:eventCopy suggestedEntities:v17 candidateEntities:v20 currentEntities:v14];
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
            if (([v52 containsObject:v27] & 1) != 0 || objc_msgSend(eventCopy, "modeConfigurationType") == 1)
            {
              [v28 setActiveConfigurationType:{@"DenyList", v42}];
            }

            if (([v51 containsObject:{v27, v42}] & 1) != 0 || !objc_msgSend(eventCopy, "modeConfigurationType"))
            {
              [v28 setActiveConfigurationType:@"AllowList"];
            }

            trialExperimentId = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialExperimentId];
            [v28 setExperimentId:trialExperimentId];

            v30 = [MEMORY[0x277CCABB0] numberWithInt:{-[ATXModeEntityTrialClientWrapper trialDeploymentId](self->_modeEntityTrialClientWrapper, "trialDeploymentId")}];
            [v28 setDeploymentId:v30];

            trialTreatmentId = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialTreatmentId];
            [v28 setTreatmentId:trialTreatmentId];

            [v28 setAppBundleId:v27];
            [v28 setIsAppCandidateSuggestion:{objc_msgSend(v54, "containsObject:", v27)}];
            [v28 setIsAppRecommendedSuggestion:{objc_msgSend(v53, "containsObject:", v27)}];
            if (([v53 containsObject:v27] & 1) != 0 || objc_msgSend(v54, "containsObject:", v27))
            {
              [v28 setWasAppSuggestedDuringModeSetup:1];
            }

            [v28 setWasAppSuggestionDuringModeSetupAccepted:{objc_msgSend(v14, "containsObject:", v27)}];
            if (![eventCopy modeConfigurationType])
            {
              [(ATXFocusModeSignalsMetricLogger *)self populateAppModeAffinitySignalsForMode:v22 bundleId:v27 metric:v28];
            }

            if ([eventCopy modeConfigurationType] == 1)
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
              selfCopy = self;
              v36 = eventCopy;
              v37 = v14;
              v39 = v38 = activityCopy;
              *buf = 138412802;
              v60 = v33;
              v61 = 2112;
              v62 = v34;
              v63 = 2112;
              v64 = v39;
              _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_INFO, "[%@][%@] Logging: %@", buf, 0x20u);

              activityCopy = v38;
              v14 = v37;
              eventCopy = v36;
              self = selfCopy;

              v22 = v44;
            }

            [v28 logToCoreAnalytics];
            if (v49 == v23)
            {

              goto LABEL_35;
            }

            didDefer = [activityCopy didDefer];

            if (didDefer)
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

- (void)populateAppModeAffinitySignalsForMode:(unint64_t)mode bundleId:(id)id metric:(id)metric
{
  v41 = *MEMORY[0x277D85DE8];
  idCopy = id;
  metricCopy = metric;
  v10 = [(ATXFocusModeSignalsMetricLogger *)self appScoresForMode:mode];
  v11 = [v10 objectForKeyedSubscript:idCopy];

  if (v11)
  {
    v34 = v10;
    v35 = idCopy;
    v12 = [v10 objectForKeyedSubscript:idCopy];
    scoreMetadata = [v12 scoreMetadata];
    featureVector = [scoreMetadata featureVector];

    v32 = [[ATXModeEntityScoringFeatures alloc] initFromJSON:featureVector];
    v33 = v12;
    v15 = MEMORY[0x277CCABB0];
    scoreMetadata2 = [v12 scoreMetadata];
    [scoreMetadata2 score];
    v17 = [v15 numberWithDouble:?];
    [metricCopy setEntityModeEntityScore:v17];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    metricFieldsToFeatureNames = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
    v19 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(metricFieldsToFeatureNames);
          }

          v23 = *(*(&v36 + 1) + 8 * v22);
          metricFieldsToFeatureNames2 = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
          v25 = [metricFieldsToFeatureNames2 objectForKeyedSubscript:v23];

          if (v25)
          {
            v26 = [featureVector objectForKeyedSubscript:v25];

            if (v26)
            {
              v27 = [featureVector objectForKeyedSubscript:v25];
              [metricCopy setValue:v27 forKey:v23];
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v20);
    }

    [(ATXFocusModeSignalsMetricLogger *)self addAppEntitySpecificFeatures:v32 toMetric:metricCopy];
    v28 = MEMORY[0x277CCABB0];
    globalInterruptingAppModel = self->_globalInterruptingAppModel;
    [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
    idCopy = v35;
    [(ATXGlobalInterruptingAppModel *)globalInterruptingAppModel scoreForBundleId:v35 scalingFactor:?];
    v30 = [v28 numberWithDouble:?];
    [metricCopy setGlobalInterruptingPrior:v30];

    v10 = v34;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)populateAppModeDenyListSignalsForMode:(unint64_t)mode bundleId:(id)id metric:(id)metric
{
  v42 = *MEMORY[0x277D85DE8];
  idCopy = id;
  metricCopy = metric;
  v10 = [(ATXFocusModeSignalsMetricLogger *)self appScoresForDenyListForMode:mode];
  v11 = [v10 objectForKeyedSubscript:idCopy];

  if (v11)
  {
    modeCopy = mode;
    v35 = v10;
    v36 = idCopy;
    v12 = [v10 objectForKeyedSubscript:idCopy];
    scoreMetadata = [v12 scoreMetadata];
    featureVector = [scoreMetadata featureVector];

    v32 = [[ATXModeEntityScoringFeatures alloc] initFromJSON:featureVector];
    v33 = v12;
    v15 = MEMORY[0x277CCABB0];
    scoreMetadata2 = [v12 scoreMetadata];
    [scoreMetadata2 score];
    v17 = [v15 numberWithDouble:?];
    [metricCopy setEntityModeEntityScore:v17];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    metricFieldsToFeatureNames = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
    v19 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(metricFieldsToFeatureNames);
          }

          v23 = *(*(&v37 + 1) + 8 * v22);
          metricFieldsToFeatureNames2 = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
          v25 = [metricFieldsToFeatureNames2 objectForKeyedSubscript:v23];

          if (v25)
          {
            v26 = [featureVector objectForKeyedSubscript:v25];

            if (v26)
            {
              v27 = [featureVector objectForKeyedSubscript:v25];
              [metricCopy setValue:v27 forKey:v23];
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v20);
    }

    [(ATXFocusModeSignalsMetricLogger *)self addAppEntitySpecificFeatures:v32 toMetric:metricCopy];
    v28 = MEMORY[0x277CCABB0];
    globalAppModeAffinityModel = self->_globalAppModeAffinityModel;
    [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
    idCopy = v36;
    [(ATXGlobalAppModeAffinityModel *)globalAppModeAffinityModel scoreForMode:modeCopy bundleId:v36 scalingFactor:?];
    v30 = [v28 numberWithDouble:?];
    [metricCopy setGlobalModeAffinityPrior:v30];

    v10 = v35;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)addAppEntitySpecificFeatures:(id)features toMetric:(id)metric
{
  modeAffinityModelsConstants = self->_modeAffinityModelsConstants;
  metricCopy = metric;
  featuresCopy = features;
  [metricCopy setEntityOccurredGloballyOverLastNDays:{objc_msgSend(featuresCopy, "entityOccurredGloballyOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  [metricCopy setEntityOccurredInModeOverLastNDays:{objc_msgSend(featuresCopy, "entityOccurredInModeOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  entitySpecificFeatures = [featuresCopy entitySpecificFeatures];

  appCategoryScore_v2 = [entitySpecificFeatures appCategoryScore_v2];
  [metricCopy setCategoryScore:appCategoryScore_v2];

  globalInterruptingPrior = [entitySpecificFeatures globalInterruptingPrior];
  [metricCopy setGlobalInterruptingPrior:globalInterruptingPrior];

  modeAppInterruptionsCountByEntity = [entitySpecificFeatures modeAppInterruptionsCountByEntity];
  [metricCopy setModeAppInterruptionsCountByEntity:modeAppInterruptionsCountByEntity];

  globalAppInterruptionsCountByEntity = [entitySpecificFeatures globalAppInterruptionsCountByEntity];
  [metricCopy setGlobalAppInterruptionsCountByEntity:globalAppInterruptionsCountByEntity];

  modePopularityOfInterruptingEntity = [entitySpecificFeatures modePopularityOfInterruptingEntity];
  [metricCopy setModePopularityOfInterruptingEntity:modePopularityOfInterruptingEntity];

  globalPopularityOfInterruptingEntity = [entitySpecificFeatures globalPopularityOfInterruptingEntity];
  [metricCopy setGlobalPopularityOfInterruptingEntity:globalPopularityOfInterruptingEntity];

  ratioOfModePopularityToGlobalPopularityOfInterruptingEntity = [entitySpecificFeatures ratioOfModePopularityToGlobalPopularityOfInterruptingEntity];
  [metricCopy setRatioOfModePopularityToGlobalPopularityOfInterruptingEntity:ratioOfModePopularityToGlobalPopularityOfInterruptingEntity];

  modeAppInterruptionsClassConditionalProbabilityByEntity = [entitySpecificFeatures modeAppInterruptionsClassConditionalProbabilityByEntity];
  [metricCopy setModeAppInterruptionsClassConditionalProbabilityByEntity:modeAppInterruptionsClassConditionalProbabilityByEntity];

  modeCountOfNotificationsClearedForEntity = [entitySpecificFeatures modeCountOfNotificationsClearedForEntity];
  [metricCopy setNotificationsClearedInMode:modeCountOfNotificationsClearedForEntity];

  globalCountOfNotificationsClearedForEntity = [entitySpecificFeatures globalCountOfNotificationsClearedForEntity];
  [metricCopy setNotificationsClearedGlobally:globalCountOfNotificationsClearedForEntity];

  localNotificationsClearedRateForEntity = [entitySpecificFeatures localNotificationsClearedRateForEntity];
  [metricCopy setLocalClearanceRateForEntity:localNotificationsClearedRateForEntity];

  globalNotificationsClearedRateForEntity = [entitySpecificFeatures globalNotificationsClearedRateForEntity];
  [metricCopy setGlobalClearanceRateForEntity:globalNotificationsClearedRateForEntity];

  ratioOfLocalToGlobalNotificationsClearedRateForEntity = [entitySpecificFeatures ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  [metricCopy setRatioOfLocalToGlobalNotificationsClearedRateForEntity:ratioOfLocalToGlobalNotificationsClearedRateForEntity];

  classConditionalOfNotificationsClearedForEntity = [entitySpecificFeatures classConditionalOfNotificationsClearedForEntity];
  [metricCopy setClassConditionalOfNotificationsClearedForEntity:classConditionalOfNotificationsClearedForEntity];

  globalCountOfNotificationsReceivedForEntity = [entitySpecificFeatures globalCountOfNotificationsReceivedForEntity];
  [metricCopy setNotificationsReceivedGlobally:globalCountOfNotificationsReceivedForEntity];

  modeCountOfNotificationsReceivedForEntity = [entitySpecificFeatures modeCountOfNotificationsReceivedForEntity];
  [metricCopy setNotificationsReceivedInMode:modeCountOfNotificationsReceivedForEntity];

  localPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures localPopularityOfNotificationsReceivedForEntity];
  [metricCopy setLocalPopularityOfNotificationsReceivedForEntity:localPopularityOfNotificationsReceivedForEntity];

  globalPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures globalPopularityOfNotificationsReceivedForEntity];
  [metricCopy setGlobalPopularityOfNotificationsReceivedForEntity:globalPopularityOfNotificationsReceivedForEntity];

  ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  [metricCopy setRatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity:ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];

  classConditionalOfNotificationsReceivedForEntity = [entitySpecificFeatures classConditionalOfNotificationsReceivedForEntity];
  [metricCopy setClassConditionalOfNotificationsReceivedForEntity:classConditionalOfNotificationsReceivedForEntity];
}

- (id)fetchRelevantBundleIdsWithModeConfigurationUIFlowLoggingEvent:(id)event suggestedEntities:(id)entities candidateEntities:(id)candidateEntities currentEntities:(id)currentEntities
{
  v9 = MEMORY[0x277CBEB98];
  currentEntitiesCopy = currentEntities;
  candidateEntitiesCopy = candidateEntities;
  entitiesCopy = entities;
  previousEntityIdentifiers = [event previousEntityIdentifiers];
  v14 = [v9 setWithArray:previousEntityIdentifiers];

  v15 = [entitiesCopy setByAddingObjectsFromSet:candidateEntitiesCopy];

  v16 = [currentEntitiesCopy setByAddingObjectsFromSet:v15];
  v17 = [v16 mutableCopy];

  [v17 minusSet:v14];
  v18 = [v14 mutableCopy];
  [v18 minusSet:currentEntitiesCopy];

  allObjects = [v18 allObjects];
  [v17 addObjectsFromArray:allObjects];

  return v17;
}

- (id)appScoresForMode:(unint64_t)mode
{
  cachedAppScores = self->_cachedAppScores;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedAppScores objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedAppScores;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXAppModeModel alloc] initWithMode:mode modeEntityStore:self->_modeEntityStore globalAppModeAffinityModel:self->_globalAppModeAffinityModel];
    v11 = [(ATXAppModeModel *)v9 scoredEntitiesWithXPCActivity:0];
    v12 = self->_cachedAppScores;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

    v14 = self->_cachedAppScores;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  return v10;
}

- (id)appScoresForDenyListForMode:(unint64_t)mode
{
  cachedAppScoresForDenyList = self->_cachedAppScoresForDenyList;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedAppScoresForDenyList objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedAppScoresForDenyList;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXAppModeDenyListModel alloc] initWithMode:mode modeEntityStore:self->_modeEntityStore globalInterruptingAppModel:self->_globalInterruptingAppModel];
    v11 = [(ATXAppModeDenyListModel *)v9 scoredEntitiesWithXPCActivity:0];
    v12 = self->_cachedAppScoresForDenyList;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

    v14 = self->_cachedAppScoresForDenyList;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  return v10;
}

- (void)logFocusModeWidgetSignalsWithXPCActivity:(id)activity
{
  v24 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
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
        integerValue = [v9 integerValue];
        if (integerValue > 0xD || ((1 << integerValue) & 0x3010) == 0)
        {
          v13 = integerValue;
          v14 = [(ATXFocusModeSignalsMetricLogger *)self widgetScoresForMode:integerValue];
          v15 = [(ATXFocusModeSignalsMetricLogger *)self logWidgetSignalsForMode:v13 modeAffinitySignals:v14 entitiesLogged:v6];
          if (v15 > 0x13 || (v6 = v15, [activityCopy didDefer]))
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

- (unint64_t)logWidgetSignalsForMode:(unint64_t)mode modeAffinitySignals:(id)signals entitiesLogged:(unint64_t)logged
{
  v57 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  signalsCopy = signals;
  v7 = [signalsCopy countByEnumeratingWithState:&v46 objects:v56 count:16];
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
          objc_enumerationMutation(signalsCopy);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        v12 = [signalsCopy objectForKeyedSubscript:v11];
        scoreMetadata = [v12 scoreMetadata];
        if (scoreMetadata)
        {
          v14 = scoreMetadata;
          v15 = [signalsCopy objectForKeyedSubscript:v11];
          scoreMetadata2 = [v15 scoreMetadata];
          [scoreMetadata2 score];
          v18 = v17;

          if (v18 > 0.0)
          {
            v45 = [signalsCopy objectForKeyedSubscript:v11];
            widget = [v45 widget];
            v20 = objc_opt_new();
            [v20 setFocusMode:mode];
            extensionIdentity = [widget extensionIdentity];
            containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
            [v20 setAppBundleId:containerBundleIdentifier];

            v23 = objc_alloc(MEMORY[0x277CCACA8]);
            extensionIdentity2 = [widget extensionIdentity];
            extensionBundleIdentifier = [extensionIdentity2 extensionBundleIdentifier];
            kind = [widget kind];
            v27 = [v23 initWithFormat:@"%@:%@", extensionBundleIdentifier, kind];
            [v20 setWidgetBundleIdAndKind:v27];

            [widget family];
            v28 = NSStringFromWidgetFamily();
            [v20 setWidgetSize:v28];

            intentReference = [widget intentReference];
            intent = [intentReference intent];

            if (intent)
            {
              v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(intent, "_indexingHash")];
              [v20 setIntentHash:v31];
            }

            [(ATXFocusModeSignalsMetricLogger *)self populateWidgetModeAffinitySignalsForMode:mode metric:v20 modeEntity:v45];
            v32 = __atxlog_handle_modes();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = objc_opt_class();
              v40 = v33;
              NSStringFromSelector(a2);
              v35 = v34 = logged;
              coreAnalyticsDictionary = [v20 coreAnalyticsDictionary];
              *buf = 138412802;
              v51 = v33;
              v52 = 2112;
              v53 = v35;
              v54 = 2112;
              v55 = coreAnalyticsDictionary;
              _os_log_impl(&dword_2263AA000, v32, OS_LOG_TYPE_INFO, "[%@][%@] Logging: %@", buf, 0x20u);

              logged = v34;
            }

            [v20 logToCoreAnalytics];
            ++logged;

            v9 = v41;
            v8 = v42;
            if (logged > 0x13)
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
      v8 = [signalsCopy countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v8);
  }

LABEL_17:

  v37 = *MEMORY[0x277D85DE8];
  return logged;
}

- (void)populateWidgetModeAffinitySignalsForMode:(unint64_t)mode metric:(id)metric modeEntity:(id)entity
{
  v32 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  entityCopy = entity;
  v9 = entityCopy;
  if (entityCopy)
  {
    v10 = MEMORY[0x277CCABB0];
    scoreMetadata = [entityCopy scoreMetadata];
    [scoreMetadata score];
    v12 = [v10 numberWithDouble:?];
    [metricCopy setEntityModeEntityScore:v12];

    v26 = v9;
    scoreMetadata2 = [v9 scoreMetadata];
    featureVector = [scoreMetadata2 featureVector];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    metricFieldsToFeatureNames = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
    v16 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(metricFieldsToFeatureNames);
          }

          v20 = *(*(&v27 + 1) + 8 * v19);
          metricFieldsToFeatureNames2 = [(ATXFocusModeSignalsMetricLogger *)self metricFieldsToFeatureNames];
          v22 = [metricFieldsToFeatureNames2 objectForKeyedSubscript:v20];

          if (v22)
          {
            v23 = [featureVector objectForKeyedSubscript:v22];

            if (v23)
            {
              v24 = [featureVector objectForKeyedSubscript:v22];
              [metricCopy setValue:v24 forKey:v20];
            }
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v17);
    }

    v9 = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)widgetScoresForMode:(unint64_t)mode
{
  cachedWidgetScores = self->_cachedWidgetScores;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedWidgetScores objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedWidgetScores;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXWidgetModeModel alloc] initWithMode:mode globalWidgetPopularityModel:self->_globalWidgetPopularityModel];
    v11 = [(ATXFocusModeSignalsMetricLogger *)self appScoresForMode:mode];
    v12 = [(ATXWidgetModeModel *)v9 scoredEntitiesWithScoredAppEntities:v11];
    v13 = self->_cachedWidgetScores;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];

    v15 = self->_cachedWidgetScores;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];
  }

  return v10;
}

@end