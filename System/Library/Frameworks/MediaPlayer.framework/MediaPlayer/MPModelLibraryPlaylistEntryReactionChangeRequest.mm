@interface MPModelLibraryPlaylistEntryReactionChangeRequest
- (MPModelLibraryPlaylistEntryReactionChangeRequest)initWithPlaylist:(id)playlist playlistEntry:(id)entry reactionText:(id)text;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)performWithResponseHandler:(id)handler;
@end

@implementation MPModelLibraryPlaylistEntryReactionChangeRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_playlist);
    objc_storeStrong(v5 + 2, self->_playlistEntry);
    objc_storeStrong(v5 + 3, self->_reactionText);
  }

  return v5;
}

- (void)performWithResponseHandler:(id)handler
{
  v4 = [(MPModelLibraryPlaylistEntryReactionChangeRequest *)self newOperationWithResponseHandler:handler];
  v3 = +[MPModelLibraryChangeRequest sharedOperationQueue];
  [v3 addOperation:v4];
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryPlaylistEntryReactionChangeRequestOperation);
  [(MPModelLibraryPlaylistEntryReactionChangeRequestOperation *)v5 setRequest:self];
  [(MPModelLibraryPlaylistEntryReactionChangeRequestOperation *)v5 setResponseHandler:handlerCopy];

  return v5;
}

- (MPModelLibraryPlaylistEntryReactionChangeRequest)initWithPlaylist:(id)playlist playlistEntry:(id)entry reactionText:(id)text
{
  playlistCopy = playlist;
  entryCopy = entry;
  textCopy = text;
  v12 = [(MPModelLibraryPlaylistEntryReactionChangeRequest *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_playlist, playlist);
    objc_storeStrong(&v13->_playlistEntry, entry);
    objc_storeStrong(&v13->_reactionText, text);
  }

  return v13;
}

@end