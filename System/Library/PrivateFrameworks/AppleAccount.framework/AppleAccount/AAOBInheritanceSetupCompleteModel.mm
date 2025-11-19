@interface AAOBInheritanceSetupCompleteModel
- (AAOBInheritanceSetupCompleteModel)initWithBeneficiaryName:(id)a3 accessKeyShareType:(unint64_t)a4 inviteType:(unint64_t)a5;
@end

@implementation AAOBInheritanceSetupCompleteModel

- (AAOBInheritanceSetupCompleteModel)initWithBeneficiaryName:(id)a3 accessKeyShareType:(unint64_t)a4 inviteType:(unint64_t)a5
{
  v8 = a3;
  v37.receiver = self;
  v37.super_class = AAOBInheritanceSetupCompleteModel;
  v9 = [(AAOBInheritanceSetupCompleteModel *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageName, 0);
    objc_storeStrong(&v10->_symbolName, @"person.2.badge.heart.fill");
    symbolAccessibilityLabel = v10->_symbolAccessibilityLabel;
    v10->_symbolAccessibilityLabel = @"Legacy Contact Symbol";

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v13 = [v12 localizedStringForKey:@"INHERITANCE_SETUP_COMPLETE_TITLE" value:0 table:@"Localizable"];
    title = v10->_title;
    v10->_title = v13;

    if (a4 == 1)
    {
      v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v16 = [v20 localizedStringForKey:@"SETTINGS" value:0 table:@"Localizable"];

      v21 = MEMORY[0x1E696AEC0];
      v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v23 = [v22 localizedStringForKey:@"INHERITANCE_SETUP_COMPLETE_MESSAGE_AFTER_PRINTING" value:0 table:@"Localizable"];
      v24 = [v21 stringWithFormat:v23, v8, v16];
      detailText = v10->_detailText;
      v10->_detailText = v24;
    }

    else
    {
      if (a4)
      {
LABEL_13:
        v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v29 = [v28 localizedStringForKey:@"INHERITANCE_SETUP_COMPLETE_DONE_TITLE" value:0 table:@"Localizable"];
        primaryButton = v10->_primaryButton;
        v10->_primaryButton = v29;

        v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v32 = [v31 localizedStringForKey:@"INHERITANCE_SETUP_COMPLETE_UPDATE_BIRTHDAY_TITLE" value:0 table:@"Localizable"];
        secondaryButton = v10->_secondaryButton;
        v10->_secondaryButton = v32;

        helpLinkTitle = v10->_helpLinkTitle;
        v10->_helpLinkTitle = 0;

        helpLinkURL = v10->_helpLinkURL;
        v10->_helpLinkURL = 0;

        goto LABEL_14;
      }

      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v17 = +[AAUrlBagHelper isLCInviteAcceptanceEnabled];
      if (a5 == 1)
      {
        v18 = @"INHERITANCE_INVITE_COMPLETE_MESSAGE_AFTER_MESSAGING";
        v19 = @"INHERITANCE_INVITE_COMPLETE_MESSAGE_AFTER_MESSAGING_v2";
      }

      else
      {
        v18 = @"INHERITANCE_SETUP_COMPLETE_MESSAGE_AFTER_MESSAGING";
        v19 = @"INHERITANCE_SETUP_COMPLETE_MESSAGE_AFTER_MESSAGING_v2";
      }

      if (v17)
      {
        v26 = v19;
      }

      else
      {
        v26 = v18;
      }

      v22 = [v16 localizedStringForKey:v26 value:0 table:@"Localizable"];
      v27 = [v15 stringWithFormat:v22, v8];
      v23 = v10->_detailText;
      v10->_detailText = v27;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v10;
}

@end