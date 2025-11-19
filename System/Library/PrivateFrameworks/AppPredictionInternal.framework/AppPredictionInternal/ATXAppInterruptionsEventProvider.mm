@interface ATXAppInterruptionsEventProvider
- (ATXAppInterruptionsEventProvider)initWithModeEventProvider:(id)a3;
- (BOOL)appLaunchEventOccurredWhileInMode:(id)a3 modeTransitionEvent:(id)a4;
- (BOOL)notificationEventOccurredWhileInMode:(id)a3 modeTransitionEvent:(id)a4;
- (BOOL)successfullyCalculatedAppSessionInterruptions:(id)a3;
- (double)globalPopularityOfInterruptingEntity:(id)a3;
- (double)modeAppInterruptionsClassConditionalProbabilityByEntity:(id)a3;
- (double)modePopularityOfInterruptingEntity:(id)a3;
- (double)ratioOfModePopularityToGlobalPopularityOfInterruptingEntity:(id)a3;
- (id)dateIntervalFromAppLaunchEvent:(id)a3;
- (id)dateIntervalFromNotificationEvent:(id)a3;
- (unint64_t)globalAppInterruptionsCountByEntity:(id)a3;
- (unint64_t)modeAppInterruptionsCountByEntity:(id)a3;
- (void)trackAppSessionInterruption:(id)a3;
@end

@implementation ATXAppInterruptionsEventProvider

- (ATXAppInterruptionsEventProvider)initWithModeEventProvider:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ATXAppInterruptionsEventProvider;
  v6 = [(ATXAppInterruptionsEventProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modeEventProvider, a3);
    v8 = objc_opt_new();
    globalInterruptedAppSessionsAccumulator = v7->_globalInterruptedAppSessionsAccumulator;
    v7->_globalInterruptedAppSessionsAccumulator = v8;

    v10 = objc_opt_new();
    modeInterruptedAppSessionsAccumulator = v7->_modeInterruptedAppSessionsAccumulator;
    v7->_modeInterruptedAppSessionsAccumulator = v10;
  }

  return v7;
}

- (BOOL)successfullyCalculatedAppSessionInterruptions:(id)a3
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1209600.0];
  v6 = objc_opt_new();
  v7 = [v6 appLaunchesSinceDate:v5];

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v5 timeIntervalSinceReferenceDate];
  v10 = [v9 publisherFromStartTime:?];
  v11 = [v8 stripStoreEvent:v10];

  v12 = [(ATXModeEntityEventProviderProtocol *)self->_modeEventProvider biomePublisherWithBookmark:0];
  v35[0] = v11;
  v35[1] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke;
  v34[3] = &unk_278597CB8;
  v34[4] = self;
  v14 = [v12 orderedMergeWithOthers:v13 comparator:v34];

  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__91;
  v32[3] = __Block_byref_object_dispose__91;
  v33 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_22;
  v30[3] = &unk_278597540;
  v30[4] = &v31;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_2;
  v27[3] = &unk_27859EF38;
  v15 = v4;
  v28 = v15;
  v29 = self;
  v16 = [v14 sinkWithCompletion:v30 shouldContinue:v27];
  v17 = *(v32[0] + 40);
  if (v17)
  {
    v18 = __atxlog_handle_modes();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppInterruptionsEventProvider *)v32 successfullyCalculatedAppSessionInterruptions:v18, v19, v20, v21, v22, v23, v24];
    }
  }

  _Block_object_dispose(&v31, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v17 == 0;
}

uint64_t __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v10 = [*(a1 + 32) dateIntervalFromNotificationEvent:v5];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [*(a1 + 32) dateIntervalFromAppLaunchEvent:v5];
    }

    v9 = v12;
  }

  v13 = [*(*(a1 + 32) + 8) dateIntervalFromEvent:v6];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [*(a1 + 32) dateIntervalFromNotificationEvent:v6];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [*(a1 + 32) dateIntervalFromAppLaunchEvent:v6];
    }

    v15 = v18;
  }

  if (v9)
  {
    if (v15)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v19 = __atxlog_handle_modes();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_cold_1(v5, v19, v20, v21, v22, v23, v24, v25);
  }

  if (!v15)
  {
LABEL_19:
    v26 = __atxlog_handle_modes();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_cold_1(v6, v26, v27, v28, v29, v30, v31, v32);
    }
  }

LABEL_22:
  v33 = [v9 startDate];
  [v33 timeIntervalSinceReferenceDate];
  v35 = v34;

  v36 = [v15 startDate];
  [v36 timeIntervalSinceReferenceDate];
  v38 = v37;

  v39 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  v41 = [v39 compare:v40];

  return v41;
}

uint64_t __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

