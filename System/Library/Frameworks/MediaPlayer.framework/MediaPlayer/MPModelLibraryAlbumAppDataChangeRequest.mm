@interface MPModelLibraryAlbumAppDataChangeRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryAlbumAppDataChangeRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryAlbumAppDataChangeRequestOperation);
  [(MPModelLibraryAlbumAppDataChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryAlbumAppDataChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_modelObject);
    objc_storeStrong(v5 + 2, self->_albumAppData);
  }

  return v5;
}

@end