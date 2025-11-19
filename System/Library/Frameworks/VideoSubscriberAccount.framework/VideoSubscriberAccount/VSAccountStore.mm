@interface VSAccountStore
+ (id)sharedAccountStore;
- (BOOL)_insertAccount:(id)a3 inContext:(id)a4 error:(id *)a5;
- (BOOL)_updateCachedFirstAccount;
- (NSArray)accounts;
- (NSUndoManager)undoManager;
- (VSAccountStore)init;
- (id)_accountForKeychainItem:(id)a3;
- (id)_keychainItemsWithLimit:(unint64_t)a3;
- (id)_uniqueIdentifierForKeychainItem:(id)a3;
- (id)changeObserver;
- (id)firstAccount;
- (id)firstAccountIfLoaded;
- (void)_fetchAccountsSimulatingExpiredToken:(BOOL)a3 forProviderIDs:(id)a4 completion:(id)a5;
- (void)_insertLegacyKeychainItemForAccount:(id)a3 context:(id)a4;
- (void)_insertModernKeychainItemForAccount:(id)a3 context:(id)a4;
- (void)_sendLocalNotification;
- (void)_sendRemoteNotification;
- (void)_updateCachedFirstAccountWithCompletion:(id)a3;
- (void)dealloc;
- (void)fetchAccountsWithCompletionHandler:(id)a3;
- (void)firstAccountWithCompletionHandler:(id)a3;
- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4;
- (void)removeAccounts:(id)a3 withCompletionHandler:(id)a4;
- (void)saveAccounts:(id)a3 withCompletionHandler:(id)a4;
- (void)setUndoManager:(id)a3;
@end

@implementation VSAccountStore

+ (id)sharedAccountStore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VSAccountStore_sharedAccountStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedAccountStore___vs_lazy_init_predicate != -1)
  {
    dispatch_once(&sharedAccountStore___vs_lazy_init_predicate, block);
  }

  v2 = sharedAccountStore___vs_lazy_init_variable;

  return v2;
}

uint64_t __36__VSAccountStore_sharedAccountStore__block_invoke()
{
  sharedAccountStore___vs_lazy_init_variable = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (VSAccountStore)init
{
  v19.receiver = self;
  v19.super_class = VSAccountStore;
  v2 = [(VSAccountStore *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSKeychainEditingContext);
    keychainEditingContext = v2->_keychainEditingContext;
    v2->_keychainEditingContext = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    keychainQueue = v2->_keychainQueue;
    v2->_keychainQueue = v5;

    [(NSOperationQueue *)v2->_keychainQueue setName:@"VSAccountStore"];
    [(NSOperationQueue *)v2->_keychainQueue setMaxConcurrentOperationCount:1];
    v7 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSAccountStoreDidChangeNotification"];
    remoteNotifier = v2->_remoteNotifier;
    v2->_remoteNotifier = v7;

    [(VSRemoteNotifier *)v2->_remoteNotifier setDelegate:v2];
    v9 = objc_alloc_init(VSPreferences);
    preferences = v2->_preferences;
    v2->_preferences = v9;

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(&location, v2);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __22__VSAccountStore_init__block_invoke;
    v16[3] = &unk_278B73400;
    objc_copyWeak(&v17, &location);
    v12 = [v11 addObserverForName:@"VSAccountStoreDidChangeNotification" object:0 queue:0 usingBlock:v16];
    objc_storeWeak(&v2->_changeObserver, v12);

    v2->_needsUpdateCachedFirstAccount = 1;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __22__VSAccountStore_init__block_invoke_47;
    v14[3] = &unk_278B733D8;
    v15 = v2;
    VSPerformBlockOnMainThread(v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __22__VSAccountStore_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 object];

    if (v5 != WeakRetained)
    {
      v6 = VSDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Received local account store notification from another instance.", buf, 2u);
      }

      [WeakRetained setNeedsUpdateCachedFirstAccount:1];
      if (([WeakRetained isFirstAccountLoaded] & 1) == 0)
      {
        v7 = [WeakRetained keychainQueue];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __22__VSAccountStore_init__block_invoke_45;
        v8[3] = &unk_278B733D8;
        v9 = WeakRetained;
        [v7 addOperationWithBlock:v8];
      }
    }
  }
}

void __22__VSAccountStore_init__block_invoke_45(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will update cached first account.", buf, 2u);
  }

  if ([*(a1 + 32) _updateCachedFirstAccount])
  {
    v3 = VSDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Cached first account actually changed.", v4, 2u);
    }
  }
}

void __22__VSAccountStore_init__block_invoke_47(uint64_t a1)
{
  if (([*(a1 + 32) isFirstAccountLoaded] & 1) == 0)
  {
    v2 = [*(a1 + 32) keychainQueue];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __22__VSAccountStore_init__block_invoke_2;
    v3[3] = &unk_278B733D8;
    v4 = *(a1 + 32);
    [v2 addOperationWithBlock:v3];
  }
}

void __22__VSAccountStore_init__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _updateCachedFirstAccount])
  {
    v1 = VSDefaultLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_23AB8E000, v1, OS_LOG_TYPE_DEFAULT, "After initialization, update revealed existing account.", v2, 2u);
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  if (WeakRetained)
  {
    [v3 removeObserver:WeakRetained];
  }

  v5.receiver = self;
  v5.super_class = VSAccountStore;
  [(VSAccountStore *)&v5 dealloc];
}

- (void)remoteNotifier:(id)a3 didReceiveRemoteNotificationWithUserInfo:(id)a4
{
  v5 = [(VSAccountStore *)self keychainQueue:a3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__VSAccountStore_remoteNotifier_didReceiveRemoteNotificationWithUserInfo___block_invoke;
  v6[3] = &unk_278B733D8;
  v6[4] = self;
  [v5 addOperationWithBlock:v6];
}

- (void)_sendLocalNotification
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will send local account store change notificaiton.", buf, 2u);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"VSAccountStoreDidChangeNotification" object:self];
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Did send local account store change notificaiton.", v6, 2u);
  }
}

