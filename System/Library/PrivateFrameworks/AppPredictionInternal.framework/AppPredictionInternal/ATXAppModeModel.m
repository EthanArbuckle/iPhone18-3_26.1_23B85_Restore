@interface ATXAppModeModel
- (ATXAppModeModel)initWithMode:(unint64_t)a3 modeEntityStore:(id)a4 globalAppModeAffinityModel:(id)a5;
- (double)scoreFromAppFeatures:(id)a3;
- (id)featuresToModel:(id)a3;
- (id)loadAppModeCoreMLModel;
- (id)scoredAppModeEntityWithAppFeatures:(id)a3 bundleId:(id)a4;
- (id)scoredEntitiesWithXPCActivity:(id)a3;
- (void)addAppInterruptingSignalsForIdentifier:(id)a3 toAppSpecificFeatures:(id)a4;
- (void)addEntitySpecificFeaturesToAppFeatures:(id)a3;
- (void)addGlobalModeAffinityPriorsForIdentifier:(id)a3 toAppSpecificFeatures:(id)a4;
- (void)addNotificationsSignalsForIdentifier:(id)a3 toAppSpecificFeatures:(id)a4;
@end

@implementation ATXAppModeModel

- (ATXAppModeModel)initWithMode:(unint64_t)a3 modeEntityStore:(id)a4 globalAppModeAffinityModel:(id)a5
{
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = ATXAppModeModel;
  v11 = [(ATXAppModeModel *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_mode = a3;
    v13 = [(ATXAppModeModel *)v11 loadAppModeCoreMLModel];
    appModeModel = v12->_appModeModel;
    v12->_appModeModel = v13;

    objc_storeStrong(&v12->_modeEntityStore, a4);
    v15 = objc_opt_new();
    notificationDatastore = v12->_notificationDatastore;
    v12->_notificationDatastore = v15;

    objc_storeStrong(&v12->_globalAppModeAffinityModel, a5);
    v17 = [ATXModeEntityModelTrainer eventProviderForMode:a3];
    modeEventProvider = v12->_modeEventProvider;
    v12->_modeEventProvider = v17;

    v19 = objc_opt_new();
    modeAffinityModelsConstants = v12->_modeAffinityModelsConstants;
    v12->_modeAffinityModelsConstants = v19;
  }

  return v12;
}

- (id)scoredEntitiesWithXPCActivity:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  v7 = [(ATXGlobalAppModeAffinityModel *)self->_globalAppModeAffinityModel bundleIds];
  v8 = [v6 initWithSet:v7];

  v9 = objc_opt_new();
  v10 = &off_226871000;
  if (!self->_modeEventProvider)
  {
LABEL_15:
    [v8 minusSet:v9];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = *(v10 + 412);
    v29[2] = __49__ATXAppModeModel_scoredEntitiesWithXPCActivity___block_invoke_2;
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

  if (![(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider successfullyCalculatedAppSessionInterruptions:v4])
  {
    v19 = __atxlog_handle_modes();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXAppModeModel scoredEntitiesWithXPCActivity:];
    }
  }

  if (![v4 didDefer])
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
        [ATXAppModeModel scoredEntitiesWithXPCActivity:];
      }
    }

    v25 = [(ATXModeEntityCorrelator *)v16 entityFeaturesForModeEntityScoring];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __49__ATXAppModeModel_scoredEntitiesWithXPCActivity___block_invoke;
    v32[3] = &unk_2785970E0;
    v33 = v8;
    v34 = self;
    v35 = v5;
    v36 = v9;
    [v25 enumerateKeysAndObjectsUsingBlock:v32];

    goto LABEL_15;
  }

  v20 = __atxlog_handle_modes();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [ATXAppModeModel scoredEntitiesWithXPCActivity:];
  }

  v21 = v5;
LABEL_16:

  return v5;
}

void __49__ATXAppModeModel_scoredEntitiesWithXPCActivity___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __49__ATXAppModeModel_scoredEntitiesWithXPCActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 scoredAppModeEntityWithAppFeatures:0 bundleId:v4];
  [*(a1 + 40) setObject:v5 forKey:v4];
  [*(a1 + 48) addObject:v4];
}

