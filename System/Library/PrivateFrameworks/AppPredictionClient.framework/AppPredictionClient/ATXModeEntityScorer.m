@interface ATXModeEntityScorer
- (ATXModeEntityScorer)init;
- (ATXModeEntityScorer)initWithModeEntityScorerClient:(id)a3;
- (BOOL)assignModeEntityScores:(unint64_t)a3 entityTypeIdentifier:(id)a4 entityIdentifier:(id)a5 score:(double)a6 modeConfigurationType:(int64_t)a7;
- (id)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5;
- (id)rankedAppsForDenyListForMode:(unint64_t)a3;
- (id)rankedAppsForMode:(unint64_t)a3;
- (id)rankedAppsForMode:(unint64_t)a3 options:(unint64_t)a4;
- (id)rankedAppsForNotificationsForMode:(unint64_t)a3;
- (id)rankedContactsForDenyListForMode:(unint64_t)a3 options:(unint64_t)a4;
- (id)rankedContactsForNotificationsForMode:(unint64_t)a3;
- (id)rankedNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4;
- (void)_attachNotificationEntityScores:(id)a3 toNotifications:(id)a4;
- (void)copyScoreMetadataFromContactModeEntities:(id)a3 toContactModeEntities:(id)a4;
- (void)copyScoreMetadataFromEntities:(id)a3 toEntities:(id)a4;
- (void)rankedAppsForDenyListForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedAppsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedAppsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedAppsForNotificationsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedContactsForDenyListForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedContactsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedContactsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedContactsForNotificationsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5;
- (void)rankedNotificationsForMode:(unint64_t)a3 reply:(id)a4;
- (void)rankedWidgetsForMode:(unint64_t)a3 reply:(id)a4;
- (void)scoreApps:(id)a3 mode:(unint64_t)a4;
- (void)scoreApps:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4;
- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreContacts:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4;
- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4;
- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
- (void)scoreUserNotifications:(id)a3 mode:(unint64_t)a4;
- (void)scoreUserNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5;
@end

@implementation ATXModeEntityScorer

- (ATXModeEntityScorer)init
{
  v3 = objc_opt_new();
  v4 = [(ATXModeEntityScorer *)self initWithModeEntityScorerClient:v3];

  return v4;
}

- (ATXModeEntityScorer)initWithModeEntityScorerClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXModeEntityScorer;
  v6 = [(ATXModeEntityScorer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeEntityScorerClient, a3);
  }

  return v7;
}

- (void)scoreApps:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__ATXModeEntityScorer_scoreApps_mode___block_invoke;
  v11[3] = &unk_1E80C2AF8;
  v12 = v7;
  v8 = v7;
  [(ATXModeEntityScorer *)self scoreApps:v6 mode:a4 reply:v11];

  v9[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__ATXModeEntityScorer_scoreApps_mode___block_invoke_2;
  v10[3] = &unk_1E80C0C90;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__ATXModeEntityScorer_scoreApps_mode___block_invoke_16;
  v9[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v8 timeoutSeconds:v10 onAcquire:v9 onTimeout:3.0];
}

void __38__ATXModeEntityScorer_scoreApps_mode___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __38__ATXModeEntityScorer_scoreApps_mode___block_invoke_16()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __38__ATXModeEntityScorer_scoreApps_mode___block_invoke_16_cold_1();
  }
}

- (id)rankedAppsForMode:(unint64_t)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__ATXModeEntityScorer_rankedAppsForMode___block_invoke;
  v12[3] = &unk_1E80C2B20;
  v14 = &v15;
  v6 = v5;
  v13 = v6;
  [(ATXModeEntityScorer *)self rankedAppsForMode:a3 reply:v12];
  v10[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__ATXModeEntityScorer_rankedAppsForMode___block_invoke_2;
  v11[3] = &unk_1E80C0C90;
  v11[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__ATXModeEntityScorer_rankedAppsForMode___block_invoke_18;
  v10[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v6 timeoutSeconds:v11 onAcquire:v10 onTimeout:3.0];
  v7 = v16[5];
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __41__ATXModeEntityScorer_rankedAppsForMode___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __41__ATXModeEntityScorer_rankedAppsForMode___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __41__ATXModeEntityScorer_rankedAppsForMode___block_invoke_18()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __41__ATXModeEntityScorer_rankedAppsForMode___block_invoke_18_cold_1();
  }
}

