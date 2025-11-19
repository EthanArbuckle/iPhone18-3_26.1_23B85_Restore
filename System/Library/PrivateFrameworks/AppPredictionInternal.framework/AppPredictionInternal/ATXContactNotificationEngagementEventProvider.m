@interface ATXContactNotificationEngagementEventProvider
- (ATXContactNotificationEngagementEventProvider)initWithModeEventProvider:(id)a3;
- (BOOL)notificationEventOccurredWhileInMode:(id)a3 modeTransitionEvent:(id)a4;
- (BOOL)successfullyCalculatedNotificationEvents;
- (double)classConditionalOfNotificationsClearedForContactId:(id)a3;
- (double)classConditionalOfNotificationsReceivedForContactId:(id)a3;
- (double)globalNotificationsClearedRateForContactId:(id)a3;
- (double)globalPopularityOfNotificationsReceivedForContactId:(id)a3;
- (double)localNotificationsClearedRateForContactId:(id)a3;
- (double)localPopularityOfNotificationsReceivedForContactId:(id)a3;
- (double)ratioOfLocalToGlobalNotificationsClearedRateForContactId:(id)a3;
- (double)ratioOfLocalToGlobalPopularityOfNotificationsReceivedForContactId:(id)a3;
- (id)dateIntervalFromNotificationEvent:(id)a3;
- (unint64_t)globalCountOfNotificationsCleared;
- (unint64_t)globalCountOfNotificationsReceived;
- (unint64_t)modeCountOfNotificationsCleared;
- (unint64_t)modeCountOfNotificationsReceived;
- (void)successfullyCalculatedNotificationEvents;
- (void)trackNewNotificationEvent:(id)a3;
@end

@implementation ATXContactNotificationEngagementEventProvider

- (ATXContactNotificationEngagementEventProvider)initWithModeEventProvider:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = ATXContactNotificationEngagementEventProvider;
  v6 = [(ATXContactNotificationEngagementEventProvider *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeEventProvider, a3);
    v8 = objc_alloc_init(MEMORY[0x277CCA940]);
    modeCountOfNotificationsCleared = v7->_modeCountOfNotificationsCleared;
    v7->_modeCountOfNotificationsCleared = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCA940]);
    globalCountOfNotificationsCleared = v7->_globalCountOfNotificationsCleared;
    v7->_globalCountOfNotificationsCleared = v10;

    v12 = objc_alloc_init(MEMORY[0x277CCA940]);
    modeCountOfNotificationsReceived = v7->_modeCountOfNotificationsReceived;
    v7->_modeCountOfNotificationsReceived = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCA940]);
    globalCountOfNotificationsReceived = v7->_globalCountOfNotificationsReceived;
    v7->_globalCountOfNotificationsReceived = v14;
  }

  return v7;
}

- (BOOL)successfullyCalculatedNotificationEvents
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = BiomeLibrary();
  v5 = [v4 Notification];
  v6 = [v5 Usage];

  v7 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v3 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v8 = [v6 publisherWithUseCase:*MEMORY[0x277CEBB48] options:v7];
  v9 = [(ATXModeEntityEventProviderProtocol *)self->_modeEventProvider biomePublisherWithBookmark:0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke;
  v26[3] = &unk_278597CB8;
  v26[4] = self;
  v10 = [v9 orderedMergeWithOther:v8 comparator:v26];

  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x3032000000;
  v24[2] = __Block_byref_object_copy__100;
  v24[3] = __Block_byref_object_dispose__100;
  v25 = 0;
  v21[4] = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_20;
  v22[3] = &unk_278597540;
  v22[4] = &v23;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_2;
  v21[3] = &unk_27859FE58;
  v11 = [v10 sinkWithCompletion:v22 receiveInput:v21];
  v12 = *(v24[0] + 40);
  if (v12)
  {
    v13 = __atxlog_handle_modes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ATXContactNotificationEngagementEventProvider *)v24 successfullyCalculatedNotificationEvents:v13];
    }
  }

  _Block_object_dispose(&v23, 8);

  return v12 == 0;
}

