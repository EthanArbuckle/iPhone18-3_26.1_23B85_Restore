@interface AAUIAppleIDSignInConfiguration
- (AAUIAppleIDSignInConfiguration)initWithNavController:(id)a3;
@end

@implementation AAUIAppleIDSignInConfiguration

- (AAUIAppleIDSignInConfiguration)initWithNavController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AAUIAppleIDSignInConfiguration;
  v5 = [(AAUIAppleIDSignInConfiguration *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(AAUIServiceSignInConfiguration);
    signInConfiguration = v5->_signInConfiguration;
    v5->_signInConfiguration = v6;

    [(AAUIServiceSignInConfiguration *)v5->_signInConfiguration setNavigationController:v4];
  }

  return v5;
}

@end