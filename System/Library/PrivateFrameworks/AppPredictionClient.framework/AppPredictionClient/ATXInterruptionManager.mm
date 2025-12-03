@interface ATXInterruptionManager
- (ATXInterruptionManager)init;
- (ATXInterruptionManager)initWithModesModels:(id)models notificationSettingsReader:(id)reader modeConfigurationClient:(id)client;
- (BOOL)appSatisfiesRelevanceCriteriaForAllowOrSilenceList:(id)list;
- (id)recommendedAllowedAppsForMode:(unint64_t)mode;
- (id)recommendedAllowedContactsForContactScores:(id)scores;
- (id)recommendedDeniedAppsForMode:(unint64_t)mode;
- (id)recommendedDeniedContactsForMode:(unint64_t)mode options:(unint64_t)options;
- (void)recommendedAllowedContactsForDNDMode:(id)mode reply:(id)reply;
- (void)recommendedAllowedContactsForDNDModeSemanticType:(int64_t)type reply:(id)reply;
- (void)recommendedAllowedContactsForMode:(unint64_t)mode reply:(id)reply;
- (void)recommendedAndCandidateAllowedAppsForDNDMode:(id)mode reply:(id)reply;
- (void)recommendedAndCandidateAllowedAppsForDNDModeSemanticType:(int64_t)type reply:(id)reply;
- (void)recommendedAndCandidateAllowedAppsForMode:(unint64_t)mode reply:(id)reply;
- (void)recommendedAndCandidateAllowedContactsForDNDMode:(id)mode reply:(id)reply;
- (void)recommendedAndCandidateAllowedContactsForDNDModeSemanticType:(int64_t)type reply:(id)reply;
- (void)recommendedAndCandidateAllowedContactsForMode:(unint64_t)mode reply:(id)reply;
- (void)recommendedAndCandidateDeniedAppsForDNDMode:(id)mode reply:(id)reply;
- (void)recommendedAndCandidateDeniedAppsForDNDModeSemanticType:(int64_t)type reply:(id)reply;
- (void)recommendedAndCandidateDeniedAppsForMode:(unint64_t)mode reply:(id)reply;
- (void)recommendedAndCandidateDeniedContactsForDNDMode:(id)mode reply:(id)reply;
- (void)recommendedAndCandidateDeniedContactsForDNDModeSemanticType:(int64_t)type reply:(id)reply;
- (void)recommendedAndCandidateDeniedContactsForMode:(unint64_t)mode reply:(id)reply;
- (void)recommendedDeniedContactsForDNDMode:(id)mode reply:(id)reply;
- (void)recommendedDeniedContactsForDNDModeSemanticType:(int64_t)type reply:(id)reply;
- (void)recommendedDeniedContactsForMode:(unint64_t)mode reply:(id)reply;
@end

@implementation ATXInterruptionManager

- (ATXInterruptionManager)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = +[ATXDNDModeConfigurationClient sharedInstance];
  v6 = [(ATXInterruptionManager *)self initWithModesModels:v3 notificationSettingsReader:v4 modeConfigurationClient:v5];

  return v6;
}

- (ATXInterruptionManager)initWithModesModels:(id)models notificationSettingsReader:(id)reader modeConfigurationClient:(id)client
{
  modelsCopy = models;
  readerCopy = reader;
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = ATXInterruptionManager;
  v12 = [(ATXInterruptionManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_modesModels, models);
    objc_storeStrong(&v13->_notificationSettingsReader, reader);
    objc_storeStrong(&v13->_modeConfigurationClient, client);
    v14 = +[ATXNotificationManagementMAConstants sharedInstance];
    notificationManagementConstants = v13->_notificationManagementConstants;
    v13->_notificationManagementConstants = v14;
  }

  return v13;
}

