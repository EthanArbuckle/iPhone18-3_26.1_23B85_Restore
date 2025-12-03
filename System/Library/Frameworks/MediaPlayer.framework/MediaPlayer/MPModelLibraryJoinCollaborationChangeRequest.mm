@interface MPModelLibraryJoinCollaborationChangeRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryJoinCollaborationChangeRequest

- (void)performWithResponseHandler:(id)handler
{
  v4 = [(MPModelLibraryJoinCollaborationChangeRequest *)self newOperationWithResponseHandler:handler];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryJoinCollaborationChangeRequestOperation);
  [(MPModelLibraryJoinCollaborationChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryJoinCollaborationChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_collaborationToJoin);
    objc_storeStrong(v5 + 2, self->_invitationURL);
  }

  return v5;
}

@end