- (void)_sendRemoteNotification
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will send remote account store change notificaiton.", buf, 2u);
  }

  v4 = [(VSAccountStore *)self remoteNotifier];
  [v4 postNotification];

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Did send remote account store change notificaiton.", v6, 2u);
  }
}

- (id)_uniqueIdentifierForKeychainItem:(id)a3
{
  v4 = a3;
  v5 = [(VSAccountStore *)self _accountForKeychainItem:v4];
  v6 = [v5 identityProviderID];
  v7 = [v6 forceUnwrapObject];
  v8 = [v7 hash];
  v9 = [v4 creationDate];

  v10 = [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10 ^ v8];

  return v11;
}

- (id)_accountForKeychainItem:(id)a3
{
  v4 = a3;
  v5 = VSNumberForFourCharCode(VSKeychainItemCreatorCode);
  v6 = VSNumberForFourCharCode(VSKeychainItemV2CreatorCode);
  v7 = objc_alloc_init([objc_opt_class() accountClass]);
  [v7 setAccountStore:self];
  v8 = [v4 creatorCode];
  v9 = [v8 isEqual:v5];

  if (v9)
  {
    v10 = [v4 generic];
    v11 = [v10 copy];

    [v7 setLegacyKeychainItem:v4];
    v12 = [v4 account];
    [v7 setUsername:v12];

    v13 = [v4 comment];
    [v7 setPreferredAppID:v13];

    v14 = [v4 service];
    v15 = [v14 copy];
    v16 = [VSOptional optionalWithObject:v15];
    [v7 setOptionalIdentityProviderDisplayName:v16];

    v17 = [VSOptional optionalWithObject:v11];
    [v7 setIdentityProviderID:v17];

    [v7 setSynchronizable:{objc_msgSend(v4, "isSynchronizable")}];
    v18 = [v4 typeCode];
    v19 = VSNumberForFourCharCode(0x6174684Eu);
    LODWORD(v15) = [v18 isEqual:v19];

    if (v15 || (VSNumberForFourCharCode(0x746F6B4Eu), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v18 isEqual:v40], v40, v41))
    {
      v42 = objc_opt_class();
    }

    else
    {
      v44 = VSErrorLogObject();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [VSAccountStore _accountForKeychainItem:];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected token type code when deserializing account from keychain."];
      v42 = 0;
    }

    v45 = [v4 data];
    if (v45)
    {
      v46 = [[v42 alloc] initWithSerializedData:v45];
      v47 = [VSOptional optionalWithObject:v46];
      [v7 setAuthenticationToken:v47];
    }

    else
    {
      v46 = VSErrorLogObject();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        [VSAccountStore _accountForKeychainItem:];
      }
    }

LABEL_39:
    goto LABEL_40;
  }

  v20 = [v4 creatorCode];
  v21 = [v20 isEqual:v6];

  if (v21)
  {
    v22 = [v4 data];

    if (!v22)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [keychainItem data] parameter must not be nil."];
    }

    v11 = [v4 data];
    v58 = 0;
    v23 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:&v58];
    v24 = v58;
    if (v23)
    {
      v57 = v11;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = MEMORY[0x277CBEAD8];
        v26 = *MEMORY[0x277CBE660];
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        [v25 raise:v26 format:{@"Unexpectedly, result was %@, instead of NSDictionary.", v28}];
      }

      v29 = v23;
      [v7 setKeychainItem:v4];
      v30 = [v29 objectForKey:@"u"];
      [v7 setUsername:v30];

      v31 = [v29 objectForKey:@"paid"];
      [v7 setPreferredAppID:v31];

      v32 = [v29 objectForKey:@"dn"];
      v33 = [VSOptional optionalWithObject:v32];
      [v7 setOptionalIdentityProviderDisplayName:v33];

      v34 = [v29 objectForKey:@"pid"];
      v35 = [VSOptional optionalWithObject:v34];
      [v7 setIdentityProviderID:v35];

      v36 = [v29 objectForKey:@"lhash"];
      [v7 setLegacyItemHash:v36];

      [v7 setSynchronizable:{objc_msgSend(v4, "isSynchronizable")}];
      v37 = [v29 objectForKey:@"channels"];
      [v7 setChannelsData:v37];

      v38 = [v29 objectForKey:@"proto"];

      if (!v38)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [accountData objectForKey:VSAccountKeychainKeyScheme] parameter must not be nil."];
      }

      v39 = [v29 objectForKey:@"proto"];
      v56 = v24;
      if ([v39 isEqual:@"api"] || objc_msgSend(v39, "isEqual:", @"saml"))
      {
        v49 = objc_opt_class();
      }

      else
      {
        v50 = VSErrorLogObject();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [VSAccountStore _accountForKeychainItem:];
        }

        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected scheme when decoding account from 2.0 keychain item."];
        v49 = 0;
      }

      v51 = [v29 objectForKey:@"data"];

      if (!v51)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [accountData objectForKey:VSAccountKeychainKeyTokenData] parameter must not be nil."];
      }

      v52 = [v29 objectForKey:@"data"];
      v53 = [[v49 alloc] initWithSerializedData:v52];
      v54 = [VSOptional optionalWithObject:v53];
      [v7 setAuthenticationToken:v54];

      v24 = v56;
      v11 = v57;
    }

    else
    {
      v48 = VSErrorLogObject();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [VSAccountStore _accountForKeychainItem:];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Failed to deserialize account data from keychain item data."];
    }

    goto LABEL_39;
  }

  v43 = VSErrorLogObject();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    [(VSAccountStore *)v4 _accountForKeychainItem:v43];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected creator code when deserialziing account from keychain item."];
LABEL_40:

  return v7;
}

