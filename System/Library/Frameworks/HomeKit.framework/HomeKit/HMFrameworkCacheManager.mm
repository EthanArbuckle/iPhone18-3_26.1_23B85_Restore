@interface HMFrameworkCacheManager
+ (id)sharedInstance;
- (HMFrameworkCacheManager)initWithTimerFactory:(id)factory;
@end

@implementation HMFrameworkCacheManager

- (HMFrameworkCacheManager)initWithTimerFactory:(id)factory
{
  v17 = *MEMORY[0x1E69E9840];
  factoryCopy = factory;
  v5 = HMCreateFrameworkCacheDirectory();
  if (v5)
  {
    v6 = [[HMDiskCache alloc] initWithCachePath:v5];
    v14.receiver = self;
    v14.super_class = HMFrameworkCacheManager;
    selfCopy = [(HMCacheManager *)&v14 initWithTimerFactory:factoryCopy persistentCache:v6];

    v8 = selfCopy;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to resolve cache directory, not using cache", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_24061);
  }

  v3 = sharedInstance_cacheManager;

  return v3;
}

uint64_t __41__HMFrameworkCacheManager_sharedInstance__block_invoke()
{
  v0 = [[HMFrameworkCacheManager alloc] initWithTimerFactory:&__block_literal_global_4];
  v1 = sharedInstance_cacheManager;
  sharedInstance_cacheManager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __41__HMFrameworkCacheManager_sharedInstance__block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x1E69A2A68]) initWithTimeInterval:0 options:5.0];

  return v0;
}

@end