@interface AKAgeRangeSettingsCache
- (AKAgeRangeSettingsCache)init;
- (id)_configurationValueForKey:(id)a3;
- (int)_u13AgeLimit;
- (int)_u18AgeLimit;
- (void)_setConfigurationValue:(id)a3 forKey:(id)a4;
- (void)_setU13AgeLimit:(int64_t)a3;
- (void)_setU18AgeLimit:(int64_t)a3;
- (void)_updateAgeRangeSettings;
- (void)clearAgeRangeCache;
- (void)dealloc;
- (void)updateAgeRangeCacheWithGlobalConfig:(id)a3;
@end

@implementation AKAgeRangeSettingsCache

- (AKAgeRangeSettingsCache)init
{
  v22 = a2;
  v23 = 0;
  v21.receiver = self;
  v21.super_class = AKAgeRangeSettingsCache;
  v23 = [(AKAgeRangeSettingsCache *)&v21 init];
  objc_storeStrong(&v23, v23);
  if (v23)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.authkit.ageRangeNotifQueue", v13);
    notificationQueue = v23->_notificationQueue;
    v23->_notificationQueue = v2;
    MEMORY[0x1E69E5920](notificationQueue);
    MEMORY[0x1E69E5920](v13);
    v20 = 0;
    v23->_unfairLock._os_unfair_lock_opaque = 0;
    if ([(AKAgeRangeSettingsCache *)v23 _u13AgeLimit]> 0 && [(AKAgeRangeSettingsCache *)v23 _u18AgeLimit]> 0)
    {
      v12 = [AKAgeRangeSettings alloc];
      v11 = [(AKAgeRangeSettingsCache *)v23 _u13AgeLimit];
      v4 = [(AKAgeRangeSettings *)v12 initWithU13Limit:v11 u18Limit:[(AKAgeRangeSettingsCache *)v23 _u18AgeLimit]];
      ageRangeSettings = v23->_ageRangeSettings;
      v23->_ageRangeSettings = v4;
      MEMORY[0x1E69E5920](ageRangeSettings);
    }

    name = _AKAgeRangeSettingsCacheInternalChangeNotification;
    out_token = &v23->_notificationToken;
    queue = v23->_notificationQueue;
    v14 = MEMORY[0x1E69E9820];
    v15 = -1073741824;
    v16 = 0;
    v17 = __31__AKAgeRangeSettingsCache_init__block_invoke;
    v18 = &unk_1E73D6088;
    v19 = MEMORY[0x1E69E5928](v23);
    notify_register_dispatch(name, out_token, queue, &v14);
    objc_storeStrong(&v19, 0);
  }

  v7 = MEMORY[0x1E69E5928](v23);
  objc_storeStrong(&v23, 0);
  return v7;
}

- (int)_u13AgeLimit
{
  v3 = [(AKAgeRangeSettingsCache *)self _configurationValueForKey:@"U13Limit"];
  v4 = [v3 intValue];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

- (int)_u18AgeLimit
{
  v3 = [(AKAgeRangeSettingsCache *)self _configurationValueForKey:@"U18Limit"];
  v4 = [v3 intValue];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_notificationToken)
  {
    notify_cancel(v4->_notificationToken);
  }

  v2.receiver = v4;
  v2.super_class = AKAgeRangeSettingsCache;
  [(AKAgeRangeSettingsCache *)&v2 dealloc];
}

- (id)_configurationValueForKey:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v16 = CFPreferencesCopyAppValue(location[0], @"com.apple.AuthKit.AgeRangeSettingsCache");
    v6 = v16;
    v3 = v16;
    v9 = v6;
    if (v9)
    {
      v15 = MEMORY[0x1E69E5928](v9);
    }

    else
    {
      v15 = 0;
    }

    v10 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v13 = _AKLogSystem();
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_error_impl(&dword_193225000, log, type, "Nil key!", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    v15 = 0;
    v10 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v15;

  return v4;
}

