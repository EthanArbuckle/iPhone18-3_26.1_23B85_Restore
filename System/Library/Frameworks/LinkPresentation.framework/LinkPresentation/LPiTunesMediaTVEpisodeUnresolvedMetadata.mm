@interface LPiTunesMediaTVEpisodeUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaTVEpisodeUnresolvedMetadata

- (id)resolve
{
  v3 = objc_alloc_init(LPiTunesMediaTVEpisodeMetadata);
  [(LPiTunesMediaTVEpisodeMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaTVEpisodeMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaTVEpisodeMetadata *)v3 setEpisodeName:self->_episodeName];
  [(LPiTunesMediaTVEpisodeMetadata *)v3 setSeasonName:self->_seasonName];
  [(LPiTunesMediaTVEpisodeMetadata *)v3 setGenre:self->_genre];
  metadata = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaTVEpisodeMetadata *)v3 setArtworkMetadata:metadata];

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