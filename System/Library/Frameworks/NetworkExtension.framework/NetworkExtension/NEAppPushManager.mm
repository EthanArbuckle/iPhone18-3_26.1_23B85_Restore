@interface NEAppPushManager
+ (id)loadedManagers;
+ (void)loadAllFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (BOOL)establishSessionManagerConnectionWithConfigurationID:(void *)a1;
- (BOOL)isEnabled;
- (BOOL)matchEthernet;
- (NEAppPushManager)init;
- (NSArray)matchPrivateLTENetworks;
- (NSArray)matchSSIDs;
- (NSDictionary)providerConfiguration;
- (NSString)localizedDescription;
- (NSString)providerBundleIdentifier;
- (id)delegate;
- (void)cancelSessionManagerConnection;
- (void)dealloc;
- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)setLocalizedDescription:(NSString *)localizedDescription;
- (void)setMatchPrivateLTENetworks:(NSArray *)matchPrivateLTENetworks;
- (void)setMatchSSIDs:(NSArray *)matchSSIDs;
- (void)setProviderBundleIdentifier:(NSString *)providerBundleIdentifier;
- (void)setProviderConfiguration:(NSDictionary *)providerConfiguration;
@end

@implementation NEAppPushManager

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setProviderBundleIdentifier:(NSString *)providerBundleIdentifier
{
  v9 = providerBundleIdentifier;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 appPush];
  [v8 setProviderBundleIdentifier:v9];

  objc_sync_exit(v4);
}

- (NSString)providerBundleIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 appPush];
  v7 = [v6 providerBundleIdentifier];

  objc_sync_exit(v2);

  return v7;
}

- (void)setLocalizedDescription:(NSString *)localizedDescription
{
  v8 = localizedDescription;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  [v7 setName:v8];

  objc_sync_exit(v4);
}

- (NSString)localizedDescription
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 name];

  objc_sync_exit(v2);

  return v6;
}

- (void)setProviderConfiguration:(NSDictionary *)providerConfiguration
{
  v9 = providerConfiguration;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 appPush];
  [v8 setProviderConfiguration:v9];

  objc_sync_exit(v4);
}

- (NSDictionary)providerConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 appPush];
  v7 = [v6 providerConfiguration];

  objc_sync_exit(v2);

  return v7;
}

- (BOOL)matchEthernet
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 appPush];
  v7 = [v6 matchEthernet];

  objc_sync_exit(v2);
  return v7;
}

- (void)setMatchPrivateLTENetworks:(NSArray *)matchPrivateLTENetworks
{
  v9 = matchPrivateLTENetworks;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 appPush];
  [v8 setMatchPrivateLTENetworks:v9];

  objc_sync_exit(v4);
}

- (NSArray)matchPrivateLTENetworks
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 appPush];
  v7 = [v6 matchPrivateLTENetworks];

  objc_sync_exit(v2);

  return v7;
}

- (void)setMatchSSIDs:(NSArray *)matchSSIDs
{
  v9 = matchSSIDs;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 appPush];
  [v8 setMatchSSIDs:v9];

  objc_sync_exit(v4);
}

- (NSArray)matchSSIDs
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 appPush];
  v7 = [v6 matchSSIDs];

  objc_sync_exit(v2);

  return v7;
}

- (BOOL)isEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 appPush];
  v7 = [v6 isEnabled];

  objc_sync_exit(v2);
  return v7;
}

- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler
{
  v46[1] = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    if (!v5)
    {
      goto LABEL_7;
    }

    v7 = objc_getProperty(v5, v6, 32, 1);
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = v7;
    v10 = objc_getProperty(v5, v8, 32, 1);
    v11 = [v10 appPush];

    if (v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = objc_getProperty(v5, v13, 32, 1);
      v15 = [v14 checkValidityAndCollectErrors:v12];

      if (v15)
      {
        v16 = +[NEConfigurationManager sharedManager];
        v18 = objc_getProperty(v5, v17, 32, 1);
        v19 = MEMORY[0x1E69E96A0];
        v20 = MEMORY[0x1E69E96A0];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __59__NEAppPushManager_saveToPreferencesWithCompletionHandler___block_invoke_38;
        v31[3] = &unk_1E7F0B628;
        v31[4] = v5;
        v32 = v4;
        [v16 saveConfiguration:v18 withCompletionQueue:v19 handler:v31];
      }

      else
      {
        if ([v12 count])
        {
          v39 = *MEMORY[0x1E696A578];
          v25 = [v12 componentsJoinedByString:@"\n"];
          v40 = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        }

        else
        {
          v26 = 0;
        }

        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAppPushErrorDomain" code:1 userInfo:v26];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __59__NEAppPushManager_saveToPreferencesWithCompletionHandler___block_invoke_37;
        v33[3] = &unk_1E7F0B588;
        v35 = v4;
        v28 = v27;
        v34 = v28;
        dispatch_async(MEMORY[0x1E69E96A0], v33);
        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v42 = v5;
          v43 = 2112;
          v44 = v28;
          _os_log_error_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_ERROR, "%@ Failed to save the configuration: %@", buf, 0x16u);
        }
      }
    }

    else
    {
LABEL_7:
      v21 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v46[0] = @"invalid app push provider configuration";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v23 = [v21 errorWithDomain:@"NEAppPushErrorDomain" code:1 userInfo:v22];

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__NEAppPushManager_saveToPreferencesWithCompletionHandler___block_invoke;
      block[3] = &unk_1E7F0B588;
      v38 = v4;
      v12 = v23;
      v37 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v42 = v5;
        v43 = 2112;
        v44 = v12;
        _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "%@ Failed to save the configuration as configuration is nil, %@", buf, 0x16u);
      }
    }

    objc_sync_exit(v5);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __59__NEAppPushManager_saveToPreferencesWithCompletionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@: Failed to save the configuration: %@", buf, 0x16u);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAppPushErrorDomain" code:3 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__NEAppPushManager_saveToPreferencesWithCompletionHandler___block_invoke_39;
  v10[3] = &unk_1E7F0B588;
  v6 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    if (v5 && objc_getProperty(v5, v6, 32, 1))
    {
      v8 = objc_getProperty(v5, v7, 32, 1);
      v9 = [v8 identifier];
      v10 = [v9 copy];

      v11 = +[NEConfigurationManager sharedManager];
      v13 = objc_getProperty(v5, v12, 32, 1);
      v14 = MEMORY[0x1E69E96A0];
      v15 = MEMORY[0x1E69E96A0];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __63__NEAppPushManager_removeFromPreferencesWithCompletionHandler___block_invoke_2;
      v17[3] = &unk_1E7F0A1B0;
      v17[4] = v5;
      v16 = v10;
      v18 = v16;
      v19 = v4;
      [v11 removeConfiguration:v13 withCompletionQueue:v14 handler:v17];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__NEAppPushManager_removeFromPreferencesWithCompletionHandler___block_invoke;
      block[3] = &unk_1E7F0B600;
      v21 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v16 = v21;
    }

    objc_sync_exit(v5);
  }
}

void __63__NEAppPushManager_removeFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAppPushErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __63__NEAppPushManager_removeFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@: failed to remove the configuration: %@", buf, 0x16u);
    }
  }

  v5 = +[NEAppPushManager loadedManagers];
  [v5 removeObjectForKey:*(a1 + 40)];

  [(NEAppPushManager *)*(a1 + 32) cancelSessionManagerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__NEAppPushManager_removeFromPreferencesWithCompletionHandler___block_invoke_29;
  v10[3] = &unk_1E7F0B588;
  v6 = *(a1 + 48);
  v11 = v3;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)loadedManagers
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NEAppPushManager_loadedManagers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (loadedManagers_managers_init != -1)
  {
    dispatch_once(&loadedManagers_managers_init, block);
  }

  v1 = loadedManagers_loadedManagers;

  return v1;
}

