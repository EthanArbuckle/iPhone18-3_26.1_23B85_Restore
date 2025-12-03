@interface LPiTunesUserProfileMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesUserProfileMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesUserProfileMetadata

- (LPiTunesUserProfileMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = LPiTunesUserProfileMetadata;
  v5 = [(LPiTunesUserProfileMetadata *)&v14 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v8;

    v10 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesUserProfileMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(LPiTunesUserProfileMetadata *)self name];
    [(LPiTunesUserProfileMetadata *)v4 setName:name];

    artwork = [(LPiTunesUserProfileMetadata *)self artwork];
    [(LPiTunesUserProfileMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesUserProfileMetadata *)self artworkMetadata];
    [(LPiTunesUserProfileMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v8 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesUserProfileMetadata;
  if ([(LPiTunesUserProfileMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:40];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  if ([transformerCopy effectiveSizeClass] == 2)
  {
    name = [(LPiTunesUserProfileMetadata *)self name];
    v8 = LPLocalizedString(@"Profile");
    v9 = appleMusicWordmark(transformerCopy);
    populateCaptionBar(v5, name, v8, v9, 1, transformerCopy);
  }

  else
  {
    name = [(LPiTunesUserProfileMetadata *)self name];
    v8 = appleMusicWordmark(transformerCopy);
    populateCaptionBar(v5, name, 0, v8, 1, transformerCopy);
  }

  artwork = [(LPiTunesUserProfileMetadata *)self artwork];
  [transformerCopy _populateProperties:v5 withPrimaryImage:artwork];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Profile: %@");
  name = [(LPiTunesUserProfileMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, name];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesUserProfileMetadata *)self name];
  [compatibilityCopy setTitle:name];

  artwork = [(LPiTunesUserProfileMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

@end