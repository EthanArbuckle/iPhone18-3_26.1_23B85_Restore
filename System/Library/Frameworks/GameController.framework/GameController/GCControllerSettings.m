@interface GCControllerSettings
+ (BOOL)settingsCustomizedForController:(id)a3 forBundleIdentifier:(id)a4;
+ (id)controllerSettingsCustomizedChangedHandlers;
+ (id)metaDefaults;
+ (id)settingsCustomizedChangedHandlers;
+ (id)settingsDispatchQueue;
+ (void)registerSettingsCustomizedHandler:(id)a3 forController:(id)a4 forKey:(id)a5;
+ (void)registerSettingsCustomizedHandler:(id)a3 forKey:(id)a4;
+ (void)setSettingsExist:(BOOL)a3 forBundleIdentifier:(id)a4;
+ (void)setSettingsExist:(BOOL)a3 forController:(id)a4 forBundleIdentifier:(id)a5;
+ (void)unregisterSettingsCustomizedHandlerForController:(id)a3 forKey:(id)a4;
+ (void)unregisterSettingsCustomizedHandlerForKey:(id)a3;
- (GCControllerSettings)initWithBundleIdentifier:(id)a3 forController:(id)a4;
- (GCControllerSettings)initWithBundleIdentifier:(id)a3 forControllerIdentifier:(id)a4;
- (GCControllerSettings)initWithCoder:(id)a3;
- (GCReplayKitGestureSettings)replayKitGestureSettings;
- (id)defaultValues;
- (id)description;
- (id)elementSettingForKey:(id)a3;
- (id)mappingForButton:(id)a3;
- (id)mappingForDirectionPad:(id)a3;
- (id)mappingForElement:(id)a3;
- (id)mappingForTouchpad:(id)a3;
- (id)settingsForElement:(id)a3;
- (id)staticDefaultValues;
- (void)_updateControllerReference:(id)a3;
- (void)dealloc;
- (void)deleteObjectForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)eraseAllSettings;
- (void)initializeElementMappings;
- (void)initializeReplayKitDefaultMappings;
- (void)initializeUserDefaults;
- (void)observeDefaultsKeyPath:(id)a3 options:(unint64_t)a4 context:(void *)a5;
- (void)observeDefaultsKeyPaths:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)populateElementSettings;
- (void)refreshSettingsExist;
- (void)registerForSettingsCustomized;
- (void)restoreElementMappingToDefault;
- (void)saveObject:(id)a3 forKey:(id)a4;
- (void)setCustomizationsEnabled:(BOOL)a3;
- (void)setGameIntentMappings:(id)a3;
- (void)setHapticsEnabled:(BOOL)a3;
- (void)setMappingForElement:(id)a3 toElement:(id)a4;
- (void)setReplayKitGestureSettings:(id)a3;
- (void)setScreenShotEnabled:(BOOL)a3;
- (void)setScreenShotGesture:(int64_t)a3;
- (void)setScreenShotKey:(id)a3;
- (void)setVideoRecordingEnabled:(BOOL)a3;
- (void)setVideoRecordingGesture:(int64_t)a3;
- (void)setVideoRecordingKey:(id)a3;
- (void)setVideoRecordingMode:(int64_t)a3;
- (void)unregisterForSettingsCustomized;
@end

@implementation GCControllerSettings

+ (id)settingsDispatchQueue
{
  if (settingsDispatchQueue_onceToken != -1)
  {
    +[GCControllerSettings settingsDispatchQueue];
  }

  v3 = settingsDispatchQueue__dispatch_queue;

  return v3;
}

void __45__GCControllerSettings_settingsDispatchQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.GameController.Settings.GCControllerSettings", 0);
  v1 = settingsDispatchQueue__dispatch_queue;
  settingsDispatchQueue__dispatch_queue = v0;
}

+ (id)settingsCustomizedChangedHandlers
{
  if (settingsCustomizedChangedHandlers_onceToken != -1)
  {
    +[GCControllerSettings settingsCustomizedChangedHandlers];
  }

  v3 = settingsCustomizedChangedHandlers__handlers;

  return v3;
}

void __57__GCControllerSettings_settingsCustomizedChangedHandlers__block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = settingsCustomizedChangedHandlers__handlers;
  settingsCustomizedChangedHandlers__handlers = v0;
}

+ (id)controllerSettingsCustomizedChangedHandlers
{
  if (controllerSettingsCustomizedChangedHandlers_onceToken != -1)
  {
    +[GCControllerSettings controllerSettingsCustomizedChangedHandlers];
  }

  v3 = controllerSettingsCustomizedChangedHandlers__controllerHandlers;

  return v3;
}

void __67__GCControllerSettings_controllerSettingsCustomizedChangedHandlers__block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = controllerSettingsCustomizedChangedHandlers__controllerHandlers;
  controllerSettingsCustomizedChangedHandlers__controllerHandlers = v0;
}

+ (void)registerSettingsCustomizedHandler:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = getGCSettingsLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _Block_copy(v5);
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1D2CD5000, v7, OS_LOG_TYPE_DEFAULT, "Register settings customized handler %@ -> %@", &v12, 0x16u);
  }

  v9 = +[GCControllerSettings settingsCustomizedChangedHandlers];
  v10 = _Block_copy(v5);
  [v9 setObject:v10 forKey:v6];

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)unregisterSettingsCustomizedHandlerForKey:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = getGCSettingsLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_DEFAULT, "Unregister settings customized handler %@", &v7, 0xCu);
    }

    v5 = +[GCControllerSettings settingsCustomizedChangedHandlers];
    [v5 removeObjectForKey:v3];
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)registerSettingsCustomizedHandler:(id)a3 forController:(id)a4 forKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[GCControllerSettings settingsDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__GCControllerSettings_registerSettingsCustomizedHandler_forController_forKey___block_invoke;
  block[3] = &unk_1E841AD68;
  v15 = v8;
  v16 = v9;
  v17 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  dispatch_sync(v10, block);
}

void __79__GCControllerSettings_registerSettingsCustomizedHandler_forController_forKey___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = getGCSettingsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = _Block_copy(*(a1 + 48));
    v14 = 138412802;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEFAULT, "Register controller %@ settings customized handler %@ -> %@", &v14, 0x20u);
  }

  if (*(a1 + 32) && *(a1 + 40))
  {
    v6 = +[GCControllerSettings controllerSettingsCustomizedChangedHandlers];
    v7 = [v6 objectForKey:*(a1 + 32)];

    if (!v7)
    {
      v8 = +[GCControllerSettings controllerSettingsCustomizedChangedHandlers];
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [v8 setObject:v9 forKey:*(a1 + 32)];
    }

    v10 = +[GCControllerSettings controllerSettingsCustomizedChangedHandlers];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 32)];

    v12 = _Block_copy(*(a1 + 48));
    [v11 setObject:v12 forKey:*(a1 + 40)];
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)unregisterSettingsCustomizedHandlerForController:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[GCControllerSettings settingsDispatchQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__GCControllerSettings_unregisterSettingsCustomizedHandlerForController_forKey___block_invoke;
  v10[3] = &unk_1E8418C50;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, v10);
}

