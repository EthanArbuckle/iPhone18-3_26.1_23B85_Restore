@interface ATXNotificationSmartPauseManager
- (ATXNotificationSmartPauseManager)init;
- (ATXNotificationSmartPauseManager)initWithNotificationAndSuggestionDataStore:(id)a3;
- (id)_dictionaryForQueryResults:(id)a3;
- (id)_proposeSmartPauseForNotification:(id)a3 threadData:(id)a4 bundleData:(id)a5;
- (id)activeSuggestions;
- (id)currentSuggestionsGivenCandiateNotifications:(id)a3;
@end

@implementation ATXNotificationSmartPauseManager

- (ATXNotificationSmartPauseManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationSmartPauseManager *)self initWithNotificationAndSuggestionDataStore:v3];

  return v4;
}

- (ATXNotificationSmartPauseManager)initWithNotificationAndSuggestionDataStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ATXNotificationSmartPauseManager;
  v6 = [(ATXNotificationSmartPauseManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, a3);
    v8 = [MEMORY[0x277CEB710] sharedInstance];
    notificationManagementMAConstants = v7->_notificationManagementMAConstants;
    v7->_notificationManagementMAConstants = v8;
  }

  return v7;
}

- (id)_dictionaryForQueryResults:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 bundleId];
        v13 = [v11 threadId];
        v14 = [(ATXNotificationSmartPauseManager *)self _queryResultIdentifierForBundleId:v12 threadId:v13];
        [v5 setObject:v11 forKeyedSubscript:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_proposeSmartPauseForNotification:(id)a3 threadData:(id)a4 bundleData:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 threadID];

  if (!v11)
  {
    if (v10)
    {
      v31 = [v10 countLastFiveMinutesPositiveEngagements];
      v32 = v31 / [v10 countLastFiveMinutesNotifications];
      v33 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:v10 threadData:v33 bundleData:v32];
      }

      v34 = [v10 countLastFiveMinutesNotifications];
      if (v34 > [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForApp])
      {
        [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerEngagementRateThresholdForApp];
        if (v32 <= v35)
        {
          v39 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            [ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:v39 threadData:? bundleData:?];
          }

          v40 = objc_alloc(MEMORY[0x277CEB758]);
          v41 = MEMORY[0x277CBEAA8];
          [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerExpirationSeconds];
          v42 = [v41 dateWithTimeIntervalSinceNow:?];
          [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerPauseDurationSeconds];
          v21 = [v40 initWithSuggestionExpiration:v42 pauseDuration:?];

          v43 = objc_alloc(MEMORY[0x277CEB6F0]);
          v23 = [MEMORY[0x277CCAD78] UUID];
          v24 = [v8 bundleID];
          v25 = [MEMORY[0x277CBEAA8] now];
          v26 = [v8 uuid];
          v27 = v43;
          v28 = v21;
          v29 = v23;
          v30 = 1;
          goto LABEL_22;
        }
      }
    }

LABEL_15:
    v36 = 0;
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_15;
  }

  v12 = [v9 countLastFiveMinutesPositiveEngagements];
  v13 = v12 / [v9 countLastFiveMinutesNotifications];
  v14 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v44 = [v8 threadID];
    v45 = 136315906;
    v46 = "[ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:threadData:bundleData:]";
    v47 = 2112;
    v48 = v44;
    v49 = 2048;
    v50 = [v9 countLastFiveMinutesNotifications];
    v51 = 2048;
    v52 = v13;
    _os_log_debug_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEBUG, "%s: Considering SmartPause suggestion for thread: %@ countLastFiveMinutesNotifications: %ld lastFiveMinutesEngagementRate: %f", &v45, 0x2Au);
  }

  v15 = [v9 countLastFiveMinutesNotifications];
  if (v15 <= [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForThread])
  {
    goto LABEL_15;
  }

  [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerEngagementRateThresholdForThread];
  if (v13 > v16)
  {
    goto LABEL_15;
  }

  v17 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:v17 threadData:? bundleData:?];
  }

  v18 = objc_alloc(MEMORY[0x277CEB758]);
  v19 = MEMORY[0x277CBEAA8];
  [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerExpirationSeconds];
  v20 = [v19 dateWithTimeIntervalSinceNow:?];
  [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants smartPauseManagerPauseDurationSeconds];
  v21 = [v18 initWithSuggestionExpiration:v20 pauseDuration:?];

  v22 = objc_alloc(MEMORY[0x277CEB6F0]);
  v23 = [MEMORY[0x277CCAD78] UUID];
  v24 = [v8 threadID];
  v25 = [MEMORY[0x277CBEAA8] now];
  v26 = [v8 uuid];
  v27 = v22;
  v28 = v21;
  v29 = v23;
  v30 = 2;