- (id)recommendedAllowedAppsForMode:(unint64_t)mode
{
  v16 = *MEMORY[0x1E69E9840];
  if (mode == 5)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = [(ATXModeEntityScorerProtocol *)self->_modesModels rankedAppsForMode:?];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__ATXInterruptionManager_recommendedAllowedAppsForMode___block_invoke;
    v9[3] = &unk_1E80C0FE0;
    v9[4] = self;
    v9[5] = &v10;
    v3 = [v5 _pas_filteredArrayWithTest:v9];
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v11 + 6);
      *buf = 67109120;
      v15 = v7;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "Number of allowed apps returned from Proactive for configuration suggestions = %d", buf, 8u);
    }

    _Block_object_dispose(&v10, 8);
  }

  return v3;
}

uint64_t __56__ATXInterruptionManager_recommendedAllowedAppsForMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scoreMetadata];
  [v4 score];
  v6 = v5;
  [*(*(a1 + 32) + 32) interruptionManagerRecommendationThresholdForApps];
  v8 = v7;

  if (v6 >= v8 && (v9 = *(*(*(a1 + 40) + 8) + 24), [*(*(a1 + 32) + 32) interruptionManagerMaxSuggestions] > v9) && objc_msgSend(*(a1 + 32), "appSatisfiesRelevanceCriteriaForAllowOrSilenceList:", v3))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)recommendedDeniedAppsForMode:(unint64_t)mode
{
  v16 = *MEMORY[0x1E69E9840];
  if (mode == 4)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [(ATXModeEntityScorerProtocol *)self->_modesModels rankedAppsForDenyListForMode:?];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__ATXInterruptionManager_recommendedDeniedAppsForMode___block_invoke;
    v9[3] = &unk_1E80C0FE0;
    v9[4] = self;
    v9[5] = &v10;
    v3 = [v5 _pas_filteredArrayWithTest:v9];
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v11 + 6);
      *buf = 67109120;
      v15 = v7;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "Number of apps returned from Proactive for deny list configuration suggestions = %d", buf, 8u);
    }

    _Block_object_dispose(&v10, 8);
  }

  return v3;
}

uint64_t __55__ATXInterruptionManager_recommendedDeniedAppsForMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scoreMetadata];
  [v4 score];
  v6 = v5;
  [*(*(a1 + 32) + 32) interruptionManagerRecommendationDenyListThresholdForApps];
  v8 = v7;

  if (v6 >= v8 && (v9 = *(*(*(a1 + 40) + 8) + 24), [*(*(a1 + 32) + 32) interruptionManagerMaxAppSuggestionsForDenyList] > v9) && objc_msgSend(*(a1 + 32), "appSatisfiesRelevanceCriteriaForAllowOrSilenceList:", v3))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)appSatisfiesRelevanceCriteriaForAllowOrSilenceList:(id)list
{
  v19 = *MEMORY[0x1E69E9840];
  listCopy = list;
  scoreMetadata = [listCopy scoreMetadata];
  featureVector = [scoreMetadata featureVector];

  v6 = [featureVector objectForKeyedSubscript:@"correlationEntitySpecificFeatures"];
  v7 = [v6 objectForKeyedSubscript:@"notificationsReceivedInLastTwoWeeks"];

  v8 = [featureVector objectForKeyedSubscript:@"correlationNumGlobalOccurrences"];
  if ([v8 integerValue] >= 3 && objc_msgSend(v7, "integerValue") <= 1)
  {
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [listCopy identifier];
      v13 = 138412802;
      v14 = identifier;
      v15 = 2048;
      v16 = 0x4008000000000000;
      v17 = 2048;
      v18 = 0x4000000000000000;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "Suppressing silence list sugggestion for app: %@ since it does not meet relevance criteria: globalAppLaunches.integerValue < %f / minimumNumberOfNotificationsReceivedInPastTwoWeeks >= %f", &v13, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)recommendedDeniedContactsForMode:(unint64_t)mode options:(unint64_t)options
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [(ATXModeEntityScorerProtocol *)self->_modesModels rankedContactsForDenyListForMode:mode options:options];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__ATXInterruptionManager_recommendedDeniedContactsForMode_options___block_invoke;
  v11[3] = &unk_1E80C1008;
  v11[5] = &v12;
  v11[6] = a2;
  v11[4] = self;
  v7 = [v6 _pas_filteredArrayWithTest:v11];
  v8 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v13 + 6);
    *buf = 67109120;
    v17 = v9;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "Number of contacts returned from Proactive for deny list configuration suggestions = %d", buf, 8u);
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __67__ATXInterruptionManager_recommendedDeniedContactsForMode_options___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 scoreMetadata];
  [v4 score];
  v6 = v5;
  [*(*(a1 + 32) + 32) interruptionManagerRecommendationDenyListThresholdForContacts];
  v8 = v7;

  if (v6 < v8)
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 48));
      v18 = 138412802;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v3;
      v13 = "%@: %@ Filtering out contact (%@) because affinity score is below threshold";
