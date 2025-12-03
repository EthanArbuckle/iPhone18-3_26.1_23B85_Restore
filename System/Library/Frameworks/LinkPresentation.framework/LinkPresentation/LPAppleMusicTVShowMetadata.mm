@interface LPAppleMusicTVShowMetadata
- (BOOL)isEqual:(id)equal;
- (LPAppleMusicTVShowMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPAppleMusicTVShowMetadata

- (LPAppleMusicTVShowMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = LPAppleMusicTVShowMetadata;
  v5 = [(LPAppleMusicTVShowMetadata *)&v18 init];
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

    v12 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v12;

    v14 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPAppleMusicTVShowMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPAppleMusicTVShowMetadata *)self storeFrontIdentifier];
    [(LPAppleMusicTVShowMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPAppleMusicTVShowMetadata *)self storeIdentifier];
    [(LPAppleMusicTVShowMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPAppleMusicTVShowMetadata *)self name];
    [(LPAppleMusicTVShowMetadata *)v4 setName:name];

    artwork = [(LPAppleMusicTVShowMetadata *)self artwork];
    [(LPAppleMusicTVShowMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPAppleMusicTVShowMetadata *)self artworkMetadata];
    [(LPAppleMusicTVShowMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPAppleMusicTVShowMetadata;
  if ([(LPAppleMusicTVShowMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_name) && objectsAreEqual_0(v6[5], self->_artwork))
      {
        v5 = objectsAreEqual_0(v6[6], self->_artworkMetadata);
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
  v5 = [transformerCopy commonPresentationPropertiesForStyle:37];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  name = [(LPAppleMusicTVShowMetadata *)self name];
  v8 = appleMusicWordmark(transformerCopy);
  populateCaptionBar(v5, name, 0, v8, 1, transformerCopy);

  artwork = [(LPAppleMusicTVShowMetadata *)self artwork];
  [transformerCopy _populateProperties:v5 withPrimaryImage:artwork];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"TV Show: %@");
  name = [(LPAppleMusicTVShowMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, name];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPAppleMusicTVShowMetadata *)self name];
  [compatibilityCopy setTitle:name];

  artwork = [(LPAppleMusicTVShowMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPAppleMusicTVShowMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end