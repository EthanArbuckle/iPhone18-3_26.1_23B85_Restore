@interface SBDataMigrator
- (BOOL)_needsTigrisDataStoreMigration;
- (BOOL)isEphemeralMultiUser;
- (BOOL)performMigration;
- (SBDataMigrator)init;
- (float)estimatedDuration;
- (float)migrationProgress;
- (id)currentDeviceSupportsAlwaysOnByDefault;
- (id)sourceDeviceSupportsAODByDefaultWithUserDefaults:(id)defaults;
- (void)_saveNewLastBuildVersion;
- (void)informPaperBoardOfMigration;
- (void)performALSMigration;
- (void)performBadgingDisabledMigration;
- (void)performBatteryPercentageSettingMigrationIfNecessary;
- (void)performCalendarWidgetIconMigrationIfNecessary;
- (void)performDynamicVolumeButtonsMigrationIfNecessary;
- (void)performIconSizeMigrationIfNecessary;
- (void)performImplicitAODPreferenceMigrationIfNecessary;
- (void)performLiftToWakeDefaultsResetIfNecessary;
- (void)performNewsWidgetIconMigrationIfNecessary;
- (void)performPinnedWidgetsDefaultsResetIfNecessary;
- (void)performPosterBoardMigration;
- (void)performShortcutStoreMigrationIfNecessary;
- (void)performSplashBoardLaunchImagesMigration;
- (void)performSplashBoardSystemLaunchImagesMigrationRecreating:(id)recreating;
- (void)performTigrisDataStoreMigrationIfNecessary;
- (void)warmUpIcons;
@end

@implementation SBDataMigrator

- (SBDataMigrator)init
{
  v23.receiver = self;
  v23.super_class = SBDataMigrator;
  v2 = [(SBDataMigrator *)&v23 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    allInstalledApps = v2->_allInstalledApps;
    v2->_allInstalledApps = v3;

    if (![(SBDataMigrator *)v2 isEphemeralMultiUser])
    {
      v5 = [LSApplicationRecord enumeratorWithOptions:0];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v20;
        do
        {
          v9 = 0;
          do
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [(NSMutableArray *)v2->_allInstalledApps addObject:*(*(&v19 + 1) + 8 * v9)];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v7);
      }
    }

    v10 = objc_alloc_init(SBSplashBoardMigrationController);
    xbController = v2->_xbController;
    v2->_xbController = v10;

    v12 = objc_alloc_init(SBDataMigratorDefaults);
    migratorDefaults = v2->_migratorDefaults;
    v2->_migratorDefaults = v12;

    v14 = [SBFBuildVersion alloc];
    lastSystemBuildVersion = [(SBDataMigratorDefaults *)v2->_migratorDefaults lastSystemBuildVersion];
    v16 = [v14 initWithString:lastSystemBuildVersion];
    lastBuildVersion = v2->_lastBuildVersion;
    v2->_lastBuildVersion = v16;
  }

  return v2;
}

- (float)estimatedDuration
{
  v3 = [(NSMutableArray *)self->_allInstalledApps count]* 0.1 + 0.5;
  allSplashBoardApplications = [(SBSplashBoardMigrationController *)self->_xbController allSplashBoardApplications];
  v5 = v3 + [allSplashBoardApplications count] * 0.2;

  if ([(SBDataMigrator *)self _needsTigrisDataStoreMigration])
  {
    v6 = +[FBSApplicationDataStore applicationsWithAvailableStores];
    v5 = v5 + [v6 count] * 0.02;
  }

  return v5;
}

