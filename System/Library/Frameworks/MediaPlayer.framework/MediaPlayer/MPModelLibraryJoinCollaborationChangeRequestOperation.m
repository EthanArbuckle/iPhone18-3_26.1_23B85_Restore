@interface MPModelLibraryJoinCollaborationChangeRequestOperation
- (void)execute;
@end

@implementation MPModelLibraryJoinCollaborationChangeRequestOperation

- (void)execute
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [(MPModelLibraryJoinCollaborationChangeRequest *)self->_request collaborationToJoin];
  v5 = [v4 identifiers];

  v6 = [v5 universalStore];
  v7 = [v6 globalPlaylistID];

  v8 = [(MPModelLibraryJoinCollaborationChangeRequest *)self->_request invitationURL];
  v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MPModelLibraryJoinCollaborationChangeRequest *)self->_request collaborationToJoin];
    *buf = 138543874;
    v18 = self;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ joining collaboration %{public}@ (globalPlaylistID = %{public}@)", buf, 0x20u);
  }

  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MPModelLibraryJoinCollaborationChangeRequestOperation.m" lineNumber:29 description:@"Must have a non-nil playlistID and invitation URL"];
  }

  v12 = +[MPCloudController sharedCloudController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__MPModelLibraryJoinCollaborationChangeRequestOperation_execute__block_invoke;
  v15[3] = &unk_1E767B030;
  v15[4] = self;
  v16 = v5;
  v13 = v5;
  [v12 joinCollaborationWithGlobalPlaylistID:v7 invitationURL:v8 completion:v15];
}

void __64__MPModelLibraryJoinCollaborationChangeRequestOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v5 msv_description];
      *buf = 138543874;
      v35 = v8;
      v36 = 2048;
      v37 = a2;
      v38 = 2114;
      v39 = v9;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "%{public}@ finished join collaboration request. new collaboration cloud library ID = %lld error=%{public}@", buf, 0x20u);
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
      v35 = v11;
      v36 = 2048;
      v37 = a2;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ finished join collaboration request. new collaboration cloud library ID = %lld", buf, 0x16u);
    }

    v12 = [MPPropertySet alloc];
    v33[0] = @"MPModelPropertyPlaylistName";
    v33[1] = @"MPModelPropertyPlaylistIsCollaborative";
    v33[2] = @"MPModelPropertyPlaylistCollaborationSharingMode";
    v33[3] = @"MPModelPropertyPlaylistCollaborationMode";
    v33[4] = @"MPModelPropertyPlaylistCollaboratorPermissions";
    v33[5] = @"MPModelPropertyPlaylistCollaborationInvitationURL";
    v33[6] = @"MPModelPropertyPlaylistUserEditableComponents";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:7];
    v31 = @"MPModelRelationshipPlaylistCurator";
    v14 = [MPPropertySet alloc];
    v30[0] = @"MPModelPropertyPersonName";
    v30[1] = @"MPModelPropertyCuratorHandle";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v16 = [(MPPropertySet *)v14 initWithProperties:v15 relationships:MEMORY[0x1E695E0F8]];
    v32 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v18 = [(MPPropertySet *)v12 initWithProperties:v13 relationships:v17];

    v19 = [MPModelSong kindWithVariants:3];
    v29 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v21 = [MPModelPlaylistEntry kindWithKinds:v20];

    v22 = [MPModelPlaylist kindWithVariants:31 playlistEntryKind:v21 options:0];
    v23 = objc_alloc_init(MPModelLibraryRequest);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ loading new collaboration", *(a1 + 32)];
    [(MPModelRequest *)v23 setLabel:v24];

    [(MPModelRequest *)v23 setItemKind:v22];
    [(MPModelRequest *)v23 setItemProperties:v18];
    v28 = *(a1 + 40);
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [(MPModelLibraryRequest *)v23 setAllowedItemIdentifiers:v25];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64__MPModelLibraryJoinCollaborationChangeRequestOperation_execute__block_invoke_16;
    v26[3] = &unk_1E767B6F0;
    v26[4] = *(a1 + 32);
    v27 = 0;
    [(MPModelLibraryRequest *)v23 performWithResponseHandler:v26];
  }
}

void __64__MPModelLibraryJoinCollaborationChangeRequestOperation_execute__block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "PlaylistEditing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v19 = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load new collaboration from library. err=%{public}@", &v19, 0x16u);
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
      v12 = [*(*(a1 + 32) + 280) collaborationToJoin];
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
        _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find new collaboration in library", &v19, 0xCu);
      }

      v17 = [*(a1 + 32) responseHandler];
      v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:4 debugDescription:@"Failed to find new collaboration in library"];
      (v17)[2](v17, 0, v18);
    }
  }

  [*(a1 + 32) finish];
}

@end