- (id)rankedAppsForMode:(unint64_t)a3 options:(unint64_t)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v7 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__ATXModeEntityScorer_rankedAppsForMode_options___block_invoke;
  v14[3] = &unk_1E80C2B20;
  v16 = &v17;
  v8 = v7;
  v15 = v8;
  [(ATXModeEntityScorer *)self rankedAppsForMode:a3 options:a4 reply:v14];
  v12[4] = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__ATXModeEntityScorer_rankedAppsForMode_options___block_invoke_2;
  v13[3] = &unk_1E80C0C90;
  v13[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__ATXModeEntityScorer_rankedAppsForMode_options___block_invoke_19;
  v12[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v8 timeoutSeconds:v13 onAcquire:v12 onTimeout:3.0];
  v9 = v18[5];
  if (!v9)
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __49__ATXModeEntityScorer_rankedAppsForMode_options___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __49__ATXModeEntityScorer_rankedAppsForMode_options___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __49__ATXModeEntityScorer_rankedAppsForMode_options___block_invoke_19()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __41__ATXModeEntityScorer_rankedAppsForMode___block_invoke_18_cold_1();
  }
}

- (void)scoreUserNotifications:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__ATXModeEntityScorer_scoreUserNotifications_mode___block_invoke;
  v11[3] = &unk_1E80C2AF8;
  v12 = v7;
  v8 = v7;
  [(ATXModeEntityScorer *)self scoreUserNotifications:v6 mode:a4 reply:v11];

  v9[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__ATXModeEntityScorer_scoreUserNotifications_mode___block_invoke_2;
  v10[3] = &unk_1E80C0C90;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__ATXModeEntityScorer_scoreUserNotifications_mode___block_invoke_20;
  v9[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v8 timeoutSeconds:v10 onAcquire:v9 onTimeout:3.0];
}

void __51__ATXModeEntityScorer_scoreUserNotifications_mode___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __51__ATXModeEntityScorer_scoreUserNotifications_mode___block_invoke_20()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __51__ATXModeEntityScorer_scoreUserNotifications_mode___block_invoke_20_cold_1();
  }
}

- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__ATXModeEntityScorer_scoreNotifications_mode___block_invoke;
  v11[3] = &unk_1E80C2AF8;
  v12 = v7;
  v8 = v7;
  [(ATXModeEntityScorer *)self scoreNotifications:v6 mode:a4 reply:v11];

  v9[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__ATXModeEntityScorer_scoreNotifications_mode___block_invoke_2;
  v10[3] = &unk_1E80C0C90;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__ATXModeEntityScorer_scoreNotifications_mode___block_invoke_21;
  v9[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v8 timeoutSeconds:v10 onAcquire:v9 onTimeout:3.0];
}

void __47__ATXModeEntityScorer_scoreNotifications_mode___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __47__ATXModeEntityScorer_scoreNotifications_mode___block_invoke_21()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __51__ATXModeEntityScorer_scoreUserNotifications_mode___block_invoke_20_cold_1();
  }
}

- (id)rankedNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v7 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke;
  v14[3] = &unk_1E80C2B48;
  v17 = a3;
  v8 = v7;
  v15 = v8;
  v16 = &v18;
  [(ATXModeEntityScorer *)self rankedNotificationsForMode:a3 options:a4 reply:v14];
  v12[4] = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke_22;
  v13[3] = &unk_1E80C0C90;
  v13[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke_23;
  v12[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v8 timeoutSeconds:v13 onAcquire:v12 onTimeout:3.0];
  v9 = v19[5];
  if (!v9)
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke_22()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke_23()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke_23_cold_1();
  }
}

