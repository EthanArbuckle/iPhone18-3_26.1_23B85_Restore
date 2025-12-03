@interface VSDeveloperModeStore
- (VSDeveloperModeStore)init;
- (id)_developerIdentityProviderInContext:(id)context;
- (id)_identityProviderFetchRequest;
- (id)_nullableObjectOrNSNull:(id)null;
- (id)legacySettingsPropertiesPath;
- (id)settingsPropertiesURL;
- (void)_noteProvidersDidChange;
- (void)_noteServiceDidChange;
- (void)_noteSettingsDidChange;
- (void)_performIdentityProviderBlock:(id)block;
- (void)addDeveloperIdentityProvider:(id)provider completionHandler:(id)handler;
- (void)fetchDeveloperIdentityProvidersWithCompletionHandler:(id)handler;
- (void)fetchDeveloperSettingsWithCompletionHandler:(id)handler;
- (void)legacySettingsPropertiesPath;
- (void)migrateSettingsPropertyFileIfNecessary;
- (void)removeDeveloperIdentityProviderWithUniqueID:(id)d completionHandler:(id)handler;
- (void)settingsPropertiesURL;
- (void)updateDeveloperSettings:(id)settings completionHandler:(id)handler;
- (void)updateExistingDeveloperIdentityProvider:(id)provider completionHandler:(id)handler;
@end

@implementation VSDeveloperModeStore

- (VSDeveloperModeStore)init
{
  v16.receiver = self;
  v16.super_class = VSDeveloperModeStore;
  v2 = [(VSDeveloperModeStore *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSPersistentContainer);
    persistentContainer = v2->_persistentContainer;
    v2->_persistentContainer = v3;

    v5 = dispatch_queue_create("Developer Settings Operation Queue", 0);
    settingsQueue = v2->_settingsQueue;
    v2->_settingsQueue = v5;

    v7 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSDeveloperServiceDidChangeNotification"];
    serviceChangeRemoteNotifier = v2->_serviceChangeRemoteNotifier;
    v2->_serviceChangeRemoteNotifier = v7;

    v9 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSDeveloperServiceSettingsDidChangeNotification"];
    settingsChangeRemoteNotifier = v2->_settingsChangeRemoteNotifier;
    v2->_settingsChangeRemoteNotifier = v9;

    v11 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSDeveloperServiceProvidersDidChangeNotification"];
    providersChangeRemoteNotifier = v2->_providersChangeRemoteNotifier;
    v2->_providersChangeRemoteNotifier = v11;

    v13 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSAccountStoreDidChangeNotification"];
    accountStoreChangeRemoteNotifier = v2->_accountStoreChangeRemoteNotifier;
    v2->_accountStoreChangeRemoteNotifier = v13;

    [(VSDeveloperModeStore *)v2 migrateSettingsPropertyFileIfNecessary];
  }

  return v2;
}

- (id)settingsPropertiesURL
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v3 = [v2 URLsForDirectory:5 inDomains:1];
  firstObject = [v3 firstObject];

  if (firstObject)
  {
    v5 = firstObject;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (bundleIdentifier)
    {
      v8 = [v5 URLByAppendingPathComponent:bundleIdentifier];
      v9 = v8;
      if (v8)
      {
        path = [v8 path];

        if (!path)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [containerDirectoryOrNil path] parameter must not be nil."];
        }

        path2 = [v9 path];
        v18 = 0;
        if (([v2 fileExistsAtPath:path2 isDirectory:&v18] & 1) == 0)
        {
          v17 = 0;
          v12 = [v2 createDirectoryAtPath:path2 withIntermediateDirectories:0 attributes:0 error:&v17];
          v13 = v17;
          if ((v12 & 1) == 0)
          {
            v14 = VSErrorLogObject();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [VSDeveloperModeStore settingsPropertiesURL];
            }
          }
        }

        v15 = [v9 URLByAppendingPathComponent:@"DeveloperSettings.plist"];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v5 = VSErrorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [VSDeveloperModeStore settingsPropertiesURL];
    }

    v15 = 0;
  }

  return v15;
}

