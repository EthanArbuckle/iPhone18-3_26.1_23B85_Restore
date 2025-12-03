@interface ATXAppModeDenyListModel
- (ATXAppModeDenyListModel)initWithMode:(unint64_t)mode modeEntityStore:(id)store globalInterruptingAppModel:(id)model;
- (double)scoreFromAppFeatures:(id)features;
- (id)featuresToModel:(id)model;
- (id)loadAppModeCoreMLModel;
- (id)scoredAppModeEntityWithAppFeatures:(id)features bundleId:(id)id;
- (id)scoredEntitiesWithXPCActivity:(id)activity;
- (void)addAppInterruptingSignalsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features;
- (void)addEntitySpecificFeaturesToAppFeatures:(id)features;
- (void)addGlobalModeInterruptingPriorsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features;
- (void)addNotificationsSignalsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features;
@end

@implementation ATXAppModeDenyListModel

- (ATXAppModeDenyListModel)initWithMode:(unint64_t)mode modeEntityStore:(id)store globalInterruptingAppModel:(id)model
{
  storeCopy = store;
  modelCopy = model;
  v22.receiver = self;
  v22.super_class = ATXAppModeDenyListModel;
  v11 = [(ATXAppModeDenyListModel *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_mode = mode;
    loadAppModeCoreMLModel = [(ATXAppModeDenyListModel *)v11 loadAppModeCoreMLModel];
    appModeModel = v12->_appModeModel;
    v12->_appModeModel = loadAppModeCoreMLModel;

    objc_storeStrong(&v12->_modeEntityStore, store);
    v15 = objc_opt_new();
    notificationDatastore = v12->_notificationDatastore;
    v12->_notificationDatastore = v15;

    objc_storeStrong(&v12->_globalInterruptingAppModel, model);
    v17 = [ATXModeEntityModelTrainer eventProviderForMode:mode];
    modeEventProvider = v12->_modeEventProvider;
    v12->_modeEventProvider = v17;

    v19 = objc_opt_new();
    modeAffinityModelsConstants = v12->_modeAffinityModelsConstants;
    v12->_modeAffinityModelsConstants = v19;
  }

  return v12;
}

- (id)scoredEntitiesWithXPCActivity:(id)activity
{
  activityCopy = activity;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  bundleIds = [(ATXGlobalInterruptingAppModel *)self->_globalInterruptingAppModel bundleIds];
  v8 = [v6 initWithSet:bundleIds];

  v9 = objc_opt_new();
  v10 = &off_226871000;
  if (!self->_modeEventProvider)
  {
LABEL_15:
    [v8 minusSet:v9];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = *(v10 + 412);
    v29[2] = __57__ATXAppModeDenyListModel_scoredEntitiesWithXPCActivity___block_invoke_2;
    v29[3] = &unk_27859F650;
    v29[4] = self;
    v26 = v5;
    v30 = v26;
    v31 = v9;
    [v8 enumerateObjectsUsingBlock:v29];
    v27 = v26;

    goto LABEL_16;
  }

  v11 = [ATXModeEntityCorrelator alloc];
  modeEventProvider = self->_modeEventProvider;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = [(ATXModeEntityCorrelator *)v11 initWithModeEventProvider:modeEventProvider appLaunchEventProvider:v13 macPortableAppEventProvider:v14 macDesktopAppEventProvider:v15];

  v17 = [[ATXAppInterruptionsEventProvider alloc] initWithModeEventProvider:self->_modeEventProvider];
  appInterruptionsEventProvider = self->_appInterruptionsEventProvider;
  self->_appInterruptionsEventProvider = v17;

  if (![(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider successfullyCalculatedAppSessionInterruptions:activityCopy])
  {
    v19 = __atxlog_handle_modes();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXAppModeDenyListModel scoredEntitiesWithXPCActivity:];
    }
  }

  if (![activityCopy didDefer])
  {
    v22 = [[ATXAppNotificationEngagementEventProvider alloc] initWithModeEventProvider:self->_modeEventProvider];
    appNotificationEngagementEventProvider = self->_appNotificationEngagementEventProvider;
    self->_appNotificationEngagementEventProvider = v22;

    v10 = &off_226871000;
    if (![(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider successfullyCalculatedNotificationEvents])
    {
      v24 = __atxlog_handle_modes();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [ATXAppModeDenyListModel scoredEntitiesWithXPCActivity:];
      }
    }

    entityFeaturesForModeEntityScoring = [(ATXModeEntityCorrelator *)v16 entityFeaturesForModeEntityScoring];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __57__ATXAppModeDenyListModel_scoredEntitiesWithXPCActivity___block_invoke;
    v32[3] = &unk_2785970E0;
    v33 = v8;
    selfCopy = self;
    v35 = v5;
    v36 = v9;
    [entityFeaturesForModeEntityScoring enumerateKeysAndObjectsUsingBlock:v32];

    goto LABEL_15;
  }

  v20 = __atxlog_handle_modes();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [ATXAppModeDenyListModel scoredEntitiesWithXPCActivity:];
  }

  v21 = v5;