- (void)cancelSessionManagerConnection
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (v1[5])
    {
      ne_session_cancel();
      v1[5] = 0;
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = objc_getProperty(v1, v3, 32, 1);
        v5 = [v4 identifier];
        v7 = 138412546;
        v8 = v1;
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_INFO, "%@ cancelled connection with nesessionmanager for configuration id: %@", &v7, 0x16u);
      }
    }

    objc_sync_exit(v1);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __34__NEAppPushManager_loadedManagers__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = loadedManagers_loadedManagers;
  loadedManagers_loadedManagers = v2;

  v4 = +[NEConfigurationManager sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__NEAppPushManager_loadedManagers__block_invoke_2;
  v5[3] = &__block_descriptor_40_e17_v16__0__NSArray_8l;
  v5[4] = *(a1 + 32);
  [v4 setChangedQueue:MEMORY[0x1E69E96A0] andHandler:v5];
}

void __34__NEAppPushManager_loadedManagers__block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__6849;
        v19 = __Block_byref_object_dispose__6850;
        v20 = [loadedManagers_loadedManagers objectForKeyedSubscript:v6];
        v7 = v16[5];
        if (v7)
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __34__NEAppPushManager_loadedManagers__block_invoke_2;
          v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
          v14[4] = *(a1 + 32);
          [v7 loadFromPreferencesWithCompletionHandler:v14];
        }

        else
        {
          v8 = +[NEConfigurationManager sharedManager];
          v9 = MEMORY[0x1E69E96A0];
          v10 = MEMORY[0x1E69E96A0];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __34__NEAppPushManager_loadedManagers__block_invoke_4;
          v13[3] = &unk_1E7F07960;
          v13[4] = v6;
          v13[5] = &v15;
          v13[6] = *(a1 + 32);
          [v8 loadConfigurationWithID:v6 withCompletionQueue:v9 handler:v13];
        }

        _Block_object_dispose(&v15, 8);

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@ loadFromPreferencesWithCompletionHandler failed. error: %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __34__NEAppPushManager_loadedManagers__block_invoke_4(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [loadedManagers_loadedManagers objectForKeyedSubscript:a1[4]];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(a1[5] + 8) + 40))
  {
    if (v6)
    {
LABEL_3:
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = a1[6];
        v20 = 138412546;
        v21 = v19;
        v22 = 2112;
        v23 = v6;
        _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@ loadConfigurationWithID failed. error: %@", &v20, 0x16u);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = objc_alloc_init(NEAppPushManager);
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v15 = *(*(a1[5] + 8) + 40);
  if (v15 && (objc_setProperty_atomic_copy(v15, v10, v5, 32), (v16 = *(*(a1[5] + 8) + 40)) != 0))
  {
    *(v16 + 9) = 1;
    v17 = *(*(a1[5] + 8) + 40);
  }

  else
  {
    v17 = 0;
  }

  [loadedManagers_loadedManagers setObject:v17 forKeyedSubscript:a1[4]];
LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v6 = +[NEConfigurationManager sharedManager];
    if (self)
    {
      Property = objc_getProperty(self, v5, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = [Property identifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__NEAppPushManager_loadFromPreferencesWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E7F0B5D8;
    v9[4] = self;
    v10 = v4;
    [v6 loadConfigurationWithID:v8 withCompletionQueue:MEMORY[0x1E69E96A0] handler:v9];
  }
}

void __61__NEAppPushManager_loadFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (!v6)
  {
    if (!v5 || ([v5 appPush], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v26 = *(a1 + 32);
        if (v26)
        {
          Property = objc_getProperty(*(a1 + 32), v25, 32, 1);
        }

        else
        {
          Property = 0;
        }

        v28 = Property;
        v29 = [v28 identifier];
        v33 = 138412546;
        v34 = v26;
        v35 = 2112;
        v36 = v29;
        _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_INFO, "%@ No configuration found with ID %@", &v33, 0x16u);
      }

      goto LABEL_24;
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      if (v11[5])
      {
LABEL_14:
        v17 = *(a1 + 32);
        if (v17 && (objc_setProperty_atomic_copy(v17, v10, v5, 32), (v18 = *(a1 + 32)) != 0))
        {
          *(v18 + 9) = 1;
          v19 = *(a1 + 32);
        }

        else
        {
          v19 = 0;
        }

        v21 = +[NEAppPushManager loadedManagers];
        v22 = *(a1 + 32);
        if (v22)
        {
          v22 = objc_getProperty(v22, v20, 32, 1);
        }

        v23 = v22;
        v24 = [v23 identifier];
        [v21 setObject:v19 forKeyedSubscript:v24];

LABEL_24:
        v6 = 0;
LABEL_25:
        (*(*(a1 + 40) + 16))();
        goto LABEL_26;
      }

      v12 = objc_getProperty(*(a1 + 32), v10, 32, 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [v13 identifier];
    v15 = [(NEAppPushManager *)v11 establishSessionManagerConnectionWithConfigurationID:v14];

    if (!v15)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 32);
        v33 = 138412290;
        v34 = v32;
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ establishSessionManagerConnectionWithConfigurationID failed.", &v33, 0xCu);
      }

      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAppPushErrorDomain" code:1 userInfo:0];
      if (v6)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_14;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v31 = *(a1 + 32);
    v33 = 138412546;
    v34 = v31;
    v35 = 2112;
    v36 = v6;
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ Failed to load the configuration: %@", &v33, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_26:
  objc_sync_exit(v7);

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)establishSessionManagerConnectionWithConfigurationID:(void *)a1
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v18[0] = 0;
    v18[1] = 0;
    [(NEAppPushManager *)v4 cancelSessionManagerConnection];
    [v3 getUUIDBytes:v18];
    v5 = ne_session_create();
    v4[5] = v5;
    v6 = v5 != 0;
    if (v5)
    {
      v7 = MEMORY[0x1E69E96A0];
      ne_session_set_event_handler();

      v8 = v4[5];
      v9 = v3;
      ne_session_get_info();

      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v15 = v4;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "%@ established connection with nesm for configuration id: %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v4;
        v16 = 2112;
        v17 = v3;
        _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@: failed to create ne_session for configuration id: %@", buf, 0x16u);
      }
    }

    objc_sync_exit(v4);
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

void __73__NEAppPushManager_establishSessionManagerConnectionWithConfigurationID___block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        Property = objc_getProperty(*(a1 + 32), v6, 32, 1);
      }

      else
      {
        Property = 0;
      }

      v9 = [Property identifier];
      *buf = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@ cancelling nesm connection for [%@]", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      if (*(v10 + 40))
      {
        ne_session_release();
        v11 = *(a1 + 32);
        if (v11)
        {
          *(v11 + 40) = 0;
        }
      }
    }
  }

  else if (a2 == 1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 40);
    }

    ne_session_get_info();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __73__NEAppPushManager_establishSessionManagerConnectionWithConfigurationID___block_invoke_22(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1BFAFC5E0](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = xpc_dictionary_get_BOOL(v4, "IsAppPushActive");
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = "[inactive]";
      if (v5)
      {
        v9 = "[active]";
      }

      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2080;
      v16 = v9;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@ fetched extended status, new active value for [%@] is %s", &v11, 0x20u);
    }

    [*(a1 + 32) setActive:v5];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __73__NEAppPushManager_establishSessionManagerConnectionWithConfigurationID___block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_get_BOOL(xdict, "IsAppPushActive");
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      Property = objc_getProperty(*(a1 + 32), v5, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = [Property identifier];
    v9 = v8;
    v10 = "[inactive]";
    v13 = 138412802;
    v14 = v6;
    if (v3)
    {
      v10 = "[active]";
    }

    v15 = 2112;
    v16 = v8;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_INFO, "%@ fetched extended status, new active value for [%@] is %s", &v13, 0x20u);
  }

  result = [*(a1 + 32) setActive:v3];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  [(NEAppPushManager *)self cancelSessionManagerConnection];
  v3.receiver = self;
  v3.super_class = NEAppPushManager;
  [(NEAppPushManager *)&v3 dealloc];
}

