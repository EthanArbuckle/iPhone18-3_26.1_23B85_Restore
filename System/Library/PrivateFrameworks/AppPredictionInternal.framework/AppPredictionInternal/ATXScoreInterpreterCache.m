@interface ATXScoreInterpreterCache
+ (id)sharedInstance;
- (ATXScoreInterpreterCache)init;
- (id)_assetNamesToSkipCaching;
- (void)dealloc;
- (void)handleMemoryPressureOfType:(unint64_t)a3;
- (void)resetCache;
@end

@implementation ATXScoreInterpreterCache

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_40 != -1)
  {
    +[ATXScoreInterpreterCache sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_48;

  return v3;
}

void __42__ATXScoreInterpreterCache_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(ATXScoreInterpreterCache);
  v2 = sharedInstance__pasExprOnceResult_48;
  sharedInstance__pasExprOnceResult_48 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXScoreInterpreterCache)init
{
  v8.receiver = self;
  v8.super_class = ATXScoreInterpreterCache;
  v2 = [(ATXScoreInterpreterCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedInterpreters = v2->_cachedInterpreters;
    v2->_cachedInterpreters = v3;

    v2->_memoryPressureAllowsCaching = 1;
    v5 = [MEMORY[0x277CEBC88] sharedInstance];
    memoryPressureMonitor = v2->_memoryPressureMonitor;
    v2->_memoryPressureMonitor = v5;

    [(ATXMemoryPressureMonitor *)v2->_memoryPressureMonitor registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(ATXMemoryPressureMonitor *)self->_memoryPressureMonitor unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = ATXScoreInterpreterCache;
  [(ATXScoreInterpreterCache *)&v3 dealloc];
}

- (id)_assetNamesToSkipCaching
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283A58BE0];

  return v2;
}

- (void)handleMemoryPressureOfType:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = self->_cachedInterpreters;
  objc_sync_enter(v5);
  if (a3)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = ATXMemoryPressureTypeToString();
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - received memory pressure notification of type %@, forbidding caching and evicting caches", &v15, 0x16u);
    }

    self->_memoryPressureAllowsCaching = 0;
    [(ATXScoreInterpreterCache *)self resetCache];
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = ATXMemoryPressureTypeToString();
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - received memory pressure notification of type %@, allowing caching", &v15, 0x16u);
    }

    self->_memoryPressureAllowsCaching = 1;
  }

  objc_sync_exit(v5);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resetCache
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = self->_cachedInterpreters;
  objc_sync_enter(v3);
  [(NSMutableDictionary *)self->_cachedInterpreters removeAllObjects];
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%@ - removed all cached interpreters", &v8, 0xCu);
  }

  objc_sync_exit(v3);
  v7 = *MEMORY[0x277D85DE8];
}

@end