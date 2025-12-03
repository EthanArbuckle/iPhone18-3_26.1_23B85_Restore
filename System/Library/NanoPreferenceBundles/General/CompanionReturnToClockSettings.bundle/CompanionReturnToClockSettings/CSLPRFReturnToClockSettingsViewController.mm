@interface CSLPRFReturnToClockSettingsViewController
- (BOOL)_isSessionCapable:(id)capable;
- (CSLPRFReturnToClockSettingsViewController)init;
- (NPSDomainAccessor)carouselDomainAccessor;
- (NPSDomainAccessor)nanoDomainAccessor;
- (id)_appSpecifiers;
- (id)appStickinessIDForState:(int64_t)state;
- (id)currentAppTimeoutSetting;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)appStickinessDuration;
- (void)_loadApps;
- (void)_setApps:(id)apps;
- (void)_synchronizeDomainWithAccessor:(id)accessor keys:(id)keys withCompletion:(id)completion;
- (void)dealloc;
- (void)handleDidUnpair;
- (void)registry:(id)registry changed:(id)changed properties:(id)properties;
- (void)reloadAll;
- (void)reloadReturnToAppSettingsModel;
- (void)setAppStickiness:(int64_t)stickiness;
- (void)settingsChanged:(id)changed forBundleID:(id)d;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
    getActivePairedDevice = [v5 getActivePairedDevice];

    v2->_hasBacklightExtendCapability = [getActivePairedDevice supportsCapability:1655344837];
    v2->_hasRotateToWakeCapability = [getActivePairedDevice supportsCapability:3089013743];
    v2->_hasStickinessCapability = [getActivePairedDevice supportsCapability:3986076380];
    v7 = cslprf_sessions_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      hasStickinessCapability = v2->_hasStickinessCapability;
      *buf = 67109120;
      LODWORD(v25) = hasStickinessCapability;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "hasStickinessCapability = %{BOOL}u", buf, 8u);
    }

    v2->_hasAutoLaunchCapability = [getActivePairedDevice supportsCapability:1091258998];
    v9 = cslprf_sessions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      hasAutoLaunchCapability = v2->_hasAutoLaunchCapability;
      *buf = 67109120;
      LODWORD(v25) = hasAutoLaunchCapability;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "hasAutoLaunchCapability = %{BOOL}u", buf, 8u);
    }

    v2->_hasStickinessSelectionCapability = [getActivePairedDevice supportsCapability:1519796464];
    v11 = cslprf_sessions_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      hasStickinessSelectionCapability = v2->_hasStickinessSelectionCapability;
      *buf = 67109120;
      LODWORD(v25) = hasStickinessSelectionCapability;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "hasStickinessSelectionCapability = %{BOOL}u", buf, 8u);
    }

    carouselDomainAccessor = [(CSLPRFReturnToClockSettingsViewController *)v2 carouselDomainAccessor];
    v14 = [carouselDomainAccessor objectForKey:@"ReturnToAppSettings"];

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

    carouselDomainAccessor2 = [(CSLPRFReturnToClockSettingsViewController *)v2 carouselDomainAccessor];
    [(CSLPRFReturnToClockSettingsViewController *)v2 _synchronizeDomainWithAccessor:carouselDomainAccessor2 keys:0 withCompletion:0];

    nanoDomainAccessor = [(CSLPRFReturnToClockSettingsViewController *)v2 nanoDomainAccessor];
    [(CSLPRFReturnToClockSettingsViewController *)v2 _synchronizeDomainWithAccessor:nanoDomainAccessor keys:0 withCompletion:0];
  }

  return v2;
}