- (id)legacySettingsPropertiesPath
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v3 = [v2 URLsForDirectory:9 inDomains:1];
  firstObject = [v3 firstObject];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier && ([firstObject URLByAppendingPathComponent:bundleIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    path = [v8 path];
    if (path)
    {
      v10 = [v8 URLByAppendingPathComponent:@"DeveloperSettings.plist"];
    }

    else
    {
      v12 = VSErrorLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [VSDeveloperModeStore legacySettingsPropertiesPath];
      }

      v10 = 0;
    }

    v11 = v8;
  }

  else
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VSDeveloperModeStore legacySettingsPropertiesPath];
    }

    v11 = 0;
    v10 = 0;
  }

  return v10;
}

- (void)migrateSettingsPropertyFileIfNecessary
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)_identityProviderFetchRequest
{
  persistentContainer = [(VSDeveloperModeStore *)self persistentContainer];
  developerIdentityProviderFetchRequest = [persistentContainer developerIdentityProviderFetchRequest];

  return developerIdentityProviderFetchRequest;
}

- (id)_developerIdentityProviderInContext:(id)context
{
  contextCopy = context;
  persistentContainer = [(VSDeveloperModeStore *)self persistentContainer];
  v6 = [persistentContainer insertDeveloperIdentityProviderInContext:contextCopy];

  return v6;
}

- (void)_performIdentityProviderBlock:(id)block
{
  blockCopy = block;
  persistentContainer = [(VSDeveloperModeStore *)self persistentContainer];
  [persistentContainer performBlock:blockCopy];
}

- (void)_noteServiceDidChange
{
  serviceChangeRemoteNotifier = [(VSDeveloperModeStore *)self serviceChangeRemoteNotifier];
  [serviceChangeRemoteNotifier postNotification];
}

- (void)_noteSettingsDidChange
{
  settingsChangeRemoteNotifier = [(VSDeveloperModeStore *)self settingsChangeRemoteNotifier];
  [settingsChangeRemoteNotifier postNotification];
}

- (void)_noteProvidersDidChange
{
  providersChangeRemoteNotifier = [(VSDeveloperModeStore *)self providersChangeRemoteNotifier];
  [providersChangeRemoteNotifier postNotification];
}

- (id)_nullableObjectOrNSNull:(id)null
{
  nullCopy = null;
  v4 = nullCopy;
  if (nullCopy)
  {
    null = nullCopy;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v6 = null;

  return v6;
}

- (void)fetchDeveloperIdentityProvidersWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VSDeveloperModeStore fetchDeveloperIdentityProvidersWithCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke;
  v7[3] = &unk_278B73988;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(VSDeveloperModeStore *)self fetchDeveloperSettingsWithCompletionHandler:v7];
}

void __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__8;
  v9[4] = __Block_byref_object_dispose__8;
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_64;
  v8[3] = &unk_278B735D0;
  v8[4] = v9;
  [v3 unwrapObject:v8 error:&__block_literal_global_30];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_67;
  v5[3] = &unk_278B74678;
  v5[4] = v4;
  v7 = v9;
  v6 = *(a1 + 40);
  [v4 _performIdentityProviderBlock:v5];

  _Block_object_dispose(v9, 8);
}

void __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_2_cold_1();
  }
}

