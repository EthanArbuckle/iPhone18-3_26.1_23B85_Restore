@interface LPiTunesMediaSoftwareMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaSoftwareMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaSoftwareMetadata

- (LPiTunesMediaSoftwareMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = LPiTunesMediaSoftwareMetadata;
  v5 = [(LPiTunesMediaSoftwareMetadata *)&v28 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    v7 = *&v5->_isMessagesOnlyApp;
    *&v5->_isMessagesOnlyApp = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v8;

    v10 = decodeStringForKey(v4, @"name");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;

    v12 = decodeStringForKey(v4, @"subtitle");
    name = v5->_name;
    v5->_name = v12;

    v14 = decodeStringForKey(v4, @"genre");
    subtitle = v5->_subtitle;
    v5->_subtitle = v14;

    v16 = decodeStringForKey(v4, @"platform");
    genre = v5->_genre;
    v5->_genre = v16;

    v18 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    platform = v5->_platform;
    v5->_platform = v18;

    v20 = [v4 _lp_strictlyDecodeArrayOfLPImagesForKey:@"screenshots"];
    icon = v5->_icon;
    v5->_icon = v20;

    v22 = [v4 _lp_strictlyDecodeLPVideoForKey:@"previewVideo"];
    screenshots = v5->_screenshots;
    v5->_screenshots = v22;

    *(&v5->super.__disallowsURLOverrideByDelegate + 1) = [v4 decodeBoolForKey:@"isMessagesOnlyApp"];
    v24 = [v4 _lp_strictlyDecodeLPImageForKey:@"messagesAppIcon"];
    previewVideo = v5->_previewVideo;
    v5->_previewVideo = v24;

    v26 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:*&self->_isMessagesOnlyApp forKey:@"storeFrontIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"name"];
  [v4 _lp_encodeStringIfNotNil:self->_name forKey:@"subtitle"];
  [v4 _lp_encodeStringIfNotNil:self->_subtitle forKey:@"genre"];
  [v4 _lp_encodeStringIfNotNil:self->_genre forKey:@"platform"];
  [v4 _lp_encodeObjectIfNotNil:self->_platform forKey:@"icon"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"screenshots"];
  [v4 _lp_encodeObjectIfNotNil:self->_screenshots forKey:@"previewVideo"];
  [v4 encodeBool:*(&self->super.__disallowsURLOverrideByDelegate + 1) forKey:@"isMessagesOnlyApp"];
  [v4 _lp_encodeObjectIfNotNil:self->_previewVideo forKey:@"messagesAppIcon"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaSoftwareMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaSoftwareMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaSoftwareMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaSoftwareMetadata *)self storeIdentifier];
    [(LPiTunesMediaSoftwareMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaSoftwareMetadata *)self name];
    [(LPiTunesMediaSoftwareMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaSoftwareMetadata *)self subtitle];
    [(LPiTunesMediaSoftwareMetadata *)v4 setSubtitle:v8];

    v9 = [(LPiTunesMediaSoftwareMetadata *)self genre];
    [(LPiTunesMediaSoftwareMetadata *)v4 setGenre:v9];

    v10 = [(LPiTunesMediaSoftwareMetadata *)self platform];
    [(LPiTunesMediaSoftwareMetadata *)v4 setPlatform:v10];

    v11 = [(LPiTunesMediaSoftwareMetadata *)self icon];
    [(LPiTunesMediaSoftwareMetadata *)v4 setIcon:v11];

    v12 = [(LPiTunesMediaSoftwareMetadata *)self screenshots];
    [(LPiTunesMediaSoftwareMetadata *)v4 setScreenshots:v12];

    v13 = [(LPiTunesMediaSoftwareMetadata *)self previewVideo];
    [(LPiTunesMediaSoftwareMetadata *)v4 setPreviewVideo:v13];

    [(LPiTunesMediaSoftwareMetadata *)v4 setIsMessagesOnlyApp:[(LPiTunesMediaSoftwareMetadata *)self isMessagesOnlyApp]];
    v14 = [(LPiTunesMediaSoftwareMetadata *)self messagesAppIcon];
    [(LPiTunesMediaSoftwareMetadata *)v4 setMessagesAppIcon:v14];

    v15 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaSoftwareMetadata;
  if ([(LPiTunesMediaSoftwareMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = a3;
  v3[2](v3, @"icon");
  v3[2](v3, @"screenshots");
  v3[2](v3, @"messagesAppIcon");
  v3[2](v3, @"previewVideo");
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  if ([(LPiTunesMediaSoftwareMetadata *)self isMessagesOnlyApp])
  {
    v5 = 4;
    v6 = 18;
  }

  else
  {
    v7 = [(LPiTunesMediaSoftwareMetadata *)self platform];
    v8 = [v7 isEqualToString:@"iOS"];

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
  v11 = [v4 commonPresentationPropertiesForStyle:v6];
  v12 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v11 setCaptionBar:v12];

  v13 = [(LPiTunesMediaSoftwareMetadata *)self name];
  v14 = [(LPiTunesMediaSoftwareMetadata *)self subtitle];
  v15 = v14;
  if (!v14)
  {
    v15 = [(LPiTunesMediaSoftwareMetadata *)self genre];
  }

  populateCaptionBar(v11, v13, v15, 0, 0, v4);
  if (!v14)
  {
  }

  v16 = [(LPiTunesMediaSoftwareMetadata *)self subtitle];
  if (v16)
  {
    v17 = &unk_1F2483488;
  }

  else
  {
    v17 = &unk_1F24834A0;
  }

  v18 = [v11 captionBar];
  v19 = [v18 bottom];
  v20 = [v19 leading];
  [v20 setMaximumNumberOfLines:v17];

  if (![(LPiTunesMediaSoftwareMetadata *)self isMessagesOnlyApp]|| ([(LPiTunesMediaSoftwareMetadata *)self messagesAppIcon], v21 = objc_claimAutoreleasedReturnValue(), v10[2](v10, v21), v22 = objc_claimAutoreleasedReturnValue(), v21, !v22))
  {
    v23 = [(LPiTunesMediaSoftwareMetadata *)self icon];
    v22 = v10[2](v10, v23);
  }

  [v4 _populateProperties:v11 withPrimaryIcon:v22 iconProperties:0 canBecomeImage:0];
  v24 = [(LPiTunesMediaSoftwareMetadata *)self screenshots];
  v25 = [v24 firstObject];
  [v11 setImage:v25];

  v26 = [(LPiTunesMediaSoftwareMetadata *)self previewVideo];
  [v11 setVideo:v26];

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

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"App Store: %@");
  v6 = [(LPiTunesMediaSoftwareMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, v6];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v8 = a3;
  v4 = [(LPiTunesMediaSoftwareMetadata *)self name];
  [v8 setTitle:v4];

  v5 = [(LPiTunesMediaSoftwareMetadata *)self icon];
  [v8 setIcon:v5];

  v6 = [(LPiTunesMediaSoftwareMetadata *)self screenshots];
  v7 = [v6 firstObject];
  [v8 setImage:v7];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaSoftwareMetadata *)self storeIdentifier];

  return v3;
}

@end