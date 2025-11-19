@interface ATXUserEducationSuggestionFocusModeSetupTrigger
+ (id)sharedInstance;
- (ATXUserEducationSuggestionFocusModeSetupTrigger)init;
- (BOOL)modeHasPassedPastInferenceTest:(unint64_t)a3;
- (BOOL)modeIsEligibleForSetupPrediction:(unint64_t)a3;
- (void)processNewInferredModeEvent:(id)a3;
- (void)registerObserver:(id)a3;
- (void)resetUserDefaultsIfNecessaryForDNDSemanticType:(int64_t)a3;
- (void)resetUserDefaultsIfNecessaryForMode:(unint64_t)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation ATXUserEducationSuggestionFocusModeSetupTrigger

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ATXUserEducationSuggestionFocusModeSetupTrigger_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken7_34 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_34, block);
  }

  v2 = sharedInstance__pasExprOnceResult_42;

  return v2;
}

void __65__ATXUserEducationSuggestionFocusModeSetupTrigger_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_42;
  sharedInstance__pasExprOnceResult_42 = v4;

  objc_autoreleasePoolPop(v2);
}

- (ATXUserEducationSuggestionFocusModeSetupTrigger)init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = ATXUserEducationSuggestionFocusModeSetupTrigger;
  v2 = [(ATXUserEducationSuggestionFocusModeSetupTrigger *)&v22 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.ATXUserEducationSuggestionFocusModeSetupTrigger.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[ATXUserEducationSuggestionFocusModeSetupTrigger init]";
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Registering for real time inferred mode change events", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"FocusModes.ATXUserEducationSuggestionFocusModeSetupServer" targetQueue:v2->_queue];
    inferredModeScheduler = v2->_inferredModeScheduler;
    v2->_inferredModeScheduler = v9;

    objc_initWeak(buf, v2);
    v11 = BiomeLibrary();
    v12 = [v11 UserFocus];
    v13 = [v12 InferredMode];

    v14 = [v13 atx_DSLPublisher];
    v15 = [v14 subscribeOn:v2->_inferredModeScheduler];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__ATXUserEducationSuggestionFocusModeSetupTrigger_init__block_invoke_23;
    v20[3] = &unk_2785977D8;
    objc_copyWeak(&v21, buf);
    v16 = [v15 sinkWithCompletion:&__block_literal_global_195 receiveInput:v20];
    inferredModeStreamSink = v2->_inferredModeStreamSink;
    v2->_inferredModeStreamSink = v16;

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

void __55__ATXUserEducationSuggestionFocusModeSetupTrigger_init__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_context_user_education_suggestions();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__ATXUserEducationSuggestionFocusModeSetupTrigger_init__block_invoke_cold_1(v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ATXUserEducationSuggestionFocusModeSetupTrigger init]_block_invoke";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: ATXUserEducationSuggestionFocusModeSetupTrigger: Successfully completed listening to inferred mode change events for FocusModeSetupTrigger", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __55__ATXUserEducationSuggestionFocusModeSetupTrigger_init__block_invoke_23(uint64_t a1, void *a2)
{
  v10 = [a2 eventBody];
  if ([v10 modeType] != 2)
  {
    if ([v10 modeType])
    {
      if ([v10 isStart])
      {
        [v10 modeType];
        BMUserFocusInferredModeTypeToActivity();
        v3 = ATXModeFromActivityType();
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v5 = [WeakRetained modeIsEligibleForSetupPrediction:v3];

        if (v5)
        {
          v6 = objc_loadWeakRetained((a1 + 32));
          v7 = [v6 modeHasPassedPastInferenceTest:v3];

          if (v7)
          {
            v8 = objc_loadWeakRetained((a1 + 32));
            [v8 resetUserDefaultsIfNecessaryForMode:v3];

            v9 = objc_loadWeakRetained((a1 + 32));
            [v9 processNewInferredModeEvent:v10];
          }
        }
      }
    }
  }
}

- (BOOL)modeIsEligibleForSetupPrediction:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = allModesForModeSetupPrediction();
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * i) unsignedIntegerValue] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)modeHasPassedPastInferenceTest:(unint64_t)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__90;
  v20[4] = __Block_byref_object_dispose__90;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__90;
  v18[4] = __Block_byref_object_dispose__90;
  v19 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__90;
  v16[3] = __Block_byref_object_dispose__90;
  v17 = 0;
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v5 = BiomeLibrary();
  v6 = [v5 UserFocus];
  v7 = [v6 InferredMode];

  v8 = [v7 atx_publisherWithStartDate:v4 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__ATXUserEducationSuggestionFocusModeSetupTrigger_modeHasPassedPastInferenceTest___block_invoke;
  v14[3] = &unk_278597540;
  v14[4] = &v15;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__ATXUserEducationSuggestionFocusModeSetupTrigger_modeHasPassedPastInferenceTest___block_invoke_2;
  v13[3] = &unk_2785A01E0;
  v13[4] = v20;
  v13[5] = v18;
  v13[6] = &v22;
  v13[7] = a3;
  v9 = [v8 sinkWithCompletion:v14 receiveInput:v13];
  if (*(v16[0] + 40))
  {
    v10 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ATXUserEducationSuggestionFocusModeSetupTrigger *)v16 modeHasPassedPastInferenceTest:v10];
    }
  }

  v11 = v23[3] != 0;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v18, 8);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
  return v11;
}

