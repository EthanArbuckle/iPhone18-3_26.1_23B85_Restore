@interface NEFilterManager
+ (NEFilterManager)sharedManager;
+ (id)appConfigurationManager;
+ (id)globalConfigurationManager;
+ (void)loadAllFromPreferencesWithCompletionHandler:(id)a3;
+ (void)loadMyFiltersFromPreferencesWithCompletionHandler:(id)a3;
- (BOOL)disableEncryptedDNSSettings;
- (BOOL)isEnabled;
- (BOOL)isFromMDM;
- (BOOL)isFromProfile;
- (NEFilterManagerDelegate)delegate;
- (NEFilterManagerGrade)grade;
- (NEFilterProviderConfiguration)providerConfiguration;
- (NEProfileIngestionPayloadInfo)configurationPayloadInfo;
- (NSString)appBundleIdentifier;
- (NSString)localizedDescription;
- (NSUUID)identifier;
- (id)initPrivate;
- (id)initWithConfiguration:(void *)a3 configurationManager:;
- (void)createEmptyConfiguration;
- (void)dealloc;
- (void)fetchStatusWithCompletionHandler:(id)a3;
- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)setGrade:(NEFilterManagerGrade)grade;
- (void)setLocalizedDescription:(NSString *)localizedDescription;
- (void)setProviderConfiguration:(NEFilterProviderConfiguration *)providerConfiguration;
- (void)setupSessionWithCompletionHandler:(uint64_t)a1;
@end

@implementation NEFilterManager

- (NEFilterManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self)
  {
    connection = self->_connection;
  }

  else
  {
    connection = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__NEFilterManager_fetchStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7F0B110;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NEVPNConnection *)connection updateSessionInfoForce:0 notify:v7 withCompletionHandler:?];
}

uint64_t __52__NEFilterManager_fetchStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 status];
  if (v4 <= 5)
  {
    v5 = qword_1BAA4F9D8[v4];
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (NEProfileIngestionPayloadInfo)configurationPayloadInfo
{
  v2 = [(NEFilterManager *)self configuration];
  v3 = [v2 payloadInfo];

  return v3;
}

- (BOOL)isFromMDM
{
  if (![(NEFilterManager *)self isFromProfile])
  {
    return 0;
  }

  v3 = [(NEFilterManager *)self configuration];
  v4 = [v3 payloadInfo];
  v5 = [v4 profileSource] == 2;

  return v5;
}

- (BOOL)isFromProfile
{
  v2 = [(NEFilterManager *)self configuration];
  v3 = [v2 payloadInfo];
  v4 = v3 != 0;

  return v4;
}

- (NSString)appBundleIdentifier
{
  v2 = [(NEFilterManager *)self configuration];
  v3 = [v2 application];

  return v3;
}

- (NSUUID)identifier
{
  v2 = [(NEFilterManager *)self configuration];
  v3 = [v2 identifier];

  return v3;
}

- (void)setGrade:(NEFilterManagerGrade)grade
{
  obj = self;
  objc_sync_enter(obj);
  v4 = [(NEFilterManager *)obj configuration];
  v5 = [v4 contentFilter];
  [v5 setGrade:grade];

  objc_sync_exit(obj);
}

- (NEFilterManagerGrade)grade
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEFilterManager *)v2 configuration];
  v4 = [v3 contentFilter];
  v5 = [v4 grade];

  objc_sync_exit(v2);
  return v5;
}

- (void)setLocalizedDescription:(NSString *)localizedDescription
{
  v6 = localizedDescription;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NEFilterManager *)v4 configuration];
  [v5 setName:v6];

  objc_sync_exit(v4);
}

- (NSString)localizedDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEFilterManager *)v2 configuration];
  v4 = [v3 name];

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)disableEncryptedDNSSettings
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEFilterManager *)v2 configuration];
  v4 = [v3 contentFilter];
  v5 = [v4 disableEncryptedDNSSettings];

  objc_sync_exit(v2);
  return v5;
}

- (BOOL)isEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEFilterManager *)v2 configuration];
  v4 = [v3 contentFilter];
  v5 = [v4 isEnabled];

  objc_sync_exit(v2);
  return v5;
}

- (void)setProviderConfiguration:(NEFilterProviderConfiguration *)providerConfiguration
{
  v7 = providerConfiguration;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NEFilterManager *)v4 configuration];
  v6 = [v5 contentFilter];
  [v6 setProvider:v7];

  objc_sync_exit(v4);
}

