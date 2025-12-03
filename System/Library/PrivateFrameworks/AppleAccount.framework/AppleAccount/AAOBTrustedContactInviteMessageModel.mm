@interface AAOBTrustedContactInviteMessageModel
- (AAOBTrustedContactInviteMessageModel)initWithCoder:(id)coder;
- (AAOBTrustedContactInviteMessageModel)initWithType:(unint64_t)type recipientHandle:(id)handle messageURL:(id)l;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAOBTrustedContactInviteMessageModel

- (AAOBTrustedContactInviteMessageModel)initWithType:(unint64_t)type recipientHandle:(id)handle messageURL:(id)l
{
  handleCopy = handle;
  lCopy = l;
  v37.receiver = self;
  v37.super_class = AAOBTrustedContactInviteMessageModel;
  v11 = [(AAOBTrustedContactInviteMessageModel *)&v37 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v13 = [v12 localizedStringForKey:@"CUSTODIAN_MESSAGES_TITLE" value:0 table:@"Localizable"];
    title = v11->_title;
    v11->_title = v13;

    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v16 = [v15 localizedStringForKey:@"CUSTODIAN_MESSAGES_DECLINE_BUTTON" value:0 table:@"Localizable"];
    secondaryButton = v11->_secondaryButton;
    v11->_secondaryButton = v16;

    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v19 = [v18 localizedStringForKey:@"CUSTODIAN_MESSAGES_CONFIRM_BUTTON" value:0 table:@"Localizable"];
    primaryButton = v11->_primaryButton;
    v11->_primaryButton = v19;

    if (type == 2)
    {
      v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v22 = [v21 localizedStringForKey:@"CUSTODIAN_MESSAGES_ADDED_TEXT" value:0 table:@"Localizable"];
      detailText = v11->_detailText;
      v11->_detailText = v22;

      v24 = @"CUSTODIAN_MESSAGES_BUBBLE_ADDED_BODY";
    }

    else
    {
      if (+[AAPreferences isRCInSettingsEnabled](AAPreferences, "isRCInSettingsEnabled") || +[AAPreferences isRCUpsellEnabled])
      {
        v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v26 = [v25 localizedStringForKey:@"CUSTODIAN_MESSAGES_TITLE_UPSELL" value:0 table:@"Localizable"];
        v27 = v11->_title;
        v11->_title = v26;

        v28 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v29 = [v28 localizedStringForKey:@"CUSTODIAN_MESSAGES_INVITE_TEXT_UPSELL" value:0 table:@"Localizable"];
        v30 = v11->_detailText;
        v11->_detailText = v29;

        v21 = v11->_secondaryButton;
        v11->_secondaryButton = 0;
      }

      else
      {
        v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v31 = [v21 localizedStringForKey:@"CUSTODIAN_MESSAGES_INVITE_TEXT" value:0 table:@"Localizable"];
        v32 = v11->_detailText;
        v11->_detailText = v31;
      }

      v24 = @"CUSTODIAN_MESSAGES_BUBBLE_INVITE_BODY";
    }

    v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v34 = [v33 localizedStringForKey:v24 value:0 table:@"Localizable"];
    bubbleText = v11->_bubbleText;
    v11->_bubbleText = v34;

    objc_storeStrong(&v11->_recipientHandle, handle);
    objc_storeStrong(&v11->_messageURL, l);
  }

  return v11;
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
  [coderCopy encodeObject:self->_bubbleText forKey:@"_bubbleText"];
  [coderCopy encodeObject:self->_messageURL forKey:@"_messageURL"];
}

- (AAOBTrustedContactInviteMessageModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = AAOBTrustedContactInviteMessageModel;
  v5 = [(AAOBTrustedContactInviteMessageModel *)&v29 init];
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

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bubbleText"];
    bubbleText = v5->_bubbleText;
    v5->_bubbleText = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_messageURL"];
    messageURL = v5->_messageURL;
    v5->_messageURL = v26;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AAOBTrustedContactInviteMessageModel);
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

  v23 = [(NSString *)self->_bubbleText copy];
  bubbleText = v4->_bubbleText;
  v4->_bubbleText = v23;

  v25 = [(NSURL *)self->_messageURL copy];
  messageURL = v4->_messageURL;
  v4->_messageURL = v25;

  return v4;
}

- (NSString)description
{
  v14 = MEMORY[0x1E696AEC0];
  imageName = [(AAOBTrustedContactInviteMessageModel *)self imageName];
  title = [(AAOBTrustedContactInviteMessageModel *)self title];
  detailText = [(AAOBTrustedContactInviteMessageModel *)self detailText];
  primaryButton = [(AAOBTrustedContactInviteMessageModel *)self primaryButton];
  secondaryButton = [(AAOBTrustedContactInviteMessageModel *)self secondaryButton];
  helpLinkTitle = [(AAOBTrustedContactInviteMessageModel *)self helpLinkTitle];
  helpLinkURL = [(AAOBTrustedContactInviteMessageModel *)self helpLinkURL];
  ownerHandle = [(AAOBTrustedContactInviteMessageModel *)self ownerHandle];
  recipientHandle = [(AAOBTrustedContactInviteMessageModel *)self recipientHandle];
  messageURL = [(AAOBTrustedContactInviteMessageModel *)self messageURL];
  absoluteString = [messageURL absoluteString];
  v15 = [v14 stringWithFormat:@"imageName: %@\ntitle: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@\nownerHandle: %@\nrecipientHandle: %@\n  messageURL: %@\n", imageName, title, detailText, primaryButton, secondaryButton, helpLinkTitle, helpLinkURL, ownerHandle, recipientHandle, absoluteString];

  return v15;
}

@end