- (void)_setConfigurationValue:(id)a3 forKey:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  if (v10)
  {
    CFPreferencesSetAppValue(v10, location[0], @"com.apple.AuthKit.AgeRangeSettingsCache");
    CFPreferencesSynchronize(@"com.apple.AuthKit.AgeRangeSettingsCache", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_193225000, log, type, "Nil key!", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_setU13AgeLimit:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [AKAgeRangeSettingsCache _setConfigurationValue:"_setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)_setU18AgeLimit:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [AKAgeRangeSettingsCache _setConfigurationValue:"_setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)updateAgeRangeCacheWithGlobalConfig:(id)a3
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v21 = [MEMORY[0x1E695DF58] currentLocale];
    v20 = [v21 objectForKey:*MEMORY[0x1E695D978]];
    v35 = [v20 uppercaseString];
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v21);
    v34 = [location[0] objectForKeyedSubscript:@"countries"];
    v32 = 0;
    v22 = 1;
    if (v34)
    {
      v33 = [v34 objectForKeyedSubscript:v35];
      v32 = 1;
      v22 = v33 == 0;
    }

    if (v32)
    {
      MEMORY[0x1E69E5920](v33);
    }

    if (v22)
    {
      v31 = _AKLogSystem();
      v30 = 16;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v18 = v31;
        type = v30;
        __os_log_helper_16_0_0(v29);
        _os_log_error_impl(&dword_193225000, v18, type, "Global config has no countries or target country. Defaulting to use local values.", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
      v17 = +[AKAgeRangeSettingsExtractor defaultConfigDictionary];
      v3 = [v17 objectForKeyedSubscript:@"countries"];
      v4 = v34;
      v34 = v3;
      MEMORY[0x1E69E5920](v4);
      MEMORY[0x1E69E5920](v17);
    }

    v15 = objc_opt_class();
    v16 = [v34 objectForKeyedSubscript:v35];
    v28 = _AKSafeCast_7(v15, v16);
    MEMORY[0x1E69E5920](v16);
    if (!v28)
    {
      v27 = _AKLogSystem();
      v26 = 16;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v13 = v27;
        v14 = v26;
        __os_log_helper_16_0_0(v25);
        _os_log_error_impl(&dword_193225000, v13, v14, "No entry found for account country. Defaulting to US", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
      v11 = objc_opt_class();
      v12 = [v34 objectForKeyedSubscript:@"US"];
      v5 = _AKSafeCast_7(v11, v12);
      v6 = v28;
      v28 = v5;
      MEMORY[0x1E69E5920](v6);
      MEMORY[0x1E69E5920](v12);
    }

    v7 = [v28 objectForKeyedSubscript:@"U13"];
    v8 = [v7 intValue];
    MEMORY[0x1E69E5920](v7);
    v9 = [v28 objectForKeyedSubscript:@"U18"];
    v10 = [v9 intValue];
    MEMORY[0x1E69E5920](v9);
    [(AKAgeRangeSettingsCache *)v41 _setU13AgeLimit:v8];
    [(AKAgeRangeSettingsCache *)v41 _setU18AgeLimit:v10];
    notify_post(_AKAgeRangeSettingsCacheInternalChangeNotification);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    v36 = 0;
  }

  else
  {
    v39 = _AKLogSystem();
    v38 = 16;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      log = v39;
      v24 = v38;
      __os_log_helper_16_0_0(v37);
      _os_log_error_impl(&dword_193225000, log, v24, "AKAgeRangeSettingsCache - Missing dictionary!", v37, 2u);
    }

    objc_storeStrong(&v39, 0);
    v36 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)clearAgeRangeCache
{
  v9 = self;
  v8[1] = a2;
  [AKAgeRangeSettingsCache _setConfigurationValue:"_setConfigurationValue:forKey:" forKey:?];
  [(AKAgeRangeSettingsCache *)v9 _setConfigurationValue:0 forKey:@"U18Limit"];
  v2 = v9;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __45__AKAgeRangeSettingsCache_clearAgeRangeCache__block_invoke;
  v7 = &unk_1E73D34C0;
  v8[0] = MEMORY[0x1E69E5928](v9);
  aaf_unfair_lock_perform(&v2->_unfairLock, &v3);
  notify_post(_AKAgeRangeSettingsCacheInternalChangeNotification);
  objc_storeStrong(v8, 0);
}

- (void)_updateAgeRangeSettings
{
  v18 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v16 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v16;
    __os_log_helper_16_0_0(v15);
    _os_log_debug_impl(&dword_193225000, log, type, "Cached age range configurations have changed. Clearing cache...", v15, 2u);
  }

  objc_storeStrong(location, 0);
  v14 = [(AKAgeRangeSettingsCache *)v18 _u13AgeLimit];
  v13 = [(AKAgeRangeSettingsCache *)v18 _u18AgeLimit];
  [(AKAgeRangeSettingsCache *)v18 willChangeValueForKey:?];
  p_unfairLock = &v18->_unfairLock;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __50__AKAgeRangeSettingsCache__updateAgeRangeSettings__block_invoke;
  v9 = &unk_1E73D66E8;
  v10 = MEMORY[0x1E69E5928](v18);
  v11 = v14;
  v12 = v13;
  aaf_unfair_lock_perform(p_unfairLock, &v5);
  [(AKAgeRangeSettingsCache *)v18 didChangeValueForKey:@"ageRangeSettings"];
  objc_storeStrong(&v10, 0);
}

uint64_t __50__AKAgeRangeSettingsCache__updateAgeRangeSettings__block_invoke(uint64_t a1)
{
  v1 = [[AKAgeRangeSettings alloc] initWithU13Limit:*(a1 + 40) u18Limit:*(a1 + 44)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = v1;
  return MEMORY[0x1E69E5920](v3);
}

@end