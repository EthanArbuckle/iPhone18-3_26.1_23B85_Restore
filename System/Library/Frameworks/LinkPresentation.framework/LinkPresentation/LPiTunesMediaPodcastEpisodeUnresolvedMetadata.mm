@interface LPiTunesMediaPodcastEpisodeUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaPodcastEpisodeUnresolvedMetadata

- (id)resolve
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(LPiTunesMediaPodcastEpisodeMetadata);
  [(LPiTunesMediaPodcastEpisodeMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaPodcastEpisodeMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaPodcastEpisodeMetadata *)v3 setEpisodeName:self->_episodeName];
  [(LPiTunesMediaPodcastEpisodeMetadata *)v3 setPodcastName:self->_podcastName];
  [(LPiTunesMediaPodcastEpisodeMetadata *)v3 setArtist:self->_artist];
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setDateFormat:@"yyyy-MM-dd"];
  v5 = [v4 dateFromString:self->_releaseDate];
  [(LPiTunesMediaPodcastEpisodeMetadata *)v3 setReleaseDate:v5];

  v6 = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaPodcastEpisodeMetadata *)v3 setArtworkMetadata:v6];

  v7 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_offers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 hasAudio] & 1) != 0 || objc_msgSend(v12, "hasVideo"))
        {
          v13 = [v12 type];
          [v7 addObject:v13];
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(LPiTunesMediaPodcastEpisodeMetadata *)v3 setOffers:v7];

  return v3;
}

- (id)assetsToFetch
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_artwork)
  {
    v4[0] = self->_artwork;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

@end