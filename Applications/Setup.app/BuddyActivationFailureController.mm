@interface BuddyActivationFailureController
- (BOOL)controllerNeedsToRun;
- (BuddyActivationFailureController)init;
- (void)_otherOptionsTapped:(id)tapped;
- (void)_tryAgainTapped:(id)tapped;
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
  selfCopy = self;
  v32 = a2;
  v31.receiver = self;
  v31.super_class = BuddyActivationFailureController;
  [(BuddyActivationFailureController *)&v31 viewDidLoad];
  location = 0;
  activationState = [(BuddyActivationFailureController *)selfCopy activationState];
  error = [(BuddyActivationState *)activationState error];
  isConnectionFailure = [(BuddyActivationError *)error isConnectionFailure];

  if (isConnectionFailure)
  {
    activationState2 = [(BuddyActivationFailureController *)selfCopy activationState];
    error2 = [(BuddyActivationState *)activationState2 error];
    isCellular = [(BuddyActivationError *)error2 isCellular];

    if (isCellular)
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
    activationState3 = [(BuddyActivationFailureController *)selfCopy activationState];
    error3 = [(BuddyActivationState *)activationState3 error];
    isCellular2 = [(BuddyActivationError *)error3 isCellular];

    if (isCellular2)
    {
      objc_storeStrong(&location, @"ACTIVATION_ERROR_DETAIL_OTHER_CELLULAR_WIFI");
    }

    else
    {
      objc_storeStrong(&location, @"ACTIVATION_ERROR_DETAIL_OTHER_WIRELESS");
    }
  }

  activationState4 = [(BuddyActivationFailureController *)selfCopy activationState];
  error4 = [(BuddyActivationState *)activationState4 error];
  isCellular3 = [(BuddyActivationError *)error4 isCellular];

  if (isCellular3)
  {
    navigationItem = [(BuddyActivationFailureController *)selfCopy navigationItem];
    [navigationItem setHidesBackButton:1];
  }

  headerView = [(BuddyActivationFailureController *)selfCopy headerView];
  v16 = +[NSBundle mainBundle];
  v17 = [UIDevice modelSpecificLocalizedStringKeyForKey:location];
  v18 = SFLocalizableWAPIStringKeyForKey();
  v19 = [(NSBundle *)v16 localizedStringForKey:v18 value:&stru_10032F900 table:@"Localizable"];
  [headerView setDetailText:v19];

  headerView2 = [(BuddyActivationFailureController *)selfCopy headerView];
  v21 = [UIImage imageNamed:@"Alert Icon"];
  v22 = +[UIColor redColor];
  v23 = [(UIImage *)v21 _flatImageWithColor:v22];
  [headerView2 setIcon:v23 accessibilityLabel:0];

  v24 = selfCopy;
  v25 = +[NSBundle mainBundle];
  v26 = [(NSBundle *)v25 localizedStringForKey:@"TRY_AGAIN" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v24 addBoldButton:v26 action:"_tryAgainTapped:"];

  v27 = selfCopy;
  v28 = +[NSBundle mainBundle];
  v29 = [(NSBundle *)v28 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v27 addLinkButton:v29 action:"_otherOptionsTapped:"];

  objc_storeStrong(&location, 0);
}

- (void)_tryAgainTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  restartActivation = [(BuddyActivationFailureController *)selfCopy restartActivation];

  if (restartActivation)
  {
    restartActivation2 = [(BuddyActivationFailureController *)selfCopy restartActivation];
    restartActivation2[2](restartActivation2);
  }

  objc_storeStrong(location, 0);
}

- (void)_otherOptionsTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyActivationFailureController *)self activationState:a2];
  error = [(BuddyActivationState *)v2 error];
  v4 = error != 0;

  return v4;
}

@end