- (id)rankedAppsForNotificationsForMode:(unint64_t)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__ATXModeEntityScorer_rankedAppsForNotificationsForMode___block_invoke;
  v12[3] = &unk_1E80C2B20;
  v14 = &v15;
  v6 = v5;
  v13 = v6;
  [(ATXModeEntityScorer *)self rankedAppsForNotificationsForMode:a3 reply:v12];
  v10[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__ATXModeEntityScorer_rankedAppsForNotificationsForMode___block_invoke_2;
  v11[3] = &unk_1E80C0C90;
  v11[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ATXModeEntityScorer_rankedAppsForNotificationsForMode___block_invoke_24;
  v10[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v6 timeoutSeconds:v11 onAcquire:v10 onTimeout:3.0];
  v7 = v16[5];
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __57__ATXModeEntityScorer_rankedAppsForNotificationsForMode___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__ATXModeEntityScorer_rankedAppsForNotificationsForMode___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __57__ATXModeEntityScorer_rankedAppsForNotificationsForMode___block_invoke_24()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __57__ATXModeEntityScorer_rankedAppsForNotificationsForMode___block_invoke_24_cold_1();
  }
}

- (id)rankedContactsForNotificationsForMode:(unint64_t)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__ATXModeEntityScorer_rankedContactsForNotificationsForMode___block_invoke;
  v12[3] = &unk_1E80C2B20;
  v14 = &v15;
  v6 = v5;
  v13 = v6;
  [(ATXModeEntityScorer *)self rankedContactsForNotificationsForMode:a3 reply:v12];
  v10[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__ATXModeEntityScorer_rankedContactsForNotificationsForMode___block_invoke_2;
  v11[3] = &unk_1E80C0C90;
  v11[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__ATXModeEntityScorer_rankedContactsForNotificationsForMode___block_invoke_25;
  v10[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v6 timeoutSeconds:v11 onAcquire:v10 onTimeout:3.0];
  v7 = v16[5];
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __61__ATXModeEntityScorer_rankedContactsForNotificationsForMode___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __61__ATXModeEntityScorer_rankedContactsForNotificationsForMode___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __61__ATXModeEntityScorer_rankedContactsForNotificationsForMode___block_invoke_25()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __61__ATXModeEntityScorer_rankedContactsForNotificationsForMode___block_invoke_25_cold_1();
  }
}

- (id)modeEntityScoresFromCacheForModeEntityTypeIdentifier:(id)a3 modeIdentifier:(id)a4 modeConfigurationType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v10 = dispatch_semaphore_create(0);
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke;
  v18[3] = &unk_1E80C2B70;
  v12 = v9;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  v21 = &v22;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient modeEntityScoresFromCacheForModeEntityTypeIdentifier:v8 modeIdentifier:v12 modeConfigurationType:a5 reply:v18];
  v16[4] = self;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke_27;
  v17[3] = &unk_1E80C0C90;
  v17[4] = self;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke_28;
  v16[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v13 timeoutSeconds:v17 onAcquire:v16 onTimeout:3.0];
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke_cold_1(a1, v7, v8);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke_27()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke_28()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke_28_cold_1();
  }
}

- (BOOL)assignModeEntityScores:(unint64_t)a3 entityTypeIdentifier:(id)a4 entityIdentifier:(id)a5 score:(double)a6 modeConfigurationType:(int64_t)a7
{
  v12 = a4;
  v13 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v14 = dispatch_semaphore_create(0);
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke;
  v20[3] = &unk_1E80C2B98;
  v16 = v14;
  v21 = v16;
  v22 = &v23;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient assignModeEntityScores:a3 entityTypeIdentifier:v12 entityIdentifier:v13 score:a7 modeConfigurationType:v20 reply:a6];
  v18[4] = self;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke_30;
  v19[3] = &unk_1E80C0C90;
  v19[4] = self;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke_31;
  v18[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v16 timeoutSeconds:v19 onAcquire:v18 onTimeout:3.0];
  LOBYTE(self) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return self;
}

