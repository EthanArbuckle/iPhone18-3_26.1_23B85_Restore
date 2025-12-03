@interface BuddySafetyController
+ (void)skippedByCloudConfigWithEnvironment:(id)environment;
- (BOOL)controllerNeedsToRun;
- (BuddySafetyController)init;
- (void)_continueTapped;
- (void)viewDidLoad;
@end

@implementation BuddySafetyController

- (BuddySafetyController)init
{
  v15 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"SAFETY_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"SAFETY_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v14.receiver = self;
  v14.super_class = BuddySafetyController;
  location = [(BuddySafetyController *)&v14 initWithTitle:v4 detailText:v6 symbolName:0];
  objc_storeStrong(&location, location);

  v7 = dispatch_get_global_queue(0, 0);
  v8 = *(location + 5);
  *(location + 5) = v7;

  v9 = [CoreTelephonyClient alloc];
  v10 = [v9 initWithQueue:*(location + 5)];
  v11 = *(location + 6);
  *(location + 6) = v10;

  v12 = location;
  objc_storeStrong(&location, 0);
  return v12;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v40 = a2;
  v39.receiver = self;
  v39.super_class = BuddySafetyController;
  [(BuddySafetyController *)&v39 viewDidLoad];
  v2 = selfCopy;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"_continueTapped"];

  v38 = [UIImage imageNamed:@"d3x.arrows.left.and.right"];
  if (SBUIIsSystemApertureEnabled())
  {
    v5 = [UIImage imageNamed:@"d7x.arrows.left.and.right"];
    v6 = v38;
    v38 = v5;
  }

  v7 = selfCopy;
  v8 = +[NSBundle mainBundle];
  v9 = [(NSBundle *)v8 localizedStringForKey:@"PRESS_HOLD_TO_CALL_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v10 = +[NSBundle mainBundle];
  v11 = [(NSBundle *)v10 localizedStringForKey:@"PRESS_HOLD_TO_CALL_DESCRIPTION" value:&stru_10032F900 table:@"Localizable"];
  [(BuddySafetyController *)v7 addBulletedListItemWithTitle:v9 description:v11 image:v38];

  capabilities = [(BuddySafetyController *)selfCopy capabilities];
  LOBYTE(v7) = [(BYCapabilities *)capabilities supportsKappaDetection];

  if (v7)
  {
    v13 = selfCopy;
    v14 = +[NSBundle mainBundle];
    v15 = [(NSBundle *)v14 localizedStringForKey:@"CAR_CRASH_DETECTION_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v16 = +[NSBundle mainBundle];
    v17 = [(NSBundle *)v16 localizedStringForKey:@"CAR_CRASH_DETECTION_DESCRIPTION" value:&stru_10032F900 table:@"Localizable"];
    v18 = [UIImage systemImageNamed:@"car"];
    [(BuddySafetyController *)v13 addBulletedListItemWithTitle:v15 description:v17 image:v18];
  }

  location = 0;
  coreTelephonyClient = [(BuddySafetyController *)selfCopy coreTelephonyClient];
  obj = 0;
  v20 = [(CoreTelephonyClient *)coreTelephonyClient getStewieSupport:&obj];
  objc_storeStrong(&location, obj);
  v21 = 0;
  if ([v20 hwSupport])
  {
    v21 = location == 0;
  }

  if (v21)
  {
    v22 = selfCopy;
    v23 = +[NSBundle mainBundle];
    v24 = [(NSBundle *)v23 localizedStringForKey:@"SATELLITE_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v25 = +[NSBundle mainBundle];
    v26 = [(NSBundle *)v25 localizedStringForKey:@"SATELLITE_DESCRIPTION" value:&stru_10032F900 table:@"Localizable"];
    v27 = [UIImage _systemImageNamed:@"satellite"];
    [(BuddySafetyController *)v22 addBulletedListItemWithTitle:v24 description:v26 image:v27];
  }

  else if (location)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 0;
      v31 = 0;
      if (_BYIsInternalInstall())
      {
        v28 = location;
      }

      else if (location)
      {
        domain = [location domain];
        v33 = 1;
        v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [location code]);
        v32 = v28;
        v31 = 1;
      }

      else
      {
        v28 = 0;
      }

      sub_10006AE18(buf, v28);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Error fetching Bifrost availibility %@", buf, 0xCu);
      if (v31)
      {
      }

      if (v33)
      {
      }
    }

    objc_storeStrong(&oslog, 0);
  }

  buttonTray = [(BuddySafetyController *)selfCopy buttonTray];
  v42 = BYPrivacySafetyFeaturesIdentifier;
  v30 = [NSArray arrayWithObjects:&v42 count:1];
  [buttonTray setPrivacyLinkForBundles:v30];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v38, 0);
}

- (void)_continueTapped
{
  buddyPreferences = [(BuddySafetyController *)self buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"SafetyPresented"];

  delegate = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

+ (void)skippedByCloudConfigWithEnvironment:(id)environment
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  runState = [location[0] runState];
  hasCompletedInitialRun = [runState hasCompletedInitialRun];

  if ((hasCompletedInitialRun & 1) == 0)
  {
    emergencyExecutor = [location[0] emergencyExecutor];
    [emergencyExecutor setKappaTriggersEmergencySOS:0];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  capabilities = [(BuddySafetyController *)self capabilities];
  supportsKappaDetection = [(BYCapabilities *)capabilities supportsKappaDetection];
  v6 = 0;
  v4 = 0;
  if (supportsKappaDetection)
  {
    buddyPreferences = [(BuddySafetyController *)self buddyPreferences];
    v6 = 1;
    v4 = [(BYPreferencesController *)buddyPreferences BOOLForKey:@"SafetyPresented"]^ 1;
  }

  v9 = v4 & 1;
  if (v6)
  {
  }

  return v9 & 1;
}

@end