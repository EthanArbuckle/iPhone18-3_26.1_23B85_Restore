@interface ACCredentialCache
+ (BOOL)_cacheEnabled;
+ (id)_credentialKeyForAccount:(id)account serviceID:(id)d;
- (ACCredentialCache)initWithValidityDuration:(unsigned int)duration;
- (id)cachedCredentialForAccount:(id)account serviceID:(id)d;
- (void)_clearAllCaches;
- (void)cacheCredential:(id)credential forAccount:(id)account serviceID:(id)d;
- (void)clearCachedCredentialsForAccount:(id)account;
- (void)clearCachedCredentialsForAccountID:(id)d;
@end

@implementation ACCredentialCache

- (void)_clearAllCaches
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __36__ACCredentialCache__clearAllCaches__block_invoke;
  v11 = &unk_1E7975AD8;
  selfCopy = self;
  v3 = v9;
  os_unfair_lock_lock(&self->_credentialCacheLock);
  v10(v3);
  os_unfair_lock_unlock(&self->_credentialCacheLock);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __36__ACCredentialCache__clearAllCaches__block_invoke_2;
  v7 = &unk_1E7975AD8;
  selfCopy2 = self;
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

- (ACCredentialCache)initWithValidityDuration:(unsigned int)duration
{
  v12.receiver = self;
  v12.super_class = ACCredentialCache;
  v4 = [(ACCredentialCache *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_validityDuration = duration;
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

- (id)cachedCredentialForAccount:(id)account serviceID:(id)d
{
  accountCopy = account;
  dCopy = d;
  if (+[ACCredentialCache _cacheEnabled])
  {
    identifier = [accountCopy identifier];

    if (identifier)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v12 = __58__ACCredentialCache_cachedCredentialForAccount_serviceID___block_invoke;
      v13 = &unk_1E7977898;
      selfCopy = self;
      v15 = accountCopy;
      v16 = dCopy;
      v9 = v11;
      os_unfair_lock_lock(&self->_credentialCacheLock);
      identifier = v12(v9);
      os_unfair_lock_unlock(&self->_credentialCacheLock);
    }
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

id __58__ACCredentialCache_cachedCredentialForAccount_serviceID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedCredentials];
  v3 = [ACCredentialCache _credentialKeyForAccount:*(a1 + 40) serviceID:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 copy];

  return v5;
}

- (void)cacheCredential:(id)credential forAccount:(id)account serviceID:(id)d
{
  credentialCopy = credential;
  accountCopy = account;
  dCopy = d;
  if (+[ACCredentialCache _cacheEnabled])
  {
    identifier = [accountCopy identifier];

    if (identifier)
    {
      v12 = [ACCredentialCache _credentialKeyForAccount:accountCopy serviceID:dCopy];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v23 = __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke;
      v24 = &unk_1E7975540;
      selfCopy = self;
      v13 = v12;
      v26 = v13;
      v27 = credentialCopy;
      v14 = v22;
      os_unfair_lock_lock(&self->_credentialCacheLock);
      v23(v14);
      os_unfair_lock_unlock(&self->_credentialCacheLock);

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v18 = __58__ACCredentialCache_cacheCredential_forAccount_serviceID___block_invoke_2;
      v19 = &unk_1E7975590;
      selfCopy2 = self;
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

- (void)clearCachedCredentialsForAccount:(id)account
{
  identifier = [account identifier];
  [(ACCredentialCache *)self clearCachedCredentialsForAccountID:identifier];
}

- (void)clearCachedCredentialsForAccountID:(id)d
{
  dCopy = d;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __56__ACCredentialCache_clearCachedCredentialsForAccountID___block_invoke;
  v9 = &unk_1E7975590;
  selfCopy = self;
  v5 = dCopy;
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

+ (id)_credentialKeyForAccount:(id)account serviceID:(id)d
{
  v16[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  identifier = [accountCopy identifier];
  v16[0] = identifier;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [v8 mutableCopy];

  accountType = [accountCopy accountType];
  identifier2 = [accountType identifier];
  if ([identifier2 isEqualToString:@"com.apple.account.CloudKit"])
  {
    parentAccount = [accountCopy parentAccount];

    if (!parentAccount)
    {
      goto LABEL_5;
    }

    accountType = [accountCopy parentAccount];
    identifier2 = [accountType identifier];
    [v9 addObject:identifier2];
  }

LABEL_5:
  if (dCopy)
  {
    [v9 addObject:dCopy];
  }

  v13 = [v9 componentsJoinedByString:@"."];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end