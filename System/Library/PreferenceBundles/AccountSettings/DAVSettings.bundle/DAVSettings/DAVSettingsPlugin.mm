@interface DAVSettingsPlugin
- (Class)viewControllerClassForCreatingAccountWithType:(id)a3;
- (Class)viewControllerClassForViewingAccount:(id)a3;
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

- (Class)viewControllerClassForCreatingAccountWithType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:ACAccountTypeIdentifierCalDAV])
  {
    v4 = off_8160;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();
    goto LABEL_7;
  }

  if ([v3 isEqualToString:ACAccountTypeIdentifierCardDAV])
  {
    v4 = &off_8170;
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
  v6 = [v5 isEqualToString:ACAccountTypeIdentifierCalDAV];

  if (v6)
  {
    v7 = off_8168;
LABEL_5:
    v11 = *v7;
    v12 = objc_opt_class();
    goto LABEL_7;
  }

  v8 = [v3 accountType];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:ACAccountTypeIdentifierCardDAV];

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