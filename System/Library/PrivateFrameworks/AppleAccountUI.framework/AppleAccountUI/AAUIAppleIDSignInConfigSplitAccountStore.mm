@interface AAUIAppleIDSignInConfigSplitAccountStore
- (AAUIAppleIDSignInConfigSplitAccountStore)initWithNavController:(id)controller;
- (BOOL)_isRunningInSetup;
- (id)_serviceContext;
@end

@implementation AAUIAppleIDSignInConfigSplitAccountStore

- (AAUIAppleIDSignInConfigSplitAccountStore)initWithNavController:(id)controller
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AAUIAppleIDSignInConfigSplitAccountStore;
  v3 = [(AAUIAppleIDSignInConfiguration *)&v12 initWithNavController:controller];
  if (v3)
  {
    v13[0] = *MEMORY[0x1E698C238];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    signInConfiguration = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration setServiceTypes:v4];

    signInConfiguration2 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration2 setSplitSignIn:1];

    signInConfiguration3 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration3 setHidesBackOrCancelButton:1];

    signInConfiguration4 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration4 setAllowSkip:1];

    _serviceContext = [(AAUIAppleIDSignInConfigSplitAccountStore *)v3 _serviceContext];
    signInConfiguration5 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration5 setServiceContext:_serviceContext];
  }

  return v3;
}

- (id)_serviceContext
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E698C258]);
  v4 = objc_opt_new();
  [v4 setIgnoreAccountConversion:1];
  v7 = *MEMORY[0x1E698C238];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 setSignInContexts:v5];

  if ([(AAUIAppleIDSignInConfigSplitAccountStore *)self _isRunningInSetup])
  {
    [v4 setDebugReason:@"Setup Assistant"];
  }

  return v3;
}

- (BOOL)_isRunningInSetup
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

  return v4;
}

@end