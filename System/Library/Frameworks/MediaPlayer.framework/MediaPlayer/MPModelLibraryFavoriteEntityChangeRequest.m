@interface MPModelLibraryFavoriteEntityChangeRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryFavoriteEntityChangeRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryFavoriteEntityChangeRequestOperation);
  [(MPModelLibraryFavoriteEntityChangeRequestOperation *)v5 setRequest:self];
  [(MPAsyncOperation *)v5 setUserIdentity:self->_userIdentity];
  [(MPModelLibraryFavoriteEntityChangeRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_modelObject);
    objc_storeStrong(v5 + 3, self->_requestAction);
    objc_storeStrong(v5 + 2, self->_userIdentity);
  }

  return v5;
}

@end