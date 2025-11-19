@interface BuddyProximityExistingAppleIDController
- (BOOL)controllerNeedsToRun;
- (BuddyProximityExistingAppleIDController)init;
- (void)_resetTapped:(id)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyProximityExistingAppleIDController

- (BuddyProximityExistingAppleIDController)init
{
  v10 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"PROXIMITY_EXISTING_APPLEID_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"PROXIMITY_EXISTING_APPLEID_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v9.receiver = self;
  v9.super_class = BuddyProximityExistingAppleIDController;
  location = [(BuddyProximityExistingAppleIDController *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"exclamationmark.triangle" contentLayout:2];
  objc_storeStrong(&location, location);

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)viewDidLoad
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyProximityExistingAppleIDController;
  [(BuddyProximityExistingAppleIDController *)&v7 viewDidLoad];
  v2 = v9;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ERASE_DEVICE"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v2 addBoldButton:v5 action:"_resetTapped:"];

  v6 = [(BuddyProximityExistingAppleIDController *)v9 navigationItem];
  [v6 setHidesBackButton:1];
}

- (void)_resetTapped:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyProximityExistingAppleIDController *)v9 view];
  v4 = [v3 window];
  v5 = [(BuddyProximityExistingAppleIDController *)v9 navigationController];
  v6 = [(BuddyProximityExistingAppleIDController *)v9 proximitySetupController];
  v7 = [(BuddyProximityExistingAppleIDController *)v9 analyticsManager];
  [BuddyEraseAlertController eraseWithWindow:v4 navigationController:v5 proximitySetupController:v6 analyticsManager:v7];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v19 = self;
  v18 = a2;
  v2 = [(BuddyProximityExistingAppleIDController *)self proximitySetupController];
  v3 = [(ProximitySetupController *)v2 information];
  v16 = 0;
  v4 = 1;
  if (v3)
  {
    v17 = [(BuddyProximityExistingAppleIDController *)v19 proximitySetupController];
    v16 = 1;
    v4 = [v17 hasConnection] ^ 1;
  }

  if (v16)
  {
  }

  if (v4)
  {
    v20 = 0;
  }

  else
  {
    v5 = +[ACAccountStore defaultStore];
    v6 = [v5 aa_primaryAppleAccount];
    location = [v6 username];

    v13 = 0;
    v11 = 0;
    v9 = 0;
    v7 = 0;
    if (location)
    {
      v14 = [(BuddyProximityExistingAppleIDController *)v19 proximitySetupController];
      v13 = 1;
      v12 = [(ProximitySetupController *)v14 information];
      v11 = 1;
      v10 = [(SASProximityInformation *)v12 appleID];
      v9 = 1;
      v7 = [v10 isEqualToString:location] ^ 1;
    }

    v20 = v7 & 1;
    if (v9)
    {
    }

    if (v11)
    {
    }

    if (v13)
    {
    }

    objc_storeStrong(&location, 0);
  }

  return v20 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(25, 0);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001E8C10;
  v8 = &unk_10032B0D0;
  v9 = v11;
  dispatch_async(v3, &v4);

  if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end