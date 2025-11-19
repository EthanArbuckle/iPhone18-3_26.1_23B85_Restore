@interface AXMSettings
+ (id)settings;
- (BOOL)useANODModelForAXElementVision;
- (BOOL)writeOutInputImages;
- (BOOL)writeOutOCRInputImages;
- (BOOL)writeOutScreenCaptures;
- (id)_init;
- (void)_queue_removeObserver:(id)a3 forSetting:(id)a4;
- (void)addObserver:(id)a3 forSeetting:(id)a4 withBlock:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObserver:(id)a3 forSetting:(id)a4;
- (void)removeObserverForAllSettings:(id)a3;
- (void)setUseANODModelForAXElementVision:(BOOL)a3;
- (void)setWriteOutInputImages:(BOOL)a3;
- (void)setWriteOutOCRInputImages:(BOOL)a3;
- (void)setWriteOutScreenCaptures:(BOOL)a3;
@end

@implementation AXMSettings

+ (id)settings
{
  if (settings_onceToken != -1)
  {
    +[AXMSettings settings];
  }

  v3 = settings__Settings;

  return v3;
}

void __23__AXMSettings_settings__block_invoke()
{
  v0 = [[AXMSettings alloc] _init];
  v1 = settings__Settings;
  settings__Settings = v0;
}

- (id)_init
{
  v15[4] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AXMSettings;
  v2 = [(AXMSettings *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXMSetting", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    queue_settingObservers = v2->_queue_settingObservers;
    v2->_queue_settingObservers = v5;

    v7 = objc_alloc(MEMORY[0x1E695E000]);
    v8 = [v7 initWithSuiteName:AXMBundleID];
    defaults = v2->_defaults;
    v2->_defaults = v8;

    v10 = v2->_defaults;
    v14[0] = @"writeOutInputImages";
    v14[1] = @"writeOutOCRInputImages";
    v15[0] = MEMORY[0x1E695E110];
    v15[1] = MEMORY[0x1E695E110];
    v14[2] = @"writeOutScreenCaptures";
    v14[3] = @"useANODModelForAXElementVision";
    v15[2] = MEMORY[0x1E695E110];
    v15[3] = MEMORY[0x1E695E118];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
    [(NSUserDefaults *)v10 registerDefaults:v11];

    [(NSUserDefaults *)v2->_defaults addObserver:v2 forKeyPath:@"writeOutInputImages" options:1 context:AXMSettingsKVOContext];
    [(NSUserDefaults *)v2->_defaults addObserver:v2 forKeyPath:@"writeOutOCRInputImages" options:1 context:AXMSettingsKVOContext];
    [(NSUserDefaults *)v2->_defaults addObserver:v2 forKeyPath:@"writeOutScreenCaptures" options:1 context:AXMSettingsKVOContext];
    [(NSUserDefaults *)v2->_defaults addObserver:v2 forKeyPath:@"useANODModelForAXElementVision" options:1 context:AXMSettingsKVOContext];
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if (AXMSettingsKVOContext == a6)
  {
    v12 = AXMediaLogSettings();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1AE37B000, v12, OS_LOG_TYPE_INFO, "Did get KVO update for key: '%@'. change: %@", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AXMSettings_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E7A1CB30;
    block[4] = self;
    v16 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AXMSettings;
    [(AXMSettings *)&v14 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
  }
}

void __62__AXMSettings_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = MEMORY[0x1B2700900](*(*(*(&v9 + 1) + 8 * v6) + 16));
        v8 = v7;
        if (v7)
        {
          (*(v7 + 16))(v7, *(a1 + 32));
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)addObserver:(id)a3 forSeetting:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__AXMSettings_addObserver_forSeetting_withBlock___block_invoke;
  v15[3] = &unk_1E7A1CF70;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_sync(queue, v15);
}

void __49__AXMSettings_addObserver_forSeetting_withBlock___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    [*(*(a1 + 32) + 24) setObject:? forKeyedSubscript:?];
  }

  v2 = objc_alloc_init(_AXMSettingObserver);
  objc_storeWeak(&v2->observer, *(a1 + 48));
  v3 = MEMORY[0x1B2700900](*(a1 + 56));
  callback = v2->callback;
  v2->callback = v3;

  [v5 addObject:v2];
}

- (void)removeObserver:(id)a3 forSetting:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AXMSettings_removeObserver_forSetting___block_invoke;
  block[3] = &unk_1E7A1D5C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)_queue_removeObserver:(id)a3 forSetting:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AXMSettings__queue_removeObserver_forSetting___block_invoke;
  block[3] = &unk_1E7A1D5C8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, block);
}

void __48__AXMSettings__queue_removeObserver_forSetting___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  if ([v2 count])
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * v8);
          WeakRetained = objc_loadWeakRetained((v9 + 8));
          if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained((v9 + 8)), v13 = a1[6], v12, v11, v12 == v13))
          {
            [v3 addObject:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    [v4 removeObjectsInArray:v3];
    v2 = v14;
  }
}

- (void)removeObserverForAllSettings:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AXMSettings_removeObserverForAllSettings___block_invoke;
  v7[3] = &unk_1E7A1CB30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __44__AXMSettings_removeObserverForAllSettings___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 24) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _queue_removeObserver:*(a1 + 40) forSetting:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)writeOutInputImages
{
  v3 = AXMHasInternalSecurityPrivilages();
  if (v3)
  {
    defaults = self->_defaults;

    LOBYTE(v3) = [(NSUserDefaults *)defaults BOOLForKey:@"writeOutInputImages"];
  }

  return v3;
}

- (void)setWriteOutInputImages:(BOOL)a3
{
  v3 = a3;
  if (AXMHasInternalSecurityPrivilages())
  {
    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setBool:v3 forKey:@"writeOutInputImages"];
  }
}

- (BOOL)writeOutOCRInputImages
{
  v3 = AXMHasInternalSecurityPrivilages();
  if (v3)
  {
    defaults = self->_defaults;

    LOBYTE(v3) = [(NSUserDefaults *)defaults BOOLForKey:@"writeOutOCRInputImages"];
  }

  return v3;
}

- (void)setWriteOutOCRInputImages:(BOOL)a3
{
  v3 = a3;
  if (AXMHasInternalSecurityPrivilages())
  {
    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setBool:v3 forKey:@"writeOutOCRInputImages"];
  }
}

- (BOOL)writeOutScreenCaptures
{
  v3 = AXMHasInternalSecurityPrivilages();
  if (v3)
  {
    defaults = self->_defaults;

    LOBYTE(v3) = [(NSUserDefaults *)defaults BOOLForKey:@"writeOutScreenCaptures"];
  }

  return v3;
}

- (void)setWriteOutScreenCaptures:(BOOL)a3
{
  v3 = a3;
  if (AXMHasInternalSecurityPrivilages())
  {
    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setBool:v3 forKey:@"writeOutScreenCaptures"];
  }
}

- (BOOL)useANODModelForAXElementVision
{
  if (!AXMHasInternalSecurityPrivilages())
  {
    return 1;
  }

  defaults = self->_defaults;

  return [(NSUserDefaults *)defaults BOOLForKey:@"useANODModelForAXElementVision"];
}

- (void)setUseANODModelForAXElementVision:(BOOL)a3
{
  v3 = a3;
  if (AXMHasInternalSecurityPrivilages())
  {
    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setBool:v3 forKey:@"useANODModelForAXElementVision"];
  }
}

@end