@interface ATDeviceDiskUsageProvider
+ (id)sharedInstance;
- (ATDeviceDiskUsageProvider)init;
- (id)_cacheDeletePurgeableStorageData;
- (id)_diskUsageForDataClass:(id)class;
- (id)getCurrentUsage;
- (void)getCurrentUsageWithUpdatedDataClasses:(id)classes withCompletion:(id)completion;
- (void)getUpdatedUsageWithCompletion:(id)completion;
@end

@implementation ATDeviceDiskUsageProvider

- (id)_cacheDeletePurgeableStorageData
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Gathering purgeable metrics from CacheDelete", &v10, 0xCu);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4;
  [MEMORY[0x277D2B5F8] setAutoFilledTracksArePurgeable:0];
  v6 = CacheDeleteCopyItemizedPurgeableSpaceWithInfo();
  [MEMORY[0x277D2B5F8] setAutoFilledTracksArePurgeable:1];
  v7 = _ATLogCategoryFramework_Oversize();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10 = 138543874;
    selfCopy2 = self;
    v12 = 2048;
    v13 = v8 - v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Loaded purgeable metrics from CacheDelete in %.2fs: %{public}@", &v10, 0x20u);
  }

  return v6;
}

- (id)_diskUsageForDataClass:(id)class
{
  v3 = [(ATClientController *)self->_clientController clientForDataclass:class];
  if (objc_opt_respondsToSelector())
  {
    installedAssetMetrics = [v3 installedAssetMetrics];
  }

  else
  {
    installedAssetMetrics = 0;
  }

  return installedAssetMetrics;
}

- (void)getCurrentUsageWithUpdatedDataClasses:(id)classes withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  completionCopy = completion;
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [classesCopy componentsJoinedByString:{@", "}];
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Gathering updated usage metrics for data classes %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ATDeviceDiskUsageProvider_getCurrentUsageWithUpdatedDataClasses_withCompletion___block_invoke;
  block[3] = &unk_2784E58C0;
  block[4] = self;
  v14 = classesCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = classesCopy;
  dispatch_async(queue, block);
}

void __82__ATDeviceDiskUsageProvider_getCurrentUsageWithUpdatedDataClasses_withCompletion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  v23 = [*(a1 + 32) _cacheDeletePurgeableStorageData];
  v4 = dispatch_group_create();
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.amp.AirTrafficDevice.ATDeviceDiskUsageProvider.usageUpdateQueue", v5);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        dispatch_group_enter(v4);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__ATDeviceDiskUsageProvider_getCurrentUsageWithUpdatedDataClasses_withCompletion___block_invoke_2;
        block[3] = &unk_2784E59B0;
        block[4] = *(v6 + 32);
        block[5] = v12;
        v28 = v4;
        dispatch_async(queue, block);
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v9);
  }

  dispatch_group_enter(v4);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __82__ATDeviceDiskUsageProvider_getCurrentUsageWithUpdatedDataClasses_withCompletion___block_invoke_13;
  v25[3] = &unk_2784E5960;
  v13 = v6;
  v25[4] = *(v6 + 32);
  v14 = v4;
  v26 = v14;
  dispatch_async(queue, v25);
  dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = [v23 valueForKey:@"CACHE_DELETE_TOTAL_AVAILABLE"];
  v16 = [v15 unsignedLongLongValue];

  os_unfair_lock_lock((*(v6 + 32) + 32));
  v17 = *(*(v6 + 32) + 8);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16];
  [v17 setObject:v18 forKey:@"_PurgeableSize"];

  os_unfair_lock_unlock((*(v6 + 32) + 32));
  v19 = [*(*(v6 + 32) + 8) copy];
  [*(*(v6 + 32) + 16) setDiskUsageInfo:v19];
  v20 = _ATLogCategoryFramework_Oversize();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(v6 + 32);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 138543874;
    v34 = v21;
    v35 = 2048;
    v36 = v22 - v3;
    v37 = 2114;
    v38 = v19;
    _os_log_impl(&dword_223819000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished gathering storage usage metrics in %.2fs. diskUsageInfo=%{public}@", buf, 0x20u);
  }

  (*(*(v13 + 48) + 16))();
}

