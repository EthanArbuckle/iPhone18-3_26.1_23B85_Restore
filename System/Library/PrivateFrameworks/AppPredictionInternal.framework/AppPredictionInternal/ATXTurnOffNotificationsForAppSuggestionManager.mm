@interface ATXTurnOffNotificationsForAppSuggestionManager
- (ATXTurnOffNotificationsForAppSuggestionManager)init;
- (ATXTurnOffNotificationsForAppSuggestionManager)initWithDataStore:(id)a3;
- (id)activeSuggestions;
- (void)activeSuggestions;
@end

@implementation ATXTurnOffNotificationsForAppSuggestionManager

- (ATXTurnOffNotificationsForAppSuggestionManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXTurnOffNotificationsForAppSuggestionManager *)self initWithDataStore:v3];

  return v4;
}

- (ATXTurnOffNotificationsForAppSuggestionManager)initWithDataStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXTurnOffNotificationsForAppSuggestionManager;
  v6 = [(ATXTurnOffNotificationsForAppSuggestionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, a3);
  }

  return v7;
}

- (id)activeSuggestions
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v4 doubleForKey:*MEMORY[0x277CEBD40]];
  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v5];
  v8 = [(ATXNotificationAndSuggestionDatastore *)self->_dataStore allNotificationsFromBundleId:@"com.apple.tips" sinceTimestamp:v6];
  if ([v8 count] > 3)
  {
    v9 = [v8 objectAtIndexedSubscript:3];
    v11 = [v9 second];
    v12 = [v11 isEqual:&unk_283A55EB0];

    if (v12)
    {
      v13 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = "[ATXTurnOffNotificationsForAppSuggestionManager activeSuggestions]";
        v25 = 2048;
        v26 = 4;
        v27 = 2112;
        v28 = @"com.apple.tips";
        _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%s: The %ldth notification from %@ is not active so not sending a suggestion", buf, 0x20u);
      }
    }

    else
    {
      v14 = [v9 second];
      v15 = [v14 isEqual:&unk_283A55EC8];

      if (v15)
      {
        v16 = objc_alloc(MEMORY[0x277CEB6F0]);
        v17 = objc_opt_new();
        v18 = [MEMORY[0x277CBEAA8] now];
        v19 = [v9 first];
        v13 = [v16 initTurnOffNotificationsForAppSuggestionWithUUID:v17 bundleID:@"com.apple.tips" timestamp:v18 triggerNotificationUUID:v19];

        v22 = v13;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
LABEL_13:

        goto LABEL_14;
      }

      v13 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(ATXTurnOffNotificationsForAppSuggestionManager *)v9 activeSuggestions];
      }
    }

    v10 = MEMORY[0x277CBEBF8];
    goto LABEL_13;
  }

  v9 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v24 = "[ATXTurnOffNotificationsForAppSuggestionManager activeSuggestions]";
    v25 = 2048;
    v26 = [v8 count];
    v27 = 2112;
    v28 = @"com.apple.tips";
    v29 = 2112;
    v30 = v7;
    v31 = 2048;
    v32 = 4;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: There were only %ld notifications from %@ since the last upgrade on %@. We only send the suggestion on the %ldth notification, so not sending one.", buf, 0x34u);
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)activeSuggestions
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 second];
  v5 = 136315394;
  v6 = "[ATXTurnOffNotificationsForAppSuggestionManager activeSuggestions]";
  v7 = 2112;
  v8 = v3;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%s: Unexpected value for isActive. Expecting either 0 (NO) or 1 (YES). Instead got %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end