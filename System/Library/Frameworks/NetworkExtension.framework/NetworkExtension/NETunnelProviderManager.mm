@interface NETunnelProviderManager
+ (NETunnelProviderManager)forPerAppVPN;
+ (void)loadAllFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (NETunnelProviderManager)initWithSessionType:(int)a3 tunnelType:(int64_t)a4;
- (NETunnelProviderRoutingMethod)routingMethod;
- (NSArray)copyAppRules;
- (void)additionalSetup;
- (void)loadAppRules;
- (void)loadFromPreferencesWithCompletionHandler:(id)a3;
@end

@implementation NETunnelProviderManager

- (NETunnelProviderRoutingMethod)routingMethod
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEVPNManager *)v2 configuration];
  v4 = [v3 appVPN];
  if (v4)
  {
    v5 = NETunnelProviderRoutingMethodSourceApplication;
  }

  else
  {
    v5 = NETunnelProviderRoutingMethodDestinationIP;
  }

  objc_sync_exit(v2);
  return v5;
}

- (NSArray)copyAppRules
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEVPNManager *)v2 configuration];
  v4 = [v3 appVPN];
  if (v4)
  {
    v5 = [(NEVPNManager *)v2 configuration];
    v6 = [v5 appVPN];
    v7 = [v6 appRules];

    if (!v7)
    {
      v4 = 0;
      goto LABEL_6;
    }

    v8 = objc_alloc(MEMORY[0x1E695DEC8]);
    v3 = [(NEVPNManager *)v2 configuration];
    v9 = [v3 appVPN];
    v10 = [v9 appRules];
    v4 = [v8 initWithArray:v10 copyItems:1];
  }

LABEL_6:
  objc_sync_exit(v2);

  return v4;
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
    v8[2] = __68__NETunnelProviderManager_loadFromPreferencesWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E7F0B5D8;
    v8[4] = self;
    v9 = v4;
    [v5 loadConfigurationWithID:v7 withCompletionQueue:MEMORY[0x1E69E96A0] handler:v8];
  }
}

void __68__NETunnelProviderManager_loadFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v6)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v29 = 138412290;
      v30 = v6;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Failed to load the configuration: %@", &v29, 0xCu);
    }

    v9 = [NEVPNManager mapError:v6];

    (*(*(a1 + 40) + 16))();
    goto LABEL_16;
  }

  v10 = *(a1 + 32);
  if (!v5)
  {
    v20 = [v10 configuration];
    v21 = [v20 appVPN];

    v22 = [*(a1 + 32) configuration];
    if (v21)
    {
      [v22 appVPN];
    }

    else
    {
      [v22 VPN];
    }
    v23 = ;
    [v23 setEnabled:0];

    v24 = +[NEVPNManager loadedManagers];
    v25 = [*(a1 + 32) configuration];
    v26 = [v25 identifier];
    [v24 removeObjectForKey:v26];

    v27 = [*(a1 + 32) connection];
    [(NEVPNConnection *)v27 destroySession];

    goto LABEL_15;
  }

  [v10 setConfiguration:v5];
  [(NETunnelProviderManager *)*(a1 + 32) loadAppRules];
  v11 = *(a1 + 32);
  v12 = +[NEVPNManager loadedManagers];
  v13 = [*(a1 + 32) configuration];
  v14 = [v13 identifier];
  [v12 setObject:v11 forKeyedSubscript:v14];

  v15 = [*(a1 + 32) connection];
  if (v15)
  {
    v16 = v15[7];

    if (v16)
    {
LABEL_15:
      (*(*(a1 + 40) + 16))();
      v9 = 0;
      goto LABEL_16;
    }
  }

  v17 = [*(a1 + 32) connection];
  v18 = [*(a1 + 32) configuration];
  v19 = [v18 identifier];
  if (v17)
  {
    [(NEVPNConnection *)v17 createSessionWithConfigurationIdentifier:v19 forceInfoFetch:0 completionHandler:*(a1 + 40)];
  }

  v9 = 0;
