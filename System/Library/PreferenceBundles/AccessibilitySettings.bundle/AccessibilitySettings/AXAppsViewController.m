@interface AXAppsViewController
- (id)_generateAppSpecifiers;
- (id)_generateSpecifierForAppID:(id)a3 name:(id)a4;
- (id)makeSpecifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_generateApps;
- (void)_launchAppsController;
- (void)addAppSpecifier:(id)a3;
- (void)applicationDidResume;
- (void)removeDataForSpecifier:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)showHiddenAppsWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation AXAppsViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AXAppsViewController;
  [(AXAppsViewController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleAppDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)applicationDidResume
{
  v4.receiver = self;
  v4.super_class = AXAppsViewController;
  [(AXAppsViewController *)&v4 applicationDidResume];
  apps = self->_apps;
  self->_apps = 0;

  [(AXAppsViewController *)self reloadSpecifiers];
}

- (void)addAppSpecifier:(id)a3
{
  v4 = a3;
  v9 = [v4 propertyForKey:@"BundleIdentifier"];
  apps = self->_apps;
  v6 = [v4 name];

  [(NSMutableDictionary *)apps setObject:v6 forKey:v9];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [(NSMutableDictionary *)self->_apps allKeys];
  [v7 setObject:v8 forKey:@"AXSettingsPerAppIDsArray"];

  [(AXAppsViewController *)self reloadSpecifiers];
}

- (void)showHiddenAppsWithCompletion:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getAPGuardClass_softClass_0;
  v15 = getAPGuardClass_softClass_0;
  if (!getAPGuardClass_softClass_0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __getAPGuardClass_block_invoke_0;
    v11[3] = &unk_2555F8;
    v11[4] = &v12;
    __getAPGuardClass_block_invoke_0(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [v5 sharedGuard];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __53__AXAppsViewController_showHiddenAppsWithCompletion___block_invoke;
  v9[3] = &unk_256C48;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 authenticateUnconditionallyWithCompletion:v9];
}

void __53__AXAppsViewController_showHiddenAppsWithCompletion___block_invoke(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __53__AXAppsViewController_showHiddenAppsWithCompletion___block_invoke_2;
  block[3] = &unk_256C20;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t __53__AXAppsViewController_showHiddenAppsWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setShowsHiddenApps:1];
    [*(a1 + 32) reloadSpecifiers];
  }

  else
  {
    v2 = AXLogSettings();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __53__AXAppsViewController_showHiddenAppsWithCompletion___block_invoke_2_cold_1(v2);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (id)makeSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if (_os_feature_enabled_impl() && !self->_showsHiddenApps)
  {
    v4 = [PSSpecifier groupSpecifierWithName:0];
    [v3 addObject:v4];
    v5 = settingsLocString(@"PROTECTED_APPS_SHOW_HIDDEN_TITLE", @"Accessibility");
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v6 setButtonAction:"_showHiddenApps:"];
    [v6 setIdentifier:@"PROTECTED_APPS_SHOW_HIDDEN_TITLE"];
    [v3 addObject:v6];
  }

  v7 = settingsLocString(@"PERAPPSETTINGS_CUSTOMIZATION_TITLE", @"Accessibility");
  v8 = [PSSpecifier groupSpecifierWithName:v7];

  [v3 addObject:v8];
  v9 = settingsLocString(@"PERAPPSETTINGS_ADD_APP_TITLE", @"Accessibility");
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v10 setButtonAction:"_launchAppsController"];
  [v10 setIdentifier:@"AX_ADD_BUTTON_IDENTIFIER"];
  [v3 addObject:v10];
  v11 = [(AXAppsViewController *)self _generateAppSpecifiers];
  [v3 addObjectsFromArray:v11];

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = AXLogSettings();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Per-App Settings Controller: setEditing %d", buf, 8u);
  }

  v10.receiver = self;
  v10.super_class = AXAppsViewController;
  [(AXAppsViewController *)&v10 setEditing:v5 animated:v4];
  v8 = [(AXAppsViewController *)self specifierForID:@"AX_ADD_BUTTON_IDENTIFIER"];
  v9 = [NSNumber numberWithInt:v5 ^ 1];
  [v8 setProperty:v9 forKey:PSEnabledKey];

  [(AXAppsViewController *)self reloadSpecifier:v8 animated:1];
}

