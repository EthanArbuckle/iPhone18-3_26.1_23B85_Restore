@interface LPiTunesMediaBookMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaBookMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaBookMetadata

- (LPiTunesMediaBookMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LPiTunesMediaBookMetadata;
  v5 = [(LPiTunesMediaBookMetadata *)&v20 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    v7 = *&v5->_hasSpineOnRight;
    *&v5->_hasSpineOnRight = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v8;

    v10 = decodeStringForKey(v4, @"name");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v10;

    v12 = decodeStringForKey(v4, @"author");
    name = v5->_name;
    v5->_name = v12;

    v14 = [v4 _lp_strictlyDecodeLPImageForKey:@"artwork"];
    author = v5->_author;
    v5->_author = v14;

    v16 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artwork = v5->_artwork;
    v5->_artwork = v16;

    *(&v5->super.__disallowsURLOverrideByDelegate + 1) = [v4 decodeBoolForKey:@"hasSpineOnRight"];
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:*&self->_hasSpineOnRight forKey:@"storeFrontIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"name"];
  [v4 _lp_encodeStringIfNotNil:self->_name forKey:@"author"];
  [v4 _lp_encodeObjectIfNotNil:self->_author forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artworkMetadata"];
  [v4 encodeBool:*(&self->super.__disallowsURLOverrideByDelegate + 1) forKey:@"hasSpineOnRight"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaBookMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaBookMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaBookMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaBookMetadata *)self storeIdentifier];
    [(LPiTunesMediaBookMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaBookMetadata *)self name];
    [(LPiTunesMediaBookMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaBookMetadata *)self author];
    [(LPiTunesMediaBookMetadata *)v4 setAuthor:v8];

    v9 = [(LPiTunesMediaBookMetadata *)self artwork];
    [(LPiTunesMediaBookMetadata *)v4 setArtwork:v9];

    v10 = [(LPiTunesMediaBookMetadata *)self artworkMetadata];
    [(LPiTunesMediaBookMetadata *)v4 setArtworkMetadata:v10];

    [(LPiTunesMediaBookMetadata *)v4 setHasSpineOnRight:[(LPiTunesMediaBookMetadata *)self hasSpineOnRight]];
    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaBookMetadata;
  if ([(LPiTunesMediaBookMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v5 = (objectsAreEqual_0(v6[2], *&self->_hasSpineOnRight) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeFrontIdentifier) && objectsAreEqual_0(v6[4], self->_storeIdentifier) && objectsAreEqual_0(v6[5], self->_name) && objectsAreEqual_0(v6[6], self->_author) && objectsAreEqual_0(v6[7], self->_artwork) && *(v6 + 11) == *(&self->super.__disallowsURLOverrideByDelegate + 1);
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
  v5 = [v4 commonPresentationPropertiesForStyle:13];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [(LPiTunesMediaBookMetadata *)self name];
  v8 = [(LPiTunesMediaBookMetadata *)self author];
  v9 = LPLocalizedString(@" Books");
  populateCaptionBar(v5, v7, v8, v9, 1, v4);

  v10 = [(LPiTunesMediaBookMetadata *)self artwork];
  [v4 _populateProperties:v5 withPrimaryImage:v10];

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

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Book: %@ – %@");
  v6 = [(LPiTunesMediaBookMetadata *)self name];
  v7 = [(LPiTunesMediaBookMetadata *)self author];
  v8 = [v4 localizedStringWithFormat:v5, v6, v7];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v8 = a3;
  v4 = [(LPiTunesMediaBookMetadata *)self name];
  v5 = [(LPiTunesMediaBookMetadata *)self author];
  v6 = joinedByEmDash(v4, v5);
  [v8 setTitle:v6];

  v7 = [(LPiTunesMediaBookMetadata *)self artwork];
  [v8 setImage:v7];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaBookMetadata *)self storeIdentifier];

  return v3;
}

@end