@interface AAOBInheritanceInviteMessageModel
- (AAOBInheritanceInviteMessageModel)initWithBeneficiaryName:(id)name;
- (AAOBInheritanceInviteMessageModel)initWithType:(unint64_t)type recipientHandle:(id)handle;
@end

@implementation AAOBInheritanceInviteMessageModel

- (AAOBInheritanceInviteMessageModel)initWithBeneficiaryName:(id)name
{
  nameCopy = name;
  v33.receiver = self;
  v33.super_class = AAOBInheritanceInviteMessageModel;
  v6 = [(AAOBInheritanceInviteMessageModel *)&v33 init];
  v7 = v6;
  if (v6)
  {
    imageName = v6->_imageName;
    v6->_imageName = 0;

    if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
    {
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v10 = [v9 localizedStringForKey:@"INHERITANCE_INVITE_MESSAGE_TITLE_v2" value:0 table:@"Localizable"];
      title = v7->_title;
      v7->_title = v10;
    }

    else
    {
      v12 = MEMORY[0x1E696AEC0];
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      title = [v9 localizedStringForKey:@"INHERITANCE_INVITE_MESSAGE_TITLE" value:0 table:@"Localizable"];
      nameCopy = [v12 stringWithFormat:title, nameCopy];
      v14 = v7->_title;
      v7->_title = nameCopy;
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
    {
      v17 = @"INHERITANCE_ADDED_MESSAGE_DETAIL_TEXT_v2";
    }

    else
    {
      v17 = @"INHERITANCE_ADDED_MESSAGE_DETAIL_TEXT";
    }

    v18 = [v16 localizedStringForKey:v17 value:0 table:@"Localizable"];
    nameCopy2 = [v15 stringWithFormat:v18, nameCopy];
    detailText = v7->_detailText;
    v7->_detailText = nameCopy2;

    v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v22 = [v21 localizedStringForKey:@"INHERITANCE_INVITE_MESSAGE_SEND" value:0 table:@"Localizable"];
    primaryButton = v7->_primaryButton;
    v7->_primaryButton = v22;

    v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v25 = [v24 localizedStringForKey:@"INHERITANCE_INVITE_MESSAGE_EDIT_MESSAGE" value:0 table:@"Localizable"];
    secondaryButton = v7->_secondaryButton;
    v7->_secondaryButton = v25;

    objc_storeStrong(&v7->_recipientHandle, name);
    v27 = MEMORY[0x1E696AEC0];
    v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v29 = [v28 localizedStringForKey:@"INHERITANCE_ADDED_MESSAGES_BUBBLE_BODY" value:0 table:@"Localizable"];
    nameCopy3 = [v27 stringWithFormat:v29, nameCopy];
    bubbleText = v7->_bubbleText;
    v7->_bubbleText = nameCopy3;
  }

  return v7;
}

- (AAOBInheritanceInviteMessageModel)initWithType:(unint64_t)type recipientHandle:(id)handle
{
  handleCopy = handle;
  v40.receiver = self;
  v40.super_class = AAOBInheritanceInviteMessageModel;
  v8 = [(AAOBInheritanceInviteMessageModel *)&v40 init];
  if (v8)
  {
    v39 = handleCopy;
    v9 = [AAOBModelHelper contactInfoForHandle:handleCopy];
    displayName = [v9 displayName];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v13 = +[AAUrlBagHelper isLCInviteAcceptanceEnabled];
    v14 = @"INHERITANCE_INVITED_MESSAGE_DETAIL_TEXT";
    if (v13)
    {
      v14 = @"INHERITANCE_INVITED_MESSAGE_DETAIL_TEXT_v2";
    }

    v15 = @"INHERITANCE_ADDED_MESSAGE_DETAIL_TEXT_v2";
    if (!v13)
    {
      v15 = @"INHERITANCE_ADDED_MESSAGE_DETAIL_TEXT";
    }

    if (type == 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = [v12 localizedStringForKey:v16 value:0 table:@"Localizable"];
    v18 = [v11 stringWithFormat:v17, displayName];
    detailText = v8->_detailText;
    v8->_detailText = v18;

    v20 = MEMORY[0x1E696AEC0];
    v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v22 = [v21 localizedStringForKey:@"INHERITANCE_ADDED_MESSAGES_BUBBLE_BODY" value:0 table:@"Localizable"];
    firstNameOrHandleForDisplay = [v9 firstNameOrHandleForDisplay];
    v24 = [v20 stringWithFormat:v22, firstNameOrHandleForDisplay];
    bubbleText = v8->_bubbleText;
    v8->_bubbleText = v24;

    if (+[AAUrlBagHelper isLCInviteAcceptanceEnabled])
    {
      v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v27 = [v26 localizedStringForKey:@"INHERITANCE_INVITE_MESSAGE_TITLE_v2" value:0 table:@"Localizable"];
      title = v8->_title;
      v8->_title = v27;
    }

    else
    {
      v29 = MEMORY[0x1E696AEC0];
      v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      title = [v26 localizedStringForKey:@"INHERITANCE_INVITE_MESSAGE_TITLE" value:0 table:@"Localizable"];
      v30 = [v29 stringWithFormat:title, displayName];
      v31 = v8->_title;
      v8->_title = v30;
    }

    v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v33 = [v32 localizedStringForKey:@"INHERITANCE_INVITE_MESSAGE_SEND" value:0 table:@"Localizable"];
    primaryButton = v8->_primaryButton;
    v8->_primaryButton = v33;

    v35 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v36 = [v35 localizedStringForKey:@"INHERITANCE_INVITE_MESSAGE_EDIT_MESSAGE" value:0 table:@"Localizable"];
    secondaryButton = v8->_secondaryButton;
    v8->_secondaryButton = v36;

    objc_storeStrong(&v8->_recipientHandle, handle);
    handleCopy = v39;
  }

  return v8;
}

@end