@interface NEDNSSettingsManager
+ (NEDNSSettingsManager)sharedManager;
+ (id)globalConfigurationManager;
+ (void)loadAllFromPreferencesWithCompletionHandler:(id)handler;
- (BOOL)isConfigurationGradeEnterprise;
- (BOOL)isEnabled;
- (BOOL)isFromProfile;
- (NEDNSSettings)dnsSettings;
- (NEDNSSettingsManagerDelegate)delegate;
- (NEProfileIngestionPayloadInfo)configurationPayloadInfo;
- (NSArray)onDemandRules;
- (NSString)appBundleIdentifier;
- (NSString)localizedDescription;
- (NSUUID)identifier;
- (void)createEmptyConfigurationWithGrade:(void *)grade;
- (void)fetchStatusWithCompletionHandler:(id)handler;
- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)setDnsSettings:(NEDNSSettings *)dnsSettings;
- (void)setLocalizedDescription:(NSString *)localizedDescription;
- (void)setOnDemandRules:(NSArray *)onDemandRules;
@end

@implementation NEDNSSettingsManager

- (NEDNSSettingsManagerDelegate)delegate
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
  v7[2] = __57__NEDNSSettingsManager_fetchStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7F0B110;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(NEVPNConnection *)connection updateSessionInfoForce:0 notify:v7 withCompletionHandler:?];
}

uint64_t __57__NEDNSSettingsManager_fetchStatusWithCompletionHandler___block_invoke(uint64_t a1)
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

- (BOOL)isConfigurationGradeEnterprise
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
  }

  return [(NEDNSSettingsManager *)self grade]== 1;
}

- (NEProfileIngestionPayloadInfo)configurationPayloadInfo
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return [(NEDNSSettingsManager *)self payloadInfo];
}

- (BOOL)isFromProfile
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
  }

  payloadInfo = [(NEDNSSettingsManager *)self payloadInfo];
  v3 = payloadInfo != 0;

  return v3;
}

- (NSString)appBundleIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return [(NEDNSSettingsManager *)self application];
}

- (NSUUID)identifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return [(NEDNSSettingsManager *)self identifier];
}

- (void)setLocalizedDescription:(NSString *)localizedDescription
{
  v8 = localizedDescription;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v5, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  [v7 setName:v8];

  objc_sync_exit(selfCopy);
}

- (NSString)localizedDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  name = [v5 name];

  objc_sync_exit(selfCopy);

  return name;
}

- (void)setOnDemandRules:(NSArray *)onDemandRules
{
  v9 = onDemandRules;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v5, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  dnsSettings = [v7 dnsSettings];
  [dnsSettings setOnDemandRules:v9];

  objc_sync_exit(selfCopy);
}

- (NSArray)onDemandRules
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  dnsSettings = [v5 dnsSettings];
  onDemandRules = [dnsSettings onDemandRules];

  objc_sync_exit(selfCopy);

  return onDemandRules;
}

- (void)setDnsSettings:(NEDNSSettings *)dnsSettings
{
  v9 = dnsSettings;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v5, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  dnsSettings = [v7 dnsSettings];
  [dnsSettings setSettings:v9];

  objc_sync_exit(selfCopy);
}

- (NEDNSSettings)dnsSettings
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  dnsSettings = [v5 dnsSettings];
  settings = [dnsSettings settings];

  objc_sync_exit(selfCopy);

  return settings;
}

- (BOOL)isEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v3, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  dnsSettings = [v5 dnsSettings];
  isEnabled = [dnsSettings isEnabled];

  objc_sync_exit(selfCopy);
  return isEnabled;
}

- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && selfCopy->_hasLoaded)
  {
    v7 = objc_getProperty(selfCopy, v6, 16, 1);
    v9 = objc_getProperty(selfCopy, v8, 40, 1);
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__NEDNSSettingsManager_saveToPreferencesWithCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E7F097A8;
    v14 = v4;
    [v7 saveConfiguration:v9 withCompletionQueue:v10 handler:v13];
    v12 = &v14;

LABEL_6:
    goto LABEL_7;
  }

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__NEDNSSettingsManager_saveToPreferencesWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v12 = &v16;
    v16 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_6;
  }

LABEL_7:
  objc_sync_exit(selfCopy);
}

