@interface LPiTunesMediaMusicVideoUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaMusicVideoUnresolvedMetadata

- (id)resolve
{
  v3 = objc_alloc_init(LPiTunesMediaMusicVideoMetadata);
  [(LPiTunesMediaMusicVideoMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaMusicVideoMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaMusicVideoMetadata *)v3 setName:self->_name];
  [(LPiTunesMediaMusicVideoMetadata *)v3 setArtist:self->_artist];
  metadata = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaMusicVideoMetadata *)v3 setArtworkMetadata:metadata];

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