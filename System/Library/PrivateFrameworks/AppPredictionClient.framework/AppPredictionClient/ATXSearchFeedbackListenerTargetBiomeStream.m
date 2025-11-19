@interface ATXSearchFeedbackListenerTargetBiomeStream
- (ATXSearchFeedbackListenerTargetBiomeStream)init;
- (ATXSearchFeedbackListenerTargetBiomeStream)initWithBiomeUIStream:(id)a3;
- (void)writeSpotlightEvent:(id)a3;
@end

@implementation ATXSearchFeedbackListenerTargetBiomeStream

- (ATXSearchFeedbackListenerTargetBiomeStream)init
{
  v3 = objc_opt_new();
  v4 = [(ATXSearchFeedbackListenerTargetBiomeStream *)self initWithBiomeUIStream:v3];

  return v4;
}

- (ATXSearchFeedbackListenerTargetBiomeStream)initWithBiomeUIStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXSearchFeedbackListenerTargetBiomeStream;
  v6 = [(ATXSearchFeedbackListenerTargetBiomeStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiStream, a3);
  }

  return v7;
}

- (void)writeSpotlightEvent:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  uiStream = self->_uiStream;
  v6 = [ATXUIEvent uiEventWithSpotlightEvent:v4];
  [(ATXUniversalBiomeUIStream *)uiStream donateGenericUIEvent:v6];

  v7 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v4 eventType];
    if ((v10 - 1) >= 8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E80C6040[(v10 - 1)];
    }

    v12 = [v4 appBlendingCacheId];
    v13 = [v4 actionBlendingCacheId];
    v14 = [v4 appSuggestionIds];
    v15 = [v4 actionSuggestionIds];
    *buf = 138413570;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_INFO, "%@ - wrote event of type %@ \nappBlendingCacheId: %@ \nactionBlendingCacheId: %@ \nappUUIDs: %@ \nactionUUIDs: %@", buf, 0x3Eu);
  }
}

@end