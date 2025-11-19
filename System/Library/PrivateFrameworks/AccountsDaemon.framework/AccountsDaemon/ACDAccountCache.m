@interface ACDAccountCache
- (ACDAccountCache)initWithValidityDuration:(unsigned int)a3;
- (id)_keyForType:(id)a3 justActive:(BOOL)a4;
- (id)_lock_nonCopyOfAccountWithIdentifier:(id)a3;
- (id)_lock_writerForKey:(id)a3;
- (id)cachedAccountForIdentifier:(id)a3;
- (id)cachedAccountTypeForID:(id)a3;
- (id)cachedAccountsOfType:(id)a3 justActive:(BOOL)a4 fetchBlock:(id)a5;
- (void)_clearCacheIncludingRemote:(BOOL)a3;
- (void)_expirerScheduleForAccountIdentifier:(id)a3;
- (void)_lock_cacheAccount:(id)a3;
- (void)_lock_cacheAccountCopy:(id)a3;
- (void)_lock_cacheGenerationForAccounts:(id)a3 cacheSuffix:(id)a4;
- (void)_lock_cacheParent:(id)a3;
- (void)_lock_removeAccountsForType:(id)a3;
- (void)_lock_resetAllAccountTypeIdentifiers;
- (void)_lock_resetCacheGenerationsForChildren:(id)a3 recurseDepth:(unint64_t)a4 store:(id)a5;
- (void)_lock_resetGenerationForType:(id)a3;
- (void)_resetParentAccountForCachedAccountIfNeeded:(id)a3;
- (void)cacheAccount:(id)a3;
- (void)cacheAccountType:(id)a3;
- (void)cacheAccounts:(id)a3 forType:(id)a4 justActive:(BOOL)a5;
- (void)cacheGenerationForAccounts:(id)a3 cacheSuffix:(id)a4;
- (void)removeAccount:(id)a3 store:(id)a4;
- (void)removeAccountType:(id)a3;
- (void)setupMemoryNotifications;
@end

@implementation ACDAccountCache

- (ACDAccountCache)initWithValidityDuration:(unsigned int)a3
{
  v16.receiver = self;
  v16.super_class = ACDAccountCache;
  v4 = [(ACDAccountCache *)&v16 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:20];
    cachedAccountsByID = v4->_cachedAccountsByID;
    v4->_cachedAccountsByID = v5;

    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    cachedAccountIDsByType = v4->_cachedAccountIDsByType;
    v4->_cachedAccountIDsByType = v7;

    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:20];
    cachedAccountTypesByID = v4->_cachedAccountTypesByID;
    v4->_cachedAccountTypesByID = v9;

    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    expirersByID = v4->_expirersByID;
    v4->_expirersByID = v11;

    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    generationWritersByKey = v4->_generationWritersByKey;
    v4->_generationWritersByKey = v13;

    *&v4->_cachesLock._os_unfair_lock_opaque = 0;
    v4->_cacheValidityDuration = a3;
    [(ACDAccountCache *)v4 setupMemoryNotifications];
  }

  return v4;
}

- (void)setupMemoryNotifications
{
  v3 = dispatch_get_global_queue(17, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D18], 0, 0x36uLL, v3);
  memoryNotificationSource = self->_memoryNotificationSource;
  self->_memoryNotificationSource = v4;

  objc_initWeak(&location, self);
  v6 = self->_memoryNotificationSource;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ACDAccountCache_setupMemoryNotifications__block_invoke;
  v7[3] = &unk_27848BFC8;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v6, v7);
  dispatch_resume(self->_memoryNotificationSource);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __43__ACDAccountCache_setupMemoryNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearCacheIncludingRemote:0];
}

- (void)cacheAccount:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __32__ACDAccountCache_cacheAccount___block_invoke;
  v9 = &unk_27848BFF0;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_cachesLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_cachesLock);
}