void __82__ATDeviceDiskUsageProvider_getCurrentUsageWithUpdatedDataClasses_withCompletion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138543618;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Gathering usage metrics for data class '%{public}@'", &v12, 0x16u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [*(a1 + 32) _diskUsageForDataClass:*(a1 + 40)];
  if (v7)
  {
    os_unfair_lock_lock((*(a1 + 32) + 32));
    [*(*(a1 + 32) + 8) setObject:v7 forKey:*(a1 + 40)];
    os_unfair_lock_unlock((*(a1 + 32) + 32));
  }

  v8 = _ATLogCategoryFramework_Oversize();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v12 = 138544130;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2048;
    v17 = v11 - v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_223819000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished gathering usage metrics for data class '%{public}@' in %.2fs. usageInfo=%{public}@", &v12, 0x2Au);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __82__ATDeviceDiskUsageProvider_getCurrentUsageWithUpdatedDataClasses_withCompletion___block_invoke_13(uint64_t a1)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = MSVSystemRootDirectory();
  v4 = [v2 fileURLWithPath:v3];
  v5 = *MEMORY[0x277CBEA50];
  v6 = *MEMORY[0x277CBEA00];
  v25[0] = *MEMORY[0x277CBEA50];
  v25[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v18 = 0;
  v8 = [v4 resourceValuesForKeys:v7 error:&v18];
  v9 = v18;

  v10 = _ATLogCategoryFramework();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = [v9 msv_description];
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v8;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Finished gathering volume diskUsage=%@ error=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138543618;
    v20 = v14;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_223819000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished gathering volume diskUsage=%@", buf, 0x16u);
  }

  v15 = [v8 objectForKey:v5];
  v16 = [v8 objectForKey:v6];
  v17 = v16;
  if (v15 && v16)
  {
    os_unfair_lock_lock((*(a1 + 32) + 32));
    [*(*(a1 + 32) + 8) setObject:v15 forKey:@"_PhysicalSize"];
    [*(*(a1 + 32) + 8) setObject:v17 forKey:@"_FreeSize"];
    os_unfair_lock_unlock((*(a1 + 32) + 32));
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)getUpdatedUsageWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableSet *)self->_usageUpdateCompletionHandlers count];
  usageUpdateCompletionHandlers = self->_usageUpdateCompletionHandlers;
  v7 = MEMORY[0x223DED0C0](completionCopy);
  [(NSMutableSet *)usageUpdateCompletionHandlers addObject:v7];

  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    allClients = [(ATClientController *)self->_clientController allClients];
    v10 = [allClients countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(allClients);
          }

          supportedDataclasses = [*(*(&v16 + 1) + 8 * v13) supportedDataclasses];
          if (supportedDataclasses)
          {
            [array addObjectsFromArray:supportedDataclasses];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [allClients countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __59__ATDeviceDiskUsageProvider_getUpdatedUsageWithCompletion___block_invoke;
    v15[3] = &unk_2784E55F0;
    v15[4] = self;
    [(ATDeviceDiskUsageProvider *)self getCurrentUsageWithUpdatedDataClasses:array withCompletion:v15];
  }
}

void __59__ATDeviceDiskUsageProvider_getUpdatedUsageWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v4 = [*(*(a1 + 32) + 48) copy];
  [*(*(a1 + 32) + 48) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 32));
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543618;
    v11 = v6;
    v12 = 2048;
    v13 = [v4 count];
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ invoking %lu completion handlers", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ATDeviceDiskUsageProvider_getUpdatedUsageWithCompletion___block_invoke_7;
  v8[3] = &unk_2784E4F10;
  v9 = v3;
  v7 = v3;
  [v4 enumerateObjectsUsingBlock:v8];
}

- (id)getCurrentUsage
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_diskUsageInfo copy];
  os_unfair_lock_unlock(&self->_lock);
  v4 = _ATLogCategoryFramework_Oversize();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ getCurrentUsage=%{public}@", &v6, 0x16u);
  }

  return v3;
}

- (ATDeviceDiskUsageProvider)init
{
  v18.receiver = self;
  v18.super_class = ATDeviceDiskUsageProvider;
  v2 = [(ATDeviceDiskUsageProvider *)&v18 init];
  if (v2)
  {
    v3 = +[ATUserDefaults sharedInstance];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.amp.AirTrafficDevice.ATDeviceDiskUsageProvider.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = +[ATClientController sharedInstance];
    clientController = v2->_clientController;
    v2->_clientController = v8;

    v2->_lock._os_unfair_lock_opaque = 0;
    v10 = [MEMORY[0x277CBEB58] set];
    usageUpdateCompletionHandlers = v2->_usageUpdateCompletionHandlers;
    v2->_usageUpdateCompletionHandlers = v10;

    diskUsageInfo = [(ATUserDefaults *)v2->_defaults diskUsageInfo];
    v13 = [diskUsageInfo mutableCopy];
    diskUsageInfo = v2->_diskUsageInfo;
    v2->_diskUsageInfo = v13;

    if (!v2->_diskUsageInfo)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = v2->_diskUsageInfo;
      v2->_diskUsageInfo = v15;
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2856 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2856, &__block_literal_global_2857);
  }

  v3 = sharedInstance___sharedInstance_2858;

  return v3;
}

uint64_t __43__ATDeviceDiskUsageProvider_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_2858 = objc_alloc_init(ATDeviceDiskUsageProvider);

  return MEMORY[0x2821F96F8]();
}

@end