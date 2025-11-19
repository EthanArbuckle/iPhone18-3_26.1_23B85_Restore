@interface ADASManager
- (ADASManager)init;
- (BOOL)_isAlertSupported;
- (BOOL)_isDeviceMandatoryForHAENotification:(BOOL)a3;
- (BOOL)nanoSettingsAvailable;
- (BOOL)shouldSufaceHAENotificationMigrationAlert;
- (id)_getCurrentVolumeLimit;
- (id)_getDefaultsFor:(id)a3;
- (id)_getDefaultsKey:(id)a3;
- (id)_getDeviceSpecificDefaultsFor:(id)a3;
- (id)_migrateVolumeLimitThreshold:(BOOL)a3;
- (id)_setDefaultValueIfNeeded:(id)a3 nano:(BOOL)a4 sync:(BOOL)a5;
- (id)_setDefaultsFor:(id)a3 value:(id)a4;
- (id)_setDeviceSpecificDefaultsFor:(id)a3 value:(id)a4;
- (id)getNanoPreferenceFor:(id)a3;
- (id)getNanoPreferencesFor:(id)a3;
- (id)getPreferenceFor:(id)a3;
- (id)getPreferencesFor:(id)a3;
- (id)setNanoPreferenceFor:(id)a3 value:(id)a4 notify:(BOOL)a5;
- (id)setPreferenceFor:(id)a3 value:(id)a4 notify:(BOOL)a5;
- (void)_clearCurrentVolumeLimit;
- (void)_donateSignalToTipsKit:(BOOL)a3;
- (void)_getCurrentVolumeLimit;
- (void)_notify:(id)a3;
- (void)_syncNanoDeviceSpecificForRead:(id)a3;
- (void)_syncNanoForRead:(id)a3;
- (void)_syncNanoForWrite:(id)a3;
- (void)didSurfaceMigrationAlert;
- (void)migrateKeyEnableHAEHKMeasurement:(BOOL)a3;
- (void)removeNanoPreferenceFor:(id)a3 notify:(BOOL)a4;
- (void)removePreferenceFor:(id)a3 notify:(BOOL)a4;
@end

@implementation ADASManager

- (ADASManager)init
{
  v6.receiver = self;
  v6.super_class = ADASManager;
  v2 = [(ADASManager *)&v6 init];
  if (v2)
  {
    v3 = +[ADASPreferenceStore sharedInstance];
    prefStore = v2->_prefStore;
    v2->_prefStore = v3;
  }

  return v2;
}

- (id)setPreferenceFor:(id)a3 value:(id)a4 notify:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = ADAFLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_241579000, v10, OS_LOG_TYPE_DEFAULT, "set preference for %@ to %@", &v23, 0x16u);
  }

  v11 = [(ADASManager *)self _getDefaultsKey:v8];
  if (!v11)
  {
    v15 = "yek!";
LABEL_11:
    v13 = [(ADASManager *)self _error:*v15];
    goto LABEL_22;
  }

  if (!v9)
  {
    v16 = ADAFLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setPreferenceFor:value:notify:];
    }

    v15 = "lav!";
    goto LABEL_11;
  }

  v12 = [(ADASManager *)self _setDefaultsFor:v11 value:v9];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [(ADASManager *)self _setChainedKeys:v8 val:v9 nano:0 modifiedKeys:0];
    if (v14)
    {
      v17 = ADAFLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ADASManager setPreferenceFor:value:notify:];
      }
    }

    [(ADASManager *)self _sync];
    if (v5)
    {
      v18 = [(ADASPreferenceStore *)self->_prefStore specialDarwinKeys];
      v19 = [v18 objectForKey:v8];

      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = @"AppleHAESettingsChanged";
      }

      [(ADASManager *)self _notify:v20];
    }
  }

