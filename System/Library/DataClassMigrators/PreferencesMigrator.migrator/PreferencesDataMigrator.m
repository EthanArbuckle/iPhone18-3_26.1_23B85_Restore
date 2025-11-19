@interface PreferencesDataMigrator
- (BOOL)performMigration;
- (float)migrationProgress;
- (void)_migrateKey:(id)a3 domain:(id)a4 toKey:(id)a5 toDomain:(id)a6 migrateCloud:(BOOL)a7;
- (void)_performCombinedLocationSettingsMigrationForBundles:(id)a3 key:(id)a4 enable:(id)a5;
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

- (void)_performCombinedLocationSettingsMigrationForBundles:(id)a3 key:(id)a4 enable:(id)a5
{
  v53 = self;
  v7 = a3;
  key = a4;
  v54 = a5;
  v8 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v7;
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
            v73 = key;
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

    v19 = key;
    if (([(PreferencesDataMigrator *)v53 didUpgrade]& 1) != 0 || [(PreferencesDataMigrator *)v53 didRestoreFromBackup])
    {
      v55 = v18;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(key, @"com.apple.Preferences", 0);
      v21 = sub_F18();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [NSNumber numberWithInteger:AppIntegerValue];
        *buf = 138543618;
        v73 = key;
        v74 = 2114;
        v75 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Running combined location settings migration for key: %{public}@ from hash %{public}@", buf, 0x16u);
      }

      v23 = CLCopyAppsUsingLocation();
      v24 = v23;
      if (v54)
      {
        v25 = [v54 BOOLValue];
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
          v53 = v24;
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
              v34 = [(PreferencesDataMigrator *)v28 objectForKeyedSubscript:v33, v53];
              v35 = [v34 objectForKeyedSubscript:@"BundlePath"];

              v36 = [v8 objectAtIndexedSubscript:0];
              v37 = [v35 isEqualToString:v36];

              if (v37)
              {
                v38 = [(PreferencesDataMigrator *)v28 objectForKeyedSubscript:v33];
                v25 = [CLLocationManager isEntityAuthorizedForLocationDictionary:v38];

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

          v25 = 0;
LABEL_33:
          v19 = key;
          v24 = v53;
        }

        else
        {
          v25 = 0;
        }
      }

      v39 = sub_F18();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = @"OFF";
        if (v25)
        {
          v40 = @"ON";
        }

        *buf = 138543618;
        v73 = v19;
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
        if (v25)
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
            v48 = [(PreferencesDataMigrator *)v41 objectForKeyedSubscript:v47, v53];
            v49 = [v48 objectForKeyedSubscript:@"BundlePath"];

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

      v19 = key;
      v18 = v55;
    }

    v51 = sub_F18();
    v27 = v54;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [NSNumber numberWithInteger:v18];
      *buf = 138543618;
      v73 = v19;
      v74 = 2114;
      v75 = v52;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "Ran combined location settings migration for key %{public}@ for version hash %{public}@", buf, 0x16u);
    }

    v26 = [NSNumber numberWithInteger:v18];
    CFPreferencesSetAppValue(v19, v26, @"com.apple.Preferences");
  }

  else
  {
    v26 = sub_F18();
    v19 = key;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v73 = key;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Skipping combined location settings migration for key: %{public}@ because there are no bundles on disk", buf, 0xCu);
    }

    v27 = v54;
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
  v5 = [v3 shared];
  [v5 migrateIfNeededWithCompletion:&stru_82A8];
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

- (void)_migrateKey:(id)a3 domain:(id)a4 toKey:(id)a5 toDomain:(id)a6 migrateCloud:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = CFPreferencesCopyAppValue(v11, v12);
  v16 = CFPreferencesCopyAppValue(v13, v14);
  if (v15)
  {
    v17 = sub_F18();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v25 = 138412546;
        v26 = v12;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Removing defunct pref '%@' '%@'", &v25, 0x16u);
      }
    }

    else
    {
      if (v18)
      {
        v25 = 138413058;
        v26 = v12;
        v27 = 2112;
        v28 = v11;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Migrating pref '%@' '%@' => '%@' '%@'", &v25, 0x2Au);
      }

      CFPreferencesSetAppValue(v13, v15, v14);
    }

    CFPreferencesSetAppValue(v11, 0, v12);
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v7)
  {
    v19 = [[NSUserDefaults alloc] initWithSuiteName:v12];
    v20 = [v19 objectForKey:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[NSUserDefaults alloc] initWithSuiteName:v14];
      v22 = [v21 objectForKey:v13];
      v23 = sub_F18();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          v25 = 138412546;
          v26 = v12;
          v27 = 2112;
          v28 = v11;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Removing defunct cloud pref '%@' '%@'", &v25, 0x16u);
        }
      }

      else
      {
        if (v24)
        {
          v25 = 138413058;
          v26 = v12;
          v27 = 2112;
          v28 = v11;
          v29 = 2112;
          v30 = v14;
          v31 = 2112;
          v32 = v13;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Migrating cloud pref from '%@' '%@' => '%@' %@'", &v25, 0x2Au);
        }

        [v21 setBool:objc_msgSend(v20 forKey:{"BOOLValue"), v13}];
      }

      [v19 removeObjectForKey:v11];
    }
  }
}

- (BOOL)performMigration
{
  v3 = [(PreferencesDataMigrator *)self didRestoreFromBackup];
  v4 = [(PreferencesDataMigrator *)self didUpgrade];
  v5 = [(PreferencesDataMigrator *)self didMigrateBackupFromDifferentDevice];
  v6 = sub_F18();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109632;
    DWORD1(buf) = v3;
    WORD4(buf) = 1024;
    *(&buf + 10) = v4;
    HIWORD(buf) = 1024;
    LODWORD(v20) = v5;
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
  v11 = [v9 sharedManager];
  v12 = [v11 isMultiUser];

  if ((v12 & 1) == 0)
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