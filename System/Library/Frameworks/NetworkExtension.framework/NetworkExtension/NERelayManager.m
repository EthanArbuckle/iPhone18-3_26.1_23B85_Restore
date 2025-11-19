@interface NERelayManager
+ (NERelayManager)sharedManager;
+ (id)configurationManager;
+ (id)loadedManagers;
+ (id)mapError:(uint64_t)a1;
+ (void)loadAllFromPreferencesWithCompletionHandler:(id)a3;
+ (void)loadAllManagersFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (BOOL)isDNSFailoverAllowed;
- (BOOL)isEnabled;
- (BOOL)isFromProfile;
- (BOOL)isUIToggleEnabled;
- (NERelayManagerDelegate)delegate;
- (NSArray)excludedDomains;
- (NSArray)excludedFQDNs;
- (NSArray)matchDomains;
- (NSArray)matchFQDNs;
- (NSArray)onDemandRules;
- (NSArray)relays;
- (NSString)appBundleIdentifier;
- (NSString)localizedDescription;
- (NSUUID)identifier;
- (_BYTE)initWithGrade:(void *)a1;
- (void)createEmptyConfigurationWithGrade:(void *)a1;
- (void)getLastClientErrors:(double)a3 completionHandler:(id)a4;
- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler;
- (void)setExcludedDomains:(NSArray *)excludedDomains;
- (void)setExcludedFQDNs:(id)a3;
- (void)setLocalizedDescription:(NSString *)localizedDescription;
- (void)setMatchDomains:(NSArray *)matchDomains;
- (void)setMatchFQDNs:(id)a3;
- (void)setOnDemandRules:(NSArray *)onDemandRules;
- (void)setRelays:(NSArray *)relays;
@end

@implementation NERelayManager

- (NERelayManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isFromProfile
{
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
  }

  v2 = [(NERelayManager *)self payloadInfo];
  v3 = v2 != 0;

  return v3;
}

- (NSString)appBundleIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
    v2 = vars8;
  }

  return [(NERelayManager *)self application];
}

- (NSUUID)identifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
    v2 = vars8;
  }

  return [(NERelayManager *)self identifier];
}

- (void)setLocalizedDescription:(NSString *)localizedDescription
{
  v8 = localizedDescription;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 16, 1);
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
    Property = objc_getProperty(v2, v3, 16, 1);
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

- (void)setOnDemandRules:(NSArray *)onDemandRules
{
  v9 = onDemandRules;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 relay];
  [v8 setOnDemandRules:v9];

  objc_sync_exit(v4);
}

- (NSArray)onDemandRules
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 relay];
  v7 = [v6 onDemandRules];

  objc_sync_exit(v2);

  return v7;
}

- (void)setExcludedFQDNs:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 relay];
  [v8 setExcludedFQDNs:v9];

  objc_sync_exit(v4);
}

- (NSArray)excludedFQDNs
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 relay];
  v7 = [v6 excludedFQDNs];

  objc_sync_exit(v2);

  return v7;
}

- (void)setMatchFQDNs:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 relay];
  [v8 setMatchFQDNs:v9];

  objc_sync_exit(v4);
}

- (NSArray)matchFQDNs
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 relay];
  v7 = [v6 matchFQDNs];

  objc_sync_exit(v2);

  return v7;
}

- (void)setExcludedDomains:(NSArray *)excludedDomains
{
  v9 = excludedDomains;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 relay];
  [v8 setExcludedDomains:v9];

  objc_sync_exit(v4);
}

- (NSArray)excludedDomains
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 relay];
  v7 = [v6 excludedDomains];

  objc_sync_exit(v2);

  return v7;
}

- (void)setMatchDomains:(NSArray *)matchDomains
{
  v9 = matchDomains;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 relay];
  [v8 setMatchDomains:v9];

  objc_sync_exit(v4);
}

- (NSArray)matchDomains
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 relay];
  v7 = [v6 matchDomains];

  objc_sync_exit(v2);

  return v7;
}

- (void)setRelays:(NSArray *)relays
{
  v9 = relays;
  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    Property = objc_getProperty(v4, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 relay];
  [v8 setRelays:v9];

  objc_sync_exit(v4);
}

- (NSArray)relays
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 relay];
  v7 = [v6 relays];

  objc_sync_exit(v2);

  return v7;
}

- (BOOL)isDNSFailoverAllowed
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 relay];
  v7 = [v6 isDNSFailoverAllowed];

  objc_sync_exit(v2);
  return v7;
}