- (void)_fetchAccountsSimulatingExpiredToken:(BOOL)a3 forProviderIDs:(id)a4 completion:(id)a5
{
  v80 = a3;
  v151 = *MEMORY[0x277D85DE8];
  v81 = a4;
  v82 = a5;
  v6 = [MEMORY[0x277CCABD8] currentQueue];
  v7 = [(VSAccountStore *)self keychainQueue];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected operation queue for account fetch."];
  }

  v136 = 0;
  v137 = &v136;
  v138 = 0x3032000000;
  v139 = __Block_byref_object_copy_;
  v140 = __Block_byref_object_dispose_;
  v141 = MEMORY[0x277CBEBF8];
  v130 = 0;
  v131 = &v130;
  v132 = 0x3032000000;
  v133 = __Block_byref_object_copy_;
  v134 = __Block_byref_object_dispose_;
  v135 = 0;
  v9 = [(VSAccountStore *)self _keychainItemsWithLimit:0];
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke;
  v129[3] = &unk_278B73428;
  v129[4] = &v136;
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_2;
  v128[3] = &unk_278B73450;
  v128[4] = &v130;
  [v9 unwrapObject:v129 error:v128];

  if (v131[5])
  {
    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_3;
    v125[3] = &unk_278B73478;
    v126 = v82;
    v127 = &v130;
    VSPerformCompletionHandler(v125);
    v10 = v126;
  }

  else
  {
    v11 = VSDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v137[5];
      *buf = 138412290;
      v146 = v12;
      _os_log_impl(&dword_23AB8E000, v11, OS_LOG_TYPE_DEFAULT, "Fetched keychain items: %@", buf, 0xCu);
    }

    v85 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v78 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v14 = v137[5];
    v15 = [v14 countByEnumeratingWithState:&v121 objects:v150 count:16];
    if (v15)
    {
      v16 = *v122;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v122 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v121 + 1) + 8 * i);
          v19 = [v18 data];
          v20 = v19 == 0;

          if (v20)
          {
            v21 = VSErrorLogObject();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v146 = v18;
              _os_log_fault_impl(&dword_23AB8E000, v21, OS_LOG_TYPE_FAULT, "Invalid keychain item found: %@", buf, 0xCu);
            }

            [v13 addObject:v18];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v121 objects:v150 count:16];
      }

      while (v15);
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v22 = v137[5];
    v23 = [v22 countByEnumeratingWithState:&v117 objects:v149 count:16];
    if (v23)
    {
      v24 = *v118;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v118 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v117 + 1) + 8 * j);
          if (([v13 containsObject:v26] & 1) == 0)
          {
            v27 = [(VSAccountStore *)self _uniqueIdentifierForKeychainItem:v26];
            v28 = [v26 creatorCode];
            v29 = VSNumberForFourCharCode(VSKeychainItemCreatorCode);
            v30 = [v28 isEqual:v29];

            v31 = v85;
            if ((v30 & 1) != 0 || ([v26 creatorCode], v32 = objc_claimAutoreleasedReturnValue(), VSNumberForFourCharCode(VSKeychainItemV2CreatorCode), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "isEqual:", v33), v33, v32, v31 = v84, v34))
            {
              [v31 setObject:v26 forKey:v27];
            }

            else
            {
              v35 = VSErrorLogObject();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v146 = v26;
                _os_log_error_impl(&dword_23AB8E000, v35, OS_LOG_TYPE_ERROR, "Fetched keychain item with unexpected type code: %@", buf, 0xCu);
              }
            }
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v117 objects:v149 count:16];
      }

      while (v23);
    }

    v36 = VSDefaultLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v84 count];
      v38 = [v85 count];
      *buf = 134218240;
      v146 = v37;
      v147 = 2048;
      v148 = v38;
      _os_log_impl(&dword_23AB8E000, v36, OS_LOG_TYPE_DEFAULT, "Fetched %lu modern items and %lu legacy items", buf, 0x16u);
    }

    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v85 count] >= 2)
    {
      v41 = VSDefaultLogObject();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AB8E000, v41, OS_LOG_TYPE_DEFAULT, "deduplicating legacy items.", buf, 2u);
      }

      v42 = [v85 allValues];
      v43 = [v42 mutableCopy];

      [v43 sortUsingComparator:&__block_literal_global_3];
      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_98;
      v115[3] = &unk_278B734C0;
      v116 = v13;
      [v43 enumerateObjectsUsingBlock:v115];
    }

    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_100;
    v109[3] = &unk_278B734E8;
    v109[4] = self;
    v44 = v78;
    v110 = v44;
    v77 = v85;
    v111 = v77;
    v86 = v13;
    v112 = v86;
    v45 = v40;
    v113 = v45;
    v46 = v39;
    v114 = v46;
    [v84 enumerateKeysAndObjectsUsingBlock:v109];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_111;
    v105[3] = &unk_278B73510;
    v105[4] = self;
    v76 = v44;
    v106 = v76;
    v83 = v45;
    v107 = v83;
    v79 = v46;
    v108 = v79;
    [v77 enumerateKeysAndObjectsUsingBlock:v105];
    [v83 sortUsingComparator:&__block_literal_global_115];
    if ([v86 count] || objc_msgSend(v79, "count", v76))
    {
      v47 = VSDefaultLogObject();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v86 count];
        v49 = [v79 count];
        *buf = 134218240;
        v146 = v48;
        v147 = 2048;
        v148 = v49;
        _os_log_impl(&dword_23AB8E000, v47, OS_LOG_TYPE_DEFAULT, "finished processing keychain items (delete=%lu modernize=%lu)", buf, 0x16u);
      }

      v50 = [(VSAccountStore *)self keychainEditingContext];
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v51 = v86;
      v52 = [v51 countByEnumeratingWithState:&v101 objects:v144 count:16];
      if (v52)
      {
        v53 = *v102;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v102 != v53)
            {
              objc_enumerationMutation(v51);
            }

            [v50 deleteItem:{*(*(&v101 + 1) + 8 * k), v76}];
          }

          v52 = [v51 countByEnumeratingWithState:&v101 objects:v144 count:16];
        }

        while (v52);
      }

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v55 = v79;
      v56 = [v55 countByEnumeratingWithState:&v97 objects:v143 count:16];
      if (v56)
      {
        v57 = *v98;
        do
        {
          for (m = 0; m != v56; ++m)
          {
            if (*v98 != v57)
            {
              objc_enumerationMutation(v55);
            }

            [(VSAccountStore *)self _insertModernKeychainItemForAccount:*(*(&v97 + 1) + 8 * m) context:v50, v76];
          }

          v56 = [v55 countByEnumeratingWithState:&v97 objects:v143 count:16];
        }

        while (v56);
      }

      v59 = (v131 + 5);
      obj = v131[5];
      [v50 save:&obj];
      objc_storeStrong(v59, obj);
    }

    if (v80 && [v81 count])
    {
      if (!v81)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The providerIDsOrNil parameter must not be nil."];
      }

      v60 = v81;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v61 = v83;
      v62 = [v61 countByEnumeratingWithState:&v92 objects:v142 count:16];
      if (v62)
      {
        v63 = *v93;
        do
        {
          for (n = 0; n != v62; ++n)
          {
            if (*v93 != v63)
            {
              objc_enumerationMutation(v61);
            }

            v65 = *(*(&v92 + 1) + 8 * n);
            v66 = [v65 identityProviderID];
            v67 = [v66 forceUnwrapObject];
            v68 = [v60 containsObject:v67];

            if (v68)
            {
              v69 = VSDefaultLogObject();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v146 = v65;
                _os_log_impl(&dword_23AB8E000, v69, OS_LOG_TYPE_DEFAULT, "simulate expired token enabled, mutating token expiration for account: %@", buf, 0xCu);
              }

              v70 = [v65 authenticationToken];
              v71 = [v70 forceUnwrapObject];

              v72 = [MEMORY[0x277CBEAA8] distantPast];
              [v71 setExpirationDate:v72];
            }
          }

          v62 = [v61 countByEnumeratingWithState:&v92 objects:v142 count:16];
        }

        while (v62);
      }
    }

    v73 = VSDefaultLogObject();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = v131[5];
      *buf = 138412546;
      v146 = v83;
      v147 = 2112;
      v148 = v74;
      _os_log_impl(&dword_23AB8E000, v73, OS_LOG_TYPE_DEFAULT, "fetched accounts: %@ with error: %@", buf, 0x16u);
    }

    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_120;
    v88[3] = &unk_278B73558;
    v90 = v82;
    v75 = v83;
    v89 = v75;
    v91 = &v130;
    VSPerformCompletionHandler(v88);

    v10 = v77;
  }

  _Block_object_dispose(&v130, 8);
  _Block_object_dispose(&v136, 8);
}

