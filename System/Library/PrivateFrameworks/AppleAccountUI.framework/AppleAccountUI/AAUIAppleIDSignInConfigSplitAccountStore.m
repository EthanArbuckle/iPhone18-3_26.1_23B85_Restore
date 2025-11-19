@interface AAUIAppleIDSignInConfigSplitAccountStore
- (AAUIAppleIDSignInConfigSplitAccountStore)initWithNavController:(id)a3;
- (BOOL)_isRunningInSetup;
- (id)_serviceContext;
@end

@implementation AAUIAppleIDSignInConfigSplitAccountStore

- (AAUIAppleIDSignInConfigSplitAccountStore)initWithNavController:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AAUIAppleIDSignInConfigSplitAccountStore;
  v3 = [(AAUIAppleIDSignInConfiguration *)&v12 initWithNavController:a3];
  if (v3)
  {
    v13[0] = *MEMORY[0x1E698C238];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v5 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v5 setServiceTypes:v4];

    v6 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v6 setSplitSignIn:1];

    v7 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v7 setHidesBackOrCancelButton:1];

    v8 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v8 setAllowSkip:1];

    v9 = [(AAUIAppleIDSignInConfigSplitAccountStore *)v3 _serviceContext];
    v10 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v10 setServiceContext:v9];
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
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.purplebuddy"];

  return v4;
}

@end