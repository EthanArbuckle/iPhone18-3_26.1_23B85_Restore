@interface NETransparentProxyManager
+ (void)loadAllFromPreferencesWithCompletionHandler:(void *)completionHandler;
+ (void)loadEverythingFromPreferencesWithCompletionHandler:(id)a3;
- (BOOL)isFromMDM;
- (NETransparentProxyManager)init;
- (void)additionalSetup;
- (void)loadFromPreferencesWithCompletionHandler:(id)a3;
@end

@implementation NETransparentProxyManager

- (BOOL)isFromMDM
{
  v3 = [(NEVPNManager *)self configuration];
  v4 = [v3 payloadInfo];

  if (!v4)
  {
    return 0;
  }

  v5 = [(NEVPNManager *)self configuration];
  v6 = [v5 payloadInfo];
  v7 = [v6 profileSource] == 2;

  return v7;
}

- (void)loadFromPreferencesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[NEVPNManager configurationManager];
    v6 = [(NEVPNManager *)self configuration];
    v7 = [v6 identifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__NETransparentProxyManager_loadFromPreferencesWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E7F0B5D8;
    v8[4] = self;
    v9 = v4;
    [v5 loadConfigurationWithID:v7 withCompletionQueue:MEMORY[0x1E69E96A0] handler:v8];
  }
}

void __70__NETransparentProxyManager_loadFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v6)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = v6;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Got an error while loading a configuration: %@", &v23, 0xCu);
    }

    v9 = [NEVPNManager mapError:v6];
    (*(*(a1 + 40) + 16))();

    goto LABEL_15;
  }

  if (!v5)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) configuration];
      v21 = [v20 identifier];
      v23 = 138412290;
      v24 = v21;
      _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "No configuration found with ID %@", &v23, 0xCu);
    }

    goto LABEL_14;
  }

  [*(a1 + 32) setConfiguration:v5];
  v10 = *(a1 + 32);
  v11 = +[NEVPNManager loadedManagers];
  v12 = [*(a1 + 32) configuration];
  v13 = [v12 identifier];
  [v11 setObject:v10 forKeyedSubscript:v13];

  v14 = [*(a1 + 32) connection];
  if (v14)
  {
    v15 = v14[7];

    if (v15)
    {
LABEL_14:
      (*(*(a1 + 40) + 16))();
      goto LABEL_15;
    }
  }

  v16 = [*(a1 + 32) connection];
  v17 = [*(a1 + 32) configuration];
  v18 = [v17 identifier];
  if (v16)
  {
    [(NEVPNConnection *)v16 createSessionWithConfigurationIdentifier:v18 forceInfoFetch:0 completionHandler:*(a1 + 40)];
  }

LABEL_15:
  objc_sync_exit(v7);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)additionalSetup
{
  v3 = [(NEVPNManager *)self configuration];
  v4 = [v3 VPN];
  v10 = [v4 protocol];

  v5 = [v10 providerBundleIdentifier];
  objc_opt_self();
  v6 = v5;

  [v10 setProviderBundleIdentifier:v6];
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];
  [v10 setPluginType:v8];

  v9 = [(NEVPNManager *)self configuration];
  if (v9)
  {
    v9[22] = 0;
  }
}

- (NETransparentProxyManager)init
{
  v3 = [(NEVPNConnection *)[NETunnelProviderSession alloc] initWithType:?];
  v7.receiver = self;
  v7.super_class = NETransparentProxyManager;
  v4 = [(NEVPNManager *)&v7 initWithGrade:1 connection:v3 tunnelType:2];
  v5 = v4;
  if (v4)
  {
    v4->super._hasLoaded = 1;
  }

  return v5;
}

+ (void)loadEverythingFromPreferencesWithCompletionHandler:(id)a3
{
  v3 = a3;
  objc_opt_self();
  g_noAppFilter = 1;
  [NETransparentProxyManager loadAllFromPreferencesWithCompletionHandler:v3];
}

+ (void)loadAllFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  if (v3)
  {
    v4 = +[NEVPNManager loadedManagers];
    v5 = +[NEVPNManager configurationManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__NETransparentProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7F0B510;
    v7 = v3;
    [v5 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v6];
  }
}

void __73__NETransparentProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = v4;
  v28 = v5;
  if (!v5)
  {
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__111;
    v43[4] = __Block_byref_object_dispose__112;
    v44 = 0;
    group = dispatch_group_create();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:{16, v4, 0}];
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = *v40;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [v12 VPN];
        if (v13)
        {
          v14 = [v12 VPN];
          v15 = [v14 protocol];
          if ([v15 type] == 4)
          {
            v16 = [v12 VPN];
            v17 = [v16 tunnelType] == 2;

            if (v17)
            {
              v18 = [v12 pluginType];
              if (isa_nsstring(v18))
              {
                v19 = objc_alloc_init(NETransparentProxyManager);
                [(NEVPNManager *)v19 setConfiguration:v12];
                [v30 addObject:v19];
                v20 = +[NEVPNManager loadedManagers];
                v21 = [v12 identifier];
                [v20 setObject:v19 forKeyedSubscript:v21];

                if (v19)
                {
                  v19->super._hasLoaded = 1;
                }

                dispatch_group_enter(group);
                v22 = [(NEVPNManager *)v19 connection];
                v23 = [v12 identifier];
                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __73__NETransparentProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_6;
                v36[3] = &unk_1E7F0B198;
                v36[4] = v12;
                v38 = v43;
                v37 = group;
                if (v22)
                {
                  [(NEVPNConnection *)v22 createSessionWithConfigurationIdentifier:v23 forceInfoFetch:0 completionHandler:v36];
                }
              }

              else
              {
                v19 = ne_log_obj();
                if (os_log_type_enabled(&v19->super.super, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = [v12 name];
                  *buf = 138412290;
                  v46 = v25;
                  _os_log_impl(&dword_1BA83C000, &v19->super.super, OS_LOG_TYPE_DEFAULT, "Skipping configuration %@ because it has an invalid plugin type", buf, 0xCu);
                }
              }

              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v12 name];
          *buf = 138412290;
          v46 = v24;
          _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEFAULT, "Skipping configuration %@ because it is of the wrong type", buf, 0xCu);
        }

LABEL_23:
      }

      v9 = [v8 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (!v9)
      {
LABEL_25:

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __73__NETransparentProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_8;
        block[3] = &unk_1E7F0B1C0;
        v35 = v43;
        v33 = v30;
        v34 = *(a1 + 32);
        dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

        _Block_object_dispose(v43, 8);
        v7 = v30;
        goto LABEL_26;
      }
    }
  }

  v6 = [NEVPNManager mapError:v5];
  v7 = v30;
  (*(*(a1 + 32) + 16))(*(a1 + 32), v30);

LABEL_26:
  v26 = *MEMORY[0x1E69E9840];
}

void __73__NETransparentProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) name];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Error creating connection for configuration %@: %@", &v8, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __73__NETransparentProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_8(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) removeAllObjects];
    v2 = *(*(*(a1 + 48) + 8) + 40);
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

@end