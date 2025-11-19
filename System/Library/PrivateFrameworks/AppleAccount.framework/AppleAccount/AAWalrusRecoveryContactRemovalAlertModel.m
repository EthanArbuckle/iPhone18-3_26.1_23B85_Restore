@interface AAWalrusRecoveryContactRemovalAlertModel
- (id)initWhenAccountHasRecoveryContact:(BOOL)a3 hasRecoveryKey:(BOOL)a4;
@end

@implementation AAWalrusRecoveryContactRemovalAlertModel

- (id)initWhenAccountHasRecoveryContact:(BOOL)a3 hasRecoveryKey:(BOOL)a4
{
  v20.receiver = self;
  v20.super_class = AAWalrusRecoveryContactRemovalAlertModel;
  v6 = [(AAAccountContactPromptModel *)&v20 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v8 = [v7 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_TITLE" value:0 table:@"Localizable-Walrus"];
    [(AAAccountContactPromptModel *)v6 setDetailsLabel:v8];

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v10 = v9;
    if (a3)
    {
      v11 = @"REMOVE_RECOVERY_CONTACT_DETAIL_HAS_ANOTHER_RC";
    }

    else
    {
      if (!a4)
      {
        v13 = [v9 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_DETAIL_DEFAULT" value:0 table:@"Localizable-Walrus"];
        [(AAAccountContactPromptModel *)v6 setDetailsSubtitle:v13];

        v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v15 = [v14 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_PRIMARY_BUTTON" value:0 table:@"Localizable-Walrus"];
        [(AAAccountContactPromptModel *)v6 setPrimaryActionText:v15];

        v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v17 = [v16 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_SECOND_BUTTON" value:0 table:@"Localizable-Walrus"];
        [(AAAccountContactPromptModel *)v6 setSecondaryActionText:v17];

        v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v12 = [v10 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_NOT_NOW_BUTTON" value:0 table:@"Localizable-Walrus"];
        [(AAAccountContactPromptModel *)v6 setDoneButtonTitle:v12];
        goto LABEL_8;
      }

      v11 = @"REMOVE_RECOVERY_CONTACT_DETAIL_HAS_RK";
    }

    v12 = [v9 localizedStringForKey:v11 value:0 table:@"Localizable-Walrus"];
    [(AAAccountContactPromptModel *)v6 setDetailsSubtitle:v12];
LABEL_8:

    v18 = v6;
  }

  return v6;
}

@end