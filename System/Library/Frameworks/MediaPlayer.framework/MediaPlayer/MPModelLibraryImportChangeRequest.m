@interface MPModelLibraryImportChangeRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryImportChangeRequest

- (void)performWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
  [v5 performLibraryImportChangeRequest:self withRelatedModelObjects:0 completion:v4];
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryImportChangeRequestOperation);
  [(MPModelLibraryImportChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryImportChangeRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 3, self->_modelObjects);
    *(v5 + 8) = self->_shouldLibraryAdd;
    objc_storeStrong(v5 + 2, self->_referralObject);
  }

  return v5;
}

@end