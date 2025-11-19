@interface MPModelLibraryEndCollaborationChangeRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newOperationWithResponseHandler:(id)a3;
- (void)performWithResponseHandler:(id)a3;
@end

@implementation MPModelLibraryEndCollaborationChangeRequest

- (void)performWithResponseHandler:(id)a3
{
  v4 = [(MPModelLibraryEndCollaborationChangeRequest *)self newOperationWithResponseHandler:a3];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryEndCollaborationChangeRequestOperation);
  [(MPModelLibraryEndCollaborationChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryEndCollaborationChangeRequestOperation *)v5 setResponseHandler:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_collaborationToEnd);
  }

  return v5;
}

@end