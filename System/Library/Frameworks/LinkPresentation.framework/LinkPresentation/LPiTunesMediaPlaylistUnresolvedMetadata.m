@interface LPiTunesMediaPlaylistUnresolvedMetadata
- (id)assetsToFetch;
- (id)resolve;
@end

@implementation LPiTunesMediaPlaylistUnresolvedMetadata

- (id)resolve
{
  v3 = objc_alloc_init(LPiTunesMediaPlaylistMetadata);
  [(LPiTunesMediaPlaylistMetadata *)v3 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [(LPiTunesMediaPlaylistMetadata *)v3 setStoreIdentifier:self->_storeIdentifier];
  [(LPiTunesMediaPlaylistMetadata *)v3 setName:self->_name];
  [(LPiTunesMediaPlaylistMetadata *)v3 setCurator:self->_curator];
  [(LPiTunesMediaPlaylistMetadata *)v3 setCuratorHandle:self->_curatorHandle];
  v4 = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaPlaylistMetadata *)v3 setArtworkMetadata:v4];

  return v3;
}

- (id)assetsToFetch
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_artwork)
  {
    [v3 addObject:?];
  }

  if (self->_curatorID)
  {
    v5 = [[LPiTunesMediaAsset alloc] initWithName:@"curatorProfileURL" curatorID:self->_curatorID];
    [v4 addObject:v5];
  }

  return v4;
}

@end