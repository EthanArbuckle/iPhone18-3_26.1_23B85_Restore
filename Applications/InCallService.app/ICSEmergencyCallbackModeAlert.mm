@interface ICSEmergencyCallbackModeAlert
- (ICSEmergencyCallbackModeAlert)initWithDialRequest:(id)request completion:(id)completion;
- (id)alternateButtonTitle;
- (id)defaultButtonTitle;
- (id)message;
- (id)title;
- (void)alternateResponse;
- (void)defaultResponse;
@end

@implementation ICSEmergencyCallbackModeAlert

- (ICSEmergencyCallbackModeAlert)initWithDialRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v30.receiver = self;
  v30.super_class = ICSEmergencyCallbackModeAlert;
  v8 = [(ICSEmergencyCallbackModeAlert *)&v30 init];
  if (v8)
  {
    localSenderIdentityAccountUUID = [requestCopy localSenderIdentityAccountUUID];
    provider = [requestCopy provider];
    prioritizedSenderIdentities = [provider prioritizedSenderIdentities];

    firstObject = [prioritizedSenderIdentities firstObject];
    accountUUID = [firstObject accountUUID];
    v14 = [accountUUID isEqual:localSenderIdentityAccountUUID];

    if (v14)
    {
      firstObject2 = [prioritizedSenderIdentities firstObject];
      localizedName = [firstObject2 localizedName];
      v17 = [localizedName copy];
      dialRequestAccountDescription = v8->_dialRequestAccountDescription;
      v8->_dialRequestAccountDescription = v17;

      [prioritizedSenderIdentities lastObject];
    }

    else
    {
      lastObject = [prioritizedSenderIdentities lastObject];
      localizedName2 = [lastObject localizedName];
      v21 = [localizedName2 copy];
      v22 = v8->_dialRequestAccountDescription;
      v8->_dialRequestAccountDescription = v21;

      [prioritizedSenderIdentities firstObject];
    }
    v23 = ;
    localizedName3 = [v23 localizedName];
    v25 = [localizedName3 copy];
    emergencyAccountDescription = v8->_emergencyAccountDescription;
    v8->_emergencyAccountDescription = v25;

    v27 = objc_retainBlock(completionCopy);
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
  dialRequestAccountDescription = [(ICSEmergencyCallbackModeAlert *)self dialRequestAccountDescription];
  emergencyAccountDescription = [(ICSEmergencyCallbackModeAlert *)self emergencyAccountDescription];
  v7 = [NSString stringWithFormat:v4, dialRequestAccountDescription, emergencyAccountDescription];

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
  alertCompletion = [(ICSEmergencyCallbackModeAlert *)self alertCompletion];
  alertCompletion[2](alertCompletion, 0);
}

- (void)alternateResponse
{
  alertCompletion = [(ICSEmergencyCallbackModeAlert *)self alertCompletion];
  alertCompletion[2](alertCompletion, 1);
}

@end