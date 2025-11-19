@interface AAUIAppleIDSignInConfigForSplitAccounts
- (AAUIAppleIDSignInConfigForSplitAccounts)initWithNavController:(id)a3;
@end

@implementation AAUIAppleIDSignInConfigForSplitAccounts

- (AAUIAppleIDSignInConfigForSplitAccounts)initWithNavController:(id)a3
{
  v8.receiver = self;
  v8.super_class = AAUIAppleIDSignInConfigForSplitAccounts;
  v3 = [(AAUIAppleIDSignInConfiguration *)&v8 initWithNavController:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v5 setAllowSkip:1];

    v6 = [(AAUIAppleIDSignInConfiguration *)v4 signInConfiguration];
    [v6 setOfferiCloudAMSSplitSignIn:1];
  }

  return v4;
}

@end