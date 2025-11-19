@interface MPModelLibrarySDKAddToPlaylistChangeRequest
- (MPModelLibrarySDKAddToPlaylistChangeRequest)initWithProductID:(id)a3 isCloudID:(BOOL)a4 playlist:(id)a5 completionHandler:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPModelLibrarySDKAddToPlaylistChangeRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibrarySDKAddToPlaylistChangeRequestOperation);
  [(MPModelLibrarySDKAddToPlaylistChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibrarySDKAddToPlaylistChangeRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (MPModelLibrarySDKAddToPlaylistChangeRequest)initWithProductID:(id)a3 isCloudID:(BOOL)a4 playlist:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = MPModelLibrarySDKAddToPlaylistChangeRequest;
  v13 = [(MPModelLibrarySDKAddToPlaylistChangeRequest *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    productID = v13->_productID;
    v13->_productID = v14;

    v13->_isCloudID = a4;
    objc_storeStrong(&v13->_playlist, a5);
    v16 = _Block_copy(v12);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v16;
  }

  return v13;
}

@end