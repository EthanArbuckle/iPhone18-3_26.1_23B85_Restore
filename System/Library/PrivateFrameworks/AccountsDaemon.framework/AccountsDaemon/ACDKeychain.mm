@interface ACDKeychain
+ (BOOL)_isKnownMigratedKeychainItem:(id)a3;
+ (BOOL)addSyncItemWithServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 extension:(id)a7 error:(id *)a8;
+ (BOOL)canAccessPasswordsWithPolicy:(id)a3;
+ (BOOL)removeItemForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7;
+ (BOOL)removeTombstoneForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 extension:(id)a6 error:(id *)a7;
+ (BOOL)updateSyncItemForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 newValues:(id)a6 extension:(id)a7 error:(id *)a8;
+ (id)_knownMigratedKeychainItems;
+ (id)_passwordForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 checkInKeybag:(BOOL)a6 options:(id)a7 error:(id *)a8;
+ (id)cache;
+ (id)keychainDeletedAccounts;
+ (id)passwordForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7;
+ (unint64_t)_syncStateForKeychainDictionary:(id)a3;
+ (void)_addKnownMigratedKeychainItem:(id)a3;
+ (void)_migrateKeychainItemIfNecessary:(id)a3;
+ (void)addItemWithServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 passwordData:(id)a6 options:(id)a7 error:(id *)a8;
+ (void)keychainDeletedAccounts;
+ (void)updateItemForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 newValues:(id)a6 options:(id)a7 error:(id *)a8;
@end

@implementation ACDKeychain

+ (id)cache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__ACDKeychain_cache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (cache_onceToken != -1)
  {
    dispatch_once(&cache_onceToken, block);
  }

  v2 = cache__keychainCache;

  return v2;
}

+ (id)_knownMigratedKeychainItems
{
  if (_knownMigratedKeychainItems_onceToken != -1)
  {
    +[ACDKeychain _knownMigratedKeychainItems];
  }

  v3 = _knownMigratedKeychainItems_migratedKeychainItems;

  return v3;
}

void __20__ACDKeychain_cache__block_invoke(uint64_t a1)
{
  v2 = [[ACDKeychainCache alloc] initWithValidityDuration:30];
  v3 = cache__keychainCache;
  cache__keychainCache = v2;

  out_token = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __20__ACDKeychain_cache__block_invoke_2;
  v5[3] = &__block_descriptor_40_e8_v12__0i8l;
  v5[4] = *(a1 + 32);
  notify_register_dispatch("com.apple.security.keychainchanged", &out_token, MEMORY[0x277D85CD0], v5);
  v4 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __20__ACDKeychain_cache__block_invoke_cold_1();
  }
}

void __20__ACDKeychain_cache__block_invoke_2(uint64_t a1)
{
  v2 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __20__ACDKeychain_cache__block_invoke_2_cold_1();
  }

  v3 = [*(a1 + 32) cache];
  [v3 clearCacheForSyncState:1];
}

+ (unint64_t)_syncStateForKeychainDictionary:(id)a3
{
  v3 = [a3 objectForKey:*MEMORY[0x277CDC140]];
  if (!v3)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 isEqualToString:*MEMORY[0x277CDC148]] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
    {
      v4 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = 2;
LABEL_9:

  return v4;
}

+ (BOOL)canAccessPasswordsWithPolicy:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CDBEE0]])
  {
    v4 = MKBDeviceUnlockedSinceBoot() != 0;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CDBF10]])
  {
    v4 = MKBGetDeviceLockState() == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)passwordForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = 0;
  }

  v11 = 0;
  v8 = [a1 _passwordForServiceName:a3 username:a4 accessGroup:a5 checkInKeybag:1 options:a6 error:&v11];
  v9 = v11;
  if (a7)
  {
    v9 = v9;
    *a7 = v9;
  }

  return v8;
}

