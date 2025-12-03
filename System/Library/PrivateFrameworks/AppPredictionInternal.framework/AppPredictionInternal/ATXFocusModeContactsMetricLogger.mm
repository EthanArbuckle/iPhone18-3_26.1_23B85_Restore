@interface ATXFocusModeContactsMetricLogger
- (ATXFocusModeContactsMetricLogger)initWithContactStore:(id)store;
- (id)_contactScoresForDenyListForMode:(unint64_t)mode;
- (id)_contactScoresForMode:(unint64_t)mode;
- (id)fetchRelevantContactIdsWithModeConfigurationUIFlowLoggingEvent:(id)event suggestedEntities:(id)entities candidateEntities:(id)candidateEntities currentEntities:(id)currentEntities;
- (void)addContactEntitySpecificFeatures:(id)features toMetric:(id)metric;
- (void)logFocusModeContactSignalsWithModeConfigurationUIFlowLoggingEvent:(id)event xpcActivity:(id)activity;
- (void)populateContactModeAffinitySignalsForMode:(unint64_t)mode contactId:(id)id metric:(id)metric;
- (void)populateContactModeDenyListSignalsForMode:(unint64_t)mode contactId:(id)id metric:(id)metric;
@end

@implementation ATXFocusModeContactsMetricLogger

- (ATXFocusModeContactsMetricLogger)initWithContactStore:(id)store
{
  storeCopy = store;
  v21.receiver = self;
  v21.super_class = ATXFocusModeContactsMetricLogger;
  v6 = [(ATXFocusModeContactsMetricLogger *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    v8 = objc_opt_new();
    cachedContactScores = v7->_cachedContactScores;
    v7->_cachedContactScores = v8;

    v10 = objc_opt_new();
    cachedContactScoresForDenyList = v7->_cachedContactScoresForDenyList;
    v7->_cachedContactScoresForDenyList = v10;

    mEMORY[0x277CEB440] = [MEMORY[0x277CEB440] sharedInstance];
    modeConfigClient = v7->_modeConfigClient;
    v7->_modeConfigClient = mEMORY[0x277CEB440];

    mEMORY[0x277CEB6A8] = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v7->_modeEntityTrialClientWrapper;
    v7->_modeEntityTrialClientWrapper = mEMORY[0x277CEB6A8];

    v16 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:storeCopy];
    stableContactRepresentationDatastore = v7->_stableContactRepresentationDatastore;
    v7->_stableContactRepresentationDatastore = v16;

    v18 = objc_opt_new();
    modeAffinityModelsConstants = v7->_modeAffinityModelsConstants;
    v7->_modeAffinityModelsConstants = v18;
  }

  return v7;
}

