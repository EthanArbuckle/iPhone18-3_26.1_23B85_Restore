@interface PreflightCache
+ (id)sharedInstance;
- (BOOL)_isCacheable:(id)a3 callerUid:(unsigned int)a4;
- (BOOL)_isPolicyCacheable:(int64_t)a3;
- (PreflightCache)init;
- (id)acquireBypassAssertionWithReason:(id)a3;
- (id)cachedPreflightResultForKey:(id)a3;
- (void)addPreflightResult:(id)a3 forKey:(id)a4;
- (void)invalidateWithReason:(id)a3;
@end

@implementation PreflightCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PreflightCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstace;

  return v3;
}

uint64_t __32__PreflightCache_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstace = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (PreflightCache)init
{
  v23[8] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = PreflightCache;
  v2 = [(PreflightCache *)&v22 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSCache *)v2->_cache setCountLimit:32];
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    bypassAssertions = v2->_bypassAssertions;
    v2->_bypassAssertions = v5;

    v7 = [[BiometryLockoutInvalidationSource alloc] initWithPreflightCache:v2];
    v23[0] = v7;
    v8 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.BiometricKit.enrollmentChanged"];
    v23[1] = v8;
    v9 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.BiometricKit.systemProtectedConfigUpdated"];
    v23[2] = v9;
    v10 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.BiometricKit.userProtectedConfigUpdated"];
    v23[3] = v10;
    v11 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.BiometricKit.connectedAccessoriesChanged"];
    v23[4] = v11;
    v12 = +[(LACBiometryHelper *)BiometryHelper];
    if ([v12 biometryType] == 2)
    {
      v13 = [[DarwinNotificationInvalidationSource alloc] initWithPreflightCache:v2 notificationName:"com.apple.tcc.access.changed"];
    }

    else
    {
      v13 = +[(PreflightCacheInvalidationSource *)BiometryLockoutInvalidationSource];
    }

    v14 = v13;
    v23[5] = v13;
    v15 = [[PasscodeInvalidationSource alloc] initWithPreflightCache:v2];
    v23[6] = v15;
    v16 = [NotificationCenterInvalidationSource alloc];
    v17 = [(NotificationCenterInvalidationSource *)v16 initWithPreflightCache:v2 notificationName:*MEMORY[0x277CBE620]];
    v23[7] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:8];
    invalidationSources = v2->_invalidationSources;
    v2->_invalidationSources = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)cachedPreflightResultForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_cache objectForKey:v4];
  v6 = LA_LOG_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(PreflightCache *)v4 cachedPreflightResultForKey:v5];
  }

  return v5;
}

- (void)addPreflightResult:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = LA_LOG_0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PreflightCache addPreflightResult:v8 forKey:v6];
    }

    [(NSCache *)self->_cache setObject:v6 forKey:v8];
  }
}

- (void)invalidateWithReason:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LA_LOG_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_238B7F000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating preflight cache (%{public}@)", &v7, 0xCu);
  }

  [(NSCache *)self->_cache removeAllObjects];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)acquireBypassAssertionWithReason:(id)a3
{
  v4 = a3;
  v5 = [(PreflightCacheAssertion *)[PreflightCacheBypassAssertion alloc] initWithReason:v4 cache:self];

  [(NSHashTable *)self->_bypassAssertions addObject:v5];

  return v5;
}

- (BOOL)_isPolicyCacheable:(int64_t)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [&unk_284B71E58 containsObject:v3];

  return v4 ^ 1;
}

- (BOOL)_isCacheable:(id)a3 callerUid:(unsigned int)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:&unk_284B71CA8];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __41__PreflightCache__isCacheable_callerUid___block_invoke;
    v15 = &unk_278A614C0;
    v16 = v6;
    v17 = a4;
    v9 = __41__PreflightCache__isCacheable_callerUid___block_invoke(&v12);
    v10 = v9 == geteuid() && [(NSHashTable *)self->_bypassAssertions count:v12]== 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __41__PreflightCache__isCacheable_callerUid___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:&unk_284B71CC0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
  }

  else
  {
    v4 = *(a1 + 40);
  }

  return v4;
}

- (void)cachedPreflightResultForKey:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238B7F000, v4, v5, "Queried preflight cache for %@: %{public}@[%d]", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addPreflightResult:(uint64_t)a1 forKey:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_238B7F000, v4, v5, "Will cache preflight result for %@: %{public}@[%d]", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end