void __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_67(uint64_t a1, void *a2)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v52 = a1;
  v4 = [*(a1 + 32) _identityProviderFetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  [v4 setPredicate:v5];

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"nameForSorting" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v68[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
  [v4 setSortDescriptors:v7];

  [v4 setReturnsObjectsAsFaults:0];
  v63 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v63];
  v9 = v63;
  v10 = v9;
  if (v8)
  {
    v47 = v9;
    v49 = v6;
    v50 = v4;
    v51 = v3;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v48 = v8;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    v13 = v52;
    v53 = v11;
    if (v12)
    {
      v14 = v12;
      v55 = *v60;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v60 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v59 + 1) + 8 * i);
          v17 = objc_alloc_init(VSIdentityProvider);
          [v11 addObject:v17];
          [(VSIdentityProvider *)v17 setDeveloper:1];
          v18 = [v16 uniqueID];
          v19 = [v18 copy];
          v20 = [VSOptional optionalWithObject:v19];
          [(VSIdentityProvider *)v17 setUniqueID:v20];

          v21 = [v16 providerID];
          v22 = [v21 copy];
          v23 = [VSOptional optionalWithObject:v22];
          [(VSIdentityProvider *)v17 setProviderID:v23];

          v24 = [v16 nameForSorting];
          [(VSIdentityProvider *)v17 setNameForSorting:v24];

          v25 = [v16 authenticationSchemes];
          v26 = [v25 copy];
          [(VSIdentityProvider *)v17 setSupportedAuthenticationSchemes:v26];

          -[VSIdentityProvider setRequireAuthenticationURLSystemTrust:](v17, "setRequireAuthenticationURLSystemTrust:", [v16 requireBootUrlSystemTrust]);
          -[VSIdentityProvider setRequireXHRRequestSystemTrust:](v17, "setRequireXHRRequestSystemTrust:", [v16 requireXHRRequestSystemTrust]);
          v27 = [v16 authenticationURL];
          if (v27)
          {
            v28 = [MEMORY[0x277CBEBC0] URLWithString:v27];
            [(VSIdentityProvider *)v17 setAuthenticationURL:v28];
          }

          v29 = VSPlatformTemplateElements();
          v30 = [v29 allObjects];
          [(VSIdentityProvider *)v17 setSupportedTemplates:v30];

          v31 = [(VSIdentityProvider *)v17 supportedAuthenticationSchemes];
          if (![v31 count])
          {
            v66[0] = @"SAML";
            v66[1] = @"API";
            v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
            [(VSIdentityProvider *)v17 setSupportedAuthenticationSchemes:v32];
          }

          v33 = *(*(*(v13 + 48) + 8) + 40);
          if (v33)
          {
            v34 = v33;
            if ([v34 isInSetTopBoxMode])
            {
              v35 = [(VSIdentityProvider *)v17 uniqueID];
              v36 = [v35 forceUnwrapObject];
              v37 = [v34 setTopBoxIdentityProviderID];
              v38 = [v36 isEqual:v37];

              v13 = v52;
              v11 = v53;

              if (v38)
              {
                -[VSIdentityProvider setIsSTBOptOutAllowed:](v17, "setIsSTBOptOutAllowed:", [v34 setTopBoxSupportsOptOut]);
                v39 = [v34 setTopBoxUserToken];
                [(VSIdentityProvider *)v17 setUserToken:v39];

                v11 = v53;
              }
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v14);
    }

    v40 = VSDefaultLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v65 = "[VSDeveloperModeStore fetchDeveloperIdentityProvidersWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_23AB8E000, v40, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_86;
    v56[3] = &unk_278B737F8;
    v41 = *(v13 + 40);
    v57 = v53;
    v58 = v41;
    v42 = v53;
    __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_86(v56);
    v43 = VSDefaultLogObject();
    v4 = v50;
    v3 = v51;
    v8 = v48;
    v6 = v49;
    v10 = v47;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v65 = "[VSDeveloperModeStore fetchDeveloperIdentityProvidersWithCompletionHandler:]_block_invoke_2";
      _os_log_impl(&dword_23AB8E000, v43, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
    }

    v44 = v58;
  }

  else
  {
    v45 = VSErrorLogObject();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_67_cold_1();
    }

    v46 = *(v52 + 40);
    if (!v10)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The error parameter must not be nil."];
    }

    v44 = v10;
    v42 = [VSFailable failableWithError:v44];
    (*(v46 + 16))(v46, v42);
  }
}