LABEL_16:

  return v5;
}

void __57__ATXAppModeDenyListModel_scoredEntitiesWithXPCActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v10])
  {
    v6 = [*(a1 + 40) scoredAppModeEntityWithAppFeatures:v5 bundleId:v10];
    v7 = *(a1 + 48);
    v8 = [v5 entity];
    v9 = [v8 identifier];
    [v7 setObject:v6 forKey:v9];

    [*(a1 + 56) addObject:v10];
  }
}

void __57__ATXAppModeDenyListModel_scoredEntitiesWithXPCActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 scoredAppModeEntityWithAppFeatures:0 bundleId:v4];
  [*(a1 + 40) setObject:v5 forKey:v4];
  [*(a1 + 48) addObject:v4];
}

- (id)scoredAppModeEntityWithAppFeatures:(id)features bundleId:(id)id
{
  v23[1] = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  if (!featuresCopy)
  {
    idCopy = id;
    featuresCopy = objc_opt_new();
    v8 = [ATXSessionTaggingAppEntity genreIdForBundleId:idCopy];
    v9 = v8;
    v10 = &unk_283A56FF0;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = objc_alloc(MEMORY[0x277CEB390]);
    v23[0] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

    v14 = [v12 initWithBundleId:idCopy itunesGenreIds:v13];
    [featuresCopy setEntity:v14];
  }

  [(ATXAppModeDenyListModel *)self addEntitySpecificFeaturesToAppFeatures:featuresCopy];
  [(ATXAppModeDenyListModel *)self scoreFromAppFeatures:featuresCopy];
  v16 = v15;
  v17 = objc_opt_new();
  [v17 setScore:v16];
  jsonRepresentation = [featuresCopy jsonRepresentation];
  [v17 setFeatureVector:jsonRepresentation];

  entity = [featuresCopy entity];
  [entity setScoreMetadata:v17];

  entity2 = [featuresCopy entity];

  v21 = *MEMORY[0x277D85DE8];

  return entity2;
}

