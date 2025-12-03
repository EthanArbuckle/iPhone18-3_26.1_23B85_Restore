@interface MPModelLibraryPlaylistEntryReactionChangeRequestOperation
- (void)_finishOperationWithError:(id)error;
- (void)_performSetReactionRequestForPlaylistWithPlaylist:(id)playlist playlistEntry:(id)entry reactionText:(id)text;
- (void)execute;
@end

@implementation MPModelLibraryPlaylistEntryReactionChangeRequestOperation

- (void)_finishOperationWithError:(id)error
{
  errorCopy = error;
  responseHandler = [(MPModelLibraryPlaylistEntryReactionChangeRequestOperation *)self responseHandler];
  (responseHandler)[2](responseHandler, errorCopy);

  [(MPAsyncOperation *)self finishWithError:errorCopy];
}

- (void)_performSetReactionRequestForPlaylistWithPlaylist:(id)playlist playlistEntry:(id)entry reactionText:(id)text
{
  v31 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  textCopy = text;
  identifiers = [playlist identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  universalIdentifier = [entryCopy universalIdentifier];
  v14 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v27 = 2048;
    v28 = persistentID;
    v29 = 2114;
    v30 = universalIdentifier;
    _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating reaction text on playlist %lld/%{public}@", buf, 0x20u);
  }

  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v16 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];

  v17 = [[MPMediaPlaylist alloc] initWithPersistentID:persistentID mediaLibrary:v16];
  position = [entryCopy position];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __138__MPModelLibraryPlaylistEntryReactionChangeRequestOperation__performSetReactionRequestForPlaylistWithPlaylist_playlistEntry_reactionText___block_invoke;
  v21[3] = &unk_1E767B628;
  v21[4] = self;
  v22 = textCopy;
  v23 = universalIdentifier;
  v24 = persistentID;
  v19 = universalIdentifier;
  v20 = textCopy;
  [(MPMediaPlaylist *)v17 setReactionText:v20 onEntryAtPosition:position completion:v21];
}

void __138__MPModelLibraryPlaylistEntryReactionChangeRequestOperation__performSetReactionRequestForPlaylistWithPlaylist_playlistEntry_reactionText___block_invoke(uint64_t a1, char a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) userIdentity];
    v7 = [MPCloudController controllerWithUserIdentity:v6];

    if ([v7 isCloudLibraryEnabled])
    {
      v8 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        *buf = 138543362;
        v24 = v9;
        _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sending updating reaction text to cloud library", buf, 0xCu);
      }

      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      if (v10)
      {
        [MEMORY[0x1E69E43D0] paramsForSettingReaction:v10 onTrackWithItemUUID:v11];
      }

      else
      {
        [MEMORY[0x1E69E43D0] paramsForUnsettingReaction:v5 onTrackWithItemUUID:v11];
      }
      v17 = ;
      v18 = *(a1 + 56);
      v22 = v17;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
      [v7 editCollaborationWithPersistentID:v18 properties:MEMORY[0x1E695E0F8] trackEdits:v19 completion:&__block_literal_global_31776];
    }

    v20 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      *buf = 138543362;
      v24 = v21;
      _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished updating reaction text", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v16 = 0;
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update local library with new reaction text", buf, 0xCu);
    }

    v14 = *(a1 + 32);
    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:0 debugDescription:@"Failed to update local library with reaction text"];
    v15 = v14;
    v16 = v7;
  }

  [v15 _finishOperationWithError:v16];
}

