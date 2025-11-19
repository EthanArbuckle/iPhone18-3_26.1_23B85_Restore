@interface UIContentUnavailableConfiguration(AppleAccountUI)
+ (id)_appleIDImage;
+ (id)signInNotAvailable;
@end

@implementation UIContentUnavailableConfiguration(AppleAccountUI)

+ (id)signInNotAvailable
{
  v2 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  v3 = [a1 _appleIDImage];
  [v2 setImage:v3];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v5 = [v4 localizedStringForKey:@"SIGN_IN_GUEST_MODE_RESTRICTED" value:&stru_1F447F790 table:@"Localizable"];
  [v2 setText:v5];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v7 = [v6 localizedStringForKey:@"SIGN_IN_GUEST_MODE_SECONDARY_TEXT" value:&stru_1F447F790 table:@"Localizable"];
  [v2 setSecondaryText:v7];

  v8 = [MEMORY[0x1E69DC888] labelColor];
  v9 = [v2 textProperties];
  [v9 setColor:v8];

  [v2 setAlignment:0];

  return v2;
}

+ (id)_appleIDImage
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC888] whiteColor];
  v1 = [MEMORY[0x1E69DC888] labelColor];
  v2 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:v0];
  v3 = MEMORY[0x1E69DCAD8];
  v10[0] = v0;
  v10[1] = v1;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v5 = [v3 configurationWithPaletteColors:v4];
  v6 = [v2 configurationByApplyingConfiguration:v5];

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"apple.id"];
  v8 = [v7 imageByApplyingSymbolConfiguration:v6];

  return v8;
}

@end