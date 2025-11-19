@interface NEVPNManager
+ (NEVPNManager)sharedManager;
+ (id)configurationManager;
+ (id)create;
+ (id)loadedManagers;
+ (id)mapError:(uint64_t)a1;
+ (void)loadAllFromPreferencesWithCompletionHandler:(id)a3;
- (BOOL)isEnabled;
- (BOOL)isFromMDM;
- (BOOL)isFromProfile;
- (BOOL)isOnDemandEnabled;
- (NEProfileIngestionPayloadInfo)configurationPayloadInfo;
- (NEVPNManager)initWithGrade:(int64_t)a3 connection:(id)a4 tunnelType:(int64_t)a5;
- (NEVPNProtocol)protocolConfiguration;
- (NSArray)onDemandRules;
- (NSString)appBundleIdentifier;
- (NSString)localizedDescription;
- (NSUUID)identifier;
- (id)copyCurrentUserStartOptions;
- (id)createL2TPUserPreferencesWithName:(id)a3;
- (id)description;
- (void)additionalSetup;
- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)setLocalizedDescription:(NSString *)localizedDescription;
- (void)setOnDemandRules:(NSArray *)onDemandRules;
- (void)setProtocolConfiguration:(NEVPNProtocol *)protocolConfiguration;
@end

@implementation NEVPNManager

- (id)createL2TPUserPreferencesWithName:(id)a3
{
  v4 = a3;
  v5 = [NEL2TPUserPreferences alloc];
  v6 = [(NEVPNManager *)self configuration];
  v7 = [(NEL2TPUserPreferences *)v5 initWithConfiguration:v6];

  [(NEL2TPUserPreferences *)v7 setName:v4];
  v8 = objc_alloc_init(NEVPNProtocolL2TP);
  [(NEL2TPUserPreferences *)v7 setSettings:v8];

  v9 = [(NEL2TPUserPreferences *)v7 settings];
  if (v9)
  {
    v9[10] = 1;
  }

  return v7;
}

- (id)copyCurrentUserStartOptions
{
  v3 = [(NEVPNManager *)self protocolConfiguration];
  v4 = [v3 type];

  if (v4 != 2)
  {
    return 0;
  }

  v5 = [(NEVPNManager *)self protocolConfiguration];
  v6 = [v5 userPreferences];
  v7 = [v6 indexOfObjectPassingTest:&__block_literal_global_80];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    started = 0;
  }

  else
  {
    v10 = [v5 userPreferences];
    v11 = [v10 objectAtIndexedSubscript:v7];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 40);
      started = SCUserPreferencesCopyStartOptions();
    }

    else
    {
      started = 0;
    }
  }

  v9 = started;

  return v9;
}

- (NEProfileIngestionPayloadInfo)configurationPayloadInfo
{
  v2 = [(NEVPNManager *)self configuration];
  v3 = [v2 payloadInfo];

  return v3;
}

- (BOOL)isFromMDM
{
  v2 = [(NEVPNManager *)self configuration];
  v3 = [v2 payloadInfo];
  v4 = [v3 profileSource] == 2;

  return v4;
}

- (BOOL)isFromProfile
{
  v2 = [(NEVPNManager *)self configuration];
  v3 = [v2 payloadInfo];
  v4 = v3 != 0;

  return v4;
}

- (NSString)appBundleIdentifier
{
  v2 = [(NEVPNManager *)self configuration];
  v3 = [v2 application];

  return v3;
}

- (NSUUID)identifier
{
  v2 = [(NEVPNManager *)self configuration];
  v3 = [v2 identifier];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NEVPNManager *)self descriptionWithIndent:0 options:14];
  v4 = [v2 stringWithFormat:@"{%@\n}", v3];

  return v4;
}

- (void)setLocalizedDescription:(NSString *)localizedDescription
{
  v6 = localizedDescription;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NEVPNManager *)v4 configuration];
  [v5 setName:v6];

  objc_sync_exit(v4);
}

- (NSString)localizedDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEVPNManager *)v2 configuration];
  v4 = [v3 name];

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)isEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEVPNManager *)v2 configuration];
  v4 = [v3 appVPN];

  v5 = [(NEVPNManager *)v2 configuration];
  if (v4)
  {
    [v5 appVPN];
  }

  else
  {
    [v5 VPN];
  }
  v6 = ;
  v7 = [v6 isEnabled];

  objc_sync_exit(v2);
  return v7;
}

- (BOOL)isOnDemandEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEVPNManager *)v2 configuration];
  v4 = [v3 appVPN];

  v5 = [(NEVPNManager *)v2 configuration];
  if (v4)
  {
    [v5 appVPN];
  }

  else
  {
    [v5 VPN];
  }
  v6 = ;
  v7 = [v6 isOnDemandEnabled];

  objc_sync_exit(v2);
  return v7;
}

