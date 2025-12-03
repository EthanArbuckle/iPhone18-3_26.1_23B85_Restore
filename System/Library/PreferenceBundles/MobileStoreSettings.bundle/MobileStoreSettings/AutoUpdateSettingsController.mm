@interface AutoUpdateSettingsController
- (AutoUpdateSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_automaticUpdatesEnabledForAppSpecifier:(id)specifier;
- (id)_globalAutomaticUpdatesEnabled:(id)enabled;
- (id)specifiers;
- (void)_lowPowerModeChangedNotification:(id)notification;
- (void)_setAutomaticUpdatesEnabled:(id)enabled forAppSpecifier:(id)specifier;
- (void)_setGlobalAutomaticUpdatesEnabled:(id)enabled specifier:(id)specifier;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
@end

@implementation AutoUpdateSettingsController

- (AutoUpdateSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  v15.receiver = self;
  v15.super_class = AutoUpdateSettingsController;
  v4 = [(AutoUpdateSettingsController *)&v15 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"AUTO_DOWNLOAD_UPDATES" value:&stru_4E898 table:@"StoreSettings"];
    [(AutoUpdateSettingsController *)v4 setTitle:v6];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v4 selector:"_lowPowerModeChangedNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(kSSUserDefaultsKeyAutoUpdatesEnabled, kSSUserDefaultsIdentifier, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v9 = AppBooleanValue == 0;
    }

    else
    {
      v9 = 0;
    }

    v10 = !v9;
    v4->_autoUpdatesEnabledDefault = v10;
    v11 = +[NSProcessInfo processInfo];
    v4->_isLowPowerMode = [v11 isLowPowerModeEnabled];

    v12 = +[LSApplicationWorkspace defaultWorkspace];
    [v12 addObserver:v4];

    sub_38688(v4);
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AutoUpdateSettingsController;
  [(AutoUpdateSettingsController *)&v4 dealloc];
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v5 = [installCopy count];
  v21 = [[NSMutableArray alloc] initWithCapacity:v5];
  v6 = [[NSMutableArray alloc] initWithCapacity:v5];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = installCopy;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    selfCopy = self;
    v10 = 0;
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        correspondingApplicationRecord = [v13 correspondingApplicationRecord];
        v15 = [ASDUpdatesService isAutomaticUpdateAuthorizationRequiredWhenEnabledForAppWithRecord:correspondingApplicationRecord];

        if (v15)
        {
          bundleIdentifier = [v13 bundleIdentifier];
          localizedName = [v13 localizedName];
          v18 = localizedName;
          if (bundleIdentifier)
          {
            v19 = localizedName == 0;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            [v21 addObject:bundleIdentifier];
            [v6 addObject:v18];
            v10 = 1;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);

    if (v10)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_38B9C;
      block[3] = &unk_4E738;
      block[4] = selfCopy;
      v23 = v21;
      v24 = v6;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(uninstallCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = uninstallCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        bundleIdentifier = [*(*(&v15 + 1) + 8 * v10) bundleIdentifier];
        [v5 addObject:bundleIdentifier];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_38E84;
  v13[3] = &unk_4E788;
  v13[4] = self;
  v14 = v5;
  v12 = v5;
  dispatch_async(&_dispatch_main_q, v13);
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:10];
    v6 = [PSSpecifier groupSpecifierWithID:@"AUTO_DOWNLOAD_UPDATES"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"AUTO_DOWNLOAD_UPDATES_PREINSTALLED_EXPLANATION" value:&stru_4E898 table:@"StoreSettings"];
    v29 = PSFooterTextGroupKey;
    [v6 setObject:v8 forKeyedSubscript:?];

    v30 = v5;
    [v5 addObject:v6];
    v9 = [PSSpecifier alloc];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"AUTO_DOWNLOAD_UPDATES" value:&stru_4E898 table:@"StoreSettings"];
    v12 = [v9 initWithName:v11 target:self set:"_setGlobalAutomaticUpdatesEnabled:specifier:" get:"_globalAutomaticUpdatesEnabled:" detail:0 cell:6 edit:0];

    if (self->_isLowPowerMode)
    {
      [v12 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    [v30 addObject:v12];
    if (!self->_isLowPowerMode && self->_autoUpdatesEnabledDefault)
    {
      if (!self->_preinstalledApps)
      {
        v13 = [[NSMutableArray alloc] initWithCapacity:7];
        preinstalledApps = self->_preinstalledApps;
        self->_preinstalledApps = v13;

        nameForBundleID = self->_nameForBundleID;
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_39490;
        v31[3] = &unk_4E7B0;
        v31[4] = self;
        [(NSMutableDictionary *)nameForBundleID enumerateKeysAndObjectsUsingBlock:v31];
        [(NSMutableArray *)self->_preinstalledApps sortUsingComparator:&stru_4E7F0];
      }

      preinstalledAppsGroup = self->_preinstalledAppsGroup;
      if (!preinstalledAppsGroup)
      {
        v17 = [NSBundle bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"PREINSTALLED_APPS" value:&stru_4E898 table:@"StoreSettings"];
        v19 = [PSSpecifier groupSpecifierWithID:@"PREINSTALLED_APPS" name:v18];
        v20 = self->_preinstalledAppsGroup;
        self->_preinstalledAppsGroup = v19;

        v21 = [(NSMutableArray *)self->_preinstalledApps count];
        v22 = [NSBundle bundleForClass:objc_opt_class()];
        v23 = v22;
        if (v21)
        {
          v24 = @"PREINSTALLED_APPS_EXPLANATION";
        }

        else
        {
          v24 = @"PREINSTALLED_APPS_EMPTY_EXPLANATION";
        }

        v25 = [v22 localizedStringForKey:v24 value:&stru_4E898 table:@"StoreSettings"];
        [(PSSpecifier *)self->_preinstalledAppsGroup setObject:v25 forKeyedSubscript:v29];

        preinstalledAppsGroup = self->_preinstalledAppsGroup;
      }

      [v30 addObject:preinstalledAppsGroup];
      [v30 addObjectsFromArray:self->_preinstalledApps];
    }

    v26 = [v30 copy];
    v27 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v26;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_globalAutomaticUpdatesEnabled:(id)enabled
{
  selfCopy = self;
  if (self)
  {
    selfCopy = !self->_isLowPowerMode && self->_autoUpdatesEnabledDefault;
  }

  return [NSNumber numberWithBool:selfCopy & 1];
}

- (void)_setGlobalAutomaticUpdatesEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  self->_autoUpdatesEnabledDefault = bOOLValue;
  v6 = &kCFBooleanTrue;
  if (!bOOLValue)
  {
    v6 = &kCFBooleanFalse;
  }

  v7 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(kSSUserDefaultsKeyAutoUpdatesEnabled, *v6, kSSUserDefaultsIdentifier);
  CFPreferencesAppSynchronize(v7);
  sub_39724(self, self->_autoUpdatesEnabledDefault);

  sub_388B4(self, 0);
}

- (id)_automaticUpdatesEnabledForAppSpecifier:(id)specifier
{
  if (self->_isLowPowerMode)
  {
    v3 = &__kCFBooleanFalse;
  }

  else
  {
    specifierCopy = specifier;
    v5 = CFPreferencesCopyValue(@"AutomaticUpdateAuthorizations", @"com.apple.appstored", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    identifier = [specifierCopy identifier];

    v3 = [v5 objectForKeyedSubscript:identifier];
  }

  return v3;
}

- (void)_setAutomaticUpdatesEnabled:(id)enabled forAppSpecifier:(id)specifier
{
  specifierCopy = specifier;
  enabledCopy = enabled;
  v8 = CFPreferencesCopyValue(@"AutomaticUpdateAuthorizations", @"com.apple.appstored", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v9 = v8;
  if (!v8)
  {
    v8 = &__NSDictionary0__struct;
  }

  value = [v8 mutableCopy];

  identifier = [specifierCopy identifier];

  [value setObject:enabledCopy forKeyedSubscript:identifier];
  CFPreferencesSetValue(@"AutomaticUpdateAuthorizations", value, @"com.apple.appstored", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSynchronize(@"com.apple.appstored", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_39724(self, 0);
}

- (void)_lowPowerModeChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_399F0;
  block[3] = &unk_4E858;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end