@interface MPModelLibraryImportChangeRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryImportChangeRequest

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
  [v5 performLibraryImportChangeRequest:self withRelatedModelObjects:0 completion:handlerCopy];
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryImportChangeRequestOperation);
  [(MPModelLibraryImportChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryImportChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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