uint64_t __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 modificationDate];
  v7 = [v5 modificationDate];
  if (v7)
  {
    if (v6)
    {
LABEL_3:
      v8 = [v7 compare:v6];
      goto LABEL_10;
    }
  }

  else
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_93_cold_1();
    }

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = VSErrorLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_93_cold_1();
  }

  v8 = 1;
LABEL_10:

  return v8;
}

void __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_98(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will mark duplicate legacy keychain item for deletion: %@", &v7, 0xCu);
    }

    [*(a1 + 32) addObject:v5];
  }
}

void __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_100(id *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1[4] _accountForKeychainItem:v4];
  v6 = [v5 legacyItemHash];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [account legacyItemHash] parameter must not be nil."];
  }

  v7 = [v5 legacyItemHash];
  [a1[5] addObject:v7];
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v7;
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "modern keychain item has legacy equivalent with hash %@", &v26, 0xCu);
  }

  v9 = [a1[6] objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    if ([a1[7] containsObject:v11])
    {
      v12 = VSDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_23AB8E000, v12, OS_LOG_TYPE_DEFAULT, "Modern item has legacy item marked for deletion, deleting modern item.", &v26, 2u);
      }

      [a1[7] addObject:v4];
    }

    else
    {
      [v5 setLegacyKeychainItem:v11];
      [a1[8] addObject:v5];
      v14 = [a1[4] _accountForKeychainItem:v11];
      v15 = [v14 contentsHash];
      if (v15 != [v5 contentsHash])
      {
        v16 = VSDefaultLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "Legacy keychain item and modern keychain item contents do not match.", &v26, 2u);
        }

        v17 = [v4 modificationDate];
        v18 = [v11 modificationDate];

        if (!v18)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [legacyItem modificationDate] parameter must not be nil."];
        }

        v19 = [v11 modificationDate];
        v20 = [v17 vs_isBefore:v19];

        v21 = VSDefaultLogObject();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          if (v22)
          {
            LOWORD(v26) = 0;
            _os_log_impl(&dword_23AB8E000, v21, OS_LOG_TYPE_DEFAULT, "Legacy keychain item has the most recent values, preferring them over the modern item values.", &v26, 2u);
          }

          v23 = [v14 authenticationToken];
          [v5 setAuthenticationToken:v23];

          v24 = [v14 preferredAppID];
          [v5 setPreferredAppID:v24];

          v25 = [v14 username];
          [v5 setUsername:v25];

          [a1[9] addObject:v5];
        }

        else
        {
          if (v22)
          {
            LOWORD(v26) = 0;
            _os_log_impl(&dword_23AB8E000, v21, OS_LOG_TYPE_DEFAULT, "Modern keychain item has the most recent values, keeping them.", &v26, 2u);
          }
        }
      }
    }
  }

  else
  {
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Modern item without legacy item found, assuming sign out from legacy device.", &v26, 2u);
    }

    [a1[7] addObject:v4];
  }
}

void __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_111(id *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1[4] _uniqueIdentifierForKeychainItem:v4];
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 creationDate];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "legacy keychain item has hash %@ (cdat=%@)", &v10, 0x16u);
  }

  if (([a1[5] containsObject:v5] & 1) == 0)
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Legacy keychain item found without matching modern item.", &v10, 2u);
    }

    v9 = [a1[4] _accountForKeychainItem:v4];
    [a1[6] addObject:v9];
    [a1[7] addObject:v9];
  }
}