void __80__GCControllerSettings_unregisterSettingsCustomizedHandlerForController_forKey___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = getGCSettingsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEFAULT, "Unregister controller %@ settings customized handler %@", &v9, 0x16u);
  }

  if (*(a1 + 32) && *(a1 + 40))
  {
    v5 = +[GCControllerSettings controllerSettingsCustomizedChangedHandlers];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

    if (v6)
    {
      [v6 removeObjectForKey:*(a1 + 40)];
      if (![v6 count])
      {
        v7 = +[GCControllerSettings controllerSettingsCustomizedChangedHandlers];
        [v7 removeObjectForKey:*(a1 + 32)];
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)metaDefaults
{
  if (metaDefaults_onceToken != -1)
  {
    +[GCControllerSettings metaDefaults];
  }

  v3 = metaDefaults__observer;

  return [v3 metaDefaults];
}

void __36__GCControllerSettings_metaDefaults__block_invoke()
{
  v0 = objc_alloc_init(GCControllerMetaDefaultsObserver);
  v1 = metaDefaults__observer;
  metaDefaults__observer = v0;
}

+ (void)setSettingsExist:(BOOL)a3 forBundleIdentifier:(id)a4
{
  v4 = a3;
  v13 = a4;
  v5 = +[GCControllerSettings metaDefaults];
  v6 = [v5 dictionaryForKey:@"settingsExist"];

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF20] dictionary];
  }

  v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
  v8 = [v6 objectForKey:v13];

  if (!v8 || v4)
  {
    v9 = [v6 objectForKey:v13];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = !v4;
    }

    if (!v10)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v7 setObject:v11 forKey:v13];
    }
  }

  else
  {
    [v7 removeObjectForKey:v13];
  }

  v12 = +[GCControllerSettings metaDefaults];
  [v12 setObject:v7 forKey:@"settingsExist"];
}

+ (void)setSettingsExist:(BOOL)a3 forController:(id)a4 forBundleIdentifier:(id)a5
{
  v6 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = +[GCControllerSettings metaDefaults];
  v10 = [v9 dictionaryForKey:@"controllerSettingsExist"];

  if (!v10)
  {
    v10 = [MEMORY[0x1E695DF20] dictionary];
  }

  v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
  v12 = [v11 objectForKey:v7];
  if (!v12)
  {
    v12 = [MEMORY[0x1E695DEC8] array];
    v13 = +[GCAnalytics instance];
    [v13 sendSettingsDevicesEventForTotalCustomizedControllersCount:{objc_msgSend(v11, "count") + 1}];
  }

  v14 = [MEMORY[0x1E695DF70] arrayWithArray:v12];
  if ([v14 containsObject:v8] && !v6)
  {
    [v14 removeObject:v8];
LABEL_11:
    v15 = +[GCAnalytics instance];
    [v15 sendSettingsCustomizedAppsEventForTotalCustomizedAppsCount:{objc_msgSend(v14, "count")}];

    goto LABEL_12;
  }

  if (([v14 containsObject:v8] & 1) == 0 && v6)
  {
    [v14 addObject:v8];
    goto LABEL_11;
  }

LABEL_12:
  [v11 setObject:v14 forKey:v7];
  v16 = getGCSettingsLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = v11;
    _os_log_impl(&dword_1D2CD5000, v16, OS_LOG_TYPE_INFO, "Saving controller settings exist dictionary: %@", &v19, 0xCu);
  }

  v17 = +[GCControllerSettings metaDefaults];
  [v17 setObject:v11 forKey:@"controllerSettingsExist"];

  v18 = *MEMORY[0x1E69E9840];
}

+ (BOOL)settingsCustomizedForController:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[GCControllerSettings metaDefaults];
  v8 = [v7 dictionaryForKey:@"controllerSettingsExist"];

  v9 = [v8 objectForKey:v6];

  LOBYTE(v6) = [v9 containsObject:v5];
  return v6;
}

- (GCControllerSettings)initWithBundleIdentifier:(id)a3 forControllerIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = GCControllerSettings;
  v9 = [(GCControllerSettings *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, a3);
    objc_storeStrong(&v10->_uniqueIdentifier, a4);
    v10->_customized = [GCControllerSettings settingsCustomizedForController:v8 forBundleIdentifier:v7];
    v11 = [MEMORY[0x1E695DF90] dictionary];
    elementSettings = v10->_elementSettings;
    v10->_elementSettings = v11;

    v13 = [MEMORY[0x1E695DEC8] array];
    customizedElementSettings = v10->_customizedElementSettings;
    v10->_customizedElementSettings = v13;

    v15 = gcControllerSettingsID++;
    v10->_settingsID = v15;
    v16 = [MEMORY[0x1E695DFA8] set];
    observedKeyPaths = v10->_observedKeyPaths;
    v10->_observedKeyPaths = v16;

    [(GCControllerSettings *)v10 registerForSettingsCustomized];
    [(GCControllerSettings *)v10 initializeUserDefaults];
  }

  return v10;
}

- (GCControllerSettings)initWithBundleIdentifier:(id)a3 forController:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v8 isComponentBased])
  {
    v41.receiver = self;
    v41.super_class = GCControllerSettings;
    v9 = [(GCControllerSettings *)&v41 init];
    v10 = v9;
    if (v9)
    {
      v36 = v7;
      objc_storeWeak(&v9->_controller, v8);
      v10->_settingsAppOpenedAtLeastOnce = 1;
      v11 = [MEMORY[0x1E695DF90] dictionary];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      WeakRetained = objc_loadWeakRetained(&v10->_controller);
      v13 = [WeakRetained physicalInputProfile];
      v14 = [v13 allElements];

      v15 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v38;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v38 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v37 + 1) + 8 * i);
            if ([v19 remappable])
            {
              v20 = [(GCControllerSettings *)v10 mappingKeyForElement:v19];
              [(NSDictionary *)v11 setObject:v19 forKeyedSubscript:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v16);
      }

      elementMappingKeyToElement = v10->_elementMappingKeyToElement;
      v10->_elementMappingKeyToElement = v11;
      v22 = v11;

      objc_storeStrong(&v10->_bundleIdentifier, a3);
      v23 = [v8 identifier];
      uniqueIdentifier = v10->_uniqueIdentifier;
      v10->_uniqueIdentifier = v23;

      v25 = [v8 identifier];
      v7 = v36;
      v10->_customized = [GCControllerSettings settingsCustomizedForController:v25 forBundleIdentifier:v36];

      v26 = [MEMORY[0x1E695DF90] dictionary];
      elementSettings = v10->_elementSettings;
      v10->_elementSettings = v26;

      v28 = [MEMORY[0x1E695DEC8] array];
      customizedElementSettings = v10->_customizedElementSettings;
      v10->_customizedElementSettings = v28;

      v30 = gcControllerSettingsID++;
      v10->_settingsID = v30;
      v31 = [MEMORY[0x1E695DFA8] set];
      observedKeyPaths = v10->_observedKeyPaths;
      v10->_observedKeyPaths = v31;

      [(GCControllerSettings *)v10 registerForSettingsCustomized];
      [(GCControllerSettings *)v10 initializeUserDefaults];
    }

    self = v10;
    v33 = self;
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (void)unregisterForSettingsCustomized
{
  if (self->_customizedUUID)
  {
    [GCControllerSettings unregisterSettingsCustomizedHandlerForController:self->_uniqueIdentifier forKey:?];
  }
}

