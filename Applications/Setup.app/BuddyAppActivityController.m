@interface BuddyAppActivityController
+ (void)clearAppActivitySettingWithSettingsManager:(id)a3 buddyPreferences:(id)a4;
+ (void)setAppActivityEnabled:(BOOL)a3 presented:(BOOL)a4 settingsManager:(id)a5 buddyPreferences:(id)a6;
+ (void)skippedByCloudConfigWithEnvironment:(id)a3;
- (BOOL)controllerNeedsToRun;
- (BOOL)settingIsRestrictedOrAlreadyEnabledOrDiagnosticSubmissionNotAllowed;
- (BYPreferencesController)buddyPreferences;
- (BuddyAppActivityController)init;
- (void)_disableAppAnalytics:(id)a3;
- (void)_enableAppAnalytics:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BuddyAppActivityController

- (BuddyAppActivityController)init
{
  location = self;
  v15[1] = a2;
  v2 = +[NSBundle mainBundle];
  v15[0] = [(NSBundle *)v2 localizedStringForKey:@"APP_ANALYTICS" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v14 = [(NSBundle *)v3 localizedStringForKey:@"APP_ANALYTICS_DESCRIPTION" value:&stru_10032F900 table:@"Localizable"];

  v4 = +[UIDevice currentDevice];
  v5 = [(UIDevice *)v4 sf_isChinaRegionCellularDevice];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"ANALYTICS_CELLULAR_DATA_NOTICE" value:&stru_10032F900 table:@"Localizable"];
    v8 = [v14 stringByAppendingFormat:@"\n\n%@", v7];
    v9 = v14;
    v14 = v8;
  }

  v10 = location;
  location = 0;
  v13.receiver = v10;
  v13.super_class = BuddyAppActivityController;
  location = [(BuddyAppActivityController *)&v13 initWithTitle:v15[0] detailText:v14 symbolName:@"chart.bar.xaxis"];
  objc_storeStrong(&location, location);
  v11 = location;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&location, 0);
  return v11;
}

- (BYPreferencesController)buddyPreferences
{
  v9 = self;
  oslog[1] = a2;
  if (!self->_buddyPreferences)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = 17;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_FAULT))
    {
      v2 = oslog[0];
      v3 = v7;
      sub_10006AA68(v6);
      _os_log_fault_impl(&_mh_execute_header, v2, v3, "Preferences controller is nil", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  buddyPreferences = v9->_buddyPreferences;

  return buddyPreferences;
}

- (void)viewDidLoad
{
  v15 = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = BuddyAppActivityController;
  [(BuddyAppActivityController *)&v13 viewDidLoad];
  v2 = [(BuddyAppActivityController *)v15 headerView];
  [v2 setIconInheritsTint:1];

  v3 = [(BuddyAppActivityController *)v15 managedConfiguration];
  v4 = [(MCProfileConnection *)v3 userBoolValueForSetting:MCFeatureAppAnalyticsAllowed];
  [(BuddyAppActivityController *)v15 setInitialAppAnalyticsUserSetting:v4];

  v5 = v15;
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"ENABLE_SHARE_APP_ANALYTICS_WITH_DEVELOPERS" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v5 addBoldButton:v7 action:"_enableAppAnalytics:"];

  v8 = v15;
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"DISABLE_SHARE_APP_ANALYTICS_WITH_DEVELOPERS" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v8 addLinkButton:v10 action:"_disableAppAnalytics:"];

  v11 = [(BuddyAppActivityController *)v15 buttonTray];
  v16 = BYPrivacyAnalyticsAppIdentifier;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  [v11 setPrivacyLinkForBundles:v12];
}

- (void)viewDidAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = BuddyAppActivityController;
  [(BuddyAppActivityController *)&v11 viewDidAppear:a3];
  if (([(BuddyAppActivityController *)v14 isMovingToParentViewController]& 1) == 0)
  {
    v3 = [(BuddyAppActivityController *)v14 buddyPreferences];
    [(BYPreferencesController *)v3 setObject:&__kCFBooleanFalse forKey:@"PBAppActivity2Presented"];

    if ([(BuddyAppActivityController *)v14 initialAppAnalyticsUserSetting])
    {
      if ([(BuddyAppActivityController *)v14 initialAppAnalyticsUserSetting]== 2)
      {
        v8 = objc_opt_class();
        v9 = [(BuddyAppActivityController *)v14 settingsManager];
        v10 = [(BuddyAppActivityController *)v14 buddyPreferences];
        [v8 setAppActivityEnabled:0 presented:0 settingsManager:v9 buddyPreferences:v10];
      }
    }

    else
    {
      v4 = [(BuddyAppActivityController *)v14 paneFeatureAnalyticsManager];
      [(BYPaneFeatureAnalyticsManager *)v4 clearActionForFeature:4];

      v5 = objc_opt_class();
      v6 = [(BuddyAppActivityController *)v14 settingsManager];
      v7 = [(BuddyAppActivityController *)v14 buddyPreferences];
      [v5 clearAppActivitySettingWithSettingsManager:v6 buddyPreferences:v7];
    }
  }
}

