@interface ATXHeuristicResultCache
+ (ATXHeuristicResultCache)sharedInstance;
+ (id)sharedPassLibrary;
- (ATXHeuristicResultCache)init;
- (BOOL)isFocusModeActiveWithError:(id *)a3;
- (id)_internExpirerLocked:(id)a3;
- (id)firstExpirationDate;
- (id)heuristicsCached;
- (id)objectForKey:(id)a3 found:(BOOL *)a4;
- (unint64_t)count;
- (void)_expire:(id)a3 postNotification:(BOOL)a4;
- (void)_handleFocusStateUpdate:(id)a3;
- (void)_observeUserFocusChanges;
- (void)dealloc;
- (void)expireAll;
- (void)setObject:(id)a3 expirers:(id)a4 forKey:(id)a5;
@end

@implementation ATXHeuristicResultCache

uint64_t __31__ATXHeuristicResultCache_init__block_invoke_194(uint64_t a1)
{
  v2 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __31__ATXHeuristicResultCache_init__block_invoke_194_cold_1();
  }

  return [*(a1 + 32) expireAll];
}

- (void)expireAll
{
  v3 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "Expiring all heuristics", v7, 2u);
  }

  pthread_mutex_lock(&self->_lock);
  v4 = objc_opt_new();
  cache = self->_cache;
  self->_cache = v4;

  pthread_mutex_unlock(&self->_lock);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"com.apple.duetexpertd.heuristic.cache-expired" object:self];
}

+ (ATXHeuristicResultCache)sharedInstance
{
  if (sharedInstance__pasOnceToken12 != -1)
  {
    +[ATXHeuristicResultCache sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_0;

  return v3;
}

void __41__ATXHeuristicResultCache_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXHeuristicResultCache)init
{
  v24.receiver = self;
  v24.super_class = ATXHeuristicResultCache;
  v2 = [(ATXHeuristicResultCache *)&v24 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    expirerInternTable = v2->_expirerInternTable;
    v2->_expirerInternTable = v5;

    pthread_mutex_init(&v2->_lock, 0);
    v7 = objc_opt_class();
    Name = class_getName(v7);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(Name, v9);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v10;

    v12 = v2->_notificationQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __31__ATXHeuristicResultCache_init__block_invoke;
    handler[3] = &unk_278C3D040;
    v13 = v2;
    v23 = v13;
    notify_register_dispatch("com.apple.duet.expertcenter.appRefresh", &v2->_appRefreshToken, v12, handler);
    v14 = v2->_notificationQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __31__ATXHeuristicResultCache_init__block_invoke_192;
    v20[3] = &unk_278C3D040;
    v15 = v13;
    v21 = v15;
    notify_register_dispatch("SignificantTimeChangeNotification", v13 + 31, v14, v20);
    v16 = v2->_notificationQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __31__ATXHeuristicResultCache_init__block_invoke_194;
    v18[3] = &unk_278C3D040;
    v19 = v15;
    notify_register_dispatch("com.apple.suggestions.settingsChanged", v15 + 32, v16, v18);
  }

  return v2;
}

uint64_t __31__ATXHeuristicResultCache_init__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __31__ATXHeuristicResultCache_init__block_invoke_cold_1();
  }

  return [*(a1 + 32) expireAll];
}

void __31__ATXHeuristicResultCache_init__block_invoke_192(uint64_t a1)
{
  v2 = arc4random_uniform(0xB4u);
  v3 = dispatch_time(0, (1000000000 * v2) | 1);
  v4 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__ATXHeuristicResultCache_init__block_invoke_2;
  block[3] = &unk_278C3CF40;
  v6 = *(a1 + 32);
  dispatch_after(v3, v4, block);
}

uint64_t __31__ATXHeuristicResultCache_init__block_invoke_2(uint64_t a1)
{
  v2 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __31__ATXHeuristicResultCache_init__block_invoke_2_cold_1();
  }

  return [*(a1 + 32) expireAll];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  notify_cancel(self->_appRefreshToken);
  notify_cancel(self->_significantTimeToken);
  notify_cancel(self->_learnRefreshToken);
  v3.receiver = self;
  v3.super_class = ATXHeuristicResultCache;
  [(ATXHeuristicResultCache *)&v3 dealloc];
}

- (void)_observeUserFocusChanges
{
  if (!self->_focusSink)
  {
    objc_initWeak(&location, self);
    v3 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"ATXHeuristicResultCache.UserFocus" targetQueue:self->_notificationQueue];
    focusScheduler = self->_focusScheduler;
    self->_focusScheduler = v3;

    v5 = BiomeLibrary();
    v6 = [v5 UserFocus];
    v7 = [v6 ComputedMode];
    v8 = [v7 atx_DSLPublisher];
    v9 = [v8 subscribeOn:self->_focusScheduler];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__ATXHeuristicResultCache__observeUserFocusChanges__block_invoke_202;
    v12[3] = &unk_278C3CFE0;
    objc_copyWeak(&v13, &location);
    v10 = [v9 sinkWithCompletion:&__block_literal_global_201 receiveInput:v12];
    focusSink = self->_focusSink;
    self->_focusSink = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __51__ATXHeuristicResultCache__observeUserFocusChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__ATXHeuristicResultCache__observeUserFocusChanges__block_invoke_cold_1(v2);
    }
  }
}

void __51__ATXHeuristicResultCache__observeUserFocusChanges__block_invoke_202(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 eventBody];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [v6 eventBody];
    [WeakRetained _handleFocusStateUpdate:v5];
  }
}

