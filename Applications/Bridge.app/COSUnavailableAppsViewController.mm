@interface COSUnavailableAppsViewController
- (COSUnavailableAppsViewController)init;
- (id)specifiers;
- (void)dealloc;
@end

@implementation COSUnavailableAppsViewController

- (COSUnavailableAppsViewController)init
{
  v5.receiver = self;
  v5.super_class = COSUnavailableAppsViewController;
  v2 = [(COSUnavailableAppsViewController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"reloadForAppChange:" name:@"COSUnavailableAppsChangedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = COSUnavailableAppsViewController;
  [(COSUnavailableAppsViewController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v21 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    v4 = objc_opt_new();
    v5 = +[COSSettingsListController unavailableWatchKitApps];
    v6 = [PSSpecifier groupSpecifierWithID:@"UNAVAILABLE_APP_ID"];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"UNAVAILABLE_APPS_FOOTER" value:&stru_10026E598 table:@"Localizable"];
    [v6 setProperty:v8 forKey:PSFooterTextGroupKey];

    v24 = v4;
    v20 = v6;
    [v4 addObject:v6];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = v5;
    obj = [v5 allKeys];
    v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v23 = *v28;
      v11 = ACXApplicationNameKey;
      v12 = ACXPluginBundleIdKey;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [v25 objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v13)];
          v15 = [v14 objectForKeyedSubscript:v11];
          v16 = [v14 objectForKeyedSubscript:v12];
          v17 = [PSSpecifier preferenceSpecifierNamed:v15 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
          [v17 setProperty:v16 forKey:@"COSUnavailableApplicationBundleID"];
          [v17 setProperty:v14 forKey:@"COSUnavailableApplicationInfoID"];
          [v24 addObject:v17];

          v13 = v13 + 1;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    v18 = *&selfCopy->BPSListController_opaque[v21];
    *&selfCopy->BPSListController_opaque[v21] = v24;

    v3 = *&selfCopy->BPSListController_opaque[v21];
  }

  return v3;
}

@end