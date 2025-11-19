@interface CSLPRFReturnToClockSettingsViewController
- (BOOL)_isSessionCapable:(id)a3;
- (CSLPRFReturnToClockSettingsViewController)init;
- (NPSDomainAccessor)carouselDomainAccessor;
- (NPSDomainAccessor)nanoDomainAccessor;
- (id)_appSpecifiers;
- (id)appStickinessIDForState:(int64_t)a3;
- (id)currentAppTimeoutSetting;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)appStickinessDuration;
- (void)_loadApps;
- (void)_setApps:(id)a3;
- (void)_synchronizeDomainWithAccessor:(id)a3 keys:(id)a4 withCompletion:(id)a5;
- (void)dealloc;
- (void)handleDidUnpair;
- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5;
- (void)reloadAll;
- (void)reloadReturnToAppSettingsModel;
- (void)setAppStickiness:(int64_t)a3;
- (void)settingsChanged:(id)a3 forBundleID:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CSLPRFReturnToClockSettingsViewController

- (CSLPRFReturnToClockSettingsViewController)init
{
  v23.receiver = self;
  v23.super_class = CSLPRFReturnToClockSettingsViewController;
  v2 = [(CSLPRFReturnToClockSettingsViewController *)&v23 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    v5 = +[PDRRegistry sharedInstance];
    v6 = [v5 getActivePairedDevice];

    v2->_hasBacklightExtendCapability = [v6 supportsCapability:1655344837];
    v2->_hasRotateToWakeCapability = [v6 supportsCapability:3089013743];
    v2->_hasStickinessCapability = [v6 supportsCapability:3986076380];
    v7 = cslprf_sessions_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      hasStickinessCapability = v2->_hasStickinessCapability;
      *buf = 67109120;
      LODWORD(v25) = hasStickinessCapability;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "hasStickinessCapability = %{BOOL}u", buf, 8u);
    }

    v2->_hasAutoLaunchCapability = [v6 supportsCapability:1091258998];
    v9 = cslprf_sessions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      hasAutoLaunchCapability = v2->_hasAutoLaunchCapability;
      *buf = 67109120;
      LODWORD(v25) = hasAutoLaunchCapability;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "hasAutoLaunchCapability = %{BOOL}u", buf, 8u);
    }

    v2->_hasStickinessSelectionCapability = [v6 supportsCapability:1519796464];
    v11 = cslprf_sessions_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      hasStickinessSelectionCapability = v2->_hasStickinessSelectionCapability;
      *buf = 67109120;
      LODWORD(v25) = hasStickinessSelectionCapability;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "hasStickinessSelectionCapability = %{BOOL}u", buf, 8u);
    }

    v13 = [(CSLPRFReturnToClockSettingsViewController *)v2 carouselDomainAccessor];
    v14 = [v13 objectForKey:@"ReturnToAppSettings"];

    v15 = cslprf_sessions_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = @"ReturnToAppSettings";
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%@ = %@", buf, 0x16u);
    }

    v2->_hasPerAppStickinessCapability = v14 != 0;
    v16 = cslprf_sessions_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      hasPerAppStickinessCapability = v2->_hasPerAppStickinessCapability;
      *buf = 67109120;
      LODWORD(v25) = hasPerAppStickinessCapability;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "hasPerAppStickinessCapability = %{BOOL}u", buf, 8u);
    }

    if (v2->_hasPerAppStickinessCapability)
    {
      [(CSLPRFReturnToClockSettingsViewController *)v2 reloadReturnToAppSettingsModel];
      v18 = objc_alloc_init(CSLPRFDefaultAppDataProvider);
      appLibrary = v2->_appLibrary;
      v2->_appLibrary = v18;

      [(CSLPRFDefaultAppDataProvider *)v2->_appLibrary setDelegate:v2];
      [(CSLPRFReturnToClockSettingsViewController *)v2 _loadApps];
    }

    v20 = [(CSLPRFReturnToClockSettingsViewController *)v2 carouselDomainAccessor];
    [(CSLPRFReturnToClockSettingsViewController *)v2 _synchronizeDomainWithAccessor:v20 keys:0 withCompletion:0];

    v21 = [(CSLPRFReturnToClockSettingsViewController *)v2 nanoDomainAccessor];
    [(CSLPRFReturnToClockSettingsViewController *)v2 _synchronizeDomainWithAccessor:v21 keys:0 withCompletion:0];
  }

  return v2;
}