LABEL_22:
  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)setNanoPreferenceFor:(id)a3 value:(id)a4 notify:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (![(ADASManager *)self nanoSettingsAvailable])
  {
    v17 = ADAFLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setNanoPreferenceFor:value:notify:];
    }

    v18 = "nan!";
    goto LABEL_19;
  }

  if (!v9)
  {
    v19 = ADAFLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setPreferenceFor:value:notify:];
    }

    v18 = "lav!";
LABEL_19:
    v16 = [(ADASManager *)self _error:*v18];
    goto LABEL_22;
  }

  v10 = [(ADASManager *)self _getDefaultsKey:v8];
  if (v10)
  {
    v11 = ADAFLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v10;
      _os_log_impl(&dword_241579000, v11, OS_LOG_TYPE_DEFAULT, "setting nano preference for key: %@", buf, 0xCu);
    }

    v12 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    [v12 setObject:v9 forKey:v10];

    v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v10, 0}];
    v14 = [(ADASManager *)self _setChainedKeys:v8 val:v9 nano:1 modifiedKeys:v13];
    if (v14)
    {
      v15 = ADAFLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ADASManager setNanoPreferenceFor:value:notify:];
      }
    }

    [(ADASManager *)self _syncNanoForWrite:v13];
    if (v5)
    {
      [(ADASManager *)self _notify:@"NanoHAESettingsChanged"];
    }

    v16 = 0;
  }

  else
  {
    v16 = [(ADASManager *)self _error:*"yek!"];
  }

LABEL_22:
  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)getPreferenceFor:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ADASManager *)self _sync];
  v5 = [(ADASManager *)self _getSpecialKeys:v4 nano:0];
  if (!v5)
  {
    v6 = [(ADASManager *)self _getDefaultsKey:v4];
    if (v6)
    {
      v5 = [(ADASManager *)self _getDefaultsFor:v6];
      if (!v5)
      {
        v5 = [(ADASManager *)self _setDefaultValueIfNeeded:v6 nano:0 sync:1];
      }
    }

    else
    {
      v7 = ADAFLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ADASManager getPreferenceFor:];
      }

      v5 = 0;
    }
  }

  v8 = ADAFLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_241579000, v8, OS_LOG_TYPE_DEFAULT, "get preference: %@ -> %@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getNanoPreferenceFor:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ADAFLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_241579000, v5, OS_LOG_TYPE_DEFAULT, "get nano preference for %@", &v17, 0xCu);
  }

  if ([(ADASManager *)self nanoSettingsAvailable])
  {
    v6 = [(ADASManager *)self _getSpecialKeys:v4 nano:1];
    if (v6)
    {
      goto LABEL_19;
    }

    v7 = [(ADASManager *)self _getDefaultsKey:v4];
    v8 = v7;
    if (v7)
    {
      v9 = MEMORY[0x277CBEB98];
      v21[0] = v7;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      v11 = [v9 setWithArray:v10];
      [(ADASManager *)self _syncNanoForRead:v11];

      v12 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
      v6 = [v12 objectForKey:v8];

      if (!v6)
      {
        v6 = [(ADASManager *)self _setDefaultValueIfNeeded:v8 nano:1 sync:1];
        goto LABEL_18;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_18:

LABEL_19:
        v14 = ADAFLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412546;
          v18 = v4;
          v19 = 2112;
          v20 = v6;
          _os_log_impl(&dword_241579000, v14, OS_LOG_TYPE_DEFAULT, "get nano preference: %@ -> %@", &v17, 0x16u);
        }

        goto LABEL_21;
      }

      v13 = ADAFLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ADASManager getNanoPreferenceFor:];
      }
    }

    else
    {
      v6 = ADAFLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [ADASManager getNanoPreferenceFor:];
      }
    }

    v6 = 0;
    goto LABEL_18;
  }

  v14 = ADAFLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ADASManager setNanoPreferenceFor:value:notify:];
  }

  v6 = 0;
