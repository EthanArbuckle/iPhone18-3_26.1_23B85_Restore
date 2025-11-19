@interface BuddyLocationServicesController
+ (BOOL)controllerNeedsToRun;
+ (void)_setPersistentPresentedKey:(BOOL)a3;
+ (void)setSettingEnabled:(BOOL)a3 presented:(BOOL)a4 settingsManager:(id)a5;
+ (void)setSettingsFromArchivedPreferences:(id)a3 settingsManager:(id)a4;
+ (void)skippedByCloudConfig;
- (BuddyLocationServicesController)init;
- (void)_disableButtonPressed:(id)a3;
- (void)_enableButtonTapped:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v35 = self;
  v34 = a2;
  v33.receiver = self;
  v33.super_class = BuddyLocationServicesController;
  [(BuddyLocationServicesController *)&v33 viewDidLoad];
  v2 = [(BuddyLocationServicesController *)v35 flowItemDispositionProvider];
  v3 = [(BuddyFlowItemDispositionProvider *)v2 dispositions];

  if (v3)
  {
    v4 = [(BuddyLocationServicesController *)v35 flowItemDispositionProvider];
    location = [BuddyLocalizationUtilities dispositionSpecificLocalizedStringKeyForKey:@"LOCATION_SERVICES_DESCRIPTION" disposition:[(BuddyFlowItemDispositionProvider *)v4 dispositions]];

    v5 = [(BuddyLocationServicesController *)v35 flowItemDispositionProvider];
    v6 = [(BuddyFlowItemDispositionProvider *)v5 dispositions];

    if (v6 == 8)
    {
      v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:location];
      v8 = location;
      location = v7;
    }

    v9 = [(BuddyLocationServicesController *)v35 headerView];
    v10 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v10 localizedStringForKey:location value:&stru_10032F900 table:@"Localizable"];
    [v9 setDetailText:v11];

    objc_storeStrong(&location, 0);
  }

  else
  {
    v12 = [(BuddyLocationServicesController *)v35 headerView];
    v13 = +[NSBundle mainBundle];
    v14 = [(NSBundle *)v13 localizedStringForKey:@"LOCATION_SERVICES_DESCRIPTION" value:&stru_10032F900 table:@"Localizable"];
    [v12 setDetailText:v14];
  }

  v15 = [(BuddyLocationServicesController *)v35 headerView];
  [v15 setIconInheritsTint:1];

  v16 = v35;
  v17 = +[NSBundle mainBundle];
  v18 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ENABLE_LOCATION_SERVICES"];
  v19 = [(NSBundle *)v17 localizedStringForKey:v18 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v16 addBoldButton:v19 action:"_enableButtonTapped:"];

  v20 = v35;
  v21 = +[NSBundle mainBundle];
  v22 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"DISABLE_LOCATION_SERVICES"];
  v23 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v20 addLinkButton:v23 action:"_disableButtonPressed:"];

  v24 = [(BuddyLocationServicesController *)v35 buttonTray];
  v37 = BYPrivacyLocationServicesIdentifier;
  v25 = [NSArray arrayWithObjects:&v37 count:1];
  [v24 setPrivacyLinkForBundles:v25];

  v26 = [(BuddyLocationServicesController *)v35 headerView];
  LODWORD(v27) = 1045220557;
  [v26 setTitleHyphenationFactor:v27];

  v28 = [[OBAnimationState alloc] initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
  v36[0] = v28;
  v29 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:0.7];
  v36[1] = v29;
  v31 = [NSArray arrayWithObjects:v36 count:2];

  v30 = [(BuddyLocationServicesController *)v35 buddy_animationController:@"Location" animatedStates:v31 startAtFirstState:1];
  [(BuddyLocationServicesController *)v35 setAnimationController:v30];

  objc_storeStrong(&v31, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = BuddyLocationServicesController;
  [(BuddyLocationServicesController *)&v5 viewWillAppear:a3];
  [BuddyLocationServicesController _setPersistentPresentedKey:0];
  v3 = [(BuddyLocationServicesController *)v8 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v3 clearActionForFeature:6];

  v4 = [(BuddyLocationServicesController *)v8 animationController];
  [(OBAnimationController *)v4 startAnimation];
}

+ (BOOL)controllerNeedsToRun
{
  location[2] = a1;
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
    [CLLocationManager setLocationServicesEnabled:0, a2, a1];
  }
}

+ (void)_setPersistentPresentedKey:(BOOL)a3
{
  if (a3)
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

+ (void)setSettingEnabled:(BOOL)a3 presented:(BOOL)a4 settingsManager:(id)a5
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5 = 0;
  objc_storeStrong(&v5, a5);
  [CLLocationManager setLocationServicesEnabled:v7];
  [v5 stashLocationServicesChoice:v7];
  [v9 _setPersistentPresentedKey:v6];
  objc_storeStrong(&v5, 0);
}

+ (void)setSettingsFromArchivedPreferences:(id)a3 settingsManager:(id)a4
{
  v17 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
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
        v12 = [v14 domain];
        v11 = 1;
        v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [v14 code]);
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
    [v17 _setPersistentPresentedKey:location[0] != 0];
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_enableButtonTapped:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_opt_class();
  v4 = [(BuddyLocationServicesController *)v8 settingsManager];
  [v3 setSettingEnabled:1 presented:1 settingsManager:v4];

  v5 = [(BuddyLocationServicesController *)v8 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v5 recordActionWithValue:&__kCFBooleanTrue forFeature:6];

  v6 = [(BuddyWelcomeController *)v8 delegate];
  [(BFFFlowItemDelegate *)v6 flowItemDone:v8];

  objc_storeStrong(location, 0);
}

- (void)_disableButtonPressed:(id)a3
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  v3 = [(BuddyLocationServicesController *)v37 proximitySetupController];
  v4 = [(ProximitySetupController *)v3 hasAppliedSettings];

  v34 = v4 & 1;
  v32 = 0;
  v30 = 0;
  v5 = 0;
  if (v4)
  {
    v33 = [(BuddyLocationServicesController *)v37 pendingRestoreState];
    v32 = 1;
    v31 = [v33 backupItem];
    v30 = 1;
    v5 = v31 == 0;
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
  v27 = v37;
  v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v22];
  [v14 addAction:v17];

  v18 = v28;
  v19 = +[NSBundle mainBundle];
  v20 = [(NSBundle *)v19 localizedStringForKey:@"CANCEL" value:&stru_10032F900 table:@"Localizable"];
  v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:0];
  [v18 addAction:v21];

  [(BuddyLocationServicesController *)v37 presentViewController:v28 animated:1 completion:0];
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

@end