- (void)reloadAll
{
  v3 = [(CSLPRFReturnToClockSettingsViewController *)self carouselDomainAccessor];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_260C;
  v4[3] = &unk_C358;
  v4[4] = self;
  [(CSLPRFReturnToClockSettingsViewController *)self _synchronizeDomainWithAccessor:v3 keys:0 withCompletion:v4];
}

- (void)reloadReturnToAppSettingsModel
{
  [(CSLPRFReturnToAppSettingsModel *)self->_returnToAppSettingsModel removeObserver:self];
  v3 = objc_alloc_init(CSLPRFReturnToAppSettingsModel);
  returnToAppSettingsModel = self->_returnToAppSettingsModel;
  self->_returnToAppSettingsModel = v3;

  v5 = self->_returnToAppSettingsModel;

  [(CSLPRFReturnToAppSettingsModel *)v5 addObserver:self];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSLPRFReturnToClockSettingsViewController *)self indexForIndexPath:v7];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  if (![(CSLPRFReturnToClockSettingGroup *)self->_returnToClockGroup specifierIsWithinGroup:v9])
  {
    v10 = [v9 identifier];
    v11 = [v10 isEqualToString:@"APP_STICKS_IN_SESSION_ID"];

    if (v11)
    {
      v12 = self;
      v13 = 30;
    }

    else
    {
      v14 = [v9 identifier];
      v15 = [v14 isEqualToString:@"TINY_WINDOW_ID"];

      if (v15)
      {
        v12 = self;
        v13 = 5;
      }

      else
      {
        v16 = [v9 identifier];
        v17 = [v16 isEqualToString:@"TWO_MINUTE_WINDOW_ID"];

        if (v17)
        {
          v12 = self;
          v13 = 120;
        }

        else
        {
          v18 = [v9 identifier];
          v19 = [v18 isEqualToString:@"ONE_HOUR_WINDOW_ID"];

          if (v19)
          {
            v12 = self;
            v13 = 3600;
          }

          else
          {
            v20 = [v9 identifier];
            v21 = [v20 isEqualToString:@"ALWAYS_SHOW_WATCH_FACE_NO_STICKINESS_ID"];

            if (!v21)
            {
              goto LABEL_14;
            }

            v12 = self;
            v13 = -1;
          }
        }
      }
    }

    [(CSLPRFReturnToClockSettingsViewController *)v12 setAppStickiness:v13];
    goto LABEL_14;
  }

  [(CSLPRFReturnToClockSettingGroup *)self->_returnToClockGroup specifierSelected:v9];
