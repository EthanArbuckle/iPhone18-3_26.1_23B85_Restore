@interface MPModelLibraryStartCollaborationChangeRequestOperation
- (void)execute;
@end

@implementation MPModelLibraryStartCollaborationChangeRequestOperation

- (void)execute
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [(MPModelLibraryStartCollaborationChangeRequest *)self->_request playlistToConvert];
  v5 = [v4 identifiers];

  v6 = [v5 personalizedStore];
  v7 = [v6 cloudID];

  v8 = [v5 library];
  v9 = [v8 persistentID];

  v10 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MPModelLibraryStartCollaborationChangeRequest *)self->_request playlistToConvert];
    *buf = 138544130;
    v20 = self;
    v21 = 2114;
    v22 = v11;
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v7;
    _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting collaboration using %{public}@ (pid=%lld, cloudID = %lld)", buf, 0x2Au);
  }

  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MPModelLibraryStartCollaborationChangeRequestOperation.m" lineNumber:30 description:@"Must provide a playlist in the library"];
  }

  v12 = +[MPCloudController sharedCloudController];
  v13 = [(MPModelLibraryStartCollaborationChangeRequest *)self->_request collaborationSharingMode];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__MPModelLibraryStartCollaborationChangeRequestOperation_execute__block_invoke;
  v16[3] = &unk_1E767B718;
  v16[4] = self;
  v17 = v5;
  v18 = v9;
  v14 = v5;
  [v12 beginCollaborationUsingPlaylistWithPersistentID:v9 sharingMode:v13 completion:v16];
}

void __65__MPModelLibraryStartCollaborationChangeRequestOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
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
      v32 = v8;
      v33 = 2048;
      v34 = a2;
      v35 = 2114;
      v36 = v9;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "%{public}@ finished start collaboration request. new collaboration cloud library ID = %lld error=%{public}@", buf, 0x20u);
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
      v32 = v11;
      v33 = 2048;
      v34 = a2;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ finished start collaboration request. new collaboration cloud library ID = %lld", buf, 0x16u);
    }

    v12 = [MPIdentifierSet alloc];
    v13 = +[MPModelPlaylistKind identityKind];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __65__MPModelLibraryStartCollaborationChangeRequestOperation_execute__block_invoke_10;
    v26[3] = &unk_1E767CDA0;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v27 = v14;
    v28 = v15;
    v16 = [(MPIdentifierSet *)v12 initWithSource:@"StartCollaboration" modelKind:v13 block:v26];

    v17 = [MPPropertySet alloc];
    v30[0] = @"MPModelPropertyPlaylistArtwork";
    v30[1] = @"MPModelPropertyPlaylistTracksTiledArtwork";
    v30[2] = @"MPModelPropertyPlaylistName";
    v30[3] = @"MPModelPropertyPlaylistIsCollaborative";
    v30[4] = @"MPModelPropertyPlaylistCollaborationSharingMode";
    v30[5] = @"MPModelPropertyPlaylistCollaborationMode";
    v30[6] = @"MPModelPropertyPlaylistCollaboratorPermissions";
    v30[7] = @"MPModelPropertyPlaylistCollaborationInvitationURL";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:8];
    v19 = [(MPPropertySet *)v17 initWithProperties:v18 relationships:MEMORY[0x1E695E0F8]];

    v20 = objc_alloc_init(MPModelLibraryRequest);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ loading new collaboration", *(a1 + 32)];
    [(MPModelRequest *)v20 setLabel:v21];

    v22 = +[MPModelPlaylistKind identityKind];
    [(MPModelRequest *)v20 setItemKind:v22];

    [(MPModelRequest *)v20 setItemProperties:v19];
    v29 = v16;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [(MPModelLibraryRequest *)v20 setAllowedItemIdentifiers:v23];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__MPModelLibraryStartCollaborationChangeRequestOperation_execute__block_invoke_3;
    v24[3] = &unk_1E767B6F0;
    v24[4] = *(a1 + 32);
    v25 = 0;
    [(MPModelLibraryRequest *)v20 performWithResponseHandler:v24];
  }
}

void __65__MPModelLibraryStartCollaborationChangeRequestOperation_execute__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 library];
  v6 = [v5 databaseID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MPModelLibraryStartCollaborationChangeRequestOperation_execute__block_invoke_2;
  v7[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v7[4] = *(a1 + 40);
  [v4 setLibraryIdentifiersWithDatabaseID:v6 block:v7];
}

void __65__MPModelLibraryStartCollaborationChangeRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
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
      v12 = [*(*(a1 + 32) + 280) playlistToConvert];
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