- (id)scoredAppModeEntityWithAppFeatures:(id)a3 bundleId:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v7 = a4;
    v6 = objc_opt_new();
    v8 = [ATXSessionTaggingAppEntity genreIdForBundleId:v7];
    v9 = v8;
    v10 = &unk_283A57A58;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = objc_alloc(MEMORY[0x277CEB390]);
    v23[0] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

    v14 = [v12 initWithBundleId:v7 itunesGenreIds:v13];
    [v6 setEntity:v14];
  }

  [(ATXAppModeModel *)self addEntitySpecificFeaturesToAppFeatures:v6];
  [(ATXAppModeModel *)self scoreFromAppFeatures:v6];
  v16 = v15;
  v17 = objc_opt_new();
  [v17 setScore:v16];
  v18 = [v6 jsonRepresentation];
  [v17 setFeatureVector:v18];

  v19 = [v6 entity];
  [v19 setScoreMetadata:v17];

  v20 = [v6 entity];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)addEntitySpecificFeaturesToAppFeatures:(id)a3
{
  v4 = a3;
  if (v4)
  {
    modeEntityStore = self->_modeEntityStore;
    v37 = v4;
    v6 = [v4 entity];
    v7 = [v6 identifier];
    v8 = [(ATXModeEntityStore *)modeEntityStore appEntityForBundleId:v7];

    if (v8)
    {
      v9 = [v8 affinityVector];
      [v9 scoreForMode:self->_mode];
      v11 = v10;

      v12 = [v8 affinityVector_v2];
      [v12 scoreForMode:self->_mode];
      v14 = v13;

      v15 = [v37 entitySpecificFeatures];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
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

      v21 = [v37 entity];
      v22 = [v21 identifier];
      [(ATXAppModeModel *)self addAppInterruptingSignalsForIdentifier:v22 toAppSpecificFeatures:v18];

      v23 = [v37 entity];
      v24 = [v23 identifier];
      [(ATXAppModeModel *)self addNotificationsSignalsForIdentifier:v24 toAppSpecificFeatures:v18];

      v25 = [v37 entity];
      v26 = [v25 identifier];
      [(ATXAppModeModel *)self addGlobalModeAffinityPriorsForIdentifier:v26 toAppSpecificFeatures:v18];

      notificationDatastore = self->_notificationDatastore;
      v28 = MEMORY[0x277CBEAA8];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v30 = [v28 dateWithTimeIntervalSinceReferenceDate:v29 + -1209600.0];
      v31 = [(ATXNotificationAndSuggestionDatastore *)notificationDatastore notificationsReceivedPerBundleIdSinceDate:v30];

      v32 = [v37 entity];
      v33 = [v32 identifier];
      v34 = [v31 objectForKeyedSubscript:v33];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = &unk_283A57A58;
      }

      [v18 setNotificationsReceivedInLastTwoWeeks:v36];

      [v37 setEntitySpecificFeatures:v18];
    }

    v4 = v37;
  }
}