void __63__NEDNSSettingsManager_saveToPreferencesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEDNSSettingsErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __63__NEDNSSettingsManager_saveToPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 9)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[NEDNSSettingsManager saveToPreferencesWithCompletionHandler:]_block_invoke_2";
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%s: failed to save the new configuration: %@", buf, 0x16u);
    }

    if ([v4 code] == 5)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEDNSSettingsErrorDomain" code:3 userInfo:0];

      v4 = v6;
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__NEDNSSettingsManager_saveToPreferencesWithCompletionHandler___block_invoke_29;
    v9[3] = &unk_1E7F0B588;
    v11 = v7;
    v10 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && objc_getProperty(selfCopy, v6, 40, 1))
  {
    v8 = objc_getProperty(selfCopy, v7, 40, 1);
    payloadInfo = [v8 payloadInfo];

    if (!payloadInfo)
    {
      v14 = objc_getProperty(selfCopy, v10, 16, 1);
      v16 = objc_getProperty(selfCopy, v15, 40, 1);
      v17 = MEMORY[0x1E69E96A0];
      v18 = MEMORY[0x1E69E96A0];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __67__NEDNSSettingsManager_removeFromPreferencesWithCompletionHandler___block_invoke_3;
      v19[3] = &unk_1E7F097A8;
      v20 = v4;
      [v14 removeConfiguration:v16 withCompletionQueue:v17 handler:v19];
      v11 = &v20;

      goto LABEL_10;
    }

    if (v4)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __67__NEDNSSettingsManager_removeFromPreferencesWithCompletionHandler___block_invoke_2;
      v21[3] = &unk_1E7F0B600;
      v11 = &v22;
      v22 = v4;
      v12 = MEMORY[0x1E69E96A0];
      v13 = v21;
LABEL_8:
      dispatch_async(v12, v13);
LABEL_10:
    }
  }

  else if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__NEDNSSettingsManager_removeFromPreferencesWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v11 = &v24;
    v24 = v4;
    v12 = MEMORY[0x1E69E96A0];
    v13 = block;
    goto LABEL_8;
  }

  objc_sync_exit(selfCopy);
}

void __67__NEDNSSettingsManager_removeFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEDNSSettingsErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __67__NEDNSSettingsManager_removeFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NEDNSSettingsErrorDomain" code:4 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __67__NEDNSSettingsManager_removeFromPreferencesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[NEDNSSettingsManager removeFromPreferencesWithCompletionHandler:]_block_invoke_3";
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
    v7[2] = __67__NEDNSSettingsManager_removeFromPreferencesWithCompletionHandler___block_invoke_28;
    v7[3] = &unk_1E7F0B588;
    v9 = v5;
    v8 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  v6 = *MEMORY[0x1E69E9840];
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
    v11[2] = __65__NEDNSSettingsManager_loadFromPreferencesWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E7F0B5B0;
    v11[4] = selfCopy;
    v12 = v4;
    [v8 loadConfigurationsWithCompletionQueue:v9 handler:v11];

    objc_sync_exit(selfCopy);
  }
}

void __65__NEDNSSettingsManager_loadFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (!v5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v23;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [v12 dnsSettings];
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

        v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_15:

      if (v9)
      {
        v19 = *(a1 + 32);
        if (!v19)
        {
LABEL_22:

          goto LABEL_23;
        }

        objc_setProperty_atomic(v19, v18, v9, 40);
LABEL_20:
        v20 = *(a1 + 32);
        if (v20)
        {
          *(v20 + 8) = 1;
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    [NEDNSSettingsManager createEmptyConfigurationWithGrade:?];
    v9 = 0;
    goto LABEL_20;
  }

LABEL_23:
  v21 = *(a1 + 40);
  if (v21)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NEDNSSettingsManager_loadFromPreferencesWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0B588;
    v26 = v21;
    v25 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_sync_exit(v6);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)createEmptyConfigurationWithGrade:(void *)grade
{
  if (grade)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v14 = [infoDictionary objectForKey:*MEMORY[0x1E695E120]];

    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle2 bundleIdentifier];

    if (!v14)
    {
      mainBundle3 = [MEMORY[0x1E696AAE8] mainBundle];
      infoDictionary2 = [mainBundle3 infoDictionary];
      v14 = [infoDictionary2 objectForKey:*MEMORY[0x1E695E4F8]];
    }

    v8 = [[NEConfiguration alloc] initWithName:v14 grade:2];
    objc_setProperty_atomic(grade, v9, v8, 40);

    v10 = objc_alloc_init(NEDNSSettingsBundle);
    [objc_getProperty(grade v11];

    [objc_getProperty(grade v12];
    [objc_getProperty(grade v13];
  }
}

+ (void)loadAllFromPreferencesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NEDNSSettingsManager globalConfigurationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__NEDNSSettingsManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7F0B510;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [v4 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v6];
}

+ (id)globalConfigurationManager
{
  objc_opt_self();
  if (globalConfigurationManager_onceToken_17817 != -1)
  {
    dispatch_once(&globalConfigurationManager_onceToken_17817, &__block_literal_global_17_17818);
  }

  v0 = globalConfigurationManager_gConfigurationManager_17819;

  return v0;
}

void __68__NEDNSSettingsManager_loadAllFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  group = dispatch_group_create();
  v37 = v5;
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v36 = a1;
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v9)
    {
      v10 = *v46;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v46 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 dnsSettings];
            v14 = v13 == 0;

            if (!v14)
            {
              dispatch_group_enter(group);
              v15 = [NEDNSSettingsManager alloc];
              v16 = v12;
              if (v15 && (v49.receiver = v15, v49.super_class = NEDNSSettingsManager, v17 = objc_msgSendSuper2(&v49, sel_init), (v18 = v17) != 0))
              {
                objc_storeStrong(v17 + 5, v12);
                v19 = +[NEDNSSettingsManager globalConfigurationManager];
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

              v43[0] = MEMORY[0x1E69E9820];
              v43[1] = 3221225472;
              v43[2] = __68__NEDNSSettingsManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_2;
              v43[3] = &unk_1E7F09758;
              v43[4] = v16;
              v44 = group;
              v23 = v43;
              if (v18)
              {
                objc_initWeak(&location, v18);
                v24 = [MEMORY[0x1E696AD88] defaultCenter];
                v25 = v18[3];
                v26 = [MEMORY[0x1E696ADC8] mainQueue];
                v49.receiver = MEMORY[0x1E69E9820];
                v49.super_class = 3221225472;
                v50 = __58__NEDNSSettingsManager_setupSessionWithCompletionHandler___block_invoke;
                v51 = &unk_1E7F09780;
                objc_copyWeak(&v52, &location);
                v27 = [v24 addObserverForName:@"com.apple.networkextension.statuschanged" object:v25 queue:v26 usingBlock:&v49];
                v28 = v18[4];
                v18[4] = v27;

                v29 = v18[3];
                v31 = objc_getProperty(v18, v30, 40, 1);
                v32 = [v31 identifier];
                if (v29)
                {
                  [(NEVPNConnection *)v29 createSessionWithConfigurationIdentifier:v32 forceInfoFetch:0 completionHandler:v23];
                }

                objc_destroyWeak(&v52);
                objc_destroyWeak(&location);
              }

              [v38 addObject:v18];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v9);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__NEDNSSettingsManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_23;
    block[3] = &unk_1E7F0B588;
    v33 = *(v36 + 32);
    v41 = v38;
    v42 = v33;
    v34 = v38;
    dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __68__NEDNSSettingsManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
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
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Failed to create a DNS settings session for configuration %@ (%@): %@", &v8, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v5 = *MEMORY[0x1E69E9840];
}