- (BOOL)isUIToggleEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 relay];
  v7 = [v6 isUIToggleEnabled];

  objc_sync_exit(v2);
  return v7;
}

- (BOOL)isEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v6 = [v5 relay];
  v7 = [v6 isEnabled];

  objc_sync_exit(v2);
  return v7;
}

- (void)saveToPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = self;
  objc_sync_enter(v5);
  if (v5 && v5->_hasLoaded)
  {
    v6 = +[NERelayManager loadedManagers];
    v5->_notificationSent = 0;
    v7 = +[NERelayManager configurationManager];
    v9 = objc_getProperty(v5, v8, 16, 1);
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__NERelayManager_saveToPreferencesWithCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E7F0B628;
    v13[4] = v5;
    v14 = v4;
    [v7 saveConfiguration:v9 withCompletionQueue:v10 handler:v13];

    v12 = v14;
LABEL_6:

    goto LABEL_7;
  }

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NERelayManager_saveToPreferencesWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v16 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v12 = v16;
    goto LABEL_6;
  }

LABEL_7:
  objc_sync_exit(v5);
}

void __57__NERelayManager_saveToPreferencesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NERelayErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

+ (id)loadedManagers
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__NERelayManager_loadedManagers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (loadedManagers_managers_init_28399 != -1)
  {
    dispatch_once(&loadedManagers_managers_init_28399, block);
  }

  v1 = loadedManagers_loadedManagers_28400;

  return v1;
}

+ (id)configurationManager
{
  objc_opt_self();
  if (g_noAppFilter_28397)
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

void __57__NERelayManager_saveToPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 9)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[NERelayManager saveToPreferencesWithCompletionHandler:]_block_invoke_2";
      v20 = 2112;
      v21 = v4;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%s: failed to save the new configuration: %@", buf, 0x16u);
    }

    if ([v4 code] == 5)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NERelayErrorDomain" code:3 userInfo:0];

      v4 = v10;
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      *(v11 + 10) = 1;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (!v5 || (*(v5 + 10) & 1) == 0)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v19 = v14;
        _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "Post NERelayConfigurationDidChangeNotification to app for manager %@", buf, 0xCu);
      }

      v7 = *(a1 + 32);
      if (v7)
      {
        *(v7 + 10) = 1;
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"com.apple.networkextension.relay-configuration-changed" object:*(a1 + 32)];
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__NERelayManager_saveToPreferencesWithCompletionHandler___block_invoke_42;
    v15[3] = &unk_1E7F0B588;
    v17 = v12;
    v16 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __32__NERelayManager_loadedManagers__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = loadedManagers_loadedManagers_28400;
  loadedManagers_loadedManagers_28400 = v2;

  v4 = +[NERelayManager configurationManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__NERelayManager_loadedManagers__block_invoke_2;
  v5[3] = &__block_descriptor_40_e17_v16__0__NSArray_8l;
  v5[4] = *(a1 + 32);
  [v4 setChangedQueue:MEMORY[0x1E69E96A0] andHandler:v5];
}

void __32__NERelayManager_loadedManagers__block_invoke_2(uint64_t a1, void *a2)
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

        v8 = [loadedManagers_loadedManagers_28400 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v7)];
        if (v8 || ([*(a1 + 32) sharedManager], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __32__NERelayManager_loadedManagers__block_invoke_3;
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
            _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "Post NERelayConfigurationDidChangeNotification to app", v13, 2u);
          }

          v9 = [MEMORY[0x1E696AD88] defaultCenter];
          [v9 postNotificationName:@"com.apple.networkextension.relay-configuration-changed" object:0];
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

