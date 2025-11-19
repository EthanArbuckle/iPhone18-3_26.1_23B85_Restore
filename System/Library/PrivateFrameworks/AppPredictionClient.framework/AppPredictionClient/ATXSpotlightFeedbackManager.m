@interface ATXSpotlightFeedbackManager
- (ATXSpotlightFeedbackManager)init;
- (ATXSpotlightFeedbackManager)initWithEngagementRecordManager:(id)a3;
- (BOOL)autoShortcutHasBeenHiddenForIdentifier:(id)a3;
- (BOOL)contextHasBeenHiddenForContextIdentifier:(id)a3;
- (BOOL)contextHasBeenHiddenForSuggestion:(id)a3;
- (BOOL)hasBeenHiddenEntityWithIdentifier:(id)a3;
- (BOOL)hasBeenHiddenSuggestion:(id)a3;
- (unint64_t)combineReasons:(unint64_t)a3;
- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(id)a3;
- (void)addHiddenActionExecutableIdentifier:(id)a3;
- (void)addHiddenAppSuggestionBundleIdentifier:(id)a3;
- (void)addHiddenAutoShortcutIdentifier:(id)a3;
- (void)addHiddenContextIdentifier:(id)a3;
- (void)clearHiddenSuggestions;
@end

@implementation ATXSpotlightFeedbackManager

- (ATXSpotlightFeedbackManager)init
{
  v3 = +[ATXEngagementRecordManager sharedInstance];
  v4 = [(ATXSpotlightFeedbackManager *)self initWithEngagementRecordManager:v3];

  return v4;
}

- (ATXSpotlightFeedbackManager)initWithEngagementRecordManager:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ATXSpotlightFeedbackManager;
  v6 = [(ATXSpotlightFeedbackManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_engagementRecordManager, a3);
    v8 = [MEMORY[0x1E69C5BB8] clientModelIdFromClientModelType:44];
    clientModelId = v7->_clientModelId;
    v7->_clientModelId = v8;
  }

  return v7;
}

- (void)addHiddenActionExecutableIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: addHiddenActionExecutableIdentifier: %@", &v6, 0xCu);
  }

  [(ATXEngagementRecordManager *)self->_engagementRecordManager addEngagedExecutable:v4 clientModelId:self->_clientModelId engagementRecordType:128];
}

- (void)addHiddenContextIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: addHiddenContext: %@", &v6, 0xCu);
  }

  [(ATXEngagementRecordManager *)self->_engagementRecordManager addEngagedExecutable:v4 clientModelId:self->_clientModelId engagementRecordType:256];
}

- (void)addHiddenAutoShortcutIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: addHiddenAutoShortcut: %@", &v6, 0xCu);
  }

  [(ATXEngagementRecordManager *)self->_engagementRecordManager addEngagedExecutable:v4 clientModelId:self->_clientModelId engagementRecordType:512];
}

- (void)addHiddenAppSuggestionBundleIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: addHiddenAppSuggestion: %@", &v7, 0xCu);
  }

  [(ATXEngagementRecordManager *)self->_engagementRecordManager addHiddenSuggestion:v4 duration:120 engagementRecordType:86400.0];
  [(ATXSpotlightFeedbackManager *)self _toggleSiriSearchSettingsOffForAppSuggestion:v4];
}

- (void)clearHiddenSuggestions
{
  v7 = *MEMORY[0x1E69E9840];
  [(ATXEngagementRecordManager *)self->_engagementRecordManager removeAllEngagementsOfRecordType:896];
  v3 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    engagementRecordManager = self->_engagementRecordManager;
    v5 = 138412290;
    v6 = engagementRecordManager;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: clearHiddenSuggestions for cache: %@", &v5, 0xCu);
  }
}

- (BOOL)hasBeenHiddenSuggestion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [a3 executableSpecification];
  v5 = [v4 executableIdentifier];

  v6 = [ATXSpotlightHidingUIController normalizedIdentifier:v5];

  v7 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithExecutable:v6 engagementRecordType:128];
  v8 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: hasBeenHiddenSuggestion:%@ ---> %{BOOL}d", &v10, 0x12u);
  }

  return v7;
}