LABEL_14:
  v22.receiver = self;
  v22.super_class = CSLPRFReturnToClockSettingsViewController;
  [(CSLPRFReturnToClockSettingsViewController *)&v22 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = CSLPRFReturnToClockSettingsViewController;
  v7 = [(CSLPRFReturnToClockSettingsViewController *)&v17 tableView:a3 cellForRowAtIndexPath:v6];
  if (self->_hasPerAppStickinessCapability)
  {
    v8 = [(CSLPRFReturnToClockSettingsViewController *)self indexForIndexPath:v6];
    v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
    v10 = [v9 propertyForKey:@"ReturnToAppAppSpecifier"];
    if ([v10 BOOLValue])
    {
      v11 = [v9 identifier];
      v12 = [(CSLPRFReturnToAppSettingsModel *)self->_returnToAppSettingsModel settingsForBundleID:v11];
      if ([v12 hasCustomReturnToAppTimeout])
      {
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"RETURN_TO_CLOCK_CUSTOM" value:&stru_C5E8 table:@"CompanionReturnToClockSettings"];
        v15 = [v7 detailTextLabel];
        [v15 setText:v14];
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  if (self->_isObservingNotifications)
  {
    [(CSLPRFReturnToClockSettingsViewController *)self stopObservingNotifications];
  }

  v3.receiver = self;
  v3.super_class = CSLPRFReturnToClockSettingsViewController;
  [(CSLPRFReturnToClockSettingsViewController *)&v3 dealloc];
}

- (void)handleDidUnpair
{
  nanoDomainAccessor = self->_nanoDomainAccessor;
  self->_nanoDomainAccessor = 0;

  carouselDomainAccessor = self->_carouselDomainAccessor;
  self->_carouselDomainAccessor = 0;
}

- (NPSDomainAccessor)nanoDomainAccessor
{
  nanoDomainAccessor = self->_nanoDomainAccessor;
  if (!nanoDomainAccessor)
  {
    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano"];
    v5 = self->_nanoDomainAccessor;
    self->_nanoDomainAccessor = v4;

    nanoDomainAccessor = self->_nanoDomainAccessor;
  }

  return nanoDomainAccessor;
}

- (NPSDomainAccessor)carouselDomainAccessor
{
  carouselDomainAccessor = self->_carouselDomainAccessor;
  if (!carouselDomainAccessor)
  {
    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel"];
    v5 = self->_carouselDomainAccessor;
    self->_carouselDomainAccessor = v4;

    carouselDomainAccessor = self->_carouselDomainAccessor;
  }

  return carouselDomainAccessor;
}

- (void)_synchronizeDomainWithAccessor:(id)a3 keys:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = cslprf_sessions_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 domain];
    *buf = 138412546;
    v22 = v12;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "synchronizing %@ %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_2F70;
  v16[3] = &unk_C2C8;
  objc_copyWeak(&v20, buf);
  v13 = v8;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  [v13 synchronizeWithCompletionHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  returnToClockGroup = self->_returnToClockGroup;
  if (!returnToClockGroup)
  {
    v5 = [CSLPRFReturnToClockSettingGroup alloc];
    v6 = [(CSLPRFReturnToClockSettingsViewController *)self appStickinessDuration];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"RETURN_TO_CLOCK_HEADER" value:&stru_C5E8 table:@"CompanionReturnToClockSettings"];
    v9 = [(CSLPRFReturnToClockSettingGroup *)v5 initWithDelegate:self returnToClockSetting:v6 header:v8 appSpecific:0];
    v10 = self->_returnToClockGroup;
    self->_returnToClockGroup = v9;

    returnToClockGroup = self->_returnToClockGroup;
  }

  v11 = [(CSLPRFReturnToClockSettingGroup *)returnToClockGroup specifiers];
  [v3 addObjectsFromArray:v11];

  if (self->_hasPerAppStickinessCapability)
  {
    v12 = [(CSLPRFReturnToClockSettingsViewController *)self _appSpecifiers];
    [v3 addObjectsFromArray:v12];
  }

  v13 = [v3 copy];
  v14 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v13;

  return v3;
}

- (id)currentAppTimeoutSetting
{
  v2 = [(CSLPRFReturnToClockSettingsViewController *)self appStickinessDuration];

  return [NSNumber numberWithInteger:v2];
}

- (BOOL)_isSessionCapable:(id)a3
{
  v3 = [(CSLPRFReturnToAppSettingsModel *)self->_returnToAppSettingsModel settingsForBundleID:a3];
  v4 = [v3 sessionCapable];

  return v4;
}

- (id)_appSpecifiers
{
  v3 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_sortedApps count]+ 1];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CUSTOMIZE_APPS_HEADER" value:&stru_C5E8 table:@"CompanionReturnToClockSettings"];
  v6 = [PSSpecifier groupSpecifierWithID:@"APP_GROUP_ID" name:v5];

  [v3 addObject:v6];
  objc_initWeak(&location, self);
  sortedApps = self->_sortedApps;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_3574;
  v14 = &unk_C380;
  objc_copyWeak(&v17, &location);
  v15 = self;
  v8 = v3;
  v16 = v8;
  [(NSArray *)sortedApps enumerateObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v9;
}

