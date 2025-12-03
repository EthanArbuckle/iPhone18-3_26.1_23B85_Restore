@interface LPiTunesMediaBookMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaBookMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaBookMetadata

- (LPiTunesMediaBookMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = LPiTunesMediaBookMetadata;
  v5 = [(LPiTunesMediaBookMetadata *)&v20 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    v7 = *&v5->_hasSpineOnRight;
    *&v5->_hasSpineOnRight = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"name");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;

    v12 = decodeStringForKey(coderCopy, @"author");
    name = v5->_name;
    v5->_name = v12;

    v14 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    author = v5->_author;
    v5->_author = v14;

    v16 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    *(&v5->super.__disallowsURLOverrideByDelegate + 1) = [coderCopy decodeBoolForKey:@"hasSpineOnRight"];
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:*&self->_hasSpineOnRight forKey:@"storeFrontIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"name"];
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"author"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_author forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artworkMetadata"];
  [coderCopy encodeBool:*(&self->super.__disallowsURLOverrideByDelegate + 1) forKey:@"hasSpineOnRight"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaBookMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaBookMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaBookMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaBookMetadata *)self storeIdentifier];
    [(LPiTunesMediaBookMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaBookMetadata *)self name];
    [(LPiTunesMediaBookMetadata *)v4 setName:name];

    author = [(LPiTunesMediaBookMetadata *)self author];
    [(LPiTunesMediaBookMetadata *)v4 setAuthor:author];

    artwork = [(LPiTunesMediaBookMetadata *)self artwork];
    [(LPiTunesMediaBookMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaBookMetadata *)self artworkMetadata];
    [(LPiTunesMediaBookMetadata *)v4 setArtworkMetadata:artworkMetadata];

    [(LPiTunesMediaBookMetadata *)v4 setHasSpineOnRight:[(LPiTunesMediaBookMetadata *)self hasSpineOnRight]];
    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaBookMetadata;
  if ([(LPiTunesMediaBookMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v5 = (objectsAreEqual_0(v6[2], *&self->_hasSpineOnRight) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeFrontIdentifier) && objectsAreEqual_0(v6[4], self->_storeIdentifier) && objectsAreEqual_0(v6[5], self->_name) && objectsAreEqual_0(v6[6], self->_author) && objectsAreEqual_0(v6[7], self->_artwork) && *(v6 + 11) == *(&self->super.__disallowsURLOverrideByDelegate + 1);
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
  v5 = [transformerCopy commonPresentationPropertiesForStyle:13];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  name = [(LPiTunesMediaBookMetadata *)self name];
  author = [(LPiTunesMediaBookMetadata *)self author];
  v9 = LPLocalizedString(@" Books");
  populateCaptionBar(v5, name, author, v9, 1, transformerCopy);

  artwork = [(LPiTunesMediaBookMetadata *)self artwork];
  [transformerCopy _populateProperties:v5 withPrimaryImage:artwork];

  v11 = objc_alloc_init(LPImagePresentationProperties);
  if ([(LPiTunesMediaBookMetadata *)self hasSpineOnRight])
  {
    v12 = 10;
  }

  else
  {
    v12 = 9;
  }

  [(LPImagePresentationProperties *)v11 setFilter:v12];
  [v5 setImageProperties:v11];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Book: %@ – %@");
  name = [(LPiTunesMediaBookMetadata *)self name];
  author = [(LPiTunesMediaBookMetadata *)self author];
  v8 = [v4 localizedStringWithFormat:v5, name, author];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaBookMetadata *)self name];
  author = [(LPiTunesMediaBookMetadata *)self author];
  v6 = joinedByEmDash(name, author);
  [compatibilityCopy setTitle:v6];

  artwork = [(LPiTunesMediaBookMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaBookMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end