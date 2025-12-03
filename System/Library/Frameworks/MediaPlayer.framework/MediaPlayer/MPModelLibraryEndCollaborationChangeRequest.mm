@interface MPModelLibraryEndCollaborationChangeRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryEndCollaborationChangeRequest

- (void)performWithResponseHandler:(id)handler
{
  v4 = [(MPModelLibraryEndCollaborationChangeRequest *)self newOperationWithResponseHandler:handler];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryEndCollaborationChangeRequestOperation);
  [(MPModelLibraryEndCollaborationChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryEndCollaborationChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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