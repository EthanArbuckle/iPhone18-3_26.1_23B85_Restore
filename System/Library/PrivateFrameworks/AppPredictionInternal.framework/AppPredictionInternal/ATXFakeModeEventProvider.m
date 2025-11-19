@interface ATXFakeModeEventProvider
- (ATXFakeModeEventProvider)initWithEventDateIntervals:(id)a3;
- (ATXFakeModeEventProvider)initWithModeEvents:(id)a3 expectsNilEntity:(BOOL)a4;
- (BOOL)isEventFromProvider:(id)a3;
- (id)aggregationEventsFromEvent:(id)a3;
- (id)biomePublisherWithBookmark:(id)a3;
- (id)dateIntervalFromEvent:(id)a3;
- (id)eventsFromPublisher;
- (void)updateEntitySpecificFeaturesDict:(id)a3 aggregationEvent:(id)a4 isLocalToMode:(BOOL)a5;
@end

@implementation ATXFakeModeEventProvider

- (ATXFakeModeEventProvider)initWithEventDateIntervals:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 startDate];
        v13 = [v11 endDate];
        v14 = [[ATXModeEvent alloc] initWithStartDate:v12 endDate:v13];
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [(ATXFakeModeEventProvider *)self initWithModeEvents:v5 expectsNilEntity:1];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (ATXFakeModeEventProvider)initWithModeEvents:(id)a3 expectsNilEntity:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ATXFakeModeEventProvider;
  v8 = [(ATXFakeModeEventProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_modeEvents, a3);
    v9->_wasInitializedWithoutEntity = a4;
  }

  return v9;
}

- (id)biomePublisherWithBookmark:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_modeEvents;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CF1800]);
        v12 = [v10 startDate];
        [v12 timeIntervalSinceReferenceDate];
        v13 = [v11 initWithEventBody:v10 timestamp:?];

        [v4 addObject:v13];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [objc_alloc(MEMORY[0x277CF17D0]) initWithSequence:v4];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)eventsFromPublisher
{
  v3 = objc_opt_new();
  v4 = [(ATXFakeModeEventProvider *)self biomePublisherWithBookmark:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__ATXFakeModeEventProvider_eventsFromPublisher__block_invoke_2;
  v10[3] = &unk_2785988C8;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  v6 = [v4 sinkWithCompletion:&__block_literal_global_67 receiveInput:v10];

  v7 = v11;
  v8 = v5;

  return v5;
}

void __47__ATXFakeModeEventProvider_eventsFromPublisher__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = v7;
  if (isKindOfClass)
  {
    v6 = [*(a1 + 32) aggregationEventsFromEvent:v7];
    if ([v6 count])
    {
      [*(a1 + 40) addObjectsFromArray:v6];
    }

    v5 = v7;
  }
}

- (BOOL)isEventFromProvider:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v13 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v8 = [v5 eventBody];
    v9 = v8;
    wasInitializedWithoutEntity = self->_wasInitializedWithoutEntity;
    if (wasInitializedWithoutEntity)
    {
      v11 = [v8 entity];
      if (v11)
      {
        v12 = 1;
        goto LABEL_12;
      }

      if (self->_wasInitializedWithoutEntity)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_12;
      }
    }

    v14 = [v9 entity];
    v12 = v14 == 0;

    if (!wasInitializedWithoutEntity)
    {
LABEL_13:
      v13 = !v12;

      goto LABEL_14;
    }

    v11 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)aggregationEventsFromEvent:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ATXFakeModeEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 eventBody];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)updateEntitySpecificFeaturesDict:(id)a3 aggregationEvent:(id)a4 isLocalToMode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v5)
  {
    v10 = [v8 entity];
    v11 = [v7 objectForKeyedSubscript:v10];

    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = [v9 entity];
      [v7 setObject:v12 forKeyedSubscript:v13];
    }

    v14 = [v9 entity];
    v15 = [v7 objectForKeyedSubscript:v14];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 identifiersAndDates];
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = [v9 entity];
      v19 = [v18 identifier];
      v20 = MEMORY[0x277CCABB0];
      v21 = [v9 startDate];
      [v21 timeIntervalSince1970];
      v22 = [v20 numberWithDouble:?];
      v23 = [v17 initWithFormat:@"%@_%@", v19, v22];
      [v16 addObject:v23];
    }

    else
    {
      v16 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [ATXFakeModeEventProvider updateEntitySpecificFeaturesDict:v15 aggregationEvent:v16 isLocalToMode:?];
      }
    }
  }
}

- (id)dateIntervalFromEvent:(id)a3
{
  v4 = a3;
  if ([(ATXFakeModeEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 eventBody];
    v6 = objc_alloc(MEMORY[0x277CCA970]);
    v7 = [v5 startDate];
    v8 = [v5 endDate];
    v9 = [v6 initWithStartDate:v7 endDate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateEntitySpecificFeaturesDict:(uint64_t)a1 aggregationEvent:(NSObject *)a2 isLocalToMode:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Encountered an event of unknown type. Expected ATXFakeEntityFeatures, received: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end