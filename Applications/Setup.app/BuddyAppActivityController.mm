@interface BuddyAppActivityController
+ (void)clearAppActivitySettingWithSettingsManager:(id)manager buddyPreferences:(id)preferences;
+ (void)setAppActivityEnabled:(BOOL)enabled presented:(BOOL)presented settingsManager:(id)manager buddyPreferences:(id)preferences;
+ (void)skippedByCloudConfigWithEnvironment:(id)environment;
- (BOOL)controllerNeedsToRun;
- (BOOL)settingIsRestrictedOrAlreadyEnabledOrDiagnosticSubmissionNotAllowed;
- (BYPreferencesController)buddyPreferences;
- (BuddyAppActivityController)init;
- (void)_disableAppAnalytics:(id)analytics;
- (void)_enableAppAnalytics:(id)analytics;
- (void)viewDidAppear:(BOOL)appear;
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
  sf_isChinaRegionCellularDevice = [(UIDevice *)v4 sf_isChinaRegionCellularDevice];

  if (sf_isChinaRegionCellularDevice)
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
  selfCopy = self;
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

  buddyPreferences = selfCopy->_buddyPreferences;

  return buddyPreferences;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = BuddyAppActivityController;
  [(BuddyAppActivityController *)&v13 viewDidLoad];
  headerView = [(BuddyAppActivityController *)selfCopy headerView];
  [headerView setIconInheritsTint:1];

  managedConfiguration = [(BuddyAppActivityController *)selfCopy managedConfiguration];
  v4 = [(MCProfileConnection *)managedConfiguration userBoolValueForSetting:MCFeatureAppAnalyticsAllowed];
  [(BuddyAppActivityController *)selfCopy setInitialAppAnalyticsUserSetting:v4];

  v5 = selfCopy;
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"ENABLE_SHARE_APP_ANALYTICS_WITH_DEVELOPERS" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v5 addBoldButton:v7 action:"_enableAppAnalytics:"];

  v8 = selfCopy;
  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"DISABLE_SHARE_APP_ANALYTICS_WITH_DEVELOPERS" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v8 addLinkButton:v10 action:"_disableAppAnalytics:"];

  buttonTray = [(BuddyAppActivityController *)selfCopy buttonTray];
  v16 = BYPrivacyAnalyticsAppIdentifier;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  [buttonTray setPrivacyLinkForBundles:v12];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = BuddyAppActivityController;
  [(BuddyAppActivityController *)&v11 viewDidAppear:appear];
  if (([(BuddyAppActivityController *)selfCopy isMovingToParentViewController]& 1) == 0)
  {
    buddyPreferences = [(BuddyAppActivityController *)selfCopy buddyPreferences];
    [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanFalse forKey:@"PBAppActivity2Presented"];

    if ([(BuddyAppActivityController *)selfCopy initialAppAnalyticsUserSetting])
    {
      if ([(BuddyAppActivityController *)selfCopy initialAppAnalyticsUserSetting]== 2)
      {
        v8 = objc_opt_class();
        settingsManager = [(BuddyAppActivityController *)selfCopy settingsManager];
        buddyPreferences2 = [(BuddyAppActivityController *)selfCopy buddyPreferences];
        [v8 setAppActivityEnabled:0 presented:0 settingsManager:settingsManager buddyPreferences:buddyPreferences2];
      }
    }

    else
    {
      paneFeatureAnalyticsManager = [(BuddyAppActivityController *)selfCopy paneFeatureAnalyticsManager];
      [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager clearActionForFeature:4];

      v5 = objc_opt_class();
      settingsManager2 = [(BuddyAppActivityController *)selfCopy settingsManager];
      buddyPreferences3 = [(BuddyAppActivityController *)selfCopy buddyPreferences];
      [v5 clearAppActivitySettingWithSettingsManager:settingsManager2 buddyPreferences:buddyPreferences3];
    }
  }
}

- (BOOL)settingIsRestrictedOrAlreadyEnabledOrDiagnosticSubmissionNotAllowed
{
  capabilities = [(BuddyAppActivityController *)self capabilities];
  isAppAnalyticsRestricted = [(BYCapabilities *)capabilities isAppAnalyticsRestricted];
  v9 = 0;
  v7 = 0;
  v4 = 1;
  if ((isAppAnalyticsRestricted & 1) == 0)
  {
    managedConfiguration = [(BuddyAppActivityController *)self managedConfiguration];
    v9 = 1;
    v5 = [(MCProfileConnection *)managedConfiguration effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];
    v4 = 1;
    if (v5 == 1)
    {
      managedConfiguration2 = [(BuddyAppActivityController *)self managedConfiguration];
      v7 = 1;
      v4 = [(MCProfileConnection *)managedConfiguration2 effectiveBoolValueForSetting:MCFeatureAppAnalyticsAllowed]== 1;
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

+ (void)setAppActivityEnabled:(BOOL)enabled presented:(BOOL)presented settingsManager:(id)manager buddyPreferences:(id)preferences
{
  selfCopy = self;
  v13 = a2;
  enabledCopy = enabled;
  presentedCopy = presented;
  location = 0;
  objc_storeStrong(&location, manager);
  v9 = 0;
  objc_storeStrong(&v9, preferences);
  [location setBool:enabledCopy forManagedConfigurationSetting:MCFeatureAppAnalyticsAllowed];
  v7 = v9;
  v8 = [NSNumber numberWithBool:presentedCopy];
  [v7 setObject:v8 forKey:@"PBAppActivity2Presented"];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

+ (void)clearAppActivitySettingWithSettingsManager:(id)manager buddyPreferences:(id)preferences
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = 0;
  objc_storeStrong(&v5, preferences);
  [location[0] removeBoolSettingForManagedConfigurationSetting:MCFeatureAppAnalyticsAllowed];
  [v5 removeObjectForKey:@"PBAppActivity2Presented"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_enableAppAnalytics:(id)analytics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, analytics);
  settingsManager = [(BuddyAppActivityController *)selfCopy settingsManager];
  buddyPreferences = [(BuddyAppActivityController *)selfCopy buddyPreferences];
  [BuddyAppActivityController setAppActivityEnabled:1 presented:1 settingsManager:settingsManager buddyPreferences:buddyPreferences];

  paneFeatureAnalyticsManager = [(BuddyAppActivityController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:&__kCFBooleanTrue forFeature:4];

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (void)_disableAppAnalytics:(id)analytics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, analytics);
  settingsManager = [(BuddyAppActivityController *)selfCopy settingsManager];
  buddyPreferences = [(BuddyAppActivityController *)selfCopy buddyPreferences];
  [BuddyAppActivityController setAppActivityEnabled:0 presented:1 settingsManager:settingsManager buddyPreferences:buddyPreferences];

  paneFeatureAnalyticsManager = [(BuddyAppActivityController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:&__kCFBooleanFalse forFeature:4];

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
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
    buddyPreferences = [(BuddyAppActivityController *)selfCopy buddyPreferences];
    v5 = [(BYPreferencesController *)buddyPreferences BOOLForKey:@"PBAppActivity2Presented"];

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

+ (void)skippedByCloudConfigWithEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v3 = selfCopy;
  settingsManager = [location[0] settingsManager];
  buddyPreferences = [location[0] buddyPreferences];
  [v3 setAppActivityEnabled:0 presented:0 settingsManager:settingsManager buddyPreferences:buddyPreferences];

  objc_storeStrong(location, 0);
}

@end