+ (id)_passwordForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 checkInKeybag:(BOOL)a6 options:(id)a7 error:(id *)a8
{
  v47 = a6;
  v65 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  value = a5;
  v15 = a7;
  if (a8)
  {
    *a8 = 0;
  }

  v48 = a8;
  if (!v13 || !v14)
  {
    +[ACDKeychain _passwordForServiceName:username:accessGroup:checkInKeybag:options:error:];
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  v17 = v14;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v14);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v13);
  v18 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], v18);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC560], v18);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v53;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(v19);
        }

        CFDictionaryAddValue(Mutable, *(*(&v52 + 1) + 8 * i), [v19 valueForKey:*(*(&v52 + 1) + 8 * i)]);
      }

      v21 = [v19 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v21);
  }

  if (v47)
  {
    v24 = v18;
  }

  else
  {
    v24 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], v24);
  if (value)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], value);
  }

  v25 = v13;
  v26 = [a1 _syncStateForKeychainDictionary:v19];
  v27 = [a1 cache];
  v28 = v17;
  v29 = [v27 dataForService:v25 username:v17 syncState:v26];

  if (v29)
  {
    v30 = [MEMORY[0x277CBEB68] null];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      if (v48)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:-25300 userInfo:0];
        *v48 = v32 = 0;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = v29;
    }

    v40 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = ACHashedString();
      *buf = 134218754;
      v57 = v26;
      v58 = 2112;
      v59 = v25;
      v60 = 2112;
      v61 = v41;
      v62 = 1024;
      v63 = v32 != 0;
      v42 = "ACDKeychainCache(syncState:%ld) hit for %@.%@: itemExist:%d";
LABEL_45:
      _os_log_debug_impl(&dword_221D2F000, v40, OS_LOG_TYPE_DEBUG, v42, buf, 0x26u);
    }
  }

  else
  {
    result = 0;
    v33 = SecItemCopyMatching(Mutable, &result);
    v34 = v33;
    if (v33 || (v35 = result) == 0)
    {
      if (v33 == -25300)
      {
        v38 = [a1 cache];
        v39 = [MEMORY[0x277CBEB68] null];
        [v38 cacheData:v39 forService:v25 username:v17 syncState:v26];
      }

      if (v48)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v34 userInfo:0];
        *v48 = v32 = 0;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v36 = [result objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
      v49 = v36;
      if (v36)
      {
        v32 = [objc_alloc(MEMORY[0x277CB8FC8]) initWithData:v36 encoding:4];
        v37 = [a1 cache];
        [v37 cacheData:v32 forService:v25 username:v28 syncState:v26];
      }

      else
      {
        v32 = 0;
      }

      v43 = [v35 objectForKeyedSubscript:*MEMORY[0x277CDC5F0]];

      if (v43)
      {
        v44 = [[ACDKeychainItem alloc] initWithPersistentRef:v43 properties:v35];
        [a1 _migrateKeychainItemIfNecessary:v44];
      }
    }

    v40 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = ACHashedString();
      *buf = 134218754;
      v57 = v26;
      v58 = 2112;
      v59 = v25;
      v60 = 2112;
      v61 = v41;
      v62 = 1024;
      v63 = v32 != 0;
      v42 = "ACDKeychainCache(syncState:%ld) miss for %@.%@: itemExist:%d";
      goto LABEL_45;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (void)updateItemForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 newValues:(id)a6 options:(id)a7 error:(id *)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14 && v15)
  {
    if (!a8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  +[ACDKeychain updateItemForServiceName:username:accessGroup:newValues:options:error:];
  if (a8)
  {
LABEL_4:
    *a8 = 0;
  }

LABEL_5:
  attributesToUpdate = v17;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v15);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v14);
  if (v16)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], v16);
  }

  v38 = v16;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(v20);
        }

        CFDictionaryAddValue(Mutable, *(*(&v39 + 1) + 8 * i), [v20 valueForKey:{*(*(&v39 + 1) + 8 * i), attributesToUpdate}]);
      }

      v22 = [v20 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v22);
  }

  v25 = [a1 cache];
  [v25 clearDataForService:v14 username:v15 syncState:2];

  v26 = SecItemUpdate(Mutable, attributesToUpdate);
  v27 = [a1 cache];
  [v27 clearDataForService:v14 username:v15 syncState:2];

  if (!v26)
  {
    v29 = [(__CFDictionary *)attributesToUpdate objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
    v30 = [a1 _syncStateForKeychainDictionary:v20];
    v28 = v38;
    if (v29)
    {
      v31 = [objc_alloc(MEMORY[0x277CB8FC8]) initWithData:v29 encoding:4];
      v32 = [a1 cache];
      [v32 cacheData:v31 forService:v14 username:v15 syncState:v30];

      v33 = _ACDKeychainLogSystem();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v35 = ACHashedString();
        *buf = 134218498;
        v44 = v30;
        v45 = 2112;
        v46 = v14;
        v47 = 2112;
        v48 = v35;
        v36 = v35;
        _os_log_debug_impl(&dword_221D2F000, v33, OS_LOG_TYPE_DEBUG, "ACDKeychainCache(syncState:%ld) update for %@.%@", buf, 0x20u);
      }
    }

    else
    {
      v31 = _ACDKeychainLogSystem();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      v33 = ACHashedString();
      *buf = 134218498;
      v44 = v30;
      v45 = 2112;
      v46 = v14;
      v47 = 2112;
      v48 = v33;
      _os_log_debug_impl(&dword_221D2F000, v31, OS_LOG_TYPE_DEBUG, "ACDKeychainCache(syncState:%ld) update for %@.%@ has no data, ignoring", buf, 0x20u);
    }

LABEL_22:
    goto LABEL_23;
  }

  v28 = v38;
  if (a8)
  {
    *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v26 userInfo:0];
  }

