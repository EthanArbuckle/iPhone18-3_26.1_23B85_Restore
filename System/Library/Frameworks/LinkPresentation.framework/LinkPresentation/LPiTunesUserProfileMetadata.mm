@interface LPiTunesUserProfileMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesUserProfileMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesUserProfileMetadata

- (LPiTunesUserProfileMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = LPiTunesUserProfileMetadata;
  v5 = [(LPiTunesUserProfileMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v8;

    v10 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesUserProfileMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesUserProfileMetadata *)self name];
    [(LPiTunesUserProfileMetadata *)v4 setName:v5];

    v6 = [(LPiTunesUserProfileMetadata *)self artwork];
    [(LPiTunesUserProfileMetadata *)v4 setArtwork:v6];

    v7 = [(LPiTunesUserProfileMetadata *)self artworkMetadata];
    [(LPiTunesUserProfileMetadata *)v4 setArtworkMetadata:v7];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesUserProfileMetadata;
  if ([(LPiTunesUserProfileMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[2], self->_name) & 1) != 0 && objectsAreEqual_0(v6[3], self->_artwork))
      {
        v5 = objectsAreEqual_0(v6[4], self->_artworkMetadata);
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
  v5 = [v4 commonPresentationPropertiesForStyle:40];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  if ([v4 effectiveSizeClass] == 2)
  {
    v7 = [(LPiTunesUserProfileMetadata *)self name];
    v8 = LPLocalizedString(@"Profile");
    v9 = appleMusicWordmark(v4);
    populateCaptionBar(v5, v7, v8, v9, 1, v4);
  }

  else
  {
    v7 = [(LPiTunesUserProfileMetadata *)self name];
    v8 = appleMusicWordmark(v4);
    populateCaptionBar(v5, v7, 0, v8, 1, v4);
  }

  v10 = [(LPiTunesUserProfileMetadata *)self artwork];
  [v4 _populateProperties:v5 withPrimaryImage:v10];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Profile: %@");
  v6 = [(LPiTunesUserProfileMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, v6];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v6 = a3;
  v4 = [(LPiTunesUserProfileMetadata *)self name];
  [v6 setTitle:v4];

  v5 = [(LPiTunesUserProfileMetadata *)self artwork];
  [v6 setImage:v5];
}

@end