- (void)_lock_cacheAccount:(id)a3
{
  v4 = [a3 copy];
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = [v4 parentAccount];

    if (v6)
    {
      v7 = [v4 parentAccount];
      [(ACDAccountCache *)self _lock_cacheParent:v7];
    }

    [(ACDAccountCache *)self _lock_cacheAccountCopy:v4];
  }

  else
  {
    v8 = _ACLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountCache *)v4 _lock_cacheAccount:v8];
    }
  }
}

- (void)_expirerScheduleForAccountIdentifier:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __56__ACDAccountCache__expirerScheduleForAccountIdentifier___block_invoke;
  v9 = &unk_27848BFF0;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_expirersLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_expirersLock);
}

void __56__ACDAccountCache__expirerScheduleForAccountIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) expirersByID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v3 = [MEMORY[0x277CB8FB0] expirerWithTimeout:{objc_msgSend(*(a1 + 32), "cacheValidityDuration")}];
    v4 = [*(a1 + 32) expirersByID];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  objc_initWeak(&location, *(a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ACDAccountCache__expirerScheduleForAccountIdentifier___block_invoke_2;
  v5[3] = &unk_27848C018;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  [v3 scheduleExpiration:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __56__ACDAccountCache__expirerScheduleForAccountIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v6 = __56__ACDAccountCache__expirerScheduleForAccountIdentifier___block_invoke_3;
    v7 = &unk_27848BFF0;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v4 = v5;
    os_unfair_lock_lock(v3 + 2);
    v6(v4);
    os_unfair_lock_unlock(v3 + 2);
  }
}

void __56__ACDAccountCache__expirerScheduleForAccountIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedAccountsByID];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)_lock_cacheParent:(id)a3
{
  v9 = a3;
  v4 = [(ACDAccountCache *)self cachedAccountsByID];
  v5 = [v9 identifier];
  [v4 setObject:v9 forKey:v5];

  v6 = [v9 identifier];
  [(ACDAccountCache *)self _expirerScheduleForAccountIdentifier:v6];

  v7 = [v9 parentAccount];

  if (v7)
  {
    v8 = [v9 parentAccount];
    [(ACDAccountCache *)self _lock_cacheParent:v8];
  }
}

- (void)_lock_cacheAccountCopy:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACDAccountCache *)self cachedAccountsByID];
  v6 = [v4 identifier];
  [v5 setObject:v4 forKey:v6];

  v7 = [v4 identifier];
  [(ACDAccountCache *)self _expirerScheduleForAccountIdentifier:v7];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = self;
  v8 = [(ACDAccountCache *)self cachedAccountsByID];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 parentAccount];
        v16 = [v15 identifier];
        v17 = [v4 identifier];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          [v14 _resetParentAccount:v4];
          [(ACDAccountCache *)v20 _lock_cacheAccountCopy:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)cachedAccountForIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__ACDAccountCache_cachedAccountForIdentifier___block_invoke;
  v8[3] = &unk_27848C040;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = ac_unfair_lock_perform_with_result(&self->_cachesLock, v8);

  return v6;
}

id __46__ACDAccountCache_cachedAccountForIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _lock_nonCopyOfAccountWithIdentifier:*(a1 + 40)];
  v2 = [v1 copy];

  return v2;
}

- (id)_lock_nonCopyOfAccountWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ACDAccountCache *)self cachedAccountsByID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)_keyForType:(id)a3 justActive:(BOOL)a4
{
  v4 = @"all";
  if (a4)
  {
    v4 = @"active";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", a3, v4];
}

- (void)cacheAccounts:(id)a3 forType:(id)a4 justActive:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = __52__ACDAccountCache_cacheAccounts_forType_justActive___block_invoke;
  v15 = &unk_27848C068;
  v16 = self;
  v10 = v8;
  v17 = v10;
  v11 = v9;
  v18 = v11;
  v19 = a5;
  v12 = v13;
  os_unfair_lock_lock(&self->_cachesLock);
  v14(v12);
  os_unfair_lock_unlock(&self->_cachesLock);
}