LABEL_8:
      _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, v13, &v18, 0x20u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v14 = *(*(*(a1 + 40) + 8) + 24);
  if ([*(*(a1 + 32) + 32) interruptionManagerMaxContactSuggestionsForDenyList] <= v14)
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v11 = NSStringFromClass(v16);
      v12 = NSStringFromSelector(*(a1 + 48));
      v18 = 138412802;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v3;
      v13 = "%@: %@ Suggestion limit has been reached, filtering out contact: %@";
      goto LABEL_8;
    }

LABEL_9:

    v15 = 0;
    goto LABEL_10;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  v15 = 1;
LABEL_10:

  return v15;
}

- (id)recommendedAllowedContactsForContactScores:(id)scores
{
  scoresCopy = scores;
  v5 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__ATXInterruptionManager_recommendedAllowedContactsForContactScores___block_invoke;
  v10[3] = &unk_1E80C1030;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [scoresCopy enumerateObjectsUsingBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __69__ATXInterruptionManager_recommendedAllowedContactsForContactScores___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [v13 scoreMetadata];
  [v6 score];
  v8 = v7;
  [*(*(a1 + 32) + 32) interruptionManagerRecommendationThresholdForContacts];
  v10 = v9;

  if (v8 >= v10)
  {
    v11 = [v13 cnContactId];

    if (v11)
    {
      [*(a1 + 40) addObject:v13];
      v12 = [*(a1 + 40) count];
      if (v12 > [*(*(a1 + 32) + 32) interruptionManagerMaxSuggestions])
      {
        *a4 = 1;
      }
    }
  }
}

- (void)recommendedAllowedContactsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (mode == 5)
  {
    (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E0F0], 0);
  }

  else
  {
    modesModels = self->_modesModels;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__ATXInterruptionManager_recommendedAllowedContactsForMode_reply___block_invoke;
    v9[3] = &unk_1E80C1058;
    v9[4] = self;
    v10 = replyCopy;
    [(ATXModeEntityScorerProtocol *)modesModels rankedContactsForMode:mode reply:v9];
  }
}

void __66__ATXInterruptionManager_recommendedAllowedContactsForMode_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) recommendedAllowedContactsForContactScores:a2];
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = [v5 count];
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "Number of allowed contacts returned from Proactive for configuration suggestions = %lu", &v7, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)recommendedAllowedContactsForDNDModeSemanticType:(int64_t)type reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAllowedContactsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDSemanticType:type] reply:replyCopy];
}

- (void)recommendedAndCandidateAllowedAppsForDNDModeSemanticType:(int64_t)type reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAndCandidateAllowedAppsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDSemanticType:type] reply:replyCopy];
}

- (void)recommendedAllowedContactsForDNDMode:(id)mode reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAllowedContactsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDMode:mode] reply:replyCopy];
}

- (void)recommendedAndCandidateAllowedAppsForDNDMode:(id)mode reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAndCandidateAllowedAppsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDMode:mode] reply:replyCopy];
}

- (void)recommendedDeniedContactsForDNDModeSemanticType:(int64_t)type reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedDeniedContactsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDSemanticType:type] reply:replyCopy];
}

- (void)recommendedAndCandidateDeniedAppsForDNDModeSemanticType:(int64_t)type reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAndCandidateDeniedAppsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDSemanticType:type] reply:replyCopy];
}

- (void)recommendedDeniedContactsForDNDMode:(id)mode reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedDeniedContactsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDMode:mode] reply:replyCopy];
}