void __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke_30()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke_31()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke_31_cold_1();
  }
}

- (void)copyScoreMetadataFromEntities:(id)a3 toEntities:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __64__ATXModeEntityScorer_copyScoreMetadataFromEntities_toEntities___block_invoke;
  v32[3] = &unk_1E80C2BC0;
  v8 = v7;
  v33 = v8;
  v24 = v5;
  [v5 enumerateObjectsUsingBlock:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    v26 = *v29;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v8 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = [v10 identifier];
          v14 = [v8 objectForKeyedSubscript:v13];

          v15 = [ATXModeEntityScore alloc];
          v16 = [v14 scoreMetadata];
          [v16 score];
          v18 = v17;
          v19 = [v14 scoreMetadata];
          v20 = [v19 featureVector];
          v21 = [v14 scoreMetadata];
          v22 = [v21 uuid];
          v23 = [(ATXModeEntityScore *)v15 initWithScore:v20 featureVector:v22 uuid:v18];
          [v10 setScoreMetadata:v23];
        }
      }

      v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v27);
  }
}

void __64__ATXModeEntityScorer_copyScoreMetadataFromEntities_toEntities___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (void)copyScoreMetadataFromContactModeEntities:(id)a3 toContactModeEntities:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __86__ATXModeEntityScorer_copyScoreMetadataFromContactModeEntities_toContactModeEntities___block_invoke;
  v33[3] = &unk_1E80C2BE8;
  v8 = v7;
  v34 = v8;
  v25 = v5;
  [v5 enumerateObjectsUsingBlock:v33];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v28)
  {
    v27 = *v30;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v8 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = [v10 identifier];
          v14 = [v8 objectForKeyedSubscript:v13];

          v15 = [ATXModeEntityScore alloc];
          v16 = [v14 scoreMetadata];
          [v16 score];
          v18 = v17;
          v19 = [v14 scoreMetadata];
          v20 = [v19 featureVector];
          v21 = [v14 scoreMetadata];
          v22 = [v21 uuid];
          v23 = [(ATXModeEntityScore *)v15 initWithScore:v20 featureVector:v22 uuid:v18];
          [v10 setScoreMetadata:v23];

          v24 = [v14 stableContactIdentifier];
          [v10 setStableContactIdentifier:v24];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v28);
  }
}

void __86__ATXModeEntityScorer_copyScoreMetadataFromContactModeEntities_toContactModeEntities___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 32);
  v4 = [v11 identifier];
  [v3 setObject:v11 forKeyedSubscript:v4];

  v5 = [v11 cnContactId];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v11 cnContactId];
    [v6 setObject:v11 forKeyedSubscript:v7];
  }

  v8 = [v11 rawIdentifier];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v11 rawIdentifier];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }
}

- (void)scoreContacts:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__ATXModeEntityScorer_scoreContacts_mode_reply___block_invoke;
  v13[3] = &unk_1E80C2C10;
  v15 = v9;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient scoreContacts:v11 mode:a4 reply:v13];
}

void __48__ATXModeEntityScorer_scoreContacts_mode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__ATXModeEntityScorer_scoreContacts_mode_reply___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    [*(a1 + 32) copyScoreMetadataFromContactModeEntities:a2 toContactModeEntities:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

- (void)rankedContactsForMode:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__ATXModeEntityScorer_rankedContactsForMode_reply___block_invoke;
  v9[3] = &unk_1E80C26A0;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedContactsForMode:a3 reply:v9];
}

void __51__ATXModeEntityScorer_rankedContactsForMode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__ATXModeEntityScorer_rankedContactsForMode_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)rankedContactsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__ATXModeEntityScorer_rankedContactsForMode_options_reply___block_invoke;
  v11[3] = &unk_1E80C2C38;
  v13 = a3;
  v14 = a4;
  v12 = v8;
  v10 = v8;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedContactsForMode:a3 options:a4 reply:v11];
}

