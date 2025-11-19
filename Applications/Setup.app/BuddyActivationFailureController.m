@interface BuddyActivationFailureController
- (BOOL)controllerNeedsToRun;
- (BuddyActivationFailureController)init;
- (void)_otherOptionsTapped:(id)a3;
- (void)_tryAgainTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyActivationFailureController

- (BuddyActivationFailureController)init
{
  v8 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"ACTIVATION_ERROR_TITLE" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyActivationFailureController;
  location = [(BuddyActivationFailureController *)&v7 initWithTitle:v4 detailText:0 icon:0];
  objc_storeStrong(&location, location);

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)viewDidLoad
{
  v33 = self;
  v32 = a2;
  v31.receiver = self;
  v31.super_class = BuddyActivationFailureController;
  [(BuddyActivationFailureController *)&v31 viewDidLoad];
  location = 0;
  v2 = [(BuddyActivationFailureController *)v33 activationState];
  v3 = [(BuddyActivationState *)v2 error];
  v4 = [(BuddyActivationError *)v3 isConnectionFailure];

  if (v4)
  {
    v5 = [(BuddyActivationFailureController *)v33 activationState];
    v6 = [(BuddyActivationState *)v5 error];
    v7 = [(BuddyActivationError *)v6 isCellular];

    if (v7)
    {
      objc_storeStrong(&location, @"ACTIVATION_ERROR_DETAIL_CONNECTION_FAILURE_CELLULAR_WIFI");
    }

    else
    {
      objc_storeStrong(&location, @"ACTIVATION_ERROR_DETAIL_CONNECTION_FAILURE_WIRELESS");
    }
  }

  else
  {
    v8 = [(BuddyActivationFailureController *)v33 activationState];
    v9 = [(BuddyActivationState *)v8 error];
    v10 = [(BuddyActivationError *)v9 isCellular];

    if (v10)
    {
      objc_storeStrong(&location, @"ACTIVATION_ERROR_DETAIL_OTHER_CELLULAR_WIFI");
    }

    else
    {
      objc_storeStrong(&location, @"ACTIVATION_ERROR_DETAIL_OTHER_WIRELESS");
    }
  }

  v11 = [(BuddyActivationFailureController *)v33 activationState];
  v12 = [(BuddyActivationState *)v11 error];
  v13 = [(BuddyActivationError *)v12 isCellular];

  if (v13)
  {
    v14 = [(BuddyActivationFailureController *)v33 navigationItem];
    [v14 setHidesBackButton:1];
  }

  v15 = [(BuddyActivationFailureController *)v33 headerView];
  v16 = +[NSBundle mainBundle];
  v17 = [UIDevice modelSpecificLocalizedStringKeyForKey:location];
  v18 = SFLocalizableWAPIStringKeyForKey();
  v19 = [(NSBundle *)v16 localizedStringForKey:v18 value:&stru_10032F900 table:@"Localizable"];
  [v15 setDetailText:v19];

  v20 = [(BuddyActivationFailureController *)v33 headerView];
  v21 = [UIImage imageNamed:@"Alert Icon"];
  v22 = +[UIColor redColor];
  v23 = [(UIImage *)v21 _flatImageWithColor:v22];
  [v20 setIcon:v23 accessibilityLabel:0];

  v24 = v33;
  v25 = +[NSBundle mainBundle];
  v26 = [(NSBundle *)v25 localizedStringForKey:@"TRY_AGAIN" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v24 addBoldButton:v26 action:"_tryAgainTapped:"];

  v27 = v33;
  v28 = +[NSBundle mainBundle];
  v29 = [(NSBundle *)v28 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v27 addLinkButton:v29 action:"_otherOptionsTapped:"];

  objc_storeStrong(&location, 0);
}

- (void)_tryAgainTapped:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyActivationFailureController *)v6 restartActivation];

  if (v3)
  {
    v4 = [(BuddyActivationFailureController *)v6 restartActivation];
    v4[2](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)_otherOptionsTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyWelcomeController *)v5 delegate];
  [(BFFFlowItemDelegate *)v3 flowItemDone:v5];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyActivationFailureController *)self activationState:a2];
  v3 = [(BuddyActivationState *)v2 error];
  v4 = v3 != 0;

  return v4;
}

@end