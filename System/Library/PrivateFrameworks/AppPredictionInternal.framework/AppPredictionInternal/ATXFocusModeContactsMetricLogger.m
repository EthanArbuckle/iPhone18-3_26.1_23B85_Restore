@interface ATXFocusModeContactsMetricLogger
- (ATXFocusModeContactsMetricLogger)initWithContactStore:(id)a3;
- (id)_contactScoresForDenyListForMode:(unint64_t)a3;
- (id)_contactScoresForMode:(unint64_t)a3;
- (id)fetchRelevantContactIdsWithModeConfigurationUIFlowLoggingEvent:(id)a3 suggestedEntities:(id)a4 candidateEntities:(id)a5 currentEntities:(id)a6;
- (void)addContactEntitySpecificFeatures:(id)a3 toMetric:(id)a4;
- (void)logFocusModeContactSignalsWithModeConfigurationUIFlowLoggingEvent:(id)a3 xpcActivity:(id)a4;
- (void)populateContactModeAffinitySignalsForMode:(unint64_t)a3 contactId:(id)a4 metric:(id)a5;
- (void)populateContactModeDenyListSignalsForMode:(unint64_t)a3 contactId:(id)a4 metric:(id)a5;
@end

@implementation ATXFocusModeContactsMetricLogger

- (ATXFocusModeContactsMetricLogger)initWithContactStore:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = ATXFocusModeContactsMetricLogger;
  v6 = [(ATXFocusModeContactsMetricLogger *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = objc_opt_new();
    cachedContactScores = v7->_cachedContactScores;
    v7->_cachedContactScores = v8;

    v10 = objc_opt_new();
    cachedContactScoresForDenyList = v7->_cachedContactScoresForDenyList;
    v7->_cachedContactScoresForDenyList = v10;

    v12 = [MEMORY[0x277CEB440] sharedInstance];
    modeConfigClient = v7->_modeConfigClient;
    v7->_modeConfigClient = v12;

    v14 = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v7->_modeEntityTrialClientWrapper;
    v7->_modeEntityTrialClientWrapper = v14;

    v16 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:v5];
    stableContactRepresentationDatastore = v7->_stableContactRepresentationDatastore;
    v7->_stableContactRepresentationDatastore = v16;

    v18 = objc_opt_new();
    modeAffinityModelsConstants = v7->_modeAffinityModelsConstants;
    v7->_modeAffinityModelsConstants = v18;
  }

  return v7;
}

- (void)logFocusModeContactSignalsWithModeConfigurationUIFlowLoggingEvent:(id)a3 xpcActivity:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 modeConfigurationEntityType] == 1)
  {
    modeConfigClient = self->_modeConfigClient;
    v9 = [v6 dndModeUUID];
    v10 = [(ATXDNDModeConfigurationClient *)modeConfigClient atxModeForDNDMode:v9];

    if (v10)
    {
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

      v54 = v17;
      v45 = v20;
      v21 = [(ATXFocusModeContactsMetricLogger *)self fetchRelevantContactIdsWithModeConfigurationUIFlowLoggingEvent:v6 suggestedEntities:v17 candidateEntities:v20 currentEntities:v14];
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
            if (([v53 containsObject:v27] & 1) != 0 || objc_msgSend(v6, "modeConfigurationType") == 1)
            {
              [v28 setActiveConfigurationType:{@"DenyList", v42}];
            }

            if (([v52 containsObject:{v27, v42}] & 1) != 0 || !objc_msgSend(v6, "modeConfigurationType"))
            {
              [v28 setActiveConfigurationType:@"AllowList"];
            }

            v29 = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialExperimentId];
            [v28 setExperimentId:v29];

            v30 = [MEMORY[0x277CCABB0] numberWithInt:{-[ATXModeEntityTrialClientWrapper trialDeploymentId](self->_modeEntityTrialClientWrapper, "trialDeploymentId")}];
            [v28 setDeploymentId:v30];

            v31 = [(ATXModeEntityTrialClientWrapper *)self->_modeEntityTrialClientWrapper trialTreatmentId];
            [v28 setTreatmentId:v31];

            [v28 setIsContactCandidateSuggestion:{objc_msgSend(v22, "containsObject:", v27)}];
            [v28 setIsContactRecommendedSuggestion:{objc_msgSend(v54, "containsObject:", v27)}];
            if (([v54 containsObject:v27] & 1) != 0 || objc_msgSend(v22, "containsObject:", v27))
            {
              [v28 setWasContactSuggestedDuringModeSetup:1];
            }

            [v28 setWasContactSuggestionDuringModeSetupAccepted:{objc_msgSend(v14, "containsObject:", v27)}];
            if (![v6 modeConfigurationType])
            {
              [(ATXFocusModeContactsMetricLogger *)self populateContactModeAffinitySignalsForMode:v10 contactId:v27 metric:v28];
            }

            if ([v6 modeConfigurationType] == 1)
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
              v10 = v44;

              v22 = v45;
            }

            [v28 logToCoreAnalytics];
            if (v50 == v23)
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

