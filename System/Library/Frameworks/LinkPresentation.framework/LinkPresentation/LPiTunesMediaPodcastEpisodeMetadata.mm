@interface LPiTunesMediaPodcastEpisodeMetadata
- (BOOL)isEqual:(id)a3;
- (LPiTunesMediaPodcastEpisodeMetadata)initWithCoder:(id)a3;
- (double)timeForURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedTimeForTitle:(double)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)storeIdentifierForTransformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiTunesMediaPodcastEpisodeMetadata

- (LPiTunesMediaPodcastEpisodeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = LPiTunesMediaPodcastEpisodeMetadata;
  v5 = [(LPiTunesMediaPodcastEpisodeMetadata *)&v26 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"storeFrontIdentifier");
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = v6;

    v8 = decodeStringForKey(v4, @"storeIdentifier");
    storeIdentifier = v5->_storeIdentifier;
    v5->_storeIdentifier = v8;

    v10 = decodeStringForKey(v4, @"episodeName");
    episodeName = v5->_episodeName;
    v5->_episodeName = v10;

    v12 = decodeStringForKey(v4, @"podcastName");
    podcastName = v5->_podcastName;
    v5->_podcastName = v12;

    v14 = decodeStringForKey(v4, @"artist");
    artist = v5->_artist;
    v5->_artist = v14;

    v16 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v16;

    v18 = [v4 _lp_strictlyDecodeLPImageForKey:@"artwork"];
    artwork = v5->_artwork;
    v5->_artwork = v18;

    v20 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"artworkMetadata"];
    artworkMetadata = v5->_artworkMetadata;
    v5->_artworkMetadata = v20;

    v22 = decodeArrayOfStringsForKey(v4);
    offers = v5->_offers;
    v5->_offers = v22;

    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_storeFrontIdentifier forKey:@"storeFrontIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v4 _lp_encodeStringIfNotNil:self->_episodeName forKey:@"episodeName"];
  [v4 _lp_encodeStringIfNotNil:self->_podcastName forKey:@"podcastName"];
  [v4 _lp_encodeStringIfNotNil:self->_artist forKey:@"artist"];
  [v4 _lp_encodeObjectIfNotNil:self->_releaseDate forKey:@"releaseDate"];
  [v4 _lp_encodeObjectIfNotNil:self->_artwork forKey:@"artwork"];
  [v4 _lp_encodeObjectIfNotNil:self->_artworkMetadata forKey:@"artworkMetadata"];
  [v4 _lp_encodeArrayIfNotEmpty:self->_offers forKey:@"offers"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiTunesMediaPodcastEpisodeMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeFrontIdentifier];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setStoreFrontIdentifier:v5];

    v6 = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeIdentifier];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setStoreIdentifier:v6];

    v7 = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setEpisodeName:v7];

    v8 = [(LPiTunesMediaPodcastEpisodeMetadata *)self podcastName];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setPodcastName:v8];

    v9 = [(LPiTunesMediaPodcastEpisodeMetadata *)self artist];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setArtist:v9];

    v10 = [(LPiTunesMediaPodcastEpisodeMetadata *)self releaseDate];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setReleaseDate:v10];

    v11 = [(LPiTunesMediaPodcastEpisodeMetadata *)self artwork];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setArtwork:v11];

    v12 = [(LPiTunesMediaPodcastEpisodeMetadata *)self artworkMetadata];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setArtworkMetadata:v12];

    v13 = [(LPiTunesMediaPodcastEpisodeMetadata *)self offers];
    [(LPiTunesMediaPodcastEpisodeMetadata *)v4 setOffers:v13];

    v14 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiTunesMediaPodcastEpisodeMetadata;
  if ([(LPiTunesMediaPodcastEpisodeMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:19];
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateStyle:3];
  v7 = [(LPiTunesMediaPodcastEpisodeMetadata *)self releaseDate];
  v8 = [v6 stringFromDate:v7];

  v9 = [v4 URL];
  [(LPiTunesMediaPodcastEpisodeMetadata *)self timeForURL:v9];
  v11 = v10;

  if ([v4 effectiveSizeClass] == 12)
  {
    v12 = [v4 hasButtonActions];
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v11 != 0.0)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = LPLocalizedString(@"(%@) %@");
    v15 = [(LPiTunesMediaPodcastEpisodeMetadata *)self formattedTimeForTitle:v11];
    v16 = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
    v17 = [v13 localizedStringWithFormat:v14, v15, v16];

    goto LABEL_8;
  }

LABEL_7:
  v17 = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
LABEL_8:
  v18 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v18];

  v19 = [(LPiTunesMediaPodcastEpisodeMetadata *)self podcastName];
  v20 = joinedByDot(v19, v8);
  v21 = LPLocalizedString(@" Podcasts");
  populateCaptionBar(v5, v17, v20, v21, 0, v4);

  if (v12)
  {
    v22 = [v5 captionBar];
    v23 = [v22 bottom];
    v24 = [v23 leading];
    [v24 setText:0];

    v25 = [v5 captionBar];
    v26 = [v25 belowBottom];
    v27 = [v26 leading];
    [v27 setText:0];
  }

  v28 = [(LPiTunesMediaPodcastEpisodeMetadata *)self artwork];
  [v4 _populateProperties:v5 withPrimaryImage:v28];

  v29 = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeIdentifier];
  v30 = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeFrontIdentifier];
  v31 = [(LPiTunesMediaPodcastEpisodeMetadata *)self offers];
  v32 = [LPInlineMediaPlaybackInformation podcastEpisodePlaybackInformationWithStoreIdentifier:v29 storefrontIdentifier:v30 offers:v31 startTime:v11];

  [v5 setInlinePlaybackInformation:v32];

  return v5;
}

- (double)timeForURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _lp_valueForQueryKey:@"t"];
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

- (id)formattedTimeForTitle:(double)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E6988158]);
  [v4 setStyle:1];
  v5 = [v4 stringFromSeconds:a3];

  return v5;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"Podcast: %@ – %@");
  v6 = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
  v7 = [(LPiTunesMediaPodcastEpisodeMetadata *)self podcastName];
  v8 = [v4 localizedStringWithFormat:v5, v6, v7];

  return v8;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v6 = a3;
  v4 = [(LPiTunesMediaPodcastEpisodeMetadata *)self episodeName];
  [v6 setTitle:v4];

  v5 = [(LPiTunesMediaPodcastEpisodeMetadata *)self artwork];
  [v6 setIcon:v5];
}

- (id)storeIdentifierForTransformer:(id)a3
{
  v3 = [(LPiTunesMediaPodcastEpisodeMetadata *)self storeIdentifier];

  return v3;
}

@end