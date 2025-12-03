@interface AATrustedContactsCustodianSplashScreenModel
- (NSString)primaryButton;
- (NSString)secondaryButton;
- (NSString)title;
- (id)_firstBulletPointDescription;
- (id)_firstBulletPointTitle;
- (id)_secondBulletPointDescription;
- (id)_secondBulletPointTitle;
- (id)_thirdBulletPointDescription;
- (id)_thirdBulletPointTitle;
- (id)bullets;
@end

@implementation AATrustedContactsCustodianSplashScreenModel

- (id)bullets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AATrustedContactsCustodianSplashScreenModel_bullets__block_invoke;
  block[3] = &unk_1E7C9A868;
  block[4] = self;
  if (bullets_onceToken != -1)
  {
    dispatch_once(&bullets_onceToken, block);
  }

  return bullets_bullets;
}

void __54__AATrustedContactsCustodianSplashScreenModel_bullets__block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = [AAOBBulletPointModel alloc];
  v19 = [*(a1 + 32) _firstBulletPointSymbolName];
  v18 = [*(a1 + 32) _firstBulletPointTitle];
  v3 = [*(a1 + 32) _firstBulletPointDescription];
  v4 = [(AAOBBulletPointModel *)v2 initWithSymbolNamed:v19 title:v18 description:v3];
  v20[0] = v4;
  v5 = [AAOBBulletPointModel alloc];
  v6 = [*(a1 + 32) _secondBulletPointSymbolName];
  v7 = [*(a1 + 32) _secondBulletPointTitle];
  v8 = [*(a1 + 32) _secondBulletPointDescription];
  v9 = [(AAOBBulletPointModel *)v5 initWithSymbolNamed:v6 title:v7 description:v8];
  v20[1] = v9;
  v10 = [AAOBBulletPointModel alloc];
  v11 = [*(a1 + 32) _thirdBulletPointSymbolName];
  v12 = [*(a1 + 32) _thirdBulletPointTitle];
  v13 = [*(a1 + 32) _thirdBulletPointDescription];
  v14 = [(AAOBBulletPointModel *)v10 initWithSymbolNamed:v11 title:v12 description:v13];
  v20[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v16 = bullets_bullets;
  bullets_bullets = v15;

  v17 = *MEMORY[0x1E69E9840];
}

- (NSString)secondaryButton
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_SPLASH_SCREEN_CANCEL_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)primaryButton
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_SPLASH_SCREEN_CONTINUE_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_SPLASH_SCREEN_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_firstBulletPointDescription
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80]2 primaryAuthKitAccount];
  v5 = [mEMORY[0x1E698DC80] ageOfMajorityForAccount:primaryAuthKitAccount];

  if (v5)
  {
    v6 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:v5 numberStyle:0];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v6 = [v7 localizedStringForKey:@"CUSTODIAN_DEFAULT_AGE_OF_MAJORITY" value:0 table:@"Localizable"];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = [v9 localizedStringForKey:@"CUSTODIAN_SPLASH_SCREEN_FIRST_BULLET_DESCRIPTION" value:0 table:@"Localizable"];
  v11 = [v8 stringWithFormat:v10, v6];

  return v11;
}

- (id)_firstBulletPointTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_SPLASH_SCREEN_FIRST_BULLET_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_secondBulletPointDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_SPLASH_SCREEN_SECOND_BULLET_DESCRIPTION" value:0 table:@"Localizable"];

  return v3;
}

- (id)_secondBulletPointTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_SPLASH_SCREEN_SECOND_BULLET_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_thirdBulletPointDescription
{
  if (+[AAPreferences isRCInSettingsEnabled](AAPreferences, "isRCInSettingsEnabled") || +[AAPreferences isRCUpsellEnabled])
  {
    v2 = @"CUSTODIAN_SPLASH_SCREEN_THIRD_BULLET_DESCRIPTION_RCSETTINGS";
  }

  else
  {
    v2 = @"CUSTODIAN_SPLASH_SCREEN_THIRD_BULLET_DESCRIPTION_NEW";
    if (!+[AAPreferences isSignInSecurityRedesignEnabled](AAPreferences, "isSignInSecurityRedesignEnabled") && !+[AAPreferences isSignInSecurityRedesignMacOSEnabled])
    {
      v2 = @"CUSTODIAN_SPLASH_SCREEN_THIRD_BULLET_DESCRIPTION";
    }
  }

  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v4 = [v3 localizedStringForKey:v2 value:0 table:@"Localizable"];

  return v4;
}

- (id)_thirdBulletPointTitle
{
  if (+[AAPreferences isRCInSettingsEnabled](AAPreferences, "isRCInSettingsEnabled") || +[AAPreferences isRCUpsellEnabled])
  {
    v2 = @"CUSTODIAN_SPLASH_SCREEN_THIRD_BULLET_TITLE_RCSETTINGS";
  }

  else
  {
    v2 = @"CUSTODIAN_SPLASH_SCREEN_THIRD_BULLET_TITLE_NEW";
    if (!+[AAPreferences isSignInSecurityRedesignEnabled](AAPreferences, "isSignInSecurityRedesignEnabled") && !+[AAPreferences isSignInSecurityRedesignMacOSEnabled])
    {
      v2 = @"CUSTODIAN_SPLASH_SCREEN_THIRD_BULLET_TITLE";
    }
  }

  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v4 = [v3 localizedStringForKey:v2 value:0 table:@"Localizable"];

  return v4;
}

@end