LABEL_16:
  objc_sync_exit(v7);

  v28 = *MEMORY[0x1E69E9840];
}

- (void)loadAppRules
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_50;
  }

  v2 = [a1 configuration];
  v3 = [v2 appVPN];
  v4 = [v3 appRules];
  v5 = [v4 count];

  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [a1 setMailDomains:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [a1 setCalendarDomains:v7];

  v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [a1 setContactsDomains:v8];

  v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [a1 setSafariDomains:v9];

  v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [a1 setExcludedDomains:v10];

  v11 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  [a1 setAssociatedDomains:v11];

  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = a1;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v12 = [a1 configuration];
  v13 = [v12 appVPN];
  v14 = [v13 appRules];

  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v15)
  {
    goto LABEL_47;
  }

  v16 = v15;
  v17 = *v63;
  do
  {
    v18 = 0;
    do
    {
      if (*v63 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v62 + 1) + 8 * v18);
      v20 = [v19 matchSigningIdentifier];
      if ([v20 isEqualToString:@"com.apple.mobilemail"])
      {
        goto LABEL_13;
      }

      v21 = [v19 matchSigningIdentifier];
      if ([v21 isEqualToString:@"com.apple.email.maild"])
      {
        goto LABEL_12;
      }

      v22 = [v19 matchSigningIdentifier];
      if ([v22 isEqualToString:@"com.apple.datausage.dataaccess.activesync"])
      {

LABEL_12:
LABEL_13:

LABEL_14:
        v23 = [v19 matchSigningIdentifier];
        if ([v23 isEqualToString:@"com.apple.mobilemail"])
        {
          v24 = [v19 matchDomains];
          v25 = [v24 count];

          if (!v25)
          {
            goto LABEL_40;
          }

          v26 = [v19 matchDomains];
          [v60 setMailDomains:v26];
          goto LABEL_17;
        }

        goto LABEL_39;
      }

      v27 = [v19 matchSigningIdentifier];
      v28 = [v27 isEqualToString:@"com.apple.mobilenotes"];

      if (v28)
      {
        goto LABEL_14;
      }

      v29 = [v19 matchSigningIdentifier];
      if ([v29 isEqualToString:@"com.apple.mobilecal"])
      {
        goto LABEL_22;
      }

      v30 = [v19 matchSigningIdentifier];
      if ([v30 isEqualToString:@"com.apple.calaccessd"])
      {

LABEL_22:
LABEL_23:
        v23 = [v19 matchSigningIdentifier];
        if ([v23 isEqualToString:@"com.apple.mobilecal"])
        {
          v31 = [v19 matchDomains];
          v32 = [v31 count];

          if (!v32)
          {
            goto LABEL_40;
          }

          v26 = [v19 matchDomains];
          [v60 setCalendarDomains:v26];
          goto LABEL_17;
        }

LABEL_39:

        goto LABEL_40;
      }

      v33 = [v19 matchSigningIdentifier];
      v34 = [v33 isEqualToString:@"com.apple.reminders"];

      if (v34)
      {
        goto LABEL_23;
      }

      v35 = [v19 matchSigningIdentifier];
      if ([v35 isEqualToString:@"com.apple.MobileAddressBook"])
      {

LABEL_30:
        v23 = [v19 matchSigningIdentifier];
        if (([v23 isEqualToString:@"com.apple.MobileAddressBook"] & 1) == 0)
        {
          goto LABEL_39;
        }

        v38 = [v19 matchDomains];
        v39 = [v38 count];

        if (!v39)
        {
          goto LABEL_40;
        }

        v26 = [v19 matchDomains];
        [v60 setContactsDomains:v26];
        goto LABEL_17;
      }

      v36 = [v19 matchSigningIdentifier];
      v37 = [v36 isEqualToString:@"com.apple.dataaccessd"];

      if (v37)
      {
        goto LABEL_30;
      }

      v40 = [v19 matchSigningIdentifier];
      if ([v40 isEqualToString:@"com.apple.mobilesafari"])
      {

LABEL_36:
        v23 = [v19 matchSigningIdentifier];
        if (([v23 isEqualToString:@"com.apple.mobilesafari"] & 1) == 0)
        {
          goto LABEL_39;
        }

        v43 = [v19 matchDomains];
        v44 = [v43 count];

        if (!v44)
        {
          goto LABEL_40;
        }

        v26 = [v19 matchDomains];
        [v60 setSafariDomains:v26];
LABEL_17:

        goto LABEL_40;
      }

      v41 = [v19 matchSigningIdentifier];
      v42 = [v41 isEqualToString:@"com.apple.webapp"];

      if (v42)
      {
        goto LABEL_36;
      }

      v45 = [v19 matchSigningIdentifier];
      v46 = [v45 isEqualToString:@"com.apple.swcd"];

      if (v46)
      {
        v47 = [v19 matchDomains];
        v48 = [v47 count];

        if (v48)
        {
          v26 = [v19 matchDomains];
          [v60 setAssociatedDomains:v26];
          goto LABEL_17;
        }
      }

      else
      {
        [v59 addObject:v19];
      }

LABEL_40:
      ++v18;
    }

    while (v16 != v18);
    v49 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    v16 = v49;
  }

  while (v49);
