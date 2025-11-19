@interface MPModelLibraryRemoveFromPlaylistChangeRequest
- (MPModelLibraryRemoveFromPlaylistChangeRequest)initWithPlaylist:(id)a3 inMediaLibrary:(id)a4 andEntriesToRemove:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryRemoveFromPlaylistChangeRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_mediaLibrary);
    objc_storeStrong(v5 + 2, self->_playlist);
    objc_storeStrong(v5 + 3, self->_entriesToRemove);
  }

  return v5;
}

- (void)performWithResponseHandler:(id)a3
{
  v4 = [(MPModelLibraryRemoveFromPlaylistChangeRequest *)self newOperationWithResponseHandler:a3];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryRemoveFromPlaylistChangeRequestOperation);
  [(MPModelLibraryRemoveFromPlaylistChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryRemoveFromPlaylistChangeRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (MPModelLibraryRemoveFromPlaylistChangeRequest)initWithPlaylist:(id)a3 inMediaLibrary:(id)a4 andEntriesToRemove:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MPModelLibraryRemoveFromPlaylistChangeRequest;
  v12 = [(MPModelLibraryRemoveFromPlaylistChangeRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mediaLibrary, a4);
    objc_storeStrong(&v13->_playlist, a3);
    v14 = [v11 copy];
    entriesToRemove = v13->_entriesToRemove;
    v13->_entriesToRemove = v14;
  }

  return v13;
}

@end