- (NEAppPushManager)init
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_7:
    v2 = 0;
    goto LABEL_11;
  }

  v21.receiver = self;
  v21.super_class = NEAppPushManager;
  v2 = [(NEAppPushManager *)&v21 init];
  if (v2)
  {
    if (+[NEProvider isRunningInProvider])
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v2;
        _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "%@ objects cannot be instantiated from NEProvider processes", buf, 0xCu);
      }

      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 infoDictionary];
    v6 = [v5 objectForKey:*MEMORY[0x1E695E120]];

    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleIdentifier];

    if (!v6)
    {
      v9 = [MEMORY[0x1E696AAE8] mainBundle];
      v10 = [v9 infoDictionary];
      v6 = [v10 objectForKey:*MEMORY[0x1E695E4F8]];
    }

    v11 = [[NEConfiguration alloc] initWithName:v6 grade:1];
    objc_setProperty_atomic_copy(v2, v12, v11, 32);

    v13 = objc_alloc_init(NEAppPush);
    [objc_getProperty(v2 v14];

    [objc_getProperty(v2 v15];
    [objc_getProperty(v2 v16];
    v18 = [objc_getProperty(v2 v17];
    [v18 setPluginType:v8];

    v2->_nesmConnection = 0;
    v2->_active = 0;
  }

LABEL_11:
  v19 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (void)loadAllFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = +[NEAppPushManager loadedManagers];
    v6 = +[NEConfigurationManager sharedManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__NEAppPushManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E7F0B1E8;
    v9 = a1;
    v8 = v4;
    [v6 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v7];
  }
}

void __64__NEAppPushManager_loadAllFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = a1;
  obj = *(a1 + 40);
  objc_sync_enter(obj);
  v35 = v6;
  v33 = v5;
  if (v6)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v32;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%@ Failed to load the configurations: %@", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = __Block_byref_object_copy__6849;
    v61 = __Block_byref_object_dispose__6850;
    v62 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__6849;
    v56[4] = __Block_byref_object_dispose__6850;
    v57 = 0;
    v9 = dispatch_group_create();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v11)
    {
      v12 = *v53;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v53 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v52 + 1) + 8 * i);
          if (v14)
          {
            v15 = [*(*(&v52 + 1) + 8 * i) appPush];
            v16 = v15 == 0;

            if (!v16)
            {
              v17 = +[NEAppPushManager loadedManagers];
              v18 = [v14 identifier];
              v19 = [v17 objectForKeyedSubscript:v18];

              if (!*(*&buf[8] + 40))
              {
                v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v21 = *(*&buf[8] + 40);
                *(*&buf[8] + 40) = v20;
              }

              dispatch_group_enter(v9);
              if (v19)
              {
                v40[0] = MEMORY[0x1E69E9820];
                v40[1] = 3221225472;
                v40[2] = __64__NEAppPushManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_26;
                v40[3] = &unk_1E7F079D8;
                v22 = v19;
                v23 = *(v7 + 40);
                v43 = buf;
                v44 = v56;
                v45 = v23;
                v41[0] = v22;
                v41[1] = v14;
                v42 = v9;
                [(NEAppPushManager *)v22 loadFromPreferencesWithCompletionHandler:v40];

                v24 = v41;
              }

              else
              {
                v25 = objc_alloc_init(NEAppPushManager);
                v26 = +[NEConfigurationManager sharedManager];
                v27 = [v14 identifier];
                v28 = MEMORY[0x1E69E96A0];
                v29 = MEMORY[0x1E69E96A0];
                v46[0] = MEMORY[0x1E69E9820];
                v46[1] = 3221225472;
                v46[2] = __64__NEAppPushManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_24;
                v46[3] = &unk_1E7F079B0;
                v22 = v25;
                v30 = *(v7 + 40);
                v47 = v22;
                v51 = v30;
                v49 = v56;
                v50 = buf;
                v48 = v9;
                [v26 loadConfigurationWithID:v27 withCompletionQueue:v28 handler:v46];

                v24 = &v47;
              }
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v11);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__NEAppPushManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_27;
    block[3] = &unk_1E7F07A00;
    v38 = v56;
    v39 = buf;
    v37 = *(v7 + 32);
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(buf, 8);
  }

  objc_sync_exit(obj);

  v31 = *MEMORY[0x1E69E9840];
}

