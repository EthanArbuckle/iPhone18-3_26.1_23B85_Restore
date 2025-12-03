@interface AAWalrusRecoveryContactRemovedScreenModel
- (void)_setupModelWithHasRecoveryContact:(BOOL)contact hasRecoveryKey:(BOOL)key;
@end

@implementation AAWalrusRecoveryContactRemovedScreenModel

- (void)_setupModelWithHasRecoveryContact:(BOOL)contact hasRecoveryKey:(BOOL)key
{
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v8 = [v7 localizedStringForKey:@"RECOVERY_CONTACT_REMOVED_TITLE_IOS" value:0 table:@"Localizable-Walrus"];
  [(AAWalrusRecoveryContactRemovedScreenModel *)self setTitle:v8];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v10 = v9;
  if (contact)
  {
    v11 = @"REMOVE_RECOVERY_CONTACT_DETAIL_HAS_ANOTHER_RC";
LABEL_5:
    v12 = [v9 localizedStringForKey:v11 value:0 table:@"Localizable-Walrus"];
    [(AAWalrusRecoveryContactRemovedScreenModel *)self setDetailText:v12];

    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v13 = [v19 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_DONE_BUTTON" value:0 table:@"Localizable-Walrus"];
    [(AAWalrusRecoveryContactRemovedScreenModel *)self setPrimaryButton:v13];
    goto LABEL_7;
  }

  if (key)
  {
    v11 = @"REMOVE_RECOVERY_CONTACT_DETAIL_HAS_RK";
    goto LABEL_5;
  }

  v14 = [v9 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_DETAIL_DEFAULT" value:0 table:@"Localizable-Walrus"];
  [(AAWalrusRecoveryContactRemovedScreenModel *)self setDetailText:v14];

  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v16 = [v15 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_PRIMARY_BUTTON" value:0 table:@"Localizable-Walrus"];
  [(AAWalrusRecoveryContactRemovedScreenModel *)self setPrimaryButton:v16];

  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v18 = [v17 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_SECOND_BUTTON" value:0 table:@"Localizable-Walrus"];
  [(AAWalrusRecoveryContactRemovedScreenModel *)self setSecondaryButton:v18];

  v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v13 = [v19 localizedStringForKey:@"REMOVE_RECOVERY_CONTACT_NOT_NOW_BUTTON" value:0 table:@"Localizable-Walrus"];
  [(AAWalrusRecoveryContactRemovedScreenModel *)self setLeftBarButton:v13];
LABEL_7:
}

@end