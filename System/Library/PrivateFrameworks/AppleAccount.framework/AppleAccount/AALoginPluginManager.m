@interface AALoginPluginManager
+ (id)sharedInstance;
- (AALoginPluginManager)init;
- (BOOL)_notifyServicesOfLoginResponse:(id)a3 forAppleID:(id)a4 password:(id)a5 rawPassword:(id)a6;
- (BOOL)shouldStashLoginResponse;
- (id)_createLoginContextForAppleID:(id)a3 rawPassword:(id)a4 loginResponse:(id)a5;
- (id)_idsPlugin;
- (id)_loadPluginsLimitedToBundleIDs:(id)a3;
- (id)_plugins;
- (id)collectParametersForIdentityEstablishmentRequest;
- (id)collectParametersForLoginRequest;
- (void)notifyServicesOfLoginResponse:(id)a3 forAppleID:(id)a4 password:(id)a5 rawPassword:(id)a6 completion:(id)a7;
- (void)restrictToPluginBundleIDs:(id)a3;
- (void)setShouldStashLoginResponse:(BOOL)a3;
- (void)unstashLoginResponse;
@end

@implementation AALoginPluginManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AALoginPluginManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __38__AALoginPluginManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(AALoginPluginManager);

  return MEMORY[0x1EEE66BB8]();
}

- (AALoginPluginManager)init
{
  v6.receiver = self;
  v6.super_class = AALoginPluginManager;
  v2 = [(AALoginPluginManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AppleIDLoginPlugins", MEMORY[0x1E69E96A8]);
    pluginNotificationQueue = v2->_pluginNotificationQueue;
    v2->_pluginNotificationQueue = v3;
  }

  return v2;
}

- (void)restrictToPluginBundleIDs:(id)a3
{
  v4 = [a3 copy];
  allowedPluginBundleIDs = self->_allowedPluginBundleIDs;
  self->_allowedPluginBundleIDs = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_plugins
{
  plugins = self->_plugins;
  if (!plugins)
  {
    v4 = [(AALoginPluginManager *)self _loadPluginsLimitedToBundleIDs:self->_allowedPluginBundleIDs];
    v5 = self->_plugins;
    self->_plugins = v4;

    plugins = self->_plugins;
  }

  return plugins;
}

- (id)_idsPlugin
{
  v17 = *MEMORY[0x1E69E9840];
  idsPlugin = self->_idsPlugin;
  if (!idsPlugin)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 URLsForDirectory:5 inDomains:8];
    v6 = [v5 firstObject];

    v7 = [v6 URLByAppendingPathComponent:@"SetupAssistantBundles/SBSyncServiceSetupAssistantBundle.bundle"];
    v8 = [MEMORY[0x1E696AAE8] bundleWithURL:v7];
    v9 = objc_alloc_init([v8 principalClass]);
    v10 = self->_idsPlugin;
    self->_idsPlugin = v9;

    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_idsPlugin;
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: hacked IDS plugin loaded %@", &v15, 0xCu);
    }

    idsPlugin = self->_idsPlugin;
  }

  v13 = *MEMORY[0x1E69E9840];

  return idsPlugin;
}

- (id)collectParametersForLoginRequest
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [(AALoginPluginManager *)self _plugins];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v29;
    *&v6 = 138412546;
    v27 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v10 parametersForLoginRequest];
        v12 = [v10 serviceIdentifier];
        v13 = v12;
        if (v12)
        {
          v14 = v11 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          v15 = _AALogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v33 = v13;
            v34 = 2112;
            v35 = v11;
            v16 = v15;
            v17 = "AALoginPluginManager: collectParametersForLoginRequest is skipping plugin with ID %@ and params %@";
            v18 = 22;
            goto LABEL_13;
          }

LABEL_14:

          goto LABEL_20;
        }

        if (self->_shouldSkipiTunesPlugin && [v12 isEqualToString:@"com.apple.itunes"])
        {
          v15 = _AALogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v16 = v15;
            v17 = "AALoginPluginManager is skipping iTunes plugin.";
            v18 = 2;
LABEL_13:
            _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
          }

          goto LABEL_14;
        }

        [v3 setObject:v11 forKey:v13];
