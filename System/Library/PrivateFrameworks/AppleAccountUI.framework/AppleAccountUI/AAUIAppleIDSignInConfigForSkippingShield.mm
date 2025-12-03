@interface AAUIAppleIDSignInConfigForSkippingShield
- (AAUIAppleIDSignInConfigForSkippingShield)initWithNavController:(id)controller;
@end

@implementation AAUIAppleIDSignInConfigForSkippingShield

- (AAUIAppleIDSignInConfigForSkippingShield)initWithNavController:(id)controller
{
  v9.receiver = self;
  v9.super_class = AAUIAppleIDSignInConfigForSkippingShield;
  v3 = [(AAUIAppleIDSignInConfiguration *)&v9 initWithNavController:controller];
  v4 = v3;
  if (v3)
  {
    signInConfiguration = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration setSkipShieldUI:1];

    signInConfiguration2 = [(AAUIAppleIDSignInConfiguration *)v4 signInConfiguration];
    [signInConfiguration2 setShouldDisableAccountCreation:1];

    signInConfiguration3 = [(AAUIAppleIDSignInConfiguration *)v4 signInConfiguration];
    [signInConfiguration3 setShouldShowSystemBackButton:1];
  }

  return v4;
}

@end