- (NEFilterProviderConfiguration)providerConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEFilterManager *)v2 configuration];
  v4 = [v3 contentFilter];
  v5 = [v4 provider];

  objc_sync_exit(v2);

  return v5;
}

- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = self;
  objc_sync_enter(v5);
  if (v5 && v5->_hasLoaded)
  {
    v6 = [(NEFilterManager *)v5 providerConfiguration];

    if (v6)
    {
      v7 = [(NEFilterManager *)v5 providerConfiguration];
      v8 = [v7 filterSockets];

      if (v8)
      {
        v9 = [(NEFilterManager *)v5 providerConfiguration];
        v10 = [v9 filterDataProviderBundleIdentifier];

        v11 = [(NEFilterManager *)v5 providerConfiguration];
        v12 = [v11 dataProviderURL];
        objc_opt_self();
        v13 = v10;

        v14 = [(NEFilterManager *)v5 providerConfiguration];
        [v14 setFilterDataProviderBundleIdentifier:v13];

        v15 = [(NEFilterManager *)v5 configuration];
        if (v15)
        {
          v15[22] = 0;
        }
      }

      v16 = [(NEFilterManager *)v5 providerConfiguration];
      v17 = [v16 filterPackets];

      if (v17)
      {
        v19 = [(NEFilterManager *)v5 providerConfiguration];
        v20 = [v19 filterPacketProviderBundleIdentifier];

        v21 = [(NEFilterManager *)v5 providerConfiguration];
        v22 = [v21 packetProviderURL];
        objc_opt_self();
        v23 = v20;

        v24 = [(NEFilterManager *)v5 providerConfiguration];
        [v24 setFilterPacketProviderBundleIdentifier:v23];

        v25 = [(NEFilterManager *)v5 configuration];
        if (!v25 || (v26 = v25[22], v25, !v26))
        {
          v27 = [(NEFilterManager *)v5 configuration];
          if (v27)
          {
            v27[22] = 0;
          }
        }
      }

      v28 = objc_getProperty(v5, v18, 16, 1);
      v29 = [v28 pluginType];

      if (v29)
      {
        v31 = objc_getProperty(v5, v30, 16, 1);
        v32 = [v31 pluginType];
        v33 = [(NEFilterManager *)v5 providerConfiguration];
        [v33 setPluginType:v32];
      }

      v34 = objc_getProperty(v5, v30, 16, 1);
      v35 = [(NEFilterManager *)v5 configuration];
      v36 = MEMORY[0x1E69E96A0];
      v37 = MEMORY[0x1E69E96A0];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __58__NEFilterManager_saveToPreferencesWithCompletionHandler___block_invoke_3;
      v41[3] = &unk_1E7F097A8;
      v42 = v4;
      [v34 saveConfiguration:v35 withCompletionQueue:v36 handler:v41];
      v38 = &v42;

      goto LABEL_23;
    }

    if (v4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__NEFilterManager_saveToPreferencesWithCompletionHandler___block_invoke_2;
      block[3] = &unk_1E7F0B600;
      v38 = &v44;
      v44 = v4;
      v39 = MEMORY[0x1E69E96A0];
      v40 = block;
      goto LABEL_22;
    }
  }

  else if (v4)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __58__NEFilterManager_saveToPreferencesWithCompletionHandler___block_invoke;
    v45[3] = &unk_1E7F0B600;
    v38 = &v46;
    v46 = v4;
    v39 = MEMORY[0x1E69E96A0];
    v40 = v45;
LABEL_22:
    dispatch_async(v39, v40);
LABEL_23:
  }

  objc_sync_exit(v5);
}

