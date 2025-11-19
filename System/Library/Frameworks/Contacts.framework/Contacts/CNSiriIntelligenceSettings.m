@interface CNSiriIntelligenceSettings
- (BOOL)shouldShowSiriSuggestions;
- (CNSiriIntelligenceSettings)init;
- (void)dealloc;
- (void)setShouldShowSiriSuggestions:(BOOL)a3;
- (void)shouldShowSiriSuggestions;
@end

@implementation CNSiriIntelligenceSettings

- (CNSiriIntelligenceSettings)init
{
  v12.receiver = self;
  v12.super_class = CNSiriIntelligenceSettings;
  v2 = [(CNSiriIntelligenceSettings *)&v12 init];
  if (v2)
  {
    v3 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
    v4 = [v3 containsObject:@"com.apple.MobileAddressBook"] ^ 1;

    atomic_store(v4, &v2->_shouldShowSiriSuggestions);
    objc_initWeak(&location, v2);
    v5 = dispatch_get_global_queue(17, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __34__CNSiriIntelligenceSettings_init__block_invoke;
    handler[3] = &unk_1E7417D78;
    objc_copyWeak(&v10, &location);
    v9 = @"com.apple.MobileAddressBook";
    notify_register_dispatch("com.apple.suggestions.settingsChanged", &v2->_notificationToken, v5, handler);

    v6 = v2;
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__CNSiriIntelligenceSettings_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = *(a1 + 32);
    v4 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
    v5 = [v4 containsObject:v3];

    [v6 setShouldShowSiriSuggestions:v5 ^ 1u];
    WeakRetained = v6;
  }
}

- (BOOL)shouldShowSiriSuggestions
{
  v2 = atomic_load(&self->_shouldShowSiriSuggestions);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [(CNSiriIntelligenceSettings *)v2 shouldShowSiriSuggestions];
  }

  return v2 & 1;
}

- (void)dealloc
{
  notificationToken = self->_notificationToken;
  if (notificationToken)
  {
    notify_cancel(notificationToken);
  }

  v4.receiver = self;
  v4.super_class = CNSiriIntelligenceSettings;
  [(CNSiriIntelligenceSettings *)&v4 dealloc];
}

- (void)setShouldShowSiriSuggestions:(BOOL)a3
{
  atomic_store(a3, &self->_shouldShowSiriSuggestions);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [CNSiriIntelligenceSettings setShouldShowSiriSuggestions:a3];
  }
}

- (void)shouldShowSiriSuggestions
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1 & 1;
  _os_log_debug_impl(&dword_1954A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "canShowSiriSuggestions = %d", v1, 8u);
}

- (void)setShouldShowSiriSuggestions:(char)a1 .cold.1(char a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1 & 1;
  _os_log_debug_impl(&dword_1954A0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "setCanShowSiriSuggestions = %d", v1, 8u);
}

@end