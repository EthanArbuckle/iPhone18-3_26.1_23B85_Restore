@interface AAUIAppleIDSignInConfigForSkippingBackup
- (AAUIAppleIDSignInConfigForSkippingBackup)initWithNavController:(id)controller;
- (id)_serviceContextWithNavController:(id)controller;
- (void)setUsername:(id)username;
@end

@implementation AAUIAppleIDSignInConfigForSkippingBackup

- (AAUIAppleIDSignInConfigForSkippingBackup)initWithNavController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = AAUIAppleIDSignInConfigForSkippingBackup;
  v5 = [(AAUIAppleIDSignInConfiguration *)&v12 initWithNavController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    signInConfiguration = [(AAUIAppleIDSignInConfiguration *)v5 signInConfiguration];
    [signInConfiguration setAllowSkip:1];

    signInConfiguration2 = [(AAUIAppleIDSignInConfiguration *)v6 signInConfiguration];
    [signInConfiguration2 setNewSignInReauth:1];

    v9 = [(AAUIAppleIDSignInConfigForSkippingBackup *)v6 _serviceContextWithNavController:controllerCopy];
    signInConfiguration3 = [(AAUIAppleIDSignInConfiguration *)v6 signInConfiguration];
    [signInConfiguration3 setServiceContext:v9];
  }

  return v6;
}

- (id)_serviceContextWithNavController:(id)controller
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698C258];
  controllerCopy = controller;
  v5 = objc_alloc_init(v3);
  v6 = [[AAUISignInFlowControllerDelegate alloc] initWithPresentingViewController:controllerCopy];

  [(AAUISignInFlowControllerDelegate *)v6 setNewSignInReauth:1];
  v9 = *MEMORY[0x1E698C218];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setSignInContexts:v7];

  return v5;
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  signInConfiguration = [(AAUIAppleIDSignInConfiguration *)self signInConfiguration];
  [signInConfiguration setUsername:usernameCopy];

  signInConfiguration2 = [(AAUIAppleIDSignInConfiguration *)self signInConfiguration];
  [signInConfiguration2 setCanEditUsername:0];
}

@end