void __64__NEAppPushManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 64);
      v23 = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "%@ loadConfigurationWithID failed. error: %@", &v23, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 identifier];
    LOBYTE(v8) = [(NEAppPushManager *)v8 establishSessionManagerConnectionWithConfigurationID:v9];

    if (v8)
    {
      v11 = *(a1 + 32);
      if (v11 && (objc_setProperty_atomic_copy(v11, v10, v5, 32), (v12 = *(a1 + 32)) != 0))
      {
        *(v12 + 9) = 1;
        v13 = *(a1 + 32);
      }

      else
      {
        v13 = 0;
      }

      v14 = +[NEAppPushManager loadedManagers];
      v15 = [v5 identifier];
      [v14 setObject:v13 forKeyedSubscript:v15];

      [*(*(*(a1 + 56) + 8) + 40) addObject:*(a1 + 32)];
    }

    else
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 64);
        v23 = 138412290;
        v24 = v22;
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ establishSessionManagerConnectionWithConfigurationID failed.", &v23, 0xCu);
      }

      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEAppPushErrorDomain" code:1 userInfo:0];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v20 = *MEMORY[0x1E69E9840];
}

void __64__NEAppPushManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_26(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 72);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ loadFromPreferencesWithCompletionHandler failed. error: %@", &v11, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v6 = +[NEAppPushManager loadedManagers];
    v7 = [*(a1 + 40) identifier];
    [v6 removeObjectForKey:v7];

    [(NEAppPushManager *)*(a1 + 32) cancelSessionManagerConnection];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8 && *(v8 + 40))
    {
      [*(*(*(a1 + 56) + 8) + 40) addObject:?];
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v9 = *MEMORY[0x1E69E9840];
}

