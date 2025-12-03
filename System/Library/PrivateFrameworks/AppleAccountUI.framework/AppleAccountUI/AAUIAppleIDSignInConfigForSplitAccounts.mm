@interface AAUIAppleIDSignInConfigForSplitAccounts
- (AAUIAppleIDSignInConfigForSplitAccounts)initWithNavController:(id)controller;
@end

@implementation AAUIAppleIDSignInConfigForSplitAccounts

- (AAUIAppleIDSignInConfigForSplitAccounts)initWithNavController:(id)controller
{
  v8.receiver = self;
  v8.super_class = AAUIAppleIDSignInConfigForSplitAccounts;
  v3 = [(AAUIAppleIDSignInConfiguration *)&v8 initWithNavController:controller];
  v4 = v3;
  if (v3)
  {
    signInConfiguration = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration setAllowSkip:1];

    signInConfiguration2 = [(AAUIAppleIDSignInConfiguration *)v4 signInConfiguration];
    [signInConfiguration2 setOfferiCloudAMSSplitSignIn:1];
  }

  return v4;
}

@end