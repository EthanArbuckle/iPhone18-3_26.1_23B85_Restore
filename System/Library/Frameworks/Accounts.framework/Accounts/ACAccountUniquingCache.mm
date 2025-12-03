@interface ACAccountUniquingCache
+ (id)sharedUniqueCache;
- (ACAccountUniquingCache)init;
- (BOOL)_lock_hydrateParentChain:(id)chain;
- (id)cachedAccountsByIdentifiers:(id)identifiers;
- (void)_lock_cacheParentChain:(id)chain;
- (void)_lock_clearParentChains:(id)chains;
- (void)cacheAccounts:(id)accounts;
- (void)clearAccountsByIdentifiers:(id)identifiers;
@end

@implementation ACAccountUniquingCache

+ (id)sharedUniqueCache
{
  if (sharedUniqueCache_onceToken != -1)
  {
    +[ACAccountUniquingCache sharedUniqueCache];
  }

  v3 = sharedUniqueCache__sharedUniqueCache;

  return v3;
}

uint64_t __43__ACAccountUniquingCache_sharedUniqueCache__block_invoke()
{
  sharedUniqueCache__sharedUniqueCache = objc_alloc_init(ACAccountUniquingCache);

  return MEMORY[0x1EEE66BB8]();
}

- (ACAccountUniquingCache)init
{
  v7.receiver = self;
  v7.super_class = ACAccountUniquingCache;
  v2 = [(ACAccountUniquingCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_uniqueCachedAccountsLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedAccounts = v3->_cachedAccounts;
    v3->_cachedAccounts = v4;
  }

  return v3;
}

- (void)cacheAccounts:(id)accounts
{
  accountsCopy = accounts;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __40__ACAccountUniquingCache_cacheAccounts___block_invoke;
  v9 = &unk_1E7975590;
  v5 = accountsCopy;
  v10 = v5;
  selfCopy = self;
  v6 = v7;
  os_unfair_lock_lock(&self->_uniqueCachedAccountsLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_uniqueCachedAccountsLock);
}

void __40__ACAccountUniquingCache_cacheAccounts___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [*(a1 + 40) _lock_cacheParentChain:{v7, v11}];
        v8 = *(*(a1 + 40) + 16);
        v9 = [v7 identifier];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_lock_cacheParentChain:(id)chain
{
  chainCopy = chain;
  parentAccount = [chainCopy parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [chainCopy parentAccount];
    [(ACAccountUniquingCache *)self _lock_cacheParentChain:parentAccount2];

    parentAccount3 = [chainCopy parentAccount];
    cachedAccounts = self->_cachedAccounts;
    identifier = [chainCopy identifier];
    [(NSMutableDictionary *)cachedAccounts setObject:parentAccount3 forKeyedSubscript:identifier];

    [chainCopy _cacheParentAccountID];
  }
}

- (id)cachedAccountsByIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __54__ACAccountUniquingCache_cachedAccountsByIdentifiers___block_invoke;
  v11 = &unk_1E7977180;
  v5 = identifiersCopy;
  v12 = v5;
  selfCopy = self;
  v6 = v9;
  os_unfair_lock_lock(&self->_uniqueCachedAccountsLock);
  v7 = v10(v6);
  os_unfair_lock_unlock(&self->_uniqueCachedAccountsLock);

  return v7;
}

id __54__ACAccountUniquingCache_cachedAccountsByIdentifiers___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:{v8, v15}];

        if (!v9)
        {
          goto LABEL_12;
        }

        v10 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v8];
        v11 = [v10 copy];

        if (([*(a1 + 40) _lock_hydrateParentChain:v11] & 1) == 0)
        {

LABEL_12:
          v12 = 0;
          goto LABEL_13;
        }

        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = [v2 copy];
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)_lock_hydrateParentChain:(id)chain
{
  chainCopy = chain;
  _cachedParentAccountID = [chainCopy _cachedParentAccountID];

  if (_cachedParentAccountID)
  {
    cachedAccounts = self->_cachedAccounts;
    _cachedParentAccountID2 = [chainCopy _cachedParentAccountID];
    v8 = [(NSMutableDictionary *)cachedAccounts objectForKeyedSubscript:_cachedParentAccountID2];

    if (v8)
    {
      v9 = self->_cachedAccounts;
      _cachedParentAccountID3 = [chainCopy _cachedParentAccountID];
      v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:_cachedParentAccountID3];
      v12 = [v11 copy];

      [chainCopy _resetParentAccount:v12];
      v13 = [(ACAccountUniquingCache *)self _lock_hydrateParentChain:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)clearAccountsByIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __53__ACAccountUniquingCache_clearAccountsByIdentifiers___block_invoke;
  v9 = &unk_1E7975590;
  v5 = identifiersCopy;
  v10 = v5;
  selfCopy = self;
  v6 = v7;
  os_unfair_lock_lock(&self->_uniqueCachedAccountsLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_uniqueCachedAccountsLock);
}

void __53__ACAccountUniquingCache_clearAccountsByIdentifiers___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:{v7, v12}];

        if (v8)
        {
          v9 = *(a1 + 40);
          v10 = [v9[2] objectForKeyedSubscript:v7];
          [v9 _lock_clearParentChains:v10];

          [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_lock_clearParentChains:(id)chains
{
  chainsCopy = chains;
  _cachedParentAccountID = [chainsCopy _cachedParentAccountID];

  if (_cachedParentAccountID)
  {
    cachedAccounts = self->_cachedAccounts;
    _cachedParentAccountID2 = [chainsCopy _cachedParentAccountID];
    v7 = [(NSMutableDictionary *)cachedAccounts objectForKeyedSubscript:_cachedParentAccountID2];
    [(ACAccountUniquingCache *)self _lock_clearParentChains:v7];

    v8 = self->_cachedAccounts;
    _cachedParentAccountID3 = [chainsCopy _cachedParentAccountID];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:_cachedParentAccountID3];
  }
}

@end