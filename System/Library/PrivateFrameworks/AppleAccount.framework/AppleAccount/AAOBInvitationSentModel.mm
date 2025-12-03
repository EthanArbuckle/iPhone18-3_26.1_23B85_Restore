@interface AAOBInvitationSentModel
- (AAOBInvitationSentModel)initWithCoder:(id)coder;
- (AAOBInvitationSentModel)initWithType:(int64_t)type recipientHandle:(id)handle;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAOBInvitationSentModel

- (AAOBInvitationSentModel)initWithType:(int64_t)type recipientHandle:(id)handle
{
  handleCopy = handle;
  v24.receiver = self;
  v24.super_class = AAOBInvitationSentModel;
  v8 = [(AAOBInvitationSentModel *)&v24 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v10 = v9;
    if (type)
    {
      v11 = @"CUSTODIAN_INVITATION_SENT_TITLE";
    }

    else
    {
      v11 = @"CUSTODIAN_INVITATION_SENT_FAMILY_TITLE";
    }

    if (type)
    {
      v12 = @"CUSTODIAN_INVITATION_SENT_DETAIL_TEXT";
    }

    else
    {
      v12 = @"CUSTODIAN_INVITATION_SENT_FAMILY_DETAIL_TEXT";
    }

    v13 = [v9 localizedStringForKey:v11 value:0 table:@"Localizable"];
    title = v8->_title;
    v8->_title = v13;

    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v16 = [v15 localizedStringForKey:v12 value:0 table:@"Localizable"];
    detailText = v8->_detailText;
    v8->_detailText = v16;

    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v19 = [v18 localizedStringForKey:@"DONE" value:0 table:@"Localizable"];
    primaryButton = v8->_primaryButton;
    v8->_primaryButton = v19;

    objc_storeStrong(&v8->_recipientHandle, handle);
    helpLinkTitle = v8->_helpLinkTitle;
    v8->_helpLinkTitle = 0;

    helpLinkURL = v8->_helpLinkURL;
    v8->_helpLinkURL = 0;
  }

  return v8;
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
  [coderCopy encodeObject:self->_recipientHandle forKey:@"_recipientHandle"];
}

- (AAOBInvitationSentModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = AAOBInvitationSentModel;
  v5 = [(AAOBInvitationSentModel *)&v25 init];
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

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recipientHandle"];
    recipientHandle = v5->_recipientHandle;
    v5->_recipientHandle = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AAOBInvitationSentModel);
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

  v21 = [(NSString *)self->_recipientHandle copy];
  recipientHandle = v4->_recipientHandle;
  v4->_recipientHandle = v21;

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  imageName = [(AAOBInvitationSentModel *)self imageName];
  title = [(AAOBInvitationSentModel *)self title];
  detailText = [(AAOBInvitationSentModel *)self detailText];
  primaryButton = [(AAOBInvitationSentModel *)self primaryButton];
  secondaryButton = [(AAOBInvitationSentModel *)self secondaryButton];
  helpLinkTitle = [(AAOBInvitationSentModel *)self helpLinkTitle];
  helpLinkURL = [(AAOBInvitationSentModel *)self helpLinkURL];
  ownerHandle = [(AAOBInvitationSentModel *)self ownerHandle];
  recipientHandle = [(AAOBInvitationSentModel *)self recipientHandle];
  v13 = [v3 stringWithFormat:@"imageName: %@\title: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@\nownerHandle: %@\nrecipientHandle: %@\n", imageName, title, detailText, primaryButton, secondaryButton, helpLinkTitle, helpLinkURL, ownerHandle, recipientHandle];

  return v13;
}

@end