void __68__NEDNSSettingsManager_loadAllFromPreferencesWithCompletionHandler___block_invoke_23(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void __58__NEDNSSettingsManager_setupSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = v2;
    if (v2)
    {
      [v2 dnsSettingsStatusDidChange:v4];
    }

    WeakRetained = v4;
  }
}

uint64_t __50__NEDNSSettingsManager_globalConfigurationManager__block_invoke()
{
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("DNS settings config manager change queue", v0);
  v2 = globalConfigurationManager_gChangeQueue_17822;
  globalConfigurationManager_gChangeQueue_17822 = v1;

  v3 = [[NEConfigurationManager alloc] initForAllUsers];
  v4 = globalConfigurationManager_gConfigurationManager_17819;
  globalConfigurationManager_gConfigurationManager_17819 = v3;

  v5 = globalConfigurationManager_gConfigurationManager_17819;
  v6 = globalConfigurationManager_gChangeQueue_17822;

  return [v5 setChangedQueue:v6 andHandler:&__block_literal_global_20_17824];
}

void __50__NEDNSSettingsManager_globalConfigurationManager__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.networkextension.dns-settings-configuration-changed" object:0];
}

+ (NEDNSSettingsManager)sharedManager
{
  if (sharedManager_onceToken_17826 != -1)
  {
    dispatch_once(&sharedManager_onceToken_17826, &__block_literal_global_17827);
  }

  v2 = sharedManager_gDNSSettingsManager;
  if (sharedManager_gDNSSettingsManager)
  {
    v3 = sharedManager_gDNSSettingsManager;
  }

  return v2;
}

void __37__NEDNSSettingsManager_sharedManager__block_invoke()
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v0 = [NEDNSSettingsManager alloc];
  if (!v0)
  {
    goto LABEL_9;
  }

  v12.receiver = v0;
  v12.super_class = NEDNSSettingsManager;
  v1 = objc_msgSendSuper2(&v12, sel_init);
  if (!v1)
  {
    goto LABEL_11;
  }

  if (+[NEProvider isRunningInProvider])
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      v10 = v9;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "%@ objects cannot be instantiated from NEProvider processes", &buf, 0xCu);
    }

LABEL_9:
    v1 = 0;
    goto LABEL_11;
  }

  objc_initWeak(&location, v1);
  v3 = objc_alloc_init(NEConfigurationManager);
  v4 = v1[2];
  v1[2] = v3;

  v5 = v1[2];
  v6 = MEMORY[0x1E69E96A0];
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v14 = __38__NEDNSSettingsManager_initWithGrade___block_invoke;
  v15 = &unk_1E7F0ABE0;
  objc_copyWeak(v16, &location);
  [v5 setChangedQueue:MEMORY[0x1E69E96A0] andHandler:&buf];

  [NEDNSSettingsManager createEmptyConfigurationWithGrade:v1];
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
LABEL_11:
  v7 = sharedManager_gDNSSettingsManager;
  sharedManager_gDNSSettingsManager = v1;
  v8 = *MEMORY[0x1E69E9840];
}

void __38__NEDNSSettingsManager_initWithGrade___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__NEDNSSettingsManager_initWithGrade___block_invoke_2;
  v5[3] = &unk_1E7F0A2A0;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained loadFromPreferencesWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
}

void __38__NEDNSSettingsManager_initWithGrade___block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"com.apple.networkextension.dns-settings-configuration-changed" object:WeakRetained];
}

@end