- (void)addGlobalModeAffinityPriorsForIdentifier:(id)a3 toAppSpecificFeatures:(id)a4
{
  v5 = MEMORY[0x277CCABB0];
  globalAppModeAffinityModel = self->_globalAppModeAffinityModel;
  mode = self->_mode;
  modeAffinityModelsConstants = self->_modeAffinityModelsConstants;
  v9 = a4;
  v10 = a3;
  [(ATXModeAffinityModelsConstants *)modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
  [(ATXGlobalAppModeAffinityModel *)globalAppModeAffinityModel scoreForMode:mode bundleId:v10 scalingFactor:?];
  v12 = v11;

  v13 = [v5 numberWithDouble:v12];
  [v9 setGlobalModeAffinityPrior:v13];
}

- (void)addAppInterruptingSignalsForIdentifier:(id)a3 toAppSpecificFeatures:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  appInterruptionsEventProvider = self->_appInterruptionsEventProvider;
  v8 = a4;
  v9 = a3;
  v10 = [v6 numberWithUnsignedInteger:{-[ATXAppInterruptionsEventProvider modeAppInterruptionsCountByEntity:](appInterruptionsEventProvider, "modeAppInterruptionsCountByEntity:", v9)}];
  [v8 setModeAppInterruptionsCountByEntity:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppInterruptionsEventProvider globalAppInterruptionsCountByEntity:](self->_appInterruptionsEventProvider, "globalAppInterruptionsCountByEntity:", v9)}];
  [v8 setGlobalAppInterruptionsCountByEntity:v11];

  v12 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider modePopularityOfInterruptingEntity:v9];
  v13 = [v12 numberWithDouble:?];
  [v8 setModePopularityOfInterruptingEntity:v13];

  v14 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider globalPopularityOfInterruptingEntity:v9];
  v15 = [v14 numberWithDouble:?];
  [v8 setGlobalPopularityOfInterruptingEntity:v15];

  v16 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider modeAppInterruptionsClassConditionalProbabilityByEntity:v9];
  v17 = [v16 numberWithDouble:?];
  [v8 setModeAppInterruptionsClassConditionalProbabilityByEntity:v17];

  v18 = MEMORY[0x277CCABB0];
  [(ATXAppInterruptionsEventProvider *)self->_appInterruptionsEventProvider ratioOfModePopularityToGlobalPopularityOfInterruptingEntity:v9];
  v20 = v19;

  v21 = [v18 numberWithDouble:v20];
  [v8 setRatioOfModePopularityToGlobalPopularityOfInterruptingEntity:v21];
}

- (void)addNotificationsSignalsForIdentifier:(id)a3 toAppSpecificFeatures:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  appNotificationEngagementEventProvider = self->_appNotificationEngagementEventProvider;
  v8 = a4;
  v9 = a3;
  v10 = [v6 numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider modeCountOfNotificationsClearedForBundleId:](appNotificationEngagementEventProvider, "modeCountOfNotificationsClearedForBundleId:", v9)}];
  [v8 setModeCountOfNotificationsClearedForEntity:v10];

  v11 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider localNotificationsClearedRateForBundleId:v9];
  v12 = [v11 numberWithDouble:?];
  [v8 setLocalNotificationsClearedRateForEntity:v12];

  v13 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider globalNotificationsClearedRateForBundleId:v9];
  v14 = [v13 numberWithDouble:?];
  [v8 setGlobalNotificationsClearedRateForEntity:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider globalCountOfNotificationsClearedForBundleId:](self->_appNotificationEngagementEventProvider, "globalCountOfNotificationsClearedForBundleId:", v9)}];
  [v8 setGlobalCountOfNotificationsClearedForEntity:v15];

  v16 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider ratioOfLocalToGlobalNotificationsClearedRateForBundleId:v9];
  v17 = [v16 numberWithDouble:?];
  [v8 setRatioOfLocalToGlobalNotificationsClearedRateForEntity:v17];

  v18 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider classConditionalOfNotificationsClearedForBundleId:v9];
  v19 = [v18 numberWithDouble:?];
  [v8 setClassConditionalOfNotificationsClearedForEntity:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider globalCountOfNotificationsReceivedForBundleId:](self->_appNotificationEngagementEventProvider, "globalCountOfNotificationsReceivedForBundleId:", v9)}];
  [v8 setGlobalCountOfNotificationsReceivedForEntity:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppNotificationEngagementEventProvider modeCountOfNotificationsReceivedForBundleId:](self->_appNotificationEngagementEventProvider, "modeCountOfNotificationsReceivedForBundleId:", v9)}];
  [v8 setModeCountOfNotificationsReceivedForEntity:v21];

  v22 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider localPopularityOfNotificationsReceivedForBundleId:v9];
  v23 = [v22 numberWithDouble:?];
  [v8 setLocalPopularityOfNotificationsReceivedForEntity:v23];

  v24 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider globalPopularityOfNotificationsReceivedForBundleId:v9];
  v25 = [v24 numberWithDouble:?];
  [v8 setGlobalPopularityOfNotificationsReceivedForEntity:v25];

  v26 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider ratioOfLocalToGlobalPopularityOfNotificationsReceivedForBundleId:v9];
  v27 = [v26 numberWithDouble:?];
  [v8 setRatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity:v27];

  v28 = MEMORY[0x277CCABB0];
  [(ATXAppNotificationEngagementEventProvider *)self->_appNotificationEngagementEventProvider classConditionalOfNotificationsReceivedForBundleId:v9];
  v30 = v29;

  v31 = [v28 numberWithDouble:v30];
  [v8 setClassConditionalOfNotificationsReceivedForEntity:v31];
}

