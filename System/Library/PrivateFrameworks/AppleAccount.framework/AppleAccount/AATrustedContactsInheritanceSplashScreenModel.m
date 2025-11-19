@interface AATrustedContactsInheritanceSplashScreenModel
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

@implementation AATrustedContactsInheritanceSplashScreenModel

- (id)bullets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AATrustedContactsInheritanceSplashScreenModel_bullets__block_invoke;
  block[3] = &unk_1E7C9A868;
  block[4] = self;
  if (bullets_onceToken_0 != -1)
  {
    dispatch_once(&bullets_onceToken_0, block);
  }

  return bullets_bullets_0;
}

void __56__AATrustedContactsInheritanceSplashScreenModel_bullets__block_invoke(uint64_t a1)
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
  v16 = bullets_bullets_0;
  bullets_bullets_0 = v15;

  v17 = *MEMORY[0x1E69E9840];
}

- (NSString)secondaryButton
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SPLASH_SCREEN_CANCEL_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)primaryButton
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SPLASH_SCREEN_CONTINUE_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SPLASH_SCREEN_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_firstBulletPointDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SPLASH_SCREEN_FIRST_BULLET_DESCRIPTION" value:0 table:@"Localizable"];

  return v3;
}

- (id)_firstBulletPointTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SPLASH_SCREEN_FIRST_BULLET_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_secondBulletPointDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
  {
    v3 = @"INHERITANCE_SPLASH_SCREEN_SECOND_BULLET_DESCRIPTION_v2";
  }

  else
  {
    v3 = @"INHERITANCE_SPLASH_SCREEN_SECOND_BULLET_DESCRIPTION";
  }

  v4 = [v2 localizedStringForKey:v3 value:0 table:@"Localizable"];

  return v4;
}

- (id)_secondBulletPointTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SPLASH_SCREEN_SECOND_BULLET_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (id)_thirdBulletPointDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SPLASH_SCREEN_THIRD_BULLET_DESCRIPTION" value:0 table:@"Localizable"];

  return v3;
}

- (id)_thirdBulletPointTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"INHERITANCE_SPLASH_SCREEN_THIRD_BULLET_TITLE" value:0 table:@"Localizable"];

  return v3;
}

@end