uint64_t __81__VSAccountStore__fetchAccountsSimulatingExpiredToken_forProviderIDs_completion___block_invoke_112(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 effectiveModificationDate];
  v6 = [v4 effectiveModificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_insertModernKeychainItemForAccount:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 keychainItem];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [VSKeychainGenericPassword alloc];
    v11 = VSKeychainItemKindGenericPassword();
    v9 = [(VSKeychainItem *)v10 initWithItemKind:v11 insertIntoEditingContext:v7];

    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keychainItemOrNil parameter must not be nil."];
    }
  }

  v12 = v9;
  [v6 setKeychainItem:v12];
  [(VSKeychainGenericPassword *)v12 setAccessGroup:@"com.apple.VideoSubscriberAccount"];
  v13 = VSNumberForFourCharCode(VSKeychainItemV2CreatorCode);
  [(VSKeychainGenericPassword *)v12 setCreatorCode:v13];

  v14 = [v6 username];
  [(VSKeychainGenericPassword *)v12 setAccount:v14];

  -[VSKeychainGenericPassword setSynchronizable:](v12, "setSynchronizable:", [v6 isSynchronizable]);
  [(VSKeychainGenericPassword *)v12 setViewHint:*MEMORY[0x277CDC198]];
  v15 = VSNumberForFourCharCode(0x746F6B32u);
  [(VSKeychainGenericPassword *)v12 setTypeCode:v15];

  v16 = MEMORY[0x277CCACA8];
  v17 = [v6 optionalIdentityProviderDisplayName];
  v18 = [v17 forceUnwrapObject];
  v19 = [v16 stringWithFormat:@"TV Provider: %@", v18];

  [(VSKeychainGenericPassword *)v12 setService:v19];
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = [v6 username];
  [v20 setObject:v21 forKeyedSubscript:@"u"];

  v22 = [v6 identityProviderID];
  v23 = [v22 forceUnwrapObject];
  [v20 setObject:v23 forKeyedSubscript:@"pid"];

  v24 = [v6 identityProviderDisplayName];
  [v20 setObject:v24 forKeyedSubscript:@"dn"];

  v25 = [v6 preferredAppID];
  [v20 setObject:v25 forKeyedSubscript:@"paid"];

  v26 = [v6 authenticationToken];
  v27 = [v26 forceUnwrapObject];
  v28 = [v27 serializedData];
  [v20 setObject:v28 forKeyedSubscript:@"data"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isSynchronizable")}];
  [v20 setObject:v29 forKeyedSubscript:@"sync"];

  v30 = [v6 channelsData];
  [v20 setObject:v30 forKeyedSubscript:@"channels"];

  v31 = [v6 legacyKeychainItem];
  v32 = [(VSAccountStore *)self _uniqueIdentifierForKeychainItem:v31];

  [v6 setLegacyItemHash:v32];
  [v20 setObject:v32 forKeyedSubscript:@"lhash"];
  v33 = [v6 authenticationToken];
  v34 = [v33 forceUnwrapObject];
  LODWORD(v28) = [v34 isOpaque];

  if (v28)
  {
    v35 = @"api";
  }

  else
  {
    v35 = @"saml";
  }

  [v20 setObject:v35 forKeyedSubscript:@"proto"];
  v36 = [v6 authenticationToken];
  v37 = [v36 forceUnwrapObject];
  v38 = [v37 serializedData];
  [v20 setObject:v38 forKeyedSubscript:@"data"];

  v42 = 0;
  v39 = [MEMORY[0x277CCAC58] dataWithPropertyList:v20 format:200 options:0 error:&v42];
  v40 = v42;
  if (!v39)
  {
    v41 = VSErrorLogObject();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [VSAccountStore _insertModernKeychainItemForAccount:context:];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Error serializing account to property list."];
  }

  [(VSKeychainItem *)v12 setData:v39];
}

- (void)_insertLegacyKeychainItemForAccount:(id)a3 context:(id)a4
{
  v24 = a3;
  v5 = a4;
  v6 = [v24 legacyKeychainItem];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [VSKeychainGenericPassword alloc];
    v9 = VSKeychainItemKindGenericPassword();
    v7 = [(VSKeychainItem *)v8 initWithItemKind:v9 insertIntoEditingContext:v5];

    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keychainItemOrNil parameter must not be nil."];
    }
  }

  v10 = v7;
  [v24 setLegacyKeychainItem:v10];
  [(VSKeychainGenericPassword *)v10 setAccessGroup:@"com.apple.VideoSubscriberAccount"];
  v11 = VSNumberForFourCharCode(VSKeychainItemCreatorCode);
  [(VSKeychainGenericPassword *)v10 setCreatorCode:v11];

  v12 = [v24 accountDescription];
  [(VSKeychainGenericPassword *)v10 setLabel:v12];

  v13 = [v24 username];
  if ([v13 length])
  {
    [(VSKeychainGenericPassword *)v10 setAccount:v13];
  }

  v14 = [v24 preferredAppID];
  [(VSKeychainGenericPassword *)v10 setComment:v14];

  v15 = [v24 optionalIdentityProviderDisplayName];
  v16 = [v15 forceUnwrapObject];
  [(VSKeychainGenericPassword *)v10 setService:v16];

  v17 = [v24 identityProviderID];
  v18 = [v17 forceUnwrapObject];
  [(VSKeychainGenericPassword *)v10 setGeneric:v18];

  v19 = [v24 authenticationToken];
  v20 = [v19 forceUnwrapObject];

  if ([v20 isOpaque])
  {
    v21 = 1953459022;
  }

  else
  {
    v21 = 1635018830;
  }

  v22 = VSNumberForFourCharCode(v21);
  [(VSKeychainGenericPassword *)v10 setTypeCode:v22];

  v23 = [v20 serializedData];
  if ([v23 length])
  {
    [(VSKeychainItem *)v10 setData:v23];
  }

  -[VSKeychainGenericPassword setSynchronizable:](v10, "setSynchronizable:", [v24 isSynchronizable]);
  [(VSKeychainGenericPassword *)v10 setViewHint:*MEMORY[0x277CDC198]];
}

