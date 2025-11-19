@interface AVTStickerRecentsStickerItem
- (AVTStickerRecentsStickerItem)initWithAvatarIdentifier:(id)a3 stickerName:(id)a4 localizedName:(id)a5 stickerProvider:(id)a6;
- (void)discardContent;
@end

@implementation AVTStickerRecentsStickerItem

- (AVTStickerRecentsStickerItem)initWithAvatarIdentifier:(id)a3 stickerName:(id)a4 localizedName:(id)a5 stickerProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = AVTStickerRecentsStickerItem;
  v14 = [(AVTStickerRecentsStickerItem *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    avatarIdentifier = v14->_avatarIdentifier;
    v14->_avatarIdentifier = v15;

    v17 = [v11 copy];
    stickerName = v14->_stickerName;
    v14->_stickerName = v17;

    v19 = [v12 copy];
    localizedDescription = v14->_localizedDescription;
    v14->_localizedDescription = v19;

    v21 = [v13 copy];
    provider = v14->_provider;
    v14->_provider = v21;
  }

  return v14;
}

- (void)discardContent
{
  [(AVTStickerRecentsStickerItem *)self setImage:0];
  discardableContentHandler = self->discardableContentHandler;
  if (discardableContentHandler)
  {
    v4 = *(discardableContentHandler + 2);

    v4();
  }
}

@end