@interface HMCacheManager
- (HMCacheManager)initWithTimerFactory:(id)factory persistentCache:(id)cache;
- (id)_cacheWithName:(id)name;
- (id)_loadCacheNamed:(id)named;
- (id)cacheWithName:(id)name;
- (void)_saveCache:(id)cache;
- (void)cacheDidUpdate:(id)update;
- (void)cacheWithName:(id)name completion:(id)completion;
- (void)forceFlushToDisk;
- (void)timerDidFire:(id)fire;
@end

@implementation HMCacheManager

- (void)forceFlushToDisk
{
  v16 = *MEMORY[0x1E69E9840];
  workQueue = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

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

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  workQueue = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  writeDebounceTimer = [(HMCacheManager *)self writeDebounceTimer];

  if (writeDebounceTimer == fireCopy)
  {

    [(HMCacheManager *)self forceFlushToDisk];
  }
}

- (void)cacheDidUpdate:(id)update
{
  updateCopy = update;
  os_unfair_lock_lock_with_options();
  pendingWrites = self->_pendingWrites;
  name = [updateCopy name];
  [(NSMutableDictionary *)pendingWrites setObject:updateCopy forKeyedSubscript:name];

  os_unfair_lock_unlock(&self->_lock);
  writeDebounceTimer = [(HMCacheManager *)self writeDebounceTimer];
  [writeDebounceTimer resume];
}

- (id)_loadCacheNamed:(id)named
{
  namedCopy = named;
  workQueue = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  persistentCache = [(HMCacheManager *)self persistentCache];
  v7 = [persistentCache loadCachedObjectsForCacheWithName:namedCopy];

  v8 = [[HMCache alloc] initWithCachedObjects:v7 name:namedCopy];

  return v8;
}

- (void)_saveCache:(id)cache
{
  cacheCopy = cache;
  workQueue = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  persistentCache = [(HMCacheManager *)self persistentCache];
  cachedObjects = [cacheCopy cachedObjects];
  name = [cacheCopy name];

  [persistentCache storeCachedObjects:cachedObjects forCacheName:name];
}

- (id)_cacheWithName:(id)name
{
  nameCopy = name;
  workQueue = [(HMCacheManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  os_unfair_lock_lock_with_options();
  v6 = [(NSMapTable *)self->_cacheMap objectForKey:nameCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    v6 = [(HMCacheManager *)self _loadCacheNamed:nameCopy];
    [v6 setDelegate:self];
    os_unfair_lock_lock_with_options();
    [(NSMapTable *)self->_cacheMap setObject:v6 forKey:nameCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v6;
}

- (id)cacheWithName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  workQueue = [(HMCacheManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__HMCacheManager_cacheWithName___block_invoke;
  block[3] = &unk_1E7547B90;
  v10 = nameCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(workQueue, block);

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

- (void)cacheWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  workQueue = [(HMCacheManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__HMCacheManager_cacheWithName_completion___block_invoke;
  block[3] = &unk_1E754E0F8;
  block[4] = self;
  v12 = nameCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = nameCopy;
  dispatch_async(workQueue, block);
}

void __43__HMCacheManager_cacheWithName_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cacheWithName:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (HMCacheManager)initWithTimerFactory:(id)factory persistentCache:(id)cache
{
  factoryCopy = factory;
  cacheCopy = cache;
  v22.receiver = self;
  v22.super_class = HMCacheManager;
  v8 = [(HMCacheManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    cacheMap = v9->_cacheMap;
    v9->_cacheMap = strongToWeakObjectsMapTable;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pendingWrites = v9->_pendingWrites;
    v9->_pendingWrites = dictionary;

    v14 = HMDispatchQueueNameString(v9, @"WorkQueue");
    uTF8String = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String, v16);
    workQueue = v9->_workQueue;
    v9->_workQueue = v17;

    objc_storeStrong(&v9->_persistentCache, cache);
    v19 = factoryCopy[2](factoryCopy);
    writeDebounceTimer = v9->_writeDebounceTimer;
    v9->_writeDebounceTimer = v19;

    [(HMFTimer *)v9->_writeDebounceTimer setDelegate:v9];
    [(HMFTimer *)v9->_writeDebounceTimer setDelegateQueue:v9->_workQueue];
  }

  return v9;
}

@end