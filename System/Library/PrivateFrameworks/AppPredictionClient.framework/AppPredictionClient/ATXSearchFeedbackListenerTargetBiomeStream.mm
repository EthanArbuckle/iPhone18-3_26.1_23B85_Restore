@interface ATXSearchFeedbackListenerTargetBiomeStream
- (ATXSearchFeedbackListenerTargetBiomeStream)init;
- (ATXSearchFeedbackListenerTargetBiomeStream)initWithBiomeUIStream:(id)stream;
- (void)writeSpotlightEvent:(id)event;
@end

@implementation ATXSearchFeedbackListenerTargetBiomeStream

- (ATXSearchFeedbackListenerTargetBiomeStream)init
{
  v3 = objc_opt_new();
  v4 = [(ATXSearchFeedbackListenerTargetBiomeStream *)self initWithBiomeUIStream:v3];

  return v4;
}

- (ATXSearchFeedbackListenerTargetBiomeStream)initWithBiomeUIStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXSearchFeedbackListenerTargetBiomeStream;
  v6 = [(ATXSearchFeedbackListenerTargetBiomeStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiStream, stream);
  }

  return v7;
}

- (void)writeSpotlightEvent:(id)event
{
  v28 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  uiStream = self->_uiStream;
  v6 = [ATXUIEvent uiEventWithSpotlightEvent:eventCopy];
  [(ATXUniversalBiomeUIStream *)uiStream donateGenericUIEvent:v6];

  v7 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    eventType = [eventCopy eventType];
    if ((eventType - 1) >= 8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", eventType];
    }

    else
    {
      v11 = off_1E80C6040[(eventType - 1)];
    }

    appBlendingCacheId = [eventCopy appBlendingCacheId];
    actionBlendingCacheId = [eventCopy actionBlendingCacheId];
    appSuggestionIds = [eventCopy appSuggestionIds];
    actionSuggestionIds = [eventCopy actionSuggestionIds];
    *buf = 138413570;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = appBlendingCacheId;
    v22 = 2112;
    v23 = actionBlendingCacheId;
    v24 = 2112;
    v25 = appSuggestionIds;
    v26 = 2112;
    v27 = actionSuggestionIds;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_INFO, "%@ - wrote event of type %@ \nappBlendingCacheId: %@ \nactionBlendingCacheId: %@ \nappUUIDs: %@ \nactionUUIDs: %@", buf, 0x3Eu);
  }
}

@end