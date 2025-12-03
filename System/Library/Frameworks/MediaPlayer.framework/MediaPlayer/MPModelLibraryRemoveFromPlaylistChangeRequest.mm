@interface MPModelLibraryRemoveFromPlaylistChangeRequest
- (MPModelLibraryRemoveFromPlaylistChangeRequest)initWithPlaylist:(id)playlist inMediaLibrary:(id)library andEntriesToRemove:(id)remove;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryRemoveFromPlaylistChangeRequest

- (id)copyWithZone:(_NSZone *)zone
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

- (void)performWithResponseHandler:(id)handler
{
  v4 = [(MPModelLibraryRemoveFromPlaylistChangeRequest *)self newOperationWithResponseHandler:handler];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryRemoveFromPlaylistChangeRequestOperation);
  [(MPModelLibraryRemoveFromPlaylistChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryRemoveFromPlaylistChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (MPModelLibraryRemoveFromPlaylistChangeRequest)initWithPlaylist:(id)playlist inMediaLibrary:(id)library andEntriesToRemove:(id)remove
{
  playlistCopy = playlist;
  libraryCopy = library;
  removeCopy = remove;
  v17.receiver = self;
  v17.super_class = MPModelLibraryRemoveFromPlaylistChangeRequest;
  v12 = [(MPModelLibraryRemoveFromPlaylistChangeRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mediaLibrary, library);
    objc_storeStrong(&v13->_playlist, playlist);
    v14 = [removeCopy copy];
    entriesToRemove = v13->_entriesToRemove;
    v13->_entriesToRemove = v14;
  }

  return v13;
}

@end