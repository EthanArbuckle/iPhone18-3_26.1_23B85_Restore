@interface ATXProactiveSuggestionPartialIntentHandlingPublisher
- (ATXProactiveSuggestionPartialIntentHandlingPublisher)initWithUIFeedbackPublisher:(id)a3 appLaunchPublisher:(id)a4 intentPublisher:(id)a5;
- (id)_timestampFromEvent:(id)a3;
- (id)partialIntentUIFeedbackPublisher;
@end

@implementation ATXProactiveSuggestionPartialIntentHandlingPublisher

- (ATXProactiveSuggestionPartialIntentHandlingPublisher)initWithUIFeedbackPublisher:(id)a3 appLaunchPublisher:(id)a4 intentPublisher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXProactiveSuggestionPartialIntentHandlingPublisher;
  v12 = [(ATXProactiveSuggestionPartialIntentHandlingPublisher *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uiFeedbackPublisher, a3);
    objc_storeStrong(&v13->_appLaunchPublisher, a4);
    objc_storeStrong(&v13->_intentPublisher, a5);
  }

  return v13;
}

- (id)partialIntentUIFeedbackPublisher
{
  v15[2] = *MEMORY[0x277D85DE8];
  uiFeedbackPublisher = self->_uiFeedbackPublisher;
  intentPublisher = self->_intentPublisher;
  v15[0] = self->_appLaunchPublisher;
  v15[1] = intentPublisher;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__ATXProactiveSuggestionPartialIntentHandlingPublisher_partialIntentUIFeedbackPublisher__block_invoke;
  v14[3] = &unk_278597CB8;
  v14[4] = self;
  v6 = [(BPSPublisher *)uiFeedbackPublisher orderedMergeWithOthers:v5 comparator:v14];

  v7 = objc_alloc(MEMORY[0x277CEBCD0]);
  v8 = objc_opt_new();
  v9 = [v7 initWithFirst:0 second:v8];

  v10 = [v6 scanWithInitial:v9 nextPartialResult:&__block_literal_global_184];
  v11 = [v10 flatMapWithTransform:&__block_literal_global_29_2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __88__ATXProactiveSuggestionPartialIntentHandlingPublisher_partialIntentUIFeedbackPublisher__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _timestampFromEvent:a2];
  v8 = [*(a1 + 32) _timestampFromEvent:v6];

  v9 = [v7 compare:v8];
  return v9;
}

id __88__ATXProactiveSuggestionPartialIntentHandlingPublisher_partialIntentUIFeedbackPublisher__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 second];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 handleNewFeedbackResultAndReturnCompletedResults:v4];
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v7 = [v4 eventBody];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 handleAppLaunchAndReturnCompletedResults:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_11;
    }

    v8 = [v5 handleNewIntentEventAndReturnCompletedResults:v7];
  }

  v6 = v8;
LABEL_11:

LABEL_12:
  v9 = [objc_alloc(MEMORY[0x277CEBCD0]) initWithFirst:v6 second:v5];

  return v9;
}

id __88__ATXProactiveSuggestionPartialIntentHandlingPublisher_partialIntentUIFeedbackPublisher__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];

  if (v3)
  {
    v4 = [v2 first];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v6 = [v4 bpsPublisher];

  return v6;
}

- (id)_timestampFromEvent:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CCABB0];
    [v5 timestamp];
    v7 = [v6 numberWithDouble:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
      v9 = [v8 session];
      v10 = [v9 sessionEndDate];

      if (!v10)
      {
        [(ATXProactiveSuggestionPartialIntentHandlingPublisher *)a2 _timestampFromEvent:v8];
      }

      v11 = MEMORY[0x277CCABB0];
      v12 = [v8 session];
      v13 = [v12 sessionEndDate];
      [v13 timeIntervalSinceReferenceDate];
      v7 = [v11 numberWithDouble:?];
    }

    else
    {
      v14 = __atxlog_handle_blending_ecosystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(ATXProactiveSuggestionPartialIntentHandlingPublisher *)self _timestampFromEvent:v5, v14];
      }

      v15 = MEMORY[0x277CBEAD8];
      v16 = *MEMORY[0x277CBE658];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [v15 raise:v16 format:{@"%@ - _timestampFromEvent invoked with unknown object: %@", v18, v5}];

      v7 = &unk_283A57098;
    }
  }

  return v7;
}

- (void)_timestampFromEvent:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - _timestampFromEvent invoked with unknown object: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_timestampFromEvent:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ATXProactiveSuggestionPartialIntentHandlingPublisher.m" lineNumber:75 description:{@"_timestampFromEvent received nil sessionEndDate with uiFeedbackResult: %@", a3}];
}

@end