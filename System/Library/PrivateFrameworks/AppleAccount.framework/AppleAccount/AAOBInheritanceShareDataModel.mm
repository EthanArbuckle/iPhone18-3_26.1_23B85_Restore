@interface AAOBInheritanceShareDataModel
- (AAOBInheritanceShareDataModel)initWithBeneficiaryName:(id)name;
@end

@implementation AAOBInheritanceShareDataModel

- (AAOBInheritanceShareDataModel)initWithBeneficiaryName:(id)name
{
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = AAOBInheritanceShareDataModel;
  v5 = [(AAOBInheritanceShareDataModel *)&v26 init];
  v6 = v5;
  if (v5)
  {
    imageName = v5->_imageName;
    v5->_imageName = 0;

    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v9 = [v8 localizedStringForKey:@"INHERITANCE_SHARE_DATA_TITLE" value:0 table:@"Localizable"];
    title = v6->_title;
    v6->_title = v9;

    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
    {
      v13 = @"INHERITANCE_SHARE_DATA_MESSAGE_v2";
    }

    else
    {
      v13 = @"INHERITANCE_SHARE_DATA_MESSAGE";
    }

    v14 = [v12 localizedStringForKey:v13 value:0 table:@"Localizable"];
    nameCopy = [v11 stringWithFormat:v14, nameCopy];
    detailText = v6->_detailText;
    v6->_detailText = nameCopy;

    v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    if (+[AAFeatureFlags isSolariumEnabled])
    {
      v18 = @"INHERITANCE_SHARE_DATA_LEARNMORE_TITLE_SOLARIUM";
    }

    else
    {
      v18 = @"INHERITANCE_SHARE_DATA_LEARNMORE_TITLE";
    }

    v19 = [v17 localizedStringForKey:v18 value:0 table:@"Localizable"];
    helpLinkTitle = v6->_helpLinkTitle;
    v6->_helpLinkTitle = v19;

    objc_storeStrong(&v6->_helpLinkURL, @"https://support.apple.com/kb/HT212360");
    v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v22 = [v21 localizedStringForKey:@"INHERITANCE_SHARE_DATA_CONTINUE_TITLE" value:0 table:@"Localizable"];
    primaryButton = v6->_primaryButton;
    v6->_primaryButton = v22;

    secondaryButton = v6->_secondaryButton;
    v6->_secondaryButton = 0;
  }

  return v6;
}

@end