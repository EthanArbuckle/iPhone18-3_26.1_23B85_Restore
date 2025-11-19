@interface ACCredentialCache
+ (BOOL)_cacheEnabled;
+ (id)_credentialKeyForAccount:(id)a3 serviceID:(id)a4;
- (ACCredentialCache)initWithValidityDuration:(unsigned int)a3;
- (id)cachedCredentialForAccount:(id)a3 serviceID:(id)a4;
- (void)_clearAllCaches;
- (void)cacheCredential:(id)a3 forAccount:(id)a4 serviceID:(id)a5;
- (void)clearCachedCredentialsForAccount:(id)a3;
- (void)clearCachedCredentialsForAccountID:(id)a3;
@end

@implementation ACCredentialCache

- (void)_clearAllCaches
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __36__ACCredentialCache__clearAllCaches__block_invoke;
  v11 = &unk_1E7975AD8;
  v12 = self;
  v3 = v9;
  os_unfair_lock_lock(&self->_credentialCacheLock);
  v10(v3);
  os_unfair_lock_unlock(&self->_credentialCacheLock);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __36__ACCredentialCache__clearAllCaches__block_invoke_2;
  v7 = &unk_1E7975AD8;
  v8 = self;
  v4 = v5;
  os_unfair_lock_lock(&self->_expirersLock);
  v6(v4);
  os_unfair_lock_unlock(&self->_expirersLock);
}

void __36__ACCredentialCache__clearAllCaches__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cachedCredentials];
  [v1 removeAllObjects];
}

void __36__ACCredentialCache__clearAllCaches__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) expirersByCredentialKey];
  [v1 removeAllObjects];
}

+ (BOOL)_cacheEnabled
{
  if (__credentialCacheEnabled)
  {
    return 1;
  }

  if (ACIsAccountsd())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (ACCredentialCache)initWithValidityDuration:(unsigned int)a3
{
  v12.receiver = self;
  v12.super_class = ACCredentialCache;
  v4 = [(ACCredentialCache *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_validityDuration = a3;
    v4->_credentialCacheLock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedCredentials = v5->_cachedCredentials;
    v5->_cachedCredentials = v6;

    v5->_expirersLock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    expirersByCredentialKey = v5->_expirersByCredentialKey;
    v5->_expirersByCredentialKey = v8;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, __handleKeyagFirstUnlocked, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDrop);
  }

  return v5;
}

- (id)cachedCredentialForAccount:(id)a3 serviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[ACCredentialCache _cacheEnabled])
  {
    v8 = [v6 identifier];

    if (v8)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v12 = __58__ACCredentialCache_cachedCredentialForAccount_serviceID___block_invoke;
      v13 = &unk_1E7977898;
      v14 = self;
      v15 = v6;
      v16 = v7;
      v9 = v11;
      os_unfair_lock_lock(&self->_credentialCacheLock);
      v8 = v12(v9);
      os_unfair_lock_unlock(&self->_credentialCacheLock);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __58__ACCredentialCache_cachedCredentialForAccount_serviceID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedCredentials];
  v3 = [ACCredentialCache _credentialKeyForAccount:*(a1 + 40) serviceID:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 copy];

  return v5;
}

- (void)cacheCredential:(id)a3 forAccount:(id)a4 serviceID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[ACCredentialCache _cacheEnabled])
  {
    v11 = [v9 identifier];

    if (v11)
    {
      v12 = [ACCredentialCache _credentialKeyForAccount:v9 serviceID:v10];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v23 = __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke;
      v24 = &unk_1E7975540;
      v25 = self;
      v13 = v12;
      v26 = v13;
      v27 = v8;
      v14 = v22;
      os_unfair_lock_lock(&self->_credentialCacheLock);
      v23(v14);
      os_unfair_lock_unlock(&self->_credentialCacheLock);

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v18 = __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke_2;
      v19 = &unk_1E7975590;
      v20 = self;
      v15 = v13;
      v21 = v15;
      v16 = v17;
      os_unfair_lock_lock(&self->_expirersLock);
      v18(v16);
      os_unfair_lock_unlock(&self->_expirersLock);
    }
  }
}

void __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 48) copy];
  v2 = [*(a1 + 32) cachedCredentials];
  [v2 setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

void __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) expirersByCredentialKey];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v3 = [ACTimedExpirer expirerWithTimeout:*(*(a1 + 32) + 8)];
    v4 = [*(a1 + 32) expirersByCredentialKey];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  objc_initWeak(&location, *(a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke_3;
  v5[3] = &unk_1E7975518;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  [v3 scheduleExpiration:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v6 = __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke_4;
    v7 = &unk_1E7975590;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v4 = v5;
    os_unfair_lock_lock(v3 + 3);
    v6(v4);
    os_unfair_lock_unlock(v3 + 3);
  }
}

void __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedCredentials];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)clearCachedCredentialsForAccount:(id)a3
{
  v4 = [a3 identifier];
  [(ACCredentialCache *)self clearCachedCredentialsForAccountID:v4];
}

- (void)clearCachedCredentialsForAccountID:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __56__ACCredentialCache_clearCachedCredentialsForAccountID___block_invoke;
  v9 = &unk_1E7975590;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_credentialCacheLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_credentialCacheLock);
}

void __56__ACCredentialCache_clearCachedCredentialsForAccountID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) cachedCredentials];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __56__ACCredentialCache_clearCachedCredentialsForAccountID___block_invoke_2;
  v9 = &unk_1E79778C0;
  v10 = *(a1 + 40);
  v11 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:&v6];

  v5 = [*(a1 + 32) cachedCredentials];
  [v5 removeObjectsForKeys:v4];
}

void __56__ACCredentialCache_clearCachedCredentialsForAccountID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsString:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

+ (id)_credentialKeyForAccount:(id)a3 serviceID:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [v8 mutableCopy];

  v10 = [v5 accountType];
  v11 = [v10 identifier];
  if ([v11 isEqualToString:@"com.apple.account.CloudKit"])
  {
    v12 = [v5 parentAccount];

    if (!v12)
    {
      goto LABEL_5;
    }

    v10 = [v5 parentAccount];
    v11 = [v10 identifier];
    [v9 addObject:v11];
  }

LABEL_5:
  if (v6)
  {
    [v9 addObject:v6];
  }

  v13 = [v9 componentsJoinedByString:@"."];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end