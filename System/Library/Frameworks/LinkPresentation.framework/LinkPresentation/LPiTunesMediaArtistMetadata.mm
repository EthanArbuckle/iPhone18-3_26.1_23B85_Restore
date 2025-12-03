@interface LPiTunesMediaArtistMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaArtistMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaArtistMetadata

- (LPiTunesMediaArtistMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = LPiTunesMediaArtistMetadata;
  v5 = [(LPiTunesMediaArtistMetadata *)&v20 init];
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
  v4 = [LPiTunesMediaArtistMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaArtistMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaArtistMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaArtistMetadata *)self storeIdentifier];
    [(LPiTunesMediaArtistMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaArtistMetadata *)self name];
    [(LPiTunesMediaArtistMetadata *)v4 setName:name];

    genre = [(LPiTunesMediaArtistMetadata *)self genre];
    [(LPiTunesMediaArtistMetadata *)v4 setGenre:genre];

    artwork = [(LPiTunesMediaArtistMetadata *)self artwork];
    [(LPiTunesMediaArtistMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaArtistMetadata *)self artworkMetadata];
    [(LPiTunesMediaArtistMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaArtistMetadata;
  if ([(LPiTunesMediaArtistMetadata *)&v8 isEqual:equalCopy])
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
  v5 = [transformerCopy commonPresentationPropertiesForStyle:7];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  if ([transformerCopy effectiveSizeClass] == 2)
  {
    name = [(LPiTunesMediaArtistMetadata *)self name];
    v8 = LPLocalizedString(@"Artist");
    v9 = appleMusicWordmark(transformerCopy);
    populateCaptionBar(v5, name, v8, v9, 1, transformerCopy);
  }

  else
  {
    name = [(LPiTunesMediaArtistMetadata *)self name];
    v8 = appleMusicWordmark(transformerCopy);
    populateCaptionBar(v5, name, 0, v8, 1, transformerCopy);
  }

  artwork = [(LPiTunesMediaArtistMetadata *)self artwork];
  [transformerCopy _populateProperties:v5 withPrimaryImage:artwork];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Artist: %@");
  name = [(LPiTunesMediaArtistMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, name];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaArtistMetadata *)self name];
  [compatibilityCopy setTitle:name];

  artwork = [(LPiTunesMediaArtistMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaArtistMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end