- (void)recommendedAndCandidateDeniedAppsForDNDMode:(id)mode reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAndCandidateDeniedAppsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDMode:mode] reply:replyCopy];
}

- (void)recommendedAndCandidateAllowedContactsForDNDMode:(id)mode reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAndCandidateAllowedContactsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDMode:mode] reply:replyCopy];
}

- (void)recommendedAndCandidateDeniedContactsForDNDMode:(id)mode reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAndCandidateDeniedContactsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDMode:mode] reply:replyCopy];
}

- (void)recommendedAndCandidateAllowedContactsForDNDModeSemanticType:(int64_t)type reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAndCandidateAllowedContactsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDSemanticType:type] reply:replyCopy];
}

- (void)recommendedAndCandidateDeniedContactsForDNDModeSemanticType:(int64_t)type reply:(id)reply
{
  modeConfigurationClient = self->_modeConfigurationClient;
  replyCopy = reply;
  [(ATXInterruptionManager *)self recommendedAndCandidateDeniedContactsForMode:[(ATXDNDModeConfigurationClient *)modeConfigurationClient atxModeForDNDSemanticType:type] reply:replyCopy];
}

- (void)recommendedDeniedContactsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v8 = replyCopy;
  if (mode == 4)
  {
    (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E0F0], 0);
  }

  else
  {
    modesModels = self->_modesModels;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__ATXInterruptionManager_recommendedDeniedContactsForMode_reply___block_invoke;
    v10[3] = &unk_1E80C1080;
    v10[4] = self;
    v11 = replyCopy;
    v12 = a2;
    [(ATXModeEntityScorerProtocol *)modesModels rankedContactsForDenyListForMode:mode options:0 reply:v10];
  }
}

void __65__ATXInterruptionManager_recommendedDeniedContactsForMode_reply___block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__ATXInterruptionManager_recommendedDeniedContactsForMode_reply___block_invoke_2;
    v12[3] = &unk_1E80C1008;
    v7 = a1[4];
    v8 = a1[6];
    v12[5] = &v13;
    v12[6] = v8;
    v12[4] = v7;
    v9 = [v5 _pas_filteredArrayWithTest:v12];
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v14 + 6);
      *buf = 67109120;
      v18 = v11;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "Number of allowed contacts returned from Proactive for deny list configuration suggestions = %d", buf, 8u);
    }

    (*(a1[5] + 16))();
    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __65__ATXInterruptionManager_recommendedDeniedContactsForMode_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 scoreMetadata];
  [v4 score];
  v6 = v5;
  [*(*(a1 + 32) + 32) interruptionManagerRecommendationDenyListThresholdForContacts];
  v8 = v7;

  if (v6 < v8)
  {
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 48));
      v16 = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "%@: %@ filtering out contact (%@) because affinity score is below threshold.", &v16, 0x20u);
    }

    goto LABEL_7;
  }

  v13 = *(*(*(a1 + 40) + 8) + 24);
  if ([*(*(a1 + 32) + 32) interruptionManagerMaxContactSuggestionsForDenyList] <= v13)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  v14 = 1;
LABEL_8:

  return v14;
}

- (void)recommendedAndCandidateAllowedAppsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (mode == 5)
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    modesModels = self->_modesModels;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__ATXInterruptionManager_recommendedAndCandidateAllowedAppsForMode_reply___block_invoke;
    v9[3] = &unk_1E80C1058;
    v9[4] = self;
    v10 = replyCopy;
    [(ATXModeEntityScorerProtocol *)modesModels rankedAppsForMode:mode reply:v9];
  }
}