LABEL_20:
      }

      v7 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v7);
  }

  v19 = [(AALoginPluginManager *)self _idsPlugin];
  v20 = [v19 delegateServiceIdentifier];

  v21 = [(AALoginPluginManager *)self _idsPlugin];
  v22 = [v21 accountSetupRequestParameters];

  if (v20 && v22)
  {
    [v3 setObject:v22 forKey:v20];
  }

  else
  {
    v23 = _AALogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(AALoginPluginManager *)self _idsPlugin];
      *buf = 138412546;
      v33 = v24;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: collectParametersForLoginRequest is skipping IDS plugin %@ with params %@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)collectParametersForIdentityEstablishmentRequest
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(AALoginPluginManager *)self _plugins];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412290;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 parametersForIdentityEstablishmentRequest];
        v12 = [v10 serviceIdentifier];
        v13 = _AALogSystem();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          v15 = v11 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          if (v14)
          {
            *buf = 138412546;
            v27 = v12;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: collectParametersForIdentityEstablishmentRequest is skipping plugin with ID %@ and params %@", buf, 0x16u);
          }
        }

        else
        {
          if (v14)
          {
            *buf = v19;
            v27 = v12;
            _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: collectParametersForIdentityEstablishmentRequest got parameters from plugin %@", buf, 0xCu);
          }

          v30 = @"service-data";
          v31 = v11;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          [v3 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v7);
  }

  v24 = @"client-info";
  v25 = v3;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)notifyServicesOfLoginResponse:(id)a3 forAppleID:(id)a4 password:(id)a5 rawPassword:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = dispatch_get_global_queue(0, 0);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__AALoginPluginManager_notifyServicesOfLoginResponse_forAppleID_password_rawPassword_completion___block_invoke;
  v23[3] = &unk_1E7C9CD80;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(v17, v23);
}

uint64_t __97__AALoginPluginManager_notifyServicesOfLoginResponse_forAppleID_password_rawPassword_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyServicesOfLoginResponse:*(a1 + 40) forAppleID:*(a1 + 48) password:*(a1 + 56) rawPassword:*(a1 + 64)];
  v2 = *(*(a1 + 72) + 16);

  return v2();
}

- (id)_createLoginContextForAppleID:(id)a3 rawPassword:(id)a4 loginResponse:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v7;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: creating login context for stashing (appleID: %@)...", buf, 0xCu);
  }

  if (!v9)
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: bad news, no password for stashing!", buf, 2u);
    }
  }

  v12 = [v8 responseParametersForServiceIdentifier:@"com.apple.mobileme"];
  v13 = [v12 objectForKeyedSubscript:@"service-data"];
  v14 = [v13 objectForKeyedSubscript:@"appleAccountInfo"];
  v15 = [v14 objectForKeyedSubscript:@"aDsID"];

  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_14;
    }

    v16 = [v15 stringValue];
  }

  else
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: no altDSID was found in iCloud service data!", buf, 2u);
    }

    v16 = 0;
  }

  v15 = v16;
LABEL_14:
  v17 = [v8 dsid];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: checking iCloud service data for DSID...", buf, 2u);
    }

    v20 = [v12 objectForKeyedSubscript:@"service-data"];
    v21 = [v20 objectForKeyedSubscript:@"appleAccountInfo"];
    v18 = [v21 objectForKeyedSubscript:@"dsPrsID"];

    if (!v18)
    {
      v18 = _AALogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: no DSID was found in iCloud service data!", buf, 2u);
      }

      v22 = 0;
      goto LABEL_24;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_25;
  }

  v22 = [v18 stringValue];
LABEL_24:

  v18 = v22;