- (BOOL)hasBeenHiddenEntityWithIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithExecutable:v4 engagementRecordType:128];
    v6 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: hasBeenHiddenEntityWithIdentifier:%@ ---> %{BOOL}d", &v8, 0x12u);
    }
  }

  else
  {
    v6 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: hasBeenHiddenEntityWithIdentifier NIL ---> NO", &v8, 2u);
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)contextHasBeenHiddenForSuggestion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 uiSpecification];
  -[ATXSpotlightFeedbackManager combineReasons:](self, "combineReasons:", [v5 predictionReasons]);

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = v4;
  ATXSuggestionPredictionReasonEnumerateReasonCodes();
  v7 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uiSpecification];
    v9 = [v8 title];
    v10 = *(v14 + 24);
    *buf = 138412546;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: contextHasBeenHiddenForSuggestion %@:no context --->  %{BOOL}d", buf, 0x12u);
  }

  v11 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v11 & 1;
}

void __65__ATXSpotlightFeedbackManager_contextHasBeenHiddenForSuggestion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = stringForATXSuggestionPredictionReasonCode();
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24))
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) contextHasBeenHiddenForContextIdentifier:v2];
    v3 = *(*(a1 + 48) + 8);
  }

  *(v3 + 24) = v4;
  v5 = __atxlog_handle_zkw_hide();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) uiSpecification];
    v7 = [v6 title];
    v8 = *(*(*(a1 + 48) + 8) + 24);
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v2;
    v13 = 1024;
    v14 = v8;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: contextHasBeenHiddenForSuggestion %@:%@ ---> %{BOOL}d", &v9, 0x1Cu);
  }
}

- (BOOL)contextHasBeenHiddenForContextIdentifier:(id)a3
{
  if (a3)
  {
    engagementRecordManager = self->_engagementRecordManager;

    return [ATXEngagementRecordManager hasEngagedWithExecutable:"hasEngagedWithExecutable:engagementRecordType:" engagementRecordType:?];
  }

  else
  {
    v6 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightFeedbackManager contextHasBeenHiddenForContextIdentifier:v6];
    }

    return 0;
  }
}

- (BOOL)autoShortcutHasBeenHiddenForIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithExecutable:v4 engagementRecordType:512];
    v6 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "ATXSpotlightFeedbackManager: autoShortcutHasBeenHiddenForIdentifier %@ --->  %{BOOL}d", &v8, 0x12u);
    }
  }

  else
  {
    v6 = __atxlog_handle_zkw_hide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXSpotlightFeedbackManager autoShortcutHasBeenHiddenForIdentifier:v6];
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)combineReasons:(unint64_t)a3
{
  v3 = 0x3000000000;
  if ((a3 & 0x3000000000) == 0)
  {
    v3 = a3;
  }

  if ((a3 & 0x380000000) != 0)
  {
    v3 = 0x380000000;
  }

  if ((a3 & 0x700000) != 0)
  {
    return 7340032;
  }

  else
  {
    return v3;
  }
}

- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableType];

  v6 = [v3 executableSpecification];
  v7 = [v6 executableObject];

  if (v5 == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x1E695DFA8]);
    v10 = *MEMORY[0x1E695E8B8];
    v11 = *MEMORY[0x1E695E898];
    v12 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = objc_opt_new();
    }

    v15 = v14;

    v16 = [v9 initWithArray:v15];
    [v16 addObject:v8];
    CFPreferencesSetAppValue(@"SBSearchSuggestAppDisabled", [v16 allObjects], @"com.apple.spotlightui");
    CFPreferencesSynchronize(@"com.apple.spotlightui", v10, v11);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.spotlightui.prefschanged", 0, 0, 1u);

    v18 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "toggled siri & search settings for spotlight OFF for app prediction: %@", &v19, 0xCu);
    }
  }

  else
  {
    v8 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXSpotlightFeedbackManager *)v3 _toggleSiriSearchSettingsOffForAppSuggestion:v7, v8];
    }
  }
}

- (void)_toggleSiriSearchSettingsOffForAppSuggestion:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C5BC8];
  v5 = [a1 executableSpecification];
  v6 = [v4 stringForExecutableType:{objc_msgSend(v5, "executableType")}];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = 136315650;
  v10 = "[ATXSpotlightFeedbackManager _toggleSiriSearchSettingsOffForAppSuggestion:]";
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_1BF549000, a3, OS_LOG_TYPE_ERROR, "%s: attempted to toggle siri & search settings off for non-app executable type: %{public}@ class: %{public}@", &v9, 0x20u);
}

@end