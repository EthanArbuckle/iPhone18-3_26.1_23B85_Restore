@interface PHMisconfiguredAccountAlert
- (PHMisconfiguredAccountAlert)initWithDialAction:(id)action;
- (id)defaultButtonTitle;
- (id)message;
- (id)otherButtonTitle;
- (id)title;
- (void)otherResponse;
@end

@implementation PHMisconfiguredAccountAlert

- (PHMisconfiguredAccountAlert)initWithDialAction:(id)action
{
  actionCopy = action;
  v8.receiver = self;
  v8.super_class = PHMisconfiguredAccountAlert;
  v5 = [(PHMisconfiguredAccountAlert *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PHMisconfiguredAccountAlert *)v5 setDialAction:actionCopy];
  }

  return v6;
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"MISCONFIGURED_ACCOUNT_TITLE" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

- (id)message
{
  v2 = +[IMAccountController sharedInstance];
  v3 = +[IMService facetimeService];
  v4 = [v2 accountsForService:v3];
  firstObject = [v4 firstObject];

  v6 = objc_alloc_init(TUFeatureFlags);
  LODWORD(v3) = [v6 appleAccountRebrandEnabled];
  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (v3)
  {
    v9 = @"MISCONFIGURED_ACCOUNT_%@_MESSAGE_APPLEACCOUNT";
  }

  else
  {
    v9 = @"MISCONFIGURED_ACCOUNT_%@_MESSAGE";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_100361FD0 table:@"InCallService"];

  name = [firstObject name];
  v12 = IMStripLoginID();
  v13 = TUHomeCountryCode();
  v14 = TUFormattedPhoneNumber();
  v15 = [NSString stringWithFormat:v10, v14];

  return v15;
}

- (id)otherButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"MISCONFIGURED_ACCOUNT_ADD_EMAIL_ADDRESS" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

- (id)defaultButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"MISCONFIGURED_ACCOUNT_CANCEL" value:&stru_100361FD0 table:@"InCallService"];

  return v3;
}

- (void)otherResponse
{
  v3 = +[UIApplication sharedApplication];
  v2 = [NSURL URLWithString:@"https://appleid.apple.com"];
  [v3 openURL:v2 withCompletionHandler:0];
}

@end