void __64__NEAppPushManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_27(void *a1)
{
  if (*(*(a1[5] + 8) + 40))
  {
    [*(*(a1[6] + 8) + 40) removeAllObjects];
    v2 = *(a1[6] + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;

    v4 = *(*(a1[5] + 8) + 40);
  }

  v5 = *(*(a1[6] + 8) + 40);
  (*(a1[4] + 16))();
  objc_opt_self();
  if (!initCallKitXPCClient_client)
  {
    v6 = MEMORY[0x1E69E96A0];

    dispatch_async(v6, &__block_literal_global_6878);
  }
}

void __40__NEAppPushManager_initCallKitXPCClient__block_invoke()
{
  v0 = objc_alloc_init(NEAppPushCallKitXPCClient);
  v1 = initCallKitXPCClient_client;
  initCallKitXPCClient_client = v0;

  v2 = initCallKitXPCClient_client;

  [(NEAppPushCallKitXPCClient *)v2 registerVoIPMessagePayload];
}

void __69__NEAppPushManager_deliverIncomingCallPayload_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v10 = *(a1 + 32);
  v11 = [v9 UUIDString];
  LODWORD(v10) = [v10 isEqualToString:v11];

  if (v10)
  {
    v12 = v8;
    v13 = ne_log_obj();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 32);
        *buf = 138412290;
        v28 = v21;
        _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "found manager[%@] to deliver incoming call payload to", buf, 0xCu);
      }

      v15 = [v12 delegate];

      if (v15)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__NEAppPushManager_deliverIncomingCallPayload_withCompletionHandler___block_invoke_45;
        block[3] = &unk_1E7F0AAA0;
        v24 = v12;
        v25 = *(a1 + 40);
        v26 = *(a1 + 48);
        dispatch_async(MEMORY[0x1E69E96A0], block);

        v14 = v24;
LABEL_10:

        *a4 = 1;
        goto LABEL_11;
      }

      v14 = ne_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v22 = *(a1 + 56);
      *buf = 138412290;
      v28 = v22;
      v17 = "%@ app has not set the delegate to receive the incoming call payload";
      v18 = v14;
      v19 = 12;
    }

    else
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v16 = *(a1 + 56);
      *buf = 138412546;
      v28 = v16;
      v29 = 2112;
      v30 = v9;
      v17 = "%@ failed to find a manager for configuration id [%@]";
      v18 = v14;
      v19 = 22;
    }

    _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    goto LABEL_10;
  }

LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __69__NEAppPushManager_deliverIncomingCallPayload_withCompletionHandler___block_invoke_45(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 appPushManager:*(a1 + 32) didReceiveIncomingCallWithUserInfo:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

@end