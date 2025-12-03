@interface ATXProactiveSuggestionClientModelEvaluator
+ (id)eventAndRecentCacheUpdatePublisher:(id)publisher;
+ (id)resultFromResults:(id)results withSessionType:(unint64_t)type executableType:(int64_t)executableType removeDockedApps:(BOOL)apps;
- (ATXProactiveSuggestionClientModelEvaluator)init;
- (ATXProactiveSuggestionClientModelEvaluator)initWithPublishers:(id)publishers;
- (ATXProactiveSuggestionClientModelEvaluator)initWithStartTime:(id)time endTime:(id)endTime;
- (id)evaluationResultsForClientModelName:(id)name;
- (id)uiPublisherWithDeduplicatedEngagements;
@end

@implementation ATXProactiveSuggestionClientModelEvaluator

- (ATXProactiveSuggestionClientModelEvaluator)init
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [date dateByAddingTimeInterval:-2592000.0];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v8 = MEMORY[0x277CCABB0];
  [date timeIntervalSinceReferenceDate];
  v9 = [v8 numberWithDouble:?];
  v10 = [(ATXProactiveSuggestionClientModelEvaluator *)self initWithStartTime:v7 endTime:v9];

  return v10;
}

- (ATXProactiveSuggestionClientModelEvaluator)initWithStartTime:(id)time endTime:(id)endTime
{
  endTimeCopy = endTime;
  timeCopy = time;
  v8 = [[ATXProactiveSuggestionClientModelEvaluatorPublishers alloc] initWithStartTime:timeCopy endTime:endTimeCopy];

  v9 = [(ATXProactiveSuggestionClientModelEvaluator *)self initWithPublishers:v8];
  return v9;
}

- (ATXProactiveSuggestionClientModelEvaluator)initWithPublishers:(id)publishers
{
  publishersCopy = publishers;
  v9.receiver = self;
  v9.super_class = ATXProactiveSuggestionClientModelEvaluator;
  v6 = [(ATXProactiveSuggestionClientModelEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publishers, publishers);
  }

  return v7;
}

- (id)uiPublisherWithDeduplicatedEngagements
{
  v3 = objc_opt_new();
  uiPublisher = [(ATXProactiveSuggestionClientModelEvaluatorPublishers *)self->_publishers uiPublisher];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__ATXProactiveSuggestionClientModelEvaluator_uiPublisherWithDeduplicatedEngagements__block_invoke;
  v9[3] = &unk_27859A798;
  v10 = v3;
  v5 = v3;
  v6 = [uiPublisher filterWithIsIncluded:v9];
  v7 = [v6 mapWithTransform:&__block_literal_global_195];

  return v7;
}

uint64_t __84__ATXProactiveSuggestionClientModelEvaluator_uiPublisherWithDeduplicatedEngagements__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 engagedSuggestions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 sessionStartDate];
    v7 = [v3 engagedSuggestions];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 executableIdentifier];

    v10 = [MEMORY[0x277D42648] tupleWithFirst:v6 second:v9];
    LODWORD(v8) = [*(a1 + 32) containsObject:v10];
    [*(a1 + 32) addObject:v10];

    v11 = v8 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __84__ATXProactiveSuggestionClientModelEvaluator_uiPublisherWithDeduplicatedEngagements__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];
  v4 = [v3 engagedSuggestions];
  v5 = [v4 objectAtIndexedSubscript:0];

  v6 = [v2 eventBody];
  [v5 setConsumerSubType:{objc_msgSend(v6, "consumerSubType")}];

  v7 = objc_alloc(MEMORY[0x277CEBC00]);
  v8 = [v2 eventBody];

  v9 = [v8 sessionStartDate];
  [v9 timeIntervalSinceReferenceDate];
  v10 = [v7 initWithEventBody:v5 timestamp:?];

  return v10;
}

uint64_t __119__ATXProactiveSuggestionClientModelEvaluator_shadowResultForSuggestionExecutableType_clientModelName_removeDockedApps___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 clientModelId];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __119__ATXProactiveSuggestionClientModelEvaluator_shadowResultForSuggestionExecutableType_clientModelName_removeDockedApps___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __119__ATXProactiveSuggestionClientModelEvaluator_shadowResultForSuggestionExecutableType_clientModelName_removeDockedApps___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v2 second];

  return isKindOfClass & (v6 != 0);
}

