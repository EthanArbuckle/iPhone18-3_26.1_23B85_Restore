@interface ATXUserEducationSuggestionModeChangeNotifier
+ (id)sharedInstance;
- (ATXUserEducationSuggestionModeChangeNotifier)init;
- (void)processModeChangeEvent:(id)event;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation ATXUserEducationSuggestionModeChangeNotifier

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ATXUserEducationSuggestionModeChangeNotifier_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7_2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_2, block);
  }

  v2 = sharedInstance__pasExprOnceResult_2;

  return v2;
}

void __62__ATXUserEducationSuggestionModeChangeNotifier_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_2;
  sharedInstance__pasExprOnceResult_2 = v4;

  objc_autoreleasePoolPop(v2);
}

- (ATXUserEducationSuggestionModeChangeNotifier)init
{
  v33 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = ATXUserEducationSuggestionModeChangeNotifier;
  v2 = [(ATXUserEducationSuggestionModeChangeNotifier *)&v29 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    observers = v2->_observers;
    v2->_observers = v3;

    if (!v2->_queue)
    {
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_create("com.apple.ATXUserEducationSuggestionServer.queue", v5);
      queue = v2->_queue;
      v2->_queue = v6;
    }

    v8 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[ATXUserEducationSuggestionModeChangeNotifier init]";
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: registering for real time mode change events", &buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"FocusModes.ATXUserEducationSuggestionServer" targetQueue:v2->_queue];
    scheduler = v2->_scheduler;
    v2->_scheduler = v9;

    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x2020000000;
    v32 = 0;
    v11 = BiomeLibrary();
    userFocus = [v11 UserFocus];
    computedMode = [userFocus ComputedMode];
    v14 = [computedMode atx_publisherWithStartTime:0 endTime:0 maxEvents:&unk_283A552B0 lastN:&unk_283A552B0 reversed:0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_18;
    v28[3] = &unk_278597BA8;
    v28[4] = &buf;
    v15 = [v14 sinkWithCompletion:&__block_literal_global_17 receiveInput:v28];

    objc_initWeak(&location, v2);
    v16 = BiomeLibrary();
    userFocus2 = [v16 UserFocus];
    computedMode2 = [userFocus2 ComputedMode];
    atx_DSLPublisher = [computedMode2 atx_DSLPublisher];
    v20 = [atx_DSLPublisher subscribeOn:v2->_scheduler];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_22;
    v25[3] = &unk_278597BD0;
    v25[4] = &buf;
    objc_copyWeak(&v26, &location);
    v21 = [v20 sinkWithCompletion:&__block_literal_global_21 receiveInput:v25];
    sink = v2->_sink;
    v2->_sink = v21;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v2;
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    v3 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_cold_1(v2);
    }
  }
}

uint64_t __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_18(uint64_t a1, void *a2)
{
  result = [a2 timestamp];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_2(uint64_t a1, void *a2)
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
      __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_2_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ATXUserEducationSuggestionModeChangeNotifier init]_block_invoke_2";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: done listening to mode change events", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_22(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 timestamp];
  if (v4 >= *(*(*(a1 + 32) + 8) + 24))
  {
    v13 = [v3 eventBody];

    if (v13)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v14 = [v3 eventBody];
      [WeakRetained processModeChangeEvent:v14];
    }

    else
    {
      WeakRetained = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
      {
        __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_22_cold_1();
      }
    }
  }

  else
  {
    WeakRetained = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 eventBody];
      v7 = MEMORY[0x277CBEAA8];
      [v3 timestamp];
      v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
      [v3 timestamp];
      v10 = v9;
      v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(*(*(a1 + 32) + 8) + 24)];
      v12 = *(*(*(a1 + 32) + 8) + 24);
      v16 = 136316418;
      v17 = "[ATXUserEducationSuggestionModeChangeNotifier init]_block_invoke";
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v8;
      v22 = 2048;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      v26 = 2048;
      v27 = v12;
      _os_log_impl(&dword_2263AA000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s: Ignoring stale mode switch event: %{public}@ because it occurred on %{public}@ (%f), which was before the latest event in the stream at %{public}@ (%f)", &v16, 0x3Eu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)processModeChangeEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
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

        [*(*(&v11 + 1) + 8 * v9++) processModeChangeEvent:{eventCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  objc_sync_exit(v4);
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  objc_sync_exit(v4);
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%s: error fetching mode change events from biome %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_2_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%s: error listening to mode change events: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__ATXUserEducationSuggestionModeChangeNotifier_init__block_invoke_22_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_13();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%s: not notifying observers of mode change event because the biome event had no eventBody: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end