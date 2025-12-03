@interface BuddyLocationServicesController
+ (BOOL)controllerNeedsToRun;
+ (void)_setPersistentPresentedKey:(BOOL)key;
+ (void)setSettingEnabled:(BOOL)enabled presented:(BOOL)presented settingsManager:(id)manager;
+ (void)setSettingsFromArchivedPreferences:(id)preferences settingsManager:(id)manager;
+ (void)skippedByCloudConfig;
- (BuddyLocationServicesController)init;
- (void)_disableButtonPressed:(id)pressed;
- (void)_enableButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyLocationServicesController

- (BuddyLocationServicesController)init
{
  location = self;
  v8[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"LOCATION_SERVICES"];
  v8[0] = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];

  v4 = location;
  location = 0;
  v7.receiver = v4;
  v7.super_class = BuddyLocationServicesController;
  location = [(BuddyLocationServicesController *)&v7 initWithTitle:v8[0] detailText:0 symbolName:0];
  objc_storeStrong(&location, location);
  v5 = location;
  objc_storeStrong(v8, 0);
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v34 = a2;
  v33.receiver = self;
  v33.super_class = BuddyLocationServicesController;
  [(BuddyLocationServicesController *)&v33 viewDidLoad];
  flowItemDispositionProvider = [(BuddyLocationServicesController *)selfCopy flowItemDispositionProvider];
  dispositions = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider dispositions];

  if (dispositions)
  {
    flowItemDispositionProvider2 = [(BuddyLocationServicesController *)selfCopy flowItemDispositionProvider];
    location = [BuddyLocalizationUtilities dispositionSpecificLocalizedStringKeyForKey:@"LOCATION_SERVICES_DESCRIPTION" disposition:[(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider2 dispositions]];

    flowItemDispositionProvider3 = [(BuddyLocationServicesController *)selfCopy flowItemDispositionProvider];
    dispositions2 = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider3 dispositions];

    if (dispositions2 == 8)
    {
      v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:location];
      v8 = location;
      location = v7;
    }

    headerView = [(BuddyLocationServicesController *)selfCopy headerView];
    v10 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v10 localizedStringForKey:location value:&stru_10032F900 table:@"Localizable"];
    [headerView setDetailText:v11];

    objc_storeStrong(&location, 0);
  }

  else
  {
    headerView2 = [(BuddyLocationServicesController *)selfCopy headerView];
    v13 = +[NSBundle mainBundle];
    v14 = [(NSBundle *)v13 localizedStringForKey:@"LOCATION_SERVICES_DESCRIPTION" value:&stru_10032F900 table:@"Localizable"];
    [headerView2 setDetailText:v14];
  }

  headerView3 = [(BuddyLocationServicesController *)selfCopy headerView];
  [headerView3 setIconInheritsTint:1];

  v16 = selfCopy;
  v17 = +[NSBundle mainBundle];
  v18 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ENABLE_LOCATION_SERVICES"];
  v19 = [(NSBundle *)v17 localizedStringForKey:v18 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v16 addBoldButton:v19 action:"_enableButtonTapped:"];

  v20 = selfCopy;
  v21 = +[NSBundle mainBundle];
  v22 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DISABLE_LOCATION_SERVICES"];
  v23 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v20 addLinkButton:v23 action:"_disableButtonPressed:"];

  buttonTray = [(BuddyLocationServicesController *)selfCopy buttonTray];
  v37 = BYPrivacyLocationServicesIdentifier;
  v25 = [NSArray arrayWithObjects:&v37 count:1];
  [buttonTray setPrivacyLinkForBundles:v25];

  headerView4 = [(BuddyLocationServicesController *)selfCopy headerView];
  LODWORD(v27) = 1045220557;
  [headerView4 setTitleHyphenationFactor:v27];

  v28 = [[OBAnimationState alloc] initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
  v36[0] = v28;
  v29 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:0.7];
  v36[1] = v29;
  v31 = [NSArray arrayWithObjects:v36 count:2];

  v30 = [(BuddyLocationServicesController *)selfCopy buddy_animationController:@"Location" animatedStates:v31 startAtFirstState:1];
  [(BuddyLocationServicesController *)selfCopy setAnimationController:v30];

  objc_storeStrong(&v31, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v7 = a2;
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = BuddyLocationServicesController;
  [(BuddyLocationServicesController *)&v5 viewWillAppear:appear];
  [BuddyLocationServicesController _setPersistentPresentedKey:0];
  paneFeatureAnalyticsManager = [(BuddyLocationServicesController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager clearActionForFeature:6];

  animationController = [(BuddyLocationServicesController *)selfCopy animationController];
  [(OBAnimationController *)animationController startAnimation];
}

+ (BOOL)controllerNeedsToRun
{
  location[2] = self;
  location[1] = a2;
  v6 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  location[0] = v6;
  v4 = ([location[0] containsObject:@"location"] ^ 1) & 1;
  v2 = 0;
  if (!CFPreferencesGetAppBooleanValue(@"LocationServices5Presented", BYBuddyNotBackedUpIdentifier, 0))
  {
    v2 = v4;
  }

  objc_storeStrong(location, 0);
  return v2 & 1;
}

+ (void)skippedByCloudConfig
{
  if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
  {
    [CLLocationManager setLocationServicesEnabled:0, a2, self];
  }
}

+ (void)_setPersistentPresentedKey:(BOOL)key
{
  if (key)
  {
    v3 = kCFBooleanTrue;
  }

  else
  {
    v3 = kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"LocationServices5Presented", v3, BYBuddyNotBackedUpIdentifier);
  CFPreferencesAppSynchronize(BYBuddyNotBackedUpIdentifier);
}

+ (void)setSettingEnabled:(BOOL)enabled presented:(BOOL)presented settingsManager:(id)manager
{
  selfCopy = self;
  v8 = a2;
  enabledCopy = enabled;
  presentedCopy = presented;
  v5 = 0;
  objc_storeStrong(&v5, manager);
  [CLLocationManager setLocationServicesEnabled:enabledCopy];
  [v5 stashLocationServicesChoice:enabledCopy];
  [selfCopy _setPersistentPresentedKey:presentedCopy];
  objc_storeStrong(&v5, 0);
}

+ (void)setSettingsFromArchivedPreferences:(id)preferences settingsManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v15 = 0;
  objc_storeStrong(&v15, manager);
  v14 = 0;
  if (location[0])
  {
    v5 = [CLLocationManager _applyArchivedAuthorizationDecisions:location[0]];
    v6 = v14;
    v14 = v5;
  }

  else
  {
    v7 = +[CLLocationManager sharedManager];
    [v7 resetApps];
  }

  if (v14)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v8 = v14;
      }

      else
      {
        domain = [v14 domain];
        v11 = 1;
        v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v14 code]);
        v10 = v8;
        v9 = 1;
      }

      sub_10006AE18(buf, v8);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to set location services settings: %@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    [v15 stashLocationServicesSettings:location[0]];
    [selfCopy _setPersistentPresentedKey:location[0] != 0];
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_enableButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  v3 = objc_opt_class();
  settingsManager = [(BuddyLocationServicesController *)selfCopy settingsManager];
  [v3 setSettingEnabled:1 presented:1 settingsManager:settingsManager];

  paneFeatureAnalyticsManager = [(BuddyLocationServicesController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:&__kCFBooleanTrue forFeature:6];

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (void)_disableButtonPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  v35 = 0;
  proximitySetupController = [(BuddyLocationServicesController *)selfCopy proximitySetupController];
  hasAppliedSettings = [(ProximitySetupController *)proximitySetupController hasAppliedSettings];

  v34 = hasAppliedSettings & 1;
  v32 = 0;
  v30 = 0;
  v5 = 0;
  if (hasAppliedSettings)
  {
    pendingRestoreState = [(BuddyLocationServicesController *)selfCopy pendingRestoreState];
    v32 = 1;
    backupItem = [pendingRestoreState backupItem];
    v30 = 1;
    v5 = backupItem == 0;
  }

  v35 = v5;
  if (v30)
  {
  }

  if (v32)
  {
  }

  v29 = 0;
  v6 = +[NSBundle mainBundle];
  if (v35)
  {
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"LOCATION_SERVICES_DISABLED_MESSAGE_FMIP"];
    v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
    v9 = v29;
    v29 = v8;
  }

  else
  {
    v10 = [(NSBundle *)v6 localizedStringForKey:0x100337000 value:&stru_10032F900 table:@"Localizable"];
    v11 = v29;
    v29 = v10;
  }

  v12 = +[NSBundle mainBundle];
  v13 = [(NSBundle *)v12 localizedStringForKey:@"LOCATION_SERVICES_DISABLED_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v28 = [UIAlertController alertControllerWithTitle:v13 message:v29 preferredStyle:1];

  v14 = v28;
  v15 = +[NSBundle mainBundle];
  v16 = [(NSBundle *)v15 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_100199FDC;
  v26 = &unk_10032B598;
  v27 = selfCopy;
  v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v22];
  [v14 addAction:v17];

  v18 = v28;
  v19 = +[NSBundle mainBundle];
  v20 = [(NSBundle *)v19 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:0];
  [v18 addAction:v21];

  [(BuddyLocationServicesController *)selfCopy presentViewController:v28 animated:1 completion:0];
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

@end