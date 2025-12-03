@interface MPModelLibraryEndCollaborationChangeRequestOperation
- (void)execute;
@end

@implementation MPModelLibraryEndCollaborationChangeRequestOperation

- (void)execute
{
  v24 = *MEMORY[0x1E69E9840];
  collaborationToEnd = [(MPModelLibraryEndCollaborationChangeRequest *)self->_request collaborationToEnd];
  identifiers = [collaborationToEnd identifiers];

  personalizedStore = [identifiers personalizedStore];
  cloudID = [personalizedStore cloudID];

  library = [identifiers library];
  persistentID = [library persistentID];

  v10 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    collaborationToEnd2 = [(MPModelLibraryEndCollaborationChangeRequest *)self->_request collaborationToEnd];
    *buf = 138543874;
    selfCopy = self;
    v20 = 2114;
    v21 = collaborationToEnd2;
    v22 = 2048;
    v23 = cloudID;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ ending collaboration %{public}@ (cloudID = %lld)", buf, 0x20u);
  }

  if (!persistentID)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryEndCollaborationChangeRequestOperation.m" lineNumber:29 description:@"Must provide a playlist in the library"];
  }

  v12 = +[MPCloudController sharedCloudController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__MPModelLibraryEndCollaborationChangeRequestOperation_execute__block_invoke;
  v15[3] = &unk_1E767B718;
  v15[4] = self;
  v16 = identifiers;
  v17 = persistentID;
  v13 = identifiers;
  [v12 endCollaborationWithPersistentID:persistentID completion:v15];
}

void __63__MPModelLibraryEndCollaborationChangeRequestOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v5 msv_description];
      *buf = 138543874;
      v36 = v8;
      v37 = 2048;
      v38 = a2;
      v39 = 2114;
      v40 = v9;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "%{public}@ finished end collaboration request. new playlist cloud library ID = %lld error=%{public}@", buf, 0x20u);
    }

    v10 = [*(a1 + 32) responseHandler];
    (v10)[2](v10, 0, v5);

    [*(a1 + 32) finish];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v36 = v11;
      v37 = 2048;
      v38 = a2;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ finished end collaboration request. new playlist cloud library ID = %lld", buf, 0x16u);
    }

    v12 = [MPIdentifierSet alloc];
    v13 = +[MPModelPlaylistKind identityKind];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __63__MPModelLibraryEndCollaborationChangeRequestOperation_execute__block_invoke_10;
    v29[3] = &unk_1E767CDA0;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v30 = v14;
    v31 = v15;
    v16 = [(MPIdentifierSet *)v12 initWithSource:@"StartCollaboration" modelKind:v13 block:v29];

    v17 = [MPPropertySet alloc];
    v34[0] = @"MPModelPropertyPlaylistName";
    v34[1] = @"MPModelPropertyPlaylistIsCollaborative";
    v34[2] = @"MPModelPropertyPlaylistCollaborationSharingMode";
    v34[3] = @"MPModelPropertyPlaylistCollaborationMode";
    v34[4] = @"MPModelPropertyPlaylistCollaboratorPermissions";
    v34[5] = @"MPModelPropertyPlaylistCollaborationInvitationURL";
    v34[6] = @"MPModelPropertyPlaylistCollaboratorStatus";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:7];
    v19 = [(MPPropertySet *)v17 initWithProperties:v18 relationships:MEMORY[0x1E695E0F8]];

    v20 = [MPModelSong kindWithVariants:3];
    v33 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v22 = [MPModelPlaylistEntry kindWithKinds:v21];

    v23 = [MPModelPlaylist kindWithVariants:31 playlistEntryKind:v22 options:0];
    v24 = objc_alloc_init(MPModelLibraryRequest);
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ loading new collaboration", *(a1 + 32)];
    [(MPModelRequest *)v24 setLabel:v25];

    [(MPModelRequest *)v24 setItemKind:v23];
    [(MPModelRequest *)v24 setItemProperties:v19];
    v32 = v16;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    [(MPModelLibraryRequest *)v24 setAllowedItemIdentifiers:v26];

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __63__MPModelLibraryEndCollaborationChangeRequestOperation_execute__block_invoke_3;
    v27[3] = &unk_1E767B6F0;
    v27[4] = *(a1 + 32);
    v28 = 0;
    [(MPModelLibraryRequest *)v24 performWithResponseHandler:v27];
  }
}

void __63__MPModelLibraryEndCollaborationChangeRequestOperation_execute__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 library];
  v6 = [v5 databaseID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__MPModelLibraryEndCollaborationChangeRequestOperation_execute__block_invoke_2;
  v7[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v7[4] = *(a1 + 40);
  [v4 setLibraryIdentifiersWithDatabaseID:v6 block:v7];
}

void __63__MPModelLibraryEndCollaborationChangeRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v19 = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load new collaboration from library. err=%{public}@", &v19, 0x16u);
    }

    v9 = [*(a1 + 32) responseHandler];
    (v9)[2](v9, 0, v5);
  }

  else
  {
    v9 = [a2 results];
    v10 = [v9 allItems];
    v11 = [v10 firstObject];

    if (v11)
    {
      v12 = [*(*(a1 + 32) + 280) collaborationToEnd];
      v13 = [v12 mergeWithObject:v11];

      v14 = [*(a1 + 32) responseHandler];
      (v14)[2](v14, v13, 0);
    }

    else
    {
      v15 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v19 = 138543362;
        v20 = v16;
        _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find updated playlist in library", &v19, 0xCu);
      }

      v17 = [*(a1 + 32) responseHandler];
      v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:4 debugDescription:@"Failed to find updated playlist in library"];
      (v17)[2](v17, 0, v18);
    }
  }

  [*(a1 + 32) finish];
}

@end