- (void)registerForSettingsCustomized
{
  if (!self->_customizedUUID)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    customizedUUID = self->_customizedUUID;
    self->_customizedUUID = v3;

    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__GCControllerSettings_registerForSettingsCustomized__block_invoke;
    v5[3] = &unk_1E841AD90;
    objc_copyWeak(&v6, &location);
    [GCControllerSettings registerSettingsCustomizedHandler:v5 forController:self->_uniqueIdentifier forKey:self->_customizedUUID];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __53__GCControllerSettings_registerForSettingsCustomized__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [v6 containsObject:WeakRetained[14]];
    if (v10)
    {
      v11 = getGCSettingsLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v9;
        v12 = "%@ is now customized";
LABEL_8:
        _os_log_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if ([v7 containsObject:v9[14]])
    {
      v11 = getGCSettingsLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v9;
        v12 = "%@ is no longer customized";
        goto LABEL_8;
      }

LABEL_9:

      [v9 setCustomized:v10];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)observeDefaultsKeyPath:(id)a3 options:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  v9 = getGCSettingsLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(GCControllerSettings *)v8 observeDefaultsKeyPath:v9 options:v10 context:v11, v12, v13, v14, v15];
  }

  [(NSMutableSet *)self->_observedKeyPaths addObject:v8];
  [(NSUserDefaults *)self->_defaults addObserver:self forKeyPath:v8 options:a4 context:a5];
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = getGCSettingsLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = self;
    _os_log_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_INFO, "Dealloc: %@", buf, 0xCu);
  }

  [(GCControllerSettings *)self unregisterForSettingsCustomized];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_observedKeyPaths;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = getGCSettingsLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          observedKeyPaths = self->_observedKeyPaths;
          *buf = 138412290;
          v20 = observedKeyPaths;
          _os_log_debug_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEBUG, "Remove observer for key path: %@", buf, 0xCu);
        }

        [(NSUserDefaults *)self->_defaults removeObserver:self forKeyPath:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13.receiver = self;
  v13.super_class = GCControllerSettings;
  [(GCControllerSettings *)&v13 dealloc];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_updateControllerReference:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_controller, a3);
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v6 = [WeakRetained physicalInputProfile];
  v7 = [v6 allElements];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 remappable])
        {
          v13 = [(GCControllerSettings *)self mappingKeyForElement:v12];
          [(NSDictionary *)v4 setObject:v12 forKeyedSubscript:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  elementMappingKeyToElement = self->_elementMappingKeyToElement;
  self->_elementMappingKeyToElement = v4;

  [(GCControllerSettings *)self initializeElementMappings];
  [(GCControllerSettings *)self initializeReplayKitDefaultMappings];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)setHapticsEnabled:(BOOL)a3
{
  if (self->_hapticsEnabled != a3)
  {
    self->_hapticsEnabled = a3;
    [GCControllerSettings saveBool:"saveBool:forKey:" forKey:?];
  }
}

- (void)setScreenShotEnabled:(BOOL)a3
{
  if (self->_screenShotEnabled != a3)
  {
    self->_screenShotEnabled = a3;
    [GCControllerSettings saveBool:"saveBool:forKey:" forKey:?];
  }
}

- (void)setVideoRecordingEnabled:(BOOL)a3
{
  if (self->_videoRecordingEnabled != a3)
  {
    self->_videoRecordingEnabled = a3;
    [GCControllerSettings saveBool:"saveBool:forKey:" forKey:?];
  }
}

- (void)setScreenShotKey:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_screenShotKey] & 1) == 0)
  {
    objc_storeStrong(&self->_screenShotKey, a3);
    [(GCControllerSettings *)self saveObject:self->_screenShotKey forKey:@"screenShotMappingKey"];
  }
}

- (void)setScreenShotGesture:(int64_t)a3
{
  if (self->_screenShotGesture != a3)
  {
    self->_screenShotGesture = a3;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(GCControllerSettings *)self saveObject:v5 forKey:@"screenShotGestureKey"];
  }
}

- (void)setVideoRecordingKey:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_videoRecordingKey] & 1) == 0)
  {
    objc_storeStrong(&self->_videoRecordingKey, a3);
    [(GCControllerSettings *)self saveObject:self->_videoRecordingKey forKey:@"videoRecordingMappingKey"];
  }
}

- (void)setVideoRecordingGesture:(int64_t)a3
{
  if (self->_videoRecordingGesture != a3)
  {
    self->_videoRecordingGesture = a3;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(GCControllerSettings *)self saveObject:v5 forKey:@"videoRecordingGestureKey"];
  }
}

- (void)setVideoRecordingMode:(int64_t)a3
{
  if (self->_videoRecordingMode != a3)
  {
    self->_videoRecordingMode = a3;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(GCControllerSettings *)self saveObject:v5 forKey:@"videoRecordingModeKey"];
  }
}

- (GCReplayKitGestureSettings)replayKitGestureSettings
{
  v2 = [(GCReplayKitGestureSettings *)self->_replayKitGestureSettings copy];

  return v2;
}

- (void)setReplayKitGestureSettings:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_replayKitGestureSettings)
  {
    v5 = [(NSUserDefaults *)self->_defaults BOOLForKey:@"settingsOpenedAtLeastOnce"];
    v4 = v10;
    if (v5)
    {
      v6 = +[GCAnalytics instance];
      [v6 sendSettingsRPKitGesturesCustomized:v10 from:self->_replayKitGestureSettings];

      v4 = v10;
    }
  }

  v7 = [v4 copy];
  replayKitGestureSettings = self->_replayKitGestureSettings;
  self->_replayKitGestureSettings = v7;

  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_replayKitGestureSettings requiringSecureCoding:1 error:0];
  [(GCControllerSettings *)self saveObject:v9 forKey:@"replayKitSettingsMappingKey"];
}

- (void)setGameIntentMappings:(id)a3
{
  v5 = a3;
  p_general_gameIntentMappings = &self->_general_gameIntentMappings;
  if (self->_general_gameIntentMappings != v5)
  {
    v7 = v5;
    objc_storeStrong(p_general_gameIntentMappings, a3);
    p_general_gameIntentMappings = [(GCControllerSettings *)self saveObject:v7 forKey:@"gameIntentKey"];
  }

  MEMORY[0x1EEE66BE0](p_general_gameIntentMappings);
}

