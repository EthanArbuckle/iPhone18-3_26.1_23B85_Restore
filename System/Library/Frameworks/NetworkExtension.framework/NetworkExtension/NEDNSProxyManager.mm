@interface NEDNSProxyManager
+ (NEDNSProxyManager)sharedManager;
+ (id)globalConfigurationManager;
+ (void)loadAllFromPreferencesWithCompletionHandler:(id)handler;
- (BOOL)isEnabled;
- (BOOL)isFromMDM;
- (BOOL)isFromProfile;
- (NEDNSProxyManager)init;
- (NEDNSProxyManagerDelegate)delegate;
- (NEDNSProxyProviderProtocol)providerProtocol;
- (NEProfileIngestionPayloadInfo)configurationPayloadInfo;
- (NSString)appBundleIdentifier;
- (NSString)localizedDescription;
- (NSUUID)identifier;
- (void)createEmptyConfiguration;
- (void)dealloc;
- (void)fetchStatusWithCompletionHandler:(id)handler;
- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)setLocalizedDescription:(NSString *)localizedDescription;
- (void)setProviderProtocol:(NEDNSProxyProviderProtocol *)providerProtocol;
@end

@implementation NEDNSProxyManager

- (NEDNSProxyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v7[2] = __54__NEDNSProxyManager_fetchStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7F0B110;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NEVPNConnection *)connection updateSessionInfoForce:0 notify:v7 withCompletionHandler:?];
}

uint64_t __54__NEDNSProxyManager_fetchStatusWithCompletionHandler___block_invoke(uint64_t a1)
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
  configuration = [(NEDNSProxyManager *)self configuration];
  payloadInfo = [configuration payloadInfo];

  return payloadInfo;
}

- (BOOL)isFromMDM
{
  if (![(NEDNSProxyManager *)self isFromProfile])
  {
    return 0;
  }

  configuration = [(NEDNSProxyManager *)self configuration];
  payloadInfo = [configuration payloadInfo];
  v5 = [payloadInfo profileSource] == 2;

  return v5;
}

- (BOOL)isFromProfile
{
  configuration = [(NEDNSProxyManager *)self configuration];
  payloadInfo = [configuration payloadInfo];
  v4 = payloadInfo != 0;

  return v4;
}

- (NSString)appBundleIdentifier
{
  configuration = [(NEDNSProxyManager *)self configuration];
  application = [configuration application];

  return application;
}

- (NSUUID)identifier
{
  configuration = [(NEDNSProxyManager *)self configuration];
  identifier = [configuration identifier];

  return identifier;
}

- (void)setLocalizedDescription:(NSString *)localizedDescription
{
  v6 = localizedDescription;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = [(NEDNSProxyManager *)selfCopy configuration];
  [configuration setName:v6];

  objc_sync_exit(selfCopy);
}

- (NSString)localizedDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = [(NEDNSProxyManager *)selfCopy configuration];
  name = [configuration name];

  objc_sync_exit(selfCopy);

  return name;
}

- (BOOL)isEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = [(NEDNSProxyManager *)selfCopy configuration];
  dnsProxy = [configuration dnsProxy];
  isEnabled = [dnsProxy isEnabled];

  objc_sync_exit(selfCopy);
  return isEnabled;
}

- (void)setProviderProtocol:(NEDNSProxyProviderProtocol *)providerProtocol
{
  v7 = providerProtocol;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = [(NEDNSProxyManager *)selfCopy configuration];
  dnsProxy = [configuration dnsProxy];
  [dnsProxy setProtocol:v7];

  objc_sync_exit(selfCopy);
}

- (NEDNSProxyProviderProtocol)providerProtocol
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = [(NEDNSProxyManager *)selfCopy configuration];
  dnsProxy = [configuration dnsProxy];
  protocol = [dnsProxy protocol];

  objc_sync_exit(selfCopy);

  return protocol;
}

- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasLoaded)
  {
    providerProtocol = [(NEDNSProxyManager *)selfCopy providerProtocol];

    if (providerProtocol)
    {
      providerProtocol2 = [(NEDNSProxyManager *)selfCopy providerProtocol];
      providerBundleIdentifier = [providerProtocol2 providerBundleIdentifier];

      objc_opt_self();
      v9 = providerBundleIdentifier;

      providerProtocol3 = [(NEDNSProxyManager *)selfCopy providerProtocol];
      [providerProtocol3 setProviderBundleIdentifier:v9];

      v12 = objc_getProperty(selfCopy, v11, 16, 1);
      pluginType = [v12 pluginType];

      if (pluginType)
      {
        v15 = objc_getProperty(selfCopy, v14, 16, 1);
        pluginType2 = [v15 pluginType];
        providerProtocol4 = [(NEDNSProxyManager *)selfCopy providerProtocol];
        [providerProtocol4 setPluginType:pluginType2];
      }

      configuration = [(NEDNSProxyManager *)selfCopy configuration];
      if (configuration)
      {
        configuration[22] = 0;
      }

      v20 = objc_getProperty(selfCopy, v19, 16, 1);
      configuration2 = [(NEDNSProxyManager *)selfCopy configuration];
      v22 = MEMORY[0x1E69E96A0];
      v23 = MEMORY[0x1E69E96A0];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __60__NEDNSProxyManager_saveToPreferencesWithCompletionHandler___block_invoke_3;
      v24[3] = &unk_1E7F097A8;
      v25 = v4;
      [v20 saveConfiguration:configuration2 withCompletionQueue:v22 handler:v24];

      goto LABEL_13;
    }

    if (v4)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __60__NEDNSProxyManager_saveToPreferencesWithCompletionHandler___block_invoke_2;
      v26[3] = &unk_1E7F0B600;
      v27 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v26);
      v9 = v27;
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__NEDNSProxyManager_saveToPreferencesWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v29 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v9 = v29;
LABEL_13:
  }

  objc_sync_exit(selfCopy);
}

void __60__NEDNSProxyManager_saveToPreferencesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEDNSProxyErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __60__NEDNSProxyManager_saveToPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEDNSProxyErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __60__NEDNSProxyManager_saveToPreferencesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 9)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[NEDNSProxyManager saveToPreferencesWithCompletionHandler:]_block_invoke_3";
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%s: failed to save the new configuration: %@", buf, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__NEDNSProxyManager_saveToPreferencesWithCompletionHandler___block_invoke_33;
    v8[3] = &unk_1E7F0B588;
    v10 = v6;
    v9 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __60__NEDNSProxyManager_saveToPreferencesWithCompletionHandler___block_invoke_33(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = NEDNSProxyMapError(*(a1 + 32));
  (*(v1 + 16))(v1, v2);
}

- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuration = [(NEDNSProxyManager *)selfCopy configuration];

  if (configuration)
  {
    configuration2 = [(NEDNSProxyManager *)selfCopy configuration];
    payloadInfo = [configuration2 payloadInfo];

    if (!payloadInfo)
    {
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v9, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v14 = Property;
      configuration3 = [(NEDNSProxyManager *)selfCopy configuration];
      v16 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __64__NEDNSProxyManager_removeFromPreferencesWithCompletionHandler___block_invoke_3;
      v18[3] = &unk_1E7F097A8;
      v19 = v4;
      [v14 removeConfiguration:configuration3 withCompletionQueue:v16 handler:v18];
      v10 = &v19;

      goto LABEL_11;
    }

    if (v4)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __64__NEDNSProxyManager_removeFromPreferencesWithCompletionHandler___block_invoke_2;
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
    block[2] = __64__NEDNSProxyManager_removeFromPreferencesWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v10 = &v23;
    v23 = v4;
    v11 = MEMORY[0x1E69E96A0];
    v12 = block;
    goto LABEL_7;
  }

  objc_sync_exit(selfCopy);
}

void __64__NEDNSProxyManager_removeFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEDNSProxyErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __64__NEDNSProxyManager_removeFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEDNSProxyErrorDomain" code:4 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __64__NEDNSProxyManager_removeFromPreferencesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[NEDNSProxyManager removeFromPreferencesWithCompletionHandler:]_block_invoke_3";
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%s: failed to remove the configuration: %@", buf, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__NEDNSProxyManager_removeFromPreferencesWithCompletionHandler___block_invoke_28;
    v7[3] = &unk_1E7F0B588;
    v9 = v5;
    v8 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __64__NEDNSProxyManager_removeFromPreferencesWithCompletionHandler___block_invoke_28(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = NEDNSProxyMapError(*(a1 + 32));
  (*(v1 + 16))(v1, v2);
}

- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v6, 16, 1);
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
    v11[2] = __62__NEDNSProxyManager_loadFromPreferencesWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E7F0B5B0;
    v11[4] = selfCopy;
    v12 = v4;
    [v8 loadConfigurationsWithCompletionQueue:v9 handler:v11];

    objc_sync_exit(selfCopy);
  }
}

void __62__NEDNSProxyManager_loadFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    goto LABEL_22;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v21;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v8)
  {

LABEL_18:
    [(NEDNSProxyManager *)*(a1 + 32) createEmptyConfiguration];
    v9 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v26;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v25 + 1) + 8 * i);
      v13 = [v12 dnsProxy];
      v14 = v13 == 0;

      if (!v14)
      {
        v15 = [v12 payloadInfo];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = v12;

          v9 = v17;
          goto LABEL_15;
        }

        if (!v9)
        {
          v9 = v12;
        }
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_15:

  if (!v9)
  {
    goto LABEL_18;
  }

  [*(a1 + 32) setConfiguration:v9];
LABEL_19:
  v18 = *(a1 + 32);
  if (v18)
  {
    *(v18 + 8) = 1;
  }

LABEL_22:
  v19 = *(a1 + 40);
  if (v19)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__NEDNSProxyManager_loadFromPreferencesWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0B588;
    v24 = v19;
    v23 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_sync_exit(v6);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)createEmptyConfiguration
{
  if (self)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    bundleIdentifier = [infoDictionary objectForKey:*MEMORY[0x1E695E120]];

    if (!bundleIdentifier)
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle2 bundleIdentifier];
    }

    v5 = [[NEConfiguration alloc] initWithName:bundleIdentifier grade:1];
    [self setConfiguration:v5];

    v6 = objc_alloc_init(NEDNSProxy);
    configuration = [self configuration];
    [configuration setDnsProxy:v6];

    v8 = [NEDNSProxyProviderProtocol alloc];
    v10 = [objc_getProperty(self v9];
    v11 = [(NEDNSProxyProviderProtocol *)v8 initWithPluginType:v10];
    configuration2 = [self configuration];
    dnsProxy = [configuration2 dnsProxy];
    [dnsProxy setProtocol:v11];

    v15 = [objc_getProperty(self v14];
    configuration3 = [self configuration];
    [configuration3 setApplication:v15];

    configuration4 = [self configuration];
    [configuration4 setApplicationName:bundleIdentifier];
  }
}

void __62__NEDNSProxyManager_loadFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = NEDNSProxyMapError(*(a1 + 32));
  (*(v1 + 16))(v1, v2);
}

- (void)dealloc
{
  if (self && self->_statusObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = self->_statusObserver;
    [defaultCenter removeObserver:v4 name:@"com.apple.networkextension.statuschanged" object:self->_connection];
  }

  v5.receiver = self;
  v5.super_class = NEDNSProxyManager;
  [(NEDNSProxyManager *)&v5 dealloc];
}

- (NEDNSProxyManager)init
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "MDM must be used to create NEDNSProxyProvider configurations", v5, 2u);
  }

  return 0;
}

+ (void)loadAllFromPreferencesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v4 = +[NEDNSProxyManager globalConfigurationManager];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__NEDNSProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
    v5[3] = &unk_1E7F0B510;
    v6 = handlerCopy;
    [v4 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v5];
  }
}

+ (id)globalConfigurationManager
{
  objc_opt_self();
  if (globalConfigurationManager_onceToken != -1)
  {
    dispatch_once(&globalConfigurationManager_onceToken, &__block_literal_global_17);
  }

  v0 = globalConfigurationManager_gConfigurationManager;

  return v0;
}

