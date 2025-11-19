@interface AAUIOBTrustedContactInviteMessageModel
- (AAUIOBTrustedContactInviteMessageModel)initWithModel:(id)a3;
- (NSString)description;
- (id)drawImage:(id)a3 withBadge:(id)a4;
@end

@implementation AAUIOBTrustedContactInviteMessageModel

- (AAUIOBTrustedContactInviteMessageModel)initWithModel:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E698B930];
  v6 = [v4 recipientHandle];
  v7 = [v5 contactInfoForHandle:v6];

  v30.receiver = self;
  v30.super_class = AAUIOBTrustedContactInviteMessageModel;
  v8 = [(AAUIOBTrustedContactInviteMessageModel *)&v30 init];
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v4 detailText];
    v11 = [v7 fullName];
    v12 = [v7 handle];
    v13 = [v9 stringWithFormat:v10, v11, v12];
    [(AAOBTrustedContactInviteMessageModel *)v8 setDetailText:v13];

    v14 = objc_opt_new();
    v15 = [v14 profilePictureForLocalContact:v7];
    v16 = [MEMORY[0x1E69DCAB8] iconForSize:@"com.apple.MobileSMS" bundleIdentifier:{15.0, 15.0}];
    v17 = [(AAUIOBTrustedContactInviteMessageModel *)v8 drawImage:v15 withBadge:v16];
    [(AAUIOBTrustedContactInviteMessageModel *)v8 setImage:v17];

    v18 = [v4 title];
    [(AAOBTrustedContactInviteMessageModel *)v8 setTitle:v18];

    v19 = [v4 primaryButton];
    [(AAOBTrustedContactInviteMessageModel *)v8 setPrimaryButton:v19];

    v20 = [v4 secondaryButton];
    [(AAOBTrustedContactInviteMessageModel *)v8 setSecondaryButton:v20];

    v21 = [v4 recipientHandle];
    [(AAOBTrustedContactInviteMessageModel *)v8 setRecipientHandle:v21];

    if ([v4 conformsToProtocol:&unk_1F44ED1D8])
    {
      v22 = [v4 bubbleText];
    }

    else
    {
      v22 = 0;
    }

    if ([v4 conformsToProtocol:&unk_1F4501600] && (objc_msgSend(v4, "messageURL"), (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = v23;
      v25 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v23 resolvingAgainstBaseURL:1];
      v26 = [[AAUIInvitePreviewMessageBubbleView alloc] initWithURLComponents:v25];
      contentView = v8->_contentView;
      v8->_contentView = &v26->super;
    }

    else
    {
      v28 = [[AAUIMessageBubbleView alloc] initWithText:v22];
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
  v4 = [(AAOBTrustedContactInviteMessageModel *)self imageName];
  v5 = [(AAOBTrustedContactInviteMessageModel *)self title];
  v6 = [(AAOBTrustedContactInviteMessageModel *)self detailText];
  v7 = [(AAOBTrustedContactInviteMessageModel *)self primaryButton];
  v8 = [(AAOBTrustedContactInviteMessageModel *)self secondaryButton];
  v9 = [(AAOBTrustedContactInviteMessageModel *)self helpLinkURL];
  v10 = [(AAOBTrustedContactInviteMessageModel *)self helpLinkTitle];
  v11 = [(AAOBTrustedContactInviteMessageModel *)self ownerHandle];
  v12 = [(AAOBTrustedContactInviteMessageModel *)self recipientHandle];
  v13 = [v3 stringWithFormat:@"imageName: %@\title: %@\ndetailText: %@\nprimaryButton: %@\nsecondaryButton: %@\nhelpLinkTitle: %@\nhelpLinkURL: %@\nownerHandle: %@\nrecipientHandle: %@\n", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (id)drawImage:(id)a3 withBadge:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 size];
  UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
  [v6 size];
  v8 = v7;
  [v6 size];
  [v6 drawInRect:{0.0, 0.0, v8, v9}];
  [v6 size];
  v11 = v10;
  [v5 size];
  v13 = v11 - v12;
  [v6 size];
  v15 = v14;

  [v5 size];
  v17 = v15 - v16;
  [v5 size];
  v19 = v18;
  [v5 size];
  [v5 drawInRect:{v13, v17, v19, v20}];

  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v21;
}

@end