- (float)migrationProgress
{
  result = 1.0;
  if (self->_done)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)performMigration
{
  [(SBDataMigrator *)self warmUpIcons];
  systemAppsNeedingMigrationLaunchImages = [(SBSplashBoardMigrationController *)self->_xbController systemAppsNeedingMigrationLaunchImages];
  [(SBDataMigrator *)self performSplashBoardLaunchImagesMigration];
  [(SBDataMigrator *)self performSplashBoardSystemLaunchImagesMigrationRecreating:systemAppsNeedingMigrationLaunchImages];
  [(SBDataMigrator *)self performALSMigration];
  [(SBDataMigrator *)self performBadgingDisabledMigration];
  [(SBDataMigrator *)self performTigrisDataStoreMigrationIfNecessary];
  [(SBDataMigrator *)self performShortcutStoreMigrationIfNecessary];
  [(SBDataMigrator *)self performLiftToWakeDefaultsResetIfNecessary];
  [(SBDataMigrator *)self performPinnedWidgetsDefaultsResetIfNecessary];
  [(SBDataMigrator *)self performNewsWidgetIconMigrationIfNecessary];
  [(SBDataMigrator *)self performCalendarWidgetIconMigrationIfNecessary];
  [(SBDataMigrator *)self performIconSizeMigrationIfNecessary];
  [(SBDataMigrator *)self performDynamicVolumeButtonsMigrationIfNecessary];
  [(SBDataMigrator *)self performPosterBoardMigration];
  [(SBDataMigrator *)self performBatteryPercentageSettingMigrationIfNecessary];
  [(SBDataMigrator *)self performImplicitAODPreferenceMigrationIfNecessary];
  +[FBSApplicationDataStore synchronize];
  [(SBDataMigrator *)self _saveNewLastBuildVersion];
  self->_done = 1;

  return 1;
}

- (void)_saveNewLastBuildVersion
{
  v3 = _CFCopySystemVersionDictionary();
  v4 = [SBFBuildVersion alloc];
  v5 = [v3 objectForKey:_kCFSystemVersionBuildVersionKey];
  v6 = [v4 initWithString:v5];

  stringRepresentation = [v6 stringRepresentation];
  v8 = SBLogCommon();
  v9 = v8;
  if (stringRepresentation)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = stringRepresentation;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Saving new migrator last build version: %@", &v10, 0xCu);
    }

    [(SBDataMigratorDefaults *)self->_migratorDefaults setLastSystemBuildVersion:stringRepresentation];
    [(SBDataMigratorDefaults *)self->_migratorDefaults synchronizeDefaults];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_DEDC();
    }
  }
}

- (BOOL)isEphemeralMultiUser
{
  v2 = +[UMUserManager sharedManager];
  if ([v2 isMultiUser])
  {
    currentUser = [v2 currentUser];
    v4 = [currentUser userType] == &dword_0 + 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)warmUpIcons
{
  if (![(SBDataMigrator *)self isEphemeralMultiUser])
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v22[3] = 0x4000000000000000;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_2F14;
    v19 = &unk_18558;
    v21 = v22;
    v20 = dispatch_semaphore_create(0);
    BSDispatchMain();
    v11 = v20;
    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    v3 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorHomeScreen];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_allInstalledApps;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v24 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          bundleIdentifier = [*(*(&v12 + 1) + 8 * v7) bundleIdentifier];
          if (bundleIdentifier)
          {
            v9 = [[ISIcon alloc] initWithBundleIdentifier:bundleIdentifier];
            v23 = v3;
            v10 = [NSArray arrayWithObjects:&v23 count:1];
            [v9 prepareImagesForImageDescriptors:v10];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v24 count:16];
      }

      while (v5);
    }

    _Block_object_dispose(v22, 8);
  }
}

- (void)performALSMigration
{
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.backboardd"];
  dictionaryRepresentation = [v7 dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];
  v5 = [allKeys containsObject:@"SBEnableALS"];

  if (v5)
  {
    v6 = [v7 BOOLForKey:@"SBEnableALS"];
    [v7 removeObjectForKey:@"SBEnableALS"];
    [v2 setBool:v6 forKey:@"BKEnableALS"];
  }
}

- (void)performBadgingDisabledMigration
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  v2 = [v3 objectForKey:@"SBDisplayIDsWithBadgingDisabled"];
  if (v2)
  {
    [v3 removeObjectForKey:@"SBDisplayIDsWithBadgingDisabled"];
  }
}

- (void)performSplashBoardLaunchImagesMigration
{
  if ([(SBDataMigrator *)self didMigrateBackupFromDifferentDevice])
  {
    xbController = self->_xbController;

    [(SBSplashBoardMigrationController *)xbController performCleanupAfterDifferentDeviceMigration];
  }
}

- (void)performSplashBoardSystemLaunchImagesMigrationRecreating:(id)recreating
{
  recreatingCopy = recreating;
  if (![(SBDataMigrator *)self isEphemeralMultiUser])
  {
    [(SBSplashBoardMigrationController *)self->_xbController performSystemAppMigrationRecreating:recreatingCopy];
  }
}

