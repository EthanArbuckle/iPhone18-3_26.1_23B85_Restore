@interface ATXBestAppDataSource
- (ATXBestAppDataSource)initWithDevice:(id)device;
- (void)bestAppSuggestionWithCallback:(id)callback;
@end

@implementation ATXBestAppDataSource

- (ATXBestAppDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = ATXBestAppDataSource;
  v6 = [(ATXBestAppDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = objc_opt_new();
    bestAppSuggestionManager = v7->_bestAppSuggestionManager;
    v7->_bestAppSuggestionManager = v8;
  }

  return v7;
}

- (void)bestAppSuggestionWithCallback:(id)callback
{
  callbackCopy = callback;
  bestAppSuggestion = [(UABestAppSuggestionManager *)self->_bestAppSuggestionManager bestAppSuggestion];
  if (!bestAppSuggestion)
  {
    v6 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "bestAppSuggestionWithCallback: no bestApp suggestion (nil)", v7, 2u);
    }
  }

  callbackCopy[2](callbackCopy, bestAppSuggestion, 0);
}

@end