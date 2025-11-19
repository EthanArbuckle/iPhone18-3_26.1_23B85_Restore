@interface ATXAppClipSettingsUpdateSource
- (ATXAppClipSettingsUpdateSource)init;
- (ATXUpdatePredictionsDelegate)delegate;
- (void)handleSiriSettingsChangedNotification;
- (void)registerSiriSettingsChangedNotificationHandler;
@end

@implementation ATXAppClipSettingsUpdateSource

- (void)handleSiriSettingsChangedNotification
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = CFPreferencesCopyAppValue(@"SuggestionsSuggestAppClips", @"com.apple.suggestions");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = v8;
    v10 = @"NO";
    if (v5)
    {
      v10 = @"YES";
    }

    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - got siri settings notification, canSuggestAppClips is: %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = WeakRetained;
  if (v5)
  {
    [WeakRetained tryUpdatePredictionsDefaultIntervalWithReason:4];
  }

  else
  {
    [WeakRetained forceUpdatePredictionsImmediatelyWithReason:4];
  }

  v13 = +[ATXAppDirectoryOrderingProvider sharedInstance];
  [v13 updateRecents];

  v14 = *MEMORY[0x277D85DE8];
}

- (ATXAppClipSettingsUpdateSource)init
{
  v9.receiver = self;
  v9.super_class = ATXAppClipSettingsUpdateSource;
  v2 = [(ATXAppClipSettingsUpdateSource *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(Name, v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  [(ATXAppClipSettingsUpdateSource *)v2 registerSiriSettingsChangedNotificationHandler];
  return v2;
}

- (void)registerSiriSettingsChangedNotificationHandler
{
  queue = self->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __80__ATXAppClipSettingsUpdateSource_registerSiriSettingsChangedNotificationHandler__block_invoke;
  handler[3] = &unk_278597800;
  handler[4] = self;
  notify_register_dispatch("com.apple.suggestions.settingsChanged", &self->_token, queue, handler);
}

- (ATXUpdatePredictionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end