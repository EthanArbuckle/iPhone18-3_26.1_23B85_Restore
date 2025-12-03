@interface PreferencesDataMigrator
- (BOOL)performMigration;
- (float)migrationProgress;
- (void)_migrateKey:(id)key domain:(id)domain toKey:(id)toKey toDomain:(id)toDomain migrateCloud:(BOOL)cloud;
- (void)_performCombinedLocationSettingsMigrationForBundles:(id)bundles key:(id)key enable:(id)enable;
- (void)_performImproveMapsSettingsMigration;
- (void)_performIsAppAndAccessoryAnalyticsAllowedRemovalMigration;
- (void)_performLocationBasedAlertSettingsMigration;
- (void)_performLocationHomeKitSettingsMigration;
- (void)_performLocationRoutingAndTrafficSettingsMigration;
- (void)_performLocationWifiBluetoothUWBSettingsMigration;
- (void)_performLockdownModeMigration;
- (void)_performPeaceRestrictionsPinMigration;
- (void)_performSydneyHTTP3DeveloperOptInMigration;
- (void)_performSystemCustomizationSettingsMigration;
- (void)_performTigrisAutoBrightnessMigration;
- (void)_performTigrisHWAutoLockMigration;
- (void)_performTigrisSoundSettingsMigration;
- (void)_performYukonRevertSoundSettingsMigration;
@end

@implementation PreferencesDataMigrator

- (float)migrationProgress
{
  result = 0.0;
  if (self->_done)
  {
    return 1.0;
  }

  return result;
}

- (void)_performTigrisAutoBrightnessMigration
{
  if ((([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup]) && !CFPreferencesGetAppBooleanValue(@"ranTigrisAutoBrightnessMigrator11.0", @"com.apple.Preferences", 0))
  {
    v3 = sub_F18();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Running Auto-Brightness migration", v4, 2u);
    }

    CFPreferencesSetAppValue(@"BKEnableALS", 0, @"com.apple.backboardd");
    CFPreferencesSynchronize(@"com.apple.backboardd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  CFPreferencesSetAppValue(@"ranTigrisAutoBrightnessMigrator11.0", kCFBooleanTrue, @"com.apple.Preferences");
}

- (void)_performTigrisHWAutoLockMigration
{
  if (PSIsPearlAvailable())
  {
    if ((([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup]) && !CFPreferencesGetAppBooleanValue(@"ranTigrisHWAutoLockMigrator11.0", @"com.apple.Preferences", 0))
    {
      v3 = sub_F18();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Running Auto-Lock migration.", v7, 2u);
      }

      v4 = +[MCProfileConnection sharedConnection];
      v5 = MCFeatureAutoLockTime;
      v6 = [v4 defaultValueForSetting:MCFeatureAutoLockTime];
      [v4 setValue:v6 forSetting:v5];
    }

    CFPreferencesSetAppValue(@"ranTigrisHWAutoLockMigrator11.0", kCFBooleanTrue, @"com.apple.Preferences");
  }
}

- (void)_performLocationBasedAlertSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController locationBasedAlertBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationBasedAlertsMigrationVersionHash"];
}

- (void)_performLocationHomeKitSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController homeKitBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationHomeKitMigrationVersionHash"];
}

- (void)_performLocationRoutingAndTrafficSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController routingAndTrafficBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationRoutingAndTrafficMigrationVersionHash"];
}

- (void)_performLocationWifiBluetoothUWBSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController wirelessBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationWifiBluetoothUWBMigrationVersionHash"];
}

- (void)_performSystemCustomizationSettingsMigration
{
  v3 = +[PUILocationSystemServicesListController systemCustomizationBundles];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v3 key:@"locationSystemCustomizationMigrationVersionHash"];
}

- (void)_performImproveMapsSettingsMigration
{
  v3 = GEOGetDefaultInteger() == 2;
  v5 = +[PUILocationSystemServicesListController improveMapsBundles];
  v4 = [NSNumber numberWithBool:v3];
  [(PreferencesDataMigrator *)self _performCombinedLocationSettingsMigrationForBundles:v5 key:@"locationImproveMapsMigrationVersionHash" enable:v4];
}