- (void)setOnDemandRules:(NSArray *)onDemandRules
{
  v9 = onDemandRules;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NEVPNManager *)v4 configuration];
  v6 = [v5 appVPN];

  v7 = [(NEVPNManager *)v4 configuration];
  if (v6)
  {
    [v7 appVPN];
  }

  else
  {
    [v7 VPN];
  }
  v8 = ;
  [v8 setOnDemandRules:v9];

  objc_sync_exit(v4);
}

- (NSArray)onDemandRules
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEVPNManager *)v2 configuration];
  v4 = [v3 appVPN];

  v5 = [(NEVPNManager *)v2 configuration];
  if (v4)
  {
    [v5 appVPN];
  }

  else
  {
    [v5 VPN];
  }
  v6 = ;
  v7 = [v6 onDemandRules];

  objc_sync_exit(v2);

  return v7;
}

- (void)setProtocolConfiguration:(NEVPNProtocol *)protocolConfiguration
{
  v9 = protocolConfiguration;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NEVPNManager *)v4 configuration];
  v6 = [v5 appVPN];

  v7 = [(NEVPNManager *)v4 configuration];
  if (v6)
  {
    [v7 appVPN];
  }

  else
  {
    [v7 VPN];
  }
  v8 = ;
  [v8 setProtocol:v9];

  objc_sync_exit(v4);
}

- (NEVPNProtocol)protocolConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEVPNManager *)v2 configuration];
  v4 = [v3 appVPN];

  v5 = [(NEVPNManager *)v2 configuration];
  if (v4)
  {
    [v5 appVPN];
  }

  else
  {
    [v5 VPN];
  }
  v6 = ;
  v7 = [v6 protocol];

  objc_sync_exit(v2);

  return v7;
}

- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler
{
  v105 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5 || !v5->_hasLoaded)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:4 userInfo:0];
    if (!v4)
    {
      goto LABEL_41;
    }

    v46 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__NEVPNManager_saveToPreferencesWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7F0B588;
    v95 = v4;
    v10 = v10;
    v94 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_39:
    v49 = v46[5];
    goto LABEL_40;
  }

  v6 = [(NEVPNManager *)v5 configuration];
  if (!v6)
  {
    goto LABEL_37;
  }

  v7 = [(NEVPNManager *)v5 protocolConfiguration];
  if (!v7)
  {

    goto LABEL_37;
  }

  v8 = [(NEVPNManager *)v5 protocolConfiguration];
  v9 = -[NEVPNManager isProtocolTypeValid:](v5, "isProtocolTypeValid:", [v8 type]);

  if (!v9)
  {
LABEL_37:
    v47 = MEMORY[0x1E696ABC0];
    v99 = *MEMORY[0x1E696A578];
    v100 = @"Missing protocol or protocol has invalid type";
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v10 = [v47 errorWithDomain:@"NEVPNErrorDomain" code:1 userInfo:v48];

    if (!v4)
    {
      goto LABEL_41;
    }

    v46 = v90;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __55__NEVPNManager_saveToPreferencesWithCompletionHandler___block_invoke_2;
    v90[3] = &unk_1E7F0B588;
    v92 = v4;
    v10 = v10;
    v91 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v90);

    goto LABEL_39;
  }

  [(NEVPNManager *)v5 additionalSetup];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [(NEVPNManager *)v5 configuration];
  v12 = [v11 checkValidityAndCollectErrors:v10];

  if ((v12 & 1) == 0)
  {
    if ([v10 count])
    {
      v97 = *MEMORY[0x1E696A578];
      v51 = [v10 componentsJoinedByString:@"\n"];
      v98 = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    }

    else
    {
      v52 = 0;
    }

    v49 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:1 userInfo:v52];
    v53 = ne_log_obj();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v104 = v49;
      _os_log_error_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_ERROR, "Failed to save the new configuration: %@", buf, 0xCu);
    }

    if (v4)
    {
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __55__NEVPNManager_saveToPreferencesWithCompletionHandler___block_invoke_43;
      v87[3] = &unk_1E7F0B588;
      v89 = v4;
      v88 = v49;
      dispatch_async(MEMORY[0x1E69E96A0], v87);
    }

    goto LABEL_40;
  }

  v73 = [(NEVPNManager *)v5 protocolConfiguration];
  if ([v73 type] != 2)
  {
    goto LABEL_53;
  }

  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v68 = v73;
  v13 = [v68 userPreferences];
  v14 = [v13 countByEnumeratingWithState:&v83 objects:v96 count:16];
  obj = v13;
  if (!v14)
  {

LABEL_51:
    v54 = [(NEVPNManager *)v5 configuration];
    [NEL2TPUserPreferences clearCurrentForConfiguration:v54];

    goto LABEL_52;
  }

  v15 = 0;
  v75 = *v84;
  v71 = *MEMORY[0x1E6982388];
  v70 = *MEMORY[0x1E6982378];
  v69 = *MEMORY[0x1E6982900];
  while (2)
  {
    v74 = v14;
    for (i = 0; i != v74; ++i)
    {
      if (*v84 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v83 + 1) + 8 * i);
      v76 = [v17 isCurrent];
      if (!v17)
      {
        goto LABEL_69;
      }

      v18 = [v17 name];
      v19 = v18 == 0;

      if (!v19)
      {
        v20 = v17[5];
        v21 = [v17 name];
        LODWORD(v20) = SCUserPreferencesSetName() == 0;

        if (v20)
        {
          Error = SCCopyLastError();
          oslog = ne_log_obj();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v104 = Error;
            v60 = "Failed to set the user preferences name: %@";
            goto LABEL_64;
          }

LABEL_68:

LABEL_69:
          v66 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEVPNErrorDomain" code:4 userInfo:0];
          v67 = ne_log_obj();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v104 = v66;
            _os_log_error_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_ERROR, "Failed to save the new configuration: %@", buf, 0xCu);
          }

          if (v4)
          {
            v80[0] = MEMORY[0x1E69E9820];
            v80[1] = 3221225472;
            v80[2] = __55__NEVPNManager_saveToPreferencesWithCompletionHandler___block_invoke_44;
            v80[3] = &unk_1E7F0B588;
            v82 = v4;
            v81 = v66;
            dispatch_async(MEMORY[0x1E69E96A0], v80);
          }

          v49 = v68;
          goto LABEL_40;
        }
      }

      if ([v17 isCurrent])
      {
        v22 = v17[5];
        if (!SCUserPreferencesSetCurrent())
        {
          Error = SCCopyLastError();
          oslog = ne_log_obj();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v104 = Error;
            v60 = "Failed to set the current user preferences: %@";
LABEL_64:
            _os_log_error_impl(&dword_1BA83C000, oslog, OS_LOG_TYPE_ERROR, v60, buf, 0xCu);
          }

          goto LABEL_68;
        }
      }

      v23 = [v17 settings];
      v24 = v23 == 0;

      if (!v24)
      {
        v25 = [v17 settings];
        v26 = [v25 passwordKeychainItem];
        [v26 setDomain:1];

        v27 = [v17 settings];
        v28 = [v27 sharedSecretKeychainItem];
        [v28 setDomain:1];

        v29 = objc_alloc(MEMORY[0x1E696AFB0]);
        v30 = [v17 identifier];
        Error = [v29 initWithUUIDString:v30];

        oslog = [[NEConfiguration alloc] initWithIdentifier:?];
        v32 = [v17 name];
        [oslog setName:v32];

        v33 = [v17 settings];
        [v33 syncWithKeychainInDomain:1 configuration:oslog suffix:0];

        v34 = [v17 settings];
        v35 = [v34 copyLegacyDictionaryComplete:0];

        if (!v35)
        {
          v35 = objc_alloc_init(MEMORY[0x1E695DF20]);
        }

        v36 = v17[5];
        if (!SCUserPreferencesSetInterfaceTypeConfiguration())
        {
          v61 = SCCopyLastError();
          v62 = ne_log_obj();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v104 = v61;
            _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "Failed to set the PPP settings in the user preferences: %@", buf, 0xCu);
          }

          goto LABEL_68;
        }

        v37 = [v17 settings];
        v38 = [v37 copyLegacyIPSecDictionary];

        if (!v38)
        {
          v38 = objc_alloc_init(MEMORY[0x1E695DF20]);
        }

        v39 = v17[5];
        if (!SCUserPreferencesSetInterfaceTypeConfiguration())
        {
          v63 = SCCopyLastError();
          v64 = ne_log_obj();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v104 = v63;
            _os_log_error_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_ERROR, "Failed to set the IPsec settings in the user preferences: %@", buf, 0xCu);
          }

          goto LABEL_68;
        }
      }

      Error = [v17 settings];
      if ([Error authenticationMethod] == 3)
      {
        v40 = [v17 settings];
        v41 = [v40 identityReference];
        v42 = v41 == 0;

        if (v42)
        {
          goto LABEL_30;
        }

        v101 = @"TLSIdentityHandle";
        v43 = [v17 settings];
        v44 = [v43 identityReference];
        v102 = v44;
        Error = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];

        v45 = v17[5];
        if (!SCUserPreferencesSetInterfaceTypeConfiguration())
        {
          oslog = SCCopyLastError();
          v65 = ne_log_obj();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v104 = oslog;
            _os_log_error_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_ERROR, "Failed to set the EAP settings in the user preferences: %@", buf, 0xCu);
          }

          goto LABEL_68;
        }
      }

LABEL_30:
      v15 |= v76;
    }

    v14 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_52:

LABEL_53:
  v55 = +[NEVPNManager loadedManagers];
  v5->_notificationSent = 0;
  v56 = +[NEVPNManager configurationManager];
  v57 = [(NEVPNManager *)v5 configuration];
  v58 = MEMORY[0x1E69E96A0];
  v59 = MEMORY[0x1E69E96A0];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __55__NEVPNManager_saveToPreferencesWithCompletionHandler___block_invoke_2_46;
  v78[3] = &unk_1E7F0B628;
  v78[4] = v5;
  v79 = v4;
  [v56 saveConfiguration:v57 withCompletionQueue:v58 handler:v78];

  v49 = v73;
LABEL_40:

LABEL_41:
  objc_sync_exit(v5);

  v50 = *MEMORY[0x1E69E9840];
}

+ (id)loadedManagers
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__NEVPNManager_loadedManagers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (loadedManagers_managers_init_27228 != -1)
  {
    dispatch_once(&loadedManagers_managers_init_27228, block);
  }

  v1 = loadedManagers_loadedManagers_27229;

  return v1;
}

+ (id)configurationManager
{
  objc_opt_self();
  if (g_noAppFilter)
  {
    +[NEConfigurationManager sharedManagerForAllUsers];
  }

  else
  {
    +[NEConfigurationManager sharedManager];
  }
  v0 = ;

  return v0;
}

void __55__NEVPNManager_saveToPreferencesWithCompletionHandler___block_invoke_2_46(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (v3)
  {
    v5 = [NEVPNManager mapError:v3];

    if (v5)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v5;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to save configuration: %@", &v15, 0xCu);
      }
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      *(v7 + 9) = 1;
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (!v8 || (*(v8 + 9) & 1) == 0)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 32);
        v15 = 138412290;
        v16 = v14;
        _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "Post NEVPNConfigurationChangeNotification to app for manager %@", &v15, 0xCu);
      }

      v10 = *(a1 + 32);
      if (v10)
      {
        *(v10 + 9) = 1;
      }

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 postNotificationName:@"com.apple.networkextension.app-configuration-changed" object:*(a1 + 32)];
    }

    v5 = 0;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v5);
  }

  objc_sync_exit(v4);

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)mapError:(uint64_t)a1
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 domain];
  v4 = [v3 isEqual:@"NEConfigurationErrorDomain"];

  if (!v4)
  {
    v6 = @"Unknown.";
    goto LABEL_6;
  }

  v5 = [v2 code];
  if (v5 > 0x15)
  {
    goto LABEL_12;
  }

  if (((1 << v5) & 0x301D40) != 0)
  {
    v6 = [v2 localizedDescription];
    v7 = 5;
LABEL_14:
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v8 = [v9 errorWithDomain:@"NEVPNErrorDomain" code:v7 userInfo:v10];

    goto LABEL_15;
  }

  if (v5 == 7)
  {
LABEL_13:
    v6 = [v2 localizedDescription];
    v7 = 1;
    goto LABEL_14;
  }

  if (v5 != 9)
  {
LABEL_12:
    if (v5 - 1 < 4)
    {
      goto LABEL_13;
    }

    if (v5 == 5)
    {
      v6 = [v2 localizedDescription];
      v7 = 4;
      goto LABEL_14;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = [v2 localizedDescription];
    v6 = [v13 stringWithFormat:@"Unknown: %@", v14];

LABEL_6:
    v7 = 6;
    goto LABEL_14;
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "The configuration was not saved because it was unchanged from the previously saved version", buf, 2u);
  }

  v8 = 0;
LABEL_15:

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

void __30__NEVPNManager_loadedManagers__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = loadedManagers_loadedManagers_27229;
  loadedManagers_loadedManagers_27229 = v2;

  v4 = +[NEVPNManager configurationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__NEVPNManager_loadedManagers__block_invoke_2;
  v6[3] = &__block_descriptor_40_e17_v16__0__NSArray_8l;
  v6[4] = *(a1 + 32);
  [v4 setChangedQueue:MEMORY[0x1E69E96A0] andHandler:v6];

  v5 = +[NEVPNManager configurationManager];
  [v5 setIncomingMessageHandler:&__block_literal_global_27231];
}