- (void)logFocusModeContactSignalsWithModeConfigurationUIFlowLoggingEvent:(id)event xpcActivity:(id)activity
{
  v66 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  activityCopy = activity;
  if ([eventCopy modeConfigurationEntityType] == 1)
  {
    modeConfigClient = self->_modeConfigClient;
    dndModeUUID = [eventCopy dndModeUUID];
    v10 = [(ATXDNDModeConfigurationClient *)modeConfigClient atxModeForDNDMode:dndModeUUID];

    if (v10)
    {
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

      v54 = v17;
      v45 = v20;
      v21 = [(ATXFocusModeContactsMetricLogger *)self fetchRelevantContactIdsWithModeConfigurationUIFlowLoggingEvent:eventCopy suggestedEntities:v17 candidateEntities:v20 currentEntities:v14];
      v42 = v11;
      if (v11)
      {
        v53 = -[ATXDNDModeConfigurationClient iOSContactDenyListForMode:](self->_modeConfigClient, "iOSContactDenyListForMode:", [v11 integerValue]);
        v52 = -[ATXDNDModeConfigurationClient iOSContactAllowListForMode:](self->_modeConfigClient, "iOSContactAllowListForMode:", [v11 integerValue]);
      }

      else
      {
        v52 = MEMORY[0x277CBEBF8];
        v53 = MEMORY[0x277CBEBF8];
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v21;
      v22 = v20;
      v51 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v51)
      {
        v43 = 0;
        v49 = *v56;
        v44 = v10;
        while (2)
        {
          v23 = 0;
          v24 = v43 <= 0x13;
          v25 = 19 - v43;
          v43 += v51;
          if (v24)
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v50 = v26;
          do
          {
            if (*v56 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v55 + 1) + 8 * v23);
            v28 = objc_opt_new();
            [v28 setFocusMode:v10];
            if (([v53 containsObject:v27] & 1) != 0 || objc_msgSend(eventCopy, "modeConfigurationType") == 1)
            {
              [v28 setActiveConfigurationType:{@"DenyList", v42}];
            }

            if (([v52 containsObject:{v27, v42}] & 1) != 0 || !objc_msgSend(eventCopy, "modeConfigurationType"))
            {
              [v28 setActiveConfigurationType:@"AllowList"];
            }

            trialExperimentId = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialExperimentId];
            [v28 setExperimentId:trialExperimentId];

            v30 = [MEMORY[0x277CCABB0] numberWithInt:{-[ATXModeEntityTrialClientWrapper trialDeploymentId](self->_modeEntityTrialClientWrapper, "trialDeploymentId")}];
            [v28 setDeploymentId:v30];

            trialTreatmentId = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialTreatmentId];
            [v28 setTreatmentId:trialTreatmentId];

            [v28 setIsContactCandidateSuggestion:{objc_msgSend(v22, "containsObject:", v27)}];
            [v28 setIsContactRecommendedSuggestion:{objc_msgSend(v54, "containsObject:", v27)}];
            if (([v54 containsObject:v27] & 1) != 0 || objc_msgSend(v22, "containsObject:", v27))
            {
              [v28 setWasContactSuggestedDuringModeSetup:1];
            }

            [v28 setWasContactSuggestionDuringModeSetupAccepted:{objc_msgSend(v14, "containsObject:", v27)}];
            if (![eventCopy modeConfigurationType])
            {
              [(ATXFocusModeContactsMetricLogger *)self populateContactModeAffinitySignalsForMode:v10 contactId:v27 metric:v28];
            }

            if ([eventCopy modeConfigurationType] == 1)
            {
              [(ATXFocusModeContactsMetricLogger *)self populateContactModeDenyListSignalsForMode:v10 contactId:v27 metric:v28];
            }

            v32 = __atxlog_handle_modes();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = objc_opt_class();
              v48 = v33;
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
              v10 = v44;

              v22 = v45;
            }

            [v28 logToCoreAnalytics];
            if (v50 == v23)
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

          while (v51 != v23);
          v51 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
          if (v51)
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

- (void)populateContactModeAffinitySignalsForMode:(unint64_t)mode contactId:(id)id metric:(id)metric
{
  v41 = *MEMORY[0x277D85DE8];
  idCopy = id;
  metricCopy = metric;
  v10 = [(ATXFocusModeContactsMetricLogger *)self _contactScoresForMode:mode];
  v11 = [(ATXStableContactRepresentationDatastore *)self->_stableContactRepresentationDatastore stableContactRepresentationForCnContactId:idCopy rawIdentifier:0];
  stableContactIdentifier = [v11 stableContactIdentifier];

  if (stableContactIdentifier)
  {
    v13 = [v10 objectForKeyedSubscript:stableContactIdentifier];

    if (v13)
    {
      v34 = v10;
      v35 = idCopy;
      v33 = stableContactIdentifier;
      v14 = [v10 objectForKeyedSubscript:stableContactIdentifier];
      scoreMetadata = [v14 scoreMetadata];
      featureVector = [scoreMetadata featureVector];

      v31 = [[ATXModeEntityScoringFeatures alloc] initFromJSON:featureVector];
      v32 = v14;
      v17 = MEMORY[0x277CCABB0];
      scoreMetadata2 = [v14 scoreMetadata];
      [scoreMetadata2 score];
      v19 = [v17 numberWithDouble:?];
      [metricCopy setEntityModeEntityScore:v19];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      metricFieldsToFeatureNames = [(ATXFocusModeContactsMetricLogger *)self metricFieldsToFeatureNames];
      v21 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v37;
        do
        {
          v24 = 0;
          do
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(metricFieldsToFeatureNames);
            }

            v25 = *(*(&v36 + 1) + 8 * v24);
            metricFieldsToFeatureNames2 = [(ATXFocusModeContactsMetricLogger *)self metricFieldsToFeatureNames];
            v27 = [metricFieldsToFeatureNames2 objectForKeyedSubscript:v25];

            if (v27)
            {
              v28 = [featureVector objectForKeyedSubscript:v27];

              if (v28)
              {
                v29 = [featureVector objectForKeyedSubscript:v27];
                [metricCopy setValue:v29 forKey:v25];
              }
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v22);
      }

      [(ATXFocusModeContactsMetricLogger *)self addContactEntitySpecificFeatures:v31 toMetric:metricCopy];
      v10 = v34;
      idCopy = v35;
      stableContactIdentifier = v33;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)populateContactModeDenyListSignalsForMode:(unint64_t)mode contactId:(id)id metric:(id)metric
{
  v41 = *MEMORY[0x277D85DE8];
  idCopy = id;
  metricCopy = metric;
  v10 = [(ATXFocusModeContactsMetricLogger *)self _contactScoresForDenyListForMode:mode];
  v11 = [(ATXStableContactRepresentationDatastore *)self->_stableContactRepresentationDatastore stableContactRepresentationForCnContactId:idCopy rawIdentifier:0];
  stableContactIdentifier = [v11 stableContactIdentifier];

  if (stableContactIdentifier)
  {
    v13 = [v10 objectForKeyedSubscript:stableContactIdentifier];

    if (v13)
    {
      v34 = v10;
      v35 = idCopy;
      v33 = stableContactIdentifier;
      v14 = [v10 objectForKeyedSubscript:stableContactIdentifier];
      scoreMetadata = [v14 scoreMetadata];
      featureVector = [scoreMetadata featureVector];

      v31 = [[ATXModeEntityScoringFeatures alloc] initFromJSON:featureVector];
      v32 = v14;
      v17 = MEMORY[0x277CCABB0];
      scoreMetadata2 = [v14 scoreMetadata];
      [scoreMetadata2 score];
      v19 = [v17 numberWithDouble:?];
      [metricCopy setEntityModeEntityScore:v19];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      metricFieldsToFeatureNames = [(ATXFocusModeContactsMetricLogger *)self metricFieldsToFeatureNames];
      v21 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v37;
        do
        {
          v24 = 0;
          do
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(metricFieldsToFeatureNames);
            }

            v25 = *(*(&v36 + 1) + 8 * v24);
            metricFieldsToFeatureNames2 = [(ATXFocusModeContactsMetricLogger *)self metricFieldsToFeatureNames];
            v27 = [metricFieldsToFeatureNames2 objectForKeyedSubscript:v25];

            if (v27)
            {
              v28 = [featureVector objectForKeyedSubscript:v27];

              if (v28)
              {
                v29 = [featureVector objectForKeyedSubscript:v27];
                [metricCopy setValue:v29 forKey:v25];
              }
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [metricFieldsToFeatureNames countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v22);
      }

      [(ATXFocusModeContactsMetricLogger *)self addContactEntitySpecificFeatures:v31 toMetric:metricCopy];
      v10 = v34;
      idCopy = v35;
      stableContactIdentifier = v33;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)addContactEntitySpecificFeatures:(id)features toMetric:(id)metric
{
  modeAffinityModelsConstants = self->_modeAffinityModelsConstants;
  metricCopy = metric;
  featuresCopy = features;
  [metricCopy setContactEngagedGloballyOverLastNDays:{objc_msgSend(featuresCopy, "entityOccurredGloballyOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeaturesForContacts](modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeaturesForContacts"))}];
  [metricCopy setContactEngagedInModeOverLastNDays:{objc_msgSend(featuresCopy, "entityOccurredInModeOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeaturesForContacts](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeaturesForContacts"))}];
  entitySpecificFeatures = [featuresCopy entitySpecificFeatures];

  [metricCopy setContactIsFavorite:{objc_msgSend(entitySpecificFeatures, "isFavoriteContact")}];
  [metricCopy setContactIsVIP:{objc_msgSend(entitySpecificFeatures, "isVIPContact")}];
  [metricCopy setContactIsEmergency:{objc_msgSend(entitySpecificFeatures, "isEmergencyContact")}];
  [metricCopy setContactIsiCloudFamilyMember:{objc_msgSend(entitySpecificFeatures, "isICloudFamilyMember")}];
  modeCountOfNotificationsClearedForEntity = [entitySpecificFeatures modeCountOfNotificationsClearedForEntity];
  [metricCopy setNotificationsClearedInMode:modeCountOfNotificationsClearedForEntity];

  globalCountOfNotificationsClearedForEntity = [entitySpecificFeatures globalCountOfNotificationsClearedForEntity];
  [metricCopy setNotificationsClearedGlobally:globalCountOfNotificationsClearedForEntity];

  localNotificationsClearedRateForEntity = [entitySpecificFeatures localNotificationsClearedRateForEntity];
  [metricCopy setLocalNotificationsClearedRateForEntity:localNotificationsClearedRateForEntity];

  globalNotificationsClearedRateForEntity = [entitySpecificFeatures globalNotificationsClearedRateForEntity];
  [metricCopy setGlobalNotificationsClearedRateForEntity:globalNotificationsClearedRateForEntity];

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

- (id)fetchRelevantContactIdsWithModeConfigurationUIFlowLoggingEvent:(id)event suggestedEntities:(id)entities candidateEntities:(id)candidateEntities currentEntities:(id)currentEntities
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

- (id)_contactScoresForMode:(unint64_t)mode
{
  cachedContactScores = self->_cachedContactScores;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedContactScores objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedContactScores;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXContactModeModel alloc] initWithMode:mode contactStore:self->_contactStore];
    scoredEntities = [(ATXContactModeModel *)v9 scoredEntities];
    v12 = self->_cachedContactScores;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    [(NSMutableDictionary *)v12 setObject:scoredEntities forKeyedSubscript:v13];

    v14 = self->_cachedContactScores;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  return v10;
}

- (id)_contactScoresForDenyListForMode:(unint64_t)mode
{
  cachedContactScoresForDenyList = self->_cachedContactScoresForDenyList;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedContactScoresForDenyList objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedContactScoresForDenyList;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXContactModeDenyListModel alloc] initWithMode:mode contactStore:self->_contactStore];
    scoredEntities = [(ATXContactModeDenyListModel *)v9 scoredEntities];
    v12 = self->_cachedContactScoresForDenyList;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    [(NSMutableDictionary *)v12 setObject:scoredEntities forKeyedSubscript:v13];

    v14 = self->_cachedContactScoresForDenyList;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    v10 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  return v10;
}

@end