- (void)_performCombinedLocationSettingsMigrationForBundles:(id)bundles key:(id)key enable:(id)enable
{
  selfCopy = self;
  bundlesCopy = bundles;
  key = key;
  enableCopy = enable;
  v8 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = bundlesCopy;
  v9 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v67;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v67 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v66 + 1) + 8 * i);
        v14 = +[NSFileManager defaultManager];
        v15 = [v14 fileExistsAtPath:v13];

        if (v15)
        {
          [v8 addObject:v13];
        }

        else
        {
          v16 = sub_F18();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            keyCopy7 = key;
            v74 = 2114;
            v75 = v13;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Bundle for key %{public}@ in the bundle list but not on disk: %{public}@", buf, 0x16u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    v17 = [v8 componentsJoinedByString:{@", "}];
    v18 = [v17 hash];

    keyCopy6 = key;
    if (([(PreferencesDataMigrator *)selfCopy didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)selfCopy didRestoreFromBackup])
    {
      v55 = v18;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(key, @"com.apple.Preferences", 0);
      v21 = sub_F18();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [NSNumber numberWithInteger:AppIntegerValue];
        *buf = 138543618;
        keyCopy7 = key;
        v74 = 2114;
        v75 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Running combined location settings migration for key: %{public}@ from hash %{public}@", buf, 0x16u);
      }

      v23 = CLCopyAppsUsingLocation();
      v24 = v23;
      if (enableCopy)
      {
        bOOLValue = [enableCopy BOOLValue];
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v28 = v23;
        v29 = [(PreferencesDataMigrator *)v28 countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v29)
        {
          v30 = v29;
          selfCopy = v24;
          v31 = *v63;
          while (2)
          {
            for (j = 0; j != v30; j = j + 1)
            {
              if (*v63 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v62 + 1) + 8 * j);
              selfCopy = [(PreferencesDataMigrator *)v28 objectForKeyedSubscript:v33, selfCopy];
              v35 = [selfCopy objectForKeyedSubscript:@"BundlePath"];

              v36 = [v8 objectAtIndexedSubscript:0];
              v37 = [v35 isEqualToString:v36];

              if (v37)
              {
                v38 = [(PreferencesDataMigrator *)v28 objectForKeyedSubscript:v33];
                bOOLValue = [CLLocationManager isEntityAuthorizedForLocationDictionary:v38];

                goto LABEL_33;
              }
            }

            v30 = [(PreferencesDataMigrator *)v28 countByEnumeratingWithState:&v62 objects:v71 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }

          bOOLValue = 0;
LABEL_33:
          keyCopy6 = key;
          v24 = selfCopy;
        }

        else
        {
          bOOLValue = 0;
        }
      }

      v39 = sub_F18();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = @"OFF";
        if (bOOLValue)
        {
          v40 = @"ON";
        }

        *buf = 138543618;
        keyCopy7 = keyCopy6;
        v74 = 2114;
        v75 = v40;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "State for key %{public}@ was %{public}@", buf, 0x16u);
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v41 = v24;
      v42 = [(PreferencesDataMigrator *)v41 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v59;
        if (bOOLValue)
        {
          v45 = 4;
        }

        else
        {
          v45 = 1;
        }

        do
        {
          for (k = 0; k != v43; k = k + 1)
          {
            if (*v59 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v47 = *(*(&v58 + 1) + 8 * k);
            selfCopy2 = [(PreferencesDataMigrator *)v41 objectForKeyedSubscript:v47, selfCopy];
            v49 = [selfCopy2 objectForKeyedSubscript:@"BundlePath"];

            if ([v8 containsObject:v49])
            {
              v50 = [(PreferencesDataMigrator *)v41 objectForKeyedSubscript:v47];
              [CLLocationManager setEntityAuthorization:v45 forLocationDictionary:v50];
            }
          }

          v43 = [(PreferencesDataMigrator *)v41 countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v43);
      }

      keyCopy6 = key;
      v18 = v55;
    }

    v51 = sub_F18();
    v27 = enableCopy;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [NSNumber numberWithInteger:v18];
      *buf = 138543618;
      keyCopy7 = keyCopy6;
      v74 = 2114;
      v75 = v52;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "Ran combined location settings migration for key %{public}@ for version hash %{public}@", buf, 0x16u);
    }

    v26 = [NSNumber numberWithInteger:v18];
    CFPreferencesSetAppValue(keyCopy6, v26, @"com.apple.Preferences");
  }

  else
  {
    v26 = sub_F18();
    keyCopy6 = key;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      keyCopy7 = key;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Skipping combined location settings migration for key: %{public}@ because there are no bundles on disk", buf, 0xCu);
    }

    v27 = enableCopy;
  }
}

