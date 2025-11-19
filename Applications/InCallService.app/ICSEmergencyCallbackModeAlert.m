@interface ICSEmergencyCallbackModeAlert
- (ICSEmergencyCallbackModeAlert)initWithDialRequest:(id)a3 completion:(id)a4;
- (id)alternateButtonTitle;
- (id)defaultButtonTitle;
- (id)message;
- (id)title;
- (void)alternateResponse;
- (void)defaultResponse;
@end

@implementation ICSEmergencyCallbackModeAlert

- (ICSEmergencyCallbackModeAlert)initWithDialRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = ICSEmergencyCallbackModeAlert;
  v8 = [(ICSEmergencyCallbackModeAlert *)&v30 init];
  if (v8)
  {
    v9 = [v6 localSenderIdentityAccountUUID];
    v10 = [v6 provider];
    v11 = [v10 prioritizedSenderIdentities];

    v12 = [v11 firstObject];
    v13 = [v12 accountUUID];
    v14 = [v13 isEqual:v9];

    if (v14)
    {
      v15 = [v11 firstObject];
      v16 = [v15 localizedName];
      v17 = [v16 copy];
      dialRequestAccountDescription = v8->_dialRequestAccountDescription;
      v8->_dialRequestAccountDescription = v17;

      [v11 lastObject];
    }

    else
    {
      v19 = [v11 lastObject];
      v20 = [v19 localizedName];
      v21 = [v20 copy];
      v22 = v8->_dialRequestAccountDescription;
      v8->_dialRequestAccountDescription = v21;

      [v11 firstObject];
    }
    v23 = ;
    v24 = [v23 localizedName];
    v25 = [v24 copy];
    emergencyAccountDescription = v8->_emergencyAccountDescription;
    v8->_emergencyAccountDescription = v25;

    v27 = objc_retainBlock(v7);
    alertCompletion = v8->_alertCompletion;
    v8->_alertCompletion = v27;
  }

  return v8;
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EMERGENCY_CALLBACK_MODE_ALERT_CONTROLLER_TITLE" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

- (id)message
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"EMERGENCY_CALLBACK_MODE_ALERT_CONTROLLER_MESSAGE_%@_%@" value:&stru_100361FD0 table:@"InCallService"];
  v5 = [(ICSEmergencyCallbackModeAlert *)self dialRequestAccountDescription];
  v6 = [(ICSEmergencyCallbackModeAlert *)self emergencyAccountDescription];
  v7 = [NSString stringWithFormat:v4, v5, v6];

  return v7;
}

- (id)defaultButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EMERGENCY_CALLBACK_MODE_ALERT_ACTION_TITLE_CALL" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"EMERGENCY_CALLBACK_MODE_ALERT_ACTION_TITLE_CANCEL" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

- (void)defaultResponse
{
  v2 = [(ICSEmergencyCallbackModeAlert *)self alertCompletion];
  v2[2](v2, 0);
}

- (void)alternateResponse
{
  v2 = [(ICSEmergencyCallbackModeAlert *)self alertCompletion];
  v2[2](v2, 1);
}

@end