LABEL_47:

  v50 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v59];
  [v60 setAppRules:v50];

  v51 = [v60 configuration];
  v52 = [v51 appVPN];
  v53 = [v52 excludedDomains];
  v54 = [v53 count];

  if (v54)
  {
    v55 = [v60 configuration];
    v56 = [v55 appVPN];
    v57 = [v56 excludedDomains];
    [v60 setExcludedDomains:v57];
  }

LABEL_50:
  v58 = *MEMORY[0x1E69E9840];
}

- (void)additionalSetup
{
  v3 = [(NEVPNManager *)self configuration];
  v4 = [v3 appVPN];

  v5 = [(NEVPNManager *)self configuration];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 appVPN];
    v16 = [v7 protocol];

    v8 = [(NEVPNManager *)self configuration];
    [v8 appVPN];
  }

  else
  {
    v9 = [v5 VPN];
    v16 = [v9 protocol];

    v8 = [(NEVPNManager *)self configuration];
    [v8 VPN];
  }
  v10 = ;
  v11 = [v10 tunnelType];

  if ((v11 - 1) <= 1)
  {
    v12 = [v16 providerBundleIdentifier];
    objc_opt_self();
    [v16 setProviderBundleIdentifier:v12];
    v13 = [(NEVPNManager *)self configuration];
    if (v13)
    {
      v13[22] = 0;
    }
  }

  v14 = [MEMORY[0x1E696AAE8] mainBundle];
  v15 = [v14 bundleIdentifier];
  [v16 setPluginType:v15];
}

- (NETunnelProviderManager)initWithSessionType:(int)a3 tunnelType:(int64_t)a4
{
  v6 = [(NEVPNConnection *)[NETunnelProviderSession alloc] initWithType:a3];
  v21.receiver = self;
  v21.super_class = NETunnelProviderManager;
  v7 = [(NEVPNManager *)&v21 initWithGrade:1 connection:v6 tunnelType:a4];

  if (v7)
  {
    *&v7->super._hasLoaded = 1;
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    mailDomains = v7->_mailDomains;
    v7->_mailDomains = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    calendarDomains = v7->_calendarDomains;
    v7->_calendarDomains = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    contactsDomains = v7->_contactsDomains;
    v7->_contactsDomains = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    safariDomains = v7->_safariDomains;
    v7->_safariDomains = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    excludedDomains = v7->_excludedDomains;
    v7->_excludedDomains = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    associatedDomains = v7->_associatedDomains;
    v7->_associatedDomains = v18;
  }

  return v7;
}

