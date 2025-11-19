@interface LPiTunesMediaAudioBookUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaAudioBookUnresolvedMetadata

- (id)resolve
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(LPiTunesMediaAudioBookMetadata);
  [(LPiTunesMediaAudioBookMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaAudioBookMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaAudioBookMetadata *)v3 setName:self->_name];
  [(LPiTunesMediaAudioBookMetadata *)v3 setNarrator:self->_narrator];
  [(LPiTunesMediaAudioBookMetadata *)v3 setAuthor:self->_author];
  v4 = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaAudioBookMetadata *)v3 setArtworkMetadata:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_offers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 previewURL];
        v11 = v10 == 0;

        if (!v11)
        {
          v12 = [v9 previewURL];
          [(LPiTunesMediaAudioBookMetadata *)v3 setPreviewURL:v12];

          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

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