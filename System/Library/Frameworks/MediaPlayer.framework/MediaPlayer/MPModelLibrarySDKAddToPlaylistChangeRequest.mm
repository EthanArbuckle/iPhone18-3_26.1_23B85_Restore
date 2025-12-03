@interface MPModelLibrarySDKAddToPlaylistChangeRequest
- (MPModelLibrarySDKAddToPlaylistChangeRequest)initWithProductID:(id)d isCloudID:(BOOL)iD playlist:(id)playlist completionHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation MPModelLibrarySDKAddToPlaylistChangeRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibrarySDKAddToPlaylistChangeRequestOperation);
  [(MPModelLibrarySDKAddToPlaylistChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibrarySDKAddToPlaylistChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(NSString *)self->_productID copy];
    v6 = *(v4 + 16);
    *(v4 + 16) = v5;

    *(v4 + 8) = self->_isCloudID;
    objc_storeStrong((v4 + 24), self->_playlist);
    v7 = _Block_copy(self->_completionHandler);
    v8 = *(v4 + 32);
    *(v4 + 32) = v7;
  }

  return v4;
}

- (MPModelLibrarySDKAddToPlaylistChangeRequest)initWithProductID:(id)d isCloudID:(BOOL)iD playlist:(id)playlist completionHandler:(id)handler
{
  dCopy = d;
  playlistCopy = playlist;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = MPModelLibrarySDKAddToPlaylistChangeRequest;
  v13 = [(MPModelLibrarySDKAddToPlaylistChangeRequest *)&v19 init];
  if (v13)
  {
    v14 = [dCopy copy];
    productID = v13->_productID;
    v13->_productID = v14;

    v13->_isCloudID = iD;
    objc_storeStrong(&v13->_playlist, playlist);
    v16 = _Block_copy(handlerCopy);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v16;
  }

  return v13;
}

@end