void __65__ACDAccountCache__caches_lock_cacheAccounts_forType_justActive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) expirersByID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v3 = [MEMORY[0x277CB8FB0] expirerWithTimeout:{objc_msgSend(*(a1 + 32), "cacheValidityDuration")}];
    v4 = [*(a1 + 32) expirersByID];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 48)];
  }

  objc_initWeak(&location, *(a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ACDAccountCache__caches_lock_cacheAccounts_forType_justActive___block_invoke_2;
  v5[3] = &unk_27848C090;
  objc_copyWeak(&v7, &location);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 scheduleExpiration:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __65__ACDAccountCache__caches_lock_cacheAccounts_forType_justActive___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v6 = __65__ACDAccountCache__caches_lock_cacheAccounts_forType_justActive___block_invoke_3;
    v7 = &unk_27848BFF0;
    v3 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = v3;
    v4 = v5;
    os_unfair_lock_lock(WeakRetained + 2);
    v6(v4);
    os_unfair_lock_unlock(WeakRetained + 2);
  }
}

void __65__ACDAccountCache__caches_lock_cacheAccounts_forType_justActive___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedAccountIDsByType];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (id)cachedAccountsOfType:(id)a3 justActive:(BOOL)a4 fetchBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__ACDAccountCache_cachedAccountsOfType_justActive_fetchBlock___block_invoke;
  v14[3] = &unk_27848C0E0;
  v14[4] = self;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = ac_unfair_lock_perform_with_result(&self->_cachesLock, v14);

  return v12;
}

id __62__ACDAccountCache_cachedAccountsOfType_justActive_fetchBlock___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _keyForType:*(a1 + 40) justActive:*(a1 + 56)];
  v3 = [*(a1 + 32) cachedAccountIDsByType];
  v4 = [v3 objectForKeyedSubscript:v2];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = [*(a1 + 32) cachedAccountsByID];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (!v13)
        {
          break;
        }

        [v5 addObject:v13];

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v14 = [v5 count];
    if (v14 == [v6 count])
    {
      v15 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5 copyItems:1];

      if (v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = (*(v16 + 16))();
    [*(a1 + 32) _caches_lock_cacheAccounts:v17 forType:*(a1 + 40) justActive:*(a1 + 56)];
    v15 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v17 copyItems:1];
  }

  else
  {
    v15 = 0;
  }

LABEL_17:

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_lock_removeAccountsForType:(id)a3
{
  v8 = a3;
  v4 = [(ACDAccountCache *)self cachedAccountIDsByType];
  v5 = [(ACDAccountCache *)self _keyForType:v8 justActive:1];
  [v4 removeObjectForKey:v5];

  v6 = [(ACDAccountCache *)self cachedAccountIDsByType];
  v7 = [(ACDAccountCache *)self _keyForType:v8 justActive:0];
  [v6 removeObjectForKey:v7];

  [(ACDAccountCache *)self _lock_resetGenerationForType:v8];
}

- (void)cacheAccountType:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = [v5 identifier];
  v7 = [(ACDAccountCache *)self _expirerIdentifierForAccountTypeID:v6];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v20 = __36__ACDAccountCache_cacheAccountType___block_invoke;
  v21 = &unk_27848BFF0;
  v22 = self;
  v8 = v5;
  v23 = v8;
  v9 = v19;
  os_unfair_lock_lock(&self->_cachesLock);
  v20(v9);
  os_unfair_lock_unlock(&self->_cachesLock);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = __36__ACDAccountCache_cacheAccountType___block_invoke_2;
  v15 = &unk_27848C0B8;
  v16 = self;
  v10 = v7;
  v17 = v10;
  v11 = v8;
  v18 = v11;
  v12 = v13;
  os_unfair_lock_lock(&self->_expirersLock);
  v14(v12);
  os_unfair_lock_unlock(&self->_expirersLock);
}

void __36__ACDAccountCache_cacheAccountType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) cachedAccountTypesByID];
  v3 = [*(a1 + 40) identifier];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

