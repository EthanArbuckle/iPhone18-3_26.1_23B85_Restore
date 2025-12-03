@interface MPModelLibraryDuplicatePlaylistChangeRequest
- (MPModelLibraryDuplicatePlaylistChangeRequest)initWithLibrary:(id)library playlist:(id)playlist;
- (MPModelLibraryDuplicatePlaylistChangeRequest)initWithLibrary:(id)library playlistPersistentID:(int64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryDuplicatePlaylistChangeRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_mediaLibrary);
    objc_storeStrong((v5 + 16), self->_playlist);
    *(v5 + 24) = self->_playlistPersistentID;
  }

  return v5;
}

- (void)performWithResponseHandler:(id)handler
{
  v4 = [(MPModelLibraryDuplicatePlaylistChangeRequest *)self newOperationWithResponseHandler:handler];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryDuplicatePlaylistChangeRequestOperation);
  [(MPModelLibraryDuplicatePlaylistChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryDuplicatePlaylistChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (MPModelLibraryDuplicatePlaylistChangeRequest)initWithLibrary:(id)library playlistPersistentID:(int64_t)d
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = MPModelLibraryDuplicatePlaylistChangeRequest;
  v8 = [(MPModelLibraryDuplicatePlaylistChangeRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaLibrary, library);
    v9->_playlistPersistentID = d;
  }

  return v9;
}

- (MPModelLibraryDuplicatePlaylistChangeRequest)initWithLibrary:(id)library playlist:(id)playlist
{
  libraryCopy = library;
  playlistCopy = playlist;
  v12.receiver = self;
  v12.super_class = MPModelLibraryDuplicatePlaylistChangeRequest;
  v9 = [(MPModelLibraryDuplicatePlaylistChangeRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaLibrary, library);
    objc_storeStrong(&v10->_playlist, playlist);
  }

  return v10;
}

@end