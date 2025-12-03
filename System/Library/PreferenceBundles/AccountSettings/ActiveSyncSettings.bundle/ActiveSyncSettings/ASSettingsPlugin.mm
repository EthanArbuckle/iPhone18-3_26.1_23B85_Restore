@interface ASSettingsPlugin
- (Class)controllerClassForCreatingAccountWithType:(id)type;
- (Class)viewControllerClassForCreatingAccountWithType:(id)type;
- (Class)viewControllerClassForViewingAccount:(id)account;
- (id)supportedAccountTypeIdentifiers;
@end

@implementation ASSettingsPlugin

- (id)supportedAccountTypeIdentifiers
{
  v4[0] = ACAccountTypeIdentifierExchange;
  v4[1] = ACAccountTypeIdentifierHotmail;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (Class)viewControllerClassForCreatingAccountWithType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:ACAccountTypeIdentifierExchange])
  {
    v4 = off_302F0;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:ACAccountTypeIdentifierHotmail])
  {
    v4 = off_30300;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (Class)viewControllerClassForViewingAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v6 = [identifier isEqualToString:ACAccountTypeIdentifierExchange];

  if (v6)
  {
    v7 = off_302F8;
LABEL_5:
    v11 = *v7;
    v12 = objc_opt_class();
    goto LABEL_7;
  }

  accountType2 = [accountCopy accountType];
  identifier2 = [accountType2 identifier];
  v10 = [identifier2 isEqualToString:ACAccountTypeIdentifierHotmail];

  if (v10)
  {
    v7 = &off_30308;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (Class)controllerClassForCreatingAccountWithType:(id)type
{
  if ([type isEqualToString:ACAccountTypeIdentifierHotmail])
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end