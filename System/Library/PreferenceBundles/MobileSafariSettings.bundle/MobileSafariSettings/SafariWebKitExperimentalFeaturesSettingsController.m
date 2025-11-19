@interface SafariWebKitExperimentalFeaturesSettingsController
- (id)_featureWithName:(id)a3;
- (id)experimentalFeatureSpecifierForFeature:(id)a3;
- (id)getExperimentalFeature:(id)a3;
- (id)specifiers;
- (void)resetAllExperimentalFeatures:(id)a3;
- (void)setExperimentalFeature:(id)a3 specifier:(id)a4;
@end

@implementation SafariWebKitExperimentalFeaturesSettingsController

- (id)experimentalFeatureSpecifierForFeature:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"setExperimentalFeature:specifier:" get:"getExperimentalFeature:" detail:0 cell:6 edit:0];

  v7 = [NSUserDefaults safari_keyForWebKitExperimentalFeature:v4];

  [v6 setObject:v7 forKeyedSubscript:PSKeyNameKey];
  [v6 setObject:@"com.apple.mobilesafari" forKeyedSubscript:PSBundlePathKey];
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];

  return v6;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(SafariWebKitExperimentalFeaturesSettingsController *)self loadSpecifiersFromPlistName:@"WebKitExperimentalFeatures" target:self];
    v6 = +[WKPreferences _experimentalFeatures];
    if ([v6 count])
    {
      v7 = [v5 indexOfSpecifierWithID:@"SPACE_CELL_AFTER_EXPERIMENTAL_FEATURES"];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v29 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v31;
        do
        {
          v12 = 0;
          v13 = v7;
          do
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = [(SafariWebKitExperimentalFeaturesSettingsController *)self experimentalFeatureSpecifierForFeature:*(*(&v30 + 1) + 8 * v12)];
            v7 = v13 + 1;
            [v5 insertObject:v14 atIndex:v13];

            v12 = v12 + 1;
            ++v13;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v10);
      }

      v15 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:@"Passkeys site-specific hacks" set:self get:0 detail:? cell:? edit:?];
      v16 = PSDefaultsKey;
      v28 = PSContainerBundleIDKey;
      v36[0] = PSContainerBundleIDKey;
      v36[1] = PSDefaultsKey;
      v37[0] = @"com.apple.mobilesafari";
      v37[1] = @"com.apple.mobilesafari";
      v17 = PSDefaultValueKey;
      v27 = PSKeyNameKey;
      v36[2] = PSKeyNameKey;
      v36[3] = PSDefaultValueKey;
      v37[2] = @"DisablePasskeysSiteSpecificHacks";
      v37[3] = &__kCFBooleanFalse;
      v36[4] = PSNegateValueKey;
      v37[4] = &__kCFBooleanTrue;
      v18 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:5];
      [v15 setProperties:v18];

      [v5 insertObject:v15 atIndex:v7];
      v19 = +[UIDevice currentDevice];
      v20 = [v19 userInterfaceIdiom];

      if (!v20)
      {
        v21 = [PSSpecifier preferenceSpecifierNamed:@"Fullscreen API" target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
        v34[0] = v28;
        v34[1] = v16;
        v35[0] = @"com.apple.mobilesafari";
        v35[1] = @"com.apple.mobilesafari";
        v34[2] = v27;
        v34[3] = v17;
        v35[2] = _SFEnableFullScreenAPIOnPhone;
        v35[3] = &__kCFBooleanFalse;
        v22 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
        [v21 setProperties:v22];

        [v5 insertObject:v21 atIndex:v7 + 1];
      }

      v6 = v29;
    }

    else
    {
      v23 = [v5 specifierForID:@"experimentalFeatures"];
      v24 = SafariSettingsLocalizedString(@"No Feature Flags", @"WebKitExperimentalFeatures");
      [v23 setProperty:v24 forKey:PSFooterTextGroupKey];
    }

    [(SafariSettingsListController *)self updateRestrictionsForSpecifiers:v5];
    v25 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v5;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (id)_featureWithName:(id)a3
{
  v3 = a3;
  v4 = +[WKPreferences _experimentalFeatures];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __71__SafariWebKitExperimentalFeaturesSettingsController__featureWithName___block_invoke;
  v8[3] = &unk_8B228;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_firstObjectPassingTest:v8];

  return v6;
}

id __71__SafariWebKitExperimentalFeaturesSettingsController__featureWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)getExperimentalFeature:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults safari_browserDefaults];
  v6 = [v4 objectForKeyedSubscript:PSKeyNameKey];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [v4 name];
    v10 = [(SafariWebKitExperimentalFeaturesSettingsController *)self _featureWithName:v9];

    if (v10)
    {
      v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 defaultValue]);
    }

    else
    {
      v8 = &__kCFBooleanFalse;
    }
  }

  return v8;
}

- (void)setExperimentalFeature:(id)a3 specifier:(id)a4
{
  v10 = a3;
  v6 = [a4 name];
  v7 = [(SafariWebKitExperimentalFeaturesSettingsController *)self _featureWithName:v6];

  if (v7)
  {
    v8 = [NSUserDefaults safari_keyForWebKitExperimentalFeature:v7];
    v9 = +[NSUserDefaults safari_browserDefaults];
    [v9 setObject:v10 forKey:v8];
  }
}

- (void)resetAllExperimentalFeatures:(id)a3
{
  v4 = +[NSUserDefaults safari_browserDefaults];
  v5 = +[WKPreferences _experimentalFeatures];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NSUserDefaults safari_keyForWebKitExperimentalFeature:*(*(&v11 + 1) + 8 * v9)];
        [v4 removeObjectForKey:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [v4 removeObjectForKey:@"DisablePasskeysSiteSpecificHacks"];
  [v4 removeObjectForKey:_SFEnableFullScreenAPIOnPhone];
  [(SafariWebKitExperimentalFeaturesSettingsController *)self reloadSpecifiers];
}

@end