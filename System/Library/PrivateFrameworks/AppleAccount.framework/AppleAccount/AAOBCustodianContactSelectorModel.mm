@interface AAOBCustodianContactSelectorModel
- (AAOBCustodianContactSelectorModel)init;
@end

@implementation AAOBCustodianContactSelectorModel

- (AAOBCustodianContactSelectorModel)init
{
  v22.receiver = self;
  v22.super_class = AAOBCustodianContactSelectorModel;
  v2 = [(AAOBCustodianContactSelectorModel *)&v22 init];
  v3 = v2;
  if (v2)
  {
    imageName = v2->_imageName;
    v2->_imageName = 0;

    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v6 = [v5 localizedStringForKey:@"CUSTODIAN_CONTACT_SELECTOR_TITLE" value:0 table:@"Localizable"];
    title = v3->_title;
    v3->_title = v6;

    v8 = [MEMORY[0x1E698DC80] sharedInstance];
    v9 = [MEMORY[0x1E698DC80] sharedInstance];
    v10 = [v9 primaryAuthKitAccount];
    v11 = [v8 ageOfMajorityForAccount:v10];

    if (v11)
    {
      v12 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:v11 numberStyle:0];
    }

    else
    {
      v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v12 = [v13 localizedStringForKey:@"CUSTODIAN_DEFAULT_AGE_OF_MAJORITY" value:0 table:@"Localizable"];
    }

    v14 = MEMORY[0x1E696AEC0];
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v16 = [v15 localizedStringForKey:@"CUSTODIAN_CONTACT_SELECTOR_MESSAGE" value:0 table:@"Localizable"];
    v17 = [v14 stringWithFormat:v16, v12];
    detailText = v3->_detailText;
    v3->_detailText = v17;

    primaryButton = v3->_primaryButton;
    v3->_primaryButton = 0;

    secondaryButton = v3->_secondaryButton;
    v3->_secondaryButton = 0;
  }

  return v3;
}

@end