LABEL_21:

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)removePreferenceFor:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ADAFLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_DEFAULT, "remove preference for %@", &v15, 0xCu);
  }

  v8 = [(ADASManager *)self _getDefaultsKey:v6];
  if (!v8)
  {
    v12 = ADAFLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ADASManager removePreferenceFor:notify:];
    }

    goto LABEL_11;
  }

  v9 = [(ADASManager *)self _setDefaultsFor:v8 value:0];
  v10 = [(ADASManager *)self _setChainedKeys:v6 val:0 nano:0 modifiedKeys:0];
  [(ADASManager *)self _sync];
  if (v4)
  {
    v11 = [(ADASPreferenceStore *)self->_prefStore specialDarwinKeys];
    v12 = [v11 objectForKey:v6];

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"AppleHAESettingsChanged";
    }

    [(ADASManager *)self _notify:v13];
LABEL_11:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeNanoPreferenceFor:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ADAFLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_DEFAULT, "remove nano preference for %@", buf, 0xCu);
  }

  if ([(ADASManager *)self nanoSettingsAvailable])
  {
    v8 = [(ADASManager *)self _getDefaultsKey:v6];
    v9 = ADAFLog();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&dword_241579000, v10, OS_LOG_TYPE_DEFAULT, "removing nano preference for defaults key %@", buf, 0xCu);
      }

      v11 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
      [v11 removeObjectForKey:v8];

      v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v8, 0}];
      v12 = [(ADASManager *)self _setChainedKeys:v6 val:0 nano:1 modifiedKeys:v10];
      if (v12)
      {
        v13 = ADAFLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [ADASManager removeNanoPreferenceFor:notify:];
        }
      }

      [(ADASManager *)self _syncNanoForWrite:v10];
      if (v4)
      {
        [(ADASManager *)self _notify:@"NanoHAESettingsChanged"];
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ADASManager getPreferenceFor:];
    }
  }

  else
  {
    v8 = ADAFLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setNanoPreferenceFor:value:notify:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)getPreferencesFor:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(ADASManager *)self _sync];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __33__ADASManager_getPreferencesFor___block_invoke;
  v13 = &unk_278CE1308;
  v14 = self;
  v15 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  [(ADASManager *)self _sync:v10];
  v8 = [v7 copy];

  return v8;
}

void __33__ADASManager_getPreferencesFor___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _getSpecialKeys:v3 nano:0];
  if (v4)
  {
    v5 = v4;
    goto LABEL_3;
  }

  v8 = [*(a1 + 32) _getDefaultsKey:v3];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 32) _getDefaultsFor:v8];
    if (v10)
    {
      v5 = v10;
    }

    else
    {
      v5 = [*(a1 + 32) _setDefaultValueIfNeeded:v9 nano:0 sync:0];

      if (!v5)
      {
        goto LABEL_4;
      }
    }

LABEL_3:
    [*(a1 + 40) setObject:v5 forKey:v3];
LABEL_4:
    v6 = ADAFLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_241579000, v6, OS_LOG_TYPE_DEFAULT, "get preferences for: %@ -> %@", &v11, 0x16u);
    }

    goto LABEL_7;
  }

  v5 = ADAFLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __33__ADASManager_getPreferencesFor___block_invoke_cold_1();
  }

LABEL_7:

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getNanoPreferencesFor:(id)a3
{
  v4 = a3;
  if ([(ADASManager *)self nanoSettingsAvailable])
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
    [(ADASManager *)self _syncNanoForRead:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __37__ADASManager_getNanoPreferencesFor___block_invoke;
    v14 = &unk_278CE1308;
    v15 = self;
    v16 = v6;
    v7 = v6;
    [v4 enumerateObjectsUsingBlock:&v11];
    v8 = [MEMORY[0x277CBEB98] setWithArray:{v4, v11, v12, v13, v14, v15}];
    [(ADASManager *)self _syncNanoForWrite:v8];

    v9 = [v7 copy];
  }

  else
  {
    v7 = ADAFLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setNanoPreferenceFor:value:notify:];
    }

    v9 = 0;
  }

  return v9;
}

