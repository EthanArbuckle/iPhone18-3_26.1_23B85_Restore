@interface LPiTunesMediaSoftwareMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaSoftwareMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaSoftwareMetadata

- (LPiTunesMediaSoftwareMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = LPiTunesMediaSoftwareMetadata;
  v5 = [(LPiTunesMediaSoftwareMetadata *)&v28 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    v7 = *&v5->_isMessagesOnlyApp;
    *&v5->_isMessagesOnlyApp = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"name");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;

    v12 = decodeStringForKey(coderCopy, @"subtitle");
    name = v5->_name;
    v5->_name = v12;

    v14 = decodeStringForKey(coderCopy, @"genre");
    subtitle = v5->_subtitle;
    v5->_subtitle = v14;

    v16 = decodeStringForKey(coderCopy, @"platform");
    genre = v5->_genre;
    v5->_genre = v16;

    v18 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    platform = v5->_platform;
    v5->_platform = v18;

    v20 = [coderCopy _lp_strictlyDecodeArrayOfLPImagesForKey:@"screenshots"];
    icon = v5->_icon;
    v5->_icon = v20;

    v22 = [coderCopy _lp_strictlyDecodeLPVideoForKey:@"previewVideo"];
    screenshots = v5->_screenshots;
    v5->_screenshots = v22;

    *(&v5->super.__disallowsURLOverrideByDelegate + 1) = [coderCopy decodeBoolForKey:@"isMessagesOnlyApp"];
    v24 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"messagesAppIcon"];
    previewVideo = v5->_previewVideo;
    v5->_previewVideo = v24;

    v26 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:*&self->_isMessagesOnlyApp forKey:@"storeFrontIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"name"];
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"subtitle"];
  [coderCopy _lp_encodeStringIfNotNil:self->_subtitle forKey:@"genre"];
  [coderCopy _lp_encodeStringIfNotNil:self->_genre forKey:@"platform"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_platform forKey:@"icon"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"screenshots"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_screenshots forKey:@"previewVideo"];
  [coderCopy encodeBool:*(&self->super.__disallowsURLOverrideByDelegate + 1) forKey:@"isMessagesOnlyApp"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_previewVideo forKey:@"messagesAppIcon"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaSoftwareMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaSoftwareMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaSoftwareMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaSoftwareMetadata *)self storeIdentifier];
    [(LPiTunesMediaSoftwareMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaSoftwareMetadata *)self name];
    [(LPiTunesMediaSoftwareMetadata *)v4 setName:name];

    subtitle = [(LPiTunesMediaSoftwareMetadata *)self subtitle];
    [(LPiTunesMediaSoftwareMetadata *)v4 setSubtitle:subtitle];

    genre = [(LPiTunesMediaSoftwareMetadata *)self genre];
    [(LPiTunesMediaSoftwareMetadata *)v4 setGenre:genre];

    platform = [(LPiTunesMediaSoftwareMetadata *)self platform];
    [(LPiTunesMediaSoftwareMetadata *)v4 setPlatform:platform];

    icon = [(LPiTunesMediaSoftwareMetadata *)self icon];
    [(LPiTunesMediaSoftwareMetadata *)v4 setIcon:icon];

    screenshots = [(LPiTunesMediaSoftwareMetadata *)self screenshots];
    [(LPiTunesMediaSoftwareMetadata *)v4 setScreenshots:screenshots];

    previewVideo = [(LPiTunesMediaSoftwareMetadata *)self previewVideo];
    [(LPiTunesMediaSoftwareMetadata *)v4 setPreviewVideo:previewVideo];

    [(LPiTunesMediaSoftwareMetadata *)v4 setIsMessagesOnlyApp:[(LPiTunesMediaSoftwareMetadata *)self isMessagesOnlyApp]];
    messagesAppIcon = [(LPiTunesMediaSoftwareMetadata *)self messagesAppIcon];
    [(LPiTunesMediaSoftwareMetadata *)v4 setMessagesAppIcon:messagesAppIcon];

    v15 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaSoftwareMetadata;
  if ([(LPiTunesMediaSoftwareMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], *&self->_isMessagesOnlyApp) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeFrontIdentifier) && objectsAreEqual_0(v6[4], self->_storeIdentifier) && objectsAreEqual_0(v6[5], self->_name) && objectsAreEqual_0(v6[6], self->_subtitle) && objectsAreEqual_0(v6[7], self->_genre) && objectsAreEqual_0(v6[8], self->_platform) && objectsAreEqual_0(v6[9], self->_icon) && objectsAreEqual_0(v6[10], self->_screenshots) && *(v6 + 11) == *(&self->super.__disallowsURLOverrideByDelegate + 1))
      {
        v5 = objectsAreEqual_0(v6[11], self->_previewVideo);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_enumerateAsynchronousFields:(id)fields
{
  fieldsCopy = fields;
  fieldsCopy[2](fieldsCopy, @"icon");
  fieldsCopy[2](fieldsCopy, @"screenshots");
  fieldsCopy[2](fieldsCopy, @"messagesAppIcon");
  fieldsCopy[2](fieldsCopy, @"previewVideo");
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  if ([(LPiTunesMediaSoftwareMetadata *)self isMessagesOnlyApp])
  {
    v5 = 4;
    v6 = 18;
  }

  else
  {
    platform = [(LPiTunesMediaSoftwareMetadata *)self platform];
    v8 = [platform isEqualToString:@"iOS"];

    v9 = v8 == 0;
    if (v8)
    {
      v6 = 12;
    }

    else
    {
      v6 = 11;
    }

    v5 = 1;
    if (v9)
    {
      v5 = 2;
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__LPiTunesMediaSoftwareMetadata_Transformer__presentationPropertiesForTransformer___block_invoke;
  aBlock[3] = &__block_descriptor_40_e26___LPImage_16__0__LPImage_8l;
  aBlock[4] = v5;
  v10 = _Block_copy(aBlock);
  v11 = [transformerCopy commonPresentationPropertiesForStyle:v6];
  v12 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v11 setCaptionBar:v12];

  name = [(LPiTunesMediaSoftwareMetadata *)self name];
  subtitle = [(LPiTunesMediaSoftwareMetadata *)self subtitle];
  genre = subtitle;
  if (!subtitle)
  {
    genre = [(LPiTunesMediaSoftwareMetadata *)self genre];
  }

  populateCaptionBar(v11, name, genre, 0, 0, transformerCopy);
  if (!subtitle)
  {
  }

  subtitle2 = [(LPiTunesMediaSoftwareMetadata *)self subtitle];
  if (subtitle2)
  {
    v17 = &unk_1F2483488;
  }

  else
  {
    v17 = &unk_1F24834A0;
  }

  captionBar = [v11 captionBar];
  bottom = [captionBar bottom];
  leading = [bottom leading];
  [leading setMaximumNumberOfLines:v17];

  if (![(LPiTunesMediaSoftwareMetadata *)self isMessagesOnlyApp]|| ([(LPiTunesMediaSoftwareMetadata *)self messagesAppIcon], v21 = objc_claimAutoreleasedReturnValue(), v10[2](v10, v21), v22 = objc_claimAutoreleasedReturnValue(), v21, !v22))
  {
    icon = [(LPiTunesMediaSoftwareMetadata *)self icon];
    v22 = v10[2](v10, icon);
  }

  [transformerCopy _populateProperties:v11 withPrimaryIcon:v22 iconProperties:0 canBecomeImage:0];
  screenshots = [(LPiTunesMediaSoftwareMetadata *)self screenshots];
  firstObject = [screenshots firstObject];
  [v11 setImage:firstObject];

  previewVideo = [(LPiTunesMediaSoftwareMetadata *)self previewVideo];
  [v11 setVideo:previewVideo];

  return v11;
}

id __83__LPiTunesMediaSoftwareMetadata_Transformer__presentationPropertiesForTransformer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 properties];
  v5 = [v4 type];

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v7 = [v3 properties];
    if (v7)
    {
      v8 = [v3 properties];
      v9 = [v8 copy];
    }

    else
    {
      v9 = objc_alloc_init(LPImageProperties);
    }

    [(LPImageProperties *)v9 setType:*(a1 + 32)];
    v6 = [[LPImage alloc] _initWithImage:v3 properties:v9];
  }

  return v6;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"App Store: %@");
  name = [(LPiTunesMediaSoftwareMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, name];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaSoftwareMetadata *)self name];
  [compatibilityCopy setTitle:name];

  icon = [(LPiTunesMediaSoftwareMetadata *)self icon];
  [compatibilityCopy setIcon:icon];

  screenshots = [(LPiTunesMediaSoftwareMetadata *)self screenshots];
  firstObject = [screenshots firstObject];
  [compatibilityCopy setImage:firstObject];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaSoftwareMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end