LABEL_25:
  v23 = [v12 objectForKeyedSubscript:@"service-data"];
  v24 = [v23 objectForKeyedSubscript:@"tokens"];

  v25 = [v24 objectForKeyedSubscript:@"cloudKitToken"];
  if (!v25)
  {
    v26 = _AALogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: no CloudKit token in iCloud service data!", buf, 2u);
    }
  }

  v41 = v12;
  v42 = v8;
  v27 = _AALogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    *buf = 138412546;
    v44 = v15;
    v45 = 2112;
    v46 = v29;
    _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: using altDSID %{mask}@ (%@)", buf, 0x16u);
  }

  v30 = v7;
  v31 = [[AAStorableLoginContext alloc] initWithAppleID:v7 altDSID:v15];
  [(AAStorableLoginContext *)v31 setCloudKitToken:v25];
  [(AAStorableLoginContext *)v31 setDSID:v18];
  [(AAStorableLoginContext *)v31 setRawPassword:v9];

  v32 = [MEMORY[0x1E6959A48] defaultStore];
  v33 = [v32 aa_authKitAccountForAltDSID:v15];
  v34 = v33;
  if (v33)
  {
    v35 = [v33 credential:v41];
    v36 = _AALogSystem();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v34;
      _os_log_impl(&dword_1B6F6A000, v36, OS_LOG_TYPE_DEFAULT, "Trying to add CK and PRK for %@ to login context...", buf, 0xCu);
    }

    v37 = [v35 credentialItemForKey:*MEMORY[0x1E6959950]];
    [(AAStorableLoginContext *)v31 setContinuationKey:v37];

    v38 = [v35 credentialItemForKey:*MEMORY[0x1E69599E0]];
    [(AAStorableLoginContext *)v31 setPasswordResetKey:v38];
  }

  else
  {
    v35 = _AALogSystem();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v15;
      _os_log_impl(&dword_1B6F6A000, v35, OS_LOG_TYPE_DEFAULT, "No AuthKit account to grab CK and PRK from for altDSID: %{mask}@", buf, 0xCu);
    }
  }

  v39 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BOOL)_notifyServicesOfLoginResponse:(id)a3 forAppleID:(id)a4 password:(id)a5 rawPassword:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v39 = a4;
  v38 = a5;
  v36 = a6;
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: will notify services of login response.", buf, 2u);
  }

  *buf = 0;
  v56 = buf;
  v57 = 0x2020000000;
  v58 = 1;
  if (v10)
  {
    v12 = self;
    objc_sync_enter(v12);
    if (v12->_shouldStashLoginResponse)
    {
      v13 = [(AALoginPluginManager *)v12 _createLoginContextForAppleID:v39 rawPassword:v36 loginResponse:v10];
      v14 = +[AALoginContextManager sharedManager];
      [v14 setStashedContext:v13];
    }

    objc_sync_exit(v12);
  }

  group = dispatch_group_create();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = [(AALoginPluginManager *)self _plugins];
  v16 = [v15 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v16)
  {
    v17 = *v52;
    obj = v15;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v51 + 1) + 8 * i);
        v20 = [v19 serviceIdentifier];
        v21 = v20;
        if (self->_shouldSkipiTunesPlugin && [v20 isEqualToString:@"com.apple.itunes"])
        {
          v22 = _AALogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *v50 = 0;
            _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager is NOT notifying iTunes plugin about login because _shouldSkipiTunesPlugin is YES.", v50, 2u);
          }
        }

        else
        {
          v23 = [v10 dsid];
          v24 = [v10 altDSID];
          v25 = [v10 augmentedResponseParametersForServiceIdentifier:v21 withAppleID:v39 password:v38 DSID:v23 altDSID:v24];

          pluginNotificationQueue = self->_pluginNotificationQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke;
          block[3] = &unk_1E7C9CDD0;
          v46 = v21;
          v47 = v19;
          v48 = v25;
          v49 = buf;
          v22 = v25;
          dispatch_group_async(group, pluginNotificationQueue, block);
        }
      }

      v15 = obj;
      v16 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v16);
  }

  v27 = self->_pluginNotificationQueue;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_52;
  v41[3] = &unk_1E7C9CDF8;
  v41[4] = self;
  v28 = v10;
  v42 = v28;
  v29 = v39;
  v43 = v29;
  v30 = v38;
  v44 = v30;
  dispatch_group_async(group, v27, v41);
  v31 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(group, v31))
  {
    v32 = _AALogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 0;
      _os_log_impl(&dword_1B6F6A000, v32, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: timed out while notifying plugins!", v50, 2u);
    }

    v33 = 1;
  }

  else
  {
    v33 = v56[24];
  }

  _Block_object_dispose(buf, 8);
  v34 = *MEMORY[0x1E69E9840];
  return v33 & 1;
}

void __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1B6F6A000, v2, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: notifying plugin %@ of login response...", buf, 0xCu);
  }

  v4 = dispatch_semaphore_create(0);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_50;
  v11[3] = &unk_1E7C9CDA8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v13 = v4;
  v14 = v8;
  v12 = v7;
  v9 = v4;
  [v5 handleLoginResponse:v6 completion:v11];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  v10 = *MEMORY[0x1E69E9840];
}

void __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_50(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v12 = 138412802;
    v13 = v7;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: plugin %@ finished handling login response with success %d and error %@", &v12, 0x1Cu);
  }

  v8 = [*(a1 + 32) isEqualToString:@"com.apple.mobileme"];
  if (a2)
  {
    if (v8)
    {
      v9 = 1;
LABEL_10:
      *(*(*(a1 + 48) + 8) + 24) = v9;
    }
  }

  else if (v8)
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Fatal error! The iCloud plugin failed while handling the login response.", &v12, 2u);
    }

    v9 = 0;
    goto LABEL_10;
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v11 = *MEMORY[0x1E69E9840];
}

