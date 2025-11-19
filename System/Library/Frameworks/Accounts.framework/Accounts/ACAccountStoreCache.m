@interface ACAccountStoreCache
+ (id)sharedCache;
- (ACAccountStoreCache)init;
- (id)cachedAccountTypeWithIdentifier:(id)a3;
- (id)cachedAccountsForSuffix:(id)a3;
- (id)cachedAllAccountTypes;
- (unint64_t)generationForCacheSuffix:(id)a3;
- (void)_clearAllCaches;
- (void)_lock_cacheAccountType:(id)a3;
- (void)cacheAccountType:(id)a3;
- (void)cacheAccounts:(id)a3 forSuffix:(id)a4;
- (void)cacheAllAccountTypes:(id)a3;
- (void)setupMemoryNotifications;
@end

@implementation ACAccountStoreCache

+ (id)sharedCache
{
  if (sharedCache_onceToken_0 != -1)
  {
    +[ACAccountStoreCache sharedCache];
  }

  v3 = sharedCache__sharedCache;

  return v3;
}

uint64_t __34__ACAccountStoreCache_sharedCache__block_invoke()
{
  sharedCache__sharedCache = objc_alloc_init(ACAccountStoreCache);

  return MEMORY[0x1EEE66BB8]();
}

- (ACAccountStoreCache)init
{
  v10.receiver = self;
  v10.super_class = ACAccountStoreCache;
  v2 = [(ACAccountStoreCache *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_accountNotifyCachesLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accountNotifyCaches = v3->_accountNotifyCaches;
    v3->_accountNotifyCaches = v4;

    v3->_accountTypeCacheLock._os_unfair_lock_opaque = 0;
    v3->_allAccountTypeCached = 0;
    v6 = objc_opt_new();
    accountTypeCache = v3->_accountTypeCache;
    v3->_accountTypeCache = v6;

    [(ACAccountStoreCache *)v3 setupMemoryNotifications];
    v8 = [[ACCredentialCache alloc] initWithValidityDuration:15];
    [(ACAccountStoreCache *)v3 setCredentialCache:v8];
  }

  return v3;
}

- (void)setupMemoryNotifications
{
  v3 = dispatch_get_global_queue(17, 0);
  v4 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 0x36uLL, v3);
  memoryNotificationSource = self->_memoryNotificationSource;
  self->_memoryNotificationSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_memoryNotificationSource;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__ACAccountStoreCache_setupMemoryNotifications__block_invoke;
  v7[3] = &unk_1E7975B00;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_memoryNotificationSource);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __47__ACAccountStoreCache_setupMemoryNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearAllCaches];
}

- (void)_clearAllCaches
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __38__ACAccountStoreCache__clearAllCaches__block_invoke;
  v12 = &unk_1E7975AD8;
  v13 = self;
  v3 = v10;
  os_unfair_lock_lock(&self->_accountTypeCacheLock);
  v11(v3);
  os_unfair_lock_unlock(&self->_accountTypeCacheLock);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __38__ACAccountStoreCache__clearAllCaches__block_invoke_2;
  v8 = &unk_1E7975AD8;
  v9 = self;
  v4 = v6;
  os_unfair_lock_lock(&self->_accountNotifyCachesLock);
  v7(v4);
  os_unfair_lock_unlock(&self->_accountNotifyCachesLock);

  v5 = [(ACAccountStoreCache *)self credentialCache];
  [v5 _clearAllCaches];
}

- (unint64_t)generationForCacheSuffix:(id)a3
{
  v4 = a3;
  v5 = [ACNotifyAccountCache cacheKeyForSuffix:v4];
  v6 = v5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v11 = __48__ACAccountStoreCache_generationForCacheSuffix___block_invoke;
    v12 = &unk_1E79772E0;
    v13 = self;
    v14 = v5;
    v15 = &v16;
    v7 = v10;
    os_unfair_lock_lock(&self->_accountNotifyCachesLock);
    v11(v7);
    os_unfair_lock_unlock(&self->_accountNotifyCachesLock);

    v8 = v17[3];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __48__ACAccountStoreCache_generationForCacheSuffix___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    v3 = [[ACNotifyAccountCache alloc] initWithKey:a1[5]];
    [*(a1[4] + 32) setObject:v3 forKeyedSubscript:a1[5]];
  }

  v4 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v4 generation];
}