- (void)addEntitySpecificFeaturesToAppFeatures:(id)features
{
  featuresCopy = features;
  if (featuresCopy)
  {
    modeEntityStore = self->_modeEntityStore;
    v37 = featuresCopy;
    entity = [featuresCopy entity];
    identifier = [entity identifier];
    v8 = [(ATXModeEntityStore *)modeEntityStore appEntityForBundleId:identifier];

    if (v8)
    {
      affinityVector = [v8 affinityVector];
      [affinityVector scoreForMode:self->_mode];
      v11 = v10;

      affinityVector_v2 = [v8 affinityVector_v2];
      [affinityVector_v2 scoreForMode:self->_mode];
      v14 = v13;

      entitySpecificFeatures = [v37 entitySpecificFeatures];
      v16 = entitySpecificFeatures;
      if (entitySpecificFeatures)
      {
        v17 = entitySpecificFeatures;
      }

      else
      {
        v17 = objc_opt_new();
      }

      v18 = v17;

      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      [v18 setAppCategoryScore:v19];

      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
      [v18 setAppCategoryScore_v2:v20];

      entity2 = [v37 entity];
      identifier2 = [entity2 identifier];
      [(ATXAppModeDenyListModel *)self addAppInterruptingSignalsForIdentifier:identifier2 toAppSpecificFeatures:v18];

      entity3 = [v37 entity];
      identifier3 = [entity3 identifier];
      [(ATXAppModeDenyListModel *)self addNotificationsSignalsForIdentifier:identifier3 toAppSpecificFeatures:v18];

      entity4 = [v37 entity];
      identifier4 = [entity4 identifier];
      [(ATXAppModeDenyListModel *)self addGlobalModeInterruptingPriorsForIdentifier:identifier4 toAppSpecificFeatures:v18];

      notificationDatastore = self->_notificationDatastore;
      v28 = MEMORY[0x277CBEAA8];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v30 = [v28 dateWithTimeIntervalSinceReferenceDate:v29 + -1209600.0];
      v31 = [(ATXNotificationAndSuggestionDatastore *)notificationDatastore notificationsReceivedPerBundleIdSinceDate:v30];

      entity5 = [v37 entity];
      identifier5 = [entity5 identifier];
      v34 = [v31 objectForKeyedSubscript:identifier5];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = &unk_283A56FF0;
      }

      [v18 setNotificationsReceivedInLastTwoWeeks:v36];

      [v37 setEntitySpecificFeatures:v18];
    }

    featuresCopy = v37;
  }
}

- (void)addGlobalModeInterruptingPriorsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features
{
  v5 = MEMORY[0x277CCABB0];
  globalInterruptingAppModel = self->_globalInterruptingAppModel;
  modeAffinityModelsConstants = self->_modeAffinityModelsConstants;
  featuresCopy = features;
  identifierCopy = identifier;
  [(ATXModeAffinityModelsConstants *)modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
  [(ATXGlobalInterruptingAppModel *)globalInterruptingAppModel scoreForBundleId:identifierCopy scalingFactor:?];
  v11 = v10;

  v12 = [v5 numberWithDouble:v11];
  [featuresCopy setGlobalInterruptingPrior:v12];
}

- (void)addAppInterruptingSignalsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features
{
  v6 = MEMORY[0x277CCABB0];
  appInterruptionsEventProvider = self->_appInterruptionsEventProvider;
  featuresCopy = features;
  identifierCopy = identifier;
  v10 = [v6 numberWithUnsignedInteger:{-[ATXAppInterruptionsEventProvider modeAppInterruptionsCountByEntity:](appInterruptionsEventProvider, "modeAppInterruptionsCountByEntity:", identifierCopy)}];
  [featuresCopy setModeAppInterruptionsCountByEntity:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppInterruptionsEventProvider globalAppInterruptionsCountByEntity:](self->_appInterruptionsEventProvider, "globalAppInterruptionsCountByEntity:", identifierCopy)}];
  [featuresCopy setGlobalAppInterruptionsCountByEntity:v11];

  v12 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider modePopularityOfInterruptingEntity:identifierCopy];
  v13 = [v12 numberWithDouble:?];
  [featuresCopy setModePopularityOfInterruptingEntity:v13];

  v14 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider globalPopularityOfInterruptingEntity:identifierCopy];
  v15 = [v14 numberWithDouble:?];
  [featuresCopy setGlobalPopularityOfInterruptingEntity:v15];

  v16 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider modeAppInterruptionsClassConditionalProbabilityByEntity:identifierCopy];
  v17 = [v16 numberWithDouble:?];
  [featuresCopy setModeAppInterruptionsClassConditionalProbabilityByEntity:v17];

  v18 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider ratioOfModePopularityToGlobalPopularityOfInterruptingEntity:identifierCopy];
  v20 = v19;

  v21 = [v18 numberWithDouble:v20];
  [featuresCopy setRatioOfModePopularityToGlobalPopularityOfInterruptingEntity:v21];
}

