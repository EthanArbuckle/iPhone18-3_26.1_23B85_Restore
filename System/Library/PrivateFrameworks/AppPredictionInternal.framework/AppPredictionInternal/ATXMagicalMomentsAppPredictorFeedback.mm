@interface ATXMagicalMomentsAppPredictorFeedback
- (ATXMagicalMomentsAppPredictorFeedback)init;
- (ATXMagicalMomentsAppPredictorFeedback)initWithTracker:(id)tracker;
- (id)clientModelIds;
- (id)getCurrentABGroup;
- (int64_t)_anchorTypeFromBundleIdToAnchorTypeMap:(id)map bundleId:(id)id;
- (void)receiveUIFeedbackResult:(id)result;
@end

@implementation ATXMagicalMomentsAppPredictorFeedback

- (ATXMagicalMomentsAppPredictorFeedback)init
{
  v3 = objc_opt_new();
  v4 = [(ATXMagicalMomentsAppPredictorFeedback *)self initWithTracker:v3];

  return v4;
}

- (ATXMagicalMomentsAppPredictorFeedback)initWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v9.receiver = self;
  v9.super_class = ATXMagicalMomentsAppPredictorFeedback;
  v6 = [(ATXMagicalMomentsAppPredictorFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracker, tracker);
  }

  return v7;
}

- (id)clientModelIds
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:24];
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, 0}];

  return v3;
}

- (void)receiveUIFeedbackResult:(id)result
{
  v43 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXMagicalMomentsAppPredictorFeedback receiveUIFeedbackResult:];
  }

  shownSuggestions = [resultCopy shownSuggestions];
  v7 = [shownSuggestions count];

  if (v7)
  {
    consumerSubType = [resultCopy consumerSubType];
    if (consumerSubType)
    {
      v9 = consumerSubType;
      v10 = objc_autoreleasePoolPush();
      v11 = objc_alloc(MEMORY[0x277CBEB98]);
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = [v11 initWithObjects:{v12, v13, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v10);
      v15 = objc_autoreleasePoolPush();
      v16 = MEMORY[0x277CCAAC8];
      clientCacheUpdate = [resultCopy clientCacheUpdate];
      feedbackMetadata = [clientCacheUpdate feedbackMetadata];
      v40 = 0;
      v19 = [v16 unarchivedObjectOfClasses:v14 fromData:feedbackMetadata error:&v40];
      v20 = v40;

      objc_autoreleasePoolPop(v15);
      if (!v19 || v20)
      {
        engagedSuggestions = __atxlog_handle_feedback();
        if (os_log_type_enabled(engagedSuggestions, OS_LOG_TYPE_ERROR))
        {
          [ATXMagicalMomentsAppPredictorFeedback receiveUIFeedbackResult:];
        }
      }

      else
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        shownSuggestions2 = [resultCopy shownSuggestions];
        v22 = [shownSuggestions2 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v37;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(shownSuggestions2);
              }

              [(ATXMagicalMomentsAppPredictorFeedback *)self _handleShownProactiveSuggestion:*(*(&v36 + 1) + 8 * i) consumerSubType:v9 bundleIdToAnchorType:v19];
            }

            v23 = [shownSuggestions2 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v23);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        engagedSuggestions = [resultCopy engagedSuggestions];
        v27 = [engagedSuggestions countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v33;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v33 != v29)
              {
                objc_enumerationMutation(engagedSuggestions);
              }

              [(ATXMagicalMomentsAppPredictorFeedback *)self _handleEngagedProactiveSuggestion:*(*(&v32 + 1) + 8 * j) consumerSubType:v9 bundleIdToAnchorType:v19];
            }

            v28 = [engagedSuggestions countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v28);
        }
      }
    }

    else
    {
      v20 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ATXMagicalMomentsAppPredictorFeedback receiveUIFeedbackResult:];
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)getCurrentABGroup
{
  v2 = +[_ATXAppPredictor sharedInstance];
  abGroupIdentifiers = [v2 abGroupIdentifiers];
  v4 = [abGroupIdentifiers objectAtIndexedSubscript:16];

  return v4;
}

- (int64_t)_anchorTypeFromBundleIdToAnchorTypeMap:(id)map bundleId:(id)id
{
  v4 = [map objectForKey:id];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    if (integerValue <= 0x16)
    {
      v7 = integerValue;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)receiveUIFeedbackResult:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)receiveUIFeedbackResult:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)receiveUIFeedbackResult:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleShownProactiveSuggestion:consumerSubType:bundleIdToAnchorType:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logShownMMMetricsEntryForBundle:consumerSubType:anchorType:abGroup:score:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v0 bundleId];
  [v0 anchor];
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logEngagedMMMetricsEntryForBundle:consumerSubType:anchorType:abGroup:score:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v0 bundleId];
  [v0 anchor];
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

@end