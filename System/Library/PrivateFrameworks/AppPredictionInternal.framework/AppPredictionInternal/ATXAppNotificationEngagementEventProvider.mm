@interface ATXAppNotificationEngagementEventProvider
- (ATXAppNotificationEngagementEventProvider)initWithModeEventProvider:(id)a3;
- (BOOL)notificationEventOccurredWhileInMode:(id)a3 modeTransitionEvent:(id)a4;
- (BOOL)successfullyCalculatedNotificationEvents;
- (double)classConditionalOfNotificationsClearedForBundleId:(id)a3;
- (double)classConditionalOfNotificationsReceivedForBundleId:(id)a3;
- (double)globalNotificationsClearedRateForBundleId:(id)a3;
- (double)globalPopularityOfNotificationsReceivedForBundleId:(id)a3;
- (double)localNotificationsClearedRateForBundleId:(id)a3;
- (double)localPopularityOfNotificationsReceivedForBundleId:(id)a3;
- (double)ratioOfLocalToGlobalNotificationsClearedRateForBundleId:(id)a3;
- (double)ratioOfLocalToGlobalPopularityOfNotificationsReceivedForBundleId:(id)a3;
- (id)dateIntervalFromNotificationEvent:(id)a3;
- (unint64_t)globalCountOfNotificationsCleared;
- (unint64_t)globalCountOfNotificationsReceived;
- (unint64_t)modeCountOfNotificationsCleared;
- (unint64_t)modeCountOfNotificationsReceived;
- (void)successfullyCalculatedNotificationEvents;
- (void)trackNewNotificationEvent:(id)a3 forInstalledApps:(id)a4;
@end

@implementation ATXAppNotificationEngagementEventProvider

- (ATXAppNotificationEngagementEventProvider)initWithModeEventProvider:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = ATXAppNotificationEngagementEventProvider;
  v6 = [(ATXAppNotificationEngagementEventProvider *)&v17 init];
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
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = +[_ATXAppIconState sharedInstance];
  v5 = [v4 allInstalledAppsKnownToSpringBoard];
  v6 = [v3 initWithArray:v5];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v8 = BiomeLibrary();
  v9 = [v8 Notification];
  v10 = [v9 Usage];

  v11 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v7 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v12 = [v10 publisherWithUseCase:*MEMORY[0x277CEBB48] options:v11];
  v13 = [(ATXModeEntityEventProviderProtocol *)self->_modeEventProvider biomePublisherWithBookmark:0];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke;
  v32[3] = &unk_278597CB8;
  v32[4] = self;
  v14 = [v13 orderedMergeWithOther:v12 comparator:v32];

  v29 = 0;
  v30[0] = &v29;
  v30[1] = 0x3032000000;
  v30[2] = __Block_byref_object_copy__19;
  v30[3] = __Block_byref_object_dispose__19;
  v31 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_22;
  v28[3] = &unk_278597540;
  v28[4] = &v29;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_2;
  v26[3] = &unk_278598CE8;
  v26[4] = self;
  v15 = v6;
  v27 = v15;
  v16 = [v14 sinkWithCompletion:v28 receiveInput:v26];
  v17 = *(v30[0] + 40);
  if (v17)
  {
    v18 = __atxlog_handle_modes();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppNotificationEngagementEventProvider *)v30 successfullyCalculatedNotificationEvents:v18];
    }
  }

  _Block_object_dispose(&v29, 8);
  return v17 == 0;
}

