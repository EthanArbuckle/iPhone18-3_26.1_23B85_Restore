@interface CSLPRFBackgroundAppRefreshSettingsViewController
- (CSLPRFBackgroundAppRefreshSettingsViewController)init;
- (NPSDomainAccessor)backgroundAppRefreshDomainAccessor;
- (id)backgroundAppRefreshState:(id)state;
- (id)specifiers;
- (void)_appsLoaded:(id)loaded;
- (void)_loadApps;
- (void)backgroundAppRefreshSwitchStateDidChange;
- (void)dataProviderDidChange:(id)change;
- (void)dealloc;
- (void)setBackgroundAppRefreshState:(id)state specifier:(id)specifier;
@end

@implementation CSLPRFBackgroundAppRefreshSettingsViewController

- (CSLPRFBackgroundAppRefreshSettingsViewController)init
{
  v19.receiver = self;
  v19.super_class = CSLPRFBackgroundAppRefreshSettingsViewController;
  v2 = [(CSLPRFBackgroundAppRefreshSettingsViewController *)&v19 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    backgroundAppRefreshDomainAccessor = [(CSLPRFBackgroundAppRefreshSettingsViewController *)v2 backgroundAppRefreshDomainAccessor];
    v6 = [backgroundAppRefreshDomainAccessor arrayForKey:@"DisabledBackgroundAppUpdateBundleIDs"];
    v7 = [NSMutableArray arrayWithArray:v6];
    disabledAppList = v2->_disabledAppList;
    v2->_disabledAppList = v7;

    v9 = objc_alloc_init(CSLPRFDefaultAppDataProvider);
    appLibrary = v2->_appLibrary;
    v2->_appLibrary = v9;

    [(CSLPRFDefaultAppDataProvider *)v2->_appLibrary setDelegate:v2];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1294, @"com.apple.Carousel.DisableBackgroundAppUpdates", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v12, v2, sub_1294, @"com.apple.Carousel.DisabledBackgroundAppUpdateBundleIDs", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v13 = cslprf_app_library_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = v14;
      table = [(CSLPRFBackgroundAppRefreshSettingsViewController *)v2 table];
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = table;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "CSLPRFBackgroundAppRefreshSettingsViewController, registering %@ for reuse with %@", buf, 0x16u);
    }

    table2 = [(CSLPRFBackgroundAppRefreshSettingsViewController *)v2 table];
    [table2 registerClass:objc_opt_class() forCellReuseIdentifier:@"CSLPRFBackgroundAppRefreshCell"];

    [(CSLPRFBackgroundAppRefreshSettingsViewController *)v2 _loadApps];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NARApplicationsChangedNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.Carousel.DisableBackgroundAppUpdates", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"com.apple.Carousel.DisabledBackgroundAppUpdateBundleIDs", 0);
  v6.receiver = self;
  v6.super_class = CSLPRFBackgroundAppRefreshSettingsViewController;
  [(CSLPRFBackgroundAppRefreshSettingsViewController *)&v6 dealloc];
}

- (void)_loadApps
{
  objc_initWeak(&location, self);
  appLibrary = self->_appLibrary;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_13F0;
  v4[3] = &unk_41C0;
  objc_copyWeak(&v5, &location);
  [(CSLPRFDefaultAppDataProvider *)appLibrary loadAppsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_appsLoaded:(id)loaded
{
  loadedCopy = loaded;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [loadedCopy sortedArrayUsingComparator:&stru_4200];

  sortedAppList = self->_sortedAppList;
  self->_sortedAppList = v5;

  [(CSLPRFBackgroundAppRefreshSettingsViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSMutableArray alloc];
    v6 = [(CSLPRFBackgroundAppRefreshSettingsViewController *)selfCopy loadSpecifiersFromPlistName:@"BackgroundAppRefresh" target:selfCopy];
    v7 = [v5 initWithArray:v6];

    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v8 setIdentifier:@"INSTALLED_APP_GROUP_ID"];
    [v7 addObject:v8];
    if (selfCopy->_sortedAppList)
    {
      v24 = v3;
      v28 = v7;
      backgroundAppRefreshDomainAccessor = [(CSLPRFBackgroundAppRefreshSettingsViewController *)selfCopy backgroundAppRefreshDomainAccessor];
      v27 = [backgroundAppRefreshDomainAccessor BOOLForKey:@"DisableBackgroundAppUpdates"];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = selfCopy;
      obj = selfCopy->_sortedAppList;
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v26 = *v31;
        v12 = PSLazyIconAppID;
        v13 = PSLazyIconLoading;
        v14 = PSCellClassKey;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v31 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            name = [v16 name];
            v18 = [PSSpecifier preferenceSpecifierNamed:name target:v29 set:"setBackgroundAppRefreshState:specifier:" get:"backgroundAppRefreshState:" detail:0 cell:6 edit:0];

            bundleID = [v16 bundleID];
            [v18 setProperty:bundleID forKey:v12];

            [v18 setProperty:&__kCFBooleanTrue forKey:v13];
            [v18 setProperty:objc_opt_class() forKey:v14];
            v20 = [NSNumber numberWithBool:v27];
            [v18 setProperty:v20 forKey:@"GlobalBARStateKey"];

            [v18 setProperty:v16 forKey:@"CSLPRFAppKey"];
            [v28 addObject:v18];
          }

          v11 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v11);
      }

      v7 = v28;
      selfCopy = v29;
      v3 = v24;
    }

    else
    {
      v21 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:15 edit:0];
      [v7 addObject:v21];
    }

    v22 = *&selfCopy->PSListController_opaque[v3];
    *&selfCopy->PSListController_opaque[v3] = v7;

    v4 = *&selfCopy->PSListController_opaque[v3];
  }

  return v4;
}