void __32__NERelayManager_loadedManagers__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 10) & 1) == 0)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "Post NERelayConfigurationDidChangeNotification to app for manager %@", &v8, 0xCu);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      *(v4 + 10) = 1;
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"com.apple.networkextension.relay-configuration-changed" object:*(a1 + 32)];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = self;
  objc_sync_enter(v5);
  if (v5 && objc_getProperty(v5, v6, 16, 1))
  {
    v8 = objc_getProperty(v5, v7, 16, 1);
    v9 = [v8 payloadInfo];

    if (!v9)
    {
      v11 = +[NERelayManager configurationManager];
      v13 = objc_getProperty(v5, v12, 16, 1);
      v14 = MEMORY[0x1E69E96A0];
      v15 = MEMORY[0x1E69E96A0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __61__NERelayManager_removeFromPreferencesWithCompletionHandler___block_invoke_3;
      v16[3] = &unk_1E7F0B628;
      v16[4] = v5;
      v17 = v4;
      [v11 removeConfiguration:v13 withCompletionQueue:v14 handler:v16];

      v10 = v17;
      goto LABEL_9;
    }

    if (v4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__NERelayManager_removeFromPreferencesWithCompletionHandler___block_invoke_2;
      block[3] = &unk_1E7F0B600;
      v19 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v10 = v19;
LABEL_9:
    }
  }

  else if (v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__NERelayManager_removeFromPreferencesWithCompletionHandler___block_invoke;
    v20[3] = &unk_1E7F0B600;
    v21 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v20);
    v10 = v21;
    goto LABEL_9;
  }

  objc_sync_exit(v5);
}

void __61__NERelayManager_removeFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NERelayErrorDomain" code:3 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __61__NERelayManager_removeFromPreferencesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NERelayErrorDomain" code:4 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __61__NERelayManager_removeFromPreferencesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[NERelayManager removeFromPreferencesWithCompletionHandler:]_block_invoke_3";
      v23 = 2112;
      v24 = v4;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%s: failed to remove the configuration: %@", buf, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_12;
  }

  if (objc_getProperty(v6, v3, 16, 1))
  {
    v8 = +[NERelayManager loadedManagers];
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 16, 1);
    }

    v10 = [Property identifier];
    [v8 removeObjectForKey:v10];
  }

  v11 = *(a1 + 32);
  if (!v11 || (*(v11 + 10) & 1) == 0)
  {
LABEL_12:
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEBUG, "Post NERelayConfigurationDidChangeNotification to app for manager %@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      *(v13 + 10) = 1;
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:@"com.apple.networkextension.relay-configuration-changed" object:*(a1 + 32)];
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __61__NERelayManager_removeFromPreferencesWithCompletionHandler___block_invoke_41;
    v18[3] = &unk_1E7F0B588;
    v20 = v15;
    v19 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)loadFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    if (v5 && v5->_isShared)
    {
      v6 = +[NERelayManager configurationManager];
      v7 = MEMORY[0x1E69E96A0];
      v8 = MEMORY[0x1E69E96A0];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59__NERelayManager_loadFromPreferencesWithCompletionHandler___block_invoke;
      v17[3] = &unk_1E7F0B5B0;
      v17[4] = v5;
      v18 = v4;
      [v6 loadConfigurationsWithCompletionQueue:v7 handler:v17];
      v9 = &v18;
    }

    else
    {
      v6 = +[NERelayManager configurationManager];
      if (v5)
      {
        Property = objc_getProperty(v5, v10, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v7 = Property;
      v12 = [v7 identifier];
      v13 = MEMORY[0x1E69E96A0];
      v14 = MEMORY[0x1E69E96A0];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59__NERelayManager_loadFromPreferencesWithCompletionHandler___block_invoke_3;
      v15[3] = &unk_1E7F0B5D8;
      v15[4] = v5;
      v16 = v4;
      [v6 loadConfigurationWithID:v12 withCompletionQueue:v13 handler:v15];
      v9 = &v16;
    }

    objc_sync_exit(v5);
  }
}

void __59__NERelayManager_loadFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (v5)
  {
    goto LABEL_26;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v29;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v34;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 relay];
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

      v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
      if (v19)
      {
        objc_setProperty_atomic(v19, v18, v9, 16);
        v20 = *(a1 + 32);
      }

      else
      {
        v20 = 0;
      }

      v22 = +[NERelayManager loadedManagers];
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v21, 16, 1);
      }

      v24 = Property;
      v25 = [v24 identifier];
      [v22 setObject:v20 forKeyedSubscript:v25];

      goto LABEL_23;
    }
  }

  else
  {
  }

  [NERelayManager createEmptyConfigurationWithGrade:?];
  v9 = 0;
LABEL_23:
  v26 = *(a1 + 32);
  if (v26)
  {
    *(v26 + 9) = 1;
  }

LABEL_26:
  v27 = *(a1 + 40);
  if (v27)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__NERelayManager_loadFromPreferencesWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0B588;
    v32 = v27;
    v31 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  objc_sync_exit(v6);

  v28 = *MEMORY[0x1E69E9840];
}

