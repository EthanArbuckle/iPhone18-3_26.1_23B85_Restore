@interface LPiTunesMediaPodcastMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaPodcastMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaPodcastMetadata

- (LPiTunesMediaPodcastMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = LPiTunesMediaPodcastMetadata;
  v5 = [(LPiTunesMediaPodcastMetadata *)&v22 init];
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

    v12 = decodeStringForKey(coderCopy, @"artist");
    artist = v5->_artist;
    v5->_artist = v12;

    v14 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v16;

    v18 = decodeArrayOfStringsForKey(coderCopy);
    offers = v5->_offers;
    v5->_offers = v18;

    v20 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [coderCopy _lp_encodeStringIfNotNil:self->_artist forKey:@"artist"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaPodcastMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaPodcastMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaPodcastMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaPodcastMetadata *)self storeIdentifier];
    [(LPiTunesMediaPodcastMetadata *)v4 setStoreIdentifier:storeIdentifier];

    name = [(LPiTunesMediaPodcastMetadata *)self name];
    [(LPiTunesMediaPodcastMetadata *)v4 setName:name];

    artist = [(LPiTunesMediaPodcastMetadata *)self artist];
    [(LPiTunesMediaPodcastMetadata *)v4 setArtist:artist];

    artwork = [(LPiTunesMediaPodcastMetadata *)self artwork];
    [(LPiTunesMediaPodcastMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaPodcastMetadata *)self artworkMetadata];
    [(LPiTunesMediaPodcastMetadata *)v4 setArtworkMetadata:artworkMetadata];

    offers = [(LPiTunesMediaPodcastMetadata *)self offers];
    [(LPiTunesMediaPodcastMetadata *)v4 setOffers:offers];

    v12 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaPodcastMetadata;
  if ([(LPiTunesMediaPodcastMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
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

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:20];
  v6 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v6];

  name = [(LPiTunesMediaPodcastMetadata *)self name];
  artist = [(LPiTunesMediaPodcastMetadata *)self artist];
  v9 = LPLocalizedString(@" Podcasts");
  populateCaptionBar(v5, name, artist, v9, 1, transformerCopy);

  artwork = [(LPiTunesMediaPodcastMetadata *)self artwork];
  [transformerCopy _populateProperties:v5 withPrimaryImage:artwork];

  storeIdentifier = [(LPiTunesMediaPodcastMetadata *)self storeIdentifier];
  storeFrontIdentifier = [(LPiTunesMediaPodcastMetadata *)self storeFrontIdentifier];
  offers = [(LPiTunesMediaPodcastMetadata *)self offers];
  v14 = [LPInlineMediaPlaybackInformation podcastPlaybackInformationWithStoreIdentifier:storeIdentifier storefrontIdentifier:storeFrontIdentifier offers:offers];

  [v5 setInlinePlaybackInformation:v14];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Podcast: %@");
  name = [(LPiTunesMediaPodcastMetadata *)self name];
  v7 = [v4 localizedStringWithFormat:v5, name];

  return v7;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPiTunesMediaPodcastMetadata *)self name];
  [compatibilityCopy setTitle:name];

  artwork = [(LPiTunesMediaPodcastMetadata *)self artwork];
  [compatibilityCopy setImage:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaPodcastMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end