@interface SettingsThresholdController
+ (id)_allSPLOptions;
+ (id)thresholdSPLString;
- (SettingsThresholdController)init;
- (id)_specifierWithTitle:(id)title subtitle:(id)subtitle;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
  noiseThresholdTitleDescription = [v2 noiseThresholdTitleDescription];

  return noiseThresholdTitleDescription;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  bundle = [(SettingsThresholdController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

- (id)specifiers
{
  v2 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v2)
  {
    v34 = OBJC_IVAR___PSListController__specifiers;
    localizedPaneTitle = [(SettingsThresholdController *)self localizedPaneTitle];
    [(SettingsThresholdController *)self setTitle:localizedPaneTitle];

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
      _allSPLOptions = [objc_opt_class() _allSPLOptions];
      v15 = [_allSPLOptions objectAtIndex:v11];

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
    notificationsEnabled = [v24 notificationsEnabled];

    v26 = v23;
    if (notificationsEnabled)
    {
      v27 = *&self->PSListController_opaque[v34];
      v28 = +[HUNoiseSettings sharedInstance];
      v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%ld", v17, [v28 notificationThreshold]);
      v26 = [v27 specifierForID:v29];
    }

    [v33 setObject:v26 forKeyedSubscript:PSRadioGroupCheckedSpecifierKey];
    v30 = +[HUNoiseSettings sharedInstance];
    noiseThresholdValueFooterDescription = [v30 noiseThresholdValueFooterDescription];
    [v33 setObject:noiseThresholdValueFooterDescription forKeyedSubscript:PSFooterTextGroupKey];

    v2 = *&self->PSListController_opaque[v34];
  }

  return v2;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SettingsThresholdController *)self indexForIndexPath:pathCopy];
  v29 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  identifier = [v29 identifier];
  v10 = [identifier isEqualToString:@"OFF"];

  if (v10)
  {
    v11 = +[HUNoiseSettings sharedInstance];
    [v11 setNotificationsEnabled:0];

    v12 = +[HUNoiseSettings sharedInstance];
    [v12 setNotificationThreshold:0];
  }

  else
  {
    v27 = pathCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    selfCopy = self;
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
          identifier2 = [v29 identifier];
          v20 = [v18 isEqualToString:identifier2];

          if (v20)
          {
            v21 = +[HUNoiseSettings sharedInstance];
            [v21 setNotificationsEnabled:1];

            integerValue = [v17 integerValue];
            v23 = +[HUNoiseSettings sharedInstance];
            [v23 setNotificationThreshold:integerValue];

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

    pathCopy = v27;
    self = selfCopy;
  }

  [(SettingsThresholdController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  specifier = [(SettingsThresholdController *)self specifier];
  [WeakRetained reloadSpecifier:specifier];

  v30.receiver = self;
  v30.super_class = SettingsThresholdController;
  [(SettingsThresholdController *)&v30 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)_specifierWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  v8 = [PSSpecifier preferenceSpecifierNamed:titleCopy target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v8 setProperty:titleCopy forKey:@"EDSpecifierTitleKey"];

  [v8 setProperty:subtitleCopy forKey:@"EDSpecifierSubtitleKey"];

  return v8;
}

@end