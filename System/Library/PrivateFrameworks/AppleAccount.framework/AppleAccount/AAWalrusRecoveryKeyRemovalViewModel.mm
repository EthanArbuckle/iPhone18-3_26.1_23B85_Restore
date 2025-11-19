@interface AAWalrusRecoveryKeyRemovalViewModel
- (id)initWhenAccountHasRecoveryContact:(BOOL)a3;
@end

@implementation AAWalrusRecoveryKeyRemovalViewModel

- (id)initWhenAccountHasRecoveryContact:(BOOL)a3
{
  v3 = a3;
  v17.receiver = self;
  v17.super_class = AAWalrusRecoveryKeyRemovalViewModel;
  v4 = [(AAAccountContactPromptModel *)&v17 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v6 = [v5 localizedStringForKey:@"REMOVE_RECOVERY_KEY_TITLE" value:0 table:@"Localizable-Walrus"];
    [(AAAccountContactPromptModel *)v4 setDetailsLabel:v6];

    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v8 = v7;
    if (v3)
    {
      v9 = [v7 localizedStringForKey:@"REMOVE_RECOVERY_KEY_DETAIL_HAS_RC" value:0 table:@"Localizable-Walrus"];
      [(AAAccountContactPromptModel *)v4 setDetailsSubtitle:v9];

      [(AAAccountContactPromptModel *)v4 setSecondaryActionText:0];
      v10 = @"REMOVE_RECOVERY_KEY_DONE_BUTTON_DEFAULT";
    }

    else
    {
      v11 = [v7 localizedStringForKey:@"REMOVE_RECOVERY_KEY_DETAIL_NO_RC" value:0 table:@"Localizable-Walrus"];
      [(AAAccountContactPromptModel *)v4 setDetailsSubtitle:v11];

      v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v13 = [v12 localizedStringForKey:@"REMOVE_RECOVERY_KEY_NOT_NOW_BUTTON" value:0 table:@"Localizable-Walrus"];
      [(AAAccountContactPromptModel *)v4 setSecondaryActionText:v13];

      v10 = @"REMOVE_RECOVERY_KEY_DONE_BUTTON_ADD_RC";
    }

    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v15 = [v14 localizedStringForKey:v10 value:0 table:@"Localizable-Walrus"];
    [(AAAccountContactPromptModel *)v4 setPrimaryActionText:v15];

    [(AAAccountContactPromptModel *)v4 setDoneButtonTitle:0];
  }

  return v4;
}

@end