void __59__NERelayManager_loadFromPreferencesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v6)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v6;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to load the configuration: %@", &v24, 0xCu);
    }

    v10 = [NERelayManager mapError:v6];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    if (v5)
    {
      if (v11)
      {
        objc_setProperty_atomic(v11, v8, v5, 16);
        v12 = *(a1 + 32);
      }

      else
      {
        v12 = 0;
      }

      v14 = +[NERelayManager loadedManagers];
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v13, 16, 1);
      }

      v16 = Property;
      v17 = [v16 identifier];
      [v14 setObject:v12 forKeyedSubscript:v17];
    }

    else
    {
      if (v11)
      {
        v11 = objc_getProperty(v11, v8, 16, 1);
      }

      v18 = v11;
      v19 = [v18 relay];
      [v19 setEnabled:0];

      v14 = +[NERelayManager loadedManagers];
      v21 = *(a1 + 32);
      if (v21)
      {
        v21 = objc_getProperty(v21, v20, 16, 1);
      }

      v16 = v21;
      v17 = [v16 identifier];
      [v14 removeObjectForKey:v17];
    }

    (*(*(a1 + 40) + 16))();
    v22 = *(a1 + 32);
    v10 = 0;
    if (v22)
    {
      *(v22 + 9) = 1;
    }
  }

  objc_sync_exit(v7);

  v23 = *MEMORY[0x1E69E9840];
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
    goto LABEL_12;
  }

  v5 = [v2 code];
  if (v5 > 0x15)
  {
    goto LABEL_10;
  }

  if (((1 << v5) & 0x301D40) != 0 || v5 == 7)
  {
    goto LABEL_11;
  }

  if (v5 != 9)
  {
LABEL_10:
    if (v5 - 1 < 4)
    {
LABEL_11:
      v6 = [v2 localizedDescription];
      goto LABEL_12;
    }

    if (v5 == 5)
    {
      v6 = [v2 localizedDescription];
      v8 = 3;
      goto LABEL_13;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = [v2 localizedDescription];
    v6 = [v13 stringWithFormat:@"Unknown: %@", v14];

LABEL_12:
    v8 = 1;
LABEL_13:
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v7 = [v9 errorWithDomain:@"NERelayErrorDomain" code:v8 userInfo:v10];

    goto LABEL_14;
  }

  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "The configuration was not saved because it was unchanged from the previously saved version", buf, 2u);
  }

  v7 = 0;
LABEL_14:

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)createEmptyConfigurationWithGrade:(void *)a1
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 infoDictionary];
    v14 = [v3 objectForKey:*MEMORY[0x1E695E120]];

    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];

    if (!v14)
    {
      v6 = [MEMORY[0x1E696AAE8] mainBundle];
      v7 = [v6 infoDictionary];
      v14 = [v7 objectForKey:*MEMORY[0x1E695E4F8]];
    }

    v8 = [[NEConfiguration alloc] initWithName:v14 grade:2];
    objc_setProperty_atomic(a1, v9, v8, 16);

    v10 = objc_alloc_init(NERelayConfiguration);
    [objc_getProperty(a1 v11];

    [objc_getProperty(a1 v12];
    [objc_getProperty(a1 v13];
  }
}

- (void)getLastClientErrors:(double)a3 completionHandler:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v11[0] = 0;
  v11[1] = 0;
  v8 = [Property identifier];
  [v8 getUUIDBytes:v11];

  if (ne_session_create())
  {
    v10 = v6;
    ne_session_get_info();
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __56__NERelayManager_getLastClientErrors_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1BFAFC5E0](v3) == MEMORY[0x1E69E9E80])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__28423;
    v12 = __Block_byref_object_dispose__28424;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = xpc_dictionary_get_array(v4, "SortedRelayErrors");
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__NERelayManager_getLastClientErrors_completionHandler___block_invoke_22;
    v7[3] = &unk_1E7F0B538;
    v7[5] = *(a1 + 40);
    v7[4] = &v8;
    xpc_array_apply(v5, v7);
    v6 = v9[5];
    (*(*(a1 + 32) + 16))();

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __56__NERelayManager_getLastClientErrors_completionHandler___block_invoke_22(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (!v4 || MEMORY[0x1BFAFC5E0](v4) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_28;
  }

  v6 = xpc_dictionary_get_double(v5, "TimeEpoch");
  v7 = [MEMORY[0x1E695DF00] now];
  [v7 timeIntervalSince1970];
  v9 = v8 - v6;
  v10 = *(a1 + 40);

  if (v9 <= v10)
  {
    int64 = xpc_dictionary_get_int64(v5, "LastCause");
    if (int64 <= 23)
    {
      if (int64 > 19)
      {
        if (int64 == 20)
        {
          v12 = 3;
          goto LABEL_27;
        }

        if (int64 == 21)
        {
          v12 = 4;
          goto LABEL_27;
        }
      }

      else
      {
        if (!int64)
        {
          v12 = 1;
          goto LABEL_27;
        }

        if (int64 == 17)
        {
          v12 = 2;
          goto LABEL_27;
        }
      }
    }

    else if (int64 <= 26)
    {
      if (int64 == 24)
      {
        v12 = 5;
        goto LABEL_27;
      }

      if (int64 == 25)
      {
        v12 = 6;
        goto LABEL_27;
      }
    }

    else
    {
      switch(int64)
      {
        case 27:
          v12 = 7;
          goto LABEL_27;
        case 28:
          v12 = 8;
          goto LABEL_27;
        case 30:
          v12 = 9;
LABEL_27:
          v14 = *(*(*(a1 + 32) + 8) + 40);
          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NERelayErrorDomain" code:v12 userInfo:0];
          [v14 addObject:v15];

LABEL_28:
          v13 = 1;
          goto LABEL_29;
      }
    }

    v12 = 10;
    goto LABEL_27;
  }

  v13 = 0;
LABEL_29:

  return v13;
}