- (void)reloadAll
{
  carouselDomainAccessor = [(CSLPRFReturnToClockSettingsViewController *)self carouselDomainAccessor];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_260C;
  v4[3] = &unk_C358;
  v4[4] = self;
  [(CSLPRFReturnToClockSettingsViewController *)self _synchronizeDomainWithAccessor:carouselDomainAccessor keys:0 withCompletion:v4];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CSLPRFReturnToClockSettingsViewController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  if (![(CSLPRFReturnToClockSettingGroup *)self->_returnToClockGroup specifierIsWithinGroup:v9])
  {
    identifier = [v9 identifier];
    v11 = [identifier isEqualToString:@"APP_STICKS_IN_SESSION_ID"];

    if (v11)
    {
      selfCopy5 = self;
      v13 = 30;
    }

    else
    {
      identifier2 = [v9 identifier];
      v15 = [identifier2 isEqualToString:@"TINY_WINDOW_ID"];

      if (v15)
      {
        selfCopy5 = self;
        v13 = 5;
      }

      else
      {
        identifier3 = [v9 identifier];
        v17 = [identifier3 isEqualToString:@"TWO_MINUTE_WINDOW_ID"];

        if (v17)
        {
          selfCopy5 = self;
          v13 = 120;
        }

        else
        {
          identifier4 = [v9 identifier];
          v19 = [identifier4 isEqualToString:@"ONE_HOUR_WINDOW_ID"];

          if (v19)
          {
            selfCopy5 = self;
            v13 = 3600;
          }

          else
          {
            identifier5 = [v9 identifier];
            v21 = [identifier5 isEqualToString:@"ALWAYS_SHOW_WATCH_FACE_NO_STICKINESS_ID"];

            if (!v21)
            {
              goto LABEL_14;
            }

            selfCopy5 = self;
            v13 = -1;
          }
        }
      }
    }

    [(CSLPRFReturnToClockSettingsViewController *)selfCopy5 setAppStickiness:v13];
    goto LABEL_14;
  }

  [(CSLPRFReturnToClockSettingGroup *)self->_returnToClockGroup specifierSelected:v9];
LABEL_14:
  v22.receiver = self;
  v22.super_class = CSLPRFReturnToClockSettingsViewController;
  [(CSLPRFReturnToClockSettingsViewController *)&v22 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = CSLPRFReturnToClockSettingsViewController;
  v7 = [(CSLPRFReturnToClockSettingsViewController *)&v17 tableView:view cellForRowAtIndexPath:pathCopy];
  if (self->_hasPerAppStickinessCapability)
  {
    v8 = [(CSLPRFReturnToClockSettingsViewController *)self indexForIndexPath:pathCopy];
    v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
    v10 = [v9 propertyForKey:@"ReturnToAppAppSpecifier"];
    if ([v10 BOOLValue])
    {
      identifier = [v9 identifier];
      v12 = [(CSLPRFReturnToAppSettingsModel *)self->_returnToAppSettingsModel settingsForBundleID:identifier];
      if ([v12 hasCustomReturnToAppTimeout])
      {
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"RETURN_TO_CLOCK_CUSTOM" value:&stru_C5E8 table:@"CompanionReturnToClockSettings"];
        detailTextLabel = [v7 detailTextLabel];
        [detailTextLabel setText:v14];
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

- (void)_synchronizeDomainWithAccessor:(id)accessor keys:(id)keys withCompletion:(id)completion
{
  accessorCopy = accessor;
  keysCopy = keys;
  completionCopy = completion;
  v11 = cslprf_sessions_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    domain = [accessorCopy domain];
    *buf = 138412546;
    v22 = domain;
    v23 = 2112;
    v24 = keysCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "synchronizing %@ %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_2F70;
  v16[3] = &unk_C2C8;
  objc_copyWeak(&v20, buf);
  v13 = accessorCopy;
  v17 = v13;
  v14 = keysCopy;
  v18 = v14;
  v15 = completionCopy;
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
    appStickinessDuration = [(CSLPRFReturnToClockSettingsViewController *)self appStickinessDuration];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"RETURN_TO_CLOCK_HEADER" value:&stru_C5E8 table:@"CompanionReturnToClockSettings"];
    v9 = [(CSLPRFReturnToClockSettingGroup *)v5 initWithDelegate:self returnToClockSetting:appStickinessDuration header:v8 appSpecific:0];
    v10 = self->_returnToClockGroup;
    self->_returnToClockGroup = v9;

    returnToClockGroup = self->_returnToClockGroup;
  }

  specifiers = [(CSLPRFReturnToClockSettingGroup *)returnToClockGroup specifiers];
  [v3 addObjectsFromArray:specifiers];

  if (self->_hasPerAppStickinessCapability)
  {
    _appSpecifiers = [(CSLPRFReturnToClockSettingsViewController *)self _appSpecifiers];
    [v3 addObjectsFromArray:_appSpecifiers];
  }

  v13 = [v3 copy];
  v14 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v13;

  return v3;
}

- (id)currentAppTimeoutSetting
{
  appStickinessDuration = [(CSLPRFReturnToClockSettingsViewController *)self appStickinessDuration];

  return [NSNumber numberWithInteger:appStickinessDuration];
}

- (BOOL)_isSessionCapable:(id)capable
{
  v3 = [(CSLPRFReturnToAppSettingsModel *)self->_returnToAppSettingsModel settingsForBundleID:capable];
  sessionCapable = [v3 sessionCapable];

  return sessionCapable;
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
  selfCopy = self;
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

- (void)_setApps:(id)apps
{
  appsCopy = apps;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [appsCopy sortedArrayUsingComparator:&stru_C3E8];

  sortedApps = self->_sortedApps;
  self->_sortedApps = v5;

  [(CSLPRFReturnToClockSettingsViewController *)self reloadSpecifiers];
}

- (void)setAppStickiness:(int64_t)stickiness
{
  v5 = [(CSLPRFReturnToClockSettingsViewController *)self specifierForID:@"APP_STICKINESS_GROUP_ID"];
  v6 = [(CSLPRFReturnToClockSettingsViewController *)self appStickinessIDForState:stickiness];
  v7 = [(CSLPRFReturnToClockSettingsViewController *)self specifierForID:v6];

  [v5 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
  v8 = 0;
  if (stickiness <= 29)
  {
    if (stickiness == -1)
    {
      v9 = @"ALWAYS_FOOTER";
    }

    else
    {
      if (stickiness != 5)
      {
        goto LABEL_13;
      }

      v9 = @"TINY_WINDOW_FOOTER";
    }
  }

  else
  {
    switch(stickiness)
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
  nanoDomainAccessor = [(CSLPRFReturnToClockSettingsViewController *)self nanoDomainAccessor];
  [nanoDomainAccessor setInteger:stickiness forKey:@"OnWakeTimeoutSeconds"];

  v14 = cslprf_sessions_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 138412546;
    v18 = @"OnWakeTimeoutSeconds";
    v19 = 1024;
    stickinessCopy = stickiness;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "setAppStickiness key %@ = %d", &v17, 0x12u);
  }

  nanoDomainAccessor2 = [(CSLPRFReturnToClockSettingsViewController *)self nanoDomainAccessor];
  v16 = [NSSet setWithObject:@"OnWakeTimeoutSeconds"];
  [(CSLPRFReturnToClockSettingsViewController *)self _synchronizeDomainWithAccessor:nanoDomainAccessor2 keys:v16 withCompletion:0];
}

- (id)appStickinessIDForState:(int64_t)state
{
  if (state > 29)
  {
    if (state == 3600)
    {
      return @"ONE_HOUR_WINDOW_ID";
    }

    else
    {
      if (state != 30)
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
    if (state != -1)
    {
      if (state == 5)
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
  nanoDomainAccessor = [(CSLPRFReturnToClockSettingsViewController *)self nanoDomainAccessor];
  v3 = [nanoDomainAccessor integerForKey:@"OnWakeTimeoutSeconds"];

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

- (void)settingsChanged:(id)changed forBundleID:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (self->_hasPerAppStickinessCapability)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_3E24;
    v7[3] = &unk_C438;
    v7[4] = self;
    v8 = dCopy;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)registry:(id)registry changed:(id)changed properties:(id)properties
{
  changedCopy = changed;
  if ([properties containsObject:PDRDevicePropertyKeyIsPaired] && (objc_msgSend(changedCopy, "isPaired") & 1) == 0)
  {
    [(CSLPRFReturnToClockSettingsViewController *)self handleDidUnpair];
  }
}

@end