- (void)setCustomizationsEnabled:(BOOL)a3
{
  if (self->_customizationsEnabled != a3)
  {
    self->_customizationsEnabled = a3;
    v5 = +[GCAnalytics instance];
    v6 = [(GCControllerSettings *)self bundleIdentifier];
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v8 = [WeakRetained productCategory];
    [v5 sendSettingsCustomizationsToggledEventForBundleID:v6 productCategory:v8 toggledOn:self->_customizationsEnabled];

    customizationsEnabled = self->_customizationsEnabled;

    [(GCControllerSettings *)self saveBool:customizationsEnabled forKey:@"customizationsEnabled"];
  }
}

- (id)staticDefaultValues
{
  v6[11] = *MEMORY[0x1E69E9840];
  v5[0] = @"hapticsEnabled";
  v5[1] = @"screenShotEnabled";
  v6[0] = MEMORY[0x1E695E118];
  v6[1] = MEMORY[0x1E695E118];
  v5[2] = @"videoRecordingEnabled";
  v5[3] = @"gameIntentKey";
  v6[2] = MEMORY[0x1E695E118];
  v6[3] = @"Button Home";
  v5[4] = @"customizedElements";
  v5[5] = @"settingsOpenedAtLeastOnce";
  v6[4] = MEMORY[0x1E695E0F0];
  v6[5] = MEMORY[0x1E695E110];
  v5[6] = @"screenShotMappingKey";
  v5[7] = @"screenShotGestureKey";
  v6[6] = &stru_1F4E3B4E0;
  v6[7] = &unk_1F4E8F170;
  v5[8] = @"videoRecordingMappingKey";
  v5[9] = @"videoRecordingGestureKey";
  v6[8] = &stru_1F4E3B4E0;
  v6[9] = &unk_1F4E8F170;
  v5[10] = @"videoRecordingModeKey";
  v6[10] = &unk_1F4E8F170;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:11];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)defaultValues
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(GCControllerSettings *)self staticDefaultValues];
  [v3 addEntriesFromDictionary:v4];

  v10 = @"customizationsEnabled";
  v5 = [(NSString *)self->_bundleIdentifier isEqualToString:@"default"];
  v6 = MEMORY[0x1E695E110];
  if (v5)
  {
    v6 = MEMORY[0x1E695E118];
  }

  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v3 addEntriesFromDictionary:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)initializeUserDefaults
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = [(GCControllerSettings *)self suiteNameForBundleIdentifier:self->_bundleIdentifier];
  v4 = getGCSettingsLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = v3;
    _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_INFO, "Initializing user defaults with suite = %@", buf, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v3];
  defaults = self->_defaults;
  self->_defaults = v5;

  v7 = self->_defaults;
  v8 = [(GCControllerSettings *)self staticDefaultValues];
  [(NSUserDefaults *)v7 registerDefaults:v8];

  [(GCControllerSettings *)self initializeElementMappings];
  v52[0] = @"elementMapping";
  v52[1] = @"hapticsEnabled";
  v52[2] = @"screenShotEnabled";
  v52[3] = @"videoRecordingEnabled";
  v52[6] = @"videoRecordingMappingKey";
  v52[7] = @"videoRecordingGestureKey";
  v52[8] = @"videoRecordingModeKey";
  v52[9] = @"replayKitSettingsMappingKey";
  v52[4] = @"screenShotMappingKey";
  v52[5] = @"screenShotGestureKey";
  v52[10] = @"gameIntentKey";
  v52[11] = @"customizationsEnabled";
  v52[12] = @"customizedElements";
  v52[13] = @"settingsOpenedAtLeastOnce";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:14];
  [(GCControllerSettings *)self observeDefaultsKeyPaths:v9];

  self->_hapticsEnabled = [(NSUserDefaults *)self->_defaults BOOLForKey:@"hapticsEnabled"];
  self->_screenShotEnabled = [(NSUserDefaults *)self->_defaults BOOLForKey:@"screenShotEnabled"];
  self->_videoRecordingEnabled = [(NSUserDefaults *)self->_defaults BOOLForKey:@"videoRecordingEnabled"];
  v10 = [(NSUserDefaults *)self->_defaults objectForKey:@"screenShotMappingKey"];
  screenShotKey = self->_screenShotKey;
  self->_screenShotKey = v10;

  v12 = [(NSUserDefaults *)self->_defaults objectForKey:@"screenShotGestureKey"];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];

    if (v12 != v13)
    {
      self->_screenShotGesture = [v12 integerValue];
    }
  }

  v51 = v12;
  v14 = [(NSUserDefaults *)self->_defaults objectForKey:@"videoRecordingMappingKey"];
  videoRecordingKey = self->_videoRecordingKey;
  self->_videoRecordingKey = v14;

  v16 = [(NSUserDefaults *)self->_defaults objectForKey:@"videoRecordingGestureKey"];
  if (v16)
  {
    v17 = [MEMORY[0x1E695DFB0] null];

    if (v16 != v17)
    {
      self->_videoRecordingGesture = [v16 integerValue];
    }
  }

  v18 = [(NSUserDefaults *)self->_defaults objectForKey:@"videoRecordingModeKey"];
  if (v18)
  {
    v19 = [MEMORY[0x1E695DFB0] null];

    if (v18 != v19)
    {
      self->_videoRecordingMode = [v18 integerValue];
    }
  }

  v20 = [(NSUserDefaults *)self->_defaults objectForKey:@"replayKitSettingsMappingKey"];
  if (v20)
  {
    v21 = [MEMORY[0x1E695DFB0] null];

    if (v20 != v21)
    {
      v22 = v3;
      v23 = v20;
      v24 = MEMORY[0x1E696ACD0];
      v25 = MEMORY[0x1E695DFD8];
      v26 = objc_opt_class();
      v27 = objc_opt_class();
      v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
      v29 = [v24 unarchivedObjectOfClasses:v28 fromData:v23 error:0];

      if (v29)
      {
        objc_storeStrong(&self->_replayKitGestureSettings, v29);
      }

      v3 = v22;
    }
  }

  [(GCControllerSettings *)self initializeReplayKitDefaultMappings];
  if ([(NSUserDefaults *)self->_defaults BOOLForKey:@"settingsOpenedAtLeastOnce"]|| !self->_settingsAppOpenedAtLeastOnce)
  {
    v30 = [(NSUserDefaults *)self->_defaults objectForKey:@"settingsOpenedAtLeastOnce"];

    if (v30)
    {
      self->_settingsAppOpenedAtLeastOnce = [(NSUserDefaults *)self->_defaults BOOLForKey:@"settingsOpenedAtLeastOnce"];
    }
  }

  else
  {
    [(GCControllerSettings *)self saveBool:1 forKey:@"settingsOpenedAtLeastOnce"];
  }

  v31 = [(NSUserDefaults *)self->_defaults objectForKey:@"gameIntentKey"];
  general_gameIntentMappings = self->_general_gameIntentMappings;
  self->_general_gameIntentMappings = v31;

  v33 = [(NSUserDefaults *)self->_defaults objectForKey:@"customizationsEnabled"];
  v34 = [(GCControllerSettings *)self defaultValues];
  v35 = [v34 objectForKey:@"customizationsEnabled"];

  if (v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = v35;
  }

  self->_customizationsEnabled = [v36 BOOLValue];
  v37 = [(NSUserDefaults *)self->_defaults arrayForKey:@"customizedElements"];
  v38 = [v37 mutableCopy];
  customizedElementSettings = self->_customizedElementSettings;
  self->_customizedElementSettings = v38;

  [(GCControllerSettings *)self populateElementSettings];
  v40 = getGCSettingsLogger();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    hapticsEnabled = self->_hapticsEnabled;
    *buf = 67109120;
    LODWORD(v54) = hapticsEnabled;
    _os_log_impl(&dword_1D2CD5000, v40, OS_LOG_TYPE_INFO, "Initialized hapticsEnabled to %d", buf, 8u);
  }

  v42 = getGCSettingsLogger();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    replayKitGestureSettings = self->_replayKitGestureSettings;
    *buf = 138412290;
    v54 = replayKitGestureSettings;
    _os_log_impl(&dword_1D2CD5000, v42, OS_LOG_TYPE_INFO, "Initialized replayKitGestureSettings to %@", buf, 0xCu);
  }

  v44 = getGCSettingsLogger();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = self->_general_gameIntentMappings;
    *buf = 138412290;
    v54 = v45;
    _os_log_impl(&dword_1D2CD5000, v44, OS_LOG_TYPE_INFO, "Initialized gameIntentMappings to %@", buf, 0xCu);
  }

  v46 = getGCSettingsLogger();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    customizationsEnabled = self->_customizationsEnabled;
    *buf = 67109120;
    LODWORD(v54) = customizationsEnabled;
    _os_log_impl(&dword_1D2CD5000, v46, OS_LOG_TYPE_INFO, "Initialized customizationsEnabled to %d", buf, 8u);
  }

  v48 = getGCSettingsLogger();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = self->_customizedElementSettings;
    *buf = 138412290;
    v54 = v49;
    _os_log_impl(&dword_1D2CD5000, v48, OS_LOG_TYPE_INFO, "Initialized customizedElementSettings to %@", buf, 0xCu);
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (void)observeDefaultsKeyPaths:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(GCControllerSettings *)self observeDefaultsKeyPath:*(*(&v10 + 1) + 8 * v8++) options:3 context:kGCSettingsContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initializeReplayKitDefaultMappings
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_controller);
    v5 = [v4 physicalInputProfile];
    v6 = [v5 elements];
    v7 = [v6 objectForKeyedSubscript:@"Button Share"];

    v8 = @"Button Options";
    if (v7)
    {
      v8 = @"Button Share";
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }

    if (v7)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v11 = v8;
    v12 = objc_alloc_init(GCReplayKitGestureSettings);
    [(GCReplayKitGestureSettings *)v12 setControllerElementMappingKey:v11];
    [(GCReplayKitGestureSettings *)v12 setSinglePressGesture:v9];
    [(GCReplayKitGestureSettings *)v12 setDoublePressGesture:v10];
    [(GCReplayKitGestureSettings *)v12 setLongPressGesture:1];
    replayKitGestureSettings = self->_replayKitGestureSettings;
    if (self->_serialized)
    {
      if (!replayKitGestureSettings || !self->_settingsAppOpenedAtLeastOnce)
      {
        objc_storeStrong(&self->_replayKitGestureSettings, v12);
        [(GCReplayKitGestureSettings *)self->_replayKitGestureSettings setControllerElementMappingKey:v11];
        v14 = getGCSettingsLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = self->_replayKitGestureSettings;
          settingsAppOpenedAtLeastOnce = self->_settingsAppOpenedAtLeastOnce;
          v18 = 138412546;
          v19 = v15;
          v20 = 1024;
          v21 = settingsAppOpenedAtLeastOnce;
          _os_log_impl(&dword_1D2CD5000, v14, OS_LOG_TYPE_INFO, "Default ReplayKit settings = {\n                              _replayKitGestureSettings = %@\n                              _settingsAppOpenedAtLeastOnce = %d\n", &v18, 0x12u);
        }
      }
    }

    else if (!replayKitGestureSettings || ![(NSUserDefaults *)self->_defaults BOOLForKey:@"settingsOpenedAtLeastOnce"])
    {
      [(GCControllerSettings *)self setReplayKitGestureSettings:v12];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)initializeElementMappings
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, a2, a3, "Initialized remapped buttons dictionary to %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v67 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = getGCSettingsLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v58 = self;
    v59 = 2112;
    v60 = v10;
    v61 = 2112;
    v62 = v11;
    v63 = 2112;
    v64 = v12;
    v65 = 2048;
    v66 = a6;
    _os_log_debug_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEBUG, "%@ observeValueForKeyPath: %@ ofObject:%@ change:%@ context:%p", buf, 0x34u);
  }

  if (kGCSettingsContext != a6)
  {
    if (kGCSettingsElementMappingsContext == a6)
    {
      v16 = [(NSMutableDictionary *)self->_elementSettings objectForKeyedSubscript:v10];
      if (v16)
      {
        v17 = v16;
        v18 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
        v19 = [MEMORY[0x1E695DFB0] null];
        v20 = [v18 isEqual:v19];

        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = v18;
        }

        [v17 setDictionaryRepresentation:v21];
        settingsChangedHandler = self->_settingsChangedHandler;
        if (settingsChangedHandler)
        {
          settingsChangedHandler[2](settingsChangedHandler, self);
        }
      }
    }

    else
    {
      v56.receiver = self;
      v56.super_class = GCControllerSettings;
      [(GCControllerSettings *)&v56 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    }

    goto LABEL_44;
  }

  if (v10 == @"elementMapping")
  {
    v14 = @"elementMappings";
    [(GCControllerSettings *)self willChangeValueForKey:@"elementMappings"];
    [(GCControllerSettings *)self initializeElementMappings];
LABEL_40:
    v34 = self;
    v35 = v14;
LABEL_41:
    [(GCControllerSettings *)v34 didChangeValueForKey:v35];
    goto LABEL_42;
  }

  if (v10 == @"hapticsEnabled")
  {
    v14 = @"hapticsEnabled";
    [(GCControllerSettings *)self willChangeValueForKey:@"hapticsEnabled"];
    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    self->_hapticsEnabled = [v15 BOOLValue];
LABEL_39:

    goto LABEL_40;
  }

  if (v10 == @"customizationsEnabled")
  {
    v14 = @"customizationsEnabled";
    [(GCControllerSettings *)self willChangeValueForKey:@"customizationsEnabled"];
    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    self->_customizationsEnabled = [v15 BOOLValue];
    goto LABEL_39;
  }

  if (@"customizedElements" == v10)
  {
    v14 = @"customizedElementSettings";
    [(GCControllerSettings *)self willChangeValueForKey:@"customizedElementSettings"];
    v23 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v24 = [v23 mutableCopy];
    customizedElementSettings = self->_customizedElementSettings;
    self->_customizedElementSettings = v24;

    [(GCControllerSettings *)self populateElementSettings];
    goto LABEL_40;
  }

  if (v10 == @"screenShotEnabled")
  {
    v14 = @"screenShotEnabled";
    [(GCControllerSettings *)self willChangeValueForKey:@"screenShotEnabled"];
    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    self->_screenShotEnabled = [v15 BOOLValue];
    goto LABEL_39;
  }

  if (v10 == @"videoRecordingEnabled")
  {
    v14 = @"videoRecordingEnabled";
    [(GCControllerSettings *)self willChangeValueForKey:@"videoRecordingEnabled"];
    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    self->_videoRecordingEnabled = [v15 BOOLValue];
    goto LABEL_39;
  }

  if (v10 == @"screenShotMappingKey")
  {
    v14 = @"screenShotMappingKey";
    [(GCControllerSettings *)self willChangeValueForKey:@"screenShotMappingKey"];
    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v26 = [v15 mutableCopy];
    screenShotKey = self->_screenShotKey;
    self->_screenShotKey = v26;
LABEL_38:

    goto LABEL_39;
  }

  if (v10 == @"screenShotGestureKey")
  {
    v28 = *MEMORY[0x1E696A4F0];
    v29 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_42;
    }

    v31 = @"screenShotGestureKey";
    [(GCControllerSettings *)self willChangeValueForKey:@"screenShotGestureKey"];
    v32 = [v12 objectForKeyedSubscript:v28];
    self->_screenShotGesture = [v32 integerValue];
    goto LABEL_49;
  }

  if (v10 == @"videoRecordingMappingKey")
  {
    v14 = @"videoRecordingMappingKey";
    [(GCControllerSettings *)self willChangeValueForKey:@"videoRecordingMappingKey"];
    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v33 = [v15 mutableCopy];
    screenShotKey = self->_videoRecordingKey;
    self->_videoRecordingKey = v33;
    goto LABEL_38;
  }

  if (v10 == @"videoRecordingGestureKey")
  {
    v38 = *MEMORY[0x1E696A4F0];
    v39 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if ((v40 & 1) == 0)
    {
      v31 = @"videoRecordingGestureKey";
      [(GCControllerSettings *)self willChangeValueForKey:@"videoRecordingGestureKey"];
      v32 = [v12 objectForKeyedSubscript:v38];
      self->_videoRecordingGesture = [v32 integerValue];
LABEL_49:

      v34 = self;
      v35 = v31;
      goto LABEL_41;
    }
  }

  else
  {
    if (v10 != @"videoRecordingModeKey")
    {
      if (v10 == @"replayKitSettingsMappingKey")
      {
        v44 = *MEMORY[0x1E696A4F0];
        v45 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
        objc_opt_class();
        v46 = objc_opt_isKindOfClass();

        if ((v46 & 1) == 0)
        {
          [(GCControllerSettings *)self willChangeValueForKey:@"replayKitSettingsMappingKey"];
          v47 = [v12 objectForKeyedSubscript:v44];
          v48 = MEMORY[0x1E696ACD0];
          v49 = MEMORY[0x1E695DFD8];
          v50 = objc_opt_class();
          v51 = objc_opt_class();
          v52 = [v49 setWithObjects:{v50, v51, objc_opt_class(), 0}];
          v53 = [v48 unarchivedObjectOfClasses:v52 fromData:v47 error:0];
          replayKitGestureSettings = self->_replayKitGestureSettings;
          self->_replayKitGestureSettings = v53;

          [(GCControllerSettings *)self didChangeValueForKey:@"replayKitSettingsMappingKey"];
        }

        goto LABEL_42;
      }

      if (v10 != @"gameIntentKey")
      {
        if (v10 != @"settingsOpenedAtLeastOnce")
        {
          goto LABEL_42;
        }

        v14 = @"settingsOpenedAtLeastOnce";
        [(GCControllerSettings *)self willChangeValueForKey:@"settingsOpenedAtLeastOnce"];
        v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
        self->_settingsAppOpenedAtLeastOnce = [v15 integerValue] != 0;
        goto LABEL_39;
      }

      v14 = @"gameIntentKey";
      [(GCControllerSettings *)self willChangeValueForKey:@"gameIntentKey"];
      v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      v55 = [v15 mutableCopy];
      screenShotKey = self->_general_gameIntentMappings;
      self->_general_gameIntentMappings = v55;
      goto LABEL_38;
    }

    v41 = *MEMORY[0x1E696A4F0];
    v42 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if ((v43 & 1) == 0)
    {
      v31 = @"videoRecordingModeKey";
      [(GCControllerSettings *)self willChangeValueForKey:@"videoRecordingModeKey"];
      v32 = [v12 objectForKeyedSubscript:v41];
      self->_videoRecordingMode = [v32 integerValue];
      goto LABEL_49;
    }
  }

