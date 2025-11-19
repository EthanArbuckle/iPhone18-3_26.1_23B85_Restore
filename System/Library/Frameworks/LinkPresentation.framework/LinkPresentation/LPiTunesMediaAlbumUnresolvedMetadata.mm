@interface LPiTunesMediaAlbumUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaAlbumUnresolvedMetadata

- (id)resolve
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(LPiTunesMediaAlbumMetadata);
  [(LPiTunesMediaAlbumMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaAlbumMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaAlbumMetadata *)v3 setName:self->_name];
  [(LPiTunesMediaAlbumMetadata *)v3 setArtist:self->_artist];
  v4 = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaAlbumMetadata *)v3 setArtworkMetadata:v4];

  v5 = [MEMORY[0x1E695DF70] array];
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

        v10 = [*(*(&v12 + 1) + 8 * i) type];
        [v5 addObject:v10];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(LPiTunesMediaAlbumMetadata *)v3 setOffers:v5];

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