void __30__NEVPNManager_loadedManagers__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [loadedManagers_loadedManagers_27229 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v7)];
        if (v8 || ([*(a1 + 32) sharedManager], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __30__NEVPNManager_loadedManagers__block_invoke_3;
          v14[3] = &unk_1E7F0B4A8;
          v15 = v8;
          v9 = v8;
          [v9 loadFromPreferencesWithCompletionHandler:v14];
        }

        else
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *v13 = 0;
            _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "Post NEVPNConfigurationChangeNotification to app", v13, 2u);
          }

          v9 = [MEMORY[0x1E696AD88] defaultCenter];
          [v9 postNotificationName:@"com.apple.networkextension.app-configuration-changed" object:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v11 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v5 = v11;
    }

    while (v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __30__NEVPNManager_loadedManagers__block_invoke_12(uint64_t a1, void *a2)
{
  xdict = a2;
  reply = xpc_dictionary_create_reply(xdict);
  if (xdict && MEMORY[0x1BFAFC5E0]() == MEMORY[0x1E69E9E80] && xpc_dictionary_get_int64(xdict, "config-operation") == 8)
  {
    v4 = loadedManagers_configurationClient;
    if (!loadedManagers_configurationClient)
    {
      v5 = [NEProviderAppConfigurationClient alloc];
      if (v5)
      {
        v17.receiver = v5;
        v17.super_class = NEProviderAppConfigurationClient;
        v6 = objc_msgSendSuper2(&v17, sel_init);
        if (v6)
        {
          v7 = [MEMORY[0x1E696B0D8] anonymousListener];
          v8 = *(v6 + 9);
          *(v6 + 9) = v7;

          [*(v6 + 9) setDelegate:v6];
          [*(v6 + 9) resume];
          *(v6 + 64) = 1;
          v9 = [MEMORY[0x1E696AD88] defaultCenter];
          [v9 addObserver:v6 selector:sel_handleConfigChanged_ name:@"com.apple.networkextension.app-configuration-changed" object:0];
        }
      }

      else
      {
        v6 = 0;
      }

      v10 = loadedManagers_configurationClient;
      loadedManagers_configurationClient = v6;

      v4 = loadedManagers_configurationClient;
    }

    v11 = [(NEProviderAppConfigurationClient *)v4 listenerEndpoint];

    if (v11)
    {
      v13 = [(NEProviderAppConfigurationClient *)loadedManagers_configurationClient listenerEndpoint];
      v11 = [v13 _endpoint];

      v14 = 0;
      if (!reply)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = 22;
  if (!reply)
  {
    goto LABEL_17;
  }

LABEL_14:
  xpc_dictionary_set_int64(reply, "result-code", v14);
  if (v11)
  {
    xpc_dictionary_set_value(reply, "result-data", v11);
  }

  v15 = xpc_dictionary_get_remote_connection(xdict);
  xpc_connection_send_message(v15, reply);

LABEL_17:
}

void __30__NEVPNManager_loadedManagers__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 9) & 1) == 0)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "Post NEVPNConfigurationChangeNotification to app for manager %@", &v8, 0xCu);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      *(v4 + 9) = 1;
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"com.apple.networkextension.app-configuration-changed" object:*(a1 + 32)];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)additionalSetup
{
  v48 = [(NEVPNManager *)self protocolConfiguration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = v48;
  if (isKindOfClass)
  {
    v4 = v48;
    [v4 setDisconnectOnWake:0];
    if (v4 && !v4[10])
    {
      v5 = [v4 passwordReference];

      if (v5)
      {
        v6 = [NEKeychainItem alloc];
        v7 = [v4 passwordReference];
        v8 = [(NEKeychainItem *)v6 initWithPersistentReference:v7 domain:1 accessGroup:0];

        v9 = [(NEKeychainItem *)v8 copyData];
        if (v9)
        {
          v10 = [NEKeychainItem alloc];
          v11 = v4[10];
          v13 = objc_getProperty(v4, v12, 88, 1);
          v14 = [(NEKeychainItem *)v10 initWithData:v9 domain:v11 accessGroup:v13];
          [v4 setPasswordKeychainItem:v14];
        }
      }

      v15 = [v4 sharedSecretReference];

      if (v15)
      {
        v16 = [NEKeychainItem alloc];
        v17 = [v4 sharedSecretReference];
        v18 = [(NEKeychainItem *)v16 initWithPersistentReference:v17 domain:1 accessGroup:0];

        v19 = [(NEKeychainItem *)v18 copyData];
        if (v19)
        {
          v20 = [NEKeychainItem alloc];
          v21 = v4[10];
          v23 = objc_getProperty(v4, v22, 88, 1);
          v24 = [(NEKeychainItem *)v20 initWithData:v19 domain:v21 accessGroup:v23];
          [v4 setSharedSecretKeychainItem:v24];
        }
      }

      v25 = [v4 identityDataPassword];

      if (v25)
      {
        v26 = [v4 identityDataPasswordKeychainItem];

        if (v26)
        {
          v27 = [v4 identityDataPassword];
          v28 = [v4 identityDataPasswordKeychainItem];
          [v28 setPassword:v27];
        }

        else
        {
          v29 = [NEKeychainItem alloc];
          v27 = [v4 identityDataPassword];
          v30 = v4[10];
          v28 = objc_getProperty(v4, v31, 88, 1);
          v32 = [(NEKeychainItem *)v29 initWithPassword:v27 domain:v30 accessGroup:v28];
          [v4 setIdentityDataPasswordKeychainItem:v32];
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v4;
        v34 = [v33 ppkConfiguration];

        if (v34)
        {
          v35 = [NEKeychainItem alloc];
          v36 = [v33 ppkConfiguration];
          v37 = [v36 keychainReference];
          v38 = [(NEKeychainItem *)v35 initWithPersistentReference:v37 domain:1 accessGroup:0];

          v39 = [(NEKeychainItem *)v38 copyData];
          if (v39)
          {
            v40 = [NEKeychainItem alloc];
            v41 = v4[10];
            v43 = objc_getProperty(v33, v42, 88, 1);
            v44 = [(NEKeychainItem *)v40 initWithData:v39 domain:v41 accessGroup:v43];
            v45 = [v33 ppkConfiguration];
            v47 = v45;
            if (v45)
            {
              objc_setProperty_atomic_copy(v45, v46, v44, 32);
            }
          }
        }
      }
    }

    v3 = v48;
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v3);
}

- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  v5 = [(NEVPNManager *)self protocolConfiguration];
  v6 = [v5 type];

  if (v6 == 2)
  {
    v7 = [(NEVPNManager *)self protocolConfiguration];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v7 userPreferences];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          if (v13)
          {
            v14 = *(v13 + 40);
            SCUserPreferencesRemove();
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [v7 setUserPreferences:0];
  }

  if (self)
  {
    self->_notificationSent = 0;
  }

  v15 = +[NEVPNManager configurationManager];
  v16 = [(NEVPNManager *)self configuration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__NEVPNManager_removeFromPreferencesWithCompletionHandler___block_invoke;
  v19[3] = &unk_1E7F0B628;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  [v15 removeConfiguration:v16 withCompletionQueue:MEMORY[0x1E69E96A0] handler:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __59__NEVPNManager_removeFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (v3)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v3;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Failed to remove the configuration: %@", buf, 0xCu);
    }

    v6 = [NEVPNManager mapError:v3];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) configuration];
  v8 = v7 == 0;

  if (!v8)
  {
    v9 = +[NEVPNManager loadedManagers];
    v10 = [*(a1 + 32) configuration];
    v11 = [v10 identifier];
    [v9 removeObjectForKey:v11];
  }

  v12 = [*(a1 + 32) connection];
  [(NEVPNConnection *)v12 destroySession];

  v13 = *(a1 + 32);
  if (!v13 || (*(v13 + 9) & 1) == 0)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v24 = v19;
      _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "Post NEVPNConfigurationChangeNotification to app for manager %@", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      *(v15 + 9) = 1;
    }

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 postNotificationName:@"com.apple.networkextension.app-configuration-changed" object:*(a1 + 32)];
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__NEVPNManager_removeFromPreferencesWithCompletionHandler___block_invoke_30;
    v20[3] = &unk_1E7F0B588;
    v22 = v17;
    v21 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v20);
  }

  objc_sync_exit(v4);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = +[NEVPNManager configurationManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__NEVPNManager_loadFromPreferencesWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7F0B5B0;
    v6[4] = self;
    v7 = v4;
    [v5 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v6];
  }
}