void __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_52(uint64_t a1)
{
  v2 = [*(a1 + 32) _idsPlugin];
  v3 = [v2 delegateServiceIdentifier];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = [v4 dsid];
    v8 = [*(a1 + 40) altDSID];
    v9 = [v4 augmentedResponseParametersForServiceIdentifier:v3 withAppleID:v5 password:v6 DSID:v7 altDSID:v8];

    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: about to notify IDS plugin of login response.", buf, 2u);
    }

    v11 = dispatch_semaphore_create(0);
    v12 = [*(a1 + 32) _idsPlugin];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_53;
    v14[3] = &unk_1E7C9C900;
    v15 = v11;
    v13 = v11;
    [v12 completeSetupWithResponseParameters:v9 handler:v14];

    dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: idsServiceID is nil. Skipping...", buf, 2u);
    }
  }
}

void __87__AALoginPluginManager__notifyServicesOfLoginResponse_forAppleID_password_rawPassword___block_invoke_53(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: finished notifying IDS. Error: %@", &v7, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldStashLoginResponse
{
  v2 = self;
  objc_sync_enter(v2);
  shouldStashLoginResponse = v2->_shouldStashLoginResponse;
  objc_sync_exit(v2);

  return shouldStashLoginResponse;
}

- (void)setShouldStashLoginResponse:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldStashLoginResponse = a3;
  objc_sync_exit(obj);
}

- (void)unstashLoginResponse
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_shouldStashLoginResponse)
  {
    v2 = +[AALoginContextManager sharedManager];
    [v2 persistStashedContext];
  }

  objc_sync_exit(obj);
}

- (id)_loadPluginsLimitedToBundleIDs:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Loading plugin bundles...", buf, 2u);
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v5 = getACDPluginLoaderClass_softClass;
  v35 = getACDPluginLoaderClass_softClass;
  if (!getACDPluginLoaderClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getACDPluginLoaderClass_block_invoke;
    v38 = &unk_1E7C9AE88;
    v39 = &v32;
    __getACDPluginLoaderClass_block_invoke(buf);
    v5 = v33[3];
  }

  v6 = v5;
  _Block_object_dispose(&v32, 8);
  v7 = [v5 pluginBundlesAtSubpath:@"/AppleIDLoginPlugins/"];
  v8 = _AALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    *buf = 134217984;
    *&buf[4] = v9;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: found %lu service bundles.", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = _AALogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v13;
          _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: processing plugin bundle %@.", buf, 0xCu);
        }

        if (v3 && (v27[0] = MEMORY[0x1E69E9820], v27[1] = 3221225472, v27[2] = __55__AALoginPluginManager__loadPluginsLimitedToBundleIDs___block_invoke, v27[3] = &unk_1E7C9CE20, v27[4] = v13, [v3 indexOfObjectPassingTest:v27] == 0x7FFFFFFFFFFFFFFFLL))
        {
          v15 = _AALogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v13 bundleIdentifier];
            *buf = 138412290;
            *&buf[4] = v16;
            _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: skipping plugin %@.", buf, 0xCu);
          }
        }

        else
        {
          v17 = [v13 principalClass];
          if ([(objc_class *)v17 conformsToProtocol:&unk_1F2F453B0])
          {
            v18 = objc_alloc_init(v17);
            v19 = v18;
            if (v18)
            {
              v20 = [v18 serviceIdentifier];
              if (v20)
              {
                [v25 addObject:v19];
              }

              else
              {
                v21 = _AALogSystem();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v19;
                  _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Error! Service %@ has no identifier", buf, 0xCu);
                }
              }
            }

            else
            {
              v20 = _AALogSystem();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v17;
                *&buf[12] = 2112;
                *&buf[14] = v13;
                _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Could not instantiate object of class %@ for bundle %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v19 = _AALogSystem();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v17;
              *&buf[12] = 2112;
              *&buf[14] = v13;
              _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Principal class %@ does not conform to AAAppleIDLoginPlugin for bundle %@", buf, 0x16u);
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  v22 = _AALogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "AALoginPluginManager: Finished loading service bundles.", buf, 2u);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v25;
}

uint64_t __55__AALoginPluginManager__loadPluginsLimitedToBundleIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lowercaseString];
  v4 = [*(a1 + 32) bundleIdentifier];
  v5 = [v4 lowercaseString];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

@end