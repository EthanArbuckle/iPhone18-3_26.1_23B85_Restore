@interface HoldAssistSettingsBundleController
+ (id)explanationText;
+ (id)localizedStringForKey:(id)a3;
- (BOOL)holdAssistDetectionForPhoneIsEnabled;
- (HoldAssistSettingsBundleController)initWithParentListController:(id)a3;
- (PSListController)parentListController;
- (id)createHoldAssistSpecifier;
- (id)currentControllerSpecifierIdentifier;
- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4;
- (id)getHoldAssistDetectionEnabled:(id)a3;
- (id)specifiersWithSpecifier:(id)a3;
- (void)refreshView;
- (void)setHoldAssistDetectionEnabled:(id)a3 specifier:(id)a4;
- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4;
@end

@implementation HoldAssistSettingsBundleController

- (HoldAssistSettingsBundleController)initWithParentListController:(id)a3
{
  v6.receiver = self;
  v6.super_class = HoldAssistSettingsBundleController;
  v3 = [(HoldAssistSettingsBundleController *)&v6 initWithParentListController:a3];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"handleSettingDidChangeNotification:" name:@"HoldAssistSettingsChangedNotification" object:0];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(HoldAssistSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Loading settings page for app %@", &v14, 0xCu);
  }

  v6 = +[NSMutableArray array];
  v7 = [(HoldAssistSettingsBundleController *)self activeSpecifier];

  if (!v7)
  {
    if (TUHoldAssistActivatable())
    {
      v8 = [PSSpecifier groupSpecifierWithID:@"HOLD_ASSIST" name:&stru_42E8];
      v9 = +[HoldAssistSettingsBundleController explanationText];
      [v8 setProperty:v9 forKey:PSFooterTextGroupKey];
      v10 = [(HoldAssistSettingsBundleController *)self createHoldAssistSpecifier];
      v11 = v10;
      if (v8 && v10)
      {
        [v6 addObject:v8];
        [v6 addObject:v11];
        [(HoldAssistSettingsBundleController *)self setActiveSpecifier:v8];
      }
    }

    else
    {
      v8 = PHDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Hold Assist is not available for current locale - not creating specifier", &v14, 2u);
      }
    }
  }

  v12 = [v6 copy];

  return v12;
}

- (id)createHoldAssistSpecifier
{
  v3 = [HoldAssistSettingsBundleController localizedStringForKey:@"HOLD_ASSIST_DETECTION_TOGGLE_TITLE"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setHoldAssistDetectionEnabled:specifier:" get:"getHoldAssistDetectionEnabled:" detail:0 cell:6 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v4 setIdentifier:@"HOLD_ASSIST_DETECTION"];

  return v4;
}

+ (id)explanationText
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 deviceType];

  if (v3 == (&dword_0 + 2))
  {
    v4 = @"HOLD_ASSIST_DETECTION_EXPLANATION_PHONE";
    goto LABEL_5;
  }

  if (v3 == &dword_4)
  {
    v4 = @"HOLD_ASSIST_DETECTION_EXPLANATION_PAD";
LABEL_5:
    v5 = [HoldAssistSettingsBundleController localizedStringForKey:v4];
    goto LABEL_7;
  }

  v5 = &stru_42E8;
LABEL_7:

  return v5;
}

+ (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [a1 localizationTableName];
  v7 = [v5 localizedStringForKey:v4 value:&stru_42E8 table:v6];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  v4 = [(HoldAssistSettingsBundleController *)self parentListController];
  v3 = [(HoldAssistSettingsBundleController *)self activeSpecifier];
  [v4 reloadSpecifier:v3 animated:1];
}

- (void)setHoldAssistDetectionEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HoldAssistSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User has toggled Hold Assist %@ switch to %@", &v8, 0x16u);
  }

  [(HoldAssistSettingsBundleController *)self setValueInUserDefaults:v5 forKey:TUHoldAssistDetectionEnabledKey];
}

- (id)getHoldAssistDetectionEnabled:(id)a3
{
  v3 = [(HoldAssistSettingsBundleController *)self holdAssistDetectionForPhoneIsEnabled];

  return [NSNumber numberWithBool:v3];
}

- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  [v8 setValue:v6 forKey:v5];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"HoldAssistSettingsChangedNotification" object:0];
}

- (id)currentControllerSpecifierIdentifier
{
  v2 = [(HoldAssistSettingsBundleController *)self parentListController];
  v3 = [v2 specifier];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_42E8;
  }

  return v5;
}

- (BOOL)holdAssistDetectionForPhoneIsEnabled
{
  v2 = [(HoldAssistSettingsBundleController *)self getBooleanFromUserDefaults:TUHoldAssistDetectionEnabledKey default:&off_4330];
  v3 = [v2 BOOLValue];

  return v3;
}

@end