- (id)_keychainItemsWithLimit:(unint64_t)a3
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(VSKeychainFetchRequest);
  v5 = VSKeychainItemKindGenericPassword();
  v6 = [VSOptional optionalWithObject:v5];
  [(VSKeychainFetchRequest *)v4 setItemKind:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = VSNumberForFourCharCode(VSKeychainItemCreatorCode);
  v30 = VSNumberForFourCharCode(VSKeychainItemV2CreatorCode);
  v31 = v8;
  v35[0] = v8;
  v35[1] = v30;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"creatorCode", v29];
  [v7 addObject:v9];

  v10 = VSNumberForFourCharCode(0x6174684Eu);
  v11 = VSNumberForFourCharCode(0x746F6B4Eu);
  v12 = VSNumberForFourCharCode(0x746F6B32u);
  v28 = v10;
  v34[0] = v10;
  v34[1] = v11;
  v34[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"typeCode", v13];
  [v7 addObject:v14];

  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"accessGroup", @"com.apple.VideoSubscriberAccount"];
  [v7 addObject:v15];

  v16 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  [(VSKeychainFetchRequest *)v4 setPredicate:v16];

  [(VSKeychainFetchRequest *)v4 setFetchLimit:a3];
  [(VSKeychainFetchRequest *)v4 setIncludesDataValues:1];
  v17 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"modificationDate" ascending:0];
  v18 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"label" ascending:1];
  v33[0] = v17;
  v33[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  [(VSKeychainFetchRequest *)v4 setSortDescriptors:v19];

  v20 = [(VSAccountStore *)self keychainEditingContext];
  v32 = 0;
  v21 = [v20 executeFetchRequest:v4 error:&v32];
  v22 = v32;

  if (v21)
  {
    v23 = [VSFailable failableWithObject:v21];
  }

  else
  {
    v24 = VSErrorLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [VSAccountStore _keychainItemsWithLimit:];
    }

    if (!v22)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The error parameter must not be nil."];
    }

    v23 = [VSFailable failableWithError:v22];
  }

  v25 = v23;
  if (!v23)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
  }

  return v25;
}

- (NSUndoManager)undoManager
{
  v2 = [(VSAccountStore *)self keychainEditingContext];
  v3 = [v2 undoManager];

  return v3;
}

- (void)setUndoManager:(id)a3
{
  v4 = a3;
  v5 = [(VSAccountStore *)self keychainEditingContext];
  [v5 setUndoManager:v4];
}

- (id)firstAccountIfLoaded
{
  if ([(VSAccountStore *)self needsUpdateCachedFirstAccount]|| ([(VSAccountStore *)self cachedFirstAccount], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = [(VSAccountStore *)self firstAccount];
  }

  return v4;
}

- (BOOL)_updateCachedFirstAccount
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = [MEMORY[0x277CCABD8] currentQueue];
  v4 = [(VSAccountStore *)self keychainQueue];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected operation queue for updating cached account."];
  }

  v6 = objc_alloc_init(VSSemaphore);
  v7 = MEMORY[0x277CCA8C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__VSAccountStore__updateCachedFirstAccount__block_invoke;
  v12[3] = &unk_278B735A8;
  v12[4] = self;
  v14 = &v15;
  v8 = v6;
  v13 = v8;
  v9 = [v7 blockOperationWithBlock:v12];
  [v9 start];
  [(VSSemaphore *)v8 wait];
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10;
}

void __43__VSAccountStore__updateCachedFirstAccount__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__VSAccountStore__updateCachedFirstAccount__block_invoke_2;
  v4[3] = &unk_278B73580;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _updateCachedFirstAccountWithCompletion:v4];
}

- (void)_updateCachedFirstAccountWithCompletion:(id)a3
{
  v4 = a3;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277CCABD8] currentQueue];
  v7 = [(VSAccountStore *)self keychainQueue];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected operation queue for updating cached account."];
  }

  v9 = objc_alloc_init(VSDeveloperSettingsFetchOperation);
  objc_initWeak(&location, v9);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke;
  v30[3] = &unk_278B73618;
  objc_copyWeak(&v31, &location);
  v30[4] = v33;
  [(VSDeveloperSettingsFetchOperation *)v9 setCompletionBlock:v30];
  v10 = objc_alloc_init(VSDeveloperIdentityProviderFetchAllOperation);
  objc_initWeak(&from, v10);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_179;
  v26[3] = &unk_278B73690;
  objc_copyWeak(&v28, &from);
  v11 = v5;
  v27 = v11;
  [(VSDeveloperIdentityProviderFetchAllOperation *)v10 setCompletionBlock:v26];
  objc_initWeak(&v25, self);
  v12 = MEMORY[0x277CCA8C8];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_185;
  v19 = &unk_278B736E0;
  objc_copyWeak(&v24, &v25);
  v22 = v33;
  v13 = v11;
  v20 = v13;
  v23 = v35;
  v14 = v4;
  v21 = v14;
  v15 = [v12 blockOperationWithBlock:&v16];
  [(VSAsyncOperation *)v9 start:v16];
  [(VSAsyncOperation *)v10 start];
  [v15 start];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2;
  v5[3] = &unk_278B735D0;
  v5[4] = *(a1 + 32);
  [v4 unwrapObject:v5 error:&__block_literal_global_177];
}

uint64_t __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 simulateExpiredToken];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_3()
{
  v0 = VSErrorLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_3_cold_1(v0);
  }
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_179(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_180;
  v5[3] = &unk_278B73668;
  v6 = *(a1 + 32);
  [v4 unwrapObject:v5 error:&__block_literal_global_184];
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_180(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) providerID];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_3_181;
        v9[3] = &unk_278B73640;
        v10 = *(a1 + 32);
        [v8 conditionallyUnwrapObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_4_cold_1();
  }
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_185(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_186;
  v7[3] = &unk_278B736B8;
  v4 = *(a1 + 56);
  v8 = WeakRetained;
  v10 = v4;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = WeakRetained;
  [v6 _fetchAccountsSimulatingExpiredToken:v3 forProviderIDs:v5 completion:v7];
}

void __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_186(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 firstObject];
    v9 = [*(a1 + 32) cachedFirstAccount];
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (v10 && v9)
      {
        v12 = [v9 isEqual:v10];

        if (v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      [*(a1 + 32) setCachedFirstAccount:v11];
    }

LABEL_13:
    [*(a1 + 32) setNeedsUpdateCachedFirstAccount:0];

    goto LABEL_14;
  }

  v7 = VSErrorLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_2_186_cold_1();
  }

  [*(a1 + 32) setNeedsUpdateCachedFirstAccount:1];
