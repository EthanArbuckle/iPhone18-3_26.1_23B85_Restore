@interface SettingsThresholdController
+ (id)_allSPLOptions;
+ (id)thresholdSPLString;
- (SettingsThresholdController)init;
- (id)_specifierWithTitle:(id)a3 subtitle:(id)a4;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SettingsThresholdController

+ (id)thresholdSPLString
{
  v2 = +[HUNoiseSettings sharedInstance];
  v3 = +[HUNoiseSettings sharedInstance];
  v4 = [v2 localizedNoiseThresholdValue:{objc_msgSend(v3, "notificationThreshold")}];

  return v4;
}

+ (id)_allSPLOptions
{
  v2 = +[NSMutableArray array];
  v3 = 80;
  do
  {
    v4 = [NSNumber numberWithInt:v3];
    [v2 addObject:v4];

    v3 = (v3 + 5);
  }

  while (v3 != 105);

  return v2;
}

- (SettingsThresholdController)init
{
  v7.receiver = self;
  v7.super_class = SettingsThresholdController;
  v2 = [(SettingsThresholdController *)&v7 init];
  v3 = objc_alloc_init(NSNumberFormatter);
  [v3 setNumberStyle:1];
  [v3 setMaximumFractionDigits:0];
  [v3 setRoundingMode:2];
  v4 = [NSNumber numberWithInt:0];
  v5 = [v3 stringFromNumber:v4];
  [v3 setNotANumberSymbol:v5];

  [(SettingsThresholdController *)v2 setDBFormatter:v3];
  return v2;
}

- (id)localizedPaneTitle
{
  v2 = +[HUNoiseSettings sharedInstance];
  v3 = [v2 noiseThresholdTitleDescription];

  return v3;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  v2 = [(SettingsThresholdController *)self bundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)specifiers
{
  v2 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v2)
  {
    v34 = OBJC_IVAR___PSListController__specifiers;
    v3 = [(SettingsThresholdController *)self localizedPaneTitle];
    [(SettingsThresholdController *)self setTitle:v3];

    v4 = +[NSMutableArray array];
    v5 = [PSSpecifier groupSpecifierWithID:@"THRESHOLD_SPL_GROUP_ID"];
    [v5 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v33 = v5;
    [v4 addObject:v5];
    v6 = +[HUNoiseSettings sharedInstance];
    v7 = [v6 localizedNoiseThresholdValue:0];
    v8 = +[HUNoiseSettings sharedInstance];
    v9 = [v8 localizedNoiseThresholdDetailValue:0];
    v10 = [(SettingsThresholdController *)self _specifierWithTitle:v7 subtitle:v9];

    [v10 setIdentifier:@"OFF"];
    v35 = v4;
    [v4 addObject:v10];
    v11 = 0;
    v12 = 80;
    v13 = @"ID_BPM_";
    do
    {
      v14 = [objc_opt_class() _allSPLOptions];
      v15 = [v14 objectAtIndex:v11];

      v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%ld", v13, [v15 integerValue]);
      +[HUNoiseSettings sharedInstance];
      v18 = v17 = v13;
      v19 = [v18 localizedNoiseThresholdValue:{objc_msgSend(v15, "integerValue")}];

      v20 = +[HUNoiseSettings sharedInstance];
      v21 = [v20 localizedNoiseThresholdDetailValue:v12];

      v22 = [(SettingsThresholdController *)self _specifierWithTitle:v19 subtitle:v21];
      [v22 setIdentifier:v16];
      [v35 addObject:v22];

      v13 = v17;
      ++v11;
      v12 += 5;
    }

    while (v11 != 5);
    objc_storeStrong(&self->PSListController_opaque[v34], v35);
    v23 = v10;
    v24 = +[HUNoiseSettings sharedInstance];
    v25 = [v24 notificationsEnabled];

    v26 = v23;
    if (v25)
    {
      v27 = *&self->PSListController_opaque[v34];
      v28 = +[HUNoiseSettings sharedInstance];
      v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%ld", v17, [v28 notificationThreshold]);
      v26 = [v27 specifierForID:v29];
    }

    [v33 setObject:v26 forKeyedSubscript:PSRadioGroupCheckedSpecifierKey];
    v30 = +[HUNoiseSettings sharedInstance];
    v31 = [v30 noiseThresholdValueFooterDescription];
    [v33 setObject:v31 forKeyedSubscript:PSFooterTextGroupKey];

    v2 = *&self->PSListController_opaque[v34];
  }

  return v2;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SettingsThresholdController *)self indexForIndexPath:v7];
  v29 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v9 = [v29 identifier];
  v10 = [v9 isEqualToString:@"OFF"];

  if (v10)
  {
    v11 = +[HUNoiseSettings sharedInstance];
    [v11 setNotificationsEnabled:0];

    v12 = +[HUNoiseSettings sharedInstance];
    [v12 setNotificationThreshold:0];
  }

  else
  {
    v27 = v7;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = self;
    obj = [objc_opt_class() _allSPLOptions];
    v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%ld", @"ID_BPM_", [v17 integerValue]);
          v19 = [v29 identifier];
          v20 = [v18 isEqualToString:v19];

          if (v20)
          {
            v21 = +[HUNoiseSettings sharedInstance];
            [v21 setNotificationsEnabled:1];

            v22 = [v17 integerValue];
            v23 = +[HUNoiseSettings sharedInstance];
            [v23 setNotificationThreshold:v22];

            goto LABEL_13;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v7 = v27;
    self = v26;
  }

  [(SettingsThresholdController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  v25 = [(SettingsThresholdController *)self specifier];
  [WeakRetained reloadSpecifier:v25];

  v30.receiver = self;
  v30.super_class = SettingsThresholdController;
  [(SettingsThresholdController *)&v30 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (id)_specifierWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v8 setProperty:v7 forKey:@"EDSpecifierTitleKey"];

  [v8 setProperty:v6 forKey:@"EDSpecifierSubtitleKey"];

  return v8;
}

@end