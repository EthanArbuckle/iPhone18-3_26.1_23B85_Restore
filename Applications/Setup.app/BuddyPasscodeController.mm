@interface BuddyPasscodeController
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerAllowsNavigatingBack;
- (BOOL)controllerNeedsToRun;
- (BuddyPasscodeController)init;
- (void)controllerWasPopped;
- (void)passcodeViewController:(id)a3 didFinishWithPasscodeCreation:(id)a4;
- (void)passcodeViewController:(id)a3 didSetPasscode:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyPasscodeController

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyPasscodeController *)self managedConfiguration];
  v3 = [(MCProfileConnection *)v2 effectiveBoolValueForSetting:MCFeaturePasscodeModificationAllowed];

  if (v3 == 2)
  {
    return 0;
  }

  v4 = [(BuddyPasscodeController *)self managedConfiguration];
  v5 = [(MCProfileConnection *)v4 isPasscodeSet];

  v14 = v5 & 1;
  v13 = 0;
  v6 = [(BuddyPasscodeController *)self buddyPreferences];
  v7 = 0;
  if (([(BYPreferencesController *)v6 BOOLForKey:@"Payment2Presented"]& 1) == 0)
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
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  v2 = [(BuddyPasscodeController *)self proximitySetupController];
  v3 = [(ProximitySetupController *)v2 information];
  v4 = [(SASProximityInformation *)v3 appleID];

  if (v4)
  {
    objc_storeStrong(location, BYPrivacyAppleIDIdentifier);
  }

  [(BuddyPasscodeBaseViewController *)v9 setIncludeHeaderAnimation:location[0] == 0];
  v7.receiver = v9;
  v7.super_class = BuddyPasscodeController;
  [(BuddyPasscodeBaseViewController *)&v7 viewDidLoad];
  if (location[0])
  {
    v6 = [OBPrivacyLinkController linkWithBundleIdentifier:location[0]];
    [v6 setDisplayCaptionText:0];
    v5 = [(BuddyPasscodeController *)v9 buttonTray];
    [v5 setPrivacyLinkController:v6];

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = BuddyPasscodeController;
  [(BuddyPasscodeBaseViewController *)&v7 viewWillAppear:a3];
  v3 = [(BuddyPasscodeBaseViewController *)v10 flowItemDispositionProvider];
  v4 = [(BuddyFlowItemDispositionProvider *)v3 dispositions]& 8;

  if (v4 == 8)
  {
    v5 = [(BuddyPasscodeController *)v10 miscState];
    [(BuddyMiscState *)v5 setHasPresentedPasscodeFlow:0];
  }

  v6 = [(BuddyPasscodeController *)v10 paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v6 clearActionForFeature:11];
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

- (void)passcodeViewController:(id)a3 didFinishWithPasscodeCreation:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  if (v13)
  {
    v10 = [(BuddyPasscodeController *)v15 paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)v10 recordActionWithValue:&__kCFBooleanTrue forFeature:11];
  }

  else
  {
    v5 = [(BuddyPasscodeBaseViewController *)v15 flowItemDispositionProvider];
    v6 = [(BuddyFlowItemDispositionProvider *)v5 dispositions]& 8;

    if (v6 == 8)
    {
      v7 = [(BuddyPasscodeController *)v15 miscState];
      [(BuddyMiscState *)v7 setHasPresentedPasscodeFlow:1];
    }

    v8 = [(BuddyPasscodeController *)v15 flowSkipController];
    [(BYFlowSkipController *)v8 didSkipFlow:BYFlowSkipIdentifierPasscode];

    v9 = [(BuddyPasscodeController *)v15 paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)v9 recordActionWithValue:&__kCFBooleanFalse forFeature:11];
  }

  v11 = [(BuddyPasscodeController *)v15 buddyPreferences];
  [(BYPreferencesController *)v11 setObject:&__kCFBooleanTrue forKey:@"Passcode4Presented"];

  v12 = [(BuddyPasscodeController *)v15 delegate];
  [(BFFFlowItemDelegate *)v12 flowItemDone:v15 nextItemClass:0];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)passcodeViewController:(id)a3 didSetPasscode:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = [(BuddyPasscodeBaseViewController *)v10 flowItemDispositionProvider];
  v6 = [(BuddyFlowItemDispositionProvider *)v5 dispositions]& 8;

  v7 = [(BuddyPasscodeController *)v10 passcodeCacheManager];
  if (v6 == 8)
  {
    [(BYPasscodeCacheManager *)v7 cachePasscode:v8 retrievable:1];
  }

  else
  {
    [(BYPasscodeCacheManager *)v7 cachePasscode:v8];
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