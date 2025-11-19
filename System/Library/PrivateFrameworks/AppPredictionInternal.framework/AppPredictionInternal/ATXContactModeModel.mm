@interface ATXContactModeModel
- (ATXContactModeModel)initWithMode:(unint64_t)a3 contactStore:(id)a4;
- (double)scoreFromContactFeatures:(id)a3;
- (id)contactKeysToFetch;
- (id)featuresToModel:(id)a3;
- (id)loadContactModeModel;
- (id)meContact;
- (id)purgeDeletedContacts:(id)a3;
- (id)scoredEntities;
- (void)addNotificationsSignalsForIdentifier:(id)a3 toContactSpecificFeatures:(id)a4;
@end

@implementation ATXContactModeModel

- (ATXContactModeModel)initWithMode:(unint64_t)a3 contactStore:(id)a4
{
  v7 = a4;
  v25.receiver = self;
  v25.super_class = ATXContactModeModel;
  v8 = [(ATXContactModeModel *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = a3;
    objc_storeStrong(&v8->_contactStore, a4);
    v10 = [(ATXContactModeModel *)v9 loadContactModeModel];
    contactModeModel = v9->_contactModeModel;
    v9->_contactModeModel = v10;

    v12 = [MEMORY[0x277CEB420] cnContactIdsOfFavoriteContactsWithContactStore:v7];
    cnContactIdsOfFavoriteContacts = v9->_cnContactIdsOfFavoriteContacts;
    v9->_cnContactIdsOfFavoriteContacts = v12;

    v14 = [MEMORY[0x277CEB420] vipContactEmailAddresses];
    vipContactEmailAddresses = v9->_vipContactEmailAddresses;
    v9->_vipContactEmailAddresses = v14;

    v16 = [MEMORY[0x277CEB420] cnContactIdsOfEmergencyContacts];
    cnContactIdsOfEmergencyContacts = v9->_cnContactIdsOfEmergencyContacts;
    v9->_cnContactIdsOfEmergencyContacts = v16;

    v18 = [MEMORY[0x277CEB420] cnContactIdsOfICloudFamilyMembers];
    cnContactIdsOfICloudFamilyMembers = v9->_cnContactIdsOfICloudFamilyMembers;
    v9->_cnContactIdsOfICloudFamilyMembers = v18;

    v20 = [ATXModeEntityModelTrainer eventProviderForMode:v9->_mode];
    modeEventProvider = v9->_modeEventProvider;
    v9->_modeEventProvider = v20;

    v22 = objc_opt_new();
    modeAffinityModelsConstants = v9->_modeAffinityModelsConstants;
    v9->_modeAffinityModelsConstants = v22;
  }

  return v9;
}

- (id)scoredEntities
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [[ATXInteractionEventProvider alloc] initWithContactStore:self->_contactStore];
  v5 = [[ATXModeEntityCorrelator alloc] initWithModeEventProvider:self->_modeEventProvider entityEventProvider:v4];
  v6 = [[ATXContactNotificationEngagementEventProvider alloc] initWithModeEventProvider:self->_modeEventProvider];
  contactNotificationEngagementEventProvider = self->_contactNotificationEngagementEventProvider;
  self->_contactNotificationEngagementEventProvider = v6;

  if (![(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider successfullyCalculatedNotificationEvents])
  {
    v8 = __atxlog_handle_modes();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXContactModeDenyListModel *)v8 scoredEntities];
    }
  }

  v9 = [(ATXModeEntityCorrelator *)v5 entityFeaturesForModeEntityScoring];
  v10 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    mode = self->_mode;
    v12 = ATXModeToString();
    *buf = 136315650;
    v31 = "[ATXContactModeModel scoredEntities]";
    v32 = 2112;
    v33 = v12;
    v34 = 2048;
    v35 = [v9 count];
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%s: mode: '%@' returned %ld contacts from featurizer", buf, 0x20u);
  }

  [v9 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_263];
  v13 = [(ATXContactModeModel *)self meContact];
  v14 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:self->_contactStore];
  v15 = [v13 identifier];
  v16 = [(ATXStableContactRepresentationDatastore *)v14 stableContactRepresentationForCnContactId:v15 rawIdentifier:0];
  v17 = [v16 stableContactIdentifier];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __37__ATXContactModeModel_scoredEntities__block_invoke_30;
  v25[3] = &unk_2785970E0;
  v26 = v17;
  v27 = self;
  v28 = v14;
  v18 = v3;
  v29 = v18;
  v19 = v14;
  v20 = v17;
  [v9 enumerateKeysAndObjectsUsingBlock:v25];
  v21 = v29;
  v22 = v18;

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

void __37__ATXContactModeModel_scoredEntities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __37__ATXContactModeModel_scoredEntities__block_invoke_cold_1(v4, v5, v6);
  }
}

