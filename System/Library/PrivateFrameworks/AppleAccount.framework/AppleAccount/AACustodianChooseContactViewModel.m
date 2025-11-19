@interface AACustodianChooseContactViewModel
- (NSString)selectButtonText;
- (NSString)title;
@end

@implementation AACustodianChooseContactViewModel

- (NSString)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_CHOOSE_CONTACT_TITLE" value:0 table:@"Localizable"];

  return v3;
}

- (NSString)selectButtonText
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"CUSTODIAN_CHOOSE_CONTACT_SELECT_BUTTON" value:0 table:@"Localizable"];

  return v3;
}

@end