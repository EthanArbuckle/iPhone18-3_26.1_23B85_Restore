@interface DAVSettingsPlugin
- (Class)viewControllerClassForCreatingAccountWithType:(id)type;
- (Class)viewControllerClassForViewingAccount:(id)account;
- (id)supportedAccountTypeIdentifiers;
@end

@implementation DAVSettingsPlugin

- (id)supportedAccountTypeIdentifiers
{
  v4[0] = ACAccountTypeIdentifierCalDAV;
  v4[1] = ACAccountTypeIdentifierCardDAV;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (Class)viewControllerClassForCreatingAccountWithType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:ACAccountTypeIdentifierCalDAV])
  {
    v4 = off_8160;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:ACAccountTypeIdentifierCardDAV])
  {
    v4 = &off_8170;
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
  v6 = [identifier isEqualToString:ACAccountTypeIdentifierCalDAV];

  if (v6)
  {
    v7 = off_8168;
LABEL_5:
    v11 = *v7;
    v12 = objc_opt_class();
    goto LABEL_7;
  }

  accountType2 = [accountCopy accountType];
  identifier2 = [accountType2 identifier];
  v10 = [identifier2 isEqualToString:ACAccountTypeIdentifierCardDAV];

  if (v10)
  {
    v7 = &off_8170;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

@end