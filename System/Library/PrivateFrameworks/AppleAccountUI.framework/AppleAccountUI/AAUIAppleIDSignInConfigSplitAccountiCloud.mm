@interface AAUIAppleIDSignInConfigSplitAccountiCloud
- (AAUIAppleIDSignInConfigSplitAccountiCloud)initWithNavController:(id)a3;
@end

@implementation AAUIAppleIDSignInConfigSplitAccountiCloud

- (AAUIAppleIDSignInConfigSplitAccountiCloud)initWithNavController:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = AAUIAppleIDSignInConfigSplitAccountiCloud;
  v3 = [(AAUIAppleIDSignInConfiguration *)&v11 initWithNavController:a3];
  if (v3)
  {
    v4 = *MEMORY[0x1E698C230];
    v12[0] = *MEMORY[0x1E698C218];
    v12[1] = v4;
    v5 = *MEMORY[0x1E698C228];
    v12[2] = *MEMORY[0x1E698C220];
    v12[3] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
    v7 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v7 setServiceTypes:v6];

    v8 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v8 setSplitSignIn:1];

    v9 = [(AAUIAppleIDSignInConfiguration *)v3 signInConfiguration];
    [v9 setShouldShowSystemBackButton:1];
  }

  return v3;
}

@end