- (id)featuresToModel:(id)a3
{
  v4 = a3;
  v5 = [v4 entitySpecificFeatures];
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

  v8 = [v4 entitySpecificFeatures];
  v63 = [v8 appCategoryScore_v2];
  v9 = MEMORY[0x277CCABB0];
  [v4 globalPopularity];
  v62 = [v9 numberWithDouble:?];
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "globalOccurrences")}];
  v60 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "entityOccurredGloballyOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  v59 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "entityOccurredInModeOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeatures](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeatures"))}];
  v10 = MEMORY[0x277CCABB0];
  [v4 ratioModeAndGlobalPopularity];
  v57 = [v10 numberWithDouble:?];
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "localOccurrences")}];
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "uniqueOccurrencesInMode")}];
  v11 = MEMORY[0x277CCABB0];
  v12 = [v4 localOccurrences];
  v13 = [v8 globalModeAffinityPrior];
  [v13 doubleValue];
  v15 = v14 + v12;
  v16 = [v4 globalOccurrences];
  [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
  v45 = [v11 numberWithDouble:v15 / (v17 + v16 + 0.00000001)];

  v18 = MEMORY[0x277CCABB0];
  v19 = [v4 uniqueOccurrencesInMode];
  v20 = [v8 globalModeAffinityPrior];
  [v20 doubleValue];
  v22 = v21 + v19;
  v23 = [v4 modeOccurrences];
  [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
  v43 = [v18 numberWithDouble:v22 / (v24 + v23 + 0.00000001)];

  v25 = MEMORY[0x277CCABB0];
  v26 = [v4 localOccurrences];
  v27 = [v8 globalModeAffinityPrior];
  [v27 doubleValue];
  v29 = v28 + v26;
  v30 = [v4 localOccurrencesAcrossAllEntities];

  [(ATXModeAffinityModelsConstants *)self->_modeAffinityModelsConstants scalingFactorForModeGlobalPriors];
  v44 = [v25 numberWithDouble:v29 / (v31 + v30 + 0.00000001)];

  v55 = [v8 globalModeAffinityPrior];
  v54 = [v8 modeAppInterruptionsCountByEntity];
  v53 = [v8 globalAppInterruptionsCountByEntity];
  v52 = [v8 modePopularityOfInterruptingEntity];
  v38 = [v8 globalPopularityOfInterruptingEntity];
  v51 = [v8 modeAppInterruptionsClassConditionalProbabilityByEntity];
  v50 = [v8 ratioOfModePopularityToGlobalPopularityOfInterruptingEntity];
  v49 = [v8 globalCountOfNotificationsReceivedForEntity];
  v48 = [v8 modeCountOfNotificationsReceivedForEntity];
  v47 = [v8 localPopularityOfNotificationsReceivedForEntity];
  v46 = [v8 globalPopularityOfNotificationsReceivedForEntity];
  v32 = [v8 ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  v33 = [v8 classConditionalOfNotificationsReceivedForEntity];
  v34 = [v8 modeCountOfNotificationsClearedForEntity];
  v39 = [v8 localNotificationsClearedRateForEntity];
  v35 = [v8 globalNotificationsClearedRateForEntity];
  v40 = [v8 globalCountOfNotificationsClearedForEntity];
  v41 = [v8 ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  v42 = [v8 classConditionalOfNotificationsClearedForEntity];
  v36 = objc_opt_new();
  [v36 setObject:v60 forKey:@"entityOccurredGloballyOverTheLastNDays"];
  [v36 setObject:v59 forKey:@"entityOccurredInModeOverLastNDays"];
  [v36 setObject:v63 forKey:@"appCategoryScore"];
  [v36 setObject:v45 forKey:@"classConditionalProbabilityOfModeGivenEntity"];
  [v36 setObject:v61 forKey:@"globalOccurrencesOfEntity"];
  [v36 setObject:v62 forKey:@"globalPopularityForEntity"];
  [v36 setObject:v58 forKey:@"localOccurrencesOfEntityInMode"];
  [v36 setObject:v44 forKey:@"modePopularityForEntity"];
  [v36 setObject:v43 forKey:@"posteriorProbabilityOfEntityGivenMode"];
  [v36 setObject:v57 forKey:@"ratioOfModePopularityToGlobalPopularityOfEntity"];
  [v36 setObject:v56 forKey:@"uniqueOccurrencesOfEntityInMode"];
  [v36 setObject:v55 forKey:@"globalModeAffinityPrior"];
  [v36 setObject:v54 forKey:@"modeAppInterruptionsCountByEntity"];
  [v36 setObject:v53 forKey:@"globalAppInterruptionsCountByEntity"];
  [v36 setObject:v52 forKey:@"modePopularityOfInterruptingEntity"];
  [v36 setObject:v38 forKey:@"globalPopularityOfInterruptingEntity"];
  [v36 setObject:v51 forKey:@"modeAppInterruptionsClassConditionalProbabilityByEntity"];
  [v36 setObject:v50 forKey:@"ratioOfModePopularityToGlobalPopularityOfInterruptingEntity"];
  [v36 setObject:v49 forKey:@"globalCountOfNotificationsReceivedForEntity"];
  [v36 setObject:v48 forKey:@"modeCountOfNotificationsReceivedForEntity"];
  [v36 setObject:v47 forKey:@"localPopularityOfNotificationsReceivedForEntity"];
  [v36 setObject:v46 forKey:@"globalPopularityOfNotificationsReceivedForEntity"];
  [v36 setObject:v32 forKey:@"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity"];
  [v36 setObject:v33 forKey:@"classConditionalOfNotificationsReceivedForEntity"];
  [v36 setObject:v34 forKey:@"modeCountOfNotificationsClearedForEntity"];
  [v36 setObject:v39 forKey:@"localNotificationsClearedRateForEntity"];
  [v36 setObject:v35 forKey:@"globalNotificationsClearedRateForEntity"];
  [v36 setObject:v40 forKey:@"globalCountOfNotificationsClearedForEntity"];
  [v36 setObject:v41 forKey:@"ratioOfLocalToGlobalNotificationsClearedRateForEntity"];
  [v36 setObject:v42 forKey:@"classConditionalOfNotificationsClearedForEntity"];

  return v36;
}

- (id)loadAppModeCoreMLModel
{
  v3 = objc_opt_new();
  v4 = [(ATXAppModeModel *)self modelName];
  v5 = [v3 loadCoreMLModelFromTrialWithName:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(ATXAppModeModel *)self modelName];
    v6 = [ATXCoreMLUtilities loadCoreMLModelWithName:v7];
  }

  return v6;
}

- (double)scoreFromAppFeatures:(id)a3
{
  v4 = a3;
  if (self->_appModeModel)
  {
    v5 = objc_alloc(MEMORY[0x277CBFED0]);
    v6 = [(ATXAppModeModel *)self featuresToModel:v4];
    v19 = 0;
    v7 = [v5 initWithDictionary:v6 error:&v19];
    v8 = v19;

    if (v8)
    {
      v9 = __atxlog_handle_modes();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXAppModeModel scoreFromAppFeatures:];
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
        [ATXAppModeModel scoreFromAppFeatures:];
      }
    }

    v14 = [v11 featureValueForName:@"classProbability"];
    [ATXCoreMLUtilities scoreForModelOutputValue:v14 outputIndexedSubscript:1];
    v16 = v15;
    if ([v4 uniqueOccurrencesInMode] < 2)
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