- (void)_performTigrisSoundSettingsMigration
{
  if (!CFPreferencesGetAppBooleanValue(@"ranSoundMigrator11.0", @"com.apple.Preferences", 0) && [(PreferencesDataMigrator *)self didMigrateBackupFromDifferentDevice])
  {
    v3 = SHSSoundsPreferencesDomain;
    CFPreferencesSetAppValue(SHSCanAdjustVolumeUsingButtonsPreferencesKey, 0, SHSSoundsPreferencesDomain);
    CFPreferencesSynchronize(v3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.preferences.sounds.buttons-can-change-ringer-volume.changed", 0, 0, 1u);

    CFPreferencesSetAppValue(@"ranSoundMigrator11.0", kCFBooleanTrue, @"com.apple.Preferences");
  }
}

- (void)_performYukonRevertSoundSettingsMigration
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ranSoundMigrator13.0", @"com.apple.Preferences", 0);
  v3 = sub_F18();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = AppBooleanValue != 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "PreferencesMigrator: _performYukonRevertSoundSettingsMigration: %{BOOL}d", buf, 8u);
  }

  if (!AppBooleanValue)
  {
    keyExistsAndHasValidFormat = 0;
    v4 = SHSSoundsPreferencesDomain;
    v5 = CFPreferencesGetAppBooleanValue(SHSCanAdjustVolumeUsingButtonsPreferencesForSpringBoardKey, SHSSoundsPreferencesDomain, &keyExistsAndHasValidFormat);
    v6 = sub_F18();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v9 = keyExistsAndHasValidFormat;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "PreferencesMigrator: isNewDefaultValid: %{BOOL}d newDefault: %{BOOL}d", buf, 0xEu);
    }

    if (keyExistsAndHasValidFormat)
    {
      CFPreferencesSetValue(SHSCanAdjustVolumeUsingButtonsPreferencesKey, [NSNumber numberWithUnsignedChar:v5], v4, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }
  }

  CFPreferencesSetAppValue(@"ranSoundMigrator13.0", kCFBooleanTrue, @"com.apple.Preferences");
  CFPreferencesSetAppValue(@"ranSoundMigrator12.0", 0, @"com.apple.Preferences");
}

- (void)_performPeaceRestrictionsPinMigration
{
  if ((([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup]) && !CFPreferencesGetAppBooleanValue(@"ranRestrictionsPINMigrator12.0", @"com.apple.Preferences", 0))
  {
    +[SFRestrictionsPasscodeController migrateRestrictionsPasscode];
  }

  CFPreferencesSetAppValue(@"ranRestrictionsPINMigrator12.0", kCFBooleanTrue, @"com.apple.Preferences");
}

- (void)_performSydneyHTTP3DeveloperOptInMigration
{
  if ((([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup]) && !CFPreferencesGetAppBooleanValue(@"ranHTTP3DeveloperOptInMigrator16.0", @"com.apple.Preferences", 0))
  {
    v3 = sub_F18();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Running HTTP/3 developer opt-in migration", v4, 2u);
    }

    CFPreferencesSetAppValue(@"CFNetworkHTTP3Override", 0, @"Apple Global Domain");
  }

  CFPreferencesSetAppValue(@"ranHTTP3DeveloperOptInMigrator16.0", kCFBooleanTrue, @"com.apple.Preferences");
}

- (void)_performLockdownModeMigration
{
  v2 = sub_F18();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Running Lockdown Mode's migrateIfNeeded…", v6, 2u);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_C308;
  v10 = qword_C308;
  if (!qword_C308)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_27C0;
    v6[3] = &unk_82D0;
    v6[4] = &v7;
    sub_27C0(v6);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);
  shared = [v3 shared];
  [shared migrateIfNeededWithCompletion:&stru_82A8];
}

- (void)_performIsAppAndAccessoryAnalyticsAllowedRemovalMigration
{
  if ((([(PreferencesDataMigrator *)self didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)self didRestoreFromBackup]) && !CFPreferencesGetAppBooleanValue(@"isAppAndAccessoryAnalyticsAllowedRemoval", @"com.apple.Preferences", 0))
  {
    v3 = +[MCProfileConnection sharedConnection];
    [v3 removeBoolSetting:MCFeatureAppAndAccessoryAnalyticsAllowed];
  }

  CFPreferencesSetAppValue(@"isAppAndAccessoryAnalyticsAllowedRemoval", kCFBooleanTrue, @"com.apple.Preferences");
}