LABEL_23:
  CFRelease(Mutable);

  v34 = *MEMORY[0x277D85DE8];
}

+ (void)addItemWithServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 passwordData:(id)a6 options:(id)a7 error:(id *)a8
{
  v58 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14 && v15)
  {
    if (!a8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  +[ACDKeychain addItemWithServiceName:username:accessGroup:passwordData:options:error:];
  if (a8)
  {
LABEL_4:
    *a8 = 0;
  }

LABEL_5:
  v40 = a8;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v15);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v14);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], *MEMORY[0x277CBED28]);
  if (v16)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], v16);
  }

  v41 = v16;
  v42 = v17;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], v17);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        CFDictionaryAddValue(Mutable, *(*(&v45 + 1) + 8 * i), [v20 valueForKey:*(*(&v45 + 1) + 8 * i)]);
      }

      v22 = [v20 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v22);
  }

  v55 = 0x283538FB8;
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v56 = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];

  v44 = 0;
  v27 = [MEMORY[0x277CCAC58] dataWithPropertyList:v26 format:100 options:0 error:&v44];
  v28 = v44;
  if (v28 || !v27)
  {
    v29 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[ACDKeychain addItemWithServiceName:username:accessGroup:passwordData:options:error:];
    }
  }

  else
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBFB8], v27);
  }

  v30 = [a1 cache];
  [v30 clearDataForService:v14 username:v15 syncState:2];

  result = 0;
  v31 = SecItemAdd(Mutable, &result);
  v32 = [a1 cache];
  [v32 clearDataForService:v14 username:v15 syncState:2];

  if (v31)
  {
    if (v40)
    {
      *v40 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v31 userInfo:0];
    }
  }

  else
  {
    v33 = [a1 _syncStateForKeychainDictionary:v20];
    v34 = [objc_alloc(MEMORY[0x277CB8FC8]) initWithData:v42 encoding:4];
    v35 = [a1 cache];
    [v35 cacheData:v34 forService:v14 username:v15 syncState:v33];

    v36 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v38 = ACHashedString();
      *buf = 134218498;
      v50 = v33;
      v51 = 2112;
      v52 = v14;
      v53 = 2112;
      v54 = v38;
      v39 = v38;
      _os_log_debug_impl(&dword_221D2F000, v36, OS_LOG_TYPE_DEBUG, "ACDKeychainCache(syncState:%ld) add for %@.%@", buf, 0x20u);
    }
  }

  CFRelease(Mutable);

  v37 = *MEMORY[0x277D85DE8];
}

