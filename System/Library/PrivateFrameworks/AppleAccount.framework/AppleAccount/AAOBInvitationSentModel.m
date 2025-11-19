@interface AAOBInvitationSentModel
- (AAOBInvitationSentModel)initWithCoder:(id)a3;
- (AAOBInvitationSentModel)initWithType:(int64_t)a3 recipientHandle:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAOBInvitationSentModel

- (AAOBInvitationSentModel)initWithType:(int64_t)a3 recipientHandle:(id)a4
{
  v7 = a4;
  v24.receiver = self;
  v24.super_class = AAOBInvitationSentModel;
  v8 = [(AAOBInvitationSentModel *)&v24 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v10 = v9;
    if (a3)
    {
      v11 = @"CUSTODIAN_INVITATION_SENT_TITLE";
    }

    else
    {
      v11 = @"CUSTODIAN_INVITATION_SENT_FAMILY_TITLE";
    }

    if (a3)
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

    objc_storeStrong(&v8->_recipientHandle, a4);
    helpLinkTitle = v8->_helpLinkTitle;
    v8->_helpLinkTitle = 0;

    helpLinkURL = v8->_helpLinkURL;
    v8->_helpLinkURL = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  imageName = self->_imageName;
  v5 = a3;
  [v5 encodeObject:imageName forKey:@"_imageName"];
  [v5 encodeObject:self->_title forKey:@"_title"];
  [v5 encodeObject:self->_detailText forKey:@"_detailText"];
  [v5 encodeObject:self->_primaryButton forKey:@" _primaryButton"];
  [v5 encodeObject:self->_secondaryButton forKey:@"_secondaryButton"];
  [v5 encodeObject:self->_helpLinkTitle forKey:@"_helpLinkTitle"];
  [v5 encodeObject:self->_helpLinkURL forKey:@"_helpLinkURL"];
  [v5 encodeObject:self->_ownerHandle forKey:@"_ownerHandle"];
  [v5 encodeObject:self->_recipientHandle forKey:@"_recipientHandle"];
}

- (AAOBInvitationSentModel)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AAOBInvitationSentModel;
  v5 = [(AAOBInvitationSentModel *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_detailText"];
    detailText = v5->_detailText;
    v5->_detailText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@" _primaryButton"];
    primaryButton = v5->_primaryButton;
    v5->_primaryButton = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_secondaryButton"];
    secondaryButton = v5->_secondaryButton;
    v5->_secondaryButton = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_helpLinkTitle"];
    helpLinkTitle = v5->_helpLinkTitle;
    v5->_helpLinkTitle = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_helpLinkURL"];
    helpLinkURL = v5->_helpLinkURL;
    v5->_helpLinkURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ownerHandle"];
    ownerHandle = v5->_ownerHandle;
    v5->_ownerHandle = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recipientHandle"];
    recipientHandle = v5->_recipientHandle;
    v5->_recipientHandle = v22;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(AAOBInvitationSentModel *)self imageName];
  v5 = [(AAOBInvitationSentModel *)self title];
  v6 = [(AAOBInvitationSentModel *)self detailText];
  v7 = [(AAOBInvitationSentModel *)self primaryButton];
  v8 = [(AAOBInvitationSentModel *)self secondaryButton];
  v9 = [(AAOBInvitationSentModel *)self helpLinkTitle];
  v10 = [(AAOBInvitationSentModel *)self helpLinkURL];
  v11 = [(AAOBInvitationSentModel *)self ownerHandle];
  v12 = [(AAOBInvitationSentModel *)self recipientHandle];
  v13 = [v3 stringWithFormat:@"imageName: %@\title: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@\nownerHandle: %@\nrecipientHandle: %@\n", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end