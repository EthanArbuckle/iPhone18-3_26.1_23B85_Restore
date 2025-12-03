@interface AAUIAppleIDSignInConfigSplitAccountiCloud
- (AAUIAppleIDSignInConfigSplitAccountiCloud)initWithNavController:(id)controller;
@end

@implementation AAUIAppleIDSignInConfigSplitAccountiCloud

- (AAUIAppleIDSignInConfigSplitAccountiCloud)initWithNavController:(id)controller
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AAUIAppleIDSignInConfigSplitAccountiCloud;
  v3 = [(AAUIAppleIDSignInConfiguration *)&v11 initWithNavController:controller];
  if (v3)
  {
    v4 = *MEMORY[0x1E698C230];
    v12[0] = *MEMORY[0x1E698C218];
    v12[1] = v4;
    v5 = *MEMORY[0x1E698C228];
    v12[2] = *MEMORY[0x1E698C220];
    v12[3] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
    signInConfiguration = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration setServiceTypes:v6];

    signInConfiguration2 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration2 setSplitSignIn:1];

    signInConfiguration3 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [signInConfiguration3 setShouldShowSystemBackButton:1];
  }

  return v3;
}

@end