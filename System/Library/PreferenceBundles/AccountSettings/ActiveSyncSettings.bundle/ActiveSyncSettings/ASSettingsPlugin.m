@interface ASSettingsPlugin
- (Class)controllerClassForCreatingAccountWithType:(id)a3;
- (Class)viewControllerClassForCreatingAccountWithType:(id)a3;
- (Class)viewControllerClassForViewingAccount:(id)a3;
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

- (Class)viewControllerClassForCreatingAccountWithType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:ACAccountTypeIdentifierExchange])
  {
    v4 = off_302F0;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_7;
  }

  if ([v3 isEqualToString:ACAccountTypeIdentifierHotmail])
  {
    v4 = off_30300;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (Class)viewControllerClassForViewingAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountType];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:ACAccountTypeIdentifierExchange];

  if (v6)
  {
    v7 = off_302F8;
LABEL_5:
    v11 = *v7;
    v12 = objc_opt_class();
    goto LABEL_7;
  }

  v8 = [v3 accountType];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:ACAccountTypeIdentifierHotmail];

  if (v10)
  {
    v7 = &off_30308;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (Class)controllerClassForCreatingAccountWithType:(id)a3
{
  if ([a3 isEqualToString:ACAccountTypeIdentifierHotmail])
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