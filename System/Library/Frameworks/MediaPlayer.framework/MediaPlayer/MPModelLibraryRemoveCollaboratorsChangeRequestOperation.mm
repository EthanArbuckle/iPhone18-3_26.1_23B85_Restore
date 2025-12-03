@interface MPModelLibraryRemoveCollaboratorsChangeRequestOperation
- (void)execute;
@end

@implementation MPModelLibraryRemoveCollaboratorsChangeRequestOperation

- (void)execute
{
  v31 = *MEMORY[0x1E69E9840];
  collaboration = [(MPModelLibraryRemoveCollaboratorsChangeRequest *)self->_request collaboration];
  identifiers = [collaboration identifiers];
  universalStore = [identifiers universalStore];
  globalPlaylistID = [universalStore globalPlaylistID];

  library = [identifiers library];
  persistentID = [library persistentID];

  v10 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    socialProfileIDsToRemove = [(MPModelLibraryRemoveCollaboratorsChangeRequest *)self->_request socialProfileIDsToRemove];
    msv_compactDescription = [socialProfileIDsToRemove msv_compactDescription];
    *buf = 138544130;
    selfCopy = self;
    v25 = 2114;
    v26 = collaboration;
    v27 = 2114;
    v28 = globalPlaylistID;
    v29 = 2114;
    v30 = msv_compactDescription;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ removing collaborators from %{public}@ (globalPlaylistID = %{public}@); (%{public}@)", buf, 0x2Au);
  }

  if (!persistentID || (-[MPModelLibraryRemoveCollaboratorsChangeRequest socialProfileIDsToRemove](self->_request, "socialProfileIDsToRemove"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 count], v13, !v14))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryRemoveCollaboratorsChangeRequestOperation.m" lineNumber:27 description:@"Must provide a playlist and social profile IDs to remove"];
  }

  v16 = +[MPCloudController sharedCloudController];
  socialProfileIDsToRemove2 = [(MPModelLibraryRemoveCollaboratorsChangeRequest *)self->_request socialProfileIDsToRemove];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__MPModelLibraryRemoveCollaboratorsChangeRequestOperation_execute__block_invoke;
  v20[3] = &unk_1E76801E8;
  v20[4] = self;
  v21 = identifiers;
  v22 = collaboration;
  v18 = collaboration;
  v19 = identifiers;
  [v16 removeCollaborators:socialProfileIDsToRemove2 fromCollaborationWithPersistentID:persistentID completion:v20];
}

void __66__MPModelLibraryRemoveCollaboratorsChangeRequestOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "%{public}@ finished remove collaborators request error=%{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 32) responseHandler];
    (v8)[2](v8, 0, v3);

    [*(a1 + 32) finish];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v27 = v9;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ finished remove collaborators request", buf, 0xCu);
    }

    v10 = [MPPropertySet alloc];
    v25[0] = @"MPModelPropertyPlaylistName";
    v25[1] = @"MPModelPropertyPlaylistIsCollaborative";
    v25[2] = @"MPModelPropertyPlaylistCollaborationSharingMode";
    v25[3] = @"MPModelPropertyPlaylistCollaborationMode";
    v25[4] = @"MPModelPropertyPlaylistCollaboratorPermissions";
    v25[5] = @"MPModelPropertyPlaylistCollaborationInvitationURL";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:6];
    v12 = [(MPPropertySet *)v10 initWithProperties:v11 relationships:MEMORY[0x1E695E0F8]];

    v13 = [MPModelSong kindWithVariants:3];
    v24 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v15 = [MPModelPlaylistEntry kindWithKinds:v14];

    v16 = [MPModelPlaylist kindWithVariants:31 playlistEntryKind:v15 options:0];
    v17 = objc_alloc_init(MPModelLibraryRequest);
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ loading updated playlist", *(a1 + 32)];
    [(MPModelRequest *)v17 setLabel:v18];

    [(MPModelRequest *)v17 setItemKind:v16];
    [(MPModelRequest *)v17 setItemProperties:v12];
    v23 = *(a1 + 40);
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [(MPModelLibraryRequest *)v17 setAllowedItemIdentifiers:v19];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__MPModelLibraryRemoveCollaboratorsChangeRequestOperation_execute__block_invoke_15;
    v20[3] = &unk_1E767B650;
    v20[4] = *(a1 + 32);
    v21 = 0;
    v22 = *(a1 + 48);
    [(MPModelLibraryRequest *)v17 performWithResponseHandler:v20];
  }
}

void __66__MPModelLibraryRemoveCollaboratorsChangeRequestOperation_execute__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v16 = 138543618;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load new collaboration from library. err=%{public}@", &v16, 0x16u);
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
      v12 = [*(a1 + 48) mergeWithObject:v11];
      v13 = [*(a1 + 32) responseHandler];
      v13[2](v13, v12, 0);
    }

    else
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = 138543362;
        v17 = v15;
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find updated playlist in library", &v16, 0xCu);
      }

      v12 = [*(a1 + 32) responseHandler];
      v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:4 debugDescription:@"Failed to find updated playlist in library"];
      v12[2](v12, 0, v13);
    }
  }

  [*(a1 + 32) finish];
}

@end