void __59__ATXModeEntityScorer_rankedContactsForMode_options_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ATXModeEntityScorer_rankedContactsForMode_options_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)scoreApps:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__ATXModeEntityScorer_scoreApps_mode_reply___block_invoke;
  v13[3] = &unk_1E80C2C10;
  v15 = v9;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient scoreApps:v11 mode:a4 reply:v13];
}

void __44__ATXModeEntityScorer_scoreApps_mode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__ATXModeEntityScorer_scoreApps_mode_reply___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    [*(a1 + 32) copyScoreMetadataFromEntities:a2 toEntities:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

- (void)rankedAppsForMode:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__ATXModeEntityScorer_rankedAppsForMode_reply___block_invoke;
  v9[3] = &unk_1E80C26A0;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedAppsForMode:a3 reply:v9];
}

void __47__ATXModeEntityScorer_rankedAppsForMode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__ATXModeEntityScorer_rankedAppsForMode_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)rankedAppsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__ATXModeEntityScorer_rankedAppsForMode_options_reply___block_invoke;
  v11[3] = &unk_1E80C26A0;
  v12 = v8;
  v13 = a3;
  v10 = v8;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedAppsForMode:a3 options:a4 reply:v11];
}

void __55__ATXModeEntityScorer_rankedAppsForMode_options_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__ATXModeEntityScorer_rankedAppsForMode_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)rankedWidgetsForMode:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__ATXModeEntityScorer_rankedWidgetsForMode_reply___block_invoke;
  v9[3] = &unk_1E80C26A0;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedWidgetsForMode:a3 reply:v9];
}

void __50__ATXModeEntityScorer_rankedWidgetsForMode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__ATXModeEntityScorer_rankedWidgetsForMode_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)_attachNotificationEntityScores:(id)a3 toNotifications:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 identifier];
        [v7 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  v32 = v8;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
  v15 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v34 + 1) + 8 * j);
        v20 = [[ATXNotificationModeEntity alloc] initWithUserNotification:v19, v32];
        v21 = [(ATXNotificationModeEntity *)v20 identifier];
        v22 = [v7 objectForKeyedSubscript:v21];

        if (v22)
        {
          v23 = [ATXUserNotificationModelScore alloc];
          v24 = [v22 scoreMetadata];
          [v24 score];
          v26 = v25;
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v28 = v27;
          v29 = objc_opt_new();
          v30 = [(ATXUserNotificationModelScore *)v23 initFromModelScoreData:@"ATXModeEntityScorer" modelVersion:0 score:v29 scoreTimestamp:0 scoreUUID:v26 scoreInfo:v28];

          v31 = [v19 derivedData];
          [v31 addScore:v30];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v16);
  }
}

- (void)scoreUserNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count] < 0xC351)
  {
    v12 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_38];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__ATXModeEntityScorer_scoreUserNotifications_mode_reply___block_invoke_2;
    v13[3] = &unk_1E80C2C80;
    v16 = v9;
    v13[4] = self;
    v14 = v12;
    v15 = v8;
    v11 = v12;
    [(ATXModeEntityScorer *)self scoreNotifications:v11 mode:a4 reply:v13];
  }

  else
  {
    v10 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXModeEntityScorer scoreUserNotifications:v10 mode:? reply:?];
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:28 userInfo:0];
    (*(v9 + 2))(v9, v11);
  }
}

ATXNotificationModeEntity *__57__ATXModeEntityScorer_scoreUserNotifications_mode_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 bundleID];

  if (v3)
  {
    v3 = [[ATXNotificationModeEntity alloc] initWithUserNotification:v2];
  }

  return v3;
}

uint64_t __57__ATXModeEntityScorer_scoreUserNotifications_mode_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) _attachNotificationEntityScores:*(a1 + 40) toNotifications:*(a1 + 48)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (void)scoreNotifications:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__ATXModeEntityScorer_scoreNotifications_mode_reply___block_invoke;
  v13[3] = &unk_1E80C2C10;
  v15 = v9;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient scoreNotifications:v11 mode:a4 reply:v13];
}

