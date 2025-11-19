@interface AXAppSelectionController
- (id)_appAppliesTo:(id)a3;
- (id)specifiers;
- (void)_hideAppCombinations:(BOOL)a3;
- (void)_setAppliesTo:(id)a3 specifier:(id)a4;
- (void)_showAppCombinationsAnimated:(BOOL)a3;
- (void)_showHiddenApps:(id)a3;
- (void)_updateAppListUI:(BOOL)a3;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation AXAppSelectionController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = AXAppSelectionController;
  [(AXAppSelectionController *)&v10 viewDidLoad];
  v3 = [(AXAppSelectionController *)self getSelectedApps];

  if (v3)
  {
    v4 = [(AXAppSelectionController *)self getSelectedApps];
    v5 = v4[2]();
    [(AXAppSelectionController *)self setCachedSelectedApps:v5];
  }

  v6 = [(AXAppSelectionController *)self getUnselectedApps];

  if (v6)
  {
    v7 = [(AXAppSelectionController *)self getUnselectedApps];
    v8 = v7[2]();
    [(AXAppSelectionController *)self setCachedUnselectedApps:v8];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_handleAppDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = AXAppSelectionController;
  [(AXAppSelectionController *)&v3 willBecomeActive];
  [(AXAppSelectionController *)self _updateAppListUI:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AXAppSelectionController;
  [(AXAppSelectionController *)&v5 viewWillAppear:?];
  [(AXAppSelectionController *)self _updateAppListUI:v3];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    appSpecifiers = self->_appSpecifiers;
    self->_appSpecifiers = 0;

    v6 = +[NSMutableArray array];
    v7 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v6;

    v8 = +[NSMutableArray array];
    if (_os_feature_enabled_impl() && !self->_showsHiddenApps)
    {
      v9 = [PSSpecifier groupSpecifierWithName:0];
      [v8 addObject:v9];
      v10 = settingsLocString(@"PROTECTED_APPS_SHOW_HIDDEN_TITLE", @"Accessibility");
      v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v11 setButtonAction:"_showHiddenApps:"];
      [v11 setIdentifier:@"PROTECTED_APPS_SHOW_HIDDEN_TITLE"];
      [v8 addObject:v11];
    }

    v12 = [(AXAppSelectionController *)self getAppliesToAllApps];

    if (v12)
    {
      v13 = settingsLocString(@"APPLIES_TO", @"VoiceOverSettings");
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"_setAppliesTo:specifier:" get:"_appAppliesTo:" detail:0 cell:6 edit:0];

      [v14 setObject:@"AppApplies" forKeyedSubscript:PSIDKey];
      [v8 addObject:v14];
    }

    v15 = [v8 copy];
    v16 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v15;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_updateAppListUI:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXAppSelectionController *)self getAppliesToAllApps];
  if (v5 && (v6 = v5, [(AXAppSelectionController *)self getAppliesToAllApps], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7[2](), v7, v6, v8))
  {

    [(AXAppSelectionController *)self _hideAppCombinations:v3];
  }

  else
  {

    [(AXAppSelectionController *)self _showAppCombinationsAnimated:v3];
  }
}

- (void)_setAppliesTo:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(AXAppSelectionController *)self setAppliesToAllApps];
  v7 = [v5 BOOLValue];

  (v6)[2](v6, v7);

  [(AXAppSelectionController *)self _updateAppListUI:1];
}

