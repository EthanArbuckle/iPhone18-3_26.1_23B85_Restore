@interface MPModelLibraryDeleteEntityChangeRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryDeleteEntityChangeRequest

- (void)performWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[MPModelLibraryTransientStateController sharedDeviceLibraryController];
  [v5 performDeleteEntityChangeRequest:self withRelatedModelObjects:0 completion:handlerCopy];
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryDeleteEntityChangeRequestOperation);
  [(MPModelLibraryDeleteEntityChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryDeleteEntityChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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