void __37__ATXContactModeModel_scoredEntities__block_invoke_30(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v4 = [v26 entity];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    v7 = [v26 entitySpecificFeatures];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_opt_new();
    }

    v10 = v9;

    v11 = [v26 entity];
    [v10 setIsVIPContact:{objc_msgSend(v11, "isVIPContactGivenVIPs:contactStore:", *(*(a1 + 40) + 32), *(*(a1 + 40) + 80))}];

    v12 = *(a1 + 48);
    v13 = [v26 entity];
    v14 = [v13 identifier];
    v15 = [v12 stableContactRepresentationForStableContactIdentifier:v14];
    v16 = [v15 cnContactId];

    if (v16)
    {
      [v10 setIsICloudFamilyMember:{objc_msgSend(*(*(a1 + 40) + 48), "containsObject:", v16)}];
      [v10 setIsEmergencyContact:{objc_msgSend(*(*(a1 + 40) + 40), "containsObject:", v16)}];
      [v10 setIsFavoriteContact:{objc_msgSend(*(*(a1 + 40) + 24), "containsObject:", v16)}];
      [*(a1 + 40) addNotificationsSignalsForIdentifier:v16 toContactSpecificFeatures:v10];
    }

    [v26 setEntitySpecificFeatures:v10];
    [*(a1 + 40) scoreFromContactFeatures:v26];
    v18 = v17;
    v19 = objc_opt_new();
    [v19 setScore:v18];
    v20 = [v26 jsonRepresentation];
    [v19 setFeatureVector:v20];

    v21 = [v26 entity];
    [v21 setScoreMetadata:v19];

    v22 = *(a1 + 56);
    v23 = [v26 entity];
    v24 = [v26 entity];
    v25 = [v24 identifier];
    [v22 setObject:v23 forKey:v25];
  }
}

- (void)addNotificationsSignalsForIdentifier:(id)a3 toContactSpecificFeatures:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  contactNotificationEngagementEventProvider = self->_contactNotificationEngagementEventProvider;
  v8 = a4;
  v9 = a3;
  v10 = [v6 numberWithUnsignedInteger:{-[ATXContactNotificationEngagementEventProvider globalCountOfNotificationsClearedForContactId:](contactNotificationEngagementEventProvider, "globalCountOfNotificationsClearedForContactId:", v9)}];
  [v8 setGlobalCountOfNotificationsClearedForEntity:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContactNotificationEngagementEventProvider modeCountOfNotificationsClearedForContactId:](self->_contactNotificationEngagementEventProvider, "modeCountOfNotificationsClearedForContactId:", v9)}];
  [v8 setModeCountOfNotificationsClearedForEntity:v11];

  v12 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider localNotificationsClearedRateForContactId:v9];
  v13 = [v12 numberWithDouble:?];
  [v8 setLocalNotificationsClearedRateForEntity:v13];

  v14 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider globalNotificationsClearedRateForContactId:v9];
  v15 = [v14 numberWithDouble:?];
  [v8 setGlobalNotificationsClearedRateForEntity:v15];

  v16 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider ratioOfLocalToGlobalNotificationsClearedRateForContactId:v9];
  v17 = [v16 numberWithDouble:?];
  [v8 setRatioOfLocalToGlobalNotificationsClearedRateForEntity:v17];

  v18 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider classConditionalOfNotificationsClearedForContactId:v9];
  v19 = [v18 numberWithDouble:?];
  [v8 setClassConditionalOfNotificationsClearedForEntity:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContactNotificationEngagementEventProvider globalCountOfNotificationsReceivedForContactId:](self->_contactNotificationEngagementEventProvider, "globalCountOfNotificationsReceivedForContactId:", v9)}];
  [v8 setGlobalCountOfNotificationsReceivedForEntity:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContactNotificationEngagementEventProvider modeCountOfNotificationsReceivedForContactId:](self->_contactNotificationEngagementEventProvider, "modeCountOfNotificationsReceivedForContactId:", v9)}];
  [v8 setModeCountOfNotificationsReceivedForEntity:v21];

  v22 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider localPopularityOfNotificationsReceivedForContactId:v9];
  v23 = [v22 numberWithDouble:?];
  [v8 setLocalPopularityOfNotificationsReceivedForEntity:v23];

  v24 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider globalPopularityOfNotificationsReceivedForContactId:v9];
  v25 = [v24 numberWithDouble:?];
  [v8 setGlobalPopularityOfNotificationsReceivedForEntity:v25];

  v26 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider ratioOfLocalToGlobalPopularityOfNotificationsReceivedForContactId:v9];
  v27 = [v26 numberWithDouble:?];
  [v8 setRatioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity:v27];

  v28 = MEMORY[0x277CCABB0];
  [(ATXContactNotificationEngagementEventProvider *)self->_contactNotificationEngagementEventProvider classConditionalOfNotificationsReceivedForContactId:v9];
  v30 = v29;

  v31 = [v28 numberWithDouble:v30];
  [v8 setClassConditionalOfNotificationsReceivedForEntity:v31];
}

