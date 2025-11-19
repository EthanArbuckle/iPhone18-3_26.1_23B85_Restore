@interface MPModelLibraryDeleteEntityChangeRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryDeleteEntityChangeRequest

- (void)performWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
  [v5 performDeleteEntityChangeRequest:self withRelatedModelObjects:0 completion:v4];
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryDeleteEntityChangeRequestOperation);
  [(MPModelLibraryDeleteEntityChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryDeleteEntityChangeRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_modelObject);
  }

  return v5;
}

@end