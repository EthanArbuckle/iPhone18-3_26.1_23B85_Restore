@interface LPiTunesMediaTVEpisodeMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaTVEpisodeMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaTVEpisodeMetadata

- (LPiTunesMediaTVEpisodeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = LPiTunesMediaTVEpisodeMetadata;
  v5 = [(LPiTunesMediaTVEpisodeMetadata *)&v22 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"episodeName");
    episodeName = v5->_episodeName;
    v5->_episodeName = v10;

    v12 = decodeStringForKey(coderCopy, @"seasonName");
    seasonName = v5->_seasonName;
    v5->_seasonName = v12;

    v14 = decodeStringForKey(coderCopy, @"genre");
    genre = v5->_genre;
    v5->_genre = v14;

    v16 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    v18 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v18;

    v20 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_episodeName forKey:@"episodeName"];
  [coderCopy _lp_encodeStringIfNotNil:self->_seasonName forKey:@"seasonName"];
  [coderCopy _lp_encodeStringIfNotNil:self->_genre forKey:@"genre"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaTVEpisodeMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaTVEpisodeMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaTVEpisodeMetadata *)self storeIdentifier];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setStoreIdentifier:storeIdentifier];

    episodeName = [(LPiTunesMediaTVEpisodeMetadata *)self episodeName];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setEpisodeName:episodeName];

    seasonName = [(LPiTunesMediaTVEpisodeMetadata *)self seasonName];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setSeasonName:seasonName];

    genre = [(LPiTunesMediaTVEpisodeMetadata *)self genre];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setGenre:genre];

    artwork = [(LPiTunesMediaTVEpisodeMetadata *)self artwork];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaTVEpisodeMetadata *)self artworkMetadata];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaTVEpisodeMetadata;
  if ([(LPiTunesMediaTVEpisodeMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_episodeName) && objectsAreEqual_0(v6[5], self->_seasonName) && objectsAreEqual_0(v6[6], self->_genre) && objectsAreEqual_0(v6[7], self->_artwork))
      {
        v5 = objectsAreEqual_0(v6[8], self->_artworkMetadata);
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
  v5 = [transformerCopy commonPresentationPropertiesForStyle:22];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  episodeName = [(LPiTunesMediaTVEpisodeMetadata *)self episodeName];
  seasonName = [(LPiTunesMediaTVEpisodeMetadata *)self seasonName];
  populateCaptionBar(v5, episodeName, seasonName, 0, 1, transformerCopy);

  artwork = [(LPiTunesMediaTVEpisodeMetadata *)self artwork];
  [transformerCopy _populateProperties:v5 withPrimaryImage:artwork];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"TV Episode: %@ – %@");
  episodeName = [(LPiTunesMediaTVEpisodeMetadata *)self episodeName];
  seasonName = [(LPiTunesMediaTVEpisodeMetadata *)self seasonName];
  v8 = [v4 localizedStringWithFormat:v5, episodeName, seasonName];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  episodeName = [(LPiTunesMediaTVEpisodeMetadata *)self episodeName];
  [compatibilityCopy setTitle:episodeName];

  artwork = [(LPiTunesMediaTVEpisodeMetadata *)self artwork];
  [compatibilityCopy setIcon:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaTVEpisodeMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end