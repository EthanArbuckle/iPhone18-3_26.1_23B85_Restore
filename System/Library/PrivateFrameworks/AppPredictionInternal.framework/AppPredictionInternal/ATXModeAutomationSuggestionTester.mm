@interface ATXModeAutomationSuggestionTester
+ (id)sharedInstance;
- (ATXModeAutomationSuggestionTester)init;
- (id)_stringForActivityType:(unint64_t)type;
- (void)_sendNotificationWithContent:(id)content;
- (void)activitySuggestionClient:(id)client didSuggestActivity:(id)activity;
- (void)activitySuggestionClient:(id)client didSuggestConfiguredActivity:(id)activity;
- (void)activitySuggestionClient:(id)client didSuggestSettingUpActivity:(id)activity;
- (void)dealloc;
@end

@implementation ATXModeAutomationSuggestionTester

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[ATXModeAutomationSuggestionTester sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __51__ATXModeAutomationSuggestionTester_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ATXModeAutomationSuggestionTester)init
{
  v13.receiver = self;
  v13.super_class = ATXModeAutomationSuggestionTester;
  v2 = [(ATXModeAutomationSuggestionTester *)&v13 init];
  if (v2)
  {
    v3 = *MEMORY[0x277D41C98];
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(v3, *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat))
    {
      v4 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.ATXDebugNotifications"];
      notificationCenter = v2->_notificationCenter;
      v2->_notificationCenter = v4;

      [(UNUserNotificationCenter *)v2->_notificationCenter setDelegate:v2];
      [(UNUserNotificationCenter *)v2->_notificationCenter setWantsNotificationResponsesDelivered];
      [(UNUserNotificationCenter *)v2->_notificationCenter requestAuthorizationWithOptions:6 completionHandler:&__block_literal_global_23_1];
      v6 = v2->_notificationCenter;
      v7 = MEMORY[0x277CBEB98];
      v8 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"modes.automation" actions:MEMORY[0x277CBEBF8] intentIdentifiers:MEMORY[0x277CBEBF8] options:0];
      v9 = [v7 setWithObject:v8];
      [(UNUserNotificationCenter *)v6 setNotificationCategories:v9];
    }

    v10 = objc_opt_new();
    suggestionClient = v2->_suggestionClient;
    v2->_suggestionClient = v10;

    [(ATXActivitySuggestionClient *)v2->_suggestionClient registerObserver:v2];
  }

  return v2;
}

void __41__ATXModeAutomationSuggestionTester_init__block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXModeAutomationSuggestionTester: notification authorized = %d", v8, 8u);
  }

  if (v4)
  {
    v6 = __atxlog_handle_modes();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__ATXModeAutomationSuggestionTester_init__block_invoke_cold_1(v4, v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(ATXActivitySuggestionClient *)self->_suggestionClient removeObserver:self];
  v3.receiver = self;
  v3.super_class = ATXModeAutomationSuggestionTester;
  [(ATXModeAutomationSuggestionTester *)&v3 dealloc];
}

- (id)_stringForActivityType:(unint64_t)type
{
  if (type > 0xF)
  {
    return 0;
  }

  else
  {
    return off_2785998D8[type];
  }
}

- (void)activitySuggestionClient:(id)client didSuggestConfiguredActivity:(id)activity
{
  activityCopy = activity;
  v5 = objc_opt_new();
  if (activityCopy)
  {
    [v5 setTitle:@"Activity Inferred: Enter Configured Activity"];
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    uuidString = [activityCopy uuidString];
    v8 = [v6 initWithFormat:@"The configured activity (%@) was inferred", uuidString];
    [v5 setBody:v8];
  }

  else
  {
    [v5 setTitle:@"Activity Inferred: Configured Activity Expired"];
    [v5 setBody:@"The last activity suggestion expired"];
  }

  [(ATXModeAutomationSuggestionTester *)self _sendNotificationWithContent:v5];
}

- (void)activitySuggestionClient:(id)client didSuggestSettingUpActivity:(id)activity
{
  activityCopy = activity;
  v5 = objc_opt_new();
  if (activityCopy)
  {
    [v5 setTitle:@"Activity Inferred: Activity Set-Up Suggestion"];
    v6 = -[ATXModeAutomationSuggestionTester _stringForActivityType:](self, "_stringForActivityType:", [activityCopy activityType]);
    [v5 setBody:v6];
  }

  else
  {
    [v5 setTitle:@"Activity Inferred: Activity Set-Up Suggestion Expired"];
    [v5 setBody:@"Set-up suggestion expired"];
  }

  [(ATXModeAutomationSuggestionTester *)self _sendNotificationWithContent:v5];
}

- (void)activitySuggestionClient:(id)client didSuggestActivity:(id)activity
{
  clientCopy = client;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!activity)
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXModeAutomationSuggestionTester activitySuggestionClient:v7 didSuggestActivity:?];
    }

    v8 = objc_opt_new();
    [v8 setTitle:@"Activity Ended"];
    previousSuggestion = [clientCopy previousSuggestion];
    v10 = previousSuggestion;
    if (previousSuggestion)
    {
      modeUUID = [previousSuggestion modeUUID];
      v12 = modeUUID;
      if (modeUUID)
      {
        v13 = modeUUID;
      }

      else
      {
        [v10 activityType];
        v13 = ATXActivityTypeToString();
      }

      v14 = v13;

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"The previous activity (%@) has ended", v14];
      [v8 setBody:v15];

      [(ATXModeAutomationSuggestionTester *)self _sendNotificationWithContent:v8];
    }
  }
}

- (void)_sendNotificationWithContent:(id)content
{
  contentCopy = content;
  body = [contentCopy body];

  if (body)
  {
    [contentCopy setCategoryIdentifier:@"modes.automation"];
    if (self->_notificationCenter)
    {
      v5 = [MEMORY[0x277CE2020] triggerWithTimeInterval:0 repeats:1.0];
      v6 = MEMORY[0x277CE1FC0];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v9 = [v6 requestWithIdentifier:uUIDString content:contentCopy trigger:v5];

      [(UNUserNotificationCenter *)self->_notificationCenter addNotificationRequest:v9 withCompletionHandler:&__block_literal_global_102_0];
    }
  }
}

void __66__ATXModeAutomationSuggestionTester__sendNotificationWithContent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = __atxlog_handle_modes();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__ATXModeAutomationSuggestionTester__sendNotificationWithContent___block_invoke_cold_1(v2, v3);
    }
  }
}

void __41__ATXModeAutomationSuggestionTester_init__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeAutomationSuggestionTester: error while requesting notification auth - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __66__ATXModeAutomationSuggestionTester__sendNotificationWithContent___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeAutomationSuggestionTester: error while adding notification request - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end