void __74__ATXInterruptionManager_recommendedAndCandidateAllowedAppsForMode_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_opt_new();
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __74__ATXInterruptionManager_recommendedAndCandidateAllowedAppsForMode_reply___block_invoke_2;
    v16 = &unk_1E80C10A8;
    v17 = *(a1 + 32);
    v7 = v6;
    v18 = v7;
    [v5 enumerateObjectsUsingBlock:&v13];
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 recommendedApps];
      v10 = [v9 count];
      v11 = [v7 candidateApps];
      v12 = [v11 count];
      *buf = 136315650;
      v20 = "[ATXInterruptionManager recommendedAndCandidateAllowedAppsForMode:reply:]_block_invoke";
      v21 = 2048;
      v22 = v10;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s: Recommended app count: %ld Candidate app count: %ld", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __74__ATXInterruptionManager_recommendedAndCandidateAllowedAppsForMode_reply___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = a1 + 32;
  if ([*(a1 + 32) appSatisfiesRelevanceCriteriaForAllowOrSilenceList:v6])
  {
    v8 = [*(a1 + 40) recommendedApps];
    v9 = [v8 count];
    v10 = [*(a1 + 40) candidateApps];
    v11 = [v10 count] + v9;
    v12 = [*(*(a1 + 32) + 32) interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForAllowList];

    if (v11 >= v12)
    {
      v23 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __74__ATXInterruptionManager_recommendedAndCandidateAllowedAppsForMode_reply___block_invoke_2_cold_1(v7);
      }

      *a4 = 1;
    }

    else
    {
      v13 = [v6 scoreMetadata];
      [v13 score];
      v15 = v14;
      [*(*v7 + 32) interruptionManagerThresholdForRecommendedAppSuggestionForAllowList];
      v17 = v16;

      if (v15 >= v17)
      {
        [*(a1 + 40) addRecommendedApp:v6];
      }

      else
      {
        v18 = [v6 scoreMetadata];
        [v18 score];
        v20 = v19;
        [*(*v7 + 32) interruptionManagerThresholdForCandidateAppSuggestionForAllowList];
        v22 = v21;

        if (v20 >= v22)
        {
          [*(a1 + 40) addCandidateApp:v6];
        }
      }
    }
  }
}

- (void)recommendedAndCandidateDeniedAppsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (mode == 4)
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    if (mode == 5)
    {
      mode = 1;
    }

    modesModels = self->_modesModels;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__ATXInterruptionManager_recommendedAndCandidateDeniedAppsForMode_reply___block_invoke;
    v9[3] = &unk_1E80C1058;
    v9[4] = self;
    v10 = replyCopy;
    [(ATXModeEntityScorerProtocol *)modesModels rankedAppsForDenyListForMode:mode reply:v9];
  }
}

void __73__ATXInterruptionManager_recommendedAndCandidateDeniedAppsForMode_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__ATXInterruptionManager_recommendedAndCandidateDeniedAppsForMode_reply___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = objc_opt_new();
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __73__ATXInterruptionManager_recommendedAndCandidateDeniedAppsForMode_reply___block_invoke_41;
    v18 = &unk_1E80C10A8;
    v19 = *(a1 + 32);
    v9 = v8;
    v20 = v9;
    [v5 enumerateObjectsUsingBlock:&v15];
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 recommendedApps];
      v12 = [v11 count];
      v13 = [v9 candidateApps];
      v14 = [v13 count];
      *buf = 136315650;
      v22 = "[ATXInterruptionManager recommendedAndCandidateDeniedAppsForMode:reply:]_block_invoke";
      v23 = 2048;
      v24 = v12;
      v25 = 2048;
      v26 = v14;
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "%s: Returning %ld recommended apps and %ld candidate contacts", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __73__ATXInterruptionManager_recommendedAndCandidateDeniedAppsForMode_reply___block_invoke_41(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = a1 + 32;
  if ([*(a1 + 32) appSatisfiesRelevanceCriteriaForAllowOrSilenceList:v6])
  {
    v8 = [*(a1 + 40) recommendedApps];
    v9 = [v8 count];
    v10 = [*(a1 + 40) candidateApps];
    v11 = [v10 count] + v9;
    v12 = [*(*(a1 + 32) + 32) interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForDenyList];

    if (v11 >= v12)
    {
      v23 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __73__ATXInterruptionManager_recommendedAndCandidateDeniedAppsForMode_reply___block_invoke_41_cold_1(v7);
      }

      *a4 = 1;
    }

    else
    {
      v13 = [v6 scoreMetadata];
      [v13 score];
      v15 = v14;
      [*(*v7 + 32) interruptionManagerThresholdForRecommendedAppSuggestionForDenyList];
      v17 = v16;

      if (v15 >= v17)
      {
        [*(a1 + 40) addRecommendedApp:v6];
      }

      else
      {
        v18 = [v6 scoreMetadata];
        [v18 score];
        v20 = v19;
        [*(*v7 + 32) interruptionManagerThresholdForCandidateAppSuggestionForDenyList];
        v22 = v21;

        if (v20 >= v22)
        {
          [*(a1 + 40) addCandidateApp:v6];
        }
      }
    }
  }
}

- (void)recommendedAndCandidateAllowedContactsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (mode == 5)
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    modesModels = self->_modesModels;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__ATXInterruptionManager_recommendedAndCandidateAllowedContactsForMode_reply___block_invoke;
    v9[3] = &unk_1E80C1058;
    v9[4] = self;
    v10 = replyCopy;
    [(ATXModeEntityScorerProtocol *)modesModels rankedContactsForMode:mode reply:v9];
  }
}

void __78__ATXInterruptionManager_recommendedAndCandidateAllowedContactsForMode_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_opt_new();
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __78__ATXInterruptionManager_recommendedAndCandidateAllowedContactsForMode_reply___block_invoke_2;
    v17 = &unk_1E80C1030;
    v7 = v6;
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    [v5 enumerateObjectsUsingBlock:&v14];
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 recommendedContacts];
      v11 = [v10 count];
      v12 = [v7 candidateContacts];
      v13 = [v12 count];
      *buf = 136315650;
      v21 = "[ATXInterruptionManager recommendedAndCandidateAllowedContactsForMode:reply:]_block_invoke";
      v22 = 2048;
      v23 = v11;
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "%s: Returning %ld recommended contacts and %ld candidate contacts", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __78__ATXInterruptionManager_recommendedAndCandidateAllowedContactsForMode_reply___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 cnContactId];

  if (v7)
  {
    v8 = [*(a1 + 32) recommendedContacts];
    v9 = [v8 count];
    v10 = [*(a1 + 32) candidateContacts];
    v11 = [v10 count] + v9;
    v12 = a1 + 40;
    v13 = [*(*(a1 + 40) + 32) interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForAllowList];

    if (v11 >= v13)
    {
      v25 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __78__ATXInterruptionManager_recommendedAndCandidateAllowedContactsForMode_reply___block_invoke_2_cold_1(v12);
      }

      *a4 = 1;
    }

    else
    {
      v14 = [v6 scoreMetadata];
      [v14 score];
      v16 = v15;
      [*(*v12 + 32) interruptionManagerThresholdForRecommendedContactSuggestionForAllowList];
      v18 = v17;

      if (v16 >= v18)
      {
        [*(a1 + 32) addRecommendedContact:v6];
      }

      else
      {
        v19 = [v6 scoreMetadata];
        [v19 score];
        v21 = v20;
        [*(*v12 + 32) interruptionManagerThresholdForCandidateContactSuggestionForAllowList];
        v23 = v22;

        if (v21 >= v23)
        {
          [*(a1 + 32) addCandidateContact:v6];
        }
      }
    }
  }

  else
  {
    v24 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __78__ATXInterruptionManager_recommendedAndCandidateAllowedContactsForMode_reply___block_invoke_2_cold_2();
    }
  }
}

- (void)recommendedAndCandidateDeniedContactsForMode:(unint64_t)mode reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (mode == 4)
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }

  else
  {
    modesModels = self->_modesModels;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__ATXInterruptionManager_recommendedAndCandidateDeniedContactsForMode_reply___block_invoke;
    v9[3] = &unk_1E80C1058;
    v9[4] = self;
    v10 = replyCopy;
    [(ATXModeEntityScorerProtocol *)modesModels rankedContactsForDenyListForMode:mode options:0 reply:v9];
  }
}

