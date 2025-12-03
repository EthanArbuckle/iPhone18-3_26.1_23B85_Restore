@interface MPModelLibraryKeepLocalChangeRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryKeepLocalChangeRequest

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryKeepLocalChangeRequestOperation);
  [(MPModelLibraryKeepLocalChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryKeepLocalChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_modelObject);
    v5[2] = self->_enableState;
    v5[3] = self->_constraints;
  }

  return v5;
}

@end