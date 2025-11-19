@interface MPModelLibraryRemoveCollaboratorsChangeRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryRemoveCollaboratorsChangeRequest

- (void)performWithResponseHandler:(id)a3
{
  v4 = [(MPModelLibraryRemoveCollaboratorsChangeRequest *)self newOperationWithResponseHandler:a3];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryRemoveCollaboratorsChangeRequestOperation);
  [(MPModelLibraryRemoveCollaboratorsChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryRemoveCollaboratorsChangeRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_collaboration);
    objc_storeStrong(v5 + 2, self->_socialProfileIDsToRemove);
  }

  return v5;
}

@end