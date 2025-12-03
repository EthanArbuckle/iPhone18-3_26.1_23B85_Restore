@interface AVTAvatarAttributeEditorSectionItem
- (AVTAvatarAttributeEditorSectionItem)initWithIdentifier:(id)identifier localizedName:(id)name thumbnailProvider:(id)provider stickerResourceProvider:(id)resourceProvider presetResourcesProvider:(id)resourcesProvider avatarUpdater:(id)updater heightRatio:(double)ratio selected:(BOOL)self0;
- (NSString)description;
- (NSString)prefetchingIdentifier;
- (void)discardContent;
@end

@implementation AVTAvatarAttributeEditorSectionItem

- (AVTAvatarAttributeEditorSectionItem)initWithIdentifier:(id)identifier localizedName:(id)name thumbnailProvider:(id)provider stickerResourceProvider:(id)resourceProvider presetResourcesProvider:(id)resourcesProvider avatarUpdater:(id)updater heightRatio:(double)ratio selected:(BOOL)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  providerCopy = provider;
  resourceProviderCopy = resourceProvider;
  resourcesProviderCopy = resourcesProvider;
  updaterCopy = updater;
  v37.receiver = self;
  v37.super_class = AVTAvatarAttributeEditorSectionItem;
  v23 = [(AVTAvatarAttributeEditorSectionItem *)&v37 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    identifier = v23->_identifier;
    v23->_identifier = v24;

    v26 = [nameCopy copy];
    localizedName = v23->_localizedName;
    v23->_localizedName = v26;

    v28 = [providerCopy copy];
    thumbnailProvider = v23->_thumbnailProvider;
    v23->_thumbnailProvider = v28;

    v30 = [resourceProviderCopy copy];
    stickerResourceProvider = v23->_stickerResourceProvider;
    v23->_stickerResourceProvider = v30;

    v32 = [resourcesProviderCopy copy];
    presetResourcesProvider = v23->_presetResourcesProvider;
    v23->_presetResourcesProvider = v32;

    v34 = [updaterCopy copy];
    avatarUpdater = v23->_avatarUpdater;
    v23->_avatarUpdater = v34;

    v23->_heightRatio = ratio;
    v23->_selected = selected;
  }

  return v23;
}

- (NSString)prefetchingIdentifier
{
  identifier = [(AVTAvatarAttributeEditorSectionItem *)self identifier];
  v3 = [identifier copy];

  return v3;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = AVTAvatarAttributeEditorSectionItem;
  v3 = [(AVTAvatarAttributeEditorSectionItem *)&v9 description];
  v4 = [v3 mutableCopy];

  identifier = [(AVTAvatarAttributeEditorSectionItem *)self identifier];
  localizedName = [(AVTAvatarAttributeEditorSectionItem *)self localizedName];
  [v4 appendFormat:@" identifier: %@ name: %@", identifier, localizedName];

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
  discardableContentHandler = [(AVTAvatarAttributeEditorSectionItem *)self discardableContentHandler];

  if (discardableContentHandler)
  {
    discardableContentHandler2 = [(AVTAvatarAttributeEditorSectionItem *)self discardableContentHandler];
    discardableContentHandler2[2](discardableContentHandler2, self);
  }
}

@end