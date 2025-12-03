@interface ATXPosterDescriptorCache
+ (id)sharedInstance;
- (ATXPosterDescriptorCache)init;
- (ATXPosterDescriptorCache)initWithPath:(id)path;
- (NSDictionary)descriptors;
- (NSSet)allDescriptors;
- (id)_readDescriptorsFromDisk;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
- (void)updateDescriptors:(id)descriptors;
@end

@implementation ATXPosterDescriptorCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[ATXPosterDescriptorCache sharedInstance];
  }

  v3 = sharedInstance_cache;

  return v3;
}

uint64_t __42__ATXPosterDescriptorCache_sharedInstance__block_invoke()
{
  sharedInstance_cache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ATXPosterDescriptorCache)init
{
  posterDescriptorCacheFilePath = [MEMORY[0x277CEBCB0] posterDescriptorCacheFilePath];
  v4 = [(ATXPosterDescriptorCache *)self initWithPath:posterDescriptorCacheFilePath];

  return v4;
}

- (ATXPosterDescriptorCache)initWithPath:(id)path
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = ATXPosterDescriptorCache;
  v5 = [(ATXPosterDescriptorCache *)&v18 init];
  if (v5)
  {
    if (pathCopy)
    {
      v6 = objc_alloc(MEMORY[0x277CEBC68]);
      v7 = __atxlog_handle_lock_screen();
      v8 = [v6 initWithCacheFilePath:pathCopy loggingHandle:v7 debugName:@"poster descriptors"];
      fileCache = v5->_fileCache;
      v5->_fileCache = v8;
    }

    v10 = objc_alloc(MEMORY[0x277D425F8]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    lock = v5->_lock;
    v5->_lock = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.proactive.ATXPosterDescriptorCache.Output", v14);
    outputQueue = v5->_outputQueue;
    v5->_outputQueue = v15;
  }

  return v5;
}

- (NSDictionary)descriptors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ATXPosterDescriptorCache_descriptors__block_invoke;
  v5[3] = &unk_278599A20;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __39__ATXPosterDescriptorCache_descriptors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (!v3)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 _readDescriptorsFromDisk];
    v8 = a2[1];
    a2[1] = v7;

    v3 = a2[1];
  }

  v9 = [v3 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x2821F96F8]();
}

- (NSSet)allDescriptors
{
  v3 = objc_opt_new();
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ATXPosterDescriptorCache_allDescriptors__block_invoke;
  v9[3] = &unk_278599A70;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __42__ATXPosterDescriptorCache_allDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (!v3)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 _readDescriptorsFromDisk];
    v8 = a2[1];
    a2[1] = v7;

    v3 = a2[1];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ATXPosterDescriptorCache_allDescriptors__block_invoke_2;
  v9[3] = &unk_278599A48;
  v10 = *(a1 + 40);
  [v3 enumerateKeysAndObjectsUsingBlock:v9];
}

void __42__ATXPosterDescriptorCache_allDescriptors__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count])
  {
    [*(a1 + 32) addObjectsFromArray:v4];
  }
}

- (void)updateDescriptors:(id)descriptors
{
  v4 = [descriptors copy];
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ATXPosterDescriptorCache_updateDescriptors___block_invoke;
  v7[3] = &unk_278599A70;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __46__ATXPosterDescriptorCache_updateDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  if (*(a1 + 32))
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  if ([v5 isEqualToDictionary:v7])
  {
    v8 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Bypassing poster descriptor update because the descriptors are the same", buf, 2u);
    }
  }

  else
  {
    objc_storeStrong(v3 + 1, *(a1 + 32));
    if (*(a1 + 32))
    {
      [*(a1 + 40) _writeDescriptorsToDisk:?];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v3[2];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v16 = v6;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = *(*(a1 + 40) + 24);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__ATXPosterDescriptorCache_updateDescriptors___block_invoke_33;
          block[3] = &unk_278596C10;
          block[4] = v13;
          v18 = *(a1 + 32);
          dispatch_async(v14, block);
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
      v6 = v16;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ATXPosterDescriptorCache_registerObserver___block_invoke;
  v7[3] = &unk_278599A98;
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
  v7[2] = __47__ATXPosterDescriptorCache_unregisterObserver___block_invoke;
  v7[3] = &unk_278599A98;
  v8 = observerCopy;
  v6 = observerCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

- (id)_readDescriptorsFromDisk
{
  fileCache = self->_fileCache;
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 initWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v3);
  v9 = [(ATXGenericFileBasedCache *)fileCache readSecureCodedObjectWithMaxValidAge:v8 allowableClasses:0 error:-1.0];

  return v9;
}

@end