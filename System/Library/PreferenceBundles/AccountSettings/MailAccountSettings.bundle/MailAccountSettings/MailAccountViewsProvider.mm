@interface MailAccountViewsProvider
+ (void)initialize;
- (Class)controllerClassForCreatingAccountWithType:(id)a3;
- (Class)controllerClassForCreatingRemoteAccountWithType:(id)a3;
- (Class)viewControllerClassForCreatingAccountWithType:(id)a3;
- (Class)viewControllerClassForViewingAccount:(id)a3;
- (id)configurationInfoForCreatingAccountWithType:(id)a3;
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

- (Class)viewControllerClassForCreatingAccountWithType:(id)a3
{
  v3 = objc_opt_class();

  return v3;
}

- (Class)viewControllerClassForViewingAccount:(id)a3
{
  v3 = [a3 accountType];
  v4 = [v3 supportedDataclasses];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = [v3 identifier];
    v7 = [v6 isEqualToString:ACAccountTypeIdentifierGmail];

    if ((v7 & 1) == 0)
    {
      v11 = [v3 identifier];
      v12 = [v11 isEqualToString:ACAccountTypeIdentifierYahoo];

      if ((v12 & 1) == 0)
      {
        v13 = [v3 identifier];
        [v13 isEqualToString:ACAccountTypeIdentifierAol];
      }
    }
  }

  v8 = objc_opt_class();
  v9 = v8;

  return v8;
}

- (Class)controllerClassForCreatingAccountWithType:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:ACAccountTypeIdentifierGmail] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ACAccountTypeIdentifierYahoo) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", ACAccountTypeIdentifierAol))
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

- (Class)controllerClassForCreatingRemoteAccountWithType:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:ACAccountTypeIdentifierGmail] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ACAccountTypeIdentifierYahoo) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ACAccountTypeIdentifierAol) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", ACAccountTypeIdentifierHotmail))
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

- (id)configurationInfoForCreatingAccountWithType:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:ACAccountTypeIdentifierYahoo] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ACAccountTypeIdentifierGmail) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ACAccountTypeIdentifierAol) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", ACAccountTypeIdentifierIMAP) & 1) != 0 || objc_msgSend(v3, "isEqualToString:", ACAccountTypeIdentifierPOP))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 userInfoForAccountTopLevelSpecifier];

  return v5;
}

@end