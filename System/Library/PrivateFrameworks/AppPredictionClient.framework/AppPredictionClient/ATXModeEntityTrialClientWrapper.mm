@interface ATXModeEntityTrialClientWrapper
+ (id)sharedInstance;
- (ATXModeEntityTrialClientWrapper)initWithClientIdentifier:(int)a3;
- (id)modeAffinityAppCategoryScores;
- (id)modeAffinityModelsConstants;
- (id)notificationModeEntityModelWeights;
- (id)widgetModeEntityModelWeights;
- (void)updateFactors;
@end

@implementation ATXModeEntityTrialClientWrapper

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    +[ATXModeEntityTrialClientWrapper sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_1;

  return v3;
}

void __49__ATXModeEntityTrialClientWrapper_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[ATXModeEntityTrialClientWrapper alloc] initWithClientIdentifier:105];
  v2 = sharedInstance__pasExprOnceResult_1;
  sharedInstance__pasExprOnceResult_1 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXModeEntityTrialClientWrapper)initWithClientIdentifier:(int)a3
{
  v9.receiver = self;
  v9.super_class = ATXModeEntityTrialClientWrapper;
  v3 = [(ATXTrialClientWrapper *)&v9 initWithClientIdentifier:*&a3 namespaceName:@"SYSTEM_SPACE_INTELLIGENCE_FOCUS_MODES"];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69C5D60]);
    v5 = objc_opt_new();
    v6 = [v4 initWithGuardedData:v5];
    lock = v3->_lock;
    v3->_lock = v6;

    [(ATXModeEntityTrialClientWrapper *)v3 updateFactors];
  }

  return v3;
}

- (void)updateFactors
{
  lock = self->_lock;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__ATXModeEntityTrialClientWrapper_updateFactors__block_invoke;
  v3[3] = &unk_1E80C0F90;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __48__ATXModeEntityTrialClientWrapper_updateFactors__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_INFO, "ATXModeEntityTrialClientWrapper: Updating factors", &v21, 2u);
  }

  [*(a1 + 32) refreshEnrollmentInformation];
  v5 = [*(a1 + 32) dictionaryForTrialResource:@"ATXWidgetModeEntityModelWeights"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"Default_WidgetModeEntityModelWeights"];
    v8 = v3[1];
    v3[1] = v7;
  }

  else
  {
    v8 = __atxlog_handle_modes();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = @"ATXWidgetModeEntityModelWeights";
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_INFO, "ATXModeEntityTrialClientWrapper: No active Trial experiment asset for %{public}@", &v21, 0xCu);
    }
  }

  v9 = [*(a1 + 32) dictionaryForTrialResource:@"ATXNotificationModeEntityModelWeights"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"Default_NotificationModeEntityModelWeights"];
    v12 = v3[2];
    v3[2] = v11;
  }

  else
  {
    v12 = __atxlog_handle_modes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = @"ATXNotificationModeEntityModelWeights";
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_INFO, "ATXModeEntityTrialClientWrapper: No active Trial experiment asset for %{public}@", &v21, 0xCu);
    }
  }

  v13 = [*(a1 + 32) dictionaryForTrialResource:@"ATXModeAffinityAppCategoryScores"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:@"Modes"];
    v16 = v3[3];
    v3[3] = v15;
  }

  else
  {
    v16 = __atxlog_handle_modes();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = @"ATXModeAffinityAppCategoryScores";
      _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_INFO, "ATXModeEntityTrialClientWrapper: No active Trial experiment asset for %{public}@", &v21, 0xCu);
    }
  }

  v17 = [*(a1 + 32) dictionaryForTrialResource:@"ATXModeAffinityModelsConstants"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    v20 = v3[4];
    v3[4] = v19;
  }

  else
  {
    v20 = __atxlog_handle_modes();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = 138543362;
      v22 = @"ATXModeAffinityModelsConstants";
      _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_INFO, "ATXModeEntityTrialClientWrapper: No active Trial experiment asset for %{public}@", &v21, 0xCu);
    }
  }
}

- (id)widgetModeEntityModelWeights
{
  v14 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ATXModeEntityTrialClientWrapper_widgetModeEntityModelWeights__block_invoke;
  v7[3] = &unk_1E80C0FB8;
  v7[4] = buf;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 count];
    *buf = 67109120;
    *&buf[4] = v5 != 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_INFO, "ATXModeEntityTrialClientWrapper: widgetModeEntityModelWeights list loaded with Trial: %{BOOL}d", buf, 8u);
  }

  return v3;
}

- (id)notificationModeEntityModelWeights
{
  v14 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__ATXModeEntityTrialClientWrapper_notificationModeEntityModelWeights__block_invoke;
  v7[3] = &unk_1E80C0FB8;
  v7[4] = buf;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 count];
    *buf = 67109120;
    *&buf[4] = v5 != 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_INFO, "ATXModeEntityTrialClientWrapper: notificationModeEntityModelWeights list loaded with Trial: %{BOOL}d", buf, 8u);
  }

  return v3;
}

- (id)modeAffinityAppCategoryScores
{
  v14 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__ATXModeEntityTrialClientWrapper_modeAffinityAppCategoryScores__block_invoke;
  v7[3] = &unk_1E80C0FB8;
  v7[4] = buf;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 count];
    *buf = 67109120;
    *&buf[4] = v5 != 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_INFO, "ATXModeEntityTrialClientWrapper: modeAffinityAppCategoryScores list loaded with Trial: %{BOOL}d", buf, 8u);
  }

  return v3;
}

- (id)modeAffinityModelsConstants
{
  v14 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ATXModeEntityTrialClientWrapper_modeAffinityModelsConstants__block_invoke;
  v7[3] = &unk_1E80C0FB8;
  v7[4] = buf;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 count];
    *buf = 67109120;
    *&buf[4] = v5 != 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_INFO, "ATXModeEntityTrialClientWrapper: modeAffinityModelsConstants list loaded with Trial: %{BOOL}d", buf, 8u);
  }

  return v3;
}

@end