- (BOOL)_needsTigrisDataStoreMigration
{
  _store = [(SBDataMigratorDefaults *)self->_migratorDefaults _store];
  v4 = [_store bs_defaultExists:@"lastBuildVersion"];

  lastBuildVersion = self->_lastBuildVersion;
  if (!lastBuildVersion)
  {
    goto LABEL_6;
  }

  if ([(SBFBuildVersion *)lastBuildVersion majorBuildNumber]>= 15)
  {
    if ([(SBFBuildVersion *)self->_lastBuildVersion majorBuildNumber]== &dword_C + 3)
    {
      v6 = [(SBFBuildVersion *)self->_lastBuildVersion minorBuildNumber]< 218;
      return v6 || (v4 & 1) == 0;
    }

LABEL_6:
    v6 = 0;
    return v6 || (v4 & 1) == 0;
  }

  v6 = 1;
  return v6 || (v4 & 1) == 0;
}

- (void)performTigrisDataStoreMigrationIfNecessary
{
  if ([(SBDataMigrator *)self _needsTigrisDataStoreMigration])
  {
    v2 = SBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Migrating data store data for iOS 11", buf, 2u);
    }

    +[FBSApplicationDataStore applicationsWithAvailableStores];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    obj = v12 = 0u;
    v3 = [obj countByEnumeratingWithState:&v9 objects:v14 count:16];
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
            objc_enumerationMutation(obj);
          }

          v7 = [FBSApplicationDataStore storeForApplication:*(*(&v9 + 1) + 8 * v6)];
          [v7 removeObjectForKey:@"SBDefaultStatusBarStyleKey"];
          [v7 removeObjectForKey:@"SBDefaultStatusBarHiddenKey"];
          [v7 removeObjectForKey:@"SBDefaultPNGNameKey"];
          [v7 removeObjectForKey:@"kSBDefaultPNGExpirationAbsoluteTimeKey"];
          [v7 removeObjectForKey:@"SBClassicAppZoomedInKey"];
          [v7 removeObjectForKey:@"SBApplication32DeprecationAcknowledgementDateKey"];
          [v7 removeObjectForKey:@"uninstallAllowed"];

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v4);
    }
  }
}

- (void)performShortcutStoreMigrationIfNecessary
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/SpringBoard"];

  v4 = [NSURL fileURLWithPath:v3];
  v5 = [v4 URLByAppendingPathComponent:@"ApplicationShortcuts"];

  v6 = +[NSFileManager defaultManager];
  v7 = [v6 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:0];
  [v7 enumerateObjectsUsingBlock:&stru_18598];
  [v6 removeItemAtURL:v5 error:0];
  context = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = +[FBSApplicationDataStore applicationsWithAvailableStores];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [[SBApplicationShortcutStore alloc] initWithBundleIdentifier:*(*(&v14 + 1) + 8 * i)];
        [(SBApplicationShortcutStore *)v12 truncateIfNecessary];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
}

- (void)performLiftToWakeDefaultsResetIfNecessary
{
  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  v3 = +[BSPlatform sharedInstance];
  homeButtonType = [v3 homeButtonType];

  if (homeButtonType == &dword_0 + 2)
  {
    if (-[SBDataMigrator didMigrateBackupFromDifferentDevice](self, "didMigrateBackupFromDifferentDevice") && ([v5 BOOLForKey:@"SBDidCheckLiftToWakeForDeviceWithoutHomeButton"] & 1) == 0)
    {
      [v5 setBool:1 forKey:@"SBSupportLiftToWake"];
    }

    [v5 setBool:1 forKey:@"SBDidCheckLiftToWakeForDeviceWithoutHomeButton"];
  }
}

- (void)performPinnedWidgetsDefaultsResetIfNecessary
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  [v2 removeObjectForKey:@"SBHomeSidebarPinned"];
  [v2 removeObjectForKey:@"SBWidgetsShouldShowTeachingView"];
}

- (void)performNewsWidgetIconMigrationIfNecessary
{
  v3 = objc_alloc_init(SBNewsIconStateMigrator);
  [(SBNewsIconStateMigrator *)v3 migrateGridSizeClassIfNecessaryFromBuildVersion:self->_lastBuildVersion isInternalInstall:MGGetBoolAnswer()];
  [(SBNewsIconStateMigrator *)v3 restoreNewsWidgetInTodayListFromBuildVersion:self->_lastBuildVersion];
}

- (void)performCalendarWidgetIconMigrationIfNecessary
{
  v2 = objc_alloc_init(SBCalendarWidgetMigrator);
  [(SBCalendarWidgetMigrator *)v2 migrateIfNecessary];
}