void __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_86(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [VSFailable failableWithObject:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

- (void)addDeveloperIdentityProvider:(id)provider completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  handlerCopy = handler;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[VSDeveloperModeStore addDeveloperIdentityProvider:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!providerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The identityProvider parameter must not be nil."];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__VSDeveloperModeStore_addDeveloperIdentityProvider_completionHandler___block_invoke;
  v11[3] = &unk_278B746A0;
  v11[4] = self;
  v12 = providerCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = providerCopy;
  [(VSDeveloperModeStore *)self _performIdentityProviderBlock:v11];
}

void __71__VSDeveloperModeStore_addDeveloperIdentityProvider_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _developerIdentityProviderInContext:v4];
  v6 = [*(a1 + 40) uniqueID];
  v7 = [v6 forceUnwrapObject];
  v8 = [v7 copy];
  [v5 setUniqueID:v8];

  v9 = [*(a1 + 40) providerID];
  v10 = [v9 forceUnwrapObject];
  v11 = [v10 copy];
  [v5 setProviderID:v11];

  v12 = [*(a1 + 40) nameForSorting];
  [v5 setNameForSorting:v12];

  v13 = [*(a1 + 40) authenticationURL];
  v14 = [v13 absoluteString];
  [v5 setAuthenticationURL:v14];

  v15 = [*(a1 + 40) supportedAuthenticationSchemes];
  v16 = [v15 copy];
  [v5 setAuthenticationSchemes:v16];

  [v5 setRequireBootUrlSystemTrust:{objc_msgSend(*(a1 + 40), "requireAuthenticationURLSystemTrust")}];
  [v5 setRequireXHRRequestSystemTrust:{objc_msgSend(*(a1 + 40), "requireXHRRequestSystemTrust")}];
  v22 = 0;
  LODWORD(v15) = [v4 save:&v22];

  v17 = v22;
  if (v15)
  {
    [*(a1 + 32) fetchDeveloperIdentityProvidersWithCompletionHandler:*(a1 + 48)];
    [*(a1 + 32) _noteServiceDidChange];
    [*(a1 + 32) _noteProvidersDidChange];
  }

  else
  {
    v18 = VSErrorLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __71__VSDeveloperModeStore_addDeveloperIdentityProvider_completionHandler___block_invoke_cold_1();
    }

    v19 = *(a1 + 48);
    if (!v17)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The saveError parameter must not be nil."];
    }

    v20 = v17;
    v21 = [VSFailable failableWithError:v20];
    (*(v19 + 16))(v19, v21);
  }
}

- (void)updateExistingDeveloperIdentityProvider:(id)provider completionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  handlerCopy = handler;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[VSDeveloperModeStore updateExistingDeveloperIdentityProvider:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", &v9, 0xCu);
  }

  if (!providerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The identityProvider parameter must not be nil."];
  }

  [(VSDeveloperModeStore *)self addDeveloperIdentityProvider:providerCopy completionHandler:handlerCopy];
}

- (void)removeDeveloperIdentityProviderWithUniqueID:(id)d completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[VSDeveloperModeStore removeDeveloperIdentityProviderWithUniqueID:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!dCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The uniqueID parameter must not be nil."];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke;
  v11[3] = &unk_278B746A0;
  v11[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  [(VSDeveloperModeStore *)self _performIdentityProviderBlock:v11];
}

void __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _identityProviderFetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", @"uniqueID", *(a1 + 40)];
  [v4 setPredicate:v5];
  v31 = 0;
  v6 = [v3 executeFetchRequest:v4 error:&v31];
  v7 = v31;
  if (v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        v12 = 0;
        do
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v3 deleteObject:*(*(&v27 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    v26 = 0;
    v13 = [v3 save:&v26];
    v14 = v26;
    if (v13)
    {
      [*(a1 + 32) fetchDeveloperIdentityProvidersWithCompletionHandler:*(a1 + 48)];
      [*(a1 + 32) _noteServiceDidChange];
      [*(a1 + 32) _noteProvidersDidChange];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_2;
      v23[3] = &unk_278B74718;
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = *(a1 + 32);
      v24 = v16;
      v25 = v17;
      [v15 fetchDeveloperSettingsWithCompletionHandler:v23];
      v18 = v24;
    }

    else
    {
      v21 = VSErrorLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_cold_1();
      }

      v22 = *(a1 + 48);
      if (!v14)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The saveError parameter must not be nil."];
      }

      v14 = v14;
      v18 = [VSFailable failableWithError:v14];
      (*(v22 + 16))(v22, v18);
    }
  }

  else
  {
    v19 = VSErrorLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_cold_2();
    }

    v20 = *(a1 + 48);
    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The fetchError parameter must not be nil."];
    }

    v18 = v7;
    v14 = [VSFailable failableWithError:v18];
    (*(v20 + 16))(v20, v14);
  }
}

