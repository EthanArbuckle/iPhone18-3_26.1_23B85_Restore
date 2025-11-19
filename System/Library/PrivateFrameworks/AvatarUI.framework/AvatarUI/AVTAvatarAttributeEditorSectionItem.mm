@interface AVTAvatarAttributeEditorSectionItem
- (AVTAvatarAttributeEditorSectionItem)initWithIdentifier:(id)a3 localizedName:(id)a4 thumbnailProvider:(id)a5 stickerResourceProvider:(id)a6 presetResourcesProvider:(id)a7 avatarUpdater:(id)a8 heightRatio:(double)a9 selected:(BOOL)a10;
- (NSString)description;
- (NSString)prefetchingIdentifier;
- (void)discardContent;
@end

@implementation AVTAvatarAttributeEditorSectionItem

- (AVTAvatarAttributeEditorSectionItem)initWithIdentifier:(id)a3 localizedName:(id)a4 thumbnailProvider:(id)a5 stickerResourceProvider:(id)a6 presetResourcesProvider:(id)a7 avatarUpdater:(id)a8 heightRatio:(double)a9 selected:(BOOL)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v37.receiver = self;
  v37.super_class = AVTAvatarAttributeEditorSectionItem;
  v23 = [(AVTAvatarAttributeEditorSectionItem *)&v37 init];
  if (v23)
  {
    v24 = [v17 copy];
    identifier = v23->_identifier;
    v23->_identifier = v24;

    v26 = [v18 copy];
    localizedName = v23->_localizedName;
    v23->_localizedName = v26;

    v28 = [v19 copy];
    thumbnailProvider = v23->_thumbnailProvider;
    v23->_thumbnailProvider = v28;

    v30 = [v20 copy];
    stickerResourceProvider = v23->_stickerResourceProvider;
    v23->_stickerResourceProvider = v30;

    v32 = [v21 copy];
    presetResourcesProvider = v23->_presetResourcesProvider;
    v23->_presetResourcesProvider = v32;

    v34 = [v22 copy];
    avatarUpdater = v23->_avatarUpdater;
    v23->_avatarUpdater = v34;

    v23->_heightRatio = a9;
    v23->_selected = a10;
  }

  return v23;
}

- (NSString)prefetchingIdentifier
{
  v2 = [(AVTAvatarAttributeEditorSectionItem *)self identifier];
  v3 = [v2 copy];

  return v3;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = AVTAvatarAttributeEditorSectionItem;
  v3 = [(AVTAvatarAttributeEditorSectionItem *)&v9 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTAvatarAttributeEditorSectionItem *)self identifier];
  v6 = [(AVTAvatarAttributeEditorSectionItem *)self localizedName];
  [v4 appendFormat:@" identifier: %@ name: %@", v5, v6];

  if ([(AVTAvatarAttributeEditorSectionItem *)self isSelected])
  {
    [v4 appendString:@" SELECTED"];
  }

  v7 = [v4 copy];

  return v7;
}

- (void)discardContent
{
  [(AVTAvatarAttributeEditorSectionItem *)self setCachedThumbnail:0];
  v3 = [(AVTAvatarAttributeEditorSectionItem *)self discardableContentHandler];

  if (v3)
  {
    v4 = [(AVTAvatarAttributeEditorSectionItem *)self discardableContentHandler];
    v4[2](v4, self);
  }
}

@end