void __36__ACDAccountCache_cacheAccountType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) expirersByID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v3 = [MEMORY[0x277CB8FB0] expirerWithTimeout:{objc_msgSend(*(a1 + 32), "cacheValidityDuration")}];
    v4 = [*(a1 + 32) expirersByID];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  objc_initWeak(&location, *(a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__ACDAccountCache_cacheAccountType___block_invoke_3;
  v5[3] = &unk_27848C090;
  objc_copyWeak(&v7, &location);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v3 scheduleExpiration:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __36__ACDAccountCache_cacheAccountType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v6 = __36__ACDAccountCache_cacheAccountType___block_invoke_4;
    v7 = &unk_27848BFF0;
    v3 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = v3;
    v4 = v5;
    os_unfair_lock_lock(WeakRetained + 2);
    v6(v4);
    os_unfair_lock_unlock(WeakRetained + 2);
  }
}

void __36__ACDAccountCache_cacheAccountType___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) cachedAccountTypesByID];
  v2 = [*(a1 + 40) identifier];
  [v3 removeObjectForKey:v2];
}

- (id)cachedAccountTypeForID:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ACDAccountCache_cachedAccountTypeForID___block_invoke;
  v8[3] = &unk_27848C040;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = ac_unfair_lock_perform_with_result(&self->_cachesLock, v8);

  return v6;
}

id __42__ACDAccountCache_cachedAccountTypeForID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedAccountTypesByID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 copy];

  return v4;
}

- (void)removeAccountType:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __37__ACDAccountCache_removeAccountType___block_invoke;
  v9 = &unk_27848BFF0;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_cachesLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_cachesLock);
}

uint64_t __37__ACDAccountCache_removeAccountType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedAccountTypesByID];
  v3 = [*(a1 + 40) identifier];
  [v2 removeObjectForKey:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) identifier];
  [v4 _lock_removeAccountsForType:v5];

  v6 = [*(a1 + 32) cachedAccountsByID];
  [v6 removeAllObjects];

  v7 = *(a1 + 32);

  return [v7 _lock_resetAllAccountTypeIdentifiers];
}

- (void)removeAccount:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __39__ACDAccountCache_removeAccount_store___block_invoke;
  v13 = &unk_27848C0B8;
  v14 = self;
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = v11;
  os_unfair_lock_lock(&self->_cachesLock);
  v12(v10);
  os_unfair_lock_unlock(&self->_cachesLock);
}

void __39__ACDAccountCache_removeAccount_store___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cachedAccountsByID];
  v3 = [*(a1 + 40) identifier];
  [v2 removeObjectForKey:v3];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [*(a1 + 32) cachedAccountsByID];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 parentAccount];
        v12 = [v11 identifier];
        v13 = [*(a1 + 40) identifier];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v15 = [*(a1 + 32) cachedAccountsByID];
          v16 = [v10 identifier];
          [v15 removeObjectForKey:v16];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) accountType];
  v19 = [v18 identifier];
  [v17 _lock_removeAccountsForType:v19];

  v20 = *(a1 + 48);
  v21 = [*(a1 + 40) identifier];
  v22 = [v20 _childAccountsForAccountWithID:v21];

  [*(a1 + 32) _lock_resetCacheGenerationsForChildren:v22 recurseDepth:1 store:*(a1 + 48)];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_clearCacheIncludingRemote:(BOOL)a3
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v13 = __46__ACDAccountCache__clearCacheIncludingRemote___block_invoke;
  v14 = &unk_27848BF78;
  v15 = self;
  v5 = v12;
  os_unfair_lock_lock(&self->_expirersLock);
  v13(v5);
  os_unfair_lock_unlock(&self->_expirersLock);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __46__ACDAccountCache__clearCacheIncludingRemote___block_invoke_2;
  v9 = &unk_27848C108;
  v10 = self;
  v11 = a3;
  v6 = v7;
  os_unfair_lock_lock(&self->_cachesLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_cachesLock);
}

