@interface ATXPosterConfigurationCache
+ (ATXPosterConfigurationCache)sharedInstance;
- (ATXPosterConfigurationCache)init;
- (ATXPosterConfigurationCache)initWithPath:(id)path;
- (NSArray)configurations;
- (id)_fetchConfigurationsReadingFromCacheIfNecessaryWithGuardedData:(id)data;
- (void)_updateLastActiveDatesWithConfigurations:(id)configurations;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
- (void)updateConfigurations:(id)configurations completion:(id)completion;
@end

@implementation ATXPosterConfigurationCache

+ (ATXPosterConfigurationCache)sharedInstance
{
  if (sharedInstance_onceToken_9 != -1)
  {
    +[ATXPosterConfigurationCache sharedInstance];
  }

  v3 = sharedInstance_cache_0;

  return v3;
}

uint64_t __45__ATXPosterConfigurationCache_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_cache_0;
  sharedInstance_cache_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ATXPosterConfigurationCache)init
{
  posterConfigurationCacheFilePath = [MEMORY[0x277CEBCB0] posterConfigurationCacheFilePath];
  v4 = [(ATXPosterConfigurationCache *)self initWithPath:posterConfigurationCacheFilePath];

  return v4;
}

- (ATXPosterConfigurationCache)initWithPath:(id)path
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = ATXPosterConfigurationCache;
  v5 = [(ATXPosterConfigurationCache *)&v18 init];
  if (v5)
  {
    if (pathCopy)
    {
      v6 = objc_alloc(MEMORY[0x277CEBC68]);
      v7 = __atxlog_handle_lock_screen();
      v8 = [v6 initWithCacheFilePath:pathCopy loggingHandle:v7 debugName:@"Poster configuration cache"];
      fileCache = v5->_fileCache;
      v5->_fileCache = v8;
    }

    v10 = objc_alloc(MEMORY[0x277D425F8]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    lock = v5->_lock;
    v5->_lock = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.proactive.ATXPosterConfigurationCache.Output", v14);
    outputQueue = v5->_outputQueue;
    v5->_outputQueue = v15;
  }

  return v5;
}

- (NSArray)configurations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__77;
  v10 = __Block_byref_object_dispose__77;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ATXPosterConfigurationCache_configurations__block_invoke;
  v5[3] = &unk_27859F588;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __45__ATXPosterConfigurationCache_configurations__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _fetchConfigurationsReadingFromCacheIfNecessaryWithGuardedData:v4];
  v6 = v4[1];
  v4[1] = v5;

  v7 = v4[1];
  v8 = [v7 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x2821F96F8](v8, v10);
}

- (void)updateConfigurations:(id)configurations completion:(id)completion
{
  configurationsCopy = configurations;
  completionCopy = completion;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__ATXPosterConfigurationCache_updateConfigurations_completion___block_invoke;
  v11[3] = &unk_27859F5D8;
  v11[4] = self;
  v12 = configurationsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = configurationsCopy;
  [(_PASLock *)lock runWithLockAcquired:v11];
}

void __63__ATXPosterConfigurationCache_updateConfigurations_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] _fetchConfigurationsReadingFromCacheIfNecessaryWithGuardedData:v3];
  v5 = a1[5];
  v6 = *(a1[4] + 1);
  v22 = 0;
  [v6 storeSecureCodedObject:v5 error:&v22];
  v7 = v22;
  objc_storeStrong(v3 + 1, a1[5]);
  if ([a1[5] count])
  {
    [a1[4] _updateLastActiveDatesWithConfigurations:a1[5]];
  }

  v8 = [v3[2] copy];
  v9 = [a1[5] copy];
  v10 = *(a1[4] + 3);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__ATXPosterConfigurationCache_updateConfigurations_completion___block_invoke_2;
  v16[3] = &unk_27859F5B0;
  v11 = a1[6];
  v20 = v4;
  v21 = v11;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v12 = v4;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v10, v16);
}

void __63__ATXPosterConfigurationCache_updateConfigurations_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32));
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) configurationCacheDidUpdateWithNewConfigurations:*(a1 + 48) oldConfigurations:{*(a1 + 56), v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_fetchConfigurationsReadingFromCacheIfNecessaryWithGuardedData:(id)data
{
  dataCopy = data;
  v5 = dataCopy[1];
  if (v5)
  {
    v6 = [v5 copy];
  }

  else
  {
    fileCache = self->_fileCache;
    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    v6 = [(ATXGenericFileBasedCache *)fileCache readSecureCodedObjectWithMaxValidAge:v11 allowableClasses:0 error:2419200.0];
  }

  return v6;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ATXPosterConfigurationCache_registerObserver___block_invoke;
  v7[3] = &unk_27859F600;
  v8 = observerCopy;
  v6 = observerCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ATXPosterConfigurationCache_unregisterObserver___block_invoke;
  v7[3] = &unk_27859F600;
  v8 = observerCopy;
  v6 = observerCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (void)_updateLastActiveDatesWithConfigurations:(id)configurations
{
  v48 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v35 = configurationsCopy;
  v5 = [configurationsCopy _pas_mappedArrayWithTransform:&__block_literal_global_35_3];
  v6 = [v4 initWithArray:v5];

  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = [v7 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v36 = *MEMORY[0x277CEBDD0];
  v37 = v8;
  v9 = [v8 dictionaryForKey:?];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v15 = objc_opt_new();
  v16 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v15 options:0];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  allKeys = [v13 allKeys];
  v18 = [allKeys countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(allKeys);
        }

        v22 = *(*(&v42 + 1) + 8 * i);
        v23 = [v13 objectForKeyedSubscript:v22];
        v24 = [v16 compare:v23];
        if ([v6 containsObject:v22])
        {
          v25 = v24 == -1;
        }

        else
        {
          v25 = 0;
        }

        if (!v25)
        {
          [v13 setObject:0 forKeyedSubscript:v22];
        }
      }

      v19 = [allKeys countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v19);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v35;
  v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v39;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v38 + 1) + 8 * j);
        if ([v31 isActive])
        {
          v32 = objc_opt_new();
          posterUUID = [v31 posterUUID];
          [v13 setObject:v32 forKeyedSubscript:posterUUID];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v28);
  }

  [v37 setObject:v13 forKey:v36];
  v34 = *MEMORY[0x277D85DE8];
}

@end