void __53__ATXModeEntityScorer_scoreNotifications_mode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __53__ATXModeEntityScorer_scoreNotifications_mode_reply___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    [*(a1 + 32) copyScoreMetadataFromEntities:a2 toEntities:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

- (void)rankedNotificationsForMode:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__ATXModeEntityScorer_rankedNotificationsForMode_reply___block_invoke;
  v9[3] = &unk_1E80C26A0;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedNotificationsForMode:a3 reply:v9];
}

void __56__ATXModeEntityScorer_rankedNotificationsForMode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__ATXModeEntityScorer_rankedNotificationsForMode_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)rankedNotificationsForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__ATXModeEntityScorer_rankedNotificationsForMode_options_reply___block_invoke;
  v11[3] = &unk_1E80C26A0;
  v12 = v8;
  v13 = a3;
  v10 = v8;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedNotificationsForMode:a3 options:a4 reply:v11];
}

void __64__ATXModeEntityScorer_rankedNotificationsForMode_options_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__ATXModeEntityScorer_rankedNotificationsForMode_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)rankedAppsForNotificationsForMode:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__ATXModeEntityScorer_rankedAppsForNotificationsForMode_reply___block_invoke;
  v9[3] = &unk_1E80C26A0;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedAppsForNotificationsForMode:a3 reply:v9];
}

void __63__ATXModeEntityScorer_rankedAppsForNotificationsForMode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__ATXModeEntityScorer_rankedAppsForNotificationsForMode_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)rankedContactsForNotificationsForMode:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__ATXModeEntityScorer_rankedContactsForNotificationsForMode_reply___block_invoke;
  v9[3] = &unk_1E80C26A0;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedContactsForNotificationsForMode:a3 reply:v9];
}

void __67__ATXModeEntityScorer_rankedContactsForNotificationsForMode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__ATXModeEntityScorer_rankedContactsForNotificationsForMode_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__ATXModeEntityScorer_scoreAppsForDenyList_mode___block_invoke;
  v11[3] = &unk_1E80C2AF8;
  v12 = v7;
  v8 = v7;
  [(ATXModeEntityScorer *)self scoreAppsForDenyList:v6 mode:a4 reply:v11];

  v9[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__ATXModeEntityScorer_scoreAppsForDenyList_mode___block_invoke_2;
  v10[3] = &unk_1E80C0C90;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__ATXModeEntityScorer_scoreAppsForDenyList_mode___block_invoke_42;
  v9[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v8 timeoutSeconds:v10 onAcquire:v9 onTimeout:3.0];
}

void __49__ATXModeEntityScorer_scoreAppsForDenyList_mode___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __49__ATXModeEntityScorer_scoreAppsForDenyList_mode___block_invoke_42()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __49__ATXModeEntityScorer_scoreAppsForDenyList_mode___block_invoke_42_cold_1();
  }
}

- (id)rankedAppsForDenyListForMode:(unint64_t)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v5 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__ATXModeEntityScorer_rankedAppsForDenyListForMode___block_invoke;
  v12[3] = &unk_1E80C2B20;
  v14 = &v15;
  v6 = v5;
  v13 = v6;
  [(ATXModeEntityScorer *)self rankedAppsForDenyListForMode:a3 reply:v12];
  v10[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__ATXModeEntityScorer_rankedAppsForDenyListForMode___block_invoke_2;
  v11[3] = &unk_1E80C0C90;
  v11[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__ATXModeEntityScorer_rankedAppsForDenyListForMode___block_invoke_43;
  v10[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v6 timeoutSeconds:v11 onAcquire:v10 onTimeout:3.0];
  v7 = v16[5];
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __52__ATXModeEntityScorer_rankedAppsForDenyListForMode___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __52__ATXModeEntityScorer_rankedAppsForDenyListForMode___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __52__ATXModeEntityScorer_rankedAppsForDenyListForMode___block_invoke_43()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __52__ATXModeEntityScorer_rankedAppsForDenyListForMode___block_invoke_43_cold_1();
  }
}