void __57__NEVPNManager_loadFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    v7 = [NEVPNManager mapError:v5];

    if (!v7)
    {
LABEL_20:
      (*(*(a1 + 40) + 16))();
      goto LABEL_21;
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v7;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Failed to load the configuration: %@", buf, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    *(v9 + 8) = 1;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v32;
  v10 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (!v10)
  {
LABEL_15:

    v17 = [*(a1 + 32) configuration];
    v18 = [v17 VPN];
    [v18 setEnabled:0];

    v19 = +[NEVPNManager loadedManagers];
    v20 = [*(a1 + 32) configuration];
    v21 = [v20 identifier];
    [v19 removeObjectForKey:v21];

    v8 = [*(a1 + 32) connection];
    [(NEVPNConnection *)v8 destroySession];
LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  v11 = *v34;
LABEL_9:
  v12 = 0;
  while (1)
  {
    if (*v34 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v33 + 1) + 8 * v12);
    v14 = *(a1 + 32);
    v15 = [v13 VPN];
    v16 = [v15 protocol];
    LODWORD(v14) = [v14 isProtocolTypeValid:{objc_msgSend(v16, "type")}];

    if (v14)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v10)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  [*(a1 + 32) setConfiguration:v13];
  v22 = *(a1 + 32);
  v23 = +[NEVPNManager loadedManagers];
  v24 = [*(a1 + 32) configuration];
  v25 = [v24 identifier];
  [v23 setObject:v22 forKeyedSubscript:v25];

  v26 = [*(a1 + 32) connection];
  if (v26)
  {
    v27 = v26[7] == 0;

    if (!v27)
    {
      goto LABEL_18;
    }
  }

  v29 = [*(a1 + 32) connection];
  v30 = [*(a1 + 32) configuration];
  v31 = [v30 identifier];
  if (v29)
  {
    [(NEVPNConnection *)v29 createSessionWithConfigurationIdentifier:v31 forceInfoFetch:0 completionHandler:*(a1 + 40)];
  }

  v7 = 0;
LABEL_21:
  objc_sync_exit(v6);

  v28 = *MEMORY[0x1E69E9840];
}

