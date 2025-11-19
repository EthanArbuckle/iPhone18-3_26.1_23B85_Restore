@interface HPRFHeartRateThresholdController
+ (BOOL)isDetectionEnabled;
+ (id)detectionEnabledDefaultsKey;
+ (id)footerText;
+ (id)localizedThresholdHeartRateString;
+ (id)localizedThresholdHeartRateStringWithValue:(int64_t)a3;
+ (id)paneTitleLocalizationKey;
+ (id)specifierIdentifier;
+ (id)thresholdHeartRateDefaultsKey;
+ (id)thresholdHeartRateOptions;
+ (int64_t)thresholdHeartRate;
+ (int64_t)thresholdHeartRateDefault;
+ (void)saveThresholdValue:(id)a3;
- (HPRFHeartRateThresholdController)init;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)didSelectThresholdValue:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HPRFHeartRateThresholdController

+ (id)localizedThresholdHeartRateStringWithValue:(int64_t)a3
{
  if (qword_1E380 != -1)
  {
    sub_BC20();
  }

  v4 = [HKQuantity _quantityWithBeatsPerMinute:a3];
  v5 = [[HKGenericQuantityDataProviderCurrentValue alloc] initWithQuantity:v4];
  v6 = [v5 stringWithDisplayType:qword_1E370 unitController:qword_1E378];

  return v6;
}

+ (id)localizedThresholdHeartRateString
{
  if (+[_HKHeartSettingsUtilities isHeartRateEnabled](_HKHeartSettingsUtilities, "isHeartRateEnabled") && +[_HKHeartSettingsUtilities isWristDetectionEnabled](_HKHeartSettingsUtilities, "isWristDetectionEnabled") && ([a1 isDetectionEnabled] & 1) != 0)
  {
    v3 = [a1 localizedThresholdHeartRateStringWithValue:{objc_msgSend(a1, "thresholdHeartRate")}];
  }

  else
  {
    v3 = +[_HKHeartSettingsUtilities heartRateThresholdOffDescription];
  }

  return v3;
}

- (HPRFHeartRateThresholdController)init
{
  v6.receiver = self;
  v6.super_class = HPRFHeartRateThresholdController;
  v2 = [(HPRFHeartRateThresholdController *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;
  }

  return v2;
}

- (id)localizedPaneTitle
{
  v2 = [objc_opt_class() paneTitleLocalizationKey];
  v3 = HKHeartRateLocalizedString();

  return v3;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  v2 = [(HPRFHeartRateThresholdController *)self bundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v26 = OBJC_IVAR___PSListController__specifiers;
    v4 = [(HPRFHeartRateThresholdController *)self localizedPaneTitle];
    [(HPRFHeartRateThresholdController *)self setTitle:v4];

    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"THRESHOLD_HEART_RATE_GROUP_ID"];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v25 = v6;
    [v5 addObject:v6];
    v7 = +[_HKHeartSettingsUtilities heartRateThresholdOffDescription];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v8 setIdentifier:@"OFF"];
    v24 = v8;
    [v5 addObject:v8];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = self;
    v9 = [objc_opt_class() thresholdHeartRateOptions];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%ld", @"ID_BPM_", [v14 integerValue]);
          v16 = +[HPRFHeartRateThresholdController localizedThresholdHeartRateStringWithValue:](HPRFHeartRateThresholdController, "localizedThresholdHeartRateStringWithValue:", [v14 integerValue]);
          v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          [v17 setIdentifier:v15];
          [v5 addObject:v17];
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&v27->PSListController_opaque[v26], v5);
    v18 = v24;
    v19 = v18;
    if ([objc_opt_class() isDetectionEnabled])
    {
      v20 = *&v27->PSListController_opaque[v26];
      v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%ld", @"ID_BPM_", [objc_opt_class() thresholdHeartRate]);
      v19 = [v20 specifierForID:v21];
    }

    [v25 setObject:v19 forKeyedSubscript:PSRadioGroupCheckedSpecifierKey];
    v22 = [objc_opt_class() footerText];
    [v25 setObject:v22 forKeyedSubscript:PSFooterTextGroupKey];

    v3 = *&v27->PSListController_opaque[v26];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HPRFHeartRateThresholdController *)self indexForIndexPath:v7];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 identifier];
  v11 = [v10 isEqualToString:@"OFF"];

  if (v11)
  {
    [(HPRFHeartRateThresholdController *)self didSelectThresholdValue:0];
  }

  else
  {
    v22 = v7;
    v23 = v6;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = self;
    obj = [objc_opt_class() thresholdHeartRateOptions];
    v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%ld", @"ID_BPM_", [v16 integerValue]);
          v18 = [v9 identifier];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 integerValue]);
            [(HPRFHeartRateThresholdController *)v21 didSelectThresholdValue:v20];

            goto LABEL_13;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v7 = v22;
    v6 = v23;
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (void)didSelectThresholdValue:(id)a3
{
  v4 = a3;
  [objc_opt_class() saveThresholdValue:v4];

  [(HPRFHeartRateThresholdController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  v5 = [(HPRFHeartRateThresholdController *)self specifier];
  [WeakRetained reloadSpecifier:v5];
}

+ (BOOL)isDetectionEnabled
{
  sub_21BC();
  sub_21AC();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)detectionEnabledDefaultsKey
{
  sub_21BC();
  sub_21AC();
  NSRequestConcreteImplementation();
  return 0;
}

+ (int64_t)thresholdHeartRate
{
  sub_21BC();
  sub_21AC();
  NSRequestConcreteImplementation();
  return 0;
}

+ (int64_t)thresholdHeartRateDefault
{
  sub_21BC();
  sub_21AC();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)thresholdHeartRateDefaultsKey
{
  sub_21BC();
  sub_21AC();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)thresholdHeartRateOptions
{
  sub_21BC();
  sub_21AC();
  NSRequestConcreteImplementation();
  return 0;
}

+ (void)saveThresholdValue:(id)a3
{
  sub_21BC();
  sub_21AC();

  NSRequestConcreteImplementation();
}

+ (id)footerText
{
  sub_21BC();
  sub_21AC();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)paneTitleLocalizationKey
{
  sub_21BC();
  sub_21AC();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)specifierIdentifier
{
  sub_21BC();
  sub_21AC();
  NSRequestConcreteImplementation();
  return 0;
}

@end