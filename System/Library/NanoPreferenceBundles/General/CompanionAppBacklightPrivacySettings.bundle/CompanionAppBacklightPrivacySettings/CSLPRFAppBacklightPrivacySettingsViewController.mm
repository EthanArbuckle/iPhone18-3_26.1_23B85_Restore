@interface CSLPRFAppBacklightPrivacySettingsViewController
- (CSLPRFAppBacklightPrivacySettingsViewController)init;
- (id)_phoneAppSpecifiers;
- (id)_watchAppSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_cachePrivacyType;
- (void)_loadSettings;
- (void)settingsModel:(id)model didUpdateSettings:(id)settings;
@end

@implementation CSLPRFAppBacklightPrivacySettingsViewController

- (CSLPRFAppBacklightPrivacySettingsViewController)init
{
  v18.receiver = self;
  v18.super_class = CSLPRFAppBacklightPrivacySettingsViewController;
  v2 = [(CSLPRFAppBacklightPrivacySettingsViewController *)&v18 init];
  if (v2)
  {
    v3 = +[PDRRegistry sharedInstance];
    getActivePairedDeviceExcludingAltAccount = [v3 getActivePairedDeviceExcludingAltAccount];

    v2->_hasAOTCapability = [getActivePairedDeviceExcludingAltAccount supportsCapability:1789638251];
    v5 = cslprf_settings_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      hasAOTCapability = v2->_hasAOTCapability;
      *buf = 67109120;
      v20 = hasAOTCapability;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "hasAOTCapability = %{BOOL}u", buf, 8u);
    }

    if (v2->_hasAOTCapability)
    {
      sortedWatchSettings = v2->_sortedWatchSettings;
      v2->_sortedWatchSettings = &__NSArray0__struct;

      sortedPhoneNotificationSettings = v2->_sortedPhoneNotificationSettings;
      v2->_sortedPhoneNotificationSettings = &__NSArray0__struct;

      v9 = objc_alloc_init(CSLPRFPerApplicationSettingsPSSpecifierFactory);
      specifierFactory = v2->_specifierFactory;
      v2->_specifierFactory = v9;

      v11 = [CSLPRFPerApplicationSettingsModel alloc];
      v12 = [CSLPRFApplicationLibrary sharedLibraryForLocation:2];
      v13 = [v11 initWithApplicationLibrary:v12 perApplicationSettingsClass:objc_opt_class()];
      settingsModel = v2->_settingsModel;
      v2->_settingsModel = v13;

      globalSettings = [(CSLPRFPerApplicationSettingsModel *)v2->_settingsModel globalSettings];
      globalSettings = v2->_globalSettings;
      v2->_globalSettings = globalSettings;

      [(CSLPRFPerApplicationSettingsModel *)v2->_settingsModel addObserver:v2];
    }
  }

  return v2;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = CSLPRFAppBacklightPrivacySettingsViewController;
  v4 = [(CSLPRFAppBacklightPrivacySettingsViewController *)&v6 tableView:view cellForRowAtIndexPath:path];

  return v4;
}

- (void)settingsModel:(id)model didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  v4 = settingsCopy;
  BSDispatchMain();
}

- (void)_cachePrivacyType
{
  v4 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"CSLPRFAppBacklightPrivacyType"];
  if ([v4 isEqualToString:@"apps"])
  {
    v3 = 1;
LABEL_7:
    self->_privacyType = v3;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"notifications"])
  {
    v3 = 2;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"activities"])
  {
    v3 = 3;
    goto LABEL_7;
  }

  self->_privacyType = 0;
LABEL_8:
}