+ (void)loadAllFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = +[NEVPNManager loadedManagers];
    v6 = +[NEVPNManager configurationManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E7F0B1E8;
    v9 = a1;
    v8 = v4;
    [v6 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v7];
  }
}

void __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v34 = a2;
  v5 = a3;
  v32 = a1;
  obj = *(a1 + 40);
  objc_sync_enter(obj);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__23935;
  v52 = __Block_byref_object_dispose__23936;
  v6 = v5;
  v53 = v6;
  v31 = v6;
  if (v6)
  {
    v7 = [NEVPNManager mapError:v6];
    v8 = v49[5];
    v49[5] = v7;

    v9 = v49[5];
  }

  else
  {
    v9 = 0;
  }

  if (!v34 || v9)
  {
    goto LABEL_35;
  }

  if (![v34 count])
  {
    v29 = v49[5];
LABEL_35:
    (*(*(a1 + 32) + 16))();
    goto LABEL_36;
  }

  group = dispatch_group_create();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = v34;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = *v45;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v44 + 1) + 8 * i);
      v15 = [v14 VPN];
      if (v15)
      {
        [v14 VPN];
      }

      else
      {
        [v14 appVPN];
      }
      v16 = ;

      if (v16)
      {
        v17 = [v16 protocol];
        if ([(NETunnelProviderManager *)v17 type]== 4)
        {
          v18 = [v16 tunnelType] == 1;

          if (!v18)
          {
            goto LABEL_31;
          }

          v19 = [v14 pluginType];
          if (v19)
          {
            if ([NETunnelProviderProtocol isLegacyPluginType:v19])
            {
              v17 = v19;
            }

            else
            {
              v20 = [v14 VPN];
              v21 = v20 == 0;

              if (v21)
              {
                v22 = [NETunnelProviderManager alloc];
                v23 = [v16 tunnelType];
                v24 = 2;
              }

              else
              {
                v22 = [NETunnelProviderManager alloc];
                v23 = [v16 tunnelType];
                v24 = 1;
              }

              v17 = [(NETunnelProviderManager *)v22 initWithSessionType:v24 tunnelType:v23];
              [(NEVPNManager *)v17 setConfiguration:v14];
              [(NETunnelProviderManager *)v17 loadAppRules];
              [v35 addObject:v17];
              v25 = +[NEVPNManager loadedManagers];
              v26 = [v14 identifier];
              [v25 setObject:v17 forKeyedSubscript:v26];

              if (v17)
              {
                v17->super._hasLoaded = 1;
              }

              dispatch_group_enter(group);
              v27 = [(NEVPNManager *)v17 connection];
              v28 = [v14 identifier];
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_46;
              v41[3] = &unk_1E7F0B198;
              v41[4] = v14;
              v43 = &v48;
              v42 = group;
              if (v27)
              {
                [(NEVPNConnection *)v27 createSessionWithConfigurationIdentifier:v28 forceInfoFetch:0 completionHandler:v41];
              }
            }
          }

          else
          {
            v17 = 0;
          }
        }
      }

LABEL_31:
    }

    v11 = [v10 countByEnumeratingWithState:&v44 objects:v54 count:16];
  }

  while (v11);
LABEL_33:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_48;
  block[3] = &unk_1E7F0B1C0;
  v40 = &v48;
  v38 = v35;
  v39 = *(v32 + 32);
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

LABEL_36:
  _Block_object_dispose(&v48, 8);

  objc_sync_exit(obj);
  v30 = *MEMORY[0x1E69E9840];
}

void __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_46(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) identifier];
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

uint64_t __71__NETunnelProviderManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_48(uint64_t a1)
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

+ (NETunnelProviderManager)forPerAppVPN
{
  v2 = [[NETunnelProviderManager alloc] initWithSessionType:2 tunnelType:1];

  return v2;
}

@end