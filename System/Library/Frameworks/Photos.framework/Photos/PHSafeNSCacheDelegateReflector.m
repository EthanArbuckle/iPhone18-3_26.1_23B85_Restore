@interface PHSafeNSCacheDelegateReflector
+ (id)sharedInstance;
+ (void)setDelegate:(id)a3 forCache:(id)a4;
- (PHSafeNSCacheDelegateReflector)init;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)setDelegate:(id)a3 forCache:(id)a4;
@end

@implementation PHSafeNSCacheDelegateReflector

+ (id)sharedInstance
{
  pl_dispatch_once();
  v2 = sharedInstance_pl_once_object_17;

  return v2;
}

uint64_t __48__PHSafeNSCacheDelegateReflector_sharedInstance__block_invoke()
{
  sharedInstance_pl_once_object_17 = objc_alloc_init(PHSafeNSCacheDelegateReflector);

  return MEMORY[0x1EEE66BB8]();
}

- (PHSafeNSCacheDelegateReflector)init
{
  v8.receiver = self;
  v8.super_class = PHSafeNSCacheDelegateReflector;
  v2 = [(PHSafeNSCacheDelegateReflector *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    delegatesByCache = v3->_delegatesByCache;
    v3->_delegatesByCache = v4;

    v6 = v3;
  }

  return v3;
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = MEMORY[0x1E69E9820];
  v11 = self;
  v8 = v6;
  v12 = v8;
  v9 = PLResultWithUnfairLock();
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v9 cache:v8 willEvictObject:{v7, v10, 3221225472, __56__PHSafeNSCacheDelegateReflector_cache_willEvictObject___block_invoke, &unk_1E75A34C8, v11, v8}];
  }
}

id __56__PHSafeNSCacheDelegateReflector_cache_willEvictObject___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (void)setDelegate:(id)a3 forCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PHSafeNSCacheDelegateReflector.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PHSafeNSCacheDelegateReflector.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"cache != nil"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = v7;
  v15 = v9;
  v10 = v9;
  v11 = v7;
  PLRunWithUnfairLock();
  [v10 setDelegate:self];
}

void __55__PHSafeNSCacheDelegateReflector_setDelegate_forCache___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) setObject:a1[5] forKey:a1[6]];

  objc_autoreleasePoolPop(v2);
}

+ (void)setDelegate:(id)a3 forCache:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedInstance];
  [v8 setDelegate:v7 forCache:v6];
}

@end