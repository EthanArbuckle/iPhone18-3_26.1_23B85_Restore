@interface MPModelLibraryAddToPlaylistChangeRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryAddToPlaylistChangeRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryAddToPlaylistChangeRequestOperation);
  [(MPModelLibraryAddToPlaylistChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryAddToPlaylistChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_representativeModelObject);
    objc_storeStrong((v5 + 24), self->_referralObject);
    objc_storeStrong((v5 + 8), self->_playlist);
    objc_storeStrong((v5 + 32), self->_songResults);
    v6 = _Block_copy(self->_storeImportAllowedHandler);
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  return v5;
}

@end