+ (BOOL)addSyncItemWithServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 extension:(id)a7 error:(id *)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (v13 && v14 && v17)
  {
    if (!a8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  +[ACDKeychain addSyncItemWithServiceName:username:accessGroup:options:extension:error:];
  if (a8)
  {
LABEL_5:
    *a8 = 0;
  }

LABEL_6:
  v33 = v13;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v13, v18];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v14);
  v32 = v19;
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v19);
  v21 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBFC0], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], v21);
  if (v15)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], v15);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = v16;
  v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        CFDictionaryAddValue(Mutable, *(*(&v35 + 1) + 8 * i), [v22 valueForKey:*(*(&v35 + 1) + 8 * i)]);
      }

      v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v24);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], v21);
  result = 0;
  v27 = SecItemAdd(Mutable, &result);
  v28 = v27 == 0;
  if (a8)
  {
    v29 = v33;
    if (v27)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v27 userInfo:0];
      *a8 = v28 = 0;
    }
  }

  else
  {
    v29 = v33;
  }

  CFRelease(Mutable);

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (BOOL)updateSyncItemForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 newValues:(id)a6 extension:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (v13 && v14 && v17)
  {
    if (!a8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  +[ACDKeychain updateSyncItemForServiceName:username:accessGroup:newValues:extension:error:];
  if (a8)
  {
LABEL_5:
    *a8 = 0;
  }

LABEL_6:
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v13, v18];
  v20 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v14);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v19);
  v22 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
  if (v15)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], v15);
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v20, 0, v16);
  CFDictionaryAddValue(MutableCopy, *MEMORY[0x277CDBFC0], v22);
  v24 = SecItemUpdate(Mutable, MutableCopy);
  v25 = v24 == 0;
  if (a8 && v24)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v24 userInfo:0];
    *a8 = v25 = 0;
  }

  CFRelease(MutableCopy);
  CFRelease(Mutable);

  return v25;
}

+ (BOOL)removeItemForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 options:(id)a6 error:(id *)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12 && v13)
  {
    if (!a7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  +[ACDKeychain removeItemForServiceName:username:accessGroup:options:error:];
  if (a7)
  {
LABEL_4:
    *a7 = 0;
  }

LABEL_5:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  if ([v13 length])
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v13);
  }

  if ([v12 length])
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v12);
  }

  if (v14)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], v14);
  }

  v35 = v14;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        CFDictionaryAddValue(Mutable, *(*(&v36 + 1) + 8 * i), [v17 valueForKey:*(*(&v36 + 1) + 8 * i)]);
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v19);
  }

  v22 = [a1 cache];
  [v22 clearDataForService:v12 username:v13 syncState:2];

  v23 = SecItemDelete(Mutable);
  v24 = [a1 cache];
  [v24 clearDataForService:v12 username:v13 syncState:2];

  v25 = _ACDKeychainLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [ACDKeychain removeItemForServiceName:v23 username:v25 accessGroup:? options:? error:?];
  }

  if (v23 != -25300 && v23)
  {
    v30 = v35;
    if (a7)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v23 userInfo:0];
      *a7 = v31 = 0;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v26 = [a1 _syncStateForKeychainDictionary:v17];
    v27 = [a1 cache];
    v28 = [MEMORY[0x277CBEB68] null];
    [v27 cacheData:v28 forService:v12 username:v13 syncState:v26];

    v29 = _ACDKeychainLogSystem();
    v30 = v35;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v34 = ACHashedString();
      *buf = 134218498;
      v41 = v26;
      v42 = 2112;
      v43 = v12;
      v44 = 2112;
      v45 = v34;
      _os_log_debug_impl(&dword_221D2F000, v29, OS_LOG_TYPE_DEBUG, "ACDKeychainCache(syncState:%ld) delete for %@.%@", buf, 0x20u);
    }

    v31 = 1;
  }

  CFRelease(Mutable);

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

