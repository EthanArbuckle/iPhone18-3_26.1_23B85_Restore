@interface MPModelLibraryPlaylistEditChangeRequest
- (MPModelLibraryPlaylistEditChangeRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithLocalPersistenceResponseHandler:(id)handler completeResponseHandler:(id)responseHandler;
- (id)newSDKOperationWithLocalPersistenceResponseHandler:(id)handler completeResponseHandler:(id)responseHandler;
@end

@implementation MPModelLibraryPlaylistEditChangeRequest

- (id)newSDKOperationWithLocalPersistenceResponseHandler:(id)handler completeResponseHandler:(id)responseHandler
{
  responseHandlerCopy = responseHandler;
  handlerCopy = handler;
  v8 = objc_alloc_init(MPModelLibrarySDKPlaylistEditChangeRequestOperation);
  [(MPModelLibraryPlaylistEditChangeRequestOperation *)v8 setRequest:self];
  [(MPModelLibraryPlaylistEditChangeRequestOperation *)v8 setCompleteResponseHandler:responseHandlerCopy];

  [(MPModelLibraryPlaylistEditChangeRequestOperation *)v8 setLocalPersistenceResponseHandler:handlerCopy];
  return v8;
}

- (id)newOperationWithLocalPersistenceResponseHandler:(id)handler completeResponseHandler:(id)responseHandler
{
  responseHandlerCopy = responseHandler;
  handlerCopy = handler;
  v8 = objc_alloc_init(MPModelLibraryPlaylistEditChangeRequestOperation);
  [(MPModelLibraryPlaylistEditChangeRequestOperation *)v8 setRequest:self];
  [(MPModelLibraryPlaylistEditChangeRequestOperation *)v8 setCompleteResponseHandler:responseHandlerCopy];

  [(MPModelLibraryPlaylistEditChangeRequestOperation *)v8 setLocalPersistenceResponseHandler:handlerCopy];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_mediaLibrary);
    v6 = [(MPSectionedCollection *)self->_musicKitPlaylistEntries copy];
    v7 = *(v5 + 160);
    *(v5 + 160) = v6;

    *(v5 + 10) = self->_didSetPlaylistUserImage;
    objc_storeStrong((v5 + 144), self->_playlist);
    v8 = [(MPSectionedCollection *)self->_playlistEntries copy];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    objc_storeStrong((v5 + 32), self->_playlistDescription);
    objc_storeStrong((v5 + 40), self->_playlistName);
    objc_storeStrong((v5 + 48), self->_playlistUserImage);
    *(v5 + 8) = self->_shouldCreatePlaylist;
    objc_storeStrong((v5 + 136), self->_parentPlaylist);
    objc_storeStrong((v5 + 56), self->_publicPlaylist);
    objc_storeStrong((v5 + 64), self->_visiblePlaylist);
    objc_storeStrong((v5 + 72), self->_curatorPlaylist);
    objc_storeStrong((v5 + 80), self->_isOwner);
    objc_storeStrong((v5 + 88), self->_authorStoreIdentifier);
    objc_storeStrong((v5 + 96), self->_authorDisplayName);
    objc_storeStrong((v5 + 104), self->_coverArtworkRecipe);
    objc_storeStrong((v5 + 120), self->_trackListChanges);
    objc_storeStrong((v5 + 128), self->_deletedEntryUUIDs);
    *(v5 + 9) = self->_createFolder;
    v10 = [(NSArray *)self->_children copy];
    v11 = *(v5 + 152);
    *(v5 + 152) = v10;

    objc_storeStrong((v5 + 112), self->_editSessionID);
  }

  return v5;
}

- (MPModelLibraryPlaylistEditChangeRequest)init
{
  v6.receiver = self;
  v6.super_class = MPModelLibraryPlaylistEditChangeRequest;
  v2 = [(MPModelLibraryPlaylistEditChangeRequest *)&v6 init];
  if (v2)
  {
    v3 = +[MPMediaLibrary deviceMediaLibrary];
    mediaLibrary = v2->_mediaLibrary;
    v2->_mediaLibrary = v3;
  }

  return v2;
}

@end