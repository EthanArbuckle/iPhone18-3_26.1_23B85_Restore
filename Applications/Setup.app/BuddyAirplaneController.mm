@interface BuddyAirplaneController
- (BuddyAirplaneController)init;
- (void)_turnOffAirplaneModeTapped;
@end

@implementation BuddyAirplaneController

- (BuddyAirplaneController)init
{
  location = self;
  v13[1] = a2;
  v2 = +[NSBundle mainBundle];
  v13[0] = [(NSBundle *)v2 localizedStringForKey:@"ACTIVATION_REQUIRED" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ACTIVATION_AIRPLANE"];
  v12 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];

  v5 = location;
  location = 0;
  v11.receiver = v5;
  v11.super_class = BuddyAirplaneController;
  location = [(BuddyAirplaneController *)&v11 initWithTitle:v13[0] detailText:v12 icon:0];
  objc_storeStrong(&location, location);
  if (location)
  {
    v6 = location;
    v7 = +[NSBundle mainBundle];
    v8 = [(NSBundle *)v7 localizedStringForKey:@"TURN_OFF_AIRPLANE_MODE" value:&stru_10032F900 table:@"Localizable"];
    [v6 addBoldButton:v8 action:"_turnOffAirplaneModeTapped"];
  }

  v9 = location;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&location, 0);
  return v9;
}

- (void)_turnOffAirplaneModeTapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(RadiosPreferences);
  [location[0] setAirplaneMode:0];
  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

@end