- (id)meContact
{
  contactStore = self->_contactStore;
  v3 = [(ATXContactModeModel *)self contactKeysToFetch];
  v14 = 0;
  v4 = [(CNContactStore *)contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v3 error:&v14];
  v5 = v14;

  if (v5)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXContactModeDenyListModel *)v5 meContact:v6];
    }
  }

  return v4;
}

- (id)contactKeysToFetch
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBD098];
  v6[0] = *MEMORY[0x277CBD018];
  v6[1] = v2;
  v6[2] = *MEMORY[0x277CBCFC0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
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
      [ATXContactModeModel featuresToModel:v7];
    }
  }

  v8 = [v4 entitySpecificFeatures];
  v9 = MEMORY[0x277CCABB0];
  [v4 classConditionalProbability];
  v39 = [v9 numberWithDouble:?];
  v10 = MEMORY[0x277CCABB0];
  [v4 posteriorProbability];
  v40 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x277CCABB0];
  [v4 globalPopularity];
  v37 = [v11 numberWithDouble:?];
  v12 = MEMORY[0x277CCABB0];
  [v4 modePopularity];
  v38 = [v12 numberWithDouble:?];
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "entityOccurredGloballyOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeaturesForContacts](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeaturesForContacts"))}];
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "entityOccurredInModeOverLastNDays:", -[ATXModeAffinityModelsConstants numOfDaysToComputeEntityOccurenceFeaturesForContacts](self->_modeAffinityModelsConstants, "numOfDaysToComputeEntityOccurenceFeaturesForContacts"))}];
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isFavoriteContact")}];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isVIPContact")}];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isEmergencyContact")}];
  v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isICloudFamilyMember")}];
  v13 = MEMORY[0x277CCABB0];
  [v4 ratioModeAndGlobalPopularity];
  v15 = v14;

  v23 = [v13 numberWithDouble:v15];
  v32 = [v8 globalCountOfNotificationsReceivedForEntity];
  v31 = [v8 modeCountOfNotificationsReceivedForEntity];
  v30 = [v8 localPopularityOfNotificationsReceivedForEntity];
  v29 = [v8 globalPopularityOfNotificationsReceivedForEntity];
  v16 = [v8 ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity];
  v17 = [v8 classConditionalOfNotificationsReceivedForEntity];
  v18 = [v8 globalCountOfNotificationsClearedForEntity];
  v19 = [v8 modeCountOfNotificationsClearedForEntity];
  v24 = [v8 localNotificationsClearedRateForEntity];
  v25 = [v8 globalNotificationsClearedRateForEntity];
  v26 = [v8 ratioOfLocalToGlobalNotificationsClearedRateForEntity];
  v20 = [v8 classConditionalOfNotificationsClearedForEntity];
  v21 = objc_opt_new();
  [v21 setObject:v39 forKey:@"classConditionalProbability"];
  [v21 setObject:v40 forKey:@"posteriorProbability"];
  [v21 setObject:v37 forKey:@"globalPopularity"];
  [v21 setObject:v38 forKey:@"modePopularity"];
  [v21 setObject:v28 forKey:@"contactEngagedGloballyOverLastNDays"];
  [v21 setObject:v27 forKey:@"contactEngagedInModeOverLastNDays"];
  [v21 setObject:v36 forKey:@"contactIsFavorite"];
  [v21 setObject:v35 forKey:@"contactIsVIP"];
  [v21 setObject:v34 forKey:@"contactIsEmergency"];
  [v21 setObject:v33 forKey:@"contactIsICloudFamilyMember"];
  [v21 setObject:v23 forKey:@"ratioOfModePopularityToGlobalPopularityOfEntity"];
  [v21 setObject:v32 forKey:@"globalCountOfNotificationsReceivedForEntity"];
  [v21 setObject:v31 forKey:@"modeCountOfNotificationsReceivedForEntity"];
  [v21 setObject:v30 forKey:@"localPopularityOfNotificationsReceivedForEntity"];
  [v21 setObject:v29 forKey:@"globalPopularityOfNotificationsReceivedForEntity"];
  [v21 setObject:v16 forKey:@"ratioOfLocalToGlobalPopularityOfNotificationsReceivedForEntity"];
  [v21 setObject:v17 forKey:@"classConditionalOfNotificationsReceivedForEntity"];
  [v21 setObject:v18 forKey:@"globalCountOfNotificationsClearedForEntity"];
  [v21 setObject:v19 forKey:@"modeCountOfNotificationsClearedForEntity"];
  [v21 setObject:v24 forKey:@"localNotificationsClearedRateForEntity"];
  [v21 setObject:v25 forKey:@"globalNotificationsClearedRateForEntity"];
  [v21 setObject:v26 forKey:@"ratioOfLocalToGlobalNotificationsClearedRateForEntity"];
  [v21 setObject:v20 forKey:@"classConditionalOfNotificationsClearedForEntity"];

  return v21;
}