void __37__ADASManager_getNanoPreferencesFor___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _getSpecialKeys:v3 nano:1];
  if (!v4)
  {
    v6 = [*(a1 + 32) _getDefaultsKey:v3];
    if (!v6)
    {
      v8 = ADAFLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __37__ADASManager_getNanoPreferencesFor___block_invoke_cold_2();
      }

      v5 = 0;
      goto LABEL_15;
    }

    v7 = [*(*(a1 + 32) + 8) coreAudioDomain];
    v5 = [v7 objectForKey:v6];

    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = ADAFLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __37__ADASManager_getNanoPreferencesFor___block_invoke_cold_1();
        }

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v5 = [*(a1 + 32) _setDefaultValueIfNeeded:v6 nano:1 sync:0];
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    [*(a1 + 40) setObject:v5 forKey:v3];
LABEL_13:
    v8 = ADAFLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_241579000, v8, OS_LOG_TYPE_DEFAULT, "get preferences for: %@ -> %@", &v10, 0x16u);
    }

    goto LABEL_15;
  }

  v5 = v4;
  [*(a1 + 40) setObject:v4 forKey:v3];
LABEL_16:

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_setDefaultsFor:(id)a3 value:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = ADAFLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = [(__CFString *)v5 UTF8String];
      _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_DEFAULT, "removing key: %s", &v10, 0xCu);
    }
  }

  CFPreferencesSetAppValue(v5, v6, @"com.apple.coreaudio");

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_setDeviceSpecificDefaultsFor:(id)a3 value:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = ADAFLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_DEFAULT, "removing key: %@", &v10, 0xCu);
    }
  }

  CFPreferencesSetAppValue(v5, v6, @"com.apple.coreaudio.device");

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_getDefaultsFor:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.coreaudio");

  return v3;
}

- (id)_getDeviceSpecificDefaultsFor:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, @"com.apple.coreaudio.device");

  return v3;
}

- (void)_notify:(id)a3
{
  name = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)_syncNanoForRead:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 synchronizeNanoDomain:@"com.apple.coreaudio" keys:v4];

  v7 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
  v6 = [v7 synchronize];
}

- (void)_syncNanoDeviceSpecificForRead:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 synchronizeNanoDomain:@"com.apple.coreaudio.device" keys:v4];

  v7 = [(ADASPreferenceStore *)self->_prefStore coreAudioDeviceDomain];
  v6 = [v7 synchronize];
}

- (void)_syncNanoForWrite:(id)a3
{
  prefStore = self->_prefStore;
  v4 = a3;
  v5 = [(ADASPreferenceStore *)prefStore coreAudioDomain];
  v6 = [v5 synchronize];

  v7 = objc_opt_new();
  [v7 synchronizeNanoDomain:@"com.apple.coreaudio" keys:v4];
}