LABEL_22:
  v36 = [v27 initWithSmartPauseSuggestion:v28 uuid:v29 scope:v30 entityIdentifier:v24 timestamp:v25 triggerNotificationUUID:v26];

LABEL_16:
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)currentSuggestionsGivenCandiateNotifications:(id)a3
{
  v4 = a3;
  v5 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ATXNotificationSmartPauseManager *)v4 currentSuggestionsGivenCandiateNotifications:v5];
  }

  dataStore = self->_dataStore;
  v7 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_111];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = [(ATXNotificationAndSuggestionDatastore *)dataStore getSmartPauseFeaturesForBundleIds:v7 sinceTimestamp:v8 + -2592000.0];

  v25 = [(ATXNotificationSmartPauseManager *)self _dictionaryForQueryResults:v9];
  v24 = [ATXSmartPauseDatabaseQueryResult groupByBundleId:v9];
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v11 = MEMORY[0x277CBEAA8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v13 = [v11 dateWithTimeIntervalSinceReferenceDate:v12 + -300.0];
  v14 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v13 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v15 = BiomeLibrary();
  v16 = [v15 App];
  v17 = [v16 InFocus];
  v18 = [v17 publisherWithUseCase:*MEMORY[0x277CEBB48] options:v14];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2;
  v33[3] = &unk_278597540;
  v33[4] = &v34;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_31;
  v31[3] = &unk_278596F60;
  v19 = v10;
  v32 = v19;
  v20 = [v18 sinkWithCompletion:v33 receiveInput:v31];
  if (v35[3])
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_33;
    v26[3] = &unk_27859D110;
    v27 = v19;
    v28 = v25;
    v29 = self;
    v30 = v24;
    v21 = [v4 _pas_mappedArrayWithTransform:v26];

    v22 = v27;
  }

  else
  {
    v22 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXNotificationSmartPauseManager currentSuggestionsGivenCandiateNotifications:v22];
    }

    v21 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v34, 8);

  return v21;
}

void __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4)
  {
    if (v4 == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      v5 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2_cold_1(v3, v5);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 bundleID];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }

    v3 = v5;
  }
}

id __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_33(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bundleID];
  if (!v4)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_8;
  }

  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[ATXNotificationSmartPauseManager currentSuggestionsGivenCandiateNotifications:]_block_invoke";
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: Found app launch for bundleId: %@ in the last five minutes so not showing SmartPause for notification: %@", &v15, 0x20u);
    }

    goto LABEL_6;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = [v3 threadID];
  v10 = [v8 _queryResultIdentifierForBundleId:v4 threadId:v9];
  v11 = [v7 objectForKeyedSubscript:v10];

  v12 = [*(a1 + 56) objectForKeyedSubscript:v4];
  v6 = [*(a1 + 48) _proposeSmartPauseForNotification:v3 threadData:v11 bundleData:v12];

LABEL_8:
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)activeSuggestions
{
  v3 = [(ATXNotificationAndSuggestionDatastore *)self->_dataStore getTopOfProminentStackNotificationsWithLimit:10];
  v4 = [(ATXNotificationSmartPauseManager *)self currentSuggestionsGivenCandiateNotifications:v3];

  return v4;
}

- (void)_proposeSmartPauseForNotification:(os_log_t)log threadData:bundleData:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:threadData:bundleData:]";
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "%s: Sending SmartPause suggestion for notification", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_proposeSmartPauseForNotification:(void *)a1 threadData:(NSObject *)a2 bundleData:(double)a3 .cold.2(void *a1, NSObject *a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 countLastFiveMinutesNotifications];
  v7[0] = 136315650;
  OUTLINED_FUNCTION_0_23();
  v8 = v5;
  v9 = a3;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Considering SmartPause suggestion for app, countLastFiveMinutesNotifications: %ld lastFiveMinutesEngagementRate: %f", v7, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_proposeSmartPauseForNotification:(os_log_t)log threadData:bundleData:.cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXNotificationSmartPauseManager _proposeSmartPauseForNotification:threadData:bundleData:]";
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "%s: Sending SmartPause suggestion for app", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)currentSuggestionsGivenCandiateNotifications:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 count];
  v4[0] = 136315394;
  OUTLINED_FUNCTION_0_23();
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "%s: Fetching SmartPause suggestions for %ld candidate notifications", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)currentSuggestionsGivenCandiateNotifications:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXNotificationSmartPauseManager currentSuggestionsGivenCandiateNotifications:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Not returning any SmartPause suggestions because reading app launch events from Biome failed", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __81__ATXNotificationSmartPauseManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 136315394;
  v6 = "[ATXNotificationSmartPauseManager currentSuggestionsGivenCandiateNotifications:]_block_invoke_2";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error while reading from biome: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end