LABEL_42:
  v36 = self->_settingsChangedHandler;
  if (v36)
  {
    v36[2](v36, self);
  }

LABEL_44:

  v37 = *MEMORY[0x1E69E9840];
}

- (id)mappingForElement:(id)a3
{
  v4 = a3;
  if ([v4 remappable])
  {
    elementMappings = self->_elementMappings;
    v6 = [(GCControllerSettings *)self mappingKeyForElement:v4];
    v7 = [(NSMutableDictionary *)elementMappings objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (id)mappingForButton:(id)a3
{
  v3 = [(GCControllerSettings *)self mappingForElement:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mappingForDirectionPad:(id)a3
{
  v3 = [(GCControllerSettings *)self mappingForElement:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mappingForTouchpad:(id)a3
{
  v3 = [(GCControllerSettings *)self mappingForElement:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 encodeObject:self->__elementMappingFromUserDefaults forKey:@"__elementMappingFromUserDefaults"];
  [v4 encodeBool:self->_hapticsEnabled forKey:@"_hapticsEnabled"];
  [v4 encodeBool:self->_screenShotEnabled forKey:@"_screenShotEnabled"];
  [v4 encodeBool:self->_videoRecordingEnabled forKey:@"_videoRecordingEnabled"];
  if (self->_settingsAppOpenedAtLeastOnce)
  {
    [v4 encodeObject:self->_screenShotKey forKey:@"_screenShotKey"];
    [v4 encodeInteger:self->_screenShotGesture forKey:@"_screenShotGesture"];
    [v4 encodeObject:self->_videoRecordingKey forKey:@"_videoRecordingKey"];
    [v4 encodeInteger:self->_videoRecordingGesture forKey:@"_videoRecordingGesture"];
    [v4 encodeInteger:self->_videoRecordingMode forKey:@"_videoRecordingMode"];
    [v4 encodeObject:self->_replayKitGestureSettings forKey:@"_replayKitGestureSettings"];
  }

  [v4 encodeObject:self->_general_gameIntentMappings forKey:@"_general_gameIntentMappings"];
  [v4 encodeBool:self->_customizationsEnabled forKey:@"_customizationsEnabled"];
  [v4 encodeObject:self->_customizedElementSettings forKey:@"_customizedElementSettings"];
  [v4 encodeObject:self->_elementSettings forKey:@"_elementSettings"];
  [v4 encodeObject:self->_uniqueIdentifier forKey:@"_uniqueIdentifier"];
  [v4 encodeObject:self->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [v4 encodeBool:self->_settingsAppOpenedAtLeastOnce forKey:@"_settingsAppOpenedAtLeastOnce"];
  v5 = getGCSettingsLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    hapticsEnabled = self->_hapticsEnabled;
    screenShotEnabled = self->_screenShotEnabled;
    videoRecordingEnabled = self->_videoRecordingEnabled;
    screenShotKey = self->_screenShotKey;
    screenShotGesture = self->_screenShotGesture;
    videoRecordingKey = self->_videoRecordingKey;
    videoRecordingGesture = self->_videoRecordingGesture;
    videoRecordingMode = self->_videoRecordingMode;
    general_gameIntentMappings = self->_general_gameIntentMappings;
    customizationsEnabled = self->_customizationsEnabled;
    elementMappingFromUserDefaults = self->__elementMappingFromUserDefaults;
    customizedElementSettings = self->_customizedElementSettings;
    elementSettings = self->_elementSettings;
    uniqueIdentifier = self->_uniqueIdentifier;
    bundleIdentifier = self->_bundleIdentifier;
    settingsAppOpenedAtLeastOnce = self->_settingsAppOpenedAtLeastOnce;
    v23 = 138416130;
    v24 = elementMappingFromUserDefaults;
    v25 = 1024;
    v26 = hapticsEnabled;
    v27 = 1024;
    v28 = screenShotEnabled;
    v29 = 1024;
    v30 = videoRecordingEnabled;
    v31 = 2112;
    v32 = screenShotKey;
    v33 = 1024;
    v34 = screenShotGesture;
    v35 = 2112;
    v36 = videoRecordingKey;
    v37 = 1024;
    v38 = videoRecordingGesture;
    v39 = 1024;
    v40 = videoRecordingMode;
    v41 = 2112;
    v42 = general_gameIntentMappings;
    v43 = 1024;
    v44 = customizationsEnabled;
    v45 = 2112;
    v46 = customizedElementSettings;
    v47 = 2112;
    v48 = elementSettings;
    v49 = 2112;
    v50 = uniqueIdentifier;
    v51 = 2112;
    v52 = bundleIdentifier;
    v53 = 1024;
    v54 = settingsAppOpenedAtLeastOnce;
    _os_log_impl(&dword_1D2CD5000, v5, OS_LOG_TYPE_INFO, "Encoded settings = {\n                      __elementMappingFromUserDefaults = %@\n                      _hapticsEnabled = %d\n                      _screenShotEnabled = %d\n                      _videoRecordingEnabled = %d\n                      _screenShotKey = %@\n                      _screenShotGesture = %d\n                      _videoRecordingKey = %@\n                      _videoRecordingGesture = %d\n                      _videoRecordingMode = %d\n                      _general_gameIntentMappings = %@\n                      _customizationsEnabled = %d\n                      _customizedElementSettings = %@\n                      _elementSettings = %@\n                      _uniqueIdentifier = %@\n                      _bundleIdentifier = %@\n                      _settingsAppOpenedAtLeastOnce = %d\n", &v23, 0x82u);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (GCControllerSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = GCControllerSettings;
  v5 = [(GCControllerSettings *)&v48 init];
  v6 = v5;
  if (v5)
  {
    v5->_serialized = 1;
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"__elementMappingFromUserDefaults"];
    elementMappingFromUserDefaults = v6->__elementMappingFromUserDefaults;
    v6->__elementMappingFromUserDefaults = v10;

    v6->_hapticsEnabled = [v4 decodeBoolForKey:@"_hapticsEnabled"];
    v6->_screenShotEnabled = [v4 decodeBoolForKey:@"_screenShotEnabled"];
    v6->_videoRecordingEnabled = [v4 decodeBoolForKey:@"_videoRecordingEnabled"];
    v12 = [v4 decodeBoolForKey:@"_settingsAppOpenedAtLeastOnce"];
    v6->_settingsAppOpenedAtLeastOnce = v12;
    if (v12)
    {
      v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_screenShotKey"];
      screenShotKey = v6->_screenShotKey;
      v6->_screenShotKey = v14;

      v6->_screenShotGesture = [v4 decodeIntegerForKey:@"_screenShotGesture"];
      v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_videoRecordingKey"];
      videoRecordingKey = v6->_videoRecordingKey;
      v6->_videoRecordingKey = v17;

      v6->_videoRecordingGesture = [v4 decodeIntegerForKey:@"_videoRecordingGesture"];
      v6->_videoRecordingMode = [v4 decodeIntegerForKey:@"_videoRecordingMode"];
      v19 = MEMORY[0x1E695DFD8];
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = [v19 setWithObjects:{v20, v21, objc_opt_class(), 0}];
      v23 = [v4 decodeObjectOfClasses:v22 forKey:@"_replayKitGestureSettings"];
      replayKitGestureSettings = v6->_replayKitGestureSettings;
      v6->_replayKitGestureSettings = v23;
    }

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"_general_gameIntentMappings"];
    general_gameIntentMappings = v6->_general_gameIntentMappings;
    v6->_general_gameIntentMappings = v28;

    v6->_customizationsEnabled = [v4 decodeBoolForKey:@"_customizationsEnabled"];
    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"_customizedElementSettings"];
    customizedElementSettings = v6->_customizedElementSettings;
    v6->_customizedElementSettings = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"_elementSettings"];
    elementSettings = v6->_elementSettings;
    v6->_elementSettings = v39;

    v41 = GCIPCObjectIdentifier_Classes();
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"_uniqueIdentifier"];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v44;

    v46 = gcControllerSettingsID++;
    v6->_settingsID = v46;
  }

  return v6;
}

- (void)setMappingForElement:(id)a3 toElement:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 remappable] && objc_msgSend(v7, "remappable"))
  {
    v8 = [(GCControllerSettings *)self mappingKeyForElement:v6];
    v9 = [(GCControllerSettings *)self mappingKeyForElement:v7];
    v10 = [(NSMutableDictionary *)self->_elementMappings objectForKeyedSubscript:v8];

    if (v10 == v7)
    {
      v18 = getGCSettingsLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v22 = v6;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_INFO, "%@ already maps to %@!", buf, 0x16u);
      }
    }

    else
    {
      v20 = v9;
      v11 = +[GCAnalytics instance];
      bundleIdentifier = self->_bundleIdentifier;
      WeakRetained = objc_loadWeakRetained(&self->_controller);
      v14 = [WeakRetained productCategory];
      v15 = mappingKeyForElement(v6);
      [v11 sendSettingsButtonCustomizedEventForBundleID:bundleIdentifier productCategory:v14 button:v15];

      v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_elementMappings];
      [v16 setObject:v7 forKeyedSubscript:v8];
      objc_storeStrong(&self->_elementMappings, v16);
      elementMappingFromUserDefaults = self->__elementMappingFromUserDefaults;
      if (v6 == v7)
      {
        [(NSMutableDictionary *)elementMappingFromUserDefaults removeObjectForKey:v8];
        v9 = v20;
      }

      else
      {
        v9 = v20;
        [(NSMutableDictionary *)elementMappingFromUserDefaults setObject:v20 forKeyedSubscript:v8];
      }

      if ([(NSMutableDictionary *)self->__elementMappingFromUserDefaults count])
      {
        [(GCControllerSettings *)self saveObject:self->__elementMappingFromUserDefaults forKey:@"elementMapping"];
      }

      else
      {
        [(GCControllerSettings *)self deleteObjectForKey:@"elementMapping"];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)elementSettingForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_elementSettings objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_elementSettings objectForKeyedSubscript:v4];
    }

    else
    {
      v6 = [[GCControllerElementSettings alloc] initWithElementKey:v4];
      objc_initWeak(&location, self);
      v7 = [(NSUserDefaults *)self->_defaults objectForKey:v4];
      if (v7)
      {
        [(GCControllerElementSettings *)v6 setDictionaryRepresentation:v7];
      }

      [(GCControllerSettings *)self observeDefaultsKeyPath:v4 options:1 context:kGCSettingsElementMappingsContext];
      [(NSMutableDictionary *)self->_elementSettings setObject:v6 forKeyedSubscript:v4];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __45__GCControllerSettings_elementSettingForKey___block_invoke;
      v9[3] = &unk_1E841ADB8;
      objc_copyWeak(&v11, &location);
      v10 = v4;
      [(GCControllerElementSettings *)v6 setChangedHandler:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __45__GCControllerSettings_elementSettingForKey___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = +[GCAnalytics instance];
    v5 = *(WeakRetained + 14);
    v6 = objc_loadWeakRetained(WeakRetained + 6);
    v7 = [v6 productCategory];
    v8 = [v17 mappingKey];
    [v4 sendSettingsButtonCustomizedEventForBundleID:v5 productCategory:v7 button:v8];

    LODWORD(v4) = [v17 isCustomized];
    v9 = (WeakRetained + 40);
    v10 = [*(WeakRetained + 5) containsObject:*(a1 + 32)];
    if (v4)
    {
      if ((v10 & 1) == 0)
      {
        v11 = [*(WeakRetained + 5) mutableCopy];
        [v11 addObject:*(a1 + 32)];
        v12 = *(WeakRetained + 5);
        *(WeakRetained + 5) = v11;
        v13 = v11;

        [WeakRetained saveObject:*(WeakRetained + 5) forKey:@"customizedElements"];
      }

      v14 = [v17 dictionaryRepresentation];
      v15 = [v17 mappingKey];
      [WeakRetained saveObject:v14 forKey:v15];
    }

    else
    {
      if (v10)
      {
        v16 = [*v9 mutableCopy];
        [v16 removeObject:*(a1 + 32)];
        objc_storeStrong(WeakRetained + 5, v16);
        if ([*v9 count])
        {
          [WeakRetained saveObject:*(WeakRetained + 5) forKey:@"customizedElements"];
        }

        else
        {
          [WeakRetained deleteObjectForKey:@"customizedElements"];
        }
      }

      v14 = [v17 mappingKey];
      [WeakRetained deleteObjectForKey:v14];
    }
  }
}

