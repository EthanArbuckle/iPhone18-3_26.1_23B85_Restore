@interface LPiTunesMediaArtistUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaArtistUnresolvedMetadata

- (id)resolve
{
  v3 = objc_alloc_init(LPiTunesMediaArtistMetadata);
  [(LPiTunesMediaArtistMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaArtistMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaArtistMetadata *)v3 setName:self->_name];
  [(LPiTunesMediaArtistMetadata *)v3 setGenre:self->_genre];
  v4 = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaArtistMetadata *)v3 setArtworkMetadata:v4];

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