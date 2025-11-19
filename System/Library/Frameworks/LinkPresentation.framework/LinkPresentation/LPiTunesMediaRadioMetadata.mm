@interface LPiTunesMediaRadioMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaRadioMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaRadioMetadata

- (LPiTunesMediaRadioMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LPiTunesMediaRadioMetadata;
  v5 = [(LPiTunesMediaRadioMetadata *)&v20 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(v4, @"name");
    name = v5->_name;
    v5->_name = v10;

    v12 = decodeStringForKey(v4, @"curator");
    curator = v5->_curator;
    v5->_curator = v12;

    v14 = [v4 _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [v4 _lp_encodeStringIfNotNil:self->_curator forKey:@"curator"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaRadioMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaRadioMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaRadioMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaRadioMetadata *)self storeIdentifier];
    [(LPiTunesMediaRadioMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaRadioMetadata *)self name];
    [(LPiTunesMediaRadioMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaRadioMetadata *)self curator];
    [(LPiTunesMediaRadioMetadata *)v4 setCurator:v8];

    v9 = [(LPiTunesMediaRadioMetadata *)self artwork];
    [(LPiTunesMediaRadioMetadata *)v4 setArtwork:v9];

    v10 = [(LPiTunesMediaRadioMetadata *)self artworkMetadata];
    [(LPiTunesMediaRadioMetadata *)v4 setArtworkMetadata:v10];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaRadioMetadata;
  if ([(LPiTunesMediaRadioMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_name) && objectsAreEqual_0(v6[5], self->_curator) && objectsAreEqual_0(v6[6], self->_artwork))
      {
        v5 = objectsAreEqual_0(v6[7], self->_artworkMetadata);
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v5 = a3;
  v6 = [v5 commonPresentationPropertiesForStyle:10];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  v8 = [(LPiTunesMediaRadioMetadata *)self curator];
  if (!v8)
  {
    if ([v5 effectiveSizeClass] == 2)
    {
      v8 = LPLocalizedString(@"Radio");
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = [(LPiTunesMediaRadioMetadata *)self name];
  v10 = appleMusicWordmark(v5);
  populateCaptionBar(v6, v9, v8, v10, 1, v5);

  v11 = [(LPiTunesMediaRadioMetadata *)self artwork];
  [v5 _populateProperties:v6 withPrimaryImage:v11];

  v12 = [(LPiTunesMediaRadioMetadata *)self storeIdentifier];
  v13 = [(LPiTunesMediaRadioMetadata *)self storeFrontIdentifier];
  v14 = v13;
  if (!v13)
  {
    v3 = [v5 canonicalURL];
    v14 = storefrontIdentifierFromURL(v3);
  }

  v15 = [LPInlineMediaPlaybackInformation radioPlaybackInformationWithStoreIdentifier:v12 storefrontIdentifier:v14];
  if (!v13)
  {
  }

  [v6 setInlinePlaybackInformation:v15];

  return v6;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = [(LPiTunesMediaRadioMetadata *)self name];
  if (v4 && (v5 = v4, [(LPiTunesMediaRadioMetadata *)self curator], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"Radio: %@ – %@");
    v9 = [(LPiTunesMediaRadioMetadata *)self name];
    v10 = [(LPiTunesMediaRadioMetadata *)self curator];
    v11 = [v7 localizedStringWithFormat:v8, v9, v10];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"Radio: %@");
    v9 = [(LPiTunesMediaRadioMetadata *)self name];
    v11 = [v12 localizedStringWithFormat:v8, v9];
  }

  return v11;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v10 = a3;
  v4 = [(LPiTunesMediaRadioMetadata *)self name];
  if (v4 && ([(LPiTunesMediaRadioMetadata *)self curator], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(LPiTunesMediaRadioMetadata *)self name];
    v7 = [(LPiTunesMediaRadioMetadata *)self curator];
    v8 = joinedByEmDash(v6, v7);
    [v10 setTitle:v8];
  }

  else
  {
    v6 = [(LPiTunesMediaRadioMetadata *)self name];
    [v10 setTitle:v6];
  }

  v9 = [(LPiTunesMediaRadioMetadata *)self artwork];
  [v10 setImage:v9];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaRadioMetadata *)self storeIdentifier];

  return v3;
}

@end