void __58__NEFilterManager_saveToPreferencesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEFilterErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __58__NEFilterManager_saveToPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEFilterErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __58__NEFilterManager_saveToPreferencesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = NEFilterMapError(v3);

    if (v5)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[NEFilterManager saveToPreferencesWithCompletionHandler:]_block_invoke_3";
        v14 = 2112;
        v15 = v5;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%s: failed to save the new configuration: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__NEFilterManager_saveToPreferencesWithCompletionHandler___block_invoke_43;
    v9[3] = &unk_1E7F0B588;
    v11 = v7;
    v10 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NEFilterManager *)v5 configuration];

  if (v6)
  {
    v7 = [(NEFilterManager *)v5 configuration];
    v8 = [v7 payloadInfo];

    if (!v8)
    {
      if (v5)
      {
        Property = objc_getProperty(v5, v9, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v14 = Property;
      v15 = [(NEFilterManager *)v5 configuration];
      v16 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __62__NEFilterManager_removeFromPreferencesWithCompletionHandler___block_invoke_3;
      v18[3] = &unk_1E7F097A8;
      v19 = v4;
      [v14 removeConfiguration:v15 withCompletionQueue:v16 handler:v18];
      v10 = &v19;

      goto LABEL_11;
    }

    if (v4)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__NEFilterManager_removeFromPreferencesWithCompletionHandler___block_invoke_2;
      v20[3] = &unk_1E7F0B600;
      v10 = &v21;
      v21 = v4;
      v11 = MEMORY[0x1E69E96A0];
      v12 = v20;
LABEL_7:
      dispatch_async(v11, v12);
LABEL_11:
    }
  }

  else if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__NEFilterManager_removeFromPreferencesWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v10 = &v23;
    v23 = v4;
    v11 = MEMORY[0x1E69E96A0];
    v12 = block;
    goto LABEL_7;
  }

  objc_sync_exit(v5);
}

void __62__NEFilterManager_removeFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEFilterErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __62__NEFilterManager_removeFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEFilterErrorDomain" code:4 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __62__NEFilterManager_removeFromPreferencesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = NEFilterMapError(v3);

    if (v5)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[NEFilterManager removeFromPreferencesWithCompletionHandler:]_block_invoke_3";
        v14 = 2112;
        v15 = v5;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%s: failed to remove the configuration: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__NEFilterManager_removeFromPreferencesWithCompletionHandler___block_invoke_35;
    v9[3] = &unk_1E7F0B588;
    v11 = v7;
    v10 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    if (v5)
    {
      Property = objc_getProperty(v5, v6, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__NEFilterManager_loadFromPreferencesWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E7F0B5B0;
    v11[4] = v5;
    v12 = v4;
    [v8 loadConfigurationsWithCompletionQueue:v9 handler:v11];

    objc_sync_exit(v5);
  }
}

void __60__NEFilterManager_loadFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v6)
  {
    v8 = NEFilterMapError(v6);

    goto LABEL_23;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v10)
  {

LABEL_19:
    [(NEFilterManager *)*(a1 + 32) createEmptyConfiguration];
    v11 = 0;
    goto LABEL_20;
  }

  v11 = 0;
  v12 = *v27;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v26 + 1) + 8 * i);
      v15 = [v14 contentFilter];
      v16 = v15 == 0;

      if (!v16)
      {
        v17 = [v14 payloadInfo];
        v18 = v17 == 0;

        if (!v18)
        {
          v19 = v14;

          v11 = v19;
          goto LABEL_16;
        }

        if (!v11)
        {
          v11 = v14;
        }
      }
    }

    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_16:

  if (!v11)
  {
    goto LABEL_19;
  }

  [*(a1 + 32) setConfiguration:v11];
LABEL_20:
  v20 = *(a1 + 32);
  if (v20)
  {
    *(v20 + 8) = 1;
  }

  v8 = 0;
LABEL_23:
  v21 = *(a1 + 40);
  if (v21)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__NEFilterManager_loadFromPreferencesWithCompletionHandler___block_invoke_2;
    v23[3] = &unk_1E7F0B588;
    v25 = v21;
    v24 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v23);
  }

  objc_sync_exit(v7);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)createEmptyConfiguration
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 infoDictionary];
    v12 = [v3 objectForKey:*MEMORY[0x1E695E120]];

    if (!v12)
    {
      v4 = [MEMORY[0x1E696AAE8] mainBundle];
      v12 = [v4 bundleIdentifier];
    }

    v5 = [[NEConfiguration alloc] initWithName:v12 grade:1];
    [a1 setConfiguration:v5];

    v6 = objc_alloc_init(NEContentFilter);
    v7 = [a1 configuration];
    [v7 setContentFilter:v6];

    v9 = [objc_getProperty(a1 v8];
    v10 = [a1 configuration];
    [v10 setApplication:v9];

    v11 = [a1 configuration];
    [v11 setApplicationName:v12];
  }
}

- (id)initPrivate
{
  v6.receiver = self;
  v6.super_class = NEFilterManager;
  v2 = [(NEFilterManager *)&v6 init];
  if (v2)
  {
    v3 = +[NEFilterManager appConfigurationManager];
    configurationManager = v2->_configurationManager;
    v2->_configurationManager = v3;

    [(NEFilterManager *)v2 createEmptyConfiguration];
    v2->_hasLoaded = 1;
  }

  return v2;
}

