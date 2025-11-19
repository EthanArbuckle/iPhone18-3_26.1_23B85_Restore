@interface LPiTunesMediaPodcastMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaPodcastMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaPodcastMetadata

- (LPiTunesMediaPodcastMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = LPiTunesMediaPodcastMetadata;
  v5 = [(LPiTunesMediaPodcastMetadata *)&v22 init];
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
  v4 = [LPiTunesMediaPodcastMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaPodcastMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaPodcastMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaPodcastMetadata *)self storeIdentifier];
    [(LPiTunesMediaPodcastMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaPodcastMetadata *)self name];
    [(LPiTunesMediaPodcastMetadata *)v4 setName:v7];

    v8 = [(LPiTunesMediaPodcastMetadata *)self artist];
    [(LPiTunesMediaPodcastMetadata *)v4 setArtist:v8];

    v9 = [(LPiTunesMediaPodcastMetadata *)self artwork];
    [(LPiTunesMediaPodcastMetadata *)v4 setArtwork:v9];

    v10 = [(LPiTunesMediaPodcastMetadata *)self artworkMetadata];
    [(LPiTunesMediaPodcastMetadata *)v4 setArtworkMetadata:v10];

    v11 = [(LPiTunesMediaPodcastMetadata *)self offers];
    [(LPiTunesMediaPodcastMetadata *)v4 setOffers:v11];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaPodcastMetadata;
  if ([(LPiTunesMediaPodcastMetadata *)&v8 isEqual:v4])
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
  v5 = [v4 commonPresentationPropertiesForStyle:20];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  v7 = [(LPiTunesMediaPodcastMetadata *)self name];
  v8 = [(LPiTunesMediaPodcastMetadata *)self artist];
  v9 = LPLocalizedString(@" Podcasts");
  populateCaptionBar(v5, v7, v8, v9, 1, v4);

  v10 = [(LPiTunesMediaPodcastMetadata *)self artwork];
  [v4 _populateProperties:v5 withPrimaryImage:v10];

  v11 = [(LPiTunesMediaPodcastMetadata *)self storeIdentifier];
  v12 = [(LPiTunesMediaPodcastMetadata *)self storeFrontIdentifier];
  v13 = [(LPiTunesMediaPodcastMetadata *)self offers];
  v14 = [LPInlineMediaPlaybackInformation podcastPlaybackInformationWithStoreIdentifier:v11 storefrontIdentifier:v12 offers:v13];

  [v5 setInlinePlaybackInformation:v14];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Podcast: %@");
  v6 = [(LPiTunesMediaPodcastMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, v6];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v6 = a3;
  v4 = [(LPiTunesMediaPodcastMetadata *)self name];
  [v6 setTitle:v4];

  v5 = [(LPiTunesMediaPodcastMetadata *)self artwork];
  [v6 setImage:v5];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaPodcastMetadata *)self storeIdentifier];

  return v3;
}

@end