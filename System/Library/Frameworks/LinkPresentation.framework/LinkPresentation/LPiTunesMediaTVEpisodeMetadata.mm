@interface LPiTunesMediaTVEpisodeMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaTVEpisodeMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaTVEpisodeMetadata

- (LPiTunesMediaTVEpisodeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = LPiTunesMediaTVEpisodeMetadata;
  v5 = [(LPiTunesMediaTVEpisodeMetadata *)&v22 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(v4, @"episodeName");
    episodeName = v5->_episodeName;
    v5->_episodeName = v10;

    v12 = decodeStringForKey(v4, @"seasonName");
    seasonName = v5->_seasonName;
    v5->_seasonName = v12;

    v14 = decodeStringForKey(v4, @"genre");
    genre = v5->_genre;
    v5->_genre = v14;

    v16 = [v4 _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    v18 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v18;

    v20 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_episodeName forKey:@"episodeName"];
  [v4 _lp_encodeStringIfNotNil:self->_seasonName forKey:@"seasonName"];
  [v4 _lp_encodeStringIfNotNil:self->_genre forKey:@"genre"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaTVEpisodeMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaTVEpisodeMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaTVEpisodeMetadata *)self storeIdentifier];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaTVEpisodeMetadata *)self episodeName];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setEpisodeName:v7];

    v8 = [(LPiTunesMediaTVEpisodeMetadata *)self seasonName];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setSeasonName:v8];

    v9 = [(LPiTunesMediaTVEpisodeMetadata *)self genre];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setGenre:v9];

    v10 = [(LPiTunesMediaTVEpisodeMetadata *)self artwork];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setArtwork:v10];

    v11 = [(LPiTunesMediaTVEpisodeMetadata *)self artworkMetadata];
    [(LPiTunesMediaTVEpisodeMetadata *)v4 setArtworkMetadata:v11];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaTVEpisodeMetadata;
  if ([(LPiTunesMediaTVEpisodeMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:22];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [(LPiTunesMediaTVEpisodeMetadata *)self episodeName];
  v8 = [(LPiTunesMediaTVEpisodeMetadata *)self seasonName];
  populateCaptionBar(v5, v7, v8, 0, 1, v4);

  v9 = [(LPiTunesMediaTVEpisodeMetadata *)self artwork];
  [v4 _populateProperties:v5 withPrimaryImage:v9];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"TV Episode: %@ – %@");
  v6 = [(LPiTunesMediaTVEpisodeMetadata *)self episodeName];
  v7 = [(LPiTunesMediaTVEpisodeMetadata *)self seasonName];
  v8 = [v4 localizedStringWithFormat:v5, v6, v7];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v6 = a3;
  v4 = [(LPiTunesMediaTVEpisodeMetadata *)self episodeName];
  [v6 setTitle:v4];

  v5 = [(LPiTunesMediaTVEpisodeMetadata *)self artwork];
  [v6 setIcon:v5];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaTVEpisodeMetadata *)self storeIdentifier];

  return v3;
}

@end