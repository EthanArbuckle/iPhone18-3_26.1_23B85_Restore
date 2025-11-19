@interface LPiTunesMediaMusicVideoMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaMusicVideoMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaMusicVideoMetadata

- (LPiTunesMediaMusicVideoMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LPiTunesMediaMusicVideoMetadata;
  v5 = [(LPiTunesMediaMusicVideoMetadata *)&v20 init];
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

    v12 = decodeStringForKey(v4, @"artist");
    artist = v5->_artist;
    v5->_artist = v12;

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
  [v4 _lp_encodeStringIfNotNil:self->_artist forKey:@"artist"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaMusicVideoMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaMusicVideoMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaMusicVideoMetadata *)self storeIdentifier];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaMusicVideoMetadata *)self name];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaMusicVideoMetadata *)self artist];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setArtist:v8];

    v9 = [(LPiTunesMediaMusicVideoMetadata *)self artwork];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setArtwork:v9];

    v10 = [(LPiTunesMediaMusicVideoMetadata *)self artworkMetadata];
    [(LPiTunesMediaMusicVideoMetadata *)v4 setArtworkMetadata:v10];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaMusicVideoMetadata;
  if ([(LPiTunesMediaMusicVideoMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:8];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [(LPiTunesMediaMusicVideoMetadata *)self name];
  v8 = [(LPiTunesMediaMusicVideoMetadata *)self artist];
  v9 = appleMusicWordmark(v4);
  populateCaptionBar(v5, v7, v8, v9, 1, v4);

  v10 = [(LPiTunesMediaMusicVideoMetadata *)self artwork];
  [v4 _populateProperties:v5 withPrimaryImage:v10];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Music Video: %@ – %@");
  v6 = [(LPiTunesMediaMusicVideoMetadata *)self name];
  v7 = [(LPiTunesMediaMusicVideoMetadata *)self artist];
  v8 = [v4 localizedStringWithFormat:v5, v6, v7];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v8 = a3;
  v4 = [(LPiTunesMediaMusicVideoMetadata *)self name];
  v5 = [(LPiTunesMediaMusicVideoMetadata *)self artist];
  v6 = joinedByEmDash(v4, v5);
  [v8 setTitle:v6];

  v7 = [(LPiTunesMediaMusicVideoMetadata *)self artwork];
  [v8 setImage:v7];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaMusicVideoMetadata *)self storeIdentifier];

  return v3;
}

@end