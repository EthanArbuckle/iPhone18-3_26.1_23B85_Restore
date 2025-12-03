@interface ATXInferredModesAccumulator
- (ATXInferredModesAccumulator)init;
- (id)usageInsightsInferredATXModeEvents;
- (void)recordInferredModeEndEvent:(id)event;
- (void)usageInsightsInferredATXModeEvents;
@end

@implementation ATXInferredModesAccumulator

- (ATXInferredModesAccumulator)init
{
  v8.receiver = self;
  v8.super_class = ATXInferredModesAccumulator;
  v2 = [(ATXInferredModesAccumulator *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    inferredModeStartingEvents = v2->_inferredModeStartingEvents;
    v2->_inferredModeStartingEvents = v3;

    v5 = objc_opt_new();
    usageInsightsInferredModeEvents = v2->_usageInsightsInferredModeEvents;
    v2->_usageInsightsInferredModeEvents = v5;
  }

  return v2;
}

- (id)usageInsightsInferredATXModeEvents
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = BiomeLibrary();
  userFocus = [v4 UserFocus];
  inferredMode = [userFocus InferredMode];
  v7 = [inferredMode atx_publisherFromStartDate:v3];

  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = __Block_byref_object_copy__82;
  v15[3] = __Block_byref_object_dispose__82;
  v16 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__ATXInferredModesAccumulator_usageInsightsInferredATXModeEvents__block_invoke;
  v13[3] = &unk_278597540;
  v13[4] = &v14;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ATXInferredModesAccumulator_usageInsightsInferredATXModeEvents__block_invoke_2;
  v12[3] = &unk_278596F60;
  v12[4] = self;
  v8 = [v7 sinkWithCompletion:v13 receiveInput:v12];
  if (*(v15[0] + 40))
  {
    v9 = __atxlog_handle_usage_insights();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXInferredModesAccumulator *)v15 usageInsightsInferredATXModeEvents];
    }
  }

  v10 = self->_usageInsightsInferredModeEvents;
  _Block_object_dispose(&v14, 8);

  return v10;
}

uint64_t __65__ATXInferredModesAccumulator_usageInsightsInferredATXModeEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __65__ATXInferredModesAccumulator_usageInsightsInferredATXModeEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if ([v3 isStart])
  {
    [*(a1 + 32) recordInferredModeStartEvent:v3];
  }

  else if (([v3 isStart] & 1) == 0)
  {
    [*(a1 + 32) recordInferredModeEndEvent:v3];
  }
}

- (void)recordInferredModeEndEvent:(id)event
{
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [(NSMutableArray *)self->_inferredModeStartingEvents copy];
  v6 = MEMORY[0x277CBEB98];
  v7 = allModesForTraining();
  v33 = [v6 setWithArray:v7];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    v12 = 0x277CCA000uLL;
    do
    {
      v13 = 0;
      v34 = v10;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        modeType = [eventCopy modeType];
        if (modeType == [v14 modeType])
        {
          absoluteTimestamp = [v14 absoluteTimestamp];
          [absoluteTimestamp timeIntervalSinceReferenceDate];
          v18 = v17;
          absoluteTimestamp2 = [eventCopy absoluteTimestamp];
          [absoluteTimestamp2 timeIntervalSinceReferenceDate];
          v21 = v20;

          if (v18 < v21)
          {
            [eventCopy modeType];
            BMUserFocusInferredModeTypeToActivity();
            v22 = ATXModeFromActivityType();
            v23 = [*(v12 + 2992) numberWithUnsignedInteger:v22];
            v24 = [v33 containsObject:v23];

            if (v24)
            {
              v25 = objc_alloc(MEMORY[0x277CEB900]);
              absoluteTimestamp3 = [v14 absoluteTimestamp];
              [eventCopy absoluteTimestamp];
              v27 = v11;
              v28 = v8;
              v30 = v29 = self;
              v31 = [v25 initWithATXMode:v22 startTime:absoluteTimestamp3 endTime:v30];

              self = v29;
              v8 = v28;
              v11 = v27;
              v12 = 0x277CCA000;

              [(NSMutableArray *)self->_usageInsightsInferredModeEvents addObject:v31];
            }

            [(NSMutableArray *)self->_inferredModeStartingEvents removeObject:v14];
            v10 = v34;
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)usageInsightsInferredATXModeEvents
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v4 = 136315394;
  v5 = "[ATXInferredModesAccumulator usageInsightsInferredATXModeEvents]";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: Error with reading inferred mode stream: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end