- (BOOL)settingIsRestrictedOrAlreadyEnabledOrDiagnosticSubmissionNotAllowed
{
  v2 = [(BuddyAppActivityController *)self capabilities];
  v3 = [(BYCapabilities *)v2 isAppAnalyticsRestricted];
  v9 = 0;
  v7 = 0;
  v4 = 1;
  if ((v3 & 1) == 0)
  {
    v10 = [(BuddyAppActivityController *)self managedConfiguration];
    v9 = 1;
    v5 = [(MCProfileConnection *)v10 effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];
    v4 = 1;
    if (v5 == 1)
    {
      v8 = [(BuddyAppActivityController *)self managedConfiguration];
      v7 = 1;
      v4 = [(MCProfileConnection *)v8 effectiveBoolValueForSetting:MCFeatureAppAnalyticsAllowed]== 1;
    }
  }

  v12 = v4;
  if (v7)
  {
  }

  if (v9)
  {
  }

  return v12;
}

+ (void)setAppActivityEnabled:(BOOL)a3 presented:(BOOL)a4 settingsManager:(id)a5 buddyPreferences:(id)a6
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v9 = 0;
  objc_storeStrong(&v9, a6);
  [location setBool:v12 forManagedConfigurationSetting:MCFeatureAppAnalyticsAllowed];
  v7 = v9;
  v8 = [NSNumber numberWithBool:v11];
  [v7 setObject:v8 forKey:@"PBAppActivity2Presented"];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

+ (void)clearAppActivitySettingWithSettingsManager:(id)a3 buddyPreferences:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [location[0] removeBoolSettingForManagedConfigurationSetting:MCFeatureAppAnalyticsAllowed];
  [v5 removeObjectForKey:@"PBAppActivity2Presented"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_enableAppAnalytics:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppActivityController *)v8 settingsManager];
  v4 = [(BuddyAppActivityController *)v8 buddyPreferences];
  [BuddyAppActivityController setAppActivityEnabled:1 presented:1 settingsManager:v3 buddyPreferences:v4];

  v5 = [(BuddyAppActivityController *)v8 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v5 recordActionWithValue:&__kCFBooleanTrue forFeature:4];

  v6 = [(BuddyWelcomeController *)v8 delegate];
  [(BFFFlowItemDelegate *)v6 flowItemDone:v8];

  objc_storeStrong(location, 0);
}

- (void)_disableAppAnalytics:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppActivityController *)v8 settingsManager];
  v4 = [(BuddyAppActivityController *)v8 buddyPreferences];
  [BuddyAppActivityController setAppActivityEnabled:0 presented:1 settingsManager:v3 buddyPreferences:v4];

  v5 = [(BuddyAppActivityController *)v8 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v5 recordActionWithValue:&__kCFBooleanFalse forFeature:4];

  v6 = [(BuddyWelcomeController *)v8 delegate];
  [(BFFFlowItemDelegate *)v6 flowItemDone:v8];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v15 = self;
  oslog[1] = a2;
  if ([(BuddyAppActivityController *)self settingIsRestrictedOrAlreadyEnabledOrDiagnosticSubmissionNotAllowed])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v13;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v2, v3, "Skipping App Analytics because it is not allowed", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    return 0;
  }

  else
  {
    v4 = [(BuddyAppActivityController *)v15 buddyPreferences];
    v5 = [(BYPreferencesController *)v4 BOOLForKey:@"PBAppActivity2Presented"];

    if (v5)
    {
      v11 = _BYLoggingFacility();
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v11;
        v7 = v10;
        sub_10006AA68(v9);
        _os_log_impl(&_mh_execute_header, v6, v7, "Skipping App Analytics because it's already been offered", v9, 2u);
      }

      objc_storeStrong(&v11, 0);
      return 0;
    }

    else
    {
      return 1;
    }
  }
}

+ (void)skippedByCloudConfigWithEnvironment:(id)a3
{
  v7 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v4 = [location[0] settingsManager];
  v5 = [location[0] buddyPreferences];
  [v3 setAppActivityEnabled:0 presented:0 settingsManager:v4 buddyPreferences:v5];

  objc_storeStrong(location, 0);
}

@end