- (id)_setDefaultValueIfNeeded:(id)a3 nano:(BOOL)a4 sync:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(ADASPreferenceStore *)self->_prefStore defaultValues];
  v10 = [v9 objectForKey:v8];

  if (v10)
  {
    v11 = [v8 isEqualToString:@"EnableHAELiveMonitor"];
    if (v6)
    {
      if (v11)
      {
        v12 = [(ADASPreferenceStore *)self->_prefStore coreAudioDeviceDomain];
        v13 = [v12 objectForKey:@"HAENFeatureMandatory"];

        if (v13 && ([v13 BOOLValue] & 1) == 0)
        {

          v10 = &unk_28533CDF0;
        }
      }

      v14 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
      [v14 setObject:v10 forKey:v8];

      if (v5)
      {
        v15 = MEMORY[0x277CBEB98];
        v28[0] = v8;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
        v17 = [v15 setWithArray:v16];
        [(ADASManager *)self _syncNanoForWrite:v17];
      }
    }

    else
    {
      if (v11)
      {
        v18 = [(ADASManager *)self _getDeviceSpecificDefaultsFor:@"HAENFeatureMandatory"];
        v19 = v18;
        if (v18 && ([v18 BOOLValue] & 1) == 0)
        {

          v10 = &unk_28533CDF0;
        }
      }

      v20 = [(ADASManager *)self _setDefaultsFor:v8 value:v10];
      if (v5)
      {
        [(ADASManager *)self _sync];
      }
    }

    v21 = ADAFLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_241579000, v21, OS_LOG_TYPE_DEFAULT, "setting default value for key [ %@ ] -> [ %@ ]", &v24, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)migrateKeyEnableHAEHKMeasurement:(BOOL)a3
{
  v3 = a3;
  v21[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = MEMORY[0x277CBEB98];
    v21[0] = @"EnableHAEHKWrite";
    v21[1] = @"HAENSampleTransient";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v7 = [v5 setWithArray:v6];
    [(ADASManager *)self _syncNanoForRead:v7];

    v8 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    v9 = [v8 objectForKey:@"EnableHAEHKWrite"];

    v10 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    v11 = [v10 objectForKey:@"HAENSampleTransient"];

    if (!v11)
    {
LABEL_5:
      v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v13 = v12;
      if (v9)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "BOOLValue") ^ 1}];

        if (([v9 BOOLValue] & 1) == 0)
        {
          if (v3)
          {
            v14 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
            v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
            [v14 setObject:v15 forKey:@"HAENSurfaceMigrationAlert"];

LABEL_11:
            v16 = [(ADASManager *)self setNanoPreferenceFor:@"_ADAFPreferenceKeyHAESampleTransient" value:v11 notify:0];
            goto LABEL_14;
          }

          v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v18 = [(ADASManager *)self _setDefaultsFor:@"HAENSurfaceMigrationAlert" value:v17];

LABEL_13:
          v19 = [(ADASManager *)self _setDefaultsFor:@"HAENSampleTransient" value:v11];
          [(ADASManager *)self _sync];
          goto LABEL_14;
        }
      }

      else
      {
        v11 = v12;
      }

      if (v3)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = [(ADASManager *)self _getDefaultsFor:@"EnableHAEHKWrite"];
    v11 = [(ADASManager *)self _getDefaultsFor:@"HAENSampleTransient"];
    if (!v11)
    {
      goto LABEL_5;
    }
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_migrateVolumeLimitThreshold:(BOOL)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  if (a3)
  {
    v5 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    v18 = [v5 objectForKey:@"VolumeLimitThreshold"];
  }

  else
  {
    v18 = [(ADASManager *)self _getDefaultsFor:@"VolumeLimitThreshold"];
  }

  v6 = v14[5];
  if (!v6)
  {
    v7 = dispatch_time(0, 10000000000);
    v8 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__ADASManager__migrateVolumeLimitThreshold___block_invoke;
    block[3] = &unk_278CE1330;
    v12 = a3;
    block[4] = self;
    block[5] = &v13;
    dispatch_after(v7, v8, block);

    v6 = v14[5];
  }

  v9 = v6;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __44__ADASManager__migrateVolumeLimitThreshold___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getCurrentVolumeLimit];
  v3 = ADAFLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v2;
    _os_log_impl(&dword_241579000, v3, OS_LOG_TYPE_DEFAULT, "VLT currentLimit = %@", &v22, 0xCu);
  }

  if (v2 && ([v2 floatValue], v4 > 0.0))
  {
    [v2 floatValue];
    v6 = v5;
    if (v5 >= 0.5)
    {
      if (v5 >= 0.6)
      {
        if (v5 >= 0.7)
        {
          if (v5 >= 0.8)
          {
            if (v5 >= 0.9)
            {
              if (v5 >= 1.0)
              {
                goto LABEL_10;
              }

              v7 = 1120403456;
            }

            else
            {
              v7 = 1119748096;
            }
          }

          else
          {
            v7 = 1119092736;
          }
        }

        else
        {
          v7 = 1118437376;
        }
      }

      else
      {
        v7 = 1117782016;
      }
    }

    else
    {
      v7 = 1117126656;
    }

    v11 = *&v7;
    v12 = ADAFLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v22 = 138413058;
      v23 = v2;
      v24 = 2048;
      v25 = v6;
      v26 = 2048;
      v27 = v11;
      v28 = 1024;
      v29 = v13;
      _os_log_impl(&dword_241579000, v12, OS_LOG_TYPE_DEFAULT, "migrating %@ (%f) to %f\n nano? %d", &v22, 0x26u);
    }

    [*(a1 + 32) _clearCurrentVolumeLimit];
    *&v14 = v11;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = *(a1 + 32);
    v19 = *(*(*(a1 + 40) + 8) + 40);
    if (*(a1 + 48) == 1)
    {
      v20 = [v18 setNanoPreferenceFor:@"_ADAFPreferenceKeyVolumeLimitThreshold" value:v19 notify:1];
    }

    else
    {
      v21 = [v18 setPreferenceFor:@"_ADAFPreferenceKeyVolumeLimitThreshold" value:v19 notify:1];
    }
  }

  else
  {
    v8 = ADAFLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __44__ADASManager__migrateVolumeLimitThreshold___block_invoke_cold_1();
    }
  }