- (void)populateContactModeAffinitySignalsForMode:(unint64_t)a3 contactId:(id)a4 metric:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(ATXFocusModeContactsMetricLogger *)self _contactScoresForMode:a3];
  v11 = [(ATXStableContactRepresentationDatastore *)self->_stableContactRepresentationDatastore stableContactRepresentationForCnContactId:v8 rawIdentifier:0];
  v12 = [v11 stableContactIdentifier];

  if (v12)
  {
    v13 = [v10 objectForKeyedSubscript:v12];

    if (v13)
    {
      v34 = v10;
      v35 = v8;
      v33 = v12;
      v14 = [v10 objectForKeyedSubscript:v12];
      v15 = [v14 scoreMetadata];
      v16 = [v15 featureVector];

      v31 = [[ATXModeEntityScoringFeatures alloc] initFromJSON:v16];
      v32 = v14;
      v17 = MEMORY[0x277CCABB0];
      v18 = [v14 scoreMetadata];
      [v18 score];
      v19 = [v17 numberWithDouble:?];
      [v9 setEntityModeEntityScore:v19];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v20 = [(ATXFocusModeContactsMetricLogger *)self metricFieldsToFeatureNames];
      v21 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v36 + 1) + 8 * v24);
            v26 = [(ATXFocusModeContactsMetricLogger *)self metricFieldsToFeatureNames];
            v27 = [v26 objectForKeyedSubscript:v25];

            if (v27)
            {
              v28 = [v16 objectForKeyedSubscript:v27];

              if (v28)
              {
                v29 = [v16 objectForKeyedSubscript:v27];
                [v9 setValue:v29 forKey:v25];
              }
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v22);
      }

      [(ATXFocusModeContactsMetricLogger *)self addContactEntitySpecificFeatures:v31 toMetric:v9];
      v10 = v34;
      v8 = v35;
      v12 = v33;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)populateContactModeDenyListSignalsForMode:(unint64_t)a3 contactId:(id)a4 metric:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(ATXFocusModeContactsMetricLogger *)self _contactScoresForDenyListForMode:a3];
  v11 = [(ATXStableContactRepresentationDatastore *)self->_stableContactRepresentationDatastore stableContactRepresentationForCnContactId:v8 rawIdentifier:0];
  v12 = [v11 stableContactIdentifier];

  if (v12)
  {
    v13 = [v10 objectForKeyedSubscript:v12];

    if (v13)
    {
      v34 = v10;
      v35 = v8;
      v33 = v12;
      v14 = [v10 objectForKeyedSubscript:v12];
      v15 = [v14 scoreMetadata];
      v16 = [v15 featureVector];

      v31 = [[ATXModeEntityScoringFeatures alloc] initFromJSON:v16];
      v32 = v14;
      v17 = MEMORY[0x277CCABB0];
      v18 = [v14 scoreMetadata];
      [v18 score];
      v19 = [v17 numberWithDouble:?];
      [v9 setEntityModeEntityScore:v19];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v20 = [(ATXFocusModeContactsMetricLogger *)self metricFieldsToFeatureNames];
      v21 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v36 + 1) + 8 * v24);
            v26 = [(ATXFocusModeContactsMetricLogger *)self metricFieldsToFeatureNames];
            v27 = [v26 objectForKeyedSubscript:v25];

            if (v27)
            {
              v28 = [v16 objectForKeyedSubscript:v27];

              if (v28)
              {
                v29 = [v16 objectForKeyedSubscript:v27];
                [v9 setValue:v29 forKey:v25];
              }
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v22);
      }

      [(ATXFocusModeContactsMetricLogger *)self addContactEntitySpecificFeatures:v31 toMetric:v9];
      v10 = v34;
      v8 = v35;
      v12 = v33;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)addContactEntitySpecificFeatures:(id)a3 toMetric:(id)a4
{
  modeAffinityModelsConstants = self->_modeAffinityModelsConstants;
  v7 = a4;
  v8 = a3;
  [v7 setContactEngagedGloballyOverLastNDays:{objc_msgSend(v8, "entityOccurredGloballyOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeaturesForContacts](modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeaturesForContacts"))}];
  [v7 setContactEngagedInModeOverLastNDays:{objc_msgSend(v8, "entityOccurredInModeOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeaturesForContacts](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeaturesForContacts"))}];
  v21 = [v8 entitySpecificFeatures];

  [v7 setContactIsFavorite:{objc_msgSend(v21, "isFavoriteContact")}];
  [v7 setContactIsVIP:{objc_msgSend(v21, "isVIPContact")}];
  [v7 setContactIsEmergency:{objc_msgSend(v21, "isEmergencyContact")}];
  [v7 setContactIsiCloudFamilyMember:{objc_msgSend(v21, "isICloudFamilyMember")}];
  v9 = [v21 modeCountOfNotificationsClearedForEntity];
  [v7 setNotificationsClearedInMode:v9];

  v10 = [v21 globalCountOfNotificationsClearedForEntity];
  [v7 setNotificationsClearedGlobally:v10];

  v11 = [v21 localNotificationsClearedRateForEntity];
  [v7 setLocalNotificationsClearedRateForEntity:v11];

  v12 = [v21 globalNotificationsClearedRateForEntity];
  [v7 setGlobalNotificationsClearedRateForEntity:v12];

  v13 = [v21 ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  [v7 setRatioOfLocalToGlobalNotificationsClearedRateForEntity:v13];

  v14 = [v21 classConditionalOfNotificationsClearedForEntity];
  [v7 setClassConditionalOfNotificationsClearedForEntity:v14];

  v15 = [v21 globalCountOfNotificationsReceivedForEntity];
  [v7 setNotificationsReceivedGlobally:v15];

  v16 = [v21 modeCountOfNotificationsReceivedForEntity];
  [v7 setNotificationsReceivedInMode:v16];

  v17 = [v21 localPopularityOfNotificationsReceivedForEntity];
  [v7 setLocalPopularityOfNotificationsReceivedForEntity:v17];

  v18 = [v21 globalPopularityOfNotificationsReceivedForEntity];
  [v7 setGlobalPopularityOfNotificationsReceivedForEntity:v18];

  v19 = [v21 ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  [v7 setRatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity:v19];

  v20 = [v21 classConditionalOfNotificationsReceivedForEntity];
  [v7 setClassConditionalOfNotificationsReceivedForEntity:v20];
}

- (id)fetchRelevantContactIdsWithModeConfigurationUIFlowLoggingEvent:(id)a3 suggestedEntities:(id)a4 candidateEntities:(id)a5 currentEntities:(id)a6
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

- (id)_contactScoresForMode:(unint64_t)a3
{
  cachedContactScores = self->_cachedContactScores;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedContactScores objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedContactScores;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXContactModeModel alloc] initWithMode:a3 contactStore:self->_contactStore];
    v11 = [(ATXContactModeModel *)v9 scoredEntities];
    v12 = self->_cachedContactScores;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

    v14 = self->_cachedContactScores;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  return v10;
}

- (id)_contactScoresForDenyListForMode:(unint64_t)a3
{
  cachedContactScoresForDenyList = self->_cachedContactScoresForDenyList;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)cachedContactScoresForDenyList objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_cachedContactScoresForDenyList;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v9 = [[ATXContactModeDenyListModel alloc] initWithMode:a3 contactStore:self->_contactStore];
    v11 = [(ATXContactModeDenyListModel *)v9 scoredEntities];
    v12 = self->_cachedContactScoresForDenyList;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

    v14 = self->_cachedContactScoresForDenyList;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];
  }

  return v10;
}

@end