LABEL_14:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_187;
    v13[3] = &unk_278B733D8;
    v14 = *(a1 + 32);
    VSPerformBlockOnMainThread(v13);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)firstAccount
{
  if ([(VSAccountStore *)self needsUpdateCachedFirstAccount]|| ([(VSAccountStore *)self cachedFirstAccount], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = objc_alloc_init(VSSemaphore);
    v5 = [(VSAccountStore *)self keychainQueue];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __30__VSAccountStore_firstAccount__block_invoke;
    v12 = &unk_278B73708;
    v13 = self;
    v14 = v4;
    v6 = v4;
    [v5 addOperationWithBlock:&v9];

    [(VSSemaphore *)v6 wait:v9];
  }

  v7 = [(VSAccountStore *)self cachedFirstAccount];

  return v7;
}

void __30__VSAccountStore_firstAccount__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __30__VSAccountStore_firstAccount__block_invoke_2;
  v2[3] = &unk_278B73380;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _updateCachedFirstAccountWithCompletion:v2];
}

- (void)firstAccountWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(VSAccountStore *)self needsUpdateCachedFirstAccount]|| ([(VSAccountStore *)self cachedFirstAccount], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v7 = [(VSAccountStore *)self keychainQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__VSAccountStore_firstAccountWithCompletionHandler___block_invoke;
    v8[3] = &unk_278B73758;
    v8[4] = self;
    v9 = v4;
    [v7 addOperationWithBlock:v8];
  }

  else
  {
    v6 = [(VSAccountStore *)self cachedFirstAccount];
    (*(v4 + 2))(v4, v6);
  }
}

void __52__VSAccountStore_firstAccountWithCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__VSAccountStore_firstAccountWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278B73730;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _updateCachedFirstAccountWithCompletion:v4];
}

void __52__VSAccountStore_firstAccountWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) cachedFirstAccount];
  (*(v1 + 16))(v1, v2);
}

- (NSArray)accounts
{
  v3 = objc_alloc_init(VSSemaphore);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = MEMORY[0x277CBEBF8];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __26__VSAccountStore_accounts__block_invoke;
  v10 = &unk_278B73780;
  v12 = &v13;
  v4 = v3;
  v11 = v4;
  [(VSAccountStore *)self fetchAccountsWithCompletionHandler:&v7];
  [(VSSemaphore *)v4 wait:v7];
  v5 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v5;
}

uint64_t __26__VSAccountStore_accounts__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__VSAccountStore_accounts__block_invoke_2;
  v4[3] = &unk_278B73428;
  v4[4] = *(a1 + 40);
  [a2 unwrapObject:v4 error:&__block_literal_global_190];
  return [*(a1 + 32) signal];
}

void __26__VSAccountStore_accounts__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __26__VSAccountStore_accounts__block_invoke_3_cold_1();
  }
}

- (void)fetchAccountsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(VSAccountStore *)self keychainQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke;
  v9[3] = &unk_278B73848;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [v6 addOperationWithBlock:v9];
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(VSDeveloperSettingsFetchOperation);
  v3 = objc_alloc_init(VSSemaphore);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2;
  v20[3] = &unk_278B733D8;
  v4 = v3;
  v21 = v4;
  [(VSDeveloperSettingsFetchOperation *)v2 setCompletionBlock:v20];
  [(VSAsyncOperation *)v2 start];
  [(VSSemaphore *)v4 wait];
  v5 = objc_alloc_init(VSDeveloperIdentityProviderFetchAllOperation);
  objc_initWeak(&location, v5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_3;
  v15[3] = &unk_278B737D0;
  objc_copyWeak(&v18, &location);
  v16 = *(a1 + 32);
  v6 = v4;
  v17 = v6;
  [(VSDeveloperIdentityProviderFetchAllOperation *)v5 setCompletionBlock:v15];
  [(VSAsyncOperation *)v5 start];
  [(VSSemaphore *)v6 wait];
  v7 = [(VSDeveloperSettingsFetchOperation *)v2 result];
  v8 = [v7 forceUnwrapObject];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_195;
  v14[3] = &unk_278B735D0;
  v14[4] = &v22;
  [v8 unwrapObject:v14 error:&__block_literal_global_198];
  v9 = *(v23 + 24);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_199;
  v12[3] = &unk_278B73820;
  v13 = *(a1 + 48);
  [v10 _fetchAccountsSimulatingExpiredToken:v9 forProviderIDs:v11 completion:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v22, 8);
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_4;
  v7[3] = &unk_278B737A8;
  v8 = a1[4];
  v9 = a1[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_6;
  v5[3] = &unk_278B732E0;
  v6 = a1[5];
  [v4 unwrapObject:v7 error:v5];
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) providerID];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_5;
        v9[3] = &unk_278B73640;
        v10 = *(a1 + 32);
        [v8 conditionallyUnwrapObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) signal];
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__VSAccountStore__updateCachedFirstAccountWithCompletion___block_invoke_4_cold_1();
  }

  [*(a1 + 32) signal];
}

uint64_t __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_195(uint64_t a1, void *a2)
{
  result = [a2 simulateExpiredToken];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2_196(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2_196_cold_1();
  }
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v9 = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_3_204;
    v10 = v6;
  }

  else
  {
    v8 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v9 = __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2_200;
    v10 = v5;
  }

  v8[2] = v9;
  v8[3] = &unk_278B737F8;
  v8[5] = *(a1 + 32);
  v8[4] = v10;
  VSPerformCompletionHandler(v8);
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_2_200(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accounts parameter must not be nil."];
    v1 = *(a1 + 32);
  }

  v4 = v1;
  v5 = [VSFailable failableWithObject:v4];
  (*(v2 + 16))(v2, v5);
}