- (void)_migrateKey:(id)key domain:(id)domain toKey:(id)toKey toDomain:(id)toDomain migrateCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  keyCopy = key;
  domainCopy = domain;
  toKeyCopy = toKey;
  toDomainCopy = toDomain;
  v15 = CFPreferencesCopyAppValue(keyCopy, domainCopy);
  v16 = CFPreferencesCopyAppValue(toKeyCopy, toDomainCopy);
  if (v15)
  {
    v17 = sub_F18();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v25 = 138412546;
        v26 = domainCopy;
        v27 = 2112;
        v28 = keyCopy;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Removing defunct pref '%@' '%@'", &v25, 0x16u);
      }
    }

    else
    {
      if (v18)
      {
        v25 = 138413058;
        v26 = domainCopy;
        v27 = 2112;
        v28 = keyCopy;
        v29 = 2112;
        v30 = toDomainCopy;
        v31 = 2112;
        v32 = toKeyCopy;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Migrating pref '%@' '%@' => '%@' '%@'", &v25, 0x2Au);
      }

      CFPreferencesSetAppValue(toKeyCopy, v15, toDomainCopy);
    }

    CFPreferencesSetAppValue(keyCopy, 0, domainCopy);
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cloudCopy)
  {
    v19 = [[NSUserDefaults alloc] initWithSuiteName:domainCopy];
    v20 = [v19 objectForKey:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[NSUserDefaults alloc] initWithSuiteName:toDomainCopy];
      v22 = [v21 objectForKey:toKeyCopy];
      v23 = sub_F18();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          v25 = 138412546;
          v26 = domainCopy;
          v27 = 2112;
          v28 = keyCopy;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Removing defunct cloud pref '%@' '%@'", &v25, 0x16u);
        }
      }

      else
      {
        if (v24)
        {
          v25 = 138413058;
          v26 = domainCopy;
          v27 = 2112;
          v28 = keyCopy;
          v29 = 2112;
          v30 = toDomainCopy;
          v31 = 2112;
          v32 = toKeyCopy;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Migrating cloud pref from '%@' '%@' => '%@' %@'", &v25, 0x2Au);
        }

        [v21 setBool:objc_msgSend(v20 forKey:{"BOOLValue"), toKeyCopy}];
      }

      [v19 removeObjectForKey:keyCopy];
    }
  }
}

- (BOOL)performMigration
{
  didRestoreFromBackup = [(PreferencesDataMigrator *)self didRestoreFromBackup];
  didUpgrade = [(PreferencesDataMigrator *)self didUpgrade];
  didMigrateBackupFromDifferentDevice = [(PreferencesDataMigrator *)self didMigrateBackupFromDifferentDevice];
  v6 = sub_F18();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109632;
    DWORD1(buf) = didRestoreFromBackup;
    WORD4(buf) = 1024;
    *(&buf + 10) = didUpgrade;
    HIWORD(buf) = 1024;
    LODWORD(v20) = didMigrateBackupFromDifferentDevice;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "PreferencesMigrator: didRestore=%d, didUpgrade=%d, didMigrateFromDifferentDevice=%d", &buf, 0x14u);
  }

  v7 = sub_F18();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CFCopySystemVersionString();
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Running %@", &buf, 0xCu);
  }

  [(PreferencesDataMigrator *)self _performTigrisAutoBrightnessMigration];
  [(PreferencesDataMigrator *)self _performTigrisHWAutoLockMigration];
  [(PreferencesDataMigrator *)self _performPeaceRestrictionsPinMigration];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v9 = qword_C318;
  v18 = qword_C318;
  if (!qword_C318)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v20 = sub_2978;
    v21 = &unk_82D0;
    v22 = &v15;
    sub_2978(&buf);
    v9 = v16[3];
  }

  v10 = v9;
  _Block_object_dispose(&v15, 8);
  sharedManager = [v9 sharedManager];
  isMultiUser = [sharedManager isMultiUser];

  if ((isMultiUser & 1) == 0)
  {
    PSMigrateSoundsDefaults_10_0();
  }

  [(PreferencesDataMigrator *)self _performTigrisSoundSettingsMigration];
  [(PreferencesDataMigrator *)self _performYukonRevertSoundSettingsMigration];
  [(PreferencesDataMigrator *)self _performLocationHomeKitSettingsMigration];
  [(PreferencesDataMigrator *)self _performLocationBasedAlertSettingsMigration];
  [(PreferencesDataMigrator *)self _performLocationRoutingAndTrafficSettingsMigration];
  [(PreferencesDataMigrator *)self _performLocationWifiBluetoothUWBSettingsMigration];
  [(PreferencesDataMigrator *)self _performSystemCustomizationSettingsMigration];
  [(PreferencesDataMigrator *)self _performImproveMapsSettingsMigration];
  [(PreferencesDataMigrator *)self _performSydneyHTTP3DeveloperOptInMigration];
  [(PreferencesDataMigrator *)self _performLockdownModeMigration];
  [(PreferencesDataMigrator *)self _performIsAppAndAccessoryAnalyticsAllowedRemovalMigration];
  self->_done = 1;
  v13 = sub_F18();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "PreferencesMigrator: Finished.", &buf, 2u);
  }

  return 1;
}

@end