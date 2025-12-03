@interface AAOBInheritanceInvitationModel
- (AAOBInheritanceInvitationModel)initWithAcceptedViewForBenefactorInfo:(id)info;
- (AAOBInheritanceInvitationModel)initWithBenefactorInfo:(id)info;
- (AAOBInheritanceInvitationModel)initWithCoder:(id)coder;
- (AAOBInheritanceInvitationModel)initWithModel:(id)model;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAOBInheritanceInvitationModel

- (AAOBInheritanceInvitationModel)initWithBenefactorInfo:(id)info
{
  infoCopy = info;
  v54.receiver = self;
  v54.super_class = AAOBInheritanceInvitationModel;
  v6 = [(AAOBInheritanceInvitationModel *)&v54 init];
  if (v6)
  {
    if (infoCopy)
    {
      status = [infoCopy status];
    }

    else
    {
      status = 2;
    }

    ownerHandle = [infoCopy ownerHandle];
    ownerHandle = v6->_ownerHandle;
    v6->_ownerHandle = ownerHandle;

    v10 = [AAOBModelHelper contactInfoForHandle:v6->_ownerHandle];
    displayName = [v10 displayName];
    firstNameOrHandleForDisplay = [v10 firstNameOrHandleForDisplay];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v13 = [v12 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_CONFIRM_BUTTON" value:0 table:@"Localizable"];
    primaryButton = v6->_primaryButton;
    v6->_primaryButton = v13;

    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v16 = [v15 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_MANAGE_BUTTON" value:0 table:@"Localizable"];
    secondaryButton = v6->_secondaryButton;
    v6->_secondaryButton = v16;

    v52 = firstNameOrHandleForDisplay;
    if (status == 1)
    {
      v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v19 = [v18 localizedStringForKey:@"INHERITANCE_BENEFICIARY_INVITED_TITLE" value:0 table:@"Localizable"];
      title = v6->_title;
      v6->_title = v19;

      v21 = MEMORY[0x1E696AEC0];
      v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v23 = [v22 localizedStringForKey:@"INHERITANCE_BENEFICIARY_INVITED_DETAIL_TEXT" value:0 table:@"Localizable"];
      v24 = firstNameOrHandleForDisplay;
      v25 = v23;
      v26 = [v21 stringWithFormat:v23, v24];
      detailText = v6->_detailText;
      v6->_detailText = v26;

      v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v29 = [v28 localizedStringForKey:@"LC_SAVE_KEY_BUTTON" value:0 table:@"Localizable"];
      v30 = v6->_primaryButton;
      v6->_primaryButton = v29;

      v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v32 = [v31 localizedStringForKey:@"LC_DONT_SAVE_BUTTON" value:0 table:@"Localizable"];
      v33 = v6->_secondaryButton;
      v6->_secondaryButton = v32;
    }

    else
    {
      if ((status & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v34 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v35 = [v34 localizedStringForKey:@"BENEFICIARY_DECLINED_INVITE_TITLE" value:0 table:@"Localizable"];
        v36 = v6->_title;
        v6->_title = v35;

        v37 = MEMORY[0x1E696AEC0];
        v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v33 = [v31 localizedStringForKey:@"BENEFICIARY_DECLINED_INVITE_DETAIL_TEXT" value:0 table:@"Localizable"];
        v38 = displayName;
      }

      else
      {
        if (status != 2)
        {
LABEL_13:
          objc_storeStrong(&v6->_imageName, 0);
          v44 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
          v45 = [v44 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_HELP_LINK_TEXT" value:0 table:@"Localizable"];
          helpLinkTitle = v6->_helpLinkTitle;
          v6->_helpLinkTitle = v45;

          v47 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
          v48 = [v47 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_HELP_URL" value:0 table:@"Localizable"];
          helpLinkURL = v6->_helpLinkURL;
          v6->_helpLinkURL = v48;

          objc_storeStrong(&v6->_custodianshipInfo, info);
          recipientHandle = v6->_recipientHandle;
          v6->_recipientHandle = 0;

          goto LABEL_14;
        }

        v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v40 = [v39 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_TITLE" value:0 table:@"Localizable"];
        v41 = v6->_title;
        v6->_title = v40;

        v37 = MEMORY[0x1E696AEC0];
        v31 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v33 = [v31 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_DETAIL_TEXT" value:0 table:@"Localizable"];
        v38 = firstNameOrHandleForDisplay;
      }

      v42 = [v37 stringWithFormat:v33, v38];
      v43 = v6->_detailText;
      v6->_detailText = v42;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v6;
}

- (AAOBInheritanceInvitationModel)initWithAcceptedViewForBenefactorInfo:(id)info
{
  infoCopy = info;
  v33.receiver = self;
  v33.super_class = AAOBInheritanceInvitationModel;
  v6 = [(AAOBInheritanceInvitationModel *)&v33 init];
  if (v6)
  {
    ownerHandle = [infoCopy ownerHandle];
    ownerHandle = v6->_ownerHandle;
    v6->_ownerHandle = ownerHandle;

    v32 = [AAOBModelHelper contactInfoForHandle:v6->_ownerHandle];
    displayName = [v32 displayName];
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v11 = [v10 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_CONFIRM_BUTTON" value:0 table:@"Localizable"];
    primaryButton = v6->_primaryButton;
    v6->_primaryButton = v11;

    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v14 = [v13 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_MANAGE_BUTTON" value:0 table:@"Localizable"];
    secondaryButton = v6->_secondaryButton;
    v6->_secondaryButton = v14;

    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v17 = [v16 localizedStringForKey:@"BENEFICIARY_ACCEPTED_INVITE_TITLE" value:0 table:@"Localizable"];
    title = v6->_title;
    v6->_title = v17;

    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v21 = [v20 localizedStringForKey:@"BENEFICIARY_ACCEPTED_INVITE_DETAIL_TEXT" value:0 table:@"Localizable"];
    v22 = [v19 stringWithFormat:v21, displayName];
    detailText = v6->_detailText;
    v6->_detailText = v22;

    objc_storeStrong(&v6->_imageName, 0);
    v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v25 = [v24 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_HELP_LINK_TEXT" value:0 table:@"Localizable"];
    helpLinkTitle = v6->_helpLinkTitle;
    v6->_helpLinkTitle = v25;

    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v28 = [v27 localizedStringForKey:@"INHERITANCE_BENEFICIARY_ADDED_HELP_URL" value:0 table:@"Localizable"];
    helpLinkURL = v6->_helpLinkURL;
    v6->_helpLinkURL = v28;

    objc_storeStrong(&v6->_custodianshipInfo, info);
    recipientHandle = v6->_recipientHandle;
    v6->_recipientHandle = 0;
  }

  return v6;
}

- (AAOBInheritanceInvitationModel)initWithModel:(id)model
{
  modelCopy = model;
  v27.receiver = self;
  v27.super_class = AAOBInheritanceInvitationModel;
  v5 = [(AAOBInheritanceInvitationModel *)&v27 init];
  if (v5)
  {
    imageName = [modelCopy imageName];
    imageName = v5->_imageName;
    v5->_imageName = imageName;

    title = [modelCopy title];
    title = v5->_title;
    v5->_title = title;

    detailText = [modelCopy detailText];
    detailText = v5->_detailText;
    v5->_detailText = detailText;

    primaryButton = [modelCopy primaryButton];
    primaryButton = v5->_primaryButton;
    v5->_primaryButton = primaryButton;

    secondaryButton = [modelCopy secondaryButton];
    secondaryButton = v5->_secondaryButton;
    v5->_secondaryButton = secondaryButton;

    helpLinkTitle = [modelCopy helpLinkTitle];
    helpLinkTitle = v5->_helpLinkTitle;
    v5->_helpLinkTitle = helpLinkTitle;

    helpLinkURL = [modelCopy helpLinkURL];
    helpLinkURL = v5->_helpLinkURL;
    v5->_helpLinkURL = helpLinkURL;

    ownerHandle = [modelCopy ownerHandle];
    ownerHandle = v5->_ownerHandle;
    v5->_ownerHandle = ownerHandle;

    custodianshipInfo = [modelCopy custodianshipInfo];
    custodianshipInfo = v5->_custodianshipInfo;
    v5->_custodianshipInfo = custodianshipInfo;

    recipientHandle = [modelCopy recipientHandle];
    recipientHandle = v5->_recipientHandle;
    v5->_recipientHandle = recipientHandle;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  imageName = self->_imageName;
  coderCopy = coder;
  [coderCopy encodeObject:imageName forKey:@"_imageName"];
  [coderCopy encodeObject:self->_title forKey:@"_title"];
  [coderCopy encodeObject:self->_detailText forKey:@"_detailText"];
  [coderCopy encodeObject:self->_primaryButton forKey:@" _primaryButton"];
  [coderCopy encodeObject:self->_secondaryButton forKey:@"_secondaryButton"];
  [coderCopy encodeObject:self->_helpLinkTitle forKey:@"_helpLinkTitle"];
  [coderCopy encodeObject:self->_helpLinkURL forKey:@"_helpLinkURL"];
  [coderCopy encodeObject:self->_ownerHandle forKey:@"_ownerHandle"];
  [coderCopy encodeObject:self->_custodianshipInfo forKey:@"_custodianshipInfo"];
}

- (AAOBInheritanceInvitationModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = AAOBInheritanceInvitationModel;
  v5 = [(AAOBInheritanceInvitationModel *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_detailText"];
    detailText = v5->_detailText;
    v5->_detailText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@" _primaryButton"];
    primaryButton = v5->_primaryButton;
    v5->_primaryButton = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryButton"];
    secondaryButton = v5->_secondaryButton;
    v5->_secondaryButton = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_helpLinkTitle"];
    helpLinkTitle = v5->_helpLinkTitle;
    v5->_helpLinkTitle = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_helpLinkURL"];
    helpLinkURL = v5->_helpLinkURL;
    v5->_helpLinkURL = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ownerHandle"];
    ownerHandle = v5->_ownerHandle;
    v5->_ownerHandle = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_custodianshipInfo"];
    custodianshipInfo = v5->_custodianshipInfo;
    v5->_custodianshipInfo = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AAOBInheritanceInvitationModel);
  v5 = [(NSString *)self->_imageName copy];
  imageName = v4->_imageName;
  v4->_imageName = v5;

  v7 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v7;

  v9 = [(NSString *)self->_detailText copy];
  detailText = v4->_detailText;
  v4->_detailText = v9;

  v11 = [(NSString *)self->_primaryButton copy];
  primaryButton = v4->_primaryButton;
  v4->_primaryButton = v11;

  v13 = [(NSString *)self->_secondaryButton copy];
  secondaryButton = v4->_secondaryButton;
  v4->_secondaryButton = v13;

  v15 = [(NSString *)self->_helpLinkTitle copy];
  helpLinkTitle = v4->_helpLinkTitle;
  v4->_helpLinkTitle = v15;

  v17 = [(NSString *)self->_helpLinkURL copy];
  helpLinkURL = v4->_helpLinkURL;
  v4->_helpLinkURL = v17;

  v19 = [(NSString *)self->_ownerHandle copy];
  ownerHandle = v4->_ownerHandle;
  v4->_ownerHandle = v19;

  v21 = [(AACustodianshipInfo *)self->_custodianshipInfo copy];
  custodianshipInfo = v4->_custodianshipInfo;
  v4->_custodianshipInfo = v21;

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  imageName = [(AAOBInheritanceInvitationModel *)self imageName];
  title = [(AAOBInheritanceInvitationModel *)self title];
  detailText = [(AAOBInheritanceInvitationModel *)self detailText];
  primaryButton = [(AAOBInheritanceInvitationModel *)self primaryButton];
  secondaryButton = [(AAOBInheritanceInvitationModel *)self secondaryButton];
  helpLinkTitle = [(AAOBInheritanceInvitationModel *)self helpLinkTitle];
  helpLinkURL = [(AAOBInheritanceInvitationModel *)self helpLinkURL];
  ownerHandle = [(AAOBInheritanceInvitationModel *)self ownerHandle];
  custodianshipInfo = [(AAOBInheritanceInvitationModel *)self custodianshipInfo];
  v13 = [v3 stringWithFormat:@"imageName: %@\title: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@\nownerHandle: %@\ncustodianshipInfo: %@\n", imageName, title, detailText, primaryButton, secondaryButton, helpLinkTitle, helpLinkURL, ownerHandle, custodianshipInfo];

  return v13;
}

@end