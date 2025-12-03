@interface ACHBackCompatMonthlyChallengeListener
- (ACHBackCompatMonthlyChallengeListener)initWithProfile:(id)profile templateStore:(id)store;
- (ACHTemplateStore)templateStore;
- (BOOL)_readAndSaveBackCompatDefinitions;
- (HDProfile)profile;
- (id)_definitionsFromKeyValuePairs:(id)pairs;
- (void)_protectedNanoUserDefaultsDidSyncWithNotification:(id)notification;
- (void)_readAndSaveBackCompatDefinitions;
- (void)daemonReady:(id)ready;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
@end

@implementation ACHBackCompatMonthlyChallengeListener

- (ACHBackCompatMonthlyChallengeListener)initWithProfile:(id)profile templateStore:(id)store
{
  profileCopy = profile;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = ACHBackCompatMonthlyChallengeListener;
  v8 = [(ACHBackCompatMonthlyChallengeListener *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeWeak(&v9->_templateStore, storeCopy);
    daemon = [profileCopy daemon];
    [daemon registerForDaemonReady:v9];
  }

  return v9;
}

- (void)daemonReady:(id)ready
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__protectedNanoUserDefaultsDidSyncWithNotification_ name:*MEMORY[0x277D10490] object:0];

  profile = [(ACHBackCompatMonthlyChallengeListener *)self profile];
  database = [profile database];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ACHBackCompatMonthlyChallengeListener_daemonReady___block_invoke;
  v7[3] = &unk_278490870;
  v7[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailable:v7];
}

void __53__ACHBackCompatMonthlyChallengeListener_daemonReady___block_invoke(uint64_t a1)
{
  v2 = ACHLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v2, OS_LOG_TYPE_DEFAULT, "Trying to read dynamic definitions because data protected by first unlock is now available.", buf, 2u);
  }

  v3 = [*(a1 + 32) _readAndSaveBackCompatDefinitions];
  v4 = ACHLogDefault();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Dynamic definitions saved, not observing protected data.", v8, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Dynamic definitions read failed, observing protected data changes.", v7, 2u);
    }

    v4 = [*(a1 + 32) profile];
    v6 = [v4 database];
    [v6 addProtectedDataObserver:*(a1 + 32)];
  }
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  if (available)
  {
    v5 = ACHLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Protected data available and dynamic definitions never read, trying to read and save.", buf, 2u);
    }

    _readAndSaveBackCompatDefinitions = [(ACHBackCompatMonthlyChallengeListener *)self _readAndSaveBackCompatDefinitions];
    v7 = ACHLogDefault();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (_readAndSaveBackCompatDefinitions)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Dynamic definitions saved, removing protected data observation.", buf, 2u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__ACHBackCompatMonthlyChallengeListener_database_protectedDataDidBecomeAvailable___block_invoke;
      block[3] = &unk_278490870;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Dynamic definitions read failed, will try again on next protected data availability.", buf, 2u);
      }
    }
  }
}

void __82__ACHBackCompatMonthlyChallengeListener_database_protectedDataDidBecomeAvailable___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) profile];
  v2 = [v3 database];
  [v2 removeProtectedDataObserver:*(a1 + 32)];
}

- (void)_protectedNanoUserDefaultsDidSyncWithNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D10488]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 hk_firstObjectPassingTest:&__block_literal_global_10];
    if (v6)
    {
      v7 = ACHLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Dynamic definitions synced, creating and writing templates.", v8, 2u);
      }

      [(ACHBackCompatMonthlyChallengeListener *)self _readAndSaveBackCompatDefinitions];
    }
  }
}

