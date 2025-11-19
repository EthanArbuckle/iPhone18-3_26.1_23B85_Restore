@interface ACNotifyAccountCache
+ (id)cacheKeyForSuffix:(id)a3;
+ (id)suffixForAccountsForAccountType:(id)a3 fetchOptions:(unint64_t)a4;
+ (unint64_t)generationForAccounts:(id)a3;
+ (unsigned)_getUID;
- (ACNotifyAccountCache)initWithKey:(id)a3;
- (ACNotifyAccountCache)initWithKey:(id)a3 reader:(id)a4;
- (id)cachedAccounts;
- (unint64_t)generation;
- (void)_lock_clearCachedAccounts;
- (void)cacheAccounts:(id)a3;
- (void)clearCachedAccounts;
@end

@implementation ACNotifyAccountCache

+ (unsigned)_getUID
{
  if (_getUID_onceToken != -1)
  {
    +[ACNotifyAccountCache _getUID];
  }

  return _getUID__uid;
}

- (void)_lock_clearCachedAccounts
{
  v3 = +[ACAccountUniquingCache sharedUniqueCache];
  [v3 clearAccountsByIdentifiers:self->_cachedAccountIDs];

  cachedAccountIDs = self->_cachedAccountIDs;
  self->_cachedAccountIDs = 0;
}

- (id)cachedAccounts
{
  if (ACIsAccountsd())
  {
    v3 = 0;
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v7 = __38__ACNotifyAccountCache_cachedAccounts__block_invoke;
    v8 = &unk_1E7977158;
    v9 = self;
    v4 = v6;
    os_unfair_lock_lock(&self->_notifyAccountCacheLock);
    v3 = v7(v4);
    os_unfair_lock_unlock(&self->_notifyAccountCacheLock);
  }

  return v3;
}

id __38__ACNotifyAccountCache_cachedAccounts__block_invoke(uint64_t a1)
{
  v2 = +[ACAccountUniquingCache sharedUniqueCache];
  v3 = [v2 cachedAccountsByIdentifiers:*(*(a1 + 32) + 16)];

  v4 = [ACNotifyAccountCache generationForAccounts:v3];
  v5 = [*(a1 + 32) reader];
  v6 = [v5 currentValue];

  if (!v6)
  {
LABEL_2:
    [*(a1 + 32) _lock_clearCachedAccounts];
    v7 = 0;
    goto LABEL_11;
  }

  if (v6 == 1)
  {
    [*(a1 + 32) _lock_clearCachedAccounts];
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    v7 = MEMORY[0x1E695E0F0];
    *(v8 + 16) = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (v3)
    {
      v10 = v4 == v6;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_2;
    }

    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v3 copyItems:1];
  }

LABEL_11:

  return v7;
}

void __31__ACNotifyAccountCache__getUID__block_invoke()
{
  _getUID__uid = geteuid();
  if ((ACIsAccountsd() & 1) == 0 && !_getUID__uid)
  {
    v0 = +[ACAccountStore defaultStore];
    _getUID__uid = [v0 _uidOfAccountsd];
  }
}

+ (id)cacheKeyForSuffix:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToString:&stru_1F210E1C8] & 1) == 0)
  {
    v7 = __testCachePrefix;
    v8 = MEMORY[0x1E696AEC0];
    v9 = [a1 _getUID];
    if (v7)
    {
      v10 = @"com.apple.accounts.notify-generation.unit-tests.%u.%@";
    }

    else
    {
      v10 = @"com.apple.accounts.notify-generation.%u.%@";
    }

    v6 = [v8 stringWithFormat:v10, v9, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)generationForAccounts:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  v5 = 0;
  if (v3)
  {
    if ([v3 count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          v10 = 0;
          do
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v5 += [*(*(&v13 + 1) + 8 * v10++) notifyGenerationID];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v5 = 1;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)suffixForAccountsForAccountType:(id)a3 fetchOptions:(unint64_t)a4
{
  v4 = @"all";
  if ((a4 & 1) == 0)
  {
    v4 = @"active";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"account-type.%@.%@", a3, v4];
}

- (ACNotifyAccountCache)initWithKey:(id)a3 reader:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ACNotifyAccountCache;
  v8 = [(ACNotifyAccountCache *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(ACNotifyAccountCache *)v8 setKey:v6];
    [(ACNotifyAccountCache *)v9 setReader:v7];
    v9->_notifyAccountCacheLock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (ACNotifyAccountCache)initWithKey:(id)a3
{
  v4 = a3;
  v5 = [[ACNotifyReader alloc] initWithKey:v4 updateQueue:0 updateBlock:0];
  v6 = [(ACNotifyAccountCache *)self initWithKey:v4 reader:v5];

  return v6;
}

- (unint64_t)generation
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __34__ACNotifyAccountCache_generation__block_invoke;
  v8 = &unk_1E7977130;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_notifyAccountCacheLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_notifyAccountCacheLock);

  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __34__ACNotifyAccountCache_generation__block_invoke(uint64_t a1)
{
  v2 = +[ACAccountUniquingCache sharedUniqueCache];
  v7 = [v2 cachedAccountsByIdentifiers:*(*(a1 + 32) + 16)];

  v3 = [ACNotifyAccountCache generationForAccounts:v7];
  v4 = [*(a1 + 32) reader];
  *(*(*(a1 + 40) + 8) + 24) = [v4 currentValue];

  if (v3 != *(*(*(a1 + 40) + 8) + 24))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }
}

- (void)cacheAccounts:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __38__ACNotifyAccountCache_cacheAccounts___block_invoke;
  v9 = &unk_1E7975590;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = v7;
  os_unfair_lock_lock(&self->_notifyAccountCacheLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_notifyAccountCacheLock);
}

void __38__ACNotifyAccountCache_cacheAccounts___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [ACNotifyAccountCache generationForAccounts:*(a1 + 32)];
  v3 = [*(a1 + 40) reader];
  v4 = [v3 currentValue];

  if (v4 == v2)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(a1 + 32) copyItems:1];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          [v11 _clearCachedCredentials];
          [v11 _clearCachedChildAccounts];
          [v11 _clearCachedTrackedSets];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v12 = +[ACAccountUniquingCache sharedUniqueCache];
    [v12 cacheAccounts:v6];

    v13 = [v6 valueForKey:@"identifier"];
    v14 = *(a1 + 40);
    v15 = *(v14 + 16);
    *(v14 + 16) = v13;

    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v17 = *(a1 + 40);
    v18 = *MEMORY[0x1E69E9840];

    [v17 _lock_clearCachedAccounts];
  }
}

- (void)clearCachedAccounts
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __43__ACNotifyAccountCache_clearCachedAccounts__block_invoke;
  v6 = &unk_1E7975AD8;
  v7 = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_notifyAccountCacheLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_notifyAccountCacheLock);
}

@end