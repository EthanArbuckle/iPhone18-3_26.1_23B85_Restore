@interface AAAccountBeneficiaryManagementViewModel
- (NSString)beneficiaryForGroupTitle;
- (NSString)learnMore;
- (NSString)myBeneficiariesAdd;
- (NSString)myBeneficiariesGroupFooter;
- (NSString)myBeneficiariesGroupTitle;
- (NSString)noBenefactorFooter;
- (NSString)title;
- (NSURL)learnMoreURL;
@end

@implementation AAAccountBeneficiaryManagementViewModel

- (NSString)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_BENEFICIARY_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)myBeneficiariesGroupTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_BENEFICIARY_MY_CONTACTS_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)myBeneficiariesAdd
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_BENEFICIARY_MY_CONTACTS_ADD" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)myBeneficiariesGroupFooter
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_BENEFICIARY_MY_CONTACTS_FOOTER" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)beneficiaryForGroupTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_BENEFICIARY_CONTACT_FOR_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)learnMore
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"LEARN_MORE_ELIPSES" value:0 table:@"Localizable"];

  return v3;
}

- (NSURL)learnMoreURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v4 = [v3 localizedStringForKey:@"ACCOUNT_BENEFICIARY_LEARN_MORE_URL" value:0 table:@"Localizable"];
  v5 = [v2 URLWithString:v4];

  return v5;
}

- (NSString)noBenefactorFooter
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_BENEFICIARY_NO_BENEFACTOR_FOOTER" value:0 table:@"Localizable"];

  return v3;
}

@end