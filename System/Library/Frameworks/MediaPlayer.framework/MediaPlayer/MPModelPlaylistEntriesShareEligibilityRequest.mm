@interface MPModelPlaylistEntriesShareEligibilityRequest
- (MPModelPlaylistEntriesShareEligibilityRequest)initWithPlaylist:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPModelPlaylistEntriesShareEligibilityRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelPlaylistEntriesShareEligibilityRequestOperation);
  [(MPModelPlaylistEntriesShareEligibilityRequestOperation *)v5 setRequest:self];
  [(MPModelPlaylistEntriesShareEligibilityRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  playlist = self->_playlist;

  return [v4 initWithPlaylist:playlist];
}

- (MPModelPlaylistEntriesShareEligibilityRequest)initWithPlaylist:(id)a3
{
  v5 = a3;
  v6 = [(MPModelPlaylistEntriesShareEligibilityRequest *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playlist, a3);
  }

  return v7;
}

@end