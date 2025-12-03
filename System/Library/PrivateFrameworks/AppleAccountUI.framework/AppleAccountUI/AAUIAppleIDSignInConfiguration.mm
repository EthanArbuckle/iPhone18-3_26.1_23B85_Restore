@interface AAUIAppleIDSignInConfiguration
- (AAUIAppleIDSignInConfiguration)initWithNavController:(id)controller;
@end

@implementation AAUIAppleIDSignInConfiguration

- (AAUIAppleIDSignInConfiguration)initWithNavController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AAUIAppleIDSignInConfiguration;
  v5 = [(AAUIAppleIDSignInConfiguration *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(AAUIServiceSignInConfiguration);
    signInConfiguration = v5->_signInConfiguration;
    v5->_signInConfiguration = v6;

    [(AAUIServiceSignInConfiguration *)v5->_signInConfiguration setNavigationController:controllerCopy];
  }

  return v5;
}

@end