- (BOOL)_readAndSaveBackCompatDefinitions
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [v3 initWithCategory:105 domainName:@"DynamicAchievements" profile:WeakRetained];

  v49 = 0;
  v6 = [v5 allValuesWithError:&v49];
  v7 = v49;
  injectedKeyValuePairs = [(ACHBackCompatMonthlyChallengeListener *)self injectedKeyValuePairs];
  v9 = injectedKeyValuePairs == 0;

  if (!v9)
  {
    injectedKeyValuePairs2 = [(ACHBackCompatMonthlyChallengeListener *)self injectedKeyValuePairs];
    v11 = injectedKeyValuePairs2;
    if (v6)
    {
      v12 = [v6 hk_dictionaryByAddingEntriesFromDictionary:injectedKeyValuePairs2];
    }

    else
    {
      v6 = [injectedKeyValuePairs2 copy];
    }
  }

  if (!v7)
  {
    v13 = [(ACHBackCompatMonthlyChallengeListener *)self _definitionsFromKeyValuePairs:v6];
    v15 = ACHLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v13 count];
      *buf = 134218242;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, "Read %lu back-compat dynamic definitions from the key-value store: %@", buf, 0x16u);
    }

    v17 = [v13 hk_map:&__block_literal_global_309];
    if (![v17 count])
    {
      readTemplatesBlock = [(ACHBackCompatMonthlyChallengeListener *)self readTemplatesBlock];

      if (readTemplatesBlock)
      {
        readTemplatesBlock2 = [(ACHBackCompatMonthlyChallengeListener *)self readTemplatesBlock];
        readTemplatesBlock2[2](readTemplatesBlock2, MEMORY[0x277CBEBF8]);
      }

      v37 = ACHLogDefault();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v37, OS_LOG_TYPE_DEFAULT, "No templates were created from back-compat dynamic definitions.", buf, 2u);
      }

      v7 = 0;
      goto LABEL_32;
    }

    v18 = ACHLogDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 count];
      *buf = 134218242;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_221DDC000, v18, OS_LOG_TYPE_DEFAULT, "Created %lu templates from back-compat dynamic definitions: %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = __Block_byref_object_copy__8;
    v54 = __Block_byref_object_dispose__8;
    v55 = MEMORY[0x277CBEBF8];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __74__ACHBackCompatMonthlyChallengeListener__readAndSaveBackCompatDefinitions__block_invoke_310;
    v48[3] = &unk_278491748;
    v48[4] = buf;
    v20 = [v17 hk_map:v48];
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    templateStore = [(ACHBackCompatMonthlyChallengeListener *)self templateStore];
    allTemplates = [templateStore allTemplates];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __74__ACHBackCompatMonthlyChallengeListener__readAndSaveBackCompatDefinitions__block_invoke_2;
    v44[3] = &unk_278491798;
    v40 = v20;
    v45 = v40;
    v47 = buf;
    v24 = v21;
    v46 = v24;
    v25 = [allTemplates hk_map:v44];

    v26 = MEMORY[0x277CCAC30];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __74__ACHBackCompatMonthlyChallengeListener__readAndSaveBackCompatDefinitions__block_invoke_4;
    v42[3] = &unk_278491088;
    v27 = v24;
    v43 = v27;
    v28 = [v26 predicateWithBlock:v42];
    v29 = [v17 filteredArrayUsingPredicate:v28];

    if ([v25 count] && (-[ACHBackCompatMonthlyChallengeListener templateStore](self, "templateStore", v40), v30 = objc_claimAutoreleasedReturnValue(), v41 = 0, objc_msgSend(v30, "removeTemplates:error:", v25, &v41), v7 = v41, v30, v7))
    {
      templateStore2 = ACHLogDefault();
      if (os_log_type_enabled(templateStore2, OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 138412290;
        v51 = v7;
        _os_log_impl(&dword_221DDC000, templateStore2, OS_LOG_TYPE_DEFAULT, "Back compat monthly challenge listener failed to remove existing templates: %@", v50, 0xCu);
      }

      v32 = 0;
    }

    else
    {
      readTemplatesBlock3 = [(ACHBackCompatMonthlyChallengeListener *)self readTemplatesBlock];

      if (readTemplatesBlock3)
      {
        readTemplatesBlock4 = [(ACHBackCompatMonthlyChallengeListener *)self readTemplatesBlock];
        (readTemplatesBlock4)[2](readTemplatesBlock4, v29);
      }

      if (![v29 count])
      {
        v7 = 0;
        v32 = 1;
LABEL_31:

        _Block_object_dispose(buf, 8);
        if ((v32 & 1) == 0)
        {
          v14 = 0;
          goto LABEL_34;
        }

LABEL_32:
        v14 = 1;
LABEL_34:

        goto LABEL_35;
      }

      templateStore2 = [(ACHBackCompatMonthlyChallengeListener *)self templateStore];
      [templateStore2 addTemplates:v29 error:0];
      v7 = 0;
      v32 = 1;
    }

    goto LABEL_31;
  }

  v13 = ACHLogDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(ACHBackCompatMonthlyChallengeListener *)v7 _readAndSaveBackCompatDefinitions];
  }

  v14 = 0;
LABEL_35:

  v38 = *MEMORY[0x277D85DE8];
  return v14;
}

id __74__ACHBackCompatMonthlyChallengeListener__readAndSaveBackCompatDefinitions__block_invoke_310(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueName];
  v5 = [v4 componentsSeparatedByString:@"_"];

  if ([v5 count] == 3)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v3 uniqueName];
    v8 = [v6 arrayByAddingObject:v7];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = MEMORY[0x277CCACA8];
    v12 = [v5 objectAtIndexedSubscript:1];
    v13 = [v5 objectAtIndexedSubscript:2];
    v14 = [v11 stringWithFormat:@"%@_%@", v12, v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __74__ACHBackCompatMonthlyChallengeListener__readAndSaveBackCompatDefinitions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (ACHTemplateIsMonthlyChallenge())
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__8;
    v17 = __Block_byref_object_dispose__8;
    v18 = 0;
    v4 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__ACHBackCompatMonthlyChallengeListener__readAndSaveBackCompatDefinitions__block_invoke_3;
    v9[3] = &unk_278491770;
    v10 = v3;
    v12 = &v13;
    v8 = *(a1 + 40);
    v5 = v8;
    v11 = v8;
    [v4 enumerateObjectsUsingBlock:v9];
    v6 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __74__ACHBackCompatMonthlyChallengeListener__readAndSaveBackCompatDefinitions__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 uniqueName];
  v8 = [v7 containsString:v6];

  if (v8)
  {
    v11 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:a3];
    v9 = [*(a1 + 32) uniqueName];
    v10 = [v9 isEqualToString:v11];

    if (v10)
    {
      [*(a1 + 40) addObject:v11];
    }

    else
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
    }
  }
}

uint64_t __74__ACHBackCompatMonthlyChallengeListener__readAndSaveBackCompatDefinitions__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueName];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (id)_definitionsFromKeyValuePairs:(id)pairs
{
  pairsCopy = pairs;
  allKeys = [pairsCopy allKeys];
  v5 = [allKeys hk_filter:&__block_literal_global_324];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__ACHBackCompatMonthlyChallengeListener__definitionsFromKeyValuePairs___block_invoke_2;
  v9[3] = &unk_2784917C0;
  v10 = pairsCopy;
  v6 = pairsCopy;
  v7 = [v5 hk_map:v9];

  return v7;
}

id __71__ACHBackCompatMonthlyChallengeListener__definitionsFromKeyValuePairs___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [MEMORY[0x277CE8CD0] definitionFromData:v2];

  return v3;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (ACHTemplateStore)templateStore
{
  WeakRetained = objc_loadWeakRetained(&self->_templateStore);

  return WeakRetained;
}

- (void)_readAndSaveBackCompatDefinitions
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Failed to read legacy dynamic definitions from key value domain with error %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end