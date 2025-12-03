@interface MPModelPlaylistEntriesShareEligibilityRequest
- (MPModelPlaylistEntriesShareEligibilityRequest)initWithPlaylist:(id)playlist;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation MPModelPlaylistEntriesShareEligibilityRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelPlaylistEntriesShareEligibilityRequestOperation);
  [(MPModelPlaylistEntriesShareEligibilityRequestOperation *)v5 setRequest:self];
  [(MPModelPlaylistEntriesShareEligibilityRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  playlist = self->_playlist;

  return [v4 initWithPlaylist:playlist];
}

- (MPModelPlaylistEntriesShareEligibilityRequest)initWithPlaylist:(id)playlist
{
  playlistCopy = playlist;
  v6 = [(MPModelPlaylistEntriesShareEligibilityRequest *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playlist, playlist);
  }

  return v7;
}

@end