uint64_t __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) didDefer];
  if (v4)
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_2_cold_1(v5);
    }
  }

  else
  {
    v5 = [*(*(a1 + 40) + 8) aggregationEventsFromEvent:v3];
    if ([v5 count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = v5;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(a1 + 40) trackNewModeEvent:{*(*(&v12 + 1) + 8 * i), v12}];
          }

          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [*(a1 + 40) trackAppSessionInterruption:v3];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

- (id)dateIntervalFromNotificationEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    v6 = [v4 alloc];
    [v5 timestamp];
    v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
    v8 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v5 timestamp];
    v10 = v9;

    v11 = [v8 initWithTimeIntervalSinceReferenceDate:v10];
    v12 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)dateIntervalFromAppLaunchEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CCA970];
    v5 = v3;
    v6 = [v4 alloc];
    v7 = [v5 appSessionStartTime];
    v8 = [v5 appSessionStartTime];

    v9 = [v6 initWithStartDate:v7 endDate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)trackAppSessionInterruption:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ATXInterruptedAppSessionAccumulator *)self->_globalInterruptedAppSessionsAccumulator handleNotificationEvent:v8];
    if ([(ATXAppInterruptionsEventProvider *)self notificationEventOccurredWhileInMode:v8 modeTransitionEvent:self->_mostRecentModeEvent])
    {
      [(ATXInterruptedAppSessionAccumulator *)self->_modeInterruptedAppSessionsAccumulator handleNotificationEvent:v8];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      globalInterruptedAppSessionsAccumulator = self->_globalInterruptedAppSessionsAccumulator;
      v5 = objc_opt_new();
      [(ATXInterruptedAppSessionAccumulator *)globalInterruptedAppSessionsAccumulator handleNextAppLaunch:v8 dimensionSet:v5];

      if ([(ATXAppInterruptionsEventProvider *)self appLaunchEventOccurredWhileInMode:v8 modeTransitionEvent:self->_mostRecentModeEvent])
      {
        modeInterruptedAppSessionsAccumulator = self->_modeInterruptedAppSessionsAccumulator;
        v7 = objc_opt_new();
        [(ATXInterruptedAppSessionAccumulator *)modeInterruptedAppSessionsAccumulator handleNextAppLaunch:v8 dimensionSet:v7];
      }
    }
  }
}

- (BOOL)notificationEventOccurredWhileInMode:(id)a3 modeTransitionEvent:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 alloc];
  [v7 timestamp];
  v10 = v9;

  v11 = [v8 initWithTimeIntervalSinceReferenceDate:v10];
  [v11 timeIntervalSince1970];
  v13 = v12;
  v14 = [v5 startDate];
  [v14 timeIntervalSince1970];
  if (v13 <= v15)
  {
    v20 = 0;
  }

  else
  {
    [v11 timeIntervalSince1970];
    v17 = v16;
    v18 = [v5 endDate];
    [v18 timeIntervalSince1970];
    v20 = v17 < v19;
  }

  return v20;
}

- (BOOL)appLaunchEventOccurredWhileInMode:(id)a3 modeTransitionEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 appSessionStartTime];
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
    v12 = [v5 appSessionStartTime];
    [v12 timeIntervalSince1970];
    v14 = v13;
    v15 = [v6 endDate];
    [v15 timeIntervalSince1970];
    v17 = v14 < v16;
  }

  return v17;
}

- (unint64_t)globalAppInterruptionsCountByEntity:(id)a3
{
  globalInterruptedAppSessionsAccumulator = self->_globalInterruptedAppSessionsAccumulator;
  v4 = a3;
  v5 = [(ATXInterruptedAppSessionAccumulator *)globalInterruptedAppSessionsAccumulator countedSetContainingInterruptingAppBundleIds];
  v6 = [v5 countForObject:v4];

  return v6;
}

- (unint64_t)modeAppInterruptionsCountByEntity:(id)a3
{
  modeInterruptedAppSessionsAccumulator = self->_modeInterruptedAppSessionsAccumulator;
  v4 = a3;
  v5 = [(ATXInterruptedAppSessionAccumulator *)modeInterruptedAppSessionsAccumulator countedSetContainingInterruptingAppBundleIds];
  v6 = [v5 countForObject:v4];

  return v6;
}

- (double)globalPopularityOfInterruptingEntity:(id)a3
{
  v4 = [(ATXAppInterruptionsEventProvider *)self globalAppInterruptionsCountByEntity:a3];
  v5 = [(ATXInterruptedAppSessionAccumulator *)self->_globalInterruptedAppSessionsAccumulator numberOfInterruptingAppSessions];
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

- (double)modePopularityOfInterruptingEntity:(id)a3
{
  v4 = [(ATXAppInterruptionsEventProvider *)self modeAppInterruptionsCountByEntity:a3];
  v5 = [(ATXInterruptedAppSessionAccumulator *)self->_modeInterruptedAppSessionsAccumulator numberOfInterruptingAppSessions];
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

- (double)modeAppInterruptionsClassConditionalProbabilityByEntity:(id)a3
{
  v4 = a3;
  v5 = [(ATXAppInterruptionsEventProvider *)self globalAppInterruptionsCountByEntity:v4];
  v6 = [(ATXAppInterruptionsEventProvider *)self modeAppInterruptionsCountByEntity:v4];

  result = 0.0;
  if (v6)
  {
    if (v5)
    {
      return v6 / v5;
    }
  }

  return result;
}

- (double)ratioOfModePopularityToGlobalPopularityOfInterruptingEntity:(id)a3
{
  v4 = a3;
  [(ATXAppInterruptionsEventProvider *)self modePopularityOfInterruptingEntity:v4];
  v6 = v5;
  [(ATXAppInterruptionsEventProvider *)self globalPopularityOfInterruptingEntity:v4];
  v8 = v7;

  result = 0.0;
  if (v8 != 0.0 && v6 != 0.0)
  {
    return v6 / v8;
  }

  return result;
}

- (void)successfullyCalculatedAppSessionInterruptions:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppInterruptionsEventProvider: Error from merged publishers: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __82__ATXAppInterruptionsEventProvider_successfullyCalculatedAppSessionInterruptions___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2263AA000, a2, a3, "ATXAppInterruptionsEventProvider: During ordered merge, encountered unknown event: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end