void __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_3;
  v6[3] = &unk_278B746F0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 unwrapObject:v6 error:&__block_literal_global_115_0];
}

void __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 setTopBoxIdentityProviderID];
  LODWORD(v4) = [v4 isEqual:v5];

  if (v4)
  {
    [v3 setIsInSetTopBoxMode:0];
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_4;
    v7[3] = &unk_278B73308;
    v7[4] = v6;
    [v6 updateDeveloperSettings:v3 completionHandler:v7];
  }
}

uint64_t __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_5;
  v3[3] = &unk_278B746C8;
  v3[4] = *(a1 + 32);
  return [a2 unwrapObject:v3 error:&__block_literal_global_112];
}

uint64_t __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Successfully disable set-top box mode after all developer providers removed.", v4, 2u);
  }

  [*(a1 + 32) _noteServiceDidChange];
  return [*(a1 + 32) _noteProvidersDidChange];
}

void __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_110(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_110_cold_1();
  }
}

void __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_113(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_113_cold_1();
  }
}

- (void)fetchDeveloperSettingsWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VSDeveloperModeStore fetchDeveloperSettingsWithCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  settingsQueue = [(VSDeveloperModeStore *)self settingsQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__VSDeveloperModeStore_fetchDeveloperSettingsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278B73758;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(settingsQueue, v8);
}

