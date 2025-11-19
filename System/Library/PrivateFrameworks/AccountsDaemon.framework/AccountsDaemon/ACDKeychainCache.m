@interface ACDKeychainCache
- (ACDKeychainCache)initWithValidityDuration:(unsigned int)a3;
- (id)dataForService:(id)a3 username:(id)a4 syncState:(unint64_t)a5;
- (void)cacheData:(id)a3 forService:(id)a4 username:(id)a5 syncState:(unint64_t)a6;
- (void)clearCacheForSyncState:(unint64_t)a3;
- (void)clearDataForService:(id)a3 username:(id)a4 syncState:(unint64_t)a5;
@end

@implementation ACDKeychainCache

- (ACDKeychainCache)initWithValidityDuration:(unsigned int)a3
{
  v10.receiver = self;
  v10.super_class = ACDKeychainCache;
  v4 = [(ACDKeychainCache *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionary];
    cachesByUsername = v4->_cachesByUsername;
    v4->_cachesByUsername = v5;

    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    expirersByUsername = v4->_expirersByUsername;
    v4->_expirersByUsername = v7;

    *&v4->_cachesLock._os_unfair_lock_opaque = 0;
    v4->_cacheValidityDuration = a3;
  }

  return v4;
}

- (void)cacheData:(id)a3 forService:(id)a4 username:(id)a5 syncState:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__0;
  v34[4] = __Block_byref_object_dispose__0;
  v35 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v26 = __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke;
  v27 = &unk_27848BEB0;
  v32 = v34;
  v28 = self;
  v13 = v12;
  v29 = v13;
  v33 = a6;
  v14 = v10;
  v30 = v14;
  v15 = v11;
  v31 = v15;
  v16 = v25;
  os_unfair_lock_lock(&self->_cachesLock);
  v26(v16);
  os_unfair_lock_unlock(&self->_cachesLock);

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v20 = __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke_2;
  v21 = &unk_27848BF28;
  v22 = self;
  v17 = v13;
  v23 = v17;
  v24 = v34;
  v18 = v19;
  os_unfair_lock_lock(&self->_expirersLock);
  v20(v18);
  os_unfair_lock_unlock(&self->_expirersLock);

  _Block_object_dispose(v34, 8);
}

void __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachesByUsername];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = objc_opt_new();
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 32) cachesByUsername];
    v10 = [v9 mutableCopy];

    [v10 setObject:*(*(*(a1 + 64) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
    v11 = [v10 copy];
    [*(a1 + 32) setCachesByUsername:v11];
  }

  v12 = *(a1 + 72);
  if (v12 == 2)
  {
    v14 = [*(*(*(a1 + 64) + 8) + 40) nonSyncableItems];
    [v14 setObject:*(a1 + 48) forKey:*(a1 + 56)];

    goto LABEL_8;
  }

  if (v12 == 1)
  {
LABEL_8:
    v13 = [*(*(*(a1 + 64) + 8) + 40) syncableItems];
    goto LABEL_9;
  }

  if (v12)
  {
    return;
  }

  v13 = [*(*(*(a1 + 64) + 8) + 40) nonSyncableItems];
LABEL_9:
  v15 = v13;
  [v13 setObject:*(a1 + 48) forKey:*(a1 + 56)];
}

void __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) expirersByUsername];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v3 = [MEMORY[0x277CB8FB0] expirerWithTimeout:{objc_msgSend(*(a1 + 32), "cacheValidityDuration")}];
    v4 = [*(a1 + 32) expirersByUsername];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  objc_initWeak(&location, *(a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke_3;
  v7[3] = &unk_27848BF00;
  objc_copyWeak(&v10, &location);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [v3 scheduleExpiration:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v7 = __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke_4;
    v8 = &unk_27848BED8;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = v3;
    v10 = v4;
    v5 = v6;
    os_unfair_lock_lock(WeakRetained + 2);
    v7(v5);
    os_unfair_lock_unlock(WeakRetained + 2);
  }
}

void __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke_4(uint64_t a1)
{
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke_4_cold_1(a1, v2);
  }

  v3 = [*(*(*(a1 + 40) + 8) + 40) nonSyncableItems];
  [v3 removeAllObjects];

  v4 = [*(*(*(a1 + 40) + 8) + 40) syncableItems];
  [v4 removeAllObjects];
}

- (id)dataForService:(id)a3 username:(id)a4 syncState:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __54__ACDKeychainCache_dataForService_username_syncState___block_invoke;
  v17 = &unk_27848BF50;
  v18 = self;
  v10 = v9;
  v19 = v10;
  v21 = a5;
  v11 = v8;
  v20 = v11;
  v12 = v15;
  os_unfair_lock_lock(&self->_cachesLock);
  v13 = v16(v12);
  os_unfair_lock_unlock(&self->_cachesLock);

  return v13;
}