- (_BYTE)initWithGrade:(void *)a1
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_7:
    v1 = 0;
    goto LABEL_9;
  }

  v7.receiver = a1;
  v7.super_class = NERelayManager;
  v1 = objc_msgSendSuper2(&v7, sel_init);
  if (v1)
  {
    if (!+[NEProvider isRunningInProvider])
    {
      v1[10] = 0;
      [NERelayManager createEmptyConfigurationWithGrade:v1];
      goto LABEL_9;
    }

    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      *buf = 138412290;
      v9 = v5;
      v6 = v5;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "%@ objects cannot be instantiated from NEProvider processes", buf, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_9:
  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

+ (void)loadAllFromPreferencesWithCompletionHandler:(id)a3
{
  v3 = a3;
  objc_opt_self();
  g_noAppFilter_28397 = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__NERelayManager_loadAllFromPreferencesWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E7F0B510;
  v6 = v3;
  v4 = v3;
  [NERelayManager loadAllManagersFromPreferencesWithCompletionHandler:v5];
}

+ (void)loadAllManagersFromPreferencesWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = +[NERelayManager loadedManagers];
  v5 = +[NERelayManager configurationManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__NERelayManager_loadAllManagersFromPreferencesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7F0B510;
  v8 = v3;
  v6 = v3;
  [v5 loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v7];
}

void __70__NERelayManager_loadAllManagersFromPreferencesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v6 = [NERelayManager mapError:a3];
    v7 = *(a1 + 32);
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    (*(v7 + 16))(v7, v8, v6);
  }

  else
  {
    v25 = v5;
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 relay];

            if (v15)
            {
              v16 = [NERelayManager alloc];
              v17 = v14;
              if (v16 && (v31.receiver = v16, v31.super_class = NERelayManager, (v18 = objc_msgSendSuper2(&v31, sel_init)) != 0))
              {
                v19 = v18;
                objc_storeStrong(v18 + 2, v14);

                v19[9] = 1;
              }

              else
              {

                v19 = 0;
              }

              [v26 addObject:v19];
              v20 = +[NERelayManager loadedManagers];
              v21 = [v17 identifier];
              [v20 setObject:v19 forKeyedSubscript:v21];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v22 = *(a1 + 32);
    v23 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v26];
    (*(v22 + 16))(v22, v23, 0);

    v5 = v25;
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (NERelayManager)sharedManager
{
  if (sharedManager_onceToken_28441 != -1)
  {
    dispatch_once(&sharedManager_onceToken_28441, &__block_literal_global_28442);
  }

  v2 = sharedManager_gRelayManager;
  if (sharedManager_gRelayManager)
  {
    v3 = sharedManager_gRelayManager;
  }

  return v2;
}

id __31__NERelayManager_sharedManager__block_invoke()
{
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v0 = [NERelayManager initWithGrade:?];
  v1 = sharedManager_gRelayManager;
  sharedManager_gRelayManager = v0;

  if (sharedManager_gRelayManager)
  {
    *(sharedManager_gRelayManager + 8) = 1;
  }

  return +[NERelayManager loadedManagers];
}

@end