@interface AAUIAppleIDSignInConfigForSkippingShield
- (AAUIAppleIDSignInConfigForSkippingShield)initWithNavController:(id)a3;
@end

@implementation AAUIAppleIDSignInConfigForSkippingShield

- (AAUIAppleIDSignInConfigForSkippingShield)initWithNavController:(id)a3
{
  v9.receiver = self;
  v9.super_class = AAUIAppleIDSignInConfigForSkippingShield;
  v3 = [(AAUIAppleIDSignInConfiguration *)&v9 initWithNavController:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v5 setSkipShieldUI:1];

    v6 = [(AAUIAppleIDSignInConfiguration *)v4 signInConfiguration];
    [v6 setShouldDisableAccountCreation:1];

    v7 = [(AAUIAppleIDSignInConfiguration *)v4 signInConfiguration];
    [v7 setShouldShowSystemBackButton:1];
  }

  return v4;
}

@end