- (id)cachedAccountsForSuffix:(id)a3
{
  v4 = a3;
  if (ACIsAccountsd())
  {
    v5 = 0;
  }

  else
  {
    v6 = [ACNotifyAccountCache cacheKeyForSuffix:v4];
    v7 = v6;
    if (v6)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__ACAccountStoreCache_cachedAccountsForSuffix___block_invoke;
      v9[3] = &unk_1E7977180;
      v9[4] = self;
      v10 = v6;
      v5 = ac_unfair_lock_perform_with_result_2(&self->_accountNotifyCachesLock, v9);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id __47__ACAccountStoreCache_cachedAccountsForSuffix___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];

  if (!v2)
  {
    v3 = [[ACNotifyAccountCache alloc] initWithKey:*(a1 + 40)];
    [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v5 = [v4 cachedAccounts];

  return v5;
}

- (void)cacheAccounts:(id)a3 forSuffix:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((ACIsAccountsd() & 1) == 0)
  {
    v8 = [ACNotifyAccountCache cacheKeyForSuffix:v7];
    v9 = v8;
    if (v8)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v12 = __47__ACAccountStoreCache_cacheAccounts_forSuffix___block_invoke;
      v13 = &unk_1E7975540;
      v14 = self;
      v15 = v8;
      v16 = v6;
      v10 = v11;
      os_unfair_lock_lock(&self->_accountNotifyCachesLock);
      v12(v10);
      os_unfair_lock_unlock(&self->_accountNotifyCachesLock);
    }
  }
}

void __47__ACAccountStoreCache_cacheAccounts_forSuffix___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    v3 = [[ACNotifyAccountCache alloc] initWithKey:a1[5]];
    [*(a1[4] + 32) setObject:v3 forKeyedSubscript:a1[5]];
  }

  v4 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  [v4 cacheAccounts:a1[6]];
}

- (id)cachedAccountTypeWithIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__ACAccountStoreCache_cachedAccountTypeWithIdentifier___block_invoke;
  v8[3] = &unk_1E7975450;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = ac_unfair_lock_perform_with_result_2(&self->_accountTypeCacheLock, v8);

  return v6;
}

id __55__ACAccountStoreCache_cachedAccountTypeWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v2 = [v1 copy];

  return v2;
}

- (void)cacheAccountType:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __40__ACAccountStoreCache_cacheAccountType___block_invoke;
  v9 = &unk_1E7975590;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_accountTypeCacheLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_accountTypeCacheLock);
}

- (void)_lock_cacheAccountType:(id)a3
{
  v7 = a3;
  v4 = [v7 identifier];

  if (v4)
  {
    accountTypeCache = self->_accountTypeCache;
    v6 = [v7 identifier];
    [(NSMutableDictionary *)accountTypeCache setObject:v7 forKeyedSubscript:v6];
  }
}

- (void)cacheAllAccountTypes:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __44__ACAccountStoreCache_cacheAllAccountTypes___block_invoke;
  v9 = &unk_1E7975590;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = v7;
  os_unfair_lock_lock(&self->_accountTypeCacheLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_accountTypeCacheLock);
}

void __44__ACAccountStoreCache_cacheAllAccountTypes___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _lock_cacheAccountType:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  *(*(a1 + 40) + 8) = 1;
  v7 = *MEMORY[0x1E69E9840];
}

- (id)cachedAllAccountTypes
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__ACAccountStoreCache_cachedAllAccountTypes__block_invoke;
  v4[3] = &unk_1E7977158;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_2(&self->_accountTypeCacheLock, v4);

  return v2;
}

id __44__ACAccountStoreCache_cachedAllAccountTypes__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    v2 = objc_alloc(MEMORY[0x1E695DEC8]);
    v3 = [*(*(a1 + 32) + 16) allValues];
    v4 = [v2 initWithArray:v3 copyItems:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end