- (void)_loadSettings
{
  selfCopy = self;
  [(CSLPRFAppBacklightPrivacySettingsViewController *)self _cachePrivacyType];
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v5 = 176;
  if (selfCopy->_privacyType != 3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allApplicationSettings = [(CSLPRFPerApplicationSettingsModel *)selfCopy->_settingsModel allApplicationSettings];
    v7 = [allApplicationSettings countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = *v27;
    v25 = *v27;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(allApplicationSettings);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        category = [v11 category];
        if (category == &dword_0 + 1)
        {
          v13 = v4;
          if (*&selfCopy->PSListController_opaque[v5] != 2)
          {
            continue;
          }

LABEL_13:
          [v13 addObject:v11];
          continue;
        }

        if (!category)
        {
          v13 = v3;
          if (*&selfCopy->PSListController_opaque[v5] == 2)
          {
            goto LABEL_13;
          }

          [v11 application];
          v14 = v5;
          v15 = allApplicationSettings;
          v16 = selfCopy;
          v17 = v3;
          v19 = v18 = v4;
          supportsAlwaysOnDisplay = [v19 supportsAlwaysOnDisplay];

          v4 = v18;
          v3 = v17;
          selfCopy = v16;
          allApplicationSettings = v15;
          v5 = v14;
          v9 = v25;
          v13 = v3;
          if (supportsAlwaysOnDisplay)
          {
            goto LABEL_13;
          }
        }
      }

      v8 = [allApplicationSettings countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v8)
      {
LABEL_16:

        [v3 sortUsingComparator:&stru_8268];
        [v4 sortUsingComparator:&stru_8268];
        break;
      }
    }
  }

  v21 = [v3 copy];
  sortedWatchSettings = selfCopy->_sortedWatchSettings;
  selfCopy->_sortedWatchSettings = v21;

  v23 = [v4 copy];
  sortedPhoneNotificationSettings = selfCopy->_sortedPhoneNotificationSettings;
  selfCopy->_sortedPhoneNotificationSettings = v23;
}

- (id)_watchAppSpecifiers
{
  [(CSLPRFAppBacklightPrivacySettingsViewController *)self _cachePrivacyType];
  v3 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_sortedWatchSettings count]+ 1];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  if (self->_privacyType == 1)
  {
    v6 = @"APPS_WATCH_APPS_HEADER";
  }

  else
  {
    v6 = @"NOTIFICATIONS_WATCH_APPS_HEADER";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_84A8 table:@"CompanionAppBacklightPrivacySettings"];
  v8 = [PSSpecifier groupSpecifierWithID:@"APP_GROUP_ID" name:v7];

  [v3 addObject:v8];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_sortedWatchSettings;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = &selRef_setPrivacyDuringAlwaysOnForApp_withIgnoredSpecifier_;
        if (self->_privacyType != 1)
        {
          v13 = &selRef_setPrivacyDuringAlwaysOnForNotification_withIgnoredSpecifier_;
        }

        v14 = *v13;
        if (self->_privacyType == 1)
        {
          v15 = &selRef_privacyDuringAlwaysOnForAppWithIgnoredSpecifier_;
        }

        else
        {
          v15 = &selRef_privacyDuringAlwaysOnForNotificationWithIgnoredSpecifier_;
        }

        v16 = [(CSLPRFPerApplicationSettingsPSSpecifierFactory *)self->_specifierFactory specifierForSettings:*(*(&v20 + 1) + 8 * i) set:v14 get:*v15];
        [v3 addObject:v16];
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [v3 copy];

  return v17;
}

- (id)_phoneAppSpecifiers
{
  [(CSLPRFAppBacklightPrivacySettingsViewController *)self _cachePrivacyType];
  v3 = [(NSArray *)self->_sortedPhoneNotificationSettings count];
  if (v3 && self->_privacyType == 2)
  {
    v4 = [NSMutableArray arrayWithCapacity:v3 + 1];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"NOTIFICATIONS_IPHONE_APPS_HEADER" value:&stru_84A8 table:@"CompanionAppBacklightPrivacySettings"];
    v7 = [PSSpecifier groupSpecifierWithID:@"APP_GROUP_ID" name:v6];

    v16 = v7;
    [v4 addObject:v7];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_sortedPhoneNotificationSettings;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(CSLPRFPerApplicationSettingsPSSpecifierFactory *)self->_specifierFactory specifierForSettings:*(*(&v17 + 1) + 8 * i) set:"setPrivacyDuringAlwaysOnForNotification:withIgnoredSpecifier:" get:"privacyDuringAlwaysOnForNotificationWithIgnoredSpecifier:"];
          [v4 addObject:v13];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = [v4 copy];
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  return v14;
}