uint64_t __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) dateIntervalFromEvent:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [*(a1 + 32) dateIntervalFromNotificationEvent:v5];
  }

  v10 = v9;

  v11 = [*(*(a1 + 32) + 8) dateIntervalFromEvent:v6];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [*(a1 + 32) dateIntervalFromNotificationEvent:v6];
  }

  v14 = v13;

  if (v10)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v15 = __atxlog_handle_modes();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(v5, v15, v16, v17, v18, v19, v20, v21);
  }

  if (!v14)
  {
LABEL_13:
    v22 = __atxlog_handle_modes();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(v6, v22, v23, v24, v25, v26, v27, v28);
    }
  }

LABEL_16:
  v29 = [v10 startDate];
  [v29 timeIntervalSinceReferenceDate];
  v31 = v30;

  v32 = [v14 startDate];
  [v32 timeIntervalSinceReferenceDate];
  v34 = v33;

  v35 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  v37 = [v35 compare:v36];

  return v37;
}

uint64_t __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) aggregationEventsFromEvent:v3];
  if ([v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) trackNewModeEvent:{*(*(&v13 + 1) + 8 * v9++), v13}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    v5 = v3;
    v11 = [v5 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [*(a1 + 32) trackNewNotificationEvent:v5];
    }
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

- (id)dateIntervalFromNotificationEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 eventBody];
      v8 = objc_alloc(MEMORY[0x277CCA970]);
      v9 = [v7 absoluteTimestamp];
      v10 = [v7 absoluteTimestamp];
      v11 = [v8 initWithStartDate:v9 endDate:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)trackNewNotificationEvent:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = [a3 eventBody];
  if ([v4 usageType] == 4)
  {
    v5 = [v4 contactIDs];

    if (v5)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v6 = [v4 contactIDs];
      v7 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v41;
        do
        {
          v10 = 0;
          do
          {
            if (*v41 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(NSCountedSet *)self->_globalCountOfNotificationsCleared addObject:*(*(&v40 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v40 objects:v47 count:16];
        }

        while (v8);
      }

      if ([(ATXContactNotificationEngagementEventProvider *)self notificationEventOccurredWhileInMode:v4 modeTransitionEvent:self->_mostRecentModeEvent])
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v11 = [v4 contactIDs];
        v12 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v37;
          do
          {
            v15 = 0;
            do
            {
              if (*v37 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [(NSCountedSet *)self->_modeCountOfNotificationsCleared addObject:*(*(&v36 + 1) + 8 * v15++)];
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v13);
        }
      }
    }
  }

  if ([v4 usageType] == 17 || objc_msgSend(v4, "usageType") == 18)
  {
    v16 = [v4 contactIDs];

    if (v16)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = [v4 contactIDs];
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v33;
        do
        {
          v21 = 0;
          do
          {
            if (*v33 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [(NSCountedSet *)self->_globalCountOfNotificationsReceived addObject:*(*(&v32 + 1) + 8 * v21++)];
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
        }

        while (v19);
      }

      if ([(ATXContactNotificationEngagementEventProvider *)self notificationEventOccurredWhileInMode:v4 modeTransitionEvent:self->_mostRecentModeEvent])
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v22 = [v4 contactIDs];
        v23 = [v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v29;
          do
          {
            v26 = 0;
            do
            {
              if (*v29 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [(NSCountedSet *)self->_modeCountOfNotificationsReceived addObject:*(*(&v28 + 1) + 8 * v26++)];
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
          }

          while (v24);
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)notificationEventOccurredWhileInMode:(id)a3 modeTransitionEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 absoluteTimestamp];
  [v7 timeIntervalSince1970];
  v9 = v8;
  v10 = [v6 startDate];
  [v10 timeIntervalSince1970];
  if (v9 <= v11)
  {
    v17 = 0;
  }

  else
  {
    v12 = [v5 absoluteTimestamp];
    [v12 timeIntervalSince1970];
    v14 = v13;
    v15 = [v6 endDate];
    [v15 timeIntervalSince1970];
    v17 = v14 < v16;
  }

  return v17;
}

- (unint64_t)globalCountOfNotificationsCleared
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_globalCountOfNotificationsCleared;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(NSCountedSet *)self->_globalCountOfNotificationsCleared countForObject:*(*(&v11 + 1) + 8 * i), v11];
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)modeCountOfNotificationsCleared
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_modeCountOfNotificationsCleared;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(NSCountedSet *)self->_modeCountOfNotificationsCleared countForObject:*(*(&v11 + 1) + 8 * i), v11];
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)localNotificationsClearedRateForContactId:(id)a3
{
  v4 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsClearedForContactId:a3];
  v5 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsCleared];
  result = 0.0;
  if (v4)
  {
    if (v5)
    {
      return v4 / v5;
    }
  }

  return result;
}

