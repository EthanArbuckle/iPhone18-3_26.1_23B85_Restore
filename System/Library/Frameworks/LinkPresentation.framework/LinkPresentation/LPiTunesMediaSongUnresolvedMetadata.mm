@interface LPiTunesMediaSongUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaSongUnresolvedMetadata

- (id)resolve
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(LPiTunesMediaSongMetadata);
  [(LPiTunesMediaSongMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaSongMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaSongMetadata *)v3 setName:self->_name];
  [(LPiTunesMediaSongMetadata *)v3 setArtist:self->_artist];
  [(LPiTunesMediaSongMetadata *)v3 setAlbum:self->_album];
  v4 = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaSongMetadata *)v3 setArtworkMetadata:v4];

  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_offers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 type];
        [v5 addObject:v11];

        v12 = [(LPiTunesMediaSongMetadata *)v3 previewURL];
        LODWORD(v11) = v12 == 0;

        if (v11)
        {
          v13 = [v10 previewURL];
          [(LPiTunesMediaSongMetadata *)v3 setPreviewURL:v13];
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(LPiTunesMediaSongMetadata *)v3 setOffers:v5];

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