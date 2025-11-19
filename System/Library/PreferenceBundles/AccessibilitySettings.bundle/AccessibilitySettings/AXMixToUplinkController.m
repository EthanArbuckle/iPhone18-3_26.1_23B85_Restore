@interface AXMixToUplinkController
- (id)_appSupportsUplink:(id)a3;
- (id)mixToUplink:(id)a3;
- (id)specifiers;
- (void)_generateAppSpecifiers;
- (void)_setAppSupportsUplink:(id)a3 specifier:(id)a4;
- (void)setMixToUplink:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation AXMixToUplinkController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [objc_allocWithZone(NSMutableArray) init];
    v6 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v6];
    v7 = settingsLocString(@"MIX_TO_UPLINK_SUB_TITLE", @"Accessibility");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setMixToUplink:specifier:" get:"mixToUplink:" detail:0 cell:6 edit:0];

    [v8 setProperty:@"MIX_TO_UPLINK" forKey:PSIDKey];
    [v5 addObject:v8];
    if ([(NSMutableArray *)self->_appSpecifiers count])
    {
      v9 = settingsLocString(@"ALLOWED_APPS", @"Accessibility");
      v10 = [PSSpecifier groupSpecifierWithName:v9];

      [v5 addObject:v10];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = self->_appSpecifiers;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          v15 = 0;
          do
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [v5 addObject:*(*(&v18 + 1) + 8 * v15)];
            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v13);
      }
    }

    v16 = *&self->super.AXUISettingsListController_opaque[v3];
    *&self->super.AXUISettingsListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AXMixToUplinkController;
  [(AXMixToUplinkController *)&v8 viewDidLoad];
  AXPerformBlockAsynchronouslyOnMainThread();
  v3 = TCCAccessCopyBundleIdentifiersForService();
  supportedApps = self->_supportedApps;
  self->_supportedApps = v3;

  v5 = TCCAccessCopyBundleIdentifiersDisabledForService();
  deniedApps = self->_deniedApps;
  self->_deniedApps = v5;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _accessibilitySettingsChanged_1, kAXSAllowsMixToUplinkDidChangeNotification, 0, 1028);
}

- (void)_generateAppSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  appSpecifiers = self->_appSpecifiers;
  self->_appSpecifiers = v3;

  AXInstalledApps();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v27 = PSIDKey;
    v25 = PSLazyIconAppID;
    v24 = PSLazyIconLoading;
    v23 = PSIconImageKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        deniedApps = self->_deniedApps;
        v11 = [v9 bundleIdentifier];
        if ([(NSArray *)deniedApps containsObject:v11])
        {
        }

        else
        {
          supportedApps = self->_supportedApps;
          v13 = [v9 bundleIdentifier];
          LODWORD(supportedApps) = [(NSArray *)supportedApps containsObject:v13];

          if (!supportedApps)
          {
            continue;
          }
        }

        v14 = [v9 localizedName];
        v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"_setAppSupportsUplink:specifier:" get:"_appSupportsUplink:" detail:0 cell:6 edit:0];

        v16 = [v9 bundleIdentifier];
        [v15 setProperty:v16 forKey:v27];

        v17 = [v9 bundleIdentifier];
        [v15 setProperty:v17 forKey:@"BundleIdentifier"];

        v18 = [v9 bundleContainerURL];
        [v15 setProperty:v18 forKey:@"url"];

        v19 = [v9 bundleIdentifier];
        LODWORD(v14) = AXFlipsIconRightToLeftForAppID(v19);

        v20 = [v9 bundleIdentifier];
        v21 = v20;
        if (v14)
        {
          v22 = AXImageIconForAppID(v20);
          [v15 setProperty:v22 forKey:v23];
        }

        else
        {
          [v15 setProperty:v20 forKey:v25];

          [v15 setProperty:&__kCFBooleanTrue forKey:v24];
        }

        [(NSMutableArray *)self->_appSpecifiers addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  [(AXMixToUplinkController *)self reloadSpecifiers];
}

- (id)_appSupportsUplink:(id)a3
{
  v4 = [a3 propertyForKey:@"BundleIdentifier"];
  v5 = [NSNumber numberWithBool:[(NSArray *)self->_supportedApps containsObject:v4]];

  return v5;
}

- (void)_setAppSupportsUplink:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [a4 propertyForKey:@"BundleIdentifier"];
  if (v6)
  {
    [v5 BOOLValue];
    v7 = TCCAccessSetForBundleId();
    v8 = AXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [NSNumber numberWithBool:v7 != 0];
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Setting TCC microphone for %@=%@ result=%@", &v10, 0x20u);
    }
  }
}

- (void)setMixToUplink:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  __AXSSetAllowsMixToUplink(v4);
}

- (id)mixToUplink:(id)a3
{
  v3 = _AXSAllowsMixToUplink();

  return [NSNumber numberWithUnsignedChar:v3];
}

@end