@interface HMCacheManager
- (HMCacheManager)initWithTimerFactory:(id)a3 persistentCache:(id)a4;
- (id)_cacheWithName:(id)a3;
- (id)_loadCacheNamed:(id)a3;
- (id)cacheWithName:(id)a3;
- (void)_saveCache:(id)a3;
- (void)cacheDidUpdate:(id)a3;
- (void)cacheWithName:(id)a3 completion:(id)a4;
- (void)forceFlushToDisk;
- (void)timerDidFire:(id)a3;
@end

@implementation HMCacheManager

- (void)forceFlushToDisk
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  os_unfair_lock_lock_with_options();
  v4 = [(NSMutableDictionary *)self->_pendingWrites copy];
  [(NSMutableDictionary *)self->_pendingWrites removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v5 objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v8), v11}];
        [(HMCacheManager *)self _saveCache:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMCacheManager *)self writeDebounceTimer];

  if (v6 == v4)
  {

    [(HMCacheManager *)self forceFlushToDisk];
  }
}

- (void)cacheDidUpdate:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  pendingWrites = self->_pendingWrites;
  v5 = [v7 name];
  [(NSMutableDictionary *)pendingWrites setObject:v7 forKeyedSubscript:v5];

  os_unfair_lock_unlock(&self->_lock);
  v6 = [(HMCacheManager *)self writeDebounceTimer];
  [v6 resume];
}

- (id)_loadCacheNamed:(id)a3
{
  v4 = a3;
  v5 = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMCacheManager *)self persistentCache];
  v7 = [v6 loadCachedObjectsForCacheWithName:v4];

  v8 = [[HMCache alloc] initWithCachedObjects:v7 name:v4];

  return v8;
}

- (void)_saveCache:(id)a3
{
  v4 = a3;
  v5 = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v8 = [(HMCacheManager *)self persistentCache];
  v6 = [v4 cachedObjects];
  v7 = [v4 name];

  [v8 storeCachedObjects:v6 forCacheName:v7];
}

- (id)_cacheWithName:(id)a3
{
  v4 = a3;
  v5 = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  os_unfair_lock_lock_with_options();
  v6 = [(NSMapTable *)self->_cacheMap objectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    v6 = [(HMCacheManager *)self _loadCacheNamed:v4];
    [v6 setDelegate:self];
    os_unfair_lock_lock_with_options();
    [(NSMapTable *)self->_cacheMap setObject:v6 forKey:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v6;
}

- (id)cacheWithName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = [(HMCacheManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__HMCacheManager_cacheWithName___block_invoke;
  block[3] = &unk_1E7547B90;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __32__HMCacheManager_cacheWithName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cacheWithName:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)cacheWithName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMCacheManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__HMCacheManager_cacheWithName_completion___block_invoke;
  block[3] = &unk_1E754E0F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __43__HMCacheManager_cacheWithName_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cacheWithName:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (HMCacheManager)initWithTimerFactory:(id)a3 persistentCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = HMCacheManager;
  v8 = [(HMCacheManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    cacheMap = v9->_cacheMap;
    v9->_cacheMap = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    pendingWrites = v9->_pendingWrites;
    v9->_pendingWrites = v12;

    v14 = HMDispatchQueueNameString(v9, @"WorkQueue");
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    workQueue = v9->_workQueue;
    v9->_workQueue = v17;

    objc_storeStrong(&v9->_persistentCache, a4);
    v19 = v6[2](v6);
    writeDebounceTimer = v9->_writeDebounceTimer;
    v9->_writeDebounceTimer = v19;

    [(HMFTimer *)v9->_writeDebounceTimer setDelegate:v9];
    [(HMFTimer *)v9->_writeDebounceTimer setDelegateQueue:v9->_workQueue];
  }

  return v9;
}

@end