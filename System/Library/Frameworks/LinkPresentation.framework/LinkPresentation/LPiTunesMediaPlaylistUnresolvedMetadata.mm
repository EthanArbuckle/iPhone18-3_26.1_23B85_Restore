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
  metadata = [(LPiTunesMediaAsset *)self->_artwork metadata];
  [(LPiTunesMediaPlaylistMetadata *)v3 setArtworkMetadata:metadata];

  return v3;
}

- (id)assetsToFetch
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_artwork)
  {
    [array addObject:?];
  }

  if (self->_curatorID)
  {
    v5 = [[LPiTunesMediaAsset alloc] initWithName:@"curatorProfileURL" curatorID:self->_curatorID];
    [v4 addObject:v5];
  }

  return v4;
}

@end