- (void)scoreAppsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__ATXModeEntityScorer_scoreAppsForDenyList_mode_reply___block_invoke;
  v13[3] = &unk_1E80C2C10;
  v15 = v9;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient scoreAppsForDenyList:v11 mode:a4 reply:v13];
}

void __55__ATXModeEntityScorer_scoreAppsForDenyList_mode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__ATXModeEntityScorer_scoreAppsForDenyList_mode_reply___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    [*(a1 + 32) copyScoreMetadataFromEntities:a2 toEntities:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

- (void)rankedAppsForDenyListForMode:(unint64_t)a3 reply:(id)a4
{
  v6 = a4;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__ATXModeEntityScorer_rankedAppsForDenyListForMode_reply___block_invoke;
  v9[3] = &unk_1E80C26A0;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedAppsForDenyListForMode:a3 reply:v9];
}

void __58__ATXModeEntityScorer_rankedAppsForDenyListForMode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__ATXModeEntityScorer_rankedAppsForDenyListForMode_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__ATXModeEntityScorer_scoreContactsForDenyList_mode___block_invoke;
  v11[3] = &unk_1E80C2AF8;
  v12 = v7;
  v8 = v7;
  [(ATXModeEntityScorer *)self scoreContactsForDenyList:v6 mode:a4 reply:v11];

  v9[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__ATXModeEntityScorer_scoreContactsForDenyList_mode___block_invoke_2;
  v10[3] = &unk_1E80C0C90;
  v10[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__ATXModeEntityScorer_scoreContactsForDenyList_mode___block_invoke_44;
  v9[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v8 timeoutSeconds:v10 onAcquire:v9 onTimeout:3.0];
}

void __53__ATXModeEntityScorer_scoreContactsForDenyList_mode___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __53__ATXModeEntityScorer_scoreContactsForDenyList_mode___block_invoke_44()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __53__ATXModeEntityScorer_scoreContactsForDenyList_mode___block_invoke_44_cold_1();
  }
}

- (id)rankedContactsForDenyListForMode:(unint64_t)a3 options:(unint64_t)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v7 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__ATXModeEntityScorer_rankedContactsForDenyListForMode_options___block_invoke;
  v14[3] = &unk_1E80C2B20;
  v16 = &v17;
  v8 = v7;
  v15 = v8;
  [(ATXModeEntityScorer *)self rankedContactsForDenyListForMode:a3 options:a4 reply:v14];
  v12[4] = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__ATXModeEntityScorer_rankedContactsForDenyListForMode_options___block_invoke_2;
  v13[3] = &unk_1E80C0C90;
  v13[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__ATXModeEntityScorer_rankedContactsForDenyListForMode_options___block_invoke_45;
  v12[3] = &unk_1E80C0C90;
  [MEMORY[0x1E69C5D10] waitForSemaphore:v8 timeoutSeconds:v13 onAcquire:v12 onTimeout:3.0];
  v9 = v18[5];
  if (!v9)
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __64__ATXModeEntityScorer_rankedContactsForDenyListForMode_options___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __64__ATXModeEntityScorer_rankedContactsForDenyListForMode_options___block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = __atxlog_handle_default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = objc_opt_class();
    v2 = NSStringFromClass(v1);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEFAULT, "Successfully acquired semaphore in %@", &v3, 0xCu);
  }
}

void __64__ATXModeEntityScorer_rankedContactsForDenyListForMode_options___block_invoke_45()
{
  v0 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __64__ATXModeEntityScorer_rankedContactsForDenyListForMode_options___block_invoke_45_cold_1();
  }
}