+ (id)appConfigurationManager
{
  objc_opt_self();
  if (appConfigurationManager_onceToken != -1)
  {
    dispatch_once(&appConfigurationManager_onceToken, &__block_literal_global_23);
  }

  v0 = appConfigurationManager_gAppConfgurationManager;

  return v0;
}

void __42__NEFilterManager_appConfigurationManager__block_invoke()
{
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v0 bundleIdentifier];

  v1 = dispatch_queue_create("filter config app manager change queue", 0);
  v2 = appConfigurationManager_gChangeQueue;
  appConfigurationManager_gChangeQueue = v1;

  v3 = [[NEConfigurationManager alloc] initWithPluginType:v5];
  v4 = appConfigurationManager_gAppConfgurationManager;
  appConfigurationManager_gAppConfgurationManager = v3;

  [appConfigurationManager_gAppConfgurationManager setChangedQueue:appConfigurationManager_gChangeQueue andHandler:&__block_literal_global_26];
}

void __42__NEFilterManager_appConfigurationManager__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.networkextension.filter-configuration-changed" object:0];
}

- (void)dealloc
{
  if (self && self->_statusObserver)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = self->_statusObserver;
    [v3 removeObserver:v4 name:@"com.apple.networkextension.statuschanged" object:self->_connection];
  }

  v5.receiver = self;
  v5.super_class = NEFilterManager;
  [(NEFilterManager *)&v5 dealloc];
}

+ (void)loadMyFiltersFromPreferencesWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[NEFilterManager appConfigurationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__NEFilterManager_loadMyFiltersFromPreferencesWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7F0B510;
  v7 = v3;
  v5 = v3;
  [v4 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v6];
}

void __69__NEFilterManager_loadMyFiltersFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = dispatch_group_create();
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v22 = a1;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 contentFilter];

            if (v15)
            {
              dispatch_group_enter(v6);
              v16 = [NEFilterManager alloc];
              v17 = +[NEFilterManager appConfigurationManager];
              v18 = [(NEFilterManager *)&v16->super.isa initWithConfiguration:v14 configurationManager:v17];

              if (v18)
              {
                *(v18 + 8) = 1;
              }

              v27[0] = MEMORY[0x1E69E9820];
              v27[1] = 3221225472;
              v27[2] = __69__NEFilterManager_loadMyFiltersFromPreferencesWithCompletionHandler___block_invoke_2;
              v27[3] = &unk_1E7F09758;
              v27[4] = v14;
              v28 = v6;
              [(NEFilterManager *)v18 setupSessionWithCompletionHandler:v27];
              [v23 addObject:v18];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__NEFilterManager_loadMyFiltersFromPreferencesWithCompletionHandler___block_invoke_31;
    block[3] = &unk_1E7F0B588;
    v19 = *(v22 + 32);
    v25 = v23;
    v26 = v19;
    v20 = v23;
    dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)initWithConfiguration:(void *)a3 configurationManager:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = NEFilterManager;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 5, a2);
      objc_storeStrong(a1 + 2, a3);
      v9 = [[NEVPNConnection alloc] initWithType:?];
      v10 = a1[3];
      a1[3] = v9;
    }
  }

  return a1;
}

void __69__NEFilterManager_loadMyFiltersFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) name];
      v7 = [*(a1 + 32) identifier];
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Failed to create a content filter session for configuration %@ (%@): %@", &v8, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setupSessionWithCompletionHandler:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *(a1 + 24);
    v6 = [MEMORY[0x1E696ADC8] mainQueue];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __53__NEFilterManager_setupSessionWithCompletionHandler___block_invoke;
    v15 = &unk_1E7F09780;
    objc_copyWeak(&v16, &location);
    v7 = [v4 addObserverForName:@"com.apple.networkextension.statuschanged" object:v5 queue:v6 usingBlock:&v12];
    v8 = *(a1 + 32);
    *(a1 + 32) = v7;

    v9 = *(a1 + 24);
    v10 = [a1 configuration];
    v11 = [v10 identifier];
    if (v9)
    {
      [(NEVPNConnection *)v9 createSessionWithConfigurationIdentifier:v11 forceInfoFetch:0 completionHandler:v3];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __69__NEFilterManager_loadMyFiltersFromPreferencesWithCompletionHandler___block_invoke_31(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void __53__NEFilterManager_setupSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = v2;
    if (v2)
    {
      [v2 filterStatusDidChange:v4];
    }

    WeakRetained = v4;
  }
}