- (void)addNotificationsSignalsForIdentifier:(id)identifier toAppSpecificFeatures:(id)features
{
  v6 = MEMORY[0x277CCABB0];
  appNotificationEngagementEventProvider = self->_appNotificationEngagementEventProvider;
  featuresCopy = features;
  identifierCopy = identifier;
  v10 = [v6 numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider modeCountOfNotificationsClearedForBundleId:](appNotificationEngagementEventProvider, "modeCountOfNotificationsClearedForBundleId:", identifierCopy)}];
  [featuresCopy setModeCountOfNotificationsClearedForEntity:v10];

  v11 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider localNotificationsClearedRateForBundleId:identifierCopy];
  v12 = [v11 numberWithDouble:?];
  [featuresCopy setLocalNotificationsClearedRateForEntity:v12];

  v13 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider globalNotificationsClearedRateForBundleId:identifierCopy];
  v14 = [v13 numberWithDouble:?];
  [featuresCopy setGlobalNotificationsClearedRateForEntity:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider globalCountOfNotificationsClearedForBundleId:](self->_appNotificationEngagementEventProvider, "globalCountOfNotificationsClearedForBundleId:", identifierCopy)}];
  [featuresCopy setGlobalCountOfNotificationsClearedForEntity:v15];

  v16 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider ratioOfLocalToGlobalNotificationsClearedRateForBundleId:identifierCopy];
  v17 = [v16 numberWithDouble:?];
  [featuresCopy setRatioOfLocalToGlobalNotificationsClearedRateForEntity:v17];

  v18 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider classConditionalOfNotificationsClearedForBundleId:identifierCopy];
  v19 = [v18 numberWithDouble:?];
  [featuresCopy setClassConditionalOfNotificationsClearedForEntity:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider globalCountOfNotificationsReceivedForBundleId:](self->_appNotificationEngagementEventProvider, "globalCountOfNotificationsReceivedForBundleId:", identifierCopy)}];
  [featuresCopy setGlobalCountOfNotificationsReceivedForEntity:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider modeCountOfNotificationsReceivedForBundleId:](self->_appNotificationEngagementEventProvider, "modeCountOfNotificationsReceivedForBundleId:", identifierCopy)}];
  [featuresCopy setModeCountOfNotificationsReceivedForEntity:v21];

  v22 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider localPopularityOfNotificationsReceivedForBundleId:identifierCopy];
  v23 = [v22 numberWithDouble:?];
  [featuresCopy setLocalPopularityOfNotificationsReceivedForEntity:v23];

  v24 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider globalPopularityOfNotificationsReceivedForBundleId:identifierCopy];
  v25 = [v24 numberWithDouble:?];
  [featuresCopy setGlobalPopularityOfNotificationsReceivedForEntity:v25];

  v26 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider ratioOfLocalToGlobalPopularityOfNotificationsReceivedForBundleId:identifierCopy];
  v27 = [v26 numberWithDouble:?];
  [featuresCopy setRatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity:v27];

  v28 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider classConditionalOfNotificationsReceivedForBundleId:identifierCopy];
  v30 = v29;

  v31 = [v28 numberWithDouble:v30];
  [featuresCopy setClassConditionalOfNotificationsReceivedForEntity:v31];
}

