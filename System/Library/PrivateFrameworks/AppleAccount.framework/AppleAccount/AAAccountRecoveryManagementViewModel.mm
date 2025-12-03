@interface AAAccountRecoveryManagementViewModel
- (NSString)appleDataRecoveryLabel;
- (NSString)details;
- (NSString)detailsForIneligibleAccount;
- (NSString)learnMore;
- (NSString)myRecoveryContactsAdd;
- (NSString)myRecoveryContactsFooter;
- (NSString)myRecoveryContactsFooterForIneligibleAccount;
- (NSString)myRecoveryContactsGroupTitle;
- (NSString)printableSummaryFooter;
- (NSString)printableSummaryLabel;
- (NSString)recoveryContactForGroupTitle;
- (NSString)recoveryKeyDetails;
- (NSString)recoveryKeyLabel;
- (NSString)title;
- (NSURL)footerLearnMoreURL;
- (NSURL)recoveryKeyLearnMoreURL;
- (id)recoveryKeyStatusText:(BOOL)text;
@end

@implementation AAAccountRecoveryManagementViewModel

- (NSString)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)details
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_DETAILS" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)detailsForIneligibleAccount
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_DETAILS_FOR_INELIGIBLE_ACCOUNT" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)learnMore
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"LEARN_MORE_ELIPSES" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)appleDataRecoveryLabel
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_APPLE_DATA_RECOVERY" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)myRecoveryContactsGroupTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_MY_CONTACTS_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)myRecoveryContactsAdd
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_MY_CONTACTS_ADD" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)myRecoveryContactsFooter
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_MY_CONTACTS_FOOTER" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)myRecoveryContactsFooterForIneligibleAccount
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_MY_CONTACTS_FOOTER_FOR_INELIGIBLE_ACCOUNT" value:0 table:@"Localizable"];

  return v3;
}

- (NSURL)footerLearnMoreURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v4 = [v3 localizedStringForKey:@"ACCOUNT_RECOVERY_MY_CONTACTS_LEARN_MORE_URL" value:0 table:@"Localizable"];
  v5 = [v2 URLWithString:v4];

  return v5;
}

- (NSString)recoveryContactForGroupTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_CONTACT_FOR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)recoveryKeyLabel
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_RECOVERY_KEY_LABEL" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)recoveryKeyDetails
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_RECOVERY_RECOVERY_KEY_DETAILS" value:0 table:@"Localizable"];

  return v3;
}

- (id)recoveryKeyStatusText:(BOOL)text
{
  textCopy = text;
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v5 = v4;
  if (textCopy)
  {
    v6 = @"ACCOUNT_RECOVERY_RECOVERY_KEY_ON";
  }

  else
  {
    v6 = @"ACCOUNT_RECOVERY_RECOVERY_KEY_OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:0 table:@"Localizable"];

  return v7;
}

- (NSURL)recoveryKeyLearnMoreURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v4 = [v3 localizedStringForKey:@"ACCOUNT_RECOVERY_RECOVERY_KEY_LEARN_MORE_URL" value:0 table:@"Localizable"];
  v5 = [v2 URLWithString:v4];

  return v5;
}

- (NSString)printableSummaryLabel
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"PRINT_ACCOUNT_ACCESS_SUMMARY_BUTTON_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)printableSummaryFooter
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"PRINT_ACCOUNT_ACCESS_SUMMARY_BUTTON_FOOTER" value:0 table:@"Localizable"];

  return v3;
}

@end