LABEL_10:
  v9 = ADAFLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_241579000, v9, OS_LOG_TYPE_DEFAULT, "VLT migration done...", &v22, 2u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_getCurrentVolumeLimit
{
  LODWORD(v2) = -1.0;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v19 = v3;
  if (+[ADAFUtil isProcessMediaserverd])
  {
    v4 = objc_alloc_init(MEMORY[0x277D26E68]);
    v5 = [v4 copyAttributeForKey:*MEMORY[0x277D27418] withValueOut:&v19];
    if (v5)
    {
      v6 = v5;
      v7 = ADAFLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ADASManager *)v6 _getCurrentVolumeLimit:v7];
      }

      LODWORD(v14) = -1.0;
      v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
      v16 = v19;
      v19 = v15;
    }

    v3 = v19;
  }

  v17 = v3;

  return v17;
}

- (void)_clearCurrentVolumeLimit
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_241579000, a2, a3, "error clearing current volume limit %llu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldSufaceHAENotificationMigrationAlert
{
  if (![(ADASManager *)self _isAlertSupported])
  {
    return 0;
  }

  [(ADASManager *)self _sync];
  v3 = [(ADASManager *)self _getDefaultsFor:@"HAENMigrationAlertSurfaced"];
  if ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ADASManager *)self _getDefaultsFor:@"HAENSurfaceMigrationAlert"];
    v4 = [v5 BOOLValue];
  }

  return v4;
}

- (void)didSurfaceMigrationAlert
{
  v3 = ADAFLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241579000, v3, OS_LOG_TYPE_DEFAULT, "didSurfaceMigrationAlert...", v7, 2u);
  }

  if (+[ADAFUtil isProcessMediaserverd])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v5 = [(ADASManager *)self _setDefaultsFor:@"HAENMigrationAlertSurfaced" value:v4];

    v6 = [(ADASManager *)self _setDefaultsFor:@"HAENSurfaceMigrationAlert" value:0];
    [(ADASManager *)self _sync];
  }
}