id __54__ACDKeychainCache_dataForService_username_syncState___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) cachesByUsername];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 56);
  if (v5 == 2)
  {
    v8 = [v4 nonSyncableItems];
    v7 = [v8 objectForKey:*(a1 + 48)];

    v9 = [v4 syncableItems];
    v10 = [v9 objectForKey:*(a1 + 48)];

    v11 = [MEMORY[0x277CBEB68] null];
    v12 = v11;
    if (v7 == v11)
    {
    }

    else
    {
      v13 = [MEMORY[0x277CBEB68] null];

      if (v10 != v13)
      {
        if (v7)
        {
          v14 = v7;
        }

        else
        {
          v14 = v10;
        }

        v15 = v14;
        goto LABEL_13;
      }
    }

    v16 = [MEMORY[0x277CBEB68] null];
    v17 = v16;
    if (v7 == v16)
    {
      v18 = [MEMORY[0x277CBEB68] null];

      if (v10 == v18)
      {
        v15 = [MEMORY[0x277CBEB68] null];
LABEL_13:
        v1 = v15;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
    }

    v1 = 0;
    goto LABEL_19;
  }

  if (v5 == 1)
  {
    v6 = [v4 syncableItems];
  }

  else
  {
    if (v5)
    {
      goto LABEL_21;
    }

    v6 = [v4 nonSyncableItems];
  }

  v7 = v6;
  v1 = [v6 objectForKey:*(a1 + 48)];
LABEL_20:

LABEL_21:

  return v1;
}

- (void)clearDataForService:(id)a3 username:(id)a4 syncState:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = __59__ACDKeychainCache_clearDataForService_username_syncState___block_invoke;
  v15 = &unk_27848BE10;
  v16 = self;
  v10 = v9;
  v17 = v10;
  v19 = a5;
  v11 = v8;
  v18 = v11;
  v12 = v13;
  os_unfair_lock_lock(&self->_cachesLock);
  v14(v12);
  os_unfair_lock_unlock(&self->_cachesLock);
}

void __59__ACDKeychainCache_clearDataForService_username_syncState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachesByUsername];
  v9 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = *(a1 + 56);
  if (v3 == 2)
  {
    v7 = [v9 nonSyncableItems];
    v8 = *(a1 + 48);
    v6 = (a1 + 48);
    [v7 removeObjectForKey:v8];

    v5 = [v9 syncableItems];
  }

  else
  {
    if (v3 == 1)
    {
      v4 = [v9 syncableItems];
    }

    else
    {
      if (v3)
      {
        goto LABEL_9;
      }

      v4 = [v9 nonSyncableItems];
    }

    v5 = v4;
    v6 = (a1 + 48);
  }

  [v5 removeObjectForKey:*v6];

LABEL_9:
}

- (void)clearCacheForSyncState:(unint64_t)a3
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __43__ACDKeychainCache_clearCacheForSyncState___block_invoke;
  v12 = &unk_27848BD20;
  v13 = self;
  v14 = a3;
  v4 = v10;
  os_unfair_lock_lock(&self->_cachesLock);
  v11(v4);
  os_unfair_lock_unlock(&self->_cachesLock);

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __43__ACDKeychainCache_clearCacheForSyncState___block_invoke_2;
  v8 = &unk_27848BF78;
  v9 = self;
  v5 = v6;
  os_unfair_lock_lock(&self->_expirersLock);
  v7(v5);
  os_unfair_lock_unlock(&self->_expirersLock);
}

void __43__ACDKeychainCache_clearCacheForSyncState___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) cachesByUsername];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        if (v9 == 2)
        {
          v11 = [*(*(&v14 + 1) + 8 * v7) nonSyncableItems];
          [v11 removeAllObjects];

LABEL_11:
          v10 = [v8 syncableItems];
          goto LABEL_12;
        }

        if (v9 == 1)
        {
          goto LABEL_11;
        }

        if (v9)
        {
          goto LABEL_13;
        }

        v10 = [*(*(&v14 + 1) + 8 * v7) nonSyncableItems];
LABEL_12:
        v12 = v10;
        [v10 removeAllObjects];

LABEL_13:
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __43__ACDKeychainCache_clearCacheForSyncState___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) expirersByUsername];
  [v1 removeAllObjects];
}

void __60__ACDKeychainCache_cacheData_forService_username_syncState___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ACHashedString();
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_221D2F000, a2, OS_LOG_TYPE_DEBUG, "@Clearing keychain cache for %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end