- (void)performIconSizeMigrationIfNecessary
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  if ([v2 BOOLForKey:@"SBHomeLayoutLowDensity"])
  {
    [v2 removeObjectForKey:@"SBHomeLayoutLowDensity"];
    [v2 setBool:1 forKey:@"SBHomeLargeIcons"];
  }
}

- (void)performDynamicVolumeButtonsMigrationIfNecessary
{
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    v2 = +[BSPlatform sharedInstance];
    deviceClass = [v2 deviceClass];

    if (deviceClass == 2)
    {
      v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
      v4 = [v5 objectForKey:@"SBDisableNaturalVolumeButtonArrangement"];

      if (!v4)
      {
        [v5 setBool:1 forKey:@"SBDisableNaturalVolumeButtonArrangement"];
      }
    }
  }
}

- (void)informPaperBoardOfMigration
{
  restoredBackupBuildVersion = [(SBDataMigrator *)self restoredBackupBuildVersion];
  v4 = +[BSPlatform sharedInstance];
  deviceClass = [v4 deviceClass];

  if (restoredBackupBuildVersion)
  {
    restoredBackupBuildVersion2 = [(SBDataMigrator *)self restoredBackupBuildVersion];
    v7 = [BSBuildVersion fromString:restoredBackupBuildVersion2];

    if (deviceClass == 2 && [v7 majorBuildNumber] < 21)
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v7)
    {
      v8 = [v7 majorBuildNumber] < 20;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
LABEL_9:
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_DFDC();
  }

  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_E054();
  }

  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_E0C4();
  }

  v12 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  v13 = v12;
  if (v8)
  {
    v14 = [NSNumber numberWithBool:1];
    [v13 setObject:v14 forKey:@"SBLegacyWallpaperMigrationNeeded"];
  }

  else
  {
    [v12 removeObjectForKey:@"SBLegacyWallpaperMigrationNeeded"];
  }
}

- (void)performPosterBoardMigration
{
  if ([(SBDataMigrator *)self isEphemeralMultiUser])
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_E4B8();
    }

    goto LABEL_46;
  }

  [(SBDataMigrator *)self informPaperBoardOfMigration];
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  v4 = [v3 BOOLForKey:@"SBMigratedHomeScreenDefaultsTintToPosterBoard"];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_E13C();
  }

  if (v4)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_E38C();
    }

    v7 = 0;
    goto LABEL_35;
  }

  v6 = objc_opt_new();
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_E178();
  }

  v9 = [v3 stringForKey:@"SBHomeIconUserInterfaceStyle"];
  v10 = v9 != 0;
  if (v9)
  {
    [v6 setHomeScreenIconStyle:v9];
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_E1B4();
    }
  }

  v12 = [v3 dataForKey:@"SBHomeIconTintColor"];
  if ([v12 length])
  {
    v13 = objc_opt_self();
    v14 = [NSKeyedUnarchiver unarchivedObjectOfClass:v13 fromData:v12 error:0];

    if (v14)
    {
      bSColor = [v14 BSColor];
      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_E224();
      }

      [v6 setHomeScreenTintColor:bSColor];
      v10 = 1;
    }
  }

  if ([v3 BOOLForKey:@"SBEnableHomeScreenWallpaperDimming"])
  {
    v17 = [NSNumber numberWithBool:1];
    [v6 setHomeScreenDim:v17];

    v18 = SBLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_E294();
    }

    if (![v3 BOOLForKey:@"SBHomeHideLabels"])
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (([v3 BOOLForKey:@"SBHomeHideLabels"]& 1) != 0)
  {
LABEL_28:
    [v6 setHomeScreenIconSize:@"LARGE"];
    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_E310();
    }

    goto LABEL_31;
  }

  if (v10)
  {
LABEL_31:
    if (!v9)
    {
      [v6 setHomeScreenIconStyle:SBIconUserInterfaceStyleDefault];
    }

    v7 = [v6 copy];
    goto LABEL_34;
  }

  v7 = 0;
LABEL_34:

LABEL_35:
  v20 = objc_alloc_init(PRSService);
  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_43C0;
  v39 = sub_43D0;
  v40 = 0;
  v22 = SBLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_E3C8();
  }

  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_43D8;
  v32 = &unk_185C0;
  v34 = &v35;
  v23 = v21;
  v33 = v23;
  v24 = objc_retainBlock(&v29);
  [v20 runMigration:1 migrationDescriptor:v7 completion:{v24, v29, v30, v31, v32}];
  v25 = dispatch_time(0, 120000000000);
  dispatch_group_wait(v23, v25);

  if (v4)
  {
    v26 = SBLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_E47C();
    }
  }

  else if (v36[5])
  {
    v26 = SBLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_E404();
    }
  }

  else
  {
    [v3 setBool:1 forKey:@"SBMigratedHomeScreenDefaultsTintToPosterBoard"];
    v26 = SBLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_E440();
    }
  }

  v27 = objc_alloc_init(PBUIWallpaperConfigurationManager);
  dataStores = [v27 dataStores];
  [dataStores enumerateObjectsUsingBlock:&stru_18600];

  _Block_object_dispose(&v35, 8);
LABEL_46:
}

- (void)performBatteryPercentageSettingMigrationIfNecessary
{
  v3 = +[BSPlatform sharedInstance];
  deviceClass = [v3 deviceClass];

  if (!deviceClass)
  {
    v5 = +[BSPlatform sharedInstance];
    homeButtonType = [v5 homeButtonType];

    if (homeButtonType == &dword_0 + 2 && [(SBFBuildVersion *)self->_lastBuildVersion majorBuildNumber]<= 19)
    {
      v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
      [v7 setBool:0 forKey:SBDefaultKeyShowBatteryPercentage];
    }
  }
}

- (id)sourceDeviceSupportsAODByDefaultWithUserDefaults:(id)defaults
{
  v4 = [defaults objectForKey:@"SBDeviceEnablesAlwaysOnByDefault"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    restoredBackupProductType = [(SBDataMigrator *)self restoredBackupProductType];
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = restoredBackupProductType;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[AOD migration] product type: %@", &v10, 0xCu);
    }

    if (restoredBackupProductType)
    {
      v6 = [&off_1AA80 objectForKeyedSubscript:restoredBackupProductType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)currentDeviceSupportsAlwaysOnByDefault
{
  if (MGGetBoolAnswer())
  {
    v2 = MGCopyAnswer();
    v3 = objc_opt_class();
    v4 = v2;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = v5;

    bOOLValue = [v7 BOOLValue];
    v6 = [NSNumber numberWithInt:bOOLValue ^ 1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performImplicitAODPreferenceMigrationIfNecessary
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  v4 = MGGetBoolAnswer();
  v5 = [(SBDataMigrator *)self userDataDisposition]& 0xC;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109376;
    *v18 = v4;
    *&v18[4] = 1024;
    *&v18[6] = v5 == 12;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[AOD migration] supportsAOD: %{BOOL}u isFromOtherDevice: %{BOOL}u", &v17, 0xEu);
  }

  if (v5 == 12)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    v8 = [v3 objectForKey:@"SBEnableAlwaysOn"];

    if (!v8)
    {
      v9 = [(SBDataMigrator *)self sourceDeviceSupportsAODByDefaultWithUserDefaults:v3];
      currentDeviceSupportsAlwaysOnByDefault = [(SBDataMigrator *)self currentDeviceSupportsAlwaysOnByDefault];
      bOOLValue = [currentDeviceSupportsAlwaysOnByDefault BOOLValue];

      v12 = SBLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        *v18 = v9;
        *&v18[8] = 1024;
        v19 = bOOLValue;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[AOD migration] default is unset. Old device on-by-default: %@. New device on-by-default: %{BOOL}u", &v17, 0x12u);
      }

      if (v9 && bOOLValue != [v9 BOOLValue])
      {
        bOOLValue2 = [v9 BOOLValue];
        v14 = SBLogCommon();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (bOOLValue2)
        {
          if (v15)
          {
            LOWORD(v17) = 0;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Coming from AOD-on-by-default device with no explicit preference. Enabling AOD", &v17, 2u);
          }

          [v3 setBool:1 forKey:@"SBEnableAlwaysOn"];
        }

        else
        {
          if (v15)
          {
            LOWORD(v17) = 0;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Coming from AOD-off-by-default device with no explicit preference. Leaving AOD enabled by default.", &v17, 2u);
          }
        }
      }
    }
  }

  currentDeviceSupportsAlwaysOnByDefault2 = [(SBDataMigrator *)self currentDeviceSupportsAlwaysOnByDefault];
  [v3 setObject:currentDeviceSupportsAlwaysOnByDefault2 forKey:@"SBDeviceEnablesAlwaysOnByDefault"];
}

@end