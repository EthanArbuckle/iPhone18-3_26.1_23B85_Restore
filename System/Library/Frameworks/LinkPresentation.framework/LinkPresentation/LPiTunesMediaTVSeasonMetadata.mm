@interface LPiTunesMediaTVSeasonMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaTVSeasonMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaTVSeasonMetadata

- (LPiTunesMediaTVSeasonMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = LPiTunesMediaTVSeasonMetadata;
  v5 = [(LPiTunesMediaTVSeasonMetadata *)&v20 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v10;

    v12 = decodeStringForKey(coderCopy, @"genre");
    genre = v5->_genre;
    v5->_genre = v12;

    v14 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [coderCopy _lp_encodeStringIfNotNil:self->_genre forKey:@"genre"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaTVSeasonMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaTVSeasonMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaTVSeasonMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaTVSeasonMetadata *)self storeIdentifier];
    [(LPiTunesMediaTVSeasonMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaTVSeasonMetadata *)self name];
    [(LPiTunesMediaTVSeasonMetadata *)v4 setName:name];

    genre = [(LPiTunesMediaTVSeasonMetadata *)self genre];
    [(LPiTunesMediaTVSeasonMetadata *)v4 setGenre:genre];

    artwork = [(LPiTunesMediaTVSeasonMetadata *)self artwork];
    [(LPiTunesMediaTVSeasonMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaTVSeasonMetadata *)self artworkMetadata];
    [(LPiTunesMediaTVSeasonMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaTVSeasonMetadata;
  if ([(LPiTunesMediaTVSeasonMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:21];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  name = [(LPiTunesMediaTVSeasonMetadata *)self name];
  genre = [(LPiTunesMediaTVSeasonMetadata *)self genre];
  populateCaptionBar(v5, name, genre, 0, 0, transformerCopy);

  artwork = [(LPiTunesMediaTVSeasonMetadata *)self artwork];
  [transformerCopy _populateProperties:v5 withPrimaryImage:artwork];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"TV Season: %@");
  name = [(LPiTunesMediaTVSeasonMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, name];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaTVSeasonMetadata *)self name];
  [compatibilityCopy setTitle:name];

  artwork = [(LPiTunesMediaTVSeasonMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaTVSeasonMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end