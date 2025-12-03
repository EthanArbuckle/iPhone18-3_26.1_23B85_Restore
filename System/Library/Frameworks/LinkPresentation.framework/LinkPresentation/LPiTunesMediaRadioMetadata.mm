@interface LPiTunesMediaRadioMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaRadioMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaRadioMetadata

- (LPiTunesMediaRadioMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = LPiTunesMediaRadioMetadata;
  v5 = [(LPiTunesMediaRadioMetadata *)&v20 init];
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

    v12 = decodeStringForKey(coderCopy, @"curator");
    curator = v5->_curator;
    v5->_curator = v12;

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
  [coderCopy _lp_encodeStringIfNotNil:self->_curator forKey:@"curator"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaRadioMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaRadioMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaRadioMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaRadioMetadata *)self storeIdentifier];
    [(LPiTunesMediaRadioMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaRadioMetadata *)self name];
    [(LPiTunesMediaRadioMetadata *)v4 setName:name];

    curator = [(LPiTunesMediaRadioMetadata *)self curator];
    [(LPiTunesMediaRadioMetadata *)v4 setCurator:curator];

    artwork = [(LPiTunesMediaRadioMetadata *)self artwork];
    [(LPiTunesMediaRadioMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaRadioMetadata *)self artworkMetadata];
    [(LPiTunesMediaRadioMetadata *)v4 setArtworkMetadata:artworkMetadata];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaRadioMetadata;
  if ([(LPiTunesMediaRadioMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_name) && objectsAreEqual_0(v6[5], self->_curator) && objectsAreEqual_0(v6[6], self->_artwork))
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
  v6 = [transformerCopy commonPresentationPropertiesForStyle:10];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  curator = [(LPiTunesMediaRadioMetadata *)self curator];
  if (!curator)
  {
    if ([transformerCopy effectiveSizeClass] == 2)
    {
      curator = LPLocalizedString(@"Radio");
    }

    else
    {
      curator = 0;
    }
  }

  name = [(LPiTunesMediaRadioMetadata *)self name];
  v10 = appleMusicWordmark(transformerCopy);
  populateCaptionBar(v6, name, curator, v10, 1, transformerCopy);

  artwork = [(LPiTunesMediaRadioMetadata *)self artwork];
  [transformerCopy _populateProperties:v6 withPrimaryImage:artwork];

  storeIdentifier = [(LPiTunesMediaRadioMetadata *)self storeIdentifier];
  storeFrontIdentifier = [(LPiTunesMediaRadioMetadata *)self storeFrontIdentifier];
  v14 = storeFrontIdentifier;
  if (!storeFrontIdentifier)
  {
    canonicalURL = [transformerCopy canonicalURL];
    v14 = storefrontIdentifierFromURL(canonicalURL);
  }

  v15 = [LPInlineMediaPlaybackInformation radioPlaybackInformationWithStoreIdentifier:storeIdentifier storefrontIdentifier:v14];
  if (!storeFrontIdentifier)
  {
  }

  [v6 setInlinePlaybackInformation:v15];

  return v6;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  name = [(LPiTunesMediaRadioMetadata *)self name];
  if (name && (v5 = name, [(LPiTunesMediaRadioMetadata *)self curator], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"Radio: %@ – %@");
    name2 = [(LPiTunesMediaRadioMetadata *)self name];
    curator = [(LPiTunesMediaRadioMetadata *)self curator];
    v11 = [v7 localizedStringWithFormat:v8, name2, curator];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"Radio: %@");
    name2 = [(LPiTunesMediaRadioMetadata *)self name];
    v11 = [v12 localizedStringWithFormat:v8, name2];
  }

  return v11;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaRadioMetadata *)self name];
  if (name && ([(LPiTunesMediaRadioMetadata *)self curator], v5 = objc_claimAutoreleasedReturnValue(), v5, name, v5))
  {
    name2 = [(LPiTunesMediaRadioMetadata *)self name];
    curator = [(LPiTunesMediaRadioMetadata *)self curator];
    v8 = joinedByEmDash(name2, curator);
    [compatibilityCopy setTitle:v8];
  }

  else
  {
    name2 = [(LPiTunesMediaRadioMetadata *)self name];
    [compatibilityCopy setTitle:name2];
  }

  artwork = [(LPiTunesMediaRadioMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaRadioMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end