- (id)featuresToModel:(id)model
{
  modelCopy = model;
  entitySpecificFeatures = [modelCopy entitySpecificFeatures];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXAppModeDenyListModel featuresToModel:];
    }
  }

  entitySpecificFeatures2 = [modelCopy entitySpecificFeatures];
  appCategoryScore_v2 = [entitySpecificFeatures2 appCategoryScore_v2];
  modePopularityOfInterruptingEntity = [entitySpecificFeatures2 modePopularityOfInterruptingEntity];
  globalCountOfNotificationsClearedForEntity = [entitySpecificFeatures2 globalCountOfNotificationsClearedForEntity];
  globalAppInterruptionsCountByEntity = [entitySpecificFeatures2 globalAppInterruptionsCountByEntity];
  modeAppInterruptionsCountByEntity = [entitySpecificFeatures2 modeAppInterruptionsCountByEntity];
  modeAppInterruptionsClassConditionalProbabilityByEntity = [entitySpecificFeatures2 modeAppInterruptionsClassConditionalProbabilityByEntity];
  ratioOfModePopularityToGlobalPopularityOfInterruptingEntity = [entitySpecificFeatures2 ratioOfModePopularityToGlobalPopularityOfInterruptingEntity];
  localNotificationsClearedRateForEntity = [entitySpecificFeatures2 localNotificationsClearedRateForEntity];
  globalPopularityOfInterruptingEntity = [entitySpecificFeatures2 globalPopularityOfInterruptingEntity];
  globalInterruptingPrior = [entitySpecificFeatures2 globalInterruptingPrior];
  globalNotificationsClearedRateForEntity = [entitySpecificFeatures2 globalNotificationsClearedRateForEntity];
  modeCountOfNotificationsClearedForEntity = [entitySpecificFeatures2 modeCountOfNotificationsClearedForEntity];
  ratioOfLocalToGlobalNotificationsClearedRateForEntity = [entitySpecificFeatures2 ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  classConditionalOfNotificationsClearedForEntity = [entitySpecificFeatures2 classConditionalOfNotificationsClearedForEntity];
  globalCountOfNotificationsReceivedForEntity = [entitySpecificFeatures2 globalCountOfNotificationsReceivedForEntity];
  modeCountOfNotificationsReceivedForEntity = [entitySpecificFeatures2 modeCountOfNotificationsReceivedForEntity];
  localPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures2 localPopularityOfNotificationsReceivedForEntity];
  globalPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures2 globalPopularityOfNotificationsReceivedForEntity];
  ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity = [entitySpecificFeatures2 ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  classConditionalOfNotificationsReceivedForEntity = [entitySpecificFeatures2 classConditionalOfNotificationsReceivedForEntity];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(modelCopy, "globalOccurrences")}];
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modelCopy, "entityOccurredGloballyOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(modelCopy, "entityOccurredInModeOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  v9 = MEMORY[0x277CCABB0];
  [modelCopy ratioModeAndGlobalPopularity];
  v33 = [v9 numberWithDouble:?];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(modelCopy, "localOccurrences")}];
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(modelCopy, "uniqueOccurrencesInMode")}];
  v10 = MEMORY[0x277CCABB0];
  [modelCopy posteriorProbability];
  v20 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x277CCABB0];
  [modelCopy classConditionalProbability];
  v12 = [v11 numberWithDouble:?];
  v13 = MEMORY[0x277CCABB0];
  [modelCopy globalPopularity];
  v21 = [v13 numberWithDouble:?];
  v14 = MEMORY[0x277CCABB0];
  [modelCopy modePopularity];
  v16 = v15;

  v19 = [v14 numberWithDouble:v16];
  v17 = objc_opt_new();
  [v17 setObject:v25 forKey:@"entityOccurredGloballyOverTheLastNDays"];
  [v17 setObject:v24 forKey:@"entityOccurredInModeOverLastNDays"];
  [v17 setObject:appCategoryScore_v2 forKey:@"appCategoryScore"];
  [v17 setObject:globalAppInterruptionsCountByEntity forKey:@"globalAppInterruptionsCountByEntity"];
  [v17 setObject:globalNotificationsClearedRateForEntity forKey:@"globalClearanceRateForEntity"];
  [v17 setObject:globalInterruptingPrior forKey:@"globalInterruptingPrior"];
  [v17 setObject:v23 forKey:@"globalOccurrencesOfEntity"];
  [v17 setObject:globalPopularityOfInterruptingEntity forKey:@"globalPopularityOfInterruptingEntity"];
  [v17 setObject:localNotificationsClearedRateForEntity forKey:@"localClearanceRateForEntity"];
  [v17 setObject:v22 forKey:@"localOccurrencesOfEntityInMode"];
  [v17 setObject:modeAppInterruptionsClassConditionalProbabilityByEntity forKey:@"modeAppInterruptionsClassConditionalProbabilityByEntity"];
  [v17 setObject:ratioOfModePopularityToGlobalPopularityOfInterruptingEntity forKey:@"ratioOfModePopularityToGlobalPopularityOfInterruptingEntity"];
  [v17 setObject:modeAppInterruptionsCountByEntity forKey:@"modeAppInterruptionsCountByEntity"];
  [v17 setObject:modePopularityOfInterruptingEntity forKey:@"modePopularityOfInterruptingEntity"];
  [v17 setObject:globalCountOfNotificationsClearedForEntity forKey:@"globalCountOfNotificationsClearedForEntity"];
  [v17 setObject:v20 forKey:@"posteriorProbabilityOfEntityGivenMode"];
  [v17 setObject:v33 forKey:@"ratioOfModePopularityToGlobalPopularityOfEntity"];
  [v17 setObject:v32 forKey:@"uniqueOccurrencesOfEntityInMode"];
  [v17 setObject:v12 forKey:@"classConditionalProbabilityOfModeGivenEntity"];
  [v17 setObject:v21 forKey:@"globalPopularityForEntity"];
  [v17 setObject:v19 forKey:@"modePopularityForEntity"];
  [v17 setObject:modeCountOfNotificationsClearedForEntity forKey:@"modeCountOfNotificationsClearedForEntity"];
  [v17 setObject:ratioOfLocalToGlobalNotificationsClearedRateForEntity forKey:@"ratioOfLocalToGlobalNotificationsClearedRateForEntity"];
  [v17 setObject:classConditionalOfNotificationsClearedForEntity forKey:@"classConditionalOfNotificationsClearedForEntity"];
  [v17 setObject:globalCountOfNotificationsReceivedForEntity forKey:@"globalCountOfNotificationsReceivedForEntity"];
  [v17 setObject:modeCountOfNotificationsReceivedForEntity forKey:@"modeCountOfNotificationsReceivedForEntity"];
  [v17 setObject:localPopularityOfNotificationsReceivedForEntity forKey:@"localPopularityOfNotificationsReceivedForEntity"];
  [v17 setObject:globalPopularityOfNotificationsReceivedForEntity forKey:@"globalPopularityOfNotificationsReceivedForEntity"];
  [v17 setObject:ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity forKey:@"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity"];
  [v17 setObject:classConditionalOfNotificationsReceivedForEntity forKey:@"classConditionalOfNotificationsReceivedForEntity"];

  return v17;
}

