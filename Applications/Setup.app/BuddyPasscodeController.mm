@interface BuddyPasscodeController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerAllowsNavigatingBack;
- (BOOL)controllerNeedsToRun;
- (BuddyPasscodeController)init;
- (void)controllerWasPopped;
- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation;
- (void)passcodeViewController:(id)controller didSetPasscode:(id)passcode;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyPasscodeController

- (BOOL)controllerNeedsToRun
{
  managedConfiguration = [(BuddyPasscodeController *)self managedConfiguration];
  v3 = [(MCProfileConnection *)managedConfiguration effectiveBoolValueForSetting:MCFeaturePasscodeModificationAllowed];

  if (v3 == 2)
  {
    return 0;
  }

  managedConfiguration2 = [(BuddyPasscodeController *)self managedConfiguration];
  isPasscodeSet = [(MCProfileConnection *)managedConfiguration2 isPasscodeSet];

  v14 = isPasscodeSet & 1;
  v13 = 0;
  buddyPreferences = [(BuddyPasscodeController *)self buddyPreferences];
  v7 = 0;
  if (([(BYPreferencesController *)buddyPreferences BOOLForKey:@"Payment2Presented"]& 1) == 0)
  {
    v7 = MGGetBoolAnswer() & 1;
  }

  if (v7)
  {
    v13 = 1;
  }

  v11 = 0;
  if ((v13 & 1) != 0 || (v12 = [(BuddyPasscodeController *)self buddyPreferences], v11 = 1, v8 = [(BYPreferencesController *)v12 BOOLForKey:@"Passcode4Presented"], v9 = 0, (v8 & 1) == 0))
  {
    v9 = v14 ^ 1;
  }

  v16 = v9 & 1;
  if (v11)
  {
  }

  return v16;
}

- (BuddyPasscodeController)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyPasscodeController;
  location = [(BuddyPasscodeBaseViewController *)&v4 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    [location setPasscodeCreationDelegate:location];
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  proximitySetupController = [(BuddyPasscodeController *)self proximitySetupController];
  information = [(ProximitySetupController *)proximitySetupController information];
  appleID = [(SASProximityInformation *)information appleID];

  if (appleID)
  {
    objc_storeStrong(location, BYPrivacyAppleIDIdentifier);
  }

  [(BuddyPasscodeBaseViewController *)selfCopy setIncludeHeaderAnimation:location[0] == 0];
  v7.receiver = selfCopy;
  v7.super_class = BuddyPasscodeController;
  [(BuddyPasscodeBaseViewController *)&v7 viewDidLoad];
  if (location[0])
  {
    v6 = [OBPrivacyLinkController linkWithBundleIdentifier:location[0]];
    [v6 setDisplayCaptionText:0];
    buttonTray = [(BuddyPasscodeController *)selfCopy buttonTray];
    [buttonTray setPrivacyLinkController:v6];

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v9 = a2;
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = BuddyPasscodeController;
  [(BuddyPasscodeBaseViewController *)&v7 viewWillAppear:appear];
  flowItemDispositionProvider = [(BuddyPasscodeBaseViewController *)selfCopy flowItemDispositionProvider];
  v4 = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider dispositions]& 8;

  if (v4 == 8)
  {
    miscState = [(BuddyPasscodeController *)selfCopy miscState];
    [(BuddyMiscState *)miscState setHasPresentedPasscodeFlow:0];
  }

  paneFeatureAnalyticsManager = [(BuddyPasscodeController *)selfCopy paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager clearActionForFeature:11];
}

- (BOOL)controllerAllowsNavigatingBack
{
  v2 = [(BuddyPasscodeController *)self managedConfiguration:a2];
  v3 = [(MCProfileConnection *)v2 isPasscodeSet]^ 1;

  return v3 & 1;
}

- (void)controllerWasPopped
{
  v2 = [(BuddyPasscodeController *)self buddyPreferences:a2];
  [(BYPreferencesController *)v2 removeObjectForKey:@"Passcode4Presented"];
}

- (void)passcodeViewController:(id)controller didFinishWithPasscodeCreation:(id)creation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v13 = 0;
  objc_storeStrong(&v13, creation);
  if (v13)
  {
    paneFeatureAnalyticsManager = [(BuddyPasscodeController *)selfCopy paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:&__kCFBooleanTrue forFeature:11];
  }

  else
  {
    flowItemDispositionProvider = [(BuddyPasscodeBaseViewController *)selfCopy flowItemDispositionProvider];
    v6 = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider dispositions]& 8;

    if (v6 == 8)
    {
      miscState = [(BuddyPasscodeController *)selfCopy miscState];
      [(BuddyMiscState *)miscState setHasPresentedPasscodeFlow:1];
    }

    flowSkipController = [(BuddyPasscodeController *)selfCopy flowSkipController];
    [(BYFlowSkipController *)flowSkipController didSkipFlow:BYFlowSkipIdentifierPasscode];

    paneFeatureAnalyticsManager2 = [(BuddyPasscodeController *)selfCopy paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager2 recordActionWithValue:&__kCFBooleanFalse forFeature:11];
  }

  buddyPreferences = [(BuddyPasscodeController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"Passcode4Presented"];

  delegate = [(BuddyPasscodeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy nextItemClass:0];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)passcodeViewController:(id)controller didSetPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, passcode);
  flowItemDispositionProvider = [(BuddyPasscodeBaseViewController *)selfCopy flowItemDispositionProvider];
  v6 = [(BuddyFlowItemDispositionProvider *)flowItemDispositionProvider dispositions]& 8;

  passcodeCacheManager = [(BuddyPasscodeController *)selfCopy passcodeCacheManager];
  if (v6 == 8)
  {
    [(BYPasscodeCacheManager *)passcodeCacheManager cachePasscode:v8 retrievable:1];
  }

  else
  {
    [(BYPasscodeCacheManager *)passcodeCacheManager cachePasscode:v8];
  }

  BYSetupAssistantCreateAuthContext();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end