- (id)_appAppliesTo:(id)a3
{
  v4 = [(AXAppSelectionController *)self getAppliesToAllApps];

  if (v4)
  {
    v5 = [(AXAppSelectionController *)self getAppliesToAllApps];
    v6 = [NSNumber numberWithBool:v5[2]()];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)reloadSpecifiers
{
  appSpecifiers = self->_appSpecifiers;
  self->_appSpecifiers = 0;

  v4.receiver = self;
  v4.super_class = AXAppSelectionController;
  [(AXAppSelectionController *)&v4 reloadSpecifiers];
  [(AXAppSelectionController *)self _updateAppListUI:1];
}

- (void)_showAppCombinationsAnimated:(BOOL)a3
{
  if (!self->_appSpecifiers)
  {
    v16 = a3;
    v4 = objc_alloc_init(NSMutableArray);
    appSpecifiers = self->_appSpecifiers;
    self->_appSpecifiers = v4;

    AXGenerateAppNameSpecifiers(self, self->_appSpecifiers, [(AXAppSelectionController *)self includesHomeScreen]);
    v6 = _os_feature_enabled_impl();
    v17 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_appSpecifiers;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 propertyForKey:@"BundleIdentifier"];
          if (v6 && !self->_showsHiddenApps)
          {
            if (AXIsHiddenAppWithBundleId())
            {
              [v17 addObject:v12];
            }
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [(NSMutableArray *)self->_appSpecifiers removeObjectsInArray:v17];
    v14 = self->_appSpecifiers;
    v15 = [(AXAppSelectionController *)self specifierForID:@"AppApplies"];
    [(AXAppSelectionController *)self insertContiguousSpecifiers:v14 afterSpecifier:v15 animated:v16];
  }
}

- (void)_hideAppCombinations:(BOOL)a3
{
  [(AXAppSelectionController *)self removeContiguousSpecifiers:self->_appSpecifiers animated:a3];
  appSpecifiers = self->_appSpecifiers;
  self->_appSpecifiers = 0;
}

- (void)_showHiddenApps:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getAPGuardClass_softClass_1;
  v13 = getAPGuardClass_softClass_1;
  if (!getAPGuardClass_softClass_1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __getAPGuardClass_block_invoke_1;
    v9[3] = &unk_2555F8;
    v9[4] = &v10;
    __getAPGuardClass_block_invoke_1(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [v5 sharedGuard];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __44__AXAppSelectionController__showHiddenApps___block_invoke;
  v8[3] = &unk_257EA0;
  v8[4] = self;
  [v7 authenticateUnconditionallyWithCompletion:v8];
}

void __44__AXAppSelectionController__showHiddenApps___block_invoke(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __44__AXAppSelectionController__showHiddenApps___block_invoke_2;
  v2[3] = &unk_2554E8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

void __44__AXAppSelectionController__showHiddenApps___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setShowsHiddenApps:1];
    v2 = *(a1 + 32);

    [v2 reloadSpecifiers];
  }

  else
  {
    v3 = AXLogSettings();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__AXAppsViewController_showHiddenAppsWithCompletion___block_invoke_2_cold_1(v3);
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXAppSelectionController *)self specifierForIndexPath:v7];
  v23.receiver = self;
  v23.super_class = AXAppSelectionController;
  [(AXAppSelectionController *)&v23 tableView:v6 didSelectRowAtIndexPath:v7];
  v9 = [v8 propertyForKey:@"BundleIdentifier"];
  if (v9)
  {
    v10 = [(AXAppSelectionController *)self getSelectedApps];

    if (v10)
    {
      v11 = [(AXAppSelectionController *)self getSelectedApps];
      v12 = v11[2]();

      if (v12)
      {
        v13 = [v12 mutableCopy];
      }

      else
      {
        v13 = +[NSMutableSet set];
      }

      v17 = v13;
      v18 = [v6 cellForRowAtIndexPath:v7];
      if ([v17 containsObject:v9])
      {
        [v18 setChecked:0];
        [v17 removeObject:v9];
      }

      else
      {
        [v18 setChecked:1];
        [v17 addObject:v9];
      }

      v19 = [(AXAppSelectionController *)self setSelectedApps];

      if (v19)
      {
        v20 = [(AXAppSelectionController *)self setSelectedApps];
        (v20)[2](v20, v17);
      }

      [(AXAppSelectionController *)self setCachedSelectedApps:v17];
LABEL_22:

      goto LABEL_23;
    }

    v14 = [(AXAppSelectionController *)self getUnselectedApps];

    if (v14)
    {
      v15 = [(AXAppSelectionController *)self getUnselectedApps];
      v12 = v15[2]();

      if (v12)
      {
        v16 = [v12 mutableCopy];
      }

      else
      {
        v16 = +[NSMutableSet set];
      }

      v17 = v16;
      v18 = [v6 cellForRowAtIndexPath:v7];
      if ([v17 containsObject:v9])
      {
        [v18 setChecked:1];
        [v17 removeObject:v9];
      }

      else
      {
        [v18 setChecked:0];
        [v17 addObject:v9];
      }

      v21 = [(AXAppSelectionController *)self setUnselectedApps];

      if (v21)
      {
        v22 = [(AXAppSelectionController *)self setUnselectedApps];
        (v22)[2](v22, v17);
      }

      [(AXAppSelectionController *)self setCachedUnselectedApps:v17];
      goto LABEL_22;
    }
  }

LABEL_23:
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v15 = [(AXAppSelectionController *)self specifierForIndexPath:a5];
  v8 = [v15 propertyForKey:@"BundleIdentifier"];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [(AXAppSelectionController *)self cachedSelectedApps];

  if (v9)
  {
    v10 = [(AXAppSelectionController *)self cachedSelectedApps];
    v11 = [v10 containsObject:v8];

    goto LABEL_7;
  }

  v12 = [(AXAppSelectionController *)self cachedUnselectedApps];

  if (v12)
  {
    v13 = [(AXAppSelectionController *)self cachedUnselectedApps];
    v14 = [v13 containsObject:v8];

    v11 = (v14 ^ 1);
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

LABEL_7:
  [v7 setChecked:v11];
  [v7 setAccessibilityTraits:UIAccessibilityTraitButton];
}

@end