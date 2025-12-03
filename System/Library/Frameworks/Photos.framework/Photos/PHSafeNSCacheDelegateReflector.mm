@interface PHSafeNSCacheDelegateReflector
+ (id)sharedInstance;
+ (void)setDelegate:(id)delegate forCache:(id)cache;
- (PHSafeNSCacheDelegateReflector)init;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)setDelegate:(id)delegate forCache:(id)cache;
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
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    delegatesByCache = v3->_delegatesByCache;
    v3->_delegatesByCache = weakToWeakObjectsMapTable;

    v6 = v3;
  }

  return v3;
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  objectCopy = object;
  v10 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v8 = cacheCopy;
  v12 = v8;
  v9 = PLResultWithUnfairLock();
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v9 cache:v8 willEvictObject:{objectCopy, v10, 3221225472, __56__PHSafeNSCacheDelegateReflector_cache_willEvictObject___block_invoke, &unk_1E75A34C8, selfCopy, v8}];
  }
}

id __56__PHSafeNSCacheDelegateReflector_cache_willEvictObject___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (void)setDelegate:(id)delegate forCache:(id)cache
{
  delegateCopy = delegate;
  cacheCopy = cache;
  v9 = cacheCopy;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSafeNSCacheDelegateReflector.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSafeNSCacheDelegateReflector.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"cache != nil"}];

    goto LABEL_3;
  }

  if (!cacheCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = delegateCopy;
  v15 = v9;
  v10 = v9;
  v11 = delegateCopy;
  PLRunWithUnfairLock();
  [v10 setDelegate:self];
}

void __55__PHSafeNSCacheDelegateReflector_setDelegate_forCache___block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1[4] + 16) setObject:a1[5] forKey:a1[6]];

  objc_autoreleasePoolPop(v2);
}

+ (void)setDelegate:(id)delegate forCache:(id)cache
{
  cacheCopy = cache;
  delegateCopy = delegate;
  sharedInstance = [self sharedInstance];
  [sharedInstance setDelegate:delegateCopy forCache:cacheCopy];
}

@end