uint64_t __82__ATXUserEducationSuggestionFocusModeSetupTrigger_modeHasPassedPastInferenceTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __82__ATXUserEducationSuggestionFocusModeSetupTrigger_modeHasPassedPastInferenceTest___block_invoke_2(void *a1, void *a2)
{
  obj = [a2 eventBody];
  if ([obj modeType] != 2)
  {
    if ([obj modeType])
    {
      [obj modeType];
      BMUserFocusInferredModeTypeToActivity();
      if (ATXModeFromActivityType() == a1[7])
      {
        if (*(*(a1[4] + 8) + 40))
        {
          if ([obj isStart])
          {
            objc_storeStrong((*(a1[4] + 8) + 40), obj);
            v3 = [obj absoluteTimestamp];
            v4 = *(a1[5] + 8);
            v5 = *(v4 + 40);
            *(v4 + 40) = v3;
          }

          else if (([obj isStart] & 1) == 0)
          {
            v6 = *(*(a1[5] + 8) + 40);
            v7 = [obj absoluteTimestamp];
            [v6 timeIntervalSinceDate:v7];
            v9 = fabs(v8);

            if (v9 >= 3600.0)
            {
              ++*(*(a1[6] + 8) + 24);
            }
          }
        }
      }
    }
  }
}

- (void)processNewInferredModeEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_observers;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) processNewInferredModeEvent:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)unregisterObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)resetUserDefaultsIfNecessaryForMode:(unint64_t)a3
{
  v7 = [MEMORY[0x277CEB440] sharedInstance];
  v5 = [v7 dndSemanticTypeForATXMode:a3];
  v6 = [v5 integerValue];

  [(ATXUserEducationSuggestionFocusModeSetupTrigger *)self resetUserDefaultsIfNecessaryForDNDSemanticType:v6];
}

- (void)resetUserDefaultsIfNecessaryForDNDSemanticType:(int64_t)a3
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v17 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = MEMORY[0x277CCACA8];
  v5 = DNDModeSemanticTypeToString();
  v6 = [v4 stringWithFormat:@"%@.%@.%@", @"DiscoverySuggestions.FocusModeSetup", v5, @"MajorOSVersion"];

  v7 = MEMORY[0x277CCACA8];
  v8 = DNDModeSemanticTypeToString();
  v9 = [v7 stringWithFormat:@"%@.%@.%@", @"DiscoverySuggestions.FocusModeSetup", v8, @"MinorOSVersion"];

  v10 = MEMORY[0x277CCACA8];
  v11 = DNDModeSemanticTypeToString();
  v12 = [v10 stringWithFormat:@"%@.%@.%@", @"DiscoverySuggestions.State", @"FocusModeSetup", v11];

  v13 = [v17 integerForKey:*MEMORY[0x277CEBD48]];
  v14 = [v17 integerForKey:*MEMORY[0x277CEBD58]];
  v15 = [v17 integerForKey:v6];
  v16 = [v17 integerForKey:v9];
  if (v13 > v15 || v14 > v16)
  {
    [v17 removeObjectForKey:v12];
  }
}

void __55__ATXUserEducationSuggestionFocusModeSetupTrigger_init__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 136315394;
  v6 = "[ATXUserEducationSuggestionFocusModeSetupTrigger init]_block_invoke";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: ATXUserEducationSuggestionFocusModeSetupTrigger: Error listening to inferred mode change events: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)modeHasPassedPastInferenceTest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXUserEducationSuggestionFocusModeSetupTrigger: Could not fetch inferred mode stream with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end