void __119__ATXProactiveSuggestionClientModelEvaluator_shadowResultForSuggestionExecutableType_clientModelName_removeDockedApps___block_invoke_5(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 first];
  v5 = [v4 eventBody];

  v6 = [v3 second];

  v7 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:0 suggestedConfidenceCategory:0.0];
  v8 = objc_alloc(MEMORY[0x277D42060]);
  v9 = [v5 identifier];
  v10 = [v8 initWithExecutableIdentifier:v9 executableType:objc_msgSend(v5 scoreSpecification:"suggestionExecutableType") predictionReasons:{v7, 0}];

  [v10 setConsumerSubType:15];
  v11 = *(a1 + 32);
  v12 = [v6 suggestions];
  v15[0] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v11 updateCountsForSessionsWithShownSuggestions:v12 engagedSuggestions:v13 rejectedSuggestions:MEMORY[0x277CBEBF8]];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __115__ATXProactiveSuggestionClientModelEvaluator_uiResultForSuggestionExecutableType_clientModelName_removeDockedApps___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 clientModelId];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __115__ATXProactiveSuggestionClientModelEvaluator_uiResultForSuggestionExecutableType_clientModelName_removeDockedApps___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __115__ATXProactiveSuggestionClientModelEvaluator_uiResultForSuggestionExecutableType_clientModelName_removeDockedApps___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v2 second];

  return isKindOfClass & (v6 != 0);
}

void __115__ATXProactiveSuggestionClientModelEvaluator_uiResultForSuggestionExecutableType_clientModelName_removeDockedApps___block_invoke_5(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 first];
  v5 = [v4 eventBody];

  v6 = [v3 second];

  v7 = *(a1 + 32);
  v8 = [v6 suggestions];
  v11[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v7 updateCountsForSessionsWithShownSuggestions:v8 engagedSuggestions:v9 rejectedSuggestions:MEMORY[0x277CBEBF8]];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)evaluationResultsForClientModelName:(id)name
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [&unk_283A57E18 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v19 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(&unk_283A57E18);
        }

        v21 = v6;
        v7 = *(*(&v26 + 1) + 8 * v6);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = [&unk_283A57E30 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(&unk_283A57E30);
              }

              v12 = *(*(&v22 + 1) + 8 * i);
              integerValue = [v7 integerValue];
              integerValue2 = [v12 integerValue];
              v15 = [(ATXProactiveSuggestionClientModelEvaluator *)self resultForClientModelName:nameCopy suggestionExecutableType:integerValue2 sessionType:integerValue removeDockedApps:0];
              if ([v15 numberOfSessionsWithPredictions])
              {
                [v5 addObject:v15];
              }

              if (integerValue2 == 1)
              {
                v16 = [(ATXProactiveSuggestionClientModelEvaluator *)self resultForClientModelName:nameCopy suggestionExecutableType:1 sessionType:integerValue removeDockedApps:1];

                if ([v16 numberOfSessionsWithPredictions])
                {
                  [v5 addObject:v16];
                }
              }

              else
              {
                v16 = v15;
              }
            }

            v9 = [&unk_283A57E30 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }

        v6 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [&unk_283A57E18 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)eventAndRecentCacheUpdatePublisher:(id)publisher
{
  v4 = MEMORY[0x277D42648];
  publisherCopy = publisher;
  v6 = [v4 tupleWithFirst:0 second:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ATXProactiveSuggestionClientModelEvaluator_eventAndRecentCacheUpdatePublisher___block_invoke;
  v9[3] = &__block_descriptor_40_e70____PASTuple2_24__0___PASTuple2_8__NSObject_ATXBMStoreEventProtocol__16l;
  v9[4] = self;
  v7 = [publisherCopy scanWithInitial:v6 nextPartialResult:v9];

  return v7;
}

id __81__ATXProactiveSuggestionClientModelEvaluator_eventAndRecentCacheUpdatePublisher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 eventBody];
  if (v8)
  {
    v9 = [v5 second];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;

      v9 = v10;
    }

    v11 = [MEMORY[0x277D42648] tupleWithFirst:v6 second:v9];
  }

  else
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __81__ATXProactiveSuggestionClientModelEvaluator_eventAndRecentCacheUpdatePublisher___block_invoke_cold_1(a1, v12);
    }

    v11 = v5;
  }

  objc_autoreleasePoolPop(v7);

  return v11;
}

+ (id)resultFromResults:(id)results withSessionType:(unint64_t)type executableType:(int64_t)executableType removeDockedApps:(BOOL)apps
{
  appsCopy = apps;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  resultsCopy = results;
  v10 = [resultsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 sessionType] == type && objc_msgSend(v14, "executableType") == executableType && objc_msgSend(v14, "removeDockedApps") == appsCopy)
        {
          v15 = v14;
          goto LABEL_13;
        }
      }

      v11 = [resultsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)resultForClientModelName:(uint64_t)a1 suggestionExecutableType:(NSObject *)a2 sessionType:removeDockedApps:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "resultForClientModelName called with invalid suggestionExecutableType value of %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __81__ATXProactiveSuggestionClientModelEvaluator_eventAndRecentCacheUpdatePublisher___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@ - Event can't be deserialized in eventAndRecentCacheUpdatePublisher", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end