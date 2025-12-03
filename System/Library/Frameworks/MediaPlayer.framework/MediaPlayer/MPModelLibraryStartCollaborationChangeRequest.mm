@interface MPModelLibraryStartCollaborationChangeRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryStartCollaborationChangeRequest

- (void)performWithResponseHandler:(id)handler
{
  v4 = [(MPModelLibraryStartCollaborationChangeRequest *)self newOperationWithResponseHandler:handler];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryStartCollaborationChangeRequestOperation);
  [(MPModelLibraryStartCollaborationChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryStartCollaborationChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_playlistToConvert);
    v5[2] = self->_collaborationSharingMode;
  }

  return v5;
}

@end