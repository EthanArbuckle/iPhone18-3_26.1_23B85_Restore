@interface ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery
- (id)uiFeedbackPublisherChain;
- (void)uiFeedbackPublisherChain;
@end

@implementation ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery

- (id)uiFeedbackPublisherChain
{
  v19.receiver = self;
  v19.super_class = ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery;
  uiFeedbackPublisherChain = [(ATXProactiveSuggestionUIFeedbackQuery *)&v19 uiFeedbackPublisherChain];
  v4 = BiomeLibrary();
  v5 = [v4 App];
  inFocus = [v5 InFocus];
  startDateForResults = [(ATXProactiveSuggestionUIFeedbackQuery *)self startDateForResults];
  v8 = [inFocus atx_publisherFromStartDate:startDateForResults];

  v9 = BiomeLibrary();
  v10 = [v9 App];
  intent = [v10 Intent];
  startDateForResults2 = [(ATXProactiveSuggestionUIFeedbackQuery *)self startDateForResults];
  v13 = [intent atx_publisherFromStartDate:startDateForResults2];

  if (!uiFeedbackPublisherChain || !v8 || !v13)
  {
    if (uiFeedbackPublisherChain)
    {
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = __atxlog_handle_blending_ecosystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery uiFeedbackPublisherChain];
      }

      if (v8)
      {
LABEL_7:
        if (v13)
        {
LABEL_8:
          partialIntentUIFeedbackPublisher = 0;
          goto LABEL_19;
        }

LABEL_15:
        v14 = __atxlog_handle_blending_ecosystem();
        if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
        {
          [ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery uiFeedbackPublisherChain];
        }

        partialIntentUIFeedbackPublisher = 0;
        goto LABEL_18;
      }
    }

    v17 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXProactiveSuggestioniOSPartialIntentUIFeedbackQuery uiFeedbackPublisherChain];
    }

    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v14 = [[ATXProactiveSuggestionPartialIntentHandlingPublisher alloc] initWithUIFeedbackPublisher:uiFeedbackPublisherChain appLaunchPublisher:v8 intentPublisher:v13];
  partialIntentUIFeedbackPublisher = [(ATXProactiveSuggestionPartialIntentHandlingPublisher *)v14 partialIntentUIFeedbackPublisher];
LABEL_18:

LABEL_19:

  return partialIntentUIFeedbackPublisher;
}

- (void)uiFeedbackPublisherChain
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "%@ - could not initialize intentPublisher, returning early", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end