- (void)_handleFocusStateUpdate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_INFO, "Biome user focus computed mode stream received an update: %@", &v10, 0xCu);
  }

  pthread_mutex_lock(&self->_lock);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "starting")}];
  cachedIsFocusActiveState = self->_cachedIsFocusActiveState;
  self->_cachedIsFocusActiveState = v6;

  pthread_mutex_unlock(&self->_lock);
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"DNDStateChanged" object:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFocusModeActiveWithError:(id *)a3
{
  pthread_mutex_lock(&self->_lock);
  cachedIsFocusActiveState = self->_cachedIsFocusActiveState;
  if (!cachedIsFocusActiveState)
  {
    [(ATXHeuristicResultCache *)self _observeUserFocusChanges];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__6;
    v20 = __Block_byref_object_dispose__6;
    v21 = 0;
    v6 = BiomeLibrary();
    v7 = [v6 UserFocus];
    v8 = [v7 ComputedMode];
    v9 = [v8 atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_2850BA4B8 lastN:&unk_2850BA4B8 reversed:0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__ATXHeuristicResultCache_isFocusModeActiveWithError___block_invoke;
    v15[3] = &unk_278C3D068;
    v15[4] = &v16;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__ATXHeuristicResultCache_isFocusModeActiveWithError___block_invoke_205;
    v14[3] = &unk_278C3D090;
    v14[4] = self;
    v10 = [v9 sinkWithCompletion:v15 receiveInput:v14];

    v11 = v17[5];
    if (v11 && *a3)
    {
      *a3 = v11;
    }

    _Block_object_dispose(&v16, 8);

    cachedIsFocusActiveState = self->_cachedIsFocusActiveState;
  }

  v12 = [(NSNumber *)cachedIsFocusActiveState BOOLValue];
  pthread_mutex_unlock(&self->_lock);
  return v12;
}

void __54__ATXHeuristicResultCache_isFocusModeActiveWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__ATXHeuristicResultCache_isFocusModeActiveWithError___block_invoke_cold_1(v3);
    }

    v6 = [v3 error];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void __54__ATXHeuristicResultCache_isFocusModeActiveWithError___block_invoke_205(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 eventBody];

  if (v3)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [v9 eventBody];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "starting")}];
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;
  }
}

+ (id)sharedPassLibrary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ATXHeuristicResultCache_sharedPassLibrary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedPassLibrary_onceToken != -1)
  {
    dispatch_once(&sharedPassLibrary_onceToken, block);
  }

  v2 = sharedPassLibrary_passLibrary;

  return v2;
}

void __44__ATXHeuristicResultCache_sharedPassLibrary__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = sharedPassLibrary_passLibrary;
  sharedPassLibrary_passLibrary = v2;

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = *MEMORY[0x277D386D8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ATXHeuristicResultCache_sharedPassLibrary__block_invoke_2;
  v8[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  v8[4] = *(a1 + 32);
  v6 = [v4 addObserverForName:v5 object:sharedPassLibrary_passLibrary queue:0 usingBlock:v8];

  v7 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __44__ATXHeuristicResultCache_sharedPassLibrary__block_invoke_cold_1();
  }
}

void __44__ATXHeuristicResultCache_sharedPassLibrary__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = sharedPassLibrary_passLibrary;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_INFO, "PKPassLibrary: %@ received a change notification: %@", &v7, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"PassLibraryChanged" object:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)count
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_cache count];
  pthread_mutex_unlock(&self->_lock);
  return v3;
}

- (void)setObject:(id)a3 expirers:(id)a4 forKey:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  pthread_mutex_lock(&self->_lock);
  v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(ATXHeuristicResultCache *)self _internExpirerLocked:*(*(&v20 + 1) + 8 * v16), v20];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v10];
  if (!v18)
  {
    v18 = [[ATXHeuristicResultCacheEntry alloc] initWithHeuristic:v10 cache:self];
    [(NSMutableDictionary *)self->_cache setObject:v18 forKeyedSubscript:v10];
  }

  [(ATXHeuristicResultCacheEntry *)v18 setActions:v8 expirers:v11, v20];
  pthread_mutex_unlock(&self->_lock);

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_internExpirerLocked:(id)a3
{
  v4 = a3;
  v5 = [(NSHashTable *)self->_expirerInternTable member:v4];
  v6 = v5;
  if (!v5)
  {
    [(NSHashTable *)self->_expirerInternTable addObject:v4];
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (id)objectForKey:(id)a3 found:(BOOL *)a4
{
  v6 = a3;
  pthread_mutex_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = v7[3];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  pthread_mutex_unlock(&self->_lock);
  if (a4)
  {
    *a4 = v7 != 0;
  }

  return v9;
}

- (id)heuristicsCached
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_cache allKeys];
  pthread_mutex_unlock(&self->_lock);
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];

  return v4;
}

- (id)firstExpirationDate
{
  v22 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_expirerInternTable;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 fireDate];
          v11 = [v6 earlierDate:v10];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = v10;
          }

          v14 = v13;

          v6 = v14;
        }
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock(&self->_lock);
  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_expire:(id)a3 postNotification:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "Expiring %@", &v10, 0xCu);
  }

  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeObjectForKey:v6];
  pthread_mutex_unlock(&self->_lock);
  if (v4)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"com.apple.duetexpertd.heuristic.cache-expired" object:self];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __51__ATXHeuristicResultCache__observeUserFocusChanges__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_23E3EA000, v2, v3, "Unable to observe user focus for heuristics: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __54__ATXHeuristicResultCache_isFocusModeActiveWithError___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_23E3EA000, v2, v3, "Could not poll current computed mode event: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end