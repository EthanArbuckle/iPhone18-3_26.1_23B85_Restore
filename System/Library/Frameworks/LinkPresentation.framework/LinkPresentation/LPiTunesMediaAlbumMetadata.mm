@interface LPiTunesMediaAlbumMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaAlbumMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaAlbumMetadata

- (LPiTunesMediaAlbumMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = LPiTunesMediaAlbumMetadata;
  v5 = [(LPiTunesMediaAlbumMetadata *)&v22 init];
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

    v18 = decodeArrayOfStringsForKey(v4);
    offers = v5->_offers;
    v5->_offers = v18;

    v20 = v5;
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
  [v4 _lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaAlbumMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaAlbumMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaAlbumMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaAlbumMetadata *)self storeIdentifier];
    [(LPiTunesMediaAlbumMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaAlbumMetadata *)self name];
    [(LPiTunesMediaAlbumMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaAlbumMetadata *)self artist];
    [(LPiTunesMediaAlbumMetadata *)v4 setArtist:v8];

    v9 = [(LPiTunesMediaAlbumMetadata *)self artwork];
    [(LPiTunesMediaAlbumMetadata *)v4 setArtwork:v9];

    v10 = [(LPiTunesMediaAlbumMetadata *)self artworkMetadata];
    [(LPiTunesMediaAlbumMetadata *)v4 setArtworkMetadata:v10];

    v11 = [(LPiTunesMediaAlbumMetadata *)self offers];
    [(LPiTunesMediaAlbumMetadata *)v4 setOffers:v11];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaAlbumMetadata;
  if ([(LPiTunesMediaAlbumMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_name) && objectsAreEqual_0(v6[5], self->_artist) && objectsAreEqual_0(v6[6], self->_artwork) && objectsAreEqual_0(v6[7], self->_artworkMetadata))
      {
        v5 = objectsAreEqual_0(v6[8], self->_offers);
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
  v5 = [v4 commonPresentationPropertiesForStyle:6];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [(LPiTunesMediaAlbumMetadata *)self name];
  v8 = [(LPiTunesMediaAlbumMetadata *)self artist];
  v9 = appleMusicWordmark(v4);
  populateCaptionBar(v5, v7, v8, v9, 1, v4);

  v10 = [(LPiTunesMediaAlbumMetadata *)self artwork];
  [v4 _populateProperties:v5 withPrimaryImage:v10];

  v11 = [(LPiTunesMediaAlbumMetadata *)self storeIdentifier];
  v12 = [(LPiTunesMediaAlbumMetadata *)self storeFrontIdentifier];
  v13 = v12;
  if (!v12)
  {
    v9 = [v4 canonicalURL];
    v13 = storefrontIdentifierFromURL(v9);
  }

  v14 = [(LPiTunesMediaAlbumMetadata *)self offers];
  v15 = [LPInlineMediaPlaybackInformation albumPlaybackInformationWithStoreIdentifier:v11 storefrontIdentifier:v13 offers:v14];

  if (!v12)
  {
  }

  [v5 setInlinePlaybackInformation:v15];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Album: %@ – %@");
  v6 = [(LPiTunesMediaAlbumMetadata *)self name];
  v7 = [(LPiTunesMediaAlbumMetadata *)self artist];
  v8 = [v4 localizedStringWithFormat:v5, v6, v7];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v8 = a3;
  v4 = [(LPiTunesMediaAlbumMetadata *)self name];
  v5 = [(LPiTunesMediaAlbumMetadata *)self artist];
  v6 = joinedByEmDash(v4, v5);
  [v8 setTitle:v6];

  v7 = [(LPiTunesMediaAlbumMetadata *)self artwork];
  [v8 setImage:v7];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaAlbumMetadata *)self storeIdentifier];

  return v3;
}

@end