- (void)backgroundAppRefreshSwitchStateDidChange
{
  backgroundAppRefreshDomainAccessor = [(CSLPRFBackgroundAppRefreshSettingsViewController *)self backgroundAppRefreshDomainAccessor];
  v4 = [backgroundAppRefreshDomainAccessor BOOLForKey:@"DisableBackgroundAppUpdates"];

  v5 = cslprf_app_library_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "backgroundAppRefreshSwitchStateDidChange, loading apps, global bar = %{BOOL}u", v6, 8u);
  }

  [(CSLPRFBackgroundAppRefreshSettingsViewController *)self _loadApps];
}

- (void)setBackgroundAppRefreshState:(id)state specifier:(id)specifier
{
  stateCopy = state;
  v7 = [specifier propertyForKey:@"CSLPRFAppKey"];
  bundleID = [v7 bundleID];
  bOOLValue = [stateCopy BOOLValue];

  disabledAppList = self->_disabledAppList;
  if (bOOLValue)
  {
    [(NSMutableArray *)disabledAppList removeObject:bundleID];
  }

  else
  {
    [(NSMutableArray *)disabledAppList addObject:bundleID];
  }

  backgroundAppRefreshDomainAccessor = [(CSLPRFBackgroundAppRefreshSettingsViewController *)self backgroundAppRefreshDomainAccessor];
  [backgroundAppRefreshDomainAccessor setObject:self->_disabledAppList forKey:@"DisabledBackgroundAppUpdateBundleIDs"];

  backgroundAppRefreshDomainAccessor2 = [(CSLPRFBackgroundAppRefreshSettingsViewController *)self backgroundAppRefreshDomainAccessor];
  synchronize = [backgroundAppRefreshDomainAccessor2 synchronize];

  syncManager = self->_syncManager;
  v17 = @"DisabledBackgroundAppUpdateBundleIDs";
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  v16 = [NSSet setWithArray:v15];
  [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.Carousel" keys:v16];
}

- (id)backgroundAppRefreshState:(id)state
{
  v4 = [state propertyForKey:@"CSLPRFAppKey"];
  disabledAppList = self->_disabledAppList;
  bundleID = [v4 bundleID];
  v7 = [(NSMutableArray *)disabledAppList containsObject:bundleID]^ 1;

  v8 = cslprf_app_library_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    bundleID2 = [v4 bundleID];
    v12 = 138412546;
    v13 = bundleID2;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "backgroundAppRefreshState, bar for %@ = %{BOOL}u", &v12, 0x12u);
  }

  v10 = [NSNumber numberWithBool:v7];

  return v10;
}

- (NPSDomainAccessor)backgroundAppRefreshDomainAccessor
{
  backgroundAppRefreshDomainAccessor = self->_backgroundAppRefreshDomainAccessor;
  if (!backgroundAppRefreshDomainAccessor)
  {
    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel"];
    v5 = self->_backgroundAppRefreshDomainAccessor;
    self->_backgroundAppRefreshDomainAccessor = v4;

    backgroundAppRefreshDomainAccessor = self->_backgroundAppRefreshDomainAccessor;
  }

  return backgroundAppRefreshDomainAccessor;
}

- (void)dataProviderDidChange:(id)change
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1CDC;
  v3[3] = &unk_4228;
  objc_copyWeak(&v4, &location);
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

@end