- (void)removeDataForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"BundleIdentifier"];
  v5 = AXLogSettings();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138739971;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Per-App Settings Controller: remove app %{sensitive}@", &v9, 0xCu);
  }

  [(NSMutableDictionary *)self->_apps removeObjectForKey:v4];
  _AXSSetEnhanceTextLegibilityEnabledApp();
  _AXSSetButtonShapesEnabledApp();
  _AXSSetIncreaseButtonLegibilityApp();
  _AXSSetEnhanceBackgroundContrastEnabledApp();
  _AXSSetDarkenSystemColorsApp();
  _AXSSetDifferentiateWithoutColorEnabledApp();
  _AXSInvertColorsSetEnabledApp();
  _AXSSetReduceMotionEnabledApp();
  _AXSSetReduceMotionReduceSlideTransitionsEnabledApp();
  _AXSSetReduceMotionAutoplayVideoPreviewsEnabledApp();
  _AXSSetPreferredContentSizeCategoryNameApp();
  _AXSSetPrefersHorizontalTextLayoutApp();
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [(NSMutableDictionary *)self->_apps allKeys];
  [v6 setObject:v7 forKey:@"AXSettingsPerAppIDsArray"];

  v8 = +[AXSettings sharedInstance];
  [v8 aggregatePerAppSettingsStatistics];
}

- (id)_generateAppSpecifiers
{
  if (!self->_apps)
  {
    [(AXAppsViewController *)self _generateApps];
  }

  v3 = _os_feature_enabled_impl();
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_apps;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (!v3 || self->_showsHiddenApps || (AXIsHiddenAppWithBundleId() & 1) == 0)
        {
          v11 = [(NSMutableDictionary *)self->_apps valueForKey:v10, v14];
          v12 = [(AXAppsViewController *)self _generateSpecifierForAppID:v10 name:v11];

          [v4 addObject:v12];
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v4 sortUsingComparator:&__block_literal_global_22];

  return v4;
}

int64_t __46__AXAppsViewController__generateAppSpecifiers__block_invoke(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (id)_generateSpecifierForAppID:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v8 setProperty:v6 forKey:@"BundleIdentifier"];
  [v8 setProperty:v6 forKey:PSIDKey];
  if (AXFlipsIconRightToLeftForAppID(v6))
  {
    v9 = AXImageIconForAppID(v6);
    [v8 setProperty:v9 forKey:PSIconImageKey];

    goto LABEL_12;
  }

  if ([v6 isEqualToString:AX_SpringBoardBundleName])
  {
    [v8 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
    if (AXDeviceIsPad())
    {
      v10 = @"com.apple.graphic-icon.apps-on-ipad";
    }

    else
    {
      v10 = @"com.apple.graphic-icon.apps-on-iphone";
    }

    v11 = PSIconUTTypeIdentifierKey;
  }

  else
  {
    if ([v6 isEqualToString:AX_LiveTranscriptionBundleName])
    {
      v12 = AXSettingsBundle();
      v13 = [UIImage imageNamed:@"LiveCaptions" inBundle:v12];
      [v8 setProperty:v13 forKey:PSIconImageKey];

      goto LABEL_12;
    }

    [v8 setProperty:v6 forKey:PSLazyIconAppID];
    v11 = PSLazyIconLoading;
    v10 = &__kCFBooleanTrue;
  }

  [v8 setProperty:v10 forKey:v11];
LABEL_12:

  return v8;
}

- (void)_launchAppsController
{
  v5 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = settingsLocString(@"PERAPPSETTINGS_CHOOSE_APP_TO_CUSTOMIZE_TITLE", @"Accessibility");
  [v3 setTitle:v4];

  [v3 setParentController:self];
  [v3 setShowsHiddenApps:self->_showsHiddenApps];
  [v3 setSelectedApps:self->_apps];
  [v5 setModalPresentationStyle:2];
  [v5 pushViewController:v3 animated:0];
  [(AXAppsViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_generateApps
{
  v3 = objc_opt_new();
  apps = self->_apps;
  self->_apps = v3;

  v22 = 0;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"AXSettingsPerAppIDsArray"];
  v7 = __UIAccessibilitySafeClass();

  v8 = [v7 mutableCopy];
  v9 = AX_LiveTranscriptionBundleName;
  if ([v8 containsObject:AX_LiveTranscriptionBundleName])
  {
    [v8 removeObject:v9];
    v10 = +[AXSettings sharedInstance];
    [v10 setPerAppSettingsCustomizedAppIDs:v8];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = AXAppNameForBundleId();
        if (v17)
        {
          [(NSMutableDictionary *)self->_apps setObject:v17 forKey:v16, v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(AXAppsViewController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:@"BundleIdentifier"];
  v6 = v5 != 0;

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = AXAppsViewController;
  v6 = a4;
  v7 = [(AXAppsViewController *)&v18 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(AXAppsViewController *)self specifierForIndexPath:v6, v18.receiver, v18.super_class];

  v9 = [v8 propertyForKey:PSIconImageKey];
  if (v9)
  {
    v10 = kISImageDescriptorTableUIName;
    v11 = v7;
    v12 = [ISImageDescriptor imageDescriptorNamed:v10];
    [v12 continuousCornerRadius];
    v14 = v13;

    v15 = [v11 iconImageView];
    [v15 _setContinuousCornerRadius:v14];

    v16 = [v11 iconImageView];

    [v16 setClipsToBounds:1];
  }

  return v7;
}

@end