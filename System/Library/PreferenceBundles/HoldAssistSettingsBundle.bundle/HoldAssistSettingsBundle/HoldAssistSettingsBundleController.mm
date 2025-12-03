@interface HoldAssistSettingsBundleController
+ (id)explanationText;
+ (id)localizedStringForKey:(id)key;
- (BOOL)holdAssistDetectionForPhoneIsEnabled;
- (HoldAssistSettingsBundleController)initWithParentListController:(id)controller;
- (PSListController)parentListController;
- (id)createHoldAssistSpecifier;
- (id)currentControllerSpecifierIdentifier;
- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default;
- (id)getHoldAssistDetectionEnabled:(id)enabled;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)refreshView;
- (void)setHoldAssistDetectionEnabled:(id)enabled specifier:(id)specifier;
- (void)setValueInUserDefaults:(id)defaults forKey:(id)key;
@end

@implementation HoldAssistSettingsBundleController

- (HoldAssistSettingsBundleController)initWithParentListController:(id)controller
{
  v6.receiver = self;
  v6.super_class = HoldAssistSettingsBundleController;
  v3 = [(HoldAssistSettingsBundleController *)&v6 initWithParentListController:controller];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"handleSettingDidChangeNotification:" name:@"HoldAssistSettingsChangedNotification" object:0];
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    currentControllerSpecifierIdentifier = [(HoldAssistSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v14 = 138412290;
    v15 = currentControllerSpecifierIdentifier;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Loading settings page for app %@", &v14, 0xCu);
  }

  v6 = +[NSMutableArray array];
  activeSpecifier = [(HoldAssistSettingsBundleController *)self activeSpecifier];

  if (!activeSpecifier)
  {
    if (TUHoldAssistActivatable())
    {
      v8 = [PSSpecifier groupSpecifierWithID:@"HOLD_ASSIST" name:&stru_42E8];
      v9 = +[HoldAssistSettingsBundleController explanationText];
      [v8 setProperty:v9 forKey:PSFooterTextGroupKey];
      createHoldAssistSpecifier = [(HoldAssistSettingsBundleController *)self createHoldAssistSpecifier];
      v11 = createHoldAssistSpecifier;
      if (v8 && createHoldAssistSpecifier)
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
  deviceType = [v2 deviceType];

  if (deviceType == (&dword_0 + 2))
  {
    v4 = @"HOLD_ASSIST_DETECTION_EXPLANATION_PHONE";
    goto LABEL_5;
  }

  if (deviceType == &dword_4)
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

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_42E8 table:localizationTableName];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  parentListController = [(HoldAssistSettingsBundleController *)self parentListController];
  activeSpecifier = [(HoldAssistSettingsBundleController *)self activeSpecifier];
  [parentListController reloadSpecifier:activeSpecifier animated:1];
}

- (void)setHoldAssistDetectionEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentControllerSpecifierIdentifier = [(HoldAssistSettingsBundleController *)self currentControllerSpecifierIdentifier];
    v8 = 138412546;
    v9 = currentControllerSpecifierIdentifier;
    v10 = 2112;
    v11 = enabledCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "User has toggled Hold Assist %@ switch to %@", &v8, 0x16u);
  }

  [(HoldAssistSettingsBundleController *)self setValueInUserDefaults:enabledCopy forKey:TUHoldAssistDetectionEnabledKey];
}

- (id)getHoldAssistDetectionEnabled:(id)enabled
{
  holdAssistDetectionForPhoneIsEnabled = [(HoldAssistSettingsBundleController *)self holdAssistDetectionForPhoneIsEnabled];

  return [NSNumber numberWithBool:holdAssistDetectionForPhoneIsEnabled];
}

- (id)getBooleanFromUserDefaults:(id)defaults default:(id)default
{
  defaultCopy = default;
  defaultsCopy = defaults;
  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  v9 = [v8 objectForKey:defaultsCopy];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = defaultCopy;
  }

  v11 = v10;

  return v10;
}

- (void)setValueInUserDefaults:(id)defaults forKey:(id)key
{
  keyCopy = key;
  defaultsCopy = defaults;
  v7 = [NSUserDefaults alloc];
  v8 = [v7 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  [v8 setValue:defaultsCopy forKey:keyCopy];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"HoldAssistSettingsChangedNotification" object:0];
}

- (id)currentControllerSpecifierIdentifier
{
  parentListController = [(HoldAssistSettingsBundleController *)self parentListController];
  specifier = [parentListController specifier];
  identifier = [specifier identifier];

  if (identifier)
  {
    v5 = identifier;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end