@interface ATXNotificationDeliverySuggestionManager
- (ATXNotificationDeliverySuggestionManager)init;
- (ATXNotificationDeliverySuggestionManager)initWithDataStore:(id)a3 suggestionBiomeStream:(id)a4;
- (BOOL)digestHasBeenShownEnoughTimes;
- (BOOL)shouldShowSuggestion:(id)a3 withFeedback:(id)a4;
- (id)deduplicatedSuggestions:(id)a3;
- (id)filteredSuggestionsBasedOnFeedback:(id)a3;
- (id)maxOneSuggestionFromSuggestions:(id)a3;
- (unint64_t)currentMode;
- (unint64_t)getScoreForSuggestion:(id)a3;
- (void)_activeSuggestionsWithReply:(id)a3;
- (void)activeSuggestionsWithReply:(id)a3;
- (void)logSuggestionsToBiome:(id)a3;
@end

@implementation ATXNotificationDeliverySuggestionManager

- (ATXNotificationDeliverySuggestionManager)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXNotificationDeliverySuggestionManager *)self initWithDataStore:v3 suggestionBiomeStream:v4];

  return v5;
}

- (ATXNotificationDeliverySuggestionManager)initWithDataStore:(id)a3 suggestionBiomeStream:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = ATXNotificationDeliverySuggestionManager;
  v9 = [(ATXNotificationDeliverySuggestionManager *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataStore, a3);
    objc_storeStrong(&v10->_biomeStream, a4);
    v11 = [[ATXNotificationSmartPauseManager alloc] initWithNotificationAndSuggestionDataStore:v10->_dataStore];
    smartPauseManager = v10->_smartPauseManager;
    v10->_smartPauseManager = v11;

    v13 = [[ATXSendMessagesToDigestManager alloc] initWithDataStore:v10->_dataStore];
    sendMessagesToDigestManager = v10->_sendMessagesToDigestManager;
    v10->_sendMessagesToDigestManager = v13;

    v15 = [[ATXSendToDigestManager alloc] initWithDataStore:v10->_dataStore];
    sendToDigestManager = v10->_sendToDigestManager;
    v10->_sendToDigestManager = v15;

    v17 = [[ATXTurnOffNotificationsForAppSuggestionManager alloc] initWithDataStore:v10->_dataStore];
    turnOffNotificationsForAppManager = v10->_turnOffNotificationsForAppManager;
    v10->_turnOffNotificationsForAppManager = v17;

    v19 = [MEMORY[0x277CEB710] sharedInstance];
    constants = v10->_constants;
    v10->_constants = v19;

    v21 = objc_alloc_init(ATXChinSuggestionThrottlingManager);
    throttlingManager = v10->_throttlingManager;
    v10->_throttlingManager = v21;
  }

  return v10;
}

- (unint64_t)currentMode
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D41C60] currentModeSemanticType];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB440] sharedInstance];
    v4 = [v3 atxModeForDNDSemanticType:{objc_msgSend(v2, "integerValue")}];

    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = ATXModeToString();
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Notification delivery suggestion manager: Current mode is %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Notification delivery suggestion manager: User is not currently in a mode", &v9, 2u);
    }

    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)digestHasBeenShownEnoughTimes
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277D41CF0]];
  if ([v4 BOOLForKey:@"digestInstances"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2419200.0];
    v7 = objc_opt_new();
    [v6 timeIntervalSinceReferenceDate];
    v8 = [v7 publisherFromStartTime:?];

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke;
    v13[3] = &unk_278596E58;
    v13[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke_35;
    v12[3] = &unk_27859E510;
    v12[4] = &v14;
    v12[5] = 7;
    v9 = [v8 drivableSinkWithBookmark:0 completion:v13 shouldContinue:v12];
    v10 = v15[3];
    v5 = v10 == 7;
    if (v10 == 7)
    {
      [v4 setBool:1 forKey:@"digestInstances"];
    }

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke_cold_1(a1, v3, v5);
    }
  }
}