+ (void)loadAllFromPreferencesWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[NEFilterManager globalConfigurationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__NEFilterManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7F0B510;
  v7 = v3;
  v5 = v3;
  [v4 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v6];
}

+ (id)globalConfigurationManager
{
  objc_opt_self();
  if (globalConfigurationManager_onceToken_5577 != -1)
  {
    dispatch_once(&globalConfigurationManager_onceToken_5577, &__block_literal_global_18);
  }

  v0 = globalConfigurationManager_gConfigurationManager_5578;

  return v0;
}

void __63__NEFilterManager_loadAllFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = dispatch_group_create();
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v22 = a1;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 contentFilter];

            if (v15)
            {
              dispatch_group_enter(v6);
              v16 = [NEFilterManager alloc];
              v17 = +[NEFilterManager globalConfigurationManager];
              v18 = [(NEFilterManager *)&v16->super.isa initWithConfiguration:v14 configurationManager:v17];

              if (v18)
              {
                *(v18 + 8) = 1;
              }

              v27[0] = MEMORY[0x1E69E9820];
              v27[1] = 3221225472;
              v27[2] = __63__NEFilterManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_2;
              v27[3] = &unk_1E7F09758;
              v27[4] = v14;
              v28 = v6;
              [(NEFilterManager *)v18 setupSessionWithCompletionHandler:v27];
              [v23 addObject:v18];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v11);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__NEFilterManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_29;
    block[3] = &unk_1E7F0B588;
    v19 = *(v22 + 32);
    v25 = v23;
    v26 = v19;
    v20 = v23;
    dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __63__NEFilterManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) name];
      v7 = [*(a1 + 32) identifier];
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Failed to create a content filter session for configuration %@ (%@): %@", &v8, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v5 = *MEMORY[0x1E69E9840];
}

void __63__NEFilterManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_29(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

uint64_t __45__NEFilterManager_globalConfigurationManager__block_invoke()
{
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("filter config manager change queue", v0);
  v2 = globalConfigurationManager_gChangeQueue_5580;
  globalConfigurationManager_gChangeQueue_5580 = v1;

  v3 = [[NEConfigurationManager alloc] initForAllUsers];
  v4 = globalConfigurationManager_gConfigurationManager_5578;
  globalConfigurationManager_gConfigurationManager_5578 = v3;

  v5 = globalConfigurationManager_gConfigurationManager_5578;
  v6 = globalConfigurationManager_gChangeQueue_5580;

  return [v5 setChangedQueue:v6 andHandler:&__block_literal_global_21];
}

void __45__NEFilterManager_globalConfigurationManager__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.networkextension.filter-configuration-changed" object:0];
}

+ (NEFilterManager)sharedManager
{
  if (sharedManager_onceToken_5581 != -1)
  {
    dispatch_once(&sharedManager_onceToken_5581, &__block_literal_global_5582);
  }

  v3 = sharedManager_gFilterManager;

  return v3;
}

void __32__NEFilterManager_sharedManager__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v0 bundleIdentifier];

  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v1 = v10;
  if (v10)
  {
    v2 = [NEFilterManager alloc];
    v3 = v10;
    if (v2)
    {
      v14.receiver = v2;
      v14.super_class = NEFilterManager;
      v2 = objc_msgSendSuper2(&v14, sel_init);
      if (v2)
      {
        objc_initWeak(&location, v2);
        v4 = [[NEConfigurationManager alloc] initWithPluginType:v3];
        configurationManager = v2->_configurationManager;
        v2->_configurationManager = v4;

        v6 = v2->_configurationManager;
        v7 = MEMORY[0x1E69E96A0];
        v8 = MEMORY[0x1E69E96A0];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __51__NEFilterManager_initFilterManagerWithPluginType___block_invoke;
        v11[3] = &unk_1E7F0ABE0;
        objc_copyWeak(&v12, &location);
        [(NEConfigurationManager *)v6 setChangedQueue:v7 andHandler:v11];

        [(NEFilterManager *)v2 createEmptyConfiguration];
        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }

    v9 = sharedManager_gFilterManager;
    sharedManager_gFilterManager = v2;

    v1 = v10;
  }
}

void __51__NEFilterManager_initFilterManagerWithPluginType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__NEFilterManager_initFilterManagerWithPluginType___block_invoke_2;
  v5[3] = &unk_1E7F0A2A0;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained loadFromPreferencesWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
}

void __51__NEFilterManager_initFilterManagerWithPluginType___block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"com.apple.networkextension.filter-configuration-changed" object:WeakRetained];
}

@end