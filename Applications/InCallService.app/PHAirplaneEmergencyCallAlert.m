@interface PHAirplaneEmergencyCallAlert
- (PHAirplaneEmergencyCallAlert)initWithDialAction:(id)a3;
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

- (PHAirplaneEmergencyCallAlert)initWithDialAction:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHAirplaneEmergencyCallAlert;
  v5 = [(PHAirplaneEmergencyCallAlert *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PHAirplaneEmergencyCallAlert *)v5 setDialAction:v4];
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
  v3 = [(PHAirplaneEmergencyCallAlert *)self dialAction];

  if (v3)
  {
    v4 = [(PHAirplaneEmergencyCallAlert *)self dialAction];
    v4[2](v4, 0);
  }
}

- (void)defaultResponse
{
  v3 = [(PHAirplaneEmergencyCallAlert *)self dialAction];

  if (v3)
  {
    v4 = [(PHAirplaneEmergencyCallAlert *)self dialAction];
    v4[2](v4, 0);
  }
}

- (void)otherResponse
{
  v3 = [(PHAirplaneEmergencyCallAlert *)self dialAction];

  if (v3)
  {
    v4 = [(PHAirplaneEmergencyCallAlert *)self dialAction];
    v4[2](v4, 1);
  }
}

@end