void __77__ATXInterruptionManager_recommendedAndCandidateDeniedContactsForMode_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_opt_new();
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __77__ATXInterruptionManager_recommendedAndCandidateDeniedContactsForMode_reply___block_invoke_2;
    v17 = &unk_1E80C1030;
    v7 = v6;
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    [v5 enumerateObjectsUsingBlock:&v14];
    v9 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 recommendedContacts];
      v11 = [v10 count];
      v12 = [v7 candidateContacts];
      v13 = [v12 count];
      *buf = 136315650;
      v21 = "[ATXInterruptionManager recommendedAndCandidateDeniedContactsForMode:reply:]_block_invoke";
      v22 = 2048;
      v23 = v11;
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "%s: Returning %ld recommended contacts and %ld candidate contacts", buf, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __77__ATXInterruptionManager_recommendedAndCandidateDeniedContactsForMode_reply___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 cnContactId];

  if (v7)
  {
    v8 = [*(a1 + 32) recommendedContacts];
    v9 = [v8 count];
    v10 = [*(a1 + 32) candidateContacts];
    v11 = [v10 count] + v9;
    v12 = a1 + 40;
    v13 = [*(*(a1 + 40) + 32) interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForDenyList];

    if (v11 >= v13)
    {
      v25 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __77__ATXInterruptionManager_recommendedAndCandidateDeniedContactsForMode_reply___block_invoke_2_cold_1(v12);
      }

      *a4 = 1;
    }

    else
    {
      v14 = [v6 scoreMetadata];
      [v14 score];
      v16 = v15;
      [*(*v12 + 32) interruptionManagerThresholdForRecommendedContactSuggestionForDenyList];
      v18 = v17;

      if (v16 >= v18)
      {
        [*(a1 + 32) addRecommendedContact:v6];
      }

      else
      {
        v19 = [v6 scoreMetadata];
        [v19 score];
        v21 = v20;
        [*(*v12 + 32) interruptionManagerThresholdForCandidateContactSuggestionForDenyList];
        v23 = v22;

        if (v21 >= v23)
        {
          [*(a1 + 32) addCandidateContact:v6];
        }
      }
    }
  }

  else
  {
    v24 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __77__ATXInterruptionManager_recommendedAndCandidateDeniedContactsForMode_reply___block_invoke_2_cold_2();
    }
  }
}

void __74__ATXInterruptionManager_recommendedAndCandidateAllowedAppsForMode_reply___block_invoke_2_cold_1(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_1(a1) interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForAllowList];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_7(&dword_1BF549000, v1, v2, "%s: Reached max count %ld for app suggestions, not suggesting any more.", v3, v4, v5, v6, 2u);
}

void __73__ATXInterruptionManager_recommendedAndCandidateDeniedAppsForMode_reply___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "%s: error fetching ranked apps for deny list: %@", v1, 0x16u);
}

void __73__ATXInterruptionManager_recommendedAndCandidateDeniedAppsForMode_reply___block_invoke_41_cold_1(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_1(a1) interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForDenyList];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_7(&dword_1BF549000, v1, v2, "%s: Reached max count %ld for app suggestions, not suggesting any more.", v3, v4, v5, v6, 2u);
}

void __78__ATXInterruptionManager_recommendedAndCandidateAllowedContactsForMode_reply___block_invoke_2_cold_1(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_1(a1) interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForAllowList];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_7(&dword_1BF549000, v1, v2, "%s: Reached max count %ld for contact suggestions, not suggesting any more.", v3, v4, v5, v6, 2u);
}

void __78__ATXInterruptionManager_recommendedAndCandidateAllowedContactsForMode_reply___block_invoke_2_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEBUG, "%s: Contact does not have cnContactId %@. Skipping", v1, 0x16u);
}

void __77__ATXInterruptionManager_recommendedAndCandidateDeniedContactsForMode_reply___block_invoke_2_cold_1(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_1(a1) interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForDenyList];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_7(&dword_1BF549000, v1, v2, "%s: Reached max count %ld for contact suggestions, not suggesting any more.", v3, v4, v5, v6, 2u);
}

void __77__ATXInterruptionManager_recommendedAndCandidateDeniedContactsForMode_reply___block_invoke_2_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEBUG, "%s: Contact does not have cnContactId %@. Skipping", v1, 0x16u);
}

@end