@interface AAUIOBTrustedContactInviteMessageModel
- (AAUIOBTrustedContactInviteMessageModel)initWithModel:(id)model;
- (NSString)description;
- (id)drawImage:(id)image withBadge:(id)badge;
@end

@implementation AAUIOBTrustedContactInviteMessageModel

- (AAUIOBTrustedContactInviteMessageModel)initWithModel:(id)model
{
  modelCopy = model;
  v5 = MEMORY[0x1E698B930];
  recipientHandle = [modelCopy recipientHandle];
  v7 = [v5 contactInfoForHandle:recipientHandle];

  v30.receiver = self;
  v30.super_class = AAUIOBTrustedContactInviteMessageModel;
  v8 = [(AAUIOBTrustedContactInviteMessageModel *)&v30 init];
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    detailText = [modelCopy detailText];
    fullName = [v7 fullName];
    handle = [v7 handle];
    v13 = [v9 stringWithFormat:detailText, fullName, handle];
    [(AAOBTrustedContactInviteMessageModel *)v8 setDetailText:v13];

    v14 = objc_opt_new();
    v15 = [v14 profilePictureForLocalContact:v7];
    v16 = [MEMORY[0x1E69DCAB8] iconForSize:@"com.apple.MobileSMS" bundleIdentifier:{15.0, 15.0}];
    v17 = [(AAUIOBTrustedContactInviteMessageModel *)v8 drawImage:v15 withBadge:v16];
    [(AAUIOBTrustedContactInviteMessageModel *)v8 setImage:v17];

    title = [modelCopy title];
    [(AAOBTrustedContactInviteMessageModel *)v8 setTitle:title];

    primaryButton = [modelCopy primaryButton];
    [(AAOBTrustedContactInviteMessageModel *)v8 setPrimaryButton:primaryButton];

    secondaryButton = [modelCopy secondaryButton];
    [(AAOBTrustedContactInviteMessageModel *)v8 setSecondaryButton:secondaryButton];

    recipientHandle2 = [modelCopy recipientHandle];
    [(AAOBTrustedContactInviteMessageModel *)v8 setRecipientHandle:recipientHandle2];

    if ([modelCopy conformsToProtocol:&unk_1F44ED1D8])
    {
      bubbleText = [modelCopy bubbleText];
    }

    else
    {
      bubbleText = 0;
    }

    if ([modelCopy conformsToProtocol:&unk_1F4501600] && (objc_msgSend(modelCopy, "messageURL"), (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = v23;
      v25 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v23 resolvingAgainstBaseURL:1];
      v26 = [[AAUIInvitePreviewMessageBubbleView alloc] initWithURLComponents:v25];
      contentView = v8->_contentView;
      v8->_contentView = &v26->super;
    }

    else
    {
      v28 = [[AAUIMessageBubbleView alloc] initWithText:bubbleText];
      v24 = v8->_contentView;
      v8->_contentView = &v28->super;
    }

    v8->_contentViewLayout = 2;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  imageName = [(AAOBTrustedContactInviteMessageModel *)self imageName];
  title = [(AAOBTrustedContactInviteMessageModel *)self title];
  detailText = [(AAOBTrustedContactInviteMessageModel *)self detailText];
  primaryButton = [(AAOBTrustedContactInviteMessageModel *)self primaryButton];
  secondaryButton = [(AAOBTrustedContactInviteMessageModel *)self secondaryButton];
  helpLinkURL = [(AAOBTrustedContactInviteMessageModel *)self helpLinkURL];
  helpLinkTitle = [(AAOBTrustedContactInviteMessageModel *)self helpLinkTitle];
  ownerHandle = [(AAOBTrustedContactInviteMessageModel *)self ownerHandle];
  recipientHandle = [(AAOBTrustedContactInviteMessageModel *)self recipientHandle];
  v13 = [v3 stringWithFormat:@"imageName: %@\title: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@\nownerHandle: %@\nrecipientHandle: %@\n", imageName, title, detailText, primaryButton, secondaryButton, helpLinkURL, helpLinkTitle, ownerHandle, recipientHandle];

  return v13;
}

- (id)drawImage:(id)image withBadge:(id)badge
{
  badgeCopy = badge;
  imageCopy = image;
  [imageCopy size];
  UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
  [imageCopy size];
  v8 = v7;
  [imageCopy size];
  [imageCopy drawInRect:{0.0, 0.0, v8, v9}];
  [imageCopy size];
  v11 = v10;
  [badgeCopy size];
  v13 = v11 - v12;
  [imageCopy size];
  v15 = v14;

  [badgeCopy size];
  v17 = v15 - v16;
  [badgeCopy size];
  v19 = v18;
  [badgeCopy size];
  [badgeCopy drawInRect:{v13, v17, v19, v20}];

  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v21;
}

@end