void __68__VSDeveloperModeStore_fetchDeveloperSettingsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) settingsPropertiesURL];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2];
    v4 = VSDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 absoluteString];
      *buf = 138412290;
      v30 = v5;
      _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will fetch developer settings with path %@", buf, 0xCu);
    }

    if (v3)
    {
      v28 = 0;
      v6 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:&v28];
      v7 = v28;
      v8 = v7;
      if (v6)
      {
        v9 = objc_alloc_init(VSDeveloperSettings);
        v10 = [v6 objectForKey:@"VSDeveloperSettingsPropertyIsInSetTopBoxModeKey"];
        -[VSDeveloperSettings setIsInSetTopBoxMode:](v9, "setIsInSetTopBoxMode:", [v10 BOOLValue]);

        v11 = [v6 objectForKey:@"VSDeveloperSettingsPropertyIsCacheBusterEnabledKey"];
        -[VSDeveloperSettings setCacheBusterEnabled:](v9, "setCacheBusterEnabled:", [v11 BOOLValue]);

        v12 = [v6 objectForKey:@"VSDeveloperSettingsPropertySetTopBoxBundleIdentifierKey"];
        [(VSDeveloperSettings *)v9 setSetTopBoxBundleIdentifier:v12];

        v13 = [v6 objectForKey:@"VSDeveloperSettingsPropertySetTopBoxUserTokenKey"];
        [(VSDeveloperSettings *)v9 setSetTopBoxUserToken:v13];

        v14 = [v6 objectForKey:@"VSDeveloperSettingsPropertySetTopBoxProviderIDKey"];
        [(VSDeveloperSettings *)v9 setSetTopBoxIdentityProviderID:v14];

        v15 = [v6 objectForKey:@"VSDeveloperSettingsPropertySetTopBoxUseDeviceProfileKey"];
        -[VSDeveloperSettings setSetTopBoxUseDeviceProfile:](v9, "setSetTopBoxUseDeviceProfile:", [v15 BOOLValue]);

        v16 = [v6 objectForKey:@"VSDeveloperSettingsPropertySetTopBoxSupportsOptOut"];
        -[VSDeveloperSettings setSetTopBoxSupportsOptOut:](v9, "setSetTopBoxSupportsOptOut:", [v16 BOOLValue]);

        v17 = [v6 objectForKey:@"VSDeveloperSettingsPropertySimulateExpiredToken"];
        -[VSDeveloperSettings setSimulateExpiredToken:](v9, "setSimulateExpiredToken:", [v17 BOOLValue]);

        v18 = [v6 objectForKey:@"VSDeveloperSettingsPropertyRequestTimeoutsEnabled"];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 BOOLValue] ^ 1;
        }

        else
        {
          v25 = [v6 objectForKey:@"VSDeveloperSettingsPropertyRequestTimeoutsDisabled"];
          v20 = [v25 BOOLValue];
        }

        [(VSDeveloperSettings *)v9 setRequestTimeoutsDisabled:v20];
        v26 = *(a1 + 40);
        v27 = [VSFailable failableWithObject:v9];
        (*(v26 + 16))(v26, v27);
      }

      else
      {
        if (!v7)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The serializationErrorOrNil parameter must not be nil."];
        }

        v9 = v8;
        v23 = VSErrorLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __68__VSDeveloperModeStore_fetchDeveloperSettingsWithCompletionHandler___block_invoke_cold_1();
        }

        v24 = *(a1 + 40);
        v19 = [VSFailable failableWithError:v9];
        (*(v24 + 16))(v24, v19);
      }
    }

    else
    {
      v8 = objc_alloc_init(VSDeveloperSettings);
      [(VSDeveloperSettings *)v8 setDefaults];
      [*(a1 + 32) updateDeveloperSettings:v8 completionHandler:*(a1 + 40)];
    }
  }

  else
  {
    v21 = VSErrorLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __68__VSDeveloperModeStore_fetchDeveloperSettingsWithCompletionHandler___block_invoke_cold_2();
    }

    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSDeveloperServiceErrorDomain" code:-2 userInfo:0];
    v22 = *(a1 + 40);
    v8 = [VSFailable failableWithError:v3];
    (*(v22 + 16))(v22, v8);
  }
}

- (void)updateDeveloperSettings:(id)settings completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  handlerCopy = handler;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[VSDeveloperModeStore updateDeveloperSettings:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!settingsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The settings parameter must not be nil."];
  }

  settingsQueue = [(VSDeveloperModeStore *)self settingsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__VSDeveloperModeStore_updateDeveloperSettings_completionHandler___block_invoke;
  block[3] = &unk_278B73848;
  block[4] = self;
  v13 = settingsCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = settingsCopy;
  dispatch_async(settingsQueue, block);
}

