@interface LPiTunesMediaPodcastEpisodeMetadata
- (BOOL)isEqual:(id)equal;
- (LPiTunesMediaPodcastEpisodeMetadata)initWithCoder:(id)coder;
- (double)timeForURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedTimeForTitle:(double)title;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)storeIdentifierForTransformer:(id)transformer;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiTunesMediaPodcastEpisodeMetadata

- (LPiTunesMediaPodcastEpisodeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = LPiTunesMediaPodcastEpisodeMetadata;
  v5 = [(LPiTunesMediaPodcastEpisodeMetadata *)&v26 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(coderCopy, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(coderCopy, @"episodeName");
    episodeName = v5->_episodeName;
    v5->_episodeName = v10;

    v12 = decodeStringForKey(coderCopy, @"podcastName");
    podcastName = v5->_podcastName;
    v5->_podcastName = v12;

    v14 = decodeStringForKey(coderCopy, @"artist");
    artist = v5->_artist;
    v5->_artist = v14;

    v16 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v16;

    v18 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

    v22 = decodeArrayOfStringsForKey(coderCopy);
    offers = v5->_offers;
    v5->_offers = v22;

    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy _lp_encodeStringIfNotNil:self->_episodeName forKey:@"episodeName"];
  [coderCopy _lp_encodeStringIfNotNil:self->_podcastName forKey:@"podcastName"];
  [coderCopy _lp_encodeStringIfNotNil:self->_artist forKey:@"artist"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_releaseDate forKey:@"releaseDate"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [coderCopy _lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiTunesMediaPodcastEpisodeMetadata allocWithZone:zone];
  if (v4)
  {
    storeFrontIdentifier = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setStoreFrontIdentifier:storeFrontIdentifier];

    storeIdentifier = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeIdentifier];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setStoreIdentifier:storeIdentifier];

    episodeName = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setEpisodeName:episodeName];

    podcastName = [(LPiTunesMediaPodcastEpisodeMetadata *)self podcastName];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setPodcastName:podcastName];

    artist = [(LPiTunesMediaPodcastEpisodeMetadata *)self artist];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setArtist:artist];

    releaseDate = [(LPiTunesMediaPodcastEpisodeMetadata *)self releaseDate];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setReleaseDate:releaseDate];

    artwork = [(LPiTunesMediaPodcastEpisodeMetadata *)self artwork];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setArtwork:artwork];

    artworkMetadata = [(LPiTunesMediaPodcastEpisodeMetadata *)self artworkMetadata];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setArtworkMetadata:artworkMetadata];

    offers = [(LPiTunesMediaPodcastEpisodeMetadata *)self offers];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setOffers:offers];

    v14 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaPodcastEpisodeMetadata;
  if ([(LPiTunesMediaPodcastEpisodeMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_storeFrontIdentifier) & 1) != 0 && objectsAreEqual_0(v6[3], self->_storeIdentifier) && objectsAreEqual_0(v6[4], self->_episodeName) && objectsAreEqual_0(v6[5], self->_podcastName) && objectsAreEqual_0(v6[6], self->_artist) && objectsAreEqual_0(v6[7], self->_releaseDate) && objectsAreEqual_0(v6[8], self->_artwork) && objectsAreEqual_0(v6[9], self->_artworkMetadata))
      {
        v5 = objectsAreEqual_0(v6[10], self->_offers);
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
  v5 = [transformerCopy commonPresentationPropertiesForStyle:19];
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateStyle:3];
  releaseDate = [(LPiTunesMediaPodcastEpisodeMetadata *)self releaseDate];
  v8 = [v6 stringFromDate:releaseDate];

  v9 = [transformerCopy URL];
  [(LPiTunesMediaPodcastEpisodeMetadata *)self timeForURL:v9];
  v11 = v10;

  if ([transformerCopy effectiveSizeClass] == 12)
  {
    hasButtonActions = [transformerCopy hasButtonActions];
    if (hasButtonActions)
    {
      goto LABEL_7;
    }
  }

  else
  {
    hasButtonActions = 0;
  }

  if (v11 != 0.0)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = LPLocalizedString(@"(%@) %@");
    v15 = [(LPiTunesMediaPodcastEpisodeMetadata *)self formattedTimeForTitle:v11];
    episodeName = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
    episodeName2 = [v13 localizedStringWithFormat:v14, v15, episodeName];

    goto LABEL_8;
  }

LABEL_7:
  episodeName2 = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
LABEL_8:
  v18 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v18];

  podcastName = [(LPiTunesMediaPodcastEpisodeMetadata *)self podcastName];
  v20 = joinedByDot(podcastName, v8);
  v21 = LPLocalizedString(@" Podcasts");
  populateCaptionBar(v5, episodeName2, v20, v21, 0, transformerCopy);

  if (hasButtonActions)
  {
    captionBar = [v5 captionBar];
    bottom = [captionBar bottom];
    leading = [bottom leading];
    [leading setText:0];

    captionBar2 = [v5 captionBar];
    belowBottom = [captionBar2 belowBottom];
    leading2 = [belowBottom leading];
    [leading2 setText:0];
  }

  artwork = [(LPiTunesMediaPodcastEpisodeMetadata *)self artwork];
  [transformerCopy _populateProperties:v5 withPrimaryImage:artwork];

  storeIdentifier = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeIdentifier];
  storeFrontIdentifier = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeFrontIdentifier];
  offers = [(LPiTunesMediaPodcastEpisodeMetadata *)self offers];
  v32 = [LPInlineMediaPlaybackInformation podcastEpisodePlaybackInformationWithStoreIdentifier:storeIdentifier storefrontIdentifier:storeFrontIdentifier offers:offers startTime:v11];

  [v5 setInlinePlaybackInformation:v32];

  return v5;
}

- (double)timeForURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy)
  {
    v5 = [lCopy _lp_valueForQueryKey:@"t"];
    [v5 doubleValue];
    v7 = v6;

    if (v7 == 0.0)
    {
      v8 = [v4 _lp_valueForQueryKey:@"r"];
      [v8 doubleValue];
      v7 = v9;
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)formattedTimeForTitle:(double)title
{
  v4 = objc_alloc_init(MEMORY[0x1E6988158]);
  [v4 setStyle:1];
  v5 = [v4 stringFromSeconds:title];

  return v5;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Podcast: %@ – %@");
  episodeName = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
  podcastName = [(LPiTunesMediaPodcastEpisodeMetadata *)self podcastName];
  v8 = [v4 localizedStringWithFormat:v5, episodeName, podcastName];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  episodeName = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
  [compatibilityCopy setTitle:episodeName];

  artwork = [(LPiTunesMediaPodcastEpisodeMetadata *)self artwork];
  [compatibilityCopy setIcon:artwork];
}

- (id)storeIdentifierForTransformer:(id)transformer
{
  storeIdentifier = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeIdentifier];

  return storeIdentifier;
}

@end