void __65__NEDNSProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = dispatch_group_create();
  v36 = v5;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v35 = a1;
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v9)
    {
      v10 = *v45;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v44 + 1) + 8 * i);
          if (v12)
          {
            v13 = [*(*(&v44 + 1) + 8 * i) dnsProxy];
            v14 = v13 == 0;

            if (!v14)
            {
              dispatch_group_enter(v6);
              v15 = [NEDNSProxyManager alloc];
              v16 = v12;
              if (v15 && (v48.receiver = v15, v48.super_class = NEDNSProxyManager, v17 = objc_msgSendSuper2(&v48, sel_init), (v18 = v17) != 0))
              {
                objc_storeStrong(v17 + 5, v12);
                v19 = +[NEDNSProxyManager globalConfigurationManager];
                v20 = v18[2];
                v18[2] = v19;

                v21 = [[NEVPNConnection alloc] initWithType:?];
                v22 = v18[3];
                v18[3] = v21;

                *(v18 + 8) = 1;
              }

              else
              {

                v18 = 0;
              }

              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __65__NEDNSProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_2;
              v42[3] = &unk_1E7F09758;
              v42[4] = v16;
              v43 = v6;
              v23 = v42;
              if (v18)
              {
                objc_initWeak(&location, v18);
                v24 = [MEMORY[0x1E696AD88] defaultCenter];
                v25 = v18[3];
                v26 = [MEMORY[0x1E696ADC8] mainQueue];
                v48.receiver = MEMORY[0x1E69E9820];
                v48.super_class = 3221225472;
                v49 = __55__NEDNSProxyManager_setupSessionWithCompletionHandler___block_invoke;
                v50 = &unk_1E7F09780;
                objc_copyWeak(&v51, &location);
                v27 = [v24 addObserverForName:@"com.apple.networkextension.statuschanged" object:v25 queue:v26 usingBlock:&v48];
                v28 = v18[4];
                v18[4] = v27;

                v29 = v18[3];
                v30 = [v18 configuration];
                v31 = [v30 identifier];
                if (v29)
                {
                  [(NEVPNConnection *)v29 createSessionWithConfigurationIdentifier:v31 forceInfoFetch:0 completionHandler:v23];
                }

                objc_destroyWeak(&v51);
                objc_destroyWeak(&location);
              }

              [v38 addObject:v18];
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v9);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NEDNSProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_23;
    block[3] = &unk_1E7F0B588;
    v32 = *(v35 + 32);
    v40 = v38;
    v41 = v32;
    v33 = v38;
    dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __65__NEDNSProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
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
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Failed to create a DNS proxy session for configuration %@ (%@): %@", &v8, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v5 = *MEMORY[0x1E69E9840];
}

void __65__NEDNSProxyManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void __55__NEDNSProxyManager_setupSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = v2;
    if (v2)
    {
      [v2 dnsProxyStatusDidChange:v4];
    }

    WeakRetained = v4;
  }
}

uint64_t __47__NEDNSProxyManager_globalConfigurationManager__block_invoke()
{
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("dns proxy config manager change queue", v0);
  v2 = globalConfigurationManager_gChangeQueue;
  globalConfigurationManager_gChangeQueue = v1;

  v3 = [[NEConfigurationManager alloc] initForAllUsers];
  v4 = globalConfigurationManager_gConfigurationManager;
  globalConfigurationManager_gConfigurationManager = v3;

  v5 = globalConfigurationManager_gConfigurationManager;
  v6 = globalConfigurationManager_gChangeQueue;

  return [v5 setChangedQueue:v6 andHandler:&__block_literal_global_20];
}

void __47__NEDNSProxyManager_globalConfigurationManager__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.networkextension.dns-proxy-configuration-changed" object:0];
}

+ (NEDNSProxyManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_1422);
  }

  v2 = sharedManager_gDNSProxyManager;
  if (sharedManager_gDNSProxyManager)
  {
    v3 = sharedManager_gDNSProxyManager;
  }

  return v2;
}

void __34__NEDNSProxyManager_sharedManager__block_invoke()
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
    v2 = [NEDNSProxyManager alloc];
    v3 = v10;
    if (v2)
    {
      v14.receiver = v2;
      v14.super_class = NEDNSProxyManager;
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
        v11[2] = __55__NEDNSProxyManager_initDNSProxyManagerWithPluginType___block_invoke;
        v11[3] = &unk_1E7F0ABE0;
        objc_copyWeak(&v12, &location);
        [(NEConfigurationManager *)v6 setChangedQueue:v7 andHandler:v11];

        [(NEDNSProxyManager *)v2 createEmptyConfiguration];
        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }

    v9 = sharedManager_gDNSProxyManager;
    sharedManager_gDNSProxyManager = v2;

    v1 = v10;
  }
}

void __55__NEDNSProxyManager_initDNSProxyManagerWithPluginType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__NEDNSProxyManager_initDNSProxyManagerWithPluginType___block_invoke_2;
  v5[3] = &unk_1E7F0A2A0;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained loadFromPreferencesWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
}

void __55__NEDNSProxyManager_initDNSProxyManagerWithPluginType___block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"com.apple.networkextension.dns-proxy-configuration-changed" object:WeakRetained];
}

@end