- (NEVPNManager)initWithGrade:(int64_t)a3 connection:(id)a4 tunnelType:(int64_t)a5
{
  v9 = a4;
  v26.receiver = self;
  v26.super_class = NEVPNManager;
  v10 = [(NEVPNManager *)&v26 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v11 infoDictionary];
    v13 = [v12 objectForKey:*MEMORY[0x1E695E120]];

    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [v14 bundleIdentifier];

    if (!v13)
    {
      v16 = [MEMORY[0x1E696AAE8] mainBundle];
      v17 = [v16 infoDictionary];
      v13 = [v17 objectForKey:*MEMORY[0x1E695E4F8]];
    }

    v18 = [[NEConfiguration alloc] initWithName:v13 grade:a3];
    configuration = v10->_configuration;
    v10->_configuration = v18;

    if (v9 && v9[3] == 1)
    {
      v20 = objc_alloc_init(NEVPN);
      [(NEConfiguration *)v10->_configuration setVPN:v20];

      v21 = [(NEConfiguration *)v10->_configuration VPN];
    }

    else
    {
      v22 = objc_alloc_init(NEVPNApp);
      [(NEConfiguration *)v10->_configuration setAppVPN:v22];

      v21 = [(NEConfiguration *)v10->_configuration appVPN];
    }

    v23 = v21;
    [v21 setTunnelType:a5];

    [(NEConfiguration *)v10->_configuration setApplication:v15];
    [(NEConfiguration *)v10->_configuration setApplicationName:v13];
    objc_storeStrong(&v10->_connection, a4);
    connection = v10->_connection;
    if (connection)
    {
      objc_storeWeak(&connection->_weakmanager, v10);
    }

    *&v10->_hasLoaded = 1;
  }

  return v10;
}

+ (void)loadAllFromPreferencesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_self();
    g_noAppFilter = 1;
    v5 = +[NEVPNManager loadedManagers];
    v6 = +[NEVPNManager configurationManager];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__NEVPNManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E7F0B1E8;
    v9 = a1;
    v8 = v4;
    [v6 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v7];
  }
}