- (id)loadContactModeModel
{
  v3 = objc_opt_new();
  v4 = [(ATXContactModeModel *)self modelName];
  v5 = [v3 loadCoreMLModelFromTrialWithName:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(ATXContactModeModel *)self modelName];
    v6 = [ATXCoreMLUtilities loadCoreMLModelWithName:v7];
  }

  return v6;
}

- (double)scoreFromContactFeatures:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 uniqueOccurrencesInMode] > 2)
  {
    if (!self->_contactModeModel)
    {
      v6 = 0.0;
      goto LABEL_16;
    }

    v11 = objc_alloc(MEMORY[0x277CBFED0]);
    v12 = [(ATXContactModeModel *)self featuresToModel:v4];
    v34 = 0;
    v7 = [v11 initWithDictionary:v12 error:&v34];
    v13 = v34;

    if (v13)
    {
      v14 = __atxlog_handle_modes();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ATXContactModeModel *)v13 scoreFromContactFeatures:v14, v15, v16, v17, v18, v19, v20];
      }
    }

    contactModeModel = self->_contactModeModel;
    v33 = v13;
    v10 = [(MLModel *)contactModeModel predictionFromFeatures:v7 error:&v33];
    v5 = v33;

    if (v5)
    {
      v22 = __atxlog_handle_modes();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(ATXContactModeModel *)v5 scoreFromContactFeatures:v22, v23, v24, v25, v26, v27, v28];
      }
    }

    v29 = [v10 featureValueForName:@"classProbability"];
    [ATXCoreMLUtilities scoreForModelOutputValue:v29 outputIndexedSubscript:1];
    v6 = v30;

    goto LABEL_14;
  }

  v5 = __atxlog_handle_notification_management();
  v6 = 0.0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 entityDescription];
    v8 = [v4 uniqueOccurrencesInMode];
    mode = self->_mode;
    v10 = ATXModeToString();
    *buf = 136315907;
    v36 = "[ATXContactModeModel scoreFromContactFeatures:]";
    v37 = 2117;
    v38 = v7;
    v39 = 2048;
    v40 = v8;
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: contact '%{sensitive}@' only had %ld < 3 unique occurrences in mode: '%@' so setting score to zero", buf, 0x2Au);
LABEL_14:
  }

LABEL_16:
  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)purgeDeletedContacts:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [[ATXStableContactRepresentationDatastore alloc] initWithContactStore:self->_contactStore];
  contactStore = self->_contactStore;
  v8 = objc_alloc(MEMORY[0x277CBDA70]);
  v24[0] = *MEMORY[0x277CBD018];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v10 = [v8 initWithKeysToFetch:v9];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__ATXContactModeModel_purgeDeletedContacts___block_invoke;
  v20[3] = &unk_278599BD8;
  v21 = v6;
  v11 = v4;
  v22 = v11;
  v12 = v5;
  v23 = v12;
  v13 = v6;
  [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v10 error:0 usingBlock:v20];

  v14 = [v12 count];
  if (v14 != [v11 count])
  {
    v15 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(ATXContactModeModel *)v11 purgeDeletedContacts:v12, v15];
    }
  }

  v16 = v23;
  v17 = v12;

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

void __44__ATXContactModeModel_purgeDeletedContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 identifier];
  v5 = [v3 stableContactRepresentationForCnContactId:v4 rawIdentifier:0];
  v8 = [v5 stableContactIdentifier];

  v6 = [*(a1 + 40) objectForKeyedSubscript:v8];

  if (v6)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v8];
    [*(a1 + 48) setObject:v7 forKeyedSubscript:v8];
  }
}

void __37__ATXContactModeModel_scoredEntities__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a2 debugDescription];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2839A6058];
  v8 = 136315651;
  v9 = "[ATXContactModeModel scoredEntities]_block_invoke";
  v10 = 2117;
  v11 = a1;
  v12 = 2117;
  v13 = v6;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "  %s: contactId: '%{sensitive}@' features: '%{sensitive}@'", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)scoreFromContactFeatures:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXContactModeModel - Error initializing MLDictionaryFeatureProvider for inference on the CoreMLModel: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)scoreFromContactFeatures:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXContactModeModel - Error during inference on the CoreMLModel: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)purgeDeletedContacts:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 count];
  v7 = 136315394;
  v8 = "[ATXContactModeModel purgeDeletedContacts:]";
  v9 = 2048;
  v10 = v5 - [a2 count];
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "%s: Filtered out %ld deleted contacts", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end