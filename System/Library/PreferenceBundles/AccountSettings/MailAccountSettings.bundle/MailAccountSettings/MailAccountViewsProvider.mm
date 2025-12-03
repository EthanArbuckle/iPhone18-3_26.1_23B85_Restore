@interface MailAccountViewsProvider
+ (void)initialize;
- (Class)controllerClassForCreatingAccountWithType:(id)type;
- (Class)controllerClassForCreatingRemoteAccountWithType:(id)type;
- (Class)viewControllerClassForCreatingAccountWithType:(id)type;
- (Class)viewControllerClassForViewingAccount:(id)account;
- (id)configurationInfoForCreatingAccountWithType:(id)type;
- (id)supportedAccountTypeIdentifiers;
@end

@implementation MailAccountViewsProvider

+ (void)initialize
{
  v2 = preferencesBundle();
  [v2 load];
}

- (id)supportedAccountTypeIdentifiers
{
  v4[0] = ACAccountTypeIdentifierYahoo;
  v4[1] = ACAccountTypeIdentifierGmail;
  v4[2] = ACAccountTypeIdentifierAol;
  v4[3] = ACAccountTypeIdentifierIMAP;
  v4[4] = ACAccountTypeIdentifierPOP;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (Class)viewControllerClassForCreatingAccountWithType:(id)type
{
  v3 = objc_opt_class();

  return v3;
}

- (Class)viewControllerClassForViewingAccount:(id)account
{
  accountType = [account accountType];
  supportedDataclasses = [accountType supportedDataclasses];
  v5 = [supportedDataclasses count];

  if (v5 >= 2)
  {
    identifier = [accountType identifier];
    v7 = [identifier isEqualToString:ACAccountTypeIdentifierGmail];

    if ((v7 & 1) == 0)
    {
      identifier2 = [accountType identifier];
      v12 = [identifier2 isEqualToString:ACAccountTypeIdentifierYahoo];

      if ((v12 & 1) == 0)
      {
        identifier3 = [accountType identifier];
        [identifier3 isEqualToString:ACAccountTypeIdentifierAol];
      }
    }
  }

  v8 = objc_opt_class();
  v9 = v8;

  return v8;
}

- (Class)controllerClassForCreatingAccountWithType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:ACAccountTypeIdentifierGmail] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierYahoo) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierAol))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (Class)controllerClassForCreatingRemoteAccountWithType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:ACAccountTypeIdentifierGmail] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierYahoo) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierAol) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierHotmail))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)configurationInfoForCreatingAccountWithType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:ACAccountTypeIdentifierYahoo] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierGmail) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierAol) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierIMAP) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", ACAccountTypeIdentifierPOP))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  userInfoForAccountTopLevelSpecifier = [v4 userInfoForAccountTopLevelSpecifier];

  return userInfoForAccountTopLevelSpecifier;
}

@end