- (void)activeSuggestionsWithReply:(id)a3
{
  v4 = a3;
  throttlingManager = self->_throttlingManager;
  v6 = [ATXChinSuggestionRequest alloc];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__ATXNotificationDeliverySuggestionManager_activeSuggestionsWithReply___block_invoke;
  v11[3] = &unk_2785968C8;
  v11[4] = self;
  v12 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__ATXNotificationDeliverySuggestionManager_activeSuggestionsWithReply___block_invoke_2;
  v9[3] = &unk_2785969B8;
  v10 = v12;
  v7 = v12;
  v8 = [(ATXChinSuggestionRequest *)v6 initWithAcceptedBlock:v11 rejectedBlock:v9];
  [(ATXChinSuggestionThrottlingManager *)throttlingManager scheduleRequest:v8];
}

void __71__ATXNotificationDeliverySuggestionManager_activeSuggestionsWithReply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEB1A8] code:2 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_activeSuggestionsWithReply:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  constants = self->_constants;
  v5 = a3;
  v6 = [(ATXNotificationManagementMAConstants *)constants chinSuggestionsAreDisabled];
  v7 = __atxlog_handle_notification_management();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v52 = "[ATXNotificationDeliverySuggestionManager _activeSuggestionsWithReply:]";
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Chin suggestions are disabled. Returning empty array.", buf, 0xCu);
    }

    (*(v5 + 2))(v5, MEMORY[0x277CBEBF8], 0);
    v9 = v5;
  }

  else
  {
    v10 = os_signpost_id_generate(v7);

    v11 = __atxlog_handle_notification_management();
    v12 = v11;
    v50 = v10 - 1;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ATXNotificationDeliverySuggestionManager.activeSuggestionsWithReply", " enableTelemetry=YES ", buf, 2u);
    }

    v13 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v52 = "[ATXNotificationDeliverySuggestionManager _activeSuggestionsWithReply:]";
      _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%s called. Updating the datastore...", buf, 0xCu);
    }

    spid = v10;

    [(ATXNotificationAndSuggestionDatastore *)self->_dataStore updateDatabase];
    v14 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_INFO, "Querying sub-models...", buf, 2u);
    }

    v9 = [(ATXNotificationSmartPauseManager *)self->_smartPauseManager activeSuggestions];
    v15 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v9 count];
      *buf = 134217984;
      v52 = v16;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "Suggestion manager received %lu Smart Pause suggestions", buf, 0xCu);
    }

    v17 = objc_opt_new();
    v18 = [v17 activeNotificationSuggestionsForMode:{-[ATXNotificationDeliverySuggestionManager currentMode](self, "currentMode")}];

    v19 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v18 count];
      *buf = 134217984;
      v52 = v20;
      _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "Suggestion manager received %lu Mode Configuration Tuning Suggestions", buf, 0xCu);
    }

    v21 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v18;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "Suggestion manager received Mode Configuration Tuning Suggestions:%@", buf, 0xCu);
    }

    v22 = [(ATXSendMessagesToDigestManager *)self->_sendMessagesToDigestManager activeSuggestions];
    v23 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v22 count];
      *buf = 134217984;
      v52 = v24;
      _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_INFO, "Suggestion manager received %lu Send Messages To Digest Suggestions", buf, 0xCu);
    }

    v25 = [(ATXSendToDigestManager *)self->_sendToDigestManager activeSuggestions];
    v26 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v25 count];
      *buf = 134217984;
      v52 = v27;
      _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_INFO, "Suggestion manager received %lu Send To Digest Suggestions", buf, 0xCu);
    }

    v28 = [(ATXTurnOffNotificationsForAppSuggestionManager *)self->_turnOffNotificationsForAppManager activeSuggestions];
    v29 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v28 count];
      *buf = 134217984;
      v52 = v30;
      _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_INFO, "Suggestion manager received %lu TurnOffNotificationsForApp suggestions", buf, 0xCu);
    }

    v31 = [(ATXNotificationDeliverySuggestionManager *)self digestHasBeenShownEnoughTimes];
    v32 = objc_opt_new();
    v33 = v32;
    if (v9)
    {
      [v32 addObjectsFromArray:v9];
    }

    if (v18)
    {
      [v33 addObjectsFromArray:v18];
    }

    if (v22 != 0 && v31)
    {
      [v33 addObjectsFromArray:v22];
    }

    if (v25 != 0 && v31)
    {
      [v33 addObjectsFromArray:v25];
    }

    if (v28)
    {
      [v33 addObjectsFromArray:v28];
    }

    v48 = v25;
    v34 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v33;
      _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "All suggestions: %@", buf, 0xCu);
    }

    v49 = v22;

    v35 = [(ATXNotificationDeliverySuggestionManager *)self filteredSuggestionsBasedOnFeedback:v33];
    v36 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v35;
      _os_log_impl(&dword_2263AA000, v36, OS_LOG_TYPE_DEFAULT, "Suggestions after removing recently shown: %@", buf, 0xCu);
    }

    v37 = v18;

    v38 = [(ATXNotificationDeliverySuggestionManager *)self deduplicatedSuggestions:v35];
    v39 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v38;
      _os_log_impl(&dword_2263AA000, v39, OS_LOG_TYPE_DEFAULT, "Suggestions after deduplicating: %@", buf, 0xCu);
    }

    v40 = [(ATXNotificationDeliverySuggestionManager *)self maxOneSuggestionFromSuggestions:v38];
    v41 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v40;
      _os_log_impl(&dword_2263AA000, v41, OS_LOG_TYPE_DEFAULT, "Suggestions after thresholding: %@", buf, 0xCu);
    }

    [(ATXNotificationDeliverySuggestionManager *)self logSuggestionsToBiome:v40];
    v42 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v40 count];
      *buf = 136315394;
      v52 = "[ATXNotificationDeliverySuggestionManager _activeSuggestionsWithReply:]";
      v53 = 2048;
      v54 = v43;
      _os_log_impl(&dword_2263AA000, v42, OS_LOG_TYPE_DEFAULT, "%s returning %lu suggestions", buf, 0x16u);
    }

    (*(v5 + 2))(v5, v40, 0);
    v44 = __atxlog_handle_notification_management();
    v45 = v44;
    if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v45, OS_SIGNPOST_INTERVAL_END, spid, "ATXNotificationDeliverySuggestionManager.activeSuggestionsWithReply", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (id)filteredSuggestionsBasedOnFeedback:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_140];
  v7 = [v4 setWithArray:v6];

  dataStore = self->_dataStore;
  v9 = [v7 allObjects];
  v10 = [(ATXNotificationAndSuggestionDatastore *)dataStore feedbackHistoriesForKeys:v9];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__ATXNotificationDeliverySuggestionManager_filteredSuggestionsBasedOnFeedback___block_invoke_2;
  v14[3] = &unk_27859E558;
  v15 = v10;
  v16 = self;
  v11 = v10;
  v12 = [v5 _pas_filteredArrayWithTest:v14];

  return v12;
}