void __46__ACDAccountCache__clearCacheIncludingRemote___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) expirersByID];
  [v1 removeAllObjects];
}

void __46__ACDAccountCache__clearCacheIncludingRemote___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedAccountsByID];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) cachedAccountIDsByType];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) cachedAccountTypesByID];
  [v4 removeAllObjects];

  if (*(a1 + 40) == 1)
  {
    v5 = *(a1 + 32);

    [v5 _lock_resetAllAccountTypeIdentifiers];
  }
}

- (void)_resetParentAccountForCachedAccountIfNeeded:(id)a3
{
  v9 = a3;
  v4 = [v9 parentAccount];

  if (v4)
  {
    v5 = [(ACDAccountCache *)self cachedAccountsByID];
    v6 = [v9 parentAccount];
    v7 = [v6 identifier];
    v8 = [v5 objectForKeyedSubscript:v7];

    if (v8)
    {
      [v9 _resetParentAccount:v8];
    }
  }
}

- (void)cacheGenerationForAccounts:(id)a3 cacheSuffix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __58__ACDAccountCache_cacheGenerationForAccounts_cacheSuffix___block_invoke;
  v13 = &unk_27848C0B8;
  v14 = self;
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  v10 = v11;
  os_unfair_lock_lock(&self->_cachesLock);
  v12(v10);
  os_unfair_lock_unlock(&self->_cachesLock);
}

- (id)_lock_writerForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACDAccountCache *)self generationWritersByKey];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CB8F90]) initWithKey:v4];
      v8 = [(ACDAccountCache *)self generationWritersByKey];
      [v8 setObject:v7 forKeyedSubscript:v4];
    }

    v9 = [(ACDAccountCache *)self generationWritersByKey];
    v10 = [v9 objectForKeyedSubscript:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_lock_cacheGenerationForAccounts:(id)a3 cacheSuffix:(id)a4
{
  v6 = MEMORY[0x277CB8F88];
  v7 = a3;
  v10 = [v6 cacheKeyForSuffix:a4];
  v8 = [(ACDAccountCache *)self _lock_writerForKey:v10];
  v9 = [MEMORY[0x277CB8F88] generationForAccounts:v7];

  [v8 write:v9];
}

- (void)_lock_resetCacheGenerationsForChildren:(id)a3 recurseDepth:(unint64_t)a4 store:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4 <= 0xA)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 accountType];
          v16 = [v15 identifier];
          [(ACDAccountCache *)self _lock_resetGenerationForType:v16];

          v17 = [v14 identifier];
          v18 = [v9 _childAccountsForAccountWithID:v17];

          if ([v18 count])
          {
            [(ACDAccountCache *)self _lock_resetCacheGenerationsForChildren:v18 recurseDepth:a4 + 1 store:v9];
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_lock_resetAllAccountTypeIdentifiers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [MEMORY[0x277CB8F58] allIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(ACDAccountCache *)self _lock_resetGenerationForType:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_lock_resetGenerationForType:(id)a3
{
  v4 = MEMORY[0x277CB8F88];
  v5 = a3;
  v6 = [v4 suffixForAccountsForAccountType:v5 fetchOptions:0];
  v12 = [v4 cacheKeyForSuffix:v6];

  v7 = [(ACDAccountCache *)self _lock_writerForKey:v12];
  [v7 write:{objc_msgSend(MEMORY[0x277CB8F88], "generationForAccounts:", 0)}];

  v8 = MEMORY[0x277CB8F88];
  v9 = [MEMORY[0x277CB8F88] suffixForAccountsForAccountType:v5 fetchOptions:1];

  v10 = [v8 cacheKeyForSuffix:v9];

  v11 = [(ACDAccountCache *)self _lock_writerForKey:v10];
  [v11 write:{objc_msgSend(MEMORY[0x277CB8F88], "generationForAccounts:", 0)}];
}

- (void)_lock_cacheAccount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "ACDAccountCache just ran into an account (%@) missing an identifier, not caching it", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end