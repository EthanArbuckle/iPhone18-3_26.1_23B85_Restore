@interface ATXDailyRoutinesTriggerManager
+ (id)_wakeupDateForExitDate:(id)a3 fromDate:(id)a4;
+ (id)convenienceDateFormatter;
+ (id)sharedInstance;
- (ATXDailyRoutinesTriggerManager)initWithCacheBasedPredictor:(id)a3 transitionPredictor:(id)a4 contextStoreWriter:(id)a5;
- (NSDate)now;
- (id)currentTransition;
- (void)_scheduleOneShotJobAfterInterval:(double)a3;
- (void)updateWithActivity:(id)a3;
@end

@implementation ATXDailyRoutinesTriggerManager

+ (id)convenienceDateFormatter
{
  v2 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v3 = objc_opt_new();
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  [v3 setTimeZone:v2];

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_0 != -1)
  {
    +[ATXDailyRoutinesTriggerManager sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_0;

  return v3;
}

void __48__ATXDailyRoutinesTriggerManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D41BF8] sharedInstance];
  v2 = [[ATXPredictedTransitionsCache alloc] initWithLocationManager:v1];
  v3 = [[ATXCommutePredictor alloc] initWithTransitionsCache:v2 locationManager:v1];
  v4 = [[ATXTransitionPredictorCR alloc] initWithLocationManager:v1 locationPredictionsManager:v1];
  v5 = [MEMORY[0x277CFE318] userContext];
  v6 = [MEMORY[0x277CFE338] keyPathForPredictedLocationOfInterestTransitions];
  v7 = [[ATXContextStoreWriter alloc] initWithContext:v5 keyPath:v6];
  v8 = [[ATXDailyRoutinesTriggerManager alloc] initWithCacheBasedPredictor:v3 transitionPredictor:v4 contextStoreWriter:v7];

  v9 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v8;

  objc_autoreleasePoolPop(v0);
}