uint64_t __79__ATXNotificationDeliverySuggestionManager_filteredSuggestionsBasedOnFeedback___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 subtype] == 9)
  {
    v4 = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v3 feedbackKey];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v4 = [*(a1 + 40) shouldShowSuggestion:v3 withFeedback:v7];
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)shouldShowSuggestion:(id)a3 withFeedback:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v6 = a4;
  v48 = self;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[ATXNotificationManagementMAConstants numIgnoresToReject](self->_constants, "numIgnoresToReject")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v50;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        if ([v16 latestOutcome] == 1 || objc_msgSend(v16, "latestOutcome") == 4)
        {
          ++v13;
          if (!v12)
          {
            v12 = [v16 createdTimestamp];
          }
        }

        else if ([v16 latestOutcome] == 6)
        {
          ++v11;
          v17 = [v7 count];
          if (v17 < [(ATXNotificationManagementMAConstants *)v48->_constants numIgnoresToReject])
          {
            v18 = [v16 createdTimestamp];
            [v7 addObject:v18];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v19 = v11 % [(ATXNotificationManagementMAConstants *)v48->_constants numIgnoresToReject];
  if (v19 >= [v7 count])
  {
    v20 = 0;
  }

  else
  {
    v20 = [v7 objectAtIndexedSubscript:v19];
  }

  v21 = [MEMORY[0x277CBEAA8] distantPast];
  v22 = v21;
  if (v12)
  {
    v23 = [v21 laterDate:v12];

    v22 = v23;
  }

  v24 = v47;
  if (v20)
  {
    v25 = [v22 laterDate:v20];

    v22 = v25;
  }

  v26 = v11 / [(ATXNotificationManagementMAConstants *)v48->_constants numIgnoresToReject]+ v13;
  if (v26)
  {
    v27 = v26;
    if ([v47 subtype] == 4)
    {
      [(ATXNotificationManagementMAConstants *)v48->_constants smartPauseTimeoutScaleFactor];
      v29 = v28;
      [(ATXNotificationManagementMAConstants *)v48->_constants smartPauseStartTimeoutSeconds];
    }

    else if ([v47 subtype] == 5)
    {
      [(ATXNotificationManagementMAConstants *)v48->_constants interruptionManagementTimeoutScaleFactor];
      v29 = v32;
      [(ATXNotificationManagementMAConstants *)v48->_constants interruptionManagementStartTimeoutSeconds];
    }

    else
    {
      v33 = [v47 subtype];
      constants = v48->_constants;
      if (v33 == 6)
      {
        [(ATXNotificationManagementMAConstants *)constants sendToDigestTimeoutScaleFactor];
        v29 = v35;
        [(ATXNotificationManagementMAConstants *)v48->_constants sendToDigestStartTimeoutSeconds];
      }

      else
      {
        [(ATXNotificationManagementMAConstants *)constants backupTimeoutScaleFactor];
        v29 = v36;
        [(ATXNotificationManagementMAConstants *)v48->_constants backupStartTimeoutSeconds];
      }
    }

    v37 = [v22 dateByAddingTimeInterval:{(v30 * pow(v29, v27 + -1.0))}];
    v38 = [MEMORY[0x277CBEAA8] now];
    v39 = [v38 compare:v37];
    v31 = v39 == 1;

    v40 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = @"NO";
      *buf = 138413058;
      v54 = v44;
      v55 = 2112;
      if (v39 == 1)
      {
        v45 = @"YES";
      }

      v56 = v47;
      v57 = 2112;
      v58 = v37;
      v59 = 2112;
      v60 = v45;
      _os_log_debug_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEBUG, "%@ - Suggestion %@ has next eligible timestamp %@.  Should show is %@", buf, 0x2Au);

      v24 = v47;
    }
  }

  else
  {
    v31 = 1;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)deduplicatedSuggestions:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATXNotificationDeliverySuggestionManager *)self currentActiveSuggestions];
  if ([v5 count])
  {
    v6 = [v5 allValues];
    v7 = [v6 firstObject];

    v20 = v7;
    v8 = [v7 entityIdentifier];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 entityIdentifier];
          v16 = [v15 isEqualToString:v8];

          if (v16)
          {
            v25 = v14;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];

            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = v4;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (unint64_t)getScoreForSuggestion:(id)a3
{
  v3 = [a3 subtype];
  if (v3 > 0xA)
  {
    return 9;
  }

  else
  {
    return qword_2268725C0[v3];
  }
}

- (id)maxOneSuggestionFromSuggestions:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v19;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      v12 = [(ATXNotificationDeliverySuggestionManager *)self getScoreForSuggestion:v11];
      if (v12 > v8)
      {
        v13 = v12;
        v14 = v11;

        v7 = v14;
        v8 = v13;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  }

  while (v6);
  if (v7)
  {
    v22 = v7;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  }

  else
  {
LABEL_12:
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)logSuggestionsToBiome:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = [v4 count];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Replying with notification adjacent suggestions: %lu suggestions", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v11;
          _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "notification adjacent suggestion: %@", buf, 0xCu);
        }

        v14 = [(ATXNotificationSuggestionBiomeStream *)self->_biomeStream source];
        [v14 sendEvent:v11];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __73__ATXNotificationDeliverySuggestionManager_digestHasBeenShownEnoughTimes__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a2 error];
  v10 = 138412546;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "[%@] Error while sinking Biome stream: %@.", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end