void __60__NEVPNManager_loadAllFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v5 = a3;
  v48 = a1;
  v49 = *(a1 + 40);
  objc_sync_enter(v49);
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__27265;
  v83 = __Block_byref_object_dispose__27266;
  v6 = v5;
  v84 = v6;
  v47 = v6;
  if (v6)
  {
    v7 = [NEVPNManager mapError:v6];
    v8 = v80[5];
    v80[5] = v7;

    v9 = v80[5];
  }

  else
  {
    v9 = 0;
  }

  if (!v50 || v9)
  {
    goto LABEL_65;
  }

  if (![v50 count])
  {
    v45 = v80[5];
LABEL_65:
    (*(*(a1 + 32) + 16))();
    goto LABEL_66;
  }

  group = dispatch_group_create();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v50;
  v57 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (v57)
  {
    v56 = *v76;
    v58 = *MEMORY[0x1E6982378];
    v64 = *MEMORY[0x1E6982900];
    v65 = *MEMORY[0x1E6982388];
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v76 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v67 = *(*(&v75 + 1) + 8 * i);
        v10 = [v67 VPN];
        if (v10)
        {
          [v67 VPN];
        }

        else
        {
          [v67 appVPN];
        }
        v66 = ;

        if (v66)
        {
          objc_opt_class();
          v11 = objc_opt_isKindOfClass() & 1;
          v12 = v11 ? 2 : 1;
          if (v11 || [v66 tunnelType] != 2 || (objc_msgSend(v66, "protocol"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "type") == 4, v13, !v14))
          {
            v60 = [[NEVPNConnection alloc] initWithType:v12];
            v15 = -[NEVPNManager initWithGrade:connection:tunnelType:]([NEVPNManager alloc], "initWithGrade:connection:tunnelType:", [v67 grade], v60, objc_msgSend(v66, "tunnelType"));
            [(NEVPNManager *)v15 setConfiguration:v67];
            v62 = v15;
            v61 = [(NEVPNManager *)v15 protocolConfiguration];
            if ([v61 type] == 2)
            {
              v53 = v61;
              v54 = v67;
              objc_opt_self();
              v16 = [NEL2TPUserPreferences createConnectionForConfiguration:v54];
              v17 = SCNetworkConnectionCopyAllUserPreferences();
              cf = SCNetworkConnectionCopyCurrentUserPreferences();
              CFRelease(v16);
              if (cf)
              {
                v18 = SCUserPreferencesGetUniqueID();
              }

              else
              {
                v18 = 0;
              }

              v19 = 0;
              if ([v17 count])
              {
                v20 = 0;
                while (1)
                {
                  v21 = [v17 objectAtIndexedSubscript:v20];

                  v22 = [NEL2TPUserPreferences alloc];
                  if (v22)
                  {
                    break;
                  }

                  v24 = 0;
                  if (v18)
                  {
                    goto LABEL_45;
                  }

LABEL_47:
                  if (!v19)
                  {
                    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  [v19 addObject:v24];

                  if (++v20 >= [v17 count])
                  {
                    goto LABEL_53;
                  }
                }

                v85.receiver = v22;
                v85.super_class = NEL2TPUserPreferences;
                v23 = objc_msgSendSuper2(&v85, sel_init);
                v24 = v23;
                if (v23)
                {
                  v23[5] = v21;
                  v25 = SCUserPreferencesCopyName();
                  v26 = v24[3];
                  v24[3] = v25;

                  v27 = v24[5];
                  v28 = SCUserPreferencesGetUniqueID();
                  v29 = v24[2];
                  v24[2] = v28;

                  CFRetain(v24[5]);
                  if (SCUserPreferencesIsForced())
                  {
                    *(v24 + 9) = 1;
                  }

                  v30 = SCUserPreferencesCopyInterfaceTypeConfiguration();
                  if (isa_nsdictionary(v30))
                  {
                    v31 = [v30 mutableCopy];
                    [v31 setObject:&unk_1F38BA460 forKeyedSubscript:@"__NEVPNKeychainDomain"];
                    v32 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v31];

                    v33 = [(NEVPNProtocolPPP *)[NEVPNProtocolL2TP alloc] initFromLegacyDictionary:v32];
                    if (v33)
                    {
                      v34 = SCUserPreferencesCopyInterfaceTypeConfiguration();
                      if (isa_nsdictionary(v34))
                      {
                        [v33 setIPSecSettingsFromLegacyDictionary:v34];
                      }
                    }

                    v35 = v24[4];
                    v24[4] = v33;
                  }

                  else
                  {
                    v32 = v30;
                  }

                  v36 = SCUserPreferencesCopyInterfaceTypeConfiguration();
                  if (isa_nsdictionary(v36))
                  {
                    v37 = [v36 objectForKeyedSubscript:@"TLSIdentityHandle"];
                    v38 = v24[4];
                    if (v38)
                    {
                      [v38 setIdentityReference:v37];
                    }
                  }
                }

                if (!v18)
                {
                  goto LABEL_47;
                }

LABEL_45:
                v39 = [(CFTypeRef *)v24 identifier];
                v40 = [v18 isEqualToString:v39];

                if (v40)
                {
                  [(CFTypeRef *)v24 setCurrent:1];
                }

                goto LABEL_47;
              }

LABEL_53:
              if (cf)
              {
                CFRelease(cf);
              }

              [v53 setUserPreferences:v19];
            }

            [v52 addObject:v62];
            v41 = +[NEVPNManager loadedManagers];
            v42 = [v67 identifier];
            [v41 setObject:v62 forKeyedSubscript:v42];

            if (v62)
            {
              v62->_hasLoaded = 1;
            }

            dispatch_group_enter(group);
            v43 = [(NEVPNManager *)v62 connection];
            v44 = [v67 identifier];
            v72[0] = MEMORY[0x1E69E9820];
            v72[1] = 3221225472;
            v72[2] = __60__NEVPNManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_76;
            v72[3] = &unk_1E7F0B198;
            v72[4] = v67;
            v74 = &v79;
            v73 = group;
            if (v43)
            {
              [(NEVPNConnection *)v43 createSessionWithConfigurationIdentifier:v44 forceInfoFetch:0 completionHandler:v72];
            }
          }
        }
      }

      v57 = [obj countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v57);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__NEVPNManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_77;
  block[3] = &unk_1E7F0B1C0;
  v71 = &v79;
  v69 = v52;
  v70 = *(v48 + 32);
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

LABEL_66:
  _Block_object_dispose(&v79, 8);

  objc_sync_exit(v49);
  v46 = *MEMORY[0x1E69E9840];
}

void __60__NEVPNManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_76(uint64_t a1, void *a2)
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

uint64_t __60__NEVPNManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_77(uint64_t a1)
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

+ (NEVPNManager)sharedManager
{
  if (sharedManager_vpn_init != -1)
  {
    dispatch_once(&sharedManager_vpn_init, &__block_literal_global_28_27269);
  }

  v3 = sharedManager_g_nevpn;

  return v3;
}

id __29__NEVPNManager_sharedManager__block_invoke()
{
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v0 = [NEVPNManager alloc];
  v1 = [[NEVPNConnection alloc] initWithType:?];
  v2 = [(NEVPNManager *)v0 initWithGrade:2 connection:v1 tunnelType:1];
  v3 = sharedManager_g_nevpn;
  sharedManager_g_nevpn = v2;

  return +[NEVPNManager loadedManagers];
}

+ (id)create
{
  v2 = [[NEVPNConnection alloc] initWithType:?];
  v3 = [[NEVPNManager alloc] initWithGrade:1 connection:v2 tunnelType:1];

  return v3;
}

@end