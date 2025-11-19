@interface LPiTunesMediaMovieBundleMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaMovieBundleMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaMovieBundleMetadata

- (LPiTunesMediaMovieBundleMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LPiTunesMediaMovieBundleMetadata;
  v5 = [(LPiTunesMediaMovieBundleMetadata *)&v20 init];
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

    v12 = decodeStringForKey(v4, @"genre");
    genre = v5->_genre;
    v5->_genre = v12;

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
  [v4 _lp_encodeStringIfNotNil:self->_genre forKey:@"genre"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaMovieBundleMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaMovieBundleMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaMovieBundleMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaMovieBundleMetadata *)self storeIdentifier];
    [(LPiTunesMediaMovieBundleMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaMovieBundleMetadata *)self name];
    [(LPiTunesMediaMovieBundleMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaMovieBundleMetadata *)self genre];
    [(LPiTunesMediaMovieBundleMetadata *)v4 setGenre:v8];

    v9 = [(LPiTunesMediaMovieBundleMetadata *)self artwork];
    [(LPiTunesMediaMovieBundleMetadata *)v4 setArtwork:v9];

    v10 = [(LPiTunesMediaMovieBundleMetadata *)self artworkMetadata];
    [(LPiTunesMediaMovieBundleMetadata *)v4 setArtworkMetadata:v10];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaMovieBundleMetadata;
  if ([(LPiTunesMediaMovieBundleMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_name) && objectsAreEqual_0(v6[5], self->_genre) && objectsAreEqual_0(v6[6], self->_artwork))
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
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:23];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [(LPiTunesMediaMovieBundleMetadata *)self name];
  v8 = [(LPiTunesMediaMovieBundleMetadata *)self genre];
  v9 = LPLocalizedString(@" iTunes");
  populateCaptionBar(v5, v7, v8, v9, 0, v4);

  v10 = [(LPiTunesMediaMovieBundleMetadata *)self artwork];
  [v4 _populateProperties:v5 withPrimaryImage:v10];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Movie Bundle: %@");
  v6 = [(LPiTunesMediaMovieBundleMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, v6];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v6 = a3;
  v4 = [(LPiTunesMediaMovieBundleMetadata *)self name];
  [v6 setTitle:v4];

  v5 = [(LPiTunesMediaMovieBundleMetadata *)self artwork];
  [v6 setImage:v5];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaMovieBundleMetadata *)self storeIdentifier];

  return v3;
}

@end