void __66__VSDeveloperModeStore_updateDeveloperSettings_completionHandler___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) settingsPropertiesURL];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 path];

    if (!v4)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [settingsURL path] parameter must not be nil."];
    }

    v5 = [v3 path];
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v5;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will update developer settings using path %@", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v7 fileExistsAtPath:v5])
    {
      v39 = 0;
      v8 = [v7 removeItemAtPath:v5 error:&v39];
      v9 = v39;
      v10 = v9;
      if ((v8 & 1) == 0)
      {
        if (!v9)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The rmErrorOrNil parameter must not be nil."];
        }

        v11 = v10;
        v12 = VSErrorLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __66__VSDeveloperModeStore_updateDeveloperSettings_completionHandler___block_invoke_cold_1();
        }
      }
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isInSetTopBoxMode")}];
    [v13 setObject:v14 forKey:@"VSDeveloperSettingsPropertyIsInSetTopBoxModeKey"];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "cacheBusterEnabled")}];
    [v13 setObject:v15 forKey:@"VSDeveloperSettingsPropertyIsCacheBusterEnabledKey"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "requestTimeoutsDisabled")}];
    [v13 setObject:v16 forKey:@"VSDeveloperSettingsPropertyRequestTimeoutsDisabled"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "simulateExpiredToken")}];
    [v13 setObject:v17 forKey:@"VSDeveloperSettingsPropertySimulateExpiredToken"];

    v18 = [*(a1 + 40) setTopBoxBundleIdentifier];
    [v13 vs_setObjectUnlessNil:v18 forKey:@"VSDeveloperSettingsPropertySetTopBoxBundleIdentifierKey"];

    v19 = [*(a1 + 40) setTopBoxUserToken];
    [v13 vs_setObjectUnlessNil:v19 forKey:@"VSDeveloperSettingsPropertySetTopBoxUserTokenKey"];

    v20 = [*(a1 + 40) setTopBoxIdentityProviderID];
    [v13 vs_setObjectUnlessNil:v20 forKey:@"VSDeveloperSettingsPropertySetTopBoxProviderIDKey"];

    v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "setTopBoxUseDeviceProfile")}];
    [v13 setObject:v21 forKey:@"VSDeveloperSettingsPropertySetTopBoxUseDeviceProfileKey"];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "setTopBoxSupportsOptOut")}];
    [v13 setObject:v22 forKey:@"VSDeveloperSettingsPropertySetTopBoxSupportsOptOut"];

    v38 = 0;
    v23 = [MEMORY[0x277CCAC58] dataWithPropertyList:v13 format:200 options:0 error:&v38];
    v24 = v38;
    v25 = v24;
    if (v23)
    {
      v37 = v24;
      v26 = [v23 writeToFile:v5 options:1 error:&v37];
      v27 = v37;

      if (v26)
      {
        v28 = VSDefaultLogObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v5;
          _os_log_impl(&dword_23AB8E000, v28, OS_LOG_TYPE_DEFAULT, "successfully wrote developer settings to %@", buf, 0xCu);
        }

        [*(a1 + 32) _noteServiceDidChange];
        [*(a1 + 32) _noteSettingsDidChange];
        v29 = [*(a1 + 32) accountStoreChangeRemoteNotifier];
        [v29 postNotification];

        v30 = *(a1 + 48);
        v31 = [VSFailable failableWithObject:*(a1 + 40)];
        (*(v30 + 16))(v30, v31);
        goto LABEL_31;
      }

      if (!v27)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
      }

      v31 = v27;
      v34 = VSErrorLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        __66__VSDeveloperModeStore_updateDeveloperSettings_completionHandler___block_invoke_cold_2();
      }
    }

    else
    {
      if (!v24)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
      }

      v31 = v25;
      v34 = VSErrorLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        __66__VSDeveloperModeStore_updateDeveloperSettings_completionHandler___block_invoke_cold_3();
      }
    }

    v35 = *(a1 + 48);
    v36 = [VSFailable failableWithError:v31];
    (*(v35 + 16))(v35, v36);

    v27 = v31;
LABEL_31:

    goto LABEL_32;
  }

  v32 = VSErrorLogObject();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    __68__VSDeveloperModeStore_fetchDeveloperSettingsWithCompletionHandler___block_invoke_cold_2();
  }

  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSDeveloperServiceErrorDomain" code:-2 userInfo:0];
  v33 = *(a1 + 48);
  v7 = [VSFailable failableWithError:v5];
  (*(v33 + 16))(v33, v7);
LABEL_32:
}

- (void)settingsPropertiesURL
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)legacySettingsPropertiesPath
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __77__VSDeveloperModeStore_fetchDeveloperIdentityProvidersWithCompletionHandler___block_invoke_67_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __71__VSDeveloperModeStore_addDeveloperIdentityProvider_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_110_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __86__VSDeveloperModeStore_removeDeveloperIdentityProviderWithUniqueID_completionHandler___block_invoke_113_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __68__VSDeveloperModeStore_fetchDeveloperSettingsWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __68__VSDeveloperModeStore_fetchDeveloperSettingsWithCompletionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__VSDeveloperModeStore_updateDeveloperSettings_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __66__VSDeveloperModeStore_updateDeveloperSettings_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end