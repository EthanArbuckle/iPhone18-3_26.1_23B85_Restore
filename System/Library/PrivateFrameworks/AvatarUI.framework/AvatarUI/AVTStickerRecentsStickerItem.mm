@interface AVTStickerRecentsStickerItem
- (AVTStickerRecentsStickerItem)initWithAvatarIdentifier:(id)identifier stickerName:(id)name localizedName:(id)localizedName stickerProvider:(id)provider;
- (void)discardContent;
@end

@implementation AVTStickerRecentsStickerItem

- (AVTStickerRecentsStickerItem)initWithAvatarIdentifier:(id)identifier stickerName:(id)name localizedName:(id)localizedName stickerProvider:(id)provider
{
  identifierCopy = identifier;
  nameCopy = name;
  localizedNameCopy = localizedName;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = AVTStickerRecentsStickerItem;
  v14 = [(AVTStickerRecentsStickerItem *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    avatarIdentifier = v14->_avatarIdentifier;
    v14->_avatarIdentifier = v15;

    v17 = [nameCopy copy];
    stickerName = v14->_stickerName;
    v14->_stickerName = v17;

    v19 = [localizedNameCopy copy];
    localizedDescription = v14->_localizedDescription;
    v14->_localizedDescription = v19;

    v21 = [providerCopy copy];
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