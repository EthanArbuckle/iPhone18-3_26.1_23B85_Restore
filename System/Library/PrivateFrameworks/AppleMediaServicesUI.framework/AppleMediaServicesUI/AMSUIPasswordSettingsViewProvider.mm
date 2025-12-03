@interface AMSUIPasswordSettingsViewProvider
+ (id)makeViewWithAccount:(id)account;
@end

@implementation AMSUIPasswordSettingsViewProvider

+ (id)makeViewWithAccount:(id)account
{
  accountCopy = account;
  v4 = static PasswordSettingsViewProvider.makeViewWith(account:)(accountCopy);

  return v4;
}

@end