- (void)scoreContactsForDenyList:(id)a3 mode:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__ATXModeEntityScorer_scoreContactsForDenyList_mode_reply___block_invoke;
  v13[3] = &unk_1E80C2C10;
  v15 = v9;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient scoreContactsForDenyList:v11 mode:a4 reply:v13];
}

void __59__ATXModeEntityScorer_scoreContactsForDenyList_mode_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__ATXModeEntityScorer_scoreContactsForDenyList_mode_reply___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    [*(a1 + 32) copyScoreMetadataFromEntities:a2 toEntities:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

- (void)rankedContactsForDenyListForMode:(unint64_t)a3 options:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  modeEntityScorerClient = self->_modeEntityScorerClient;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__ATXModeEntityScorer_rankedContactsForDenyListForMode_options_reply___block_invoke;
  v11[3] = &unk_1E80C26A0;
  v12 = v8;
  v13 = a3;
  v10 = v8;
  [(ATXModeEntityScorerInterface *)modeEntityScorerClient rankedContactsForDenyListForMode:a3 options:a4 reply:v11];
}

void __70__ATXModeEntityScorer_rankedContactsForDenyListForMode_options_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__ATXModeEntityScorer_rankedContactsForDenyListForMode_options_reply___block_invoke_cold_1();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void __38__ATXModeEntityScorer_scoreApps_mode___block_invoke_16_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __41__ATXModeEntityScorer_rankedAppsForMode___block_invoke_18_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __51__ATXModeEntityScorer_scoreUserNotifications_mode___block_invoke_20_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = ATXModeToString(*(v0 + 48));
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __58__ATXModeEntityScorer_rankedNotificationsForMode_options___block_invoke_23_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __57__ATXModeEntityScorer_rankedAppsForNotificationsForMode___block_invoke_24_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __61__ATXModeEntityScorer_rankedContactsForNotificationsForMode___block_invoke_25_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "Did not receive modeEntityScoresFromCache for mode:%@ error:%@", &v4, 0x16u);
}

void __113__ATXModeEntityScorer_modeEntityScoresFromCacheForModeEntityTypeIdentifier_modeIdentifier_modeConfigurationType___block_invoke_28_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "assignModeEntityScores error:%@", v1, 0xCu);
}

void __112__ATXModeEntityScorer_assignModeEntityScores_entityTypeIdentifier_entityIdentifier_score_modeConfigurationType___block_invoke_31_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __48__ATXModeEntityScorer_scoreContacts_mode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_6_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __51__ATXModeEntityScorer_rankedContactsForMode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_4_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __59__ATXModeEntityScorer_rankedContactsForMode_options_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = ATXModeToString(*(v0 + 40));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __44__ATXModeEntityScorer_scoreApps_mode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_6_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __47__ATXModeEntityScorer_rankedAppsForMode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_4_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __50__ATXModeEntityScorer_rankedWidgetsForMode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_4_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __53__ATXModeEntityScorer_scoreNotifications_mode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_6_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __56__ATXModeEntityScorer_rankedNotificationsForMode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_4_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __63__ATXModeEntityScorer_rankedAppsForNotificationsForMode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_4_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __67__ATXModeEntityScorer_rankedContactsForNotificationsForMode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_4_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __49__ATXModeEntityScorer_scoreAppsForDenyList_mode___block_invoke_42_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __52__ATXModeEntityScorer_rankedAppsForDenyListForMode___block_invoke_43_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __55__ATXModeEntityScorer_scoreAppsForDenyList_mode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_6_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __58__ATXModeEntityScorer_rankedAppsForDenyListForMode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_4_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __53__ATXModeEntityScorer_scoreContactsForDenyList_mode___block_invoke_44_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __64__ATXModeEntityScorer_rankedContactsForDenyListForMode_options___block_invoke_45_cold_1()
{
  v0 = OUTLINED_FUNCTION_5_3();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __59__ATXModeEntityScorer_scoreContactsForDenyList_mode_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_6_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __70__ATXModeEntityScorer_rankedContactsForDenyListForMode_options_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_4_2(v0);
  v2 = ATXModeToString(v1);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end