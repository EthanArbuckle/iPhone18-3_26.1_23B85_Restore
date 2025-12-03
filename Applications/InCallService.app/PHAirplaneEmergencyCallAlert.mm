@interface PHAirplaneEmergencyCallAlert
- (PHAirplaneEmergencyCallAlert)initWithDialAction:(id)action;
- (id)alternateButtonTitle;
- (id)defaultButtonTitle;
- (id)message;
- (id)otherButtonTitle;
- (id)title;
- (void)alternateResponse;
- (void)defaultResponse;
- (void)otherResponse;
@end

@implementation PHAirplaneEmergencyCallAlert

- (PHAirplaneEmergencyCallAlert)initWithDialAction:(id)action
{
  actionCopy = action;
  v8.receiver = self;
  v8.super_class = PHAirplaneEmergencyCallAlert;
  v5 = [(PHAirplaneEmergencyCallAlert *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PHAirplaneEmergencyCallAlert *)v5 setDialAction:actionCopy];
  }

  return v6;
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = TUStringKeyForNetwork();
  v4 = [v2 localizedStringForKey:v3 value:&stru_100361FD0 table:@"EmergencyCallStrings"];

  return v4;
}

- (id)message
{
  v2 = +[NSBundle mainBundle];
  v3 = TUStringKeyForNetwork();
  v4 = [v2 localizedStringForKey:v3 value:&stru_100361FD0 table:@"EmergencyCallStrings"];

  return v4;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EMERGENCY_CALL_AIRPLANE_ALERT_DISABLE" value:&stru_100361FD0 table:@"EmergencyCallStrings"];

  return v3;
}

- (id)otherButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = TUStringKeyForNetwork();
  v4 = [v2 localizedStringForKey:v3 value:&stru_100361FD0 table:@"EmergencyCallStrings"];

  return v4;
}

- (id)defaultButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EMERGENCY_CALL_AIRPLANE_ALERT_CANCEL" value:&stru_100361FD0 table:@"EmergencyCallStrings"];

  return v3;
}

- (void)alternateResponse
{
  v5 = objc_alloc_init(RadiosPreferences);
  [v5 setAirplaneMode:0];
  dialAction = [(PHAirplaneEmergencyCallAlert *)self dialAction];

  if (dialAction)
  {
    dialAction2 = [(PHAirplaneEmergencyCallAlert *)self dialAction];
    dialAction2[2](dialAction2, 0);
  }
}

- (void)defaultResponse
{
  dialAction = [(PHAirplaneEmergencyCallAlert *)self dialAction];

  if (dialAction)
  {
    dialAction2 = [(PHAirplaneEmergencyCallAlert *)self dialAction];
    dialAction2[2](dialAction2, 0);
  }
}

- (void)otherResponse
{
  dialAction = [(PHAirplaneEmergencyCallAlert *)self dialAction];

  if (dialAction)
  {
    dialAction2 = [(PHAirplaneEmergencyCallAlert *)self dialAction];
    dialAction2[2](dialAction2, 1);
  }
}

@end