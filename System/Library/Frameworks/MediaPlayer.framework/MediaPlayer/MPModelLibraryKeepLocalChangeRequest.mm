@interface MPModelLibraryKeepLocalChangeRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryKeepLocalChangeRequest

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryKeepLocalChangeRequestOperation);
  [(MPModelLibraryKeepLocalChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryKeepLocalChangeRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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