- (ATXDailyRoutinesTriggerManager)initWithCacheBasedPredictor:(id)a3 transitionPredictor:(id)a4 contextStoreWriter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ATXDailyRoutinesTriggerManager;
  v12 = [(ATXDailyRoutinesTriggerManager *)&v19 init];
  if (v12)
  {
    v13 = [objc_opt_class() convenienceDateFormatter];
    dateFormatter = v12->_dateFormatter;
    v12->_dateFormatter = v13;

    objc_storeStrong(&v12->_cachedPredictor, a3);
    objc_storeStrong(&v12->_transitionPredictor, a4);
    objc_storeStrong(&v12->_contextStoreWriter, a5);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.duetexpertd.ATXDailyRoutinesTriggerManager", v15);
    queue = v12->_queue;
    v12->_queue = v16;
  }

  return v12;
}

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (void)updateWithActivity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ATXDailyRoutinesTriggerManager_updateWithActivity___block_invoke;
  v7[3] = &unk_278596C10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __53__ATXDailyRoutinesTriggerManager_updateWithActivity___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) getNextTransitionOnActivity:*(a1 + 40)];
  if (([*(a1 + 40) didDefer] & 1) == 0)
  {
    if (v2)
    {
      [*(*(a1 + 32) + 16) prewarmOnActivity:*(a1 + 40)];
    }

    else
    {
      v3 = __atxlog_handle_dailyroutines();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "No predicted transition received. Attempting to load from cache", &v29, 2u);
      }

      v2 = [*(*(a1 + 32) + 16) getNextTransitionOnActivity:*(a1 + 40)];
    }

    if (([*(a1 + 40) didDefer] & 1) == 0)
    {
      v4 = [MEMORY[0x277CCAB98] defaultCenter];
      v5 = v4;
      v6 = *(a1 + 32);
      if (v2)
      {
        v31 = @"transition";
        v32[0] = v2;
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        [v5 postNotificationName:@"com.apple.duetexpertd.dailyroutines" object:v6 userInfo:v7];

        v8 = __atxlog_handle_dailyroutines();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 138412290;
          v30 = v2;
          _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Using the following transition: %@", &v29, 0xCu);
        }

        v9 = __atxlog_handle_dailyroutines();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(*(a1 + 32) + 8);
          v11 = [v2 date];
          v12 = [v10 stringFromDate:v11];
          v29 = 138412290;
          v30 = v12;
          _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Transition time: %@", &v29, 0xCu);
        }

        v13 = *(a1 + 32);
        v14 = v13[4];
        v15 = [v13 now];
        v16 = [v2 transitionArrayForDate:v15];
        v17 = [v14 setWithObject:v16];

        v18 = __atxlog_handle_dailyroutines();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 67109120;
          LODWORD(v30) = v17;
          _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Context store updated: %{BOOL}d", &v29, 8u);
        }

        v19 = *(a1 + 32);
        v20 = objc_opt_class();
        v21 = [v2 date];
        v22 = [*(a1 + 32) now];
        v23 = [v20 _wakeupDateForExitDate:v21 fromDate:v22];

        v24 = __atxlog_handle_dailyroutines();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (v25)
          {
            v26 = [*(*(a1 + 32) + 8) stringFromDate:v23];
            v29 = 138412290;
            v30 = v26;
            _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "Scheduling one shot job for %@", &v29, 0xCu);
          }

          v27 = *(a1 + 32);
          v24 = [v27 now];
          [v23 timeIntervalSinceDate:v24];
          [v27 _scheduleOneShotJobAfterInterval:?];
        }

        else if (v25)
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "Declined to schedule an trigger manager update", &v29, 2u);
        }
      }

      else
      {
        [v4 postNotificationName:@"com.apple.duetexpertd.dailyroutines" object:*(a1 + 32)];

        v23 = __atxlog_handle_dailyroutines();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "No transition found", &v29, 2u);
        }

        v2 = 0;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)currentTransition
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__ATXDailyRoutinesTriggerManager_currentTransition__block_invoke;
  v5[3] = &unk_278596C38;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__ATXDailyRoutinesTriggerManager_currentTransition__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) getNextTransitionOnActivity:0];
  if (!v2)
  {
    v3 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "No predicted transition received. Attempting to load from cache", v6, 2u);
    }

    v2 = [*(*(a1 + 32) + 16) getNextTransitionOnActivity:0];
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;
}

+ (id)_wakeupDateForExitDate:(id)a3 fromDate:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[_ATXGlobals sharedInstance];
  v8 = [v7 triggerPresetMinutes];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__ATXDailyRoutinesTriggerManager__wakeupDateForExitDate_fromDate___block_invoke;
  v24[3] = &unk_278596C60;
  v9 = v5;
  v25 = v9;
  v10 = [v8 _pas_mappedArrayWithTransform:v24];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v13)
  {
    v14 = *v21;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        [v16 timeIntervalSinceDate:{v6, v20}];
        if (v17 > 0.0)
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __66__ATXDailyRoutinesTriggerManager__wakeupDateForExitDate_fromDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = -[a2 intValue] * 60.0;

  return [v2 dateByAddingTimeInterval:v3];
}

- (void)_scheduleOneShotJobAfterInterval:(double)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 >= 120.0)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], a3);
    xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);
    xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__ATXDailyRoutinesTriggerManager__scheduleOneShotJobAfterInterval___block_invoke;
    v7[3] = &unk_278596790;
    v7[4] = self;
    atxRegisterCTSJobHandlerForNonClassCLocked("com.apple.duetexpertd.dailyroutines-trigger", v4, v7);
  }

  else
  {
    v4 = __atxlog_handle_dailyroutines();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = a3;
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Interval %f too soon, not scheduling one shot update", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __67__ATXDailyRoutinesTriggerManager__scheduleOneShotJobAfterInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_dailyroutines();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Running Daily Routines one-shot job...", v5, 2u);
  }

  [*(a1 + 32) updateWithActivity:v3];
}

@end