- (double)globalNotificationsClearedRateForContactId:(id)a3
{
  v4 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsClearedForContactId:a3];
  v5 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsCleared];
  result = 0.0;
  if (v4)
  {
    if (v5)
    {
      return v4 / v5;
    }
  }

  return result;
}

- (double)ratioOfLocalToGlobalNotificationsClearedRateForContactId:(id)a3
{
  v4 = a3;
  [(ATXContactNotificationEngagementEventProvider *)self localNotificationsClearedRateForContactId:v4];
  v6 = v5;
  [(ATXContactNotificationEngagementEventProvider *)self globalNotificationsClearedRateForContactId:v4];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (double)classConditionalOfNotificationsClearedForContactId:(id)a3
{
  v4 = a3;
  v5 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsClearedForContactId:v4];
  v6 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsClearedForContactId:v4];

  result = 0.0;
  if (v5)
  {
    if (v6)
    {
      return v5 / v6;
    }
  }

  return result;
}

- (unint64_t)globalCountOfNotificationsReceived
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_globalCountOfNotificationsReceived;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(NSCountedSet *)self->_globalCountOfNotificationsReceived countForObject:*(*(&v11 + 1) + 8 * i), v11];
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)modeCountOfNotificationsReceived
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_modeCountOfNotificationsReceived;
  v4 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(NSCountedSet *)self->_modeCountOfNotificationsReceived countForObject:*(*(&v11 + 1) + 8 * i), v11];
      }

      v5 = [(NSCountedSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)globalPopularityOfNotificationsReceivedForContactId:(id)a3
{
  v4 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsReceivedForContactId:a3];
  v5 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsReceived];
  result = 0.0;
  if (v4)
  {
    if (v5)
    {
      return v4 / v5;
    }
  }

  return result;
}

- (double)localPopularityOfNotificationsReceivedForContactId:(id)a3
{
  v4 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsReceivedForContactId:a3];
  v5 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsReceived];
  result = 0.0;
  if (v4)
  {
    if (v5)
    {
      return v4 / v5;
    }
  }

  return result;
}

- (double)ratioOfLocalToGlobalPopularityOfNotificationsReceivedForContactId:(id)a3
{
  v4 = a3;
  [(ATXContactNotificationEngagementEventProvider *)self localPopularityOfNotificationsReceivedForContactId:v4];
  v6 = v5;
  [(ATXContactNotificationEngagementEventProvider *)self globalPopularityOfNotificationsReceivedForContactId:v4];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (double)classConditionalOfNotificationsReceivedForContactId:(id)a3
{
  v4 = a3;
  v5 = [(ATXContactNotificationEngagementEventProvider *)self modeCountOfNotificationsReceivedForContactId:v4];
  v6 = [(ATXContactNotificationEngagementEventProvider *)self globalCountOfNotificationsReceivedForContactId:v4];

  result = 0.0;
  if (v5)
  {
    if (v6)
    {
      return v5 / v6;
    }
  }

  return result;
}

- (void)successfullyCalculatedNotificationEvents
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXContactNotificationEngagementEventProvider: Error from merged publishers: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __89__ATXContactNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXContactNotificationEngagementEventProvider: During ordered merge, encountered unknown event: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end