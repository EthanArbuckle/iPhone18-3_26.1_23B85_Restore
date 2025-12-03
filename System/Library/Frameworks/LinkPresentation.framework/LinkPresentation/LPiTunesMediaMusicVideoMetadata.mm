@interface LPiTunesMediaMusicVideoMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaMusicVideoMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaMusicVideoMetadata

- (LPiTunesMediaMusicVideoMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = LPiTunesMediaMusicVideoMetadata;
  v5 = [(LPiTunesMediaMusicVideoMetadata *)&v20 init];
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

    v12 = decodeStringForKey(coderCopy, @"artist");
    artist = v5->_artist;
    v5->_artist = v12;

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
  [coderCopy _lp_encodeStringIfNotNil:self->_artist forKey:@"artist"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaMusicVideoMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaMusicVideoMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaMusicVideoMetadata *)self storeIdentifier];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaMusicVideoMetadata *)self name];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setName:name];

    artist = [(LPiTunesMediaMusicVideoMetadata *)self artist];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setArtist:artist];

    artwork = [(LPiTunesMediaMusicVideoMetadata *)self artwork];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaMusicVideoMetadata *)self artworkMetadata];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaMusicVideoMetadata;
  if ([(LPiTunesMediaMusicVideoMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_name) && objectsAreEqual_0(v6[5], self->_artist) && objectsAreEqual_0(v6[6], self->_artwork))
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
  v5 = [transformerCopy commonPresentationPropertiesForStyle:8];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  name = [(LPiTunesMediaMusicVideoMetadata *)self name];
  artist = [(LPiTunesMediaMusicVideoMetadata *)self artist];
  v9 = appleMusicWordmark(transformerCopy);
  populateCaptionBar(v5, name, artist, v9, 1, transformerCopy);

  artwork = [(LPiTunesMediaMusicVideoMetadata *)self artwork];
  [transformerCopy _populateProperties:v5 withPrimaryImage:artwork];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Music Video: %@ – %@");
  name = [(LPiTunesMediaMusicVideoMetadata *)self name];
  artist = [(LPiTunesMediaMusicVideoMetadata *)self artist];
  v8 = [v4 localizedStringWithFormat:v5, name, artist];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaMusicVideoMetadata *)self name];
  artist = [(LPiTunesMediaMusicVideoMetadata *)self artist];
  v6 = joinedByEmDash(name, artist);
  [compatibilityCopy setTitle:v6];

  artwork = [(LPiTunesMediaMusicVideoMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaMusicVideoMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end