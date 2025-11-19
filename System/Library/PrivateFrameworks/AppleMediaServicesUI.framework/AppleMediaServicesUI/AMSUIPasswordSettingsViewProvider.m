@interface AMSUIPasswordSettingsViewProvider
+ (id)makeViewWithAccount:(id)a3;
@end

@implementation AMSUIPasswordSettingsViewProvider

+ (id)makeViewWithAccount:(id)a3
{
  v3 = a3;
  v4 = static PasswordSettingsViewProvider.makeViewWith(account:)(v3);

  return v4;
}

@end