- (id)_getDefaultsKey:(id)a3
{
  prefStore = self->_prefStore;
  v4 = a3;
  v5 = [(ADASPreferenceStore *)prefStore keyMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (BOOL)_isDeviceMandatoryForHAENotification:(BOOL)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277CBEB98];
    v21[0] = @"HAENFeatureMandatoryOverride";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v6 = [v4 setWithArray:v5];
    [(ADASManager *)self _syncNanoForRead:v6];

    v7 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    v8 = [v7 objectForKey:@"HAENFeatureMandatoryOverride"];

    if (!v8)
    {
      v9 = MEMORY[0x277CBEB98];
      v18 = @"HAENFeatureMandatory";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      v11 = [v9 setWithArray:v10];
      [(ADASManager *)self _syncNanoDeviceSpecificForRead:v11];

      v12 = [(ADASPreferenceStore *)self->_prefStore coreAudioDeviceDomain];
      v8 = [v12 objectForKey:@"HAENFeatureMandatory"];

      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_7:
    v14 = ADAFLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_241579000, v14, OS_LOG_TYPE_DEFAULT, "device has HAEN turned on through defaults: %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  [(ADASManager *)self _sync];
  v13 = [(ADASManager *)self _getDefaultsFor:@"HAENFeatureMandatoryOverride"];
  if (v13)
  {
    v8 = v13;
    goto LABEL_7;
  }

  [(ADASManager *)self _syncDeviceSpecificDomain];
  v8 = [(ADASManager *)self _getDeviceSpecificDefaultsFor:@"HAENFeatureMandatory"];
  if (!v8)
  {
LABEL_10:
    v14 = ADAFLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ADASManager _isDeviceMandatoryForHAENotification:];
    }

    v8 = MEMORY[0x277CBEC38];
LABEL_13:
  }

LABEL_14:
  v15 = [v8 BOOLValue];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_isAlertSupported
{
  v10[4] = *MEMORY[0x277D85DE8];
  if (+[ADAFUtil isProcessMediaserverd])
  {
    [(ADASManager *)self _sync];
    v3 = [(ADASManager *)self _getDefaultsFor:@"DisableHAENMigrationAlert"];
    v4 = v3;
    if (v3 && ([v3 BOOLValue] & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v6 = MGGetStringAnswer();
      v10[0] = @"iPhone";
      v10[1] = @"iPad";
      v10[2] = @"iPod";
      v10[3] = @"Watch";
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
      v5 = [v7 containsObject:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)nanoSettingsAvailable
{
  v2 = self;
  [(ADASPreferenceStore *)self->_prefStore initNPSDomain];
  v3 = [(ADASPreferenceStore *)v2->_prefStore coreAudioDomain];
  LOBYTE(v2) = v3 != 0;

  return v2;
}

- (void)_donateSignalToTipsKit:(BOOL)a3
{
  v3 = a3;
  v4 = BiomeLibrary();
  v5 = [v4 Discoverability];
  v10 = [v5 Signals];

  v6 = [v10 source];
  v7 = objc_alloc(MEMORY[0x277CF1160]);
  if (v3)
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  v9 = [v7 initWithContentIdentifier:@"com.apple.Health.Hearing.HAENOptIn" context:v8 osBuild:0 userInfo:0];
  [v6 sendEvent:v9];
}

- (void)setPreferenceFor:value:notify:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_241579000, v0, v1, "failed to handle special key for %@ value: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setPreferenceFor:value:notify:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241579000, v0, v1, "value cannot be null for key %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setNanoPreferenceFor:value:notify:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setNanoPreferenceFor:value:notify:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_241579000, v0, v1, "failed to handle nano special key for %@ value: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getPreferenceFor:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241579000, v0, v1, "defaults key %@ unknown to ADASManager.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getNanoPreferenceFor:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241579000, v0, v1, "result type must be a NSNumber for key:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getNanoPreferenceFor:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241579000, v0, v1, "defaults nano key %@ unknown to ADASManager.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removePreferenceFor:notify:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241579000, v0, v1, "unknown defaults key %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeNanoPreferenceFor:notify:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241579000, v0, v1, "failed to remove nano chained key for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __33__ADASManager_getPreferencesFor___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241579000, v0, v1, "key %@ unknown to ADASManager.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __37__ADASManager_getNanoPreferencesFor___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241579000, v0, v1, "result type must be a NSNumber for key: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __37__ADASManager_getNanoPreferencesFor___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_241579000, v0, v1, "nano key %@ unknown to ADASManager", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__ADASManager__migrateVolumeLimitThreshold___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getCurrentVolumeLimit
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_241579000, a2, a3, "error fetching current volume limit %llu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_isDeviceMandatoryForHAENotification:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end