uint64_t __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke(uint64_t a1, void *a2, void *a3)
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
    __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(v5, v15, v16, v17, v18, v19, v20, v21);
  }

  if (!v14)
  {
LABEL_13:
    v22 = __atxlog_handle_modes();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(v6, v22, v23, v24, v25, v26, v27, v28);
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

uint64_t __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_22(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_2(uint64_t a1, void *a2)
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
      [*(a1 + 32) trackNewNotificationEvent:v5 forInstalledApps:*(a1 + 40)];
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

- (void)trackNewNotificationEvent:(id)a3 forInstalledApps:(id)a4
{
  v6 = a4;
  v17 = [a3 eventBody];
  v7 = [v17 bundleID];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    if ([v17 usageType] == 4)
    {
      globalCountOfNotificationsCleared = self->_globalCountOfNotificationsCleared;
      v10 = [v17 bundleID];
      [(NSCountedSet *)globalCountOfNotificationsCleared addObject:v10];

      if ([(ATXAppNotificationEngagementEventProvider *)self notificationEventOccurredWhileInMode:v17 modeTransitionEvent:self->_mostRecentModeEvent])
      {
        modeCountOfNotificationsCleared = self->_modeCountOfNotificationsCleared;
        v12 = [v17 bundleID];
        [(NSCountedSet *)modeCountOfNotificationsCleared addObject:v12];
      }
    }

    if ([v17 usageType] == 17 || objc_msgSend(v17, "usageType") == 18)
    {
      globalCountOfNotificationsReceived = self->_globalCountOfNotificationsReceived;
      v14 = [v17 bundleID];
      [(NSCountedSet *)globalCountOfNotificationsReceived addObject:v14];

      if ([(ATXAppNotificationEngagementEventProvider *)self notificationEventOccurredWhileInMode:v17 modeTransitionEvent:self->_mostRecentModeEvent])
      {
        modeCountOfNotificationsReceived = self->_modeCountOfNotificationsReceived;
        v16 = [v17 bundleID];
        [(NSCountedSet *)modeCountOfNotificationsReceived addObject:v16];
      }
    }
  }
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

- (double)localNotificationsClearedRateForBundleId:(id)a3
{
  v4 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsClearedForBundleId:a3];
  v5 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsCleared];
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

- (double)globalNotificationsClearedRateForBundleId:(id)a3
{
  v4 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsClearedForBundleId:a3];
  v5 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsCleared];
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

- (double)ratioOfLocalToGlobalNotificationsClearedRateForBundleId:(id)a3
{
  v4 = a3;
  [(ATXAppNotificationEngagementEventProvider *)self localNotificationsClearedRateForBundleId:v4];
  v6 = v5;
  [(ATXAppNotificationEngagementEventProvider *)self globalNotificationsClearedRateForBundleId:v4];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (double)classConditionalOfNotificationsClearedForBundleId:(id)a3
{
  v4 = a3;
  v5 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsClearedForBundleId:v4];
  v6 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsClearedForBundleId:v4];

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

- (double)globalPopularityOfNotificationsReceivedForBundleId:(id)a3
{
  v4 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsReceivedForBundleId:a3];
  v5 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsReceived];
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

- (double)localPopularityOfNotificationsReceivedForBundleId:(id)a3
{
  v4 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsReceivedForBundleId:a3];
  v5 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsReceived];
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

- (double)ratioOfLocalToGlobalPopularityOfNotificationsReceivedForBundleId:(id)a3
{
  v4 = a3;
  [(ATXAppNotificationEngagementEventProvider *)self localPopularityOfNotificationsReceivedForBundleId:v4];
  v6 = v5;
  [(ATXAppNotificationEngagementEventProvider *)self globalPopularityOfNotificationsReceivedForBundleId:v4];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (double)classConditionalOfNotificationsReceivedForBundleId:(id)a3
{
  v4 = a3;
  v5 = [(ATXAppNotificationEngagementEventProvider *)self modeCountOfNotificationsReceivedForBundleId:v4];
  v6 = [(ATXAppNotificationEngagementEventProvider *)self globalCountOfNotificationsReceivedForBundleId:v4];

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
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppNotificationEngagementEventProvider: Error from merged publishers: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __85__ATXAppNotificationEngagementEventProvider_successfullyCalculatedNotificationEvents__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppNotificationEngagementEventProvider: During ordered merge, encountered unknown event: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end