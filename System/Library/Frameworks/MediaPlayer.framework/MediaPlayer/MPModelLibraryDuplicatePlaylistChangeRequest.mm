@interface MPModelLibraryDuplicatePlaylistChangeRequest
- (MPModelLibraryDuplicatePlaylistChangeRequest)initWithLibrary:(id)a3 playlist:(id)a4;
- (MPModelLibraryDuplicatePlaylistChangeRequest)initWithLibrary:(id)a3 playlistPersistentID:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryDuplicatePlaylistChangeRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_mediaLibrary);
    objc_storeStrong((v5 + 16), self->_playlist);
    *(v5 + 24) = self->_playlistPersistentID;
  }

  return v5;
}

- (void)performWithResponseHandler:(id)a3
{
  v4 = [(MPModelLibraryDuplicatePlaylistChangeRequest *)self newOperationWithResponseHandler:a3];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryDuplicatePlaylistChangeRequestOperation);
  [(MPModelLibraryDuplicatePlaylistChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryDuplicatePlaylistChangeRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (MPModelLibraryDuplicatePlaylistChangeRequest)initWithLibrary:(id)a3 playlistPersistentID:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MPModelLibraryDuplicatePlaylistChangeRequest;
  v8 = [(MPModelLibraryDuplicatePlaylistChangeRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaLibrary, a3);
    v9->_playlistPersistentID = a4;
  }

  return v9;
}

- (MPModelLibraryDuplicatePlaylistChangeRequest)initWithLibrary:(id)a3 playlist:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MPModelLibraryDuplicatePlaylistChangeRequest;
  v9 = [(MPModelLibraryDuplicatePlaylistChangeRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaLibrary, a3);
    objc_storeStrong(&v10->_playlist, a4);
  }

  return v10;
}

@end