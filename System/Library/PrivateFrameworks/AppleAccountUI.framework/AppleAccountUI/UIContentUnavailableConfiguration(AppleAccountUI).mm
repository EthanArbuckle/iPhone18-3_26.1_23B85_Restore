@interface UIContentUnavailableConfiguration(AppleAccountUI)
+ (id)_appleIDImage;
+ (id)signInNotAvailable;
@end

@implementation UIContentUnavailableConfiguration(AppleAccountUI)

+ (id)signInNotAvailable
{
  emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  _appleIDImage = [self _appleIDImage];
  [emptyConfiguration setImage:_appleIDImage];

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v5 = [v4 localizedStringForKey:@"SIGN_IN_GUEST_MODE_RESTRICTED" value:&stru_1F447F790 table:@"Localizable"];
  [emptyConfiguration setText:v5];

  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
  v7 = [v6 localizedStringForKey:@"SIGN_IN_GUEST_MODE_SECONDARY_TEXT" value:&stru_1F447F790 table:@"Localizable"];
  [emptyConfiguration setSecondaryText:v7];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textProperties = [emptyConfiguration textProperties];
  [textProperties setColor:labelColor];

  [emptyConfiguration setAlignment:0];

  return emptyConfiguration;
}

+ (id)_appleIDImage
{
  v10[2] = *MEMORY[0x1E69E9840];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v2 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:whiteColor];
  v3 = MEMORY[0x1E69DCAD8];
  v10[0] = whiteColor;
  v10[1] = labelColor;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v5 = [v3 configurationWithPaletteColors:v4];
  v6 = [v2 configurationByApplyingConfiguration:v5];

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"apple.id"];
  v8 = [v7 imageByApplyingSymbolConfiguration:v6];

  return v8;
}

@end