- (id)specifiers
{
  [(CSLPRFAppBacklightPrivacySettingsViewController *)self _cachePrivacyType];
  if (self->_privacyType)
  {
    [(CSLPRFAppBacklightPrivacySettingsViewController *)self _loadSettings];
    v3 = +[NSMutableArray array];
    privacyType = self->_privacyType;
    v5 = [PSSpecifier groupSpecifierWithID:@"ALL_APPS" name:&stru_84A8];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"APP_BACKLIGHT_PRIVACY_NOTIFICATION_PRIVACY_FOOTER";
    if (privacyType == 1)
    {
      v8 = @"APP_BACKLIGHT_PRIVACY_APP_PRIVACY_FOOTER";
    }

    v9 = &selRef_setPrivacyDuringAlwaysOnForApp_withIgnoredSpecifier_;
    if (privacyType != 1)
    {
      v9 = &selRef_setPrivacyDuringAlwaysOnForNotification_withIgnoredSpecifier_;
    }

    v10 = &selRef_privacyDuringAlwaysOnForAppWithIgnoredSpecifier_;
    if (privacyType != 1)
    {
      v10 = &selRef_privacyDuringAlwaysOnForNotificationWithIgnoredSpecifier_;
    }

    v11 = @"APP_BACKLIGHT_PRIVACY_APP_PRIVACY";
    if (privacyType != 1)
    {
      v11 = @"APP_BACKLIGHT_PRIVACY_NOTIFICATION_PRIVACY";
    }

    v33 = privacyType;
    if (privacyType == 3)
    {
      v12 = &stru_84A8;
    }

    else
    {
      v12 = v8;
    }

    if (privacyType == 3)
    {
      v13 = &selRef_setPrivacyDuringAlwaysOnForLiveActivities_withIgnoredSpecifier_;
    }

    else
    {
      v13 = v9;
    }

    if (privacyType == 3)
    {
      v14 = &selRef_privacyDuringAlwaysOnForLiveActivitiesWithIgnoredSpecifier_;
    }

    else
    {
      v14 = v10;
    }

    if (privacyType == 3)
    {
      v15 = @"APP_BACKLIGHT_PRIVACY_LIVE_ACTIVITIES_PRIVACY";
    }

    else
    {
      v15 = v11;
    }

    v16 = [v6 localizedStringForKey:v12 value:&stru_84A8 table:@"CompanionAppBacklightPrivacySettings"];
    [v5 setProperty:v16 forKey:PSFooterTextGroupKey];

    v34 = v5;
    [v3 addObject:v5];
    v17 = *v13;
    v18 = *v14;
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:v15 value:&stru_84A8 table:@"CompanionAppBacklightPrivacySettings"];
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self->_globalSettings set:v17 get:v18 detail:0 cell:6 edit:0];

    [v21 setProperty:@"APP_BACKLIGHT_PRIVACY_GLOBAL_APP" forKey:PSIDKey];
    [v3 addObject:v21];
    globalSettings = self->_globalSettings;
    if (self->_privacyType == 1)
    {
      privacyDuringAlwaysOnForApp = [(CSLPRFAppBacklightPrivacySettings *)globalSettings privacyDuringAlwaysOnForApp];
    }

    else
    {
      privacyDuringAlwaysOnForApp = [(CSLPRFAppBacklightPrivacySettings *)globalSettings privacyDuringAlwaysOnForNotification];
    }

    if (v33 != 3 && (privacyDuringAlwaysOnForApp & 1) == 0)
    {
      _watchAppSpecifiers = [(CSLPRFAppBacklightPrivacySettingsViewController *)self _watchAppSpecifiers];
      [v3 addObjectsFromArray:_watchAppSpecifiers];
      if (self->_privacyType == 2)
      {
        _phoneAppSpecifiers = [(CSLPRFAppBacklightPrivacySettingsViewController *)self _phoneAppSpecifiers];

        [v3 addObjectsFromArray:_phoneAppSpecifiers];
        _watchAppSpecifiers = _phoneAppSpecifiers;
      }
    }

    v27 = [v3 copy];
    v28 = OBJC_IVAR___PSListController__specifiers;
    v29 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v27;

    v30 = cslprf_settings_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [*&self->PSListController_opaque[v28] count];
      *buf = 134217984;
      v36 = v31;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "Returning %lu specifiers", buf, 0xCu);
    }

    v24 = *&self->PSListController_opaque[v28];
  }

  else
  {
    v3 = cslprf_settings_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_2684(self, v3);
    }

    v24 = &__NSArray0__struct;
  }

  return v24;
}

@end