- (id)loadAppModeCoreMLModel
{
  v3 = objc_opt_new();
  modelName = [(ATXAppModeDenyListModel *)self modelName];
  v5 = [v3 loadCoreMLModelFromTrialWithName:modelName];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    modelName2 = [(ATXAppModeDenyListModel *)self modelName];
    v6 = [ATXCoreMLUtilities loadCoreMLModelWithName:modelName2];
  }

  return v6;
}

- (double)scoreFromAppFeatures:(id)features
{
  featuresCopy = features;
  if (self->_appModeModel)
  {
    v5 = objc_alloc(MEMORY[0x277CBFED0]);
    v6 = [(ATXAppModeDenyListModel *)self featuresToModel:featuresCopy];
    v19 = 0;
    v7 = [v5 initWithDictionary:v6 error:&v19];
    v8 = v19;

    if (v8)
    {
      v9 = __atxlog_handle_modes();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXAppModeDenyListModel scoreFromAppFeatures:];
      }
    }

    appModeModel = self->_appModeModel;
    v18 = v8;
    v11 = [(MLModel *)appModeModel predictionFromFeatures:v7 error:&v18];
    v12 = v18;

    if (v12)
    {
      v13 = __atxlog_handle_modes();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXAppModeDenyListModel scoreFromAppFeatures:];
      }
    }

    v14 = [v11 featureValueForName:@"classProbability"];
    [ATXCoreMLUtilities scoreForModelOutputValue:v14 outputIndexedSubscript:1];
    v16 = v15;
    if ([featuresCopy uniqueOccurrencesInMode] < 2)
    {
      v16 = v16 * 0.5;
    }
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

- (void)scoredEntitiesWithXPCActivity:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scoredEntitiesWithXPCActivity:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scoredEntitiesWithXPCActivity:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scoreFromAppFeatures:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scoreFromAppFeatures:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end