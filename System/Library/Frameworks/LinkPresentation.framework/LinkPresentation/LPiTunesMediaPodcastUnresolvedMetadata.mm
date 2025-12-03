@interface LPiTunesMediaPodcastUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaPodcastUnresolvedMetadata

- (id)resolve
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(LPiTunesMediaPodcastMetadata);
  [(LPiTunesMediaPodcastMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaPodcastMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaPodcastMetadata *)v3 setName:self->_name];
  [(LPiTunesMediaPodcastMetadata *)v3 setArtist:self->_artist];
  metadata = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaPodcastMetadata *)v3 setArtworkMetadata:metadata];

  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_offers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        type = [*(*(&v12 + 1) + 8 * i) type];
        [array addObject:type];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(LPiTunesMediaPodcastMetadata *)v3 setOffers:array];

  return v3;
}

- (id)assetsToFetch
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_artwork;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end