- (void)_loadApps
{
  objc_initWeak(&location, self);
  appLibrary = self->_appLibrary;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_37EC;
  v4[3] = &unk_C3A8;
  objc_copyWeak(&v5, &location);
  [(CSLPRFDefaultAppDataProvider *)appLibrary loadAppsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_setApps:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [v4 sortedArrayUsingComparator:&stru_C3E8];

  sortedApps = self->_sortedApps;
  self->_sortedApps = v5;

  [(CSLPRFReturnToClockSettingsViewController *)self reloadSpecifiers];
}

- (void)setAppStickiness:(int64_t)a3
{
  v5 = [(CSLPRFReturnToClockSettingsViewController *)self specifierForID:@"APP_STICKINESS_GROUP_ID"];
  v6 = [(CSLPRFReturnToClockSettingsViewController *)self appStickinessIDForState:a3];
  v7 = [(CSLPRFReturnToClockSettingsViewController *)self specifierForID:v6];

  [v5 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
  v8 = 0;
  if (a3 <= 29)
  {
    if (a3 == -1)
    {
      v9 = @"ALWAYS_FOOTER";
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_13;
      }

      v9 = @"TINY_WINDOW_FOOTER";
    }
  }

  else
  {
    switch(a3)
    {
      case 30:
        v9 = @"WHILE_IN_SESSION_FOOTER";
        break;
      case 120:
        v9 = @"WITHIN_2_MINUTE_WINDOW_FOOTER";
        break;
      case 3600:
        v9 = @"WITHIN_1_HOUR_WINDOW_FOOTER";
        break;
      default:
        goto LABEL_13;
    }
  }

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v10 localizedStringForKey:v9 value:&stru_C5E8 table:@"CompanionReturnToClockSettings"];

LABEL_13:
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v8 value:&stru_C5E8 table:@"CompanionReturnToClockSettings"];
  [v5 setProperty:v12 forKey:PSFooterTextGroupKey];

  [(CSLPRFReturnToClockSettingsViewController *)self reloadSpecifier:v5 animated:0];
  v13 = [(CSLPRFReturnToClockSettingsViewController *)self nanoDomainAccessor];
  [v13 setInteger:a3 forKey:@"OnWakeTimeoutSeconds"];

  v14 = cslprf_sessions_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = @"OnWakeTimeoutSeconds";
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "setAppStickiness key %@ = %d", &v17, 0x12u);
  }

  v15 = [(CSLPRFReturnToClockSettingsViewController *)self nanoDomainAccessor];
  v16 = [NSSet setWithObject:@"OnWakeTimeoutSeconds"];
  [(CSLPRFReturnToClockSettingsViewController *)self _synchronizeDomainWithAccessor:v15 keys:v16 withCompletion:0];
}

- (id)appStickinessIDForState:(int64_t)a3
{
  if (a3 > 29)
  {
    if (a3 == 3600)
    {
      return @"ONE_HOUR_WINDOW_ID";
    }

    else
    {
      if (a3 != 30)
      {
        return @"TWO_MINUTE_WINDOW_ID";
      }

      if (self->_hasStickinessSelectionCapability)
      {
        return @"TWO_MINUTE_WINDOW_ID";
      }

      else
      {
        return @"APP_STICKS_IN_SESSION_ID";
      }
    }
  }

  else
  {
    if (a3 != -1)
    {
      if (a3 == 5)
      {
        return @"TINY_WINDOW_ID";
      }

      return @"TWO_MINUTE_WINDOW_ID";
    }

    if (CSLSAllowReturnToAppUntilCrownPress())
    {
      return @"ALWAYS_SHOW_WATCH_FACE_NO_STICKINESS_ID";
    }

    else
    {
      return @"ONE_HOUR_WINDOW_ID";
    }
  }
}

- (int64_t)appStickinessDuration
{
  v2 = [(CSLPRFReturnToClockSettingsViewController *)self nanoDomainAccessor];
  v3 = [v2 integerForKey:@"OnWakeTimeoutSeconds"];

  if (v3 == -1)
  {
    if (CSLSAllowReturnToAppUntilCrownPress())
    {
      v3 = -1;
    }

    else
    {
      v3 = 3600;
    }
  }

  v4 = cslprf_sessions_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = @"OnWakeTimeoutSeconds";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "appStickinessDuration %@ = %d", &v6, 0x12u);
  }

  if (v3)
  {
    return v3;
  }

  else
  {
    return 120;
  }
}

- (void)settingsChanged:(id)a3 forBundleID:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_hasPerAppStickinessCapability)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_3E24;
    v7[3] = &unk_C438;
    v7[4] = self;
    v8 = v5;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)registry:(id)a3 changed:(id)a4 properties:(id)a5
{
  v7 = a4;
  if ([a5 containsObject:PDRDevicePropertyKeyIsPaired] && (objc_msgSend(v7, "isPaired") & 1) == 0)
  {
    [(CSLPRFReturnToClockSettingsViewController *)self handleDidUnpair];
  }
}

@end