+ (BOOL)removeTombstoneForServiceName:(id)a3 username:(id)a4 accessGroup:(id)a5 extension:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v11 && v12 && v14)
  {
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  +[ACDKeychain removeTombstoneForServiceName:username:accessGroup:extension:error:];
  if (a7)
  {
LABEL_5:
    *a7 = 0;
  }

LABEL_6:
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v11, v15];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v12);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v16);
  if (v13)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], v13);
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CBED28]);
  result = 0;
  v18 = SecItemAdd(Mutable, &result);
  v19 = v18 == 0;
  if (a7 && v18)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC8] code:v18 userInfo:0];
    *a7 = v19 = 0;
  }

  CFRelease(Mutable);

  return v19;
}

+ (id)keychainDeletedAccounts
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  v3 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC568], v3);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], v3);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC180], v3);
  result = 0;
  if (SecItemCopyMatching(Mutable, &result) || !result)
  {
    CFRelease(Mutable);
    v4 = 0;
  }

  else
  {
    v4 = result;
    CFRelease(result);
    CFRelease(Mutable);
    v5 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychain keychainDeletedAccounts];
    }
  }

  return v4;
}

uint64_t __42__ACDKeychain__knownMigratedKeychainItems__block_invoke()
{
  _knownMigratedKeychainItems_migratedKeychainItems = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)_isKnownMigratedKeychainItem:(id)a3
{
  v4 = a3;
  v5 = [v4 persistentRef];
  if (v5)
  {
    v6 = a1;
    objc_sync_enter(v6);
    v7 = [v6 _knownMigratedKeychainItems];
    v8 = [v7 containsObject:v5];

    objc_sync_exit(v6);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (void)_addKnownMigratedKeychainItem:(id)a3
{
  v7 = a3;
  v4 = [v7 persistentRef];
  if (v4)
  {
    v5 = a1;
    objc_sync_enter(v5);
    v6 = [v5 _knownMigratedKeychainItems];
    [v6 addObject:v4];

    objc_sync_exit(v5);
  }
}

+ (void)_migrateKeychainItemIfNecessary:(id)a3
{
  v4 = a3;
  if ([v4 hasCustomAccessControl])
  {
    v5 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychain _migrateKeychainItemIfNecessary:];
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([a1 _isKnownMigratedKeychainItem:v4])
  {
    v5 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychain _migrateKeychainItemIfNecessary:];
    }

    goto LABEL_11;
  }

  v6 = +[ACDKeychainMigrator sharedInstance];
  v7 = [v6 migrateKeychainItem:v4 toKeybag:0];

  if ((v7 & 1) == 0)
  {
    v5 = _ACDKeychainLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[ACDKeychain _migrateKeychainItemIfNecessary:];
    }

    goto LABEL_11;
  }

  [a1 _addKnownMigratedKeychainItem:v4];
LABEL_12:
}

+ (void)_passwordForServiceName:username:accessGroup:checkInKeybag:options:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)updateItemForServiceName:username:accessGroup:newValues:options:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)addItemWithServiceName:username:accessGroup:passwordData:options:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)addItemWithServiceName:username:accessGroup:passwordData:options:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "addItemWithServiceName failed to set current version on item %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)addSyncItemWithServiceName:username:accessGroup:options:extension:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)updateSyncItemForServiceName:username:accessGroup:newValues:extension:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)removeItemForServiceName:username:accessGroup:options:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)removeItemForServiceName:(NSObject *)a3 username:accessGroup:options:error:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_221D2F000, a3, OS_LOG_TYPE_DEBUG, "Keychain query - %@ with result - %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)removeTombstoneForServiceName:username:accessGroup:extension:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)keychainDeletedAccounts
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateKeychainItemIfNecessary:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "Failed to migrate keychain item %@.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateKeychainItemIfNecessary:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateKeychainItemIfNecessary:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end