- (void)populateElementSettings
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_customizedElementSettings;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(GCControllerSettings *)self elementSettingForKey:*(*(&v10 + 1) + 8 * v7++), v10];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)settingsForElement:(id)a3
{
  v4 = [(GCControllerSettings *)self mappingKeyForElement:a3];
  v5 = [(GCControllerSettings *)self elementSettingForKey:v4];

  return v5;
}

- (void)eraseAllSettings
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = getGCSettingsLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_DEFAULT, "eraseAllSettings", buf, 2u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(NSUserDefaults *)self->_defaults dictionaryRepresentation];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = getGCSettingsLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v9;
          _os_log_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEFAULT, "Erasing %@...", buf, 0xCu);
        }

        v11 = [(GCControllerSettings *)self defaultValues];
        v12 = [v11 objectForKey:v9];

        defaults = self->_defaults;
        if (v12)
        {
          [(NSUserDefaults *)defaults setObject:v12 forKey:v9];
        }

        else
        {
          [(NSUserDefaults *)defaults removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v14 = getGCSettingsLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D2CD5000, v14, OS_LOG_TYPE_DEFAULT, "Initializing Replay Kit default mappings...", buf, 2u);
  }

  [(GCControllerSettings *)self initializeReplayKitDefaultMappings];
  v15 = +[GCAnalytics instance];
  bundleIdentifier = self->_bundleIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v18 = [WeakRetained productCategory];
  [v15 sendSettingsCustomizationsResetEventForBundleID:bundleIdentifier productCategory:v18];

  [GCControllerSettings setSettingsExist:0 forBundleIdentifier:self->_bundleIdentifier];
  [GCControllerSettings setSettingsExist:0 forController:self->_uniqueIdentifier forBundleIdentifier:self->_bundleIdentifier];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)restoreElementMappingToDefault
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_customizedElementSettings;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(GCControllerSettings *)self deleteObjectForKey:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(GCControllerSettings *)self deleteObjectForKey:@"customizedElements"];
  [(GCControllerSettings *)self deleteObjectForKey:@"elementMapping"];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteObjectForKey:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    defaults = self->_defaults;
    if (defaults)
    {
      v6 = [(NSUserDefaults *)defaults objectForKey:v4];

      v7 = getGCSettingsLogger();
      v8 = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(NSUserDefaults *)self->_defaults objectForKey:v4];
          v11 = 138412802;
          v12 = self;
          v13 = 2112;
          v14 = v4;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&dword_1D2CD5000, v8, OS_LOG_TYPE_DEFAULT, "%@ - deleting from disk %@ -> %@", &v11, 0x20u);
        }

        [(NSUserDefaults *)self->_defaults removeObjectForKey:v4];
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(GCControllerSettings *)self deleteObjectForKey:v4, v8];
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)refreshSettingsExist
{
  v3 = [(NSUserDefaults *)self->_defaults dictionaryRepresentation];
  v4 = [v3 count] != 0;

  [GCControllerSettings setSettingsExist:v4 forBundleIdentifier:self->_bundleIdentifier];
  uniqueIdentifier = self->_uniqueIdentifier;
  bundleIdentifier = self->_bundleIdentifier;

  [GCControllerSettings setSettingsExist:v4 forController:uniqueIdentifier forBundleIdentifier:bundleIdentifier];
}

- (void)saveObject:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_defaults)
  {
    v8 = getGCSettingsLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412802;
      v11 = self;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1D2CD5000, v8, OS_LOG_TYPE_DEFAULT, "%@ - saving to disk %@ -> %@", &v10, 0x20u);
    }

    [(NSUserDefaults *)self->_defaults setObject:v6 forKey:v7];
    [(GCControllerSettings *)self refreshSettingsExist];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  settingsID = self->_settingsID;
  v6 = [(GCControllerSettings *)self suiteNameForBundleIdentifier:self->_bundleIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ id=%lu suite=%@>", v4, settingsID, v6];

  return v7;
}

- (void)observeDefaultsKeyPath:(uint64_t)a3 options:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, a2, a3, "Observe: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteObjectForKey:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_ERROR, "%@ - attempting to delete %@ from disk, but it doesn't exist!", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end