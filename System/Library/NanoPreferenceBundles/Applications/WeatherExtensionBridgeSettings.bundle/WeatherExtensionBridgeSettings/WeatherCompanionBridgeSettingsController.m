@interface WeatherCompanionBridgeSettingsController
+ (void)initialize;
- (WeatherCompanionBridgeSettingsController)init;
- (WeatherPrefsMonitor)weatherPrefsMonitor;
- (id)defaultCity:(id)a3;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)monitorObservedReload:(id)a3;
@end

@implementation WeatherCompanionBridgeSettingsController

+ (void)initialize
{
  if (qword_CAF8 != -1)
  {
    sub_2B78();
  }
}

- (WeatherCompanionBridgeSettingsController)init
{
  v3.receiver = self;
  v3.super_class = WeatherCompanionBridgeSettingsController;
  result = [(WeatherCompanionBridgeSettingsController *)&v3 init];
  if (result)
  {
    result->_needsRefresh = 0;
  }

  return result;
}

- (id)defaultCity:(id)a3
{
  v3 = [(WeatherCompanionBridgeSettingsController *)self weatherPrefsMonitor];
  v4 = [v3 selectedCity];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 name];
  }

  else if ([v3 areLocationServicesResolved])
  {
    v7 = [v3 cities];
    v8 = [v7 firstObject];
    v6 = [v8 name];
  }

  else
  {
    v6 = &stru_8488;
  }

  return v6;
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APP_PANE_TITLE" value:&stru_8488 table:@"WeatherBridgeSettings"];

  return v3;
}

- (id)specifiers
{
  v3 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v26 = OBJC_IVAR___PSListController__specifiers;
    v27 = objc_opt_new();
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"WEATHER_LIMIT_TEXT" value:&stru_8488 table:@"WeatherBridgeSettings"];
    v6 = [NSString localizedStringWithFormat:v5, 20];

    v7 = +[PSSpecifier emptyGroupSpecifier];
    v8 = PSFooterTextGroupKey;
    v28 = v6;
    [v7 setProperty:v6 forKey:PSFooterTextGroupKey];
    v9 = +[PSSpecifier emptyGroupSpecifier];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"DEFAULT_CITY_NOTE_COMPLICATION" value:&stru_8488 table:@"WeatherBridgeSettings"];
    [v9 setProperty:v11 forKey:v8];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v9;
    v14 = [v12 localizedStringForKey:@"DEFAULT_CITY" value:&stru_8488 table:@"WeatherBridgeSettings"];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"defaultCity:" detail:objc_opt_class() cell:2 edit:0];

    [v15 setIdentifier:@"WEATHER_SETTING_CITY_CHOOSER_ID"];
    v30[0] = v7;
    v30[1] = v13;
    v30[2] = v15;
    v16 = [NSArray arrayWithObjects:v30 count:3];
    [v27 addObjectsFromArray:v16];

    v29.receiver = self;
    v29.super_class = WeatherCompanionBridgeSettingsController;
    v17 = [(WeatherCompanionBridgeSettingsController *)&v29 specifiers];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = +[NSArray array];
    }

    v20 = v19;

    v21 = [v20 specifierForID:BPSMirrorGroupID];
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"WEATHER_NOTIFICITON_SETTINGS" value:&stru_8488 table:@"WeatherBridgeSettings"];
    [v21 setName:v23];

    [v27 addObjectsFromArray:v20];
    v24 = *&self->BPSNotificationAppController_opaque[v26];
    *&self->BPSNotificationAppController_opaque[v26] = v27;

    v3 = *&self->BPSNotificationAppController_opaque[v26];
  }

  return v3;
}

- (void)monitorObservedReload:(id)a3
{
  v4 = qword_CB00;
  if (os_log_type_enabled(qword_CB00, OS_LOG_TYPE_DEBUG))
  {
    sub_2B8C(v4);
  }

  [(WeatherCompanionBridgeSettingsController *)self setSpecifiers:0];
  [(WeatherCompanionBridgeSettingsController *)self reloadSpecifiers];
}

- (WeatherPrefsMonitor)weatherPrefsMonitor
{
  weatherPrefsMonitor = self->_weatherPrefsMonitor;
  if (!weatherPrefsMonitor)
  {
    v4 = [[WeatherPrefsMonitor alloc] initWithDelegate:self];
    v5 = self->_weatherPrefsMonitor;
    self->_weatherPrefsMonitor = v4;

    weatherPrefsMonitor = self->_weatherPrefsMonitor;
  }

  return weatherPrefsMonitor;
}

@end