- (void)execute
{
  v37 = *MEMORY[0x1E69E9840];
  playlist = [(MPModelLibraryPlaylistEntryReactionChangeRequest *)self->_request playlist];
  playlistEntry = [(MPModelLibraryPlaylistEntryReactionChangeRequest *)self->_request playlistEntry];
  reactionText = [(MPModelLibraryPlaylistEntryReactionChangeRequest *)self->_request reactionText];
  identifiers = [playlist identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  if (!persistentID)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryPlaylistEntryReactionChangeRequestOperation.m" lineNumber:27 description:@"Must be a playlist in the library"];
  }

  if ([playlistEntry hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryUniversalIdentifier"])
  {
    universalIdentifier = [playlistEntry universalIdentifier];
  }

  else
  {
    universalIdentifier = 0;
  }

  if ([universalIdentifier length])
  {
    [(MPModelLibraryPlaylistEntryReactionChangeRequestOperation *)self _performSetReactionRequestForPlaylistWithPlaylist:playlist playlistEntry:playlistEntry reactionText:reactionText];
  }

  else
  {
    v25 = reactionText;
    v11 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Reloading playlist entry to get required properties", buf, 0xCu);
    }

    v12 = [MPModelSong kindWithVariants:3];
    v26 = +[MPPropertySet emptyPropertySet];
    v13 = [MPPropertySet alloc];
    v34[0] = @"MPModelPropertyPlaylistEntryUniversalIdentifier";
    v34[1] = @"MPModelPropertyPlaylistEntryPositionUniversalIdentifier";
    v34[2] = @"MPModelPropertyPlaylistEntryPosition";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
    v24 = [(MPPropertySet *)v13 initWithProperties:v14 relationships:0];

    v15 = objc_alloc_init(MPModelLibraryRequest);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ loading track list", self];
    [(MPModelRequest *)v15 setLabel:v16];

    v33 = v12;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v18 = [MPModelPlaylistEntry kindWithKinds:v17];
    v19 = [MPModelPlaylist kindWithPlaylistEntryKind:v18 options:0];
    [(MPModelRequest *)v15 setSectionKind:v19];

    [(MPModelRequest *)v15 setSectionProperties:v26];
    v32 = v12;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v21 = [MPModelPlaylistEntry kindWithKinds:v20];
    [(MPModelRequest *)v15 setItemKind:v21];

    [(MPModelRequest *)v15 setItemProperties:v24];
    v31 = playlist;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [(MPModelLibraryRequest *)v15 setScopedContainers:v22];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __68__MPModelLibraryPlaylistEntryReactionChangeRequestOperation_execute__block_invoke;
    v27[3] = &unk_1E767B600;
    v27[4] = self;
    v28 = playlistEntry;
    v29 = playlist;
    reactionText = v25;
    v30 = v25;
    [(MPModelLibraryRequest *)v15 performWithResponseHandler:v27];
  }
}

void __68__MPModelLibraryPlaylistEntryReactionChangeRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v8 = [a2 results];
    v9 = [v8 allItems];
    v10 = [*(a1 + 40) hasLoadedValueForKey:@"MPModelPropertyPlaylistEntryPosition"];
    if (v10)
    {
      v11 = [*(a1 + 40) position];
    }

    else
    {
      v11 = -1;
    }

    v12 = [*(a1 + 40) identifiers];
    v13 = [v12 library];
    v14 = [v13 persistentID];

    if (v10)
    {
      if ([v9 count] < (v11 + 1))
      {
        v15 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = *(a1 + 32);
          *buf = 138543618;
          v22 = v16;
          v23 = 2048;
          v24 = v11;
          _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Couldn't find entry at position %ld", buf, 0x16u);
        }

        v17 = *(a1 + 32);
        v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:0 debugDescription:@"Couldn't find entry to get uuid from"];
        [v17 _finishOperationWithError:v18];
        goto LABEL_16;
      }

      v19 = [v9 objectAtIndexedSubscript:v11];
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__MPModelLibraryPlaylistEntryReactionChangeRequestOperation_execute__block_invoke_21;
      v20[3] = &__block_descriptor_40_e30_B16__0__MPModelPlaylistEntry_8l;
      v20[4] = v14;
      v19 = [v9 msv_firstWhere:v20];
    }

    v18 = v19;
    [*(a1 + 32) _performSetReactionRequestForPlaylistWithPlaylist:*(a1 + 48) playlistEntry:v19 reactionText:*(a1 + 56)];
LABEL_16:

    goto LABEL_17;
  }

  v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    *buf = 138543618;
    v22 = v7;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load playlist entries from library. err=%{public}@", buf, 0x16u);
  }

  [*(a1 + 32) _finishOperationWithError:v5];
LABEL_17:
}

BOOL __68__MPModelLibraryPlaylistEntryReactionChangeRequestOperation_execute__block_invoke_21(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifiers];
  v4 = [v3 library];
  v5 = v2 == [v4 persistentID];

  return v5;
}

@end