void __53__VSAccountStore_fetchAccountsWithCompletionHandler___block_invoke_3_204(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The error parameter must not be nil."];
    v1 = *(a1 + 32);
  }

  v4 = v1;
  v5 = [VSFailable failableWithError:v4];
  (*(v2 + 16))(v2, v5);
}

- (BOOL)_insertAccount:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = VSDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v8;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "VSAccountStore _insertAccount: %@", buf, 0xCu);
  }

  [(VSAccountStore *)self _insertLegacyKeychainItemForAccount:v8 context:v9];
  v31 = 0;
  v11 = [v9 save:&v31];
  v12 = v31;
  if (v11)
  {
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 legacyKeychainItem];
      v15 = [(VSAccountStore *)self _uniqueIdentifierForKeychainItem:v14];
      v16 = [v8 legacyKeychainItem];
      v17 = [v16 creationDate];
      *buf = 138412546;
      v33 = v15;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Successfully committed legacy item with hash %@ (cdat=%@)", buf, 0x16u);
    }

    [(VSAccountStore *)self _insertModernKeychainItemForAccount:v8 context:v9];
    v30 = v12;
    v18 = [v9 save:&v30];
    v19 = v30;

    if (v18)
    {
      v20 = 1;
    }

    else
    {
      v23 = VSErrorLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [VSAccountStore _insertAccount:inContext:error:];
      }

      v24 = v19;
      *a5 = v19;

      v25 = [v8 legacyKeychainItem];

      if (!v25)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [account legacyKeychainItem] parameter must not be nil."];
      }

      v26 = [v8 legacyKeychainItem];
      [v9 deleteItem:v26];

      v29 = 0;
      LOBYTE(v26) = [v9 save:&v29];
      v19 = v29;
      if ((v26 & 1) == 0)
      {
        v27 = VSErrorLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [VSAccountStore _insertAccount:inContext:error:];
        }
      }

      v20 = 0;
    }
  }

  else
  {
    v21 = VSErrorLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [VSAccountStore _insertAccount:inContext:error:];
    }

    v22 = v12;
    v20 = 0;
    *a5 = v12;
    v19 = v12;
  }

  return v20;
}

- (void)saveAccounts:(id)a3 withCompletionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accounts parameter must not be nil."];
  }

  if (![v6 count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Must supply at least one account to save."];
  }

  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[VSAccountStore saveAccounts:withCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v9 = [(VSAccountStore *)self keychainQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke;
  v12[3] = &unk_278B73848;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 addOperationWithBlock:v12];
}

void __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) keychainEditingContext];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * v8);
        v11 = *(a1 + 32);
        v21 = v9;
        v12 = [v11 _insertAccount:v10 inContext:v2 error:&v21];
        v6 = v21;

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v12 = 1;
  }

  [*(a1 + 32) _updateCachedFirstAccount];
  v13 = VSDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v27 = v12;
    *&v27[4] = 2112;
    *&v27[6] = v6;
    _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Finished saving accounts with status %i with error %@", buf, 0x12u);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_211;
    v17[3] = &unk_278B73870;
    v19 = v14;
    v20 = v12;
    v18 = v6;
    VSPerformCompletionHandler(v17);

    v15 = v19;
  }

  else
  {
    v15 = VSDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v27 = "[VSAccountStore saveAccounts:withCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, "No completion handler passed to %s", buf, 0xCu);
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_214;
  v16[3] = &unk_278B733D8;
  v16[4] = *(a1 + 32);
  VSPerformBlockOnMainThread(v16);
}

void __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_211(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[VSAccountStore saveAccounts:withCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_212;
  v4[3] = &unk_278B73870;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  __53__VSAccountStore_saveAccounts_withCompletionHandler___block_invoke_212(v4);
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[VSAccountStore saveAccounts:withCompletionHandler:]_block_invoke_2";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
  }
}

- (void)removeAccounts:(id)a3 withCompletionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accounts parameter must not be nil."];
  }

  if (![v6 count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Must supply at least one account to remove."];
  }

  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[VSAccountStore removeAccounts:withCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v9 = [(VSAccountStore *)self keychainQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke;
  v12[3] = &unk_278B73848;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 addOperationWithBlock:v12];
}

void __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) keychainEditingContext];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = a1;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    v7 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 legacyKeychainItem];

        if (!v10)
        {
          [MEMORY[0x277CBEAD8] raise:v7 format:@"The [account legacyKeychainItem] parameter must not be nil."];
        }

        v11 = [v9 legacyKeychainItem];
        [v2 deleteItem:v11];

        v12 = [v9 keychainItem];

        if (!v12)
        {
          [MEMORY[0x277CBEAD8] raise:v7 format:@"The [account keychainItem] parameter must not be nil."];
        }

        v13 = [v9 keychainItem];
        [v2 deleteItem:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }

  v25 = 0;
  v14 = [v2 save:&v25];
  v15 = v25;
  [*(v19 + 32) _updateCachedFirstAccount];
  v16 = VSDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, "Finished removing accounts.  Will invoke completion handler and post notification.", buf, 2u);
  }

  v17 = *(v19 + 48);
  if (v17)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_221;
    v21[3] = &unk_278B73870;
    v23 = v17;
    v24 = v14;
    v22 = v15;
    VSPerformCompletionHandler(v21);

    v18 = v23;
  }

  else
  {
    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[VSAccountStore removeAccounts:withCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_23AB8E000, v18, OS_LOG_TYPE_DEFAULT, "No completion handler passed to %s", buf, 0xCu);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_224;
  v20[3] = &unk_278B733D8;
  v20[4] = *(v19 + 32);
  VSPerformBlockOnMainThread(v20);
}

void __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_221(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[VSAccountStore removeAccounts:withCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_222;
  v4[3] = &unk_278B73870;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  __55__VSAccountStore_removeAccounts_withCompletionHandler___block_invoke_222(v4);
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[VSAccountStore removeAccounts:withCompletionHandler:]_block_invoke_2";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
  }
}

- (id)changeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_changeObserver);

  return WeakRetained;
}

- (void)_accountForKeychainItem:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 creatorCode];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Unexpected creator code when deserialziing account from keychain item: %@", v4, 0xCu);
}

@end