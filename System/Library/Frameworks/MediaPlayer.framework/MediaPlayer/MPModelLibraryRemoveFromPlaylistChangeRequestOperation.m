@interface MPModelLibraryRemoveFromPlaylistChangeRequestOperation
- (void)execute;
@end

@implementation MPModelLibraryRemoveFromPlaylistChangeRequestOperation

- (void)execute
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [(MPModelLibraryRemoveFromPlaylistChangeRequest *)self->_request mediaLibrary];
  v4 = [(MPModelLibraryRemoveFromPlaylistChangeRequest *)self->_request playlist];
  v5 = [v4 identifiers];
  v6 = [v5 library];
  v7 = [v6 persistentID];

  v8 = [(MPModelLibraryRemoveFromPlaylistChangeRequest *)self->_request entriesToRemove];
  v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = self;
    v48 = 2114;
    v49 = v4;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ removing tracks from playlist %{public}@", buf, 0x16u);
  }

  if (!v7)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"MPModelLibraryRemoveFromPlaylistChangeRequestOperation.m" lineNumber:29 description:@"Must provide a playlist in the library"];
  }

  v10 = [v3 playlistWithPersistentID:v7];
  v33 = v3;
  v31 = v7;
  v32 = v4;
  v34 = self;
  v30 = v10;
  if ([v4 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsCollaborative"])
  {
    v11 = [v4 isCollaborative];
  }

  else
  {
    v12 = [v10 valueForProperty:@"isCollaborative"];
    v11 = [v12 BOOLValue];
  }

  v13 = [MEMORY[0x1E696AD50] indexSet];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v42;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        [v13 addIndex:{objc_msgSend(v20, "position")}];
        if (v11)
        {
          v21 = [v20 universalIdentifier];
          if (!v21)
          {
            [MEMORY[0x1E696AAA8] currentHandler];
            v23 = v28 = v20;
            [v23 handleFailureInMethod:a2 object:v34 file:@"MPModelLibraryRemoveFromPlaylistChangeRequestOperation.m" lineNumber:42 description:{@"No uuid for deleted entry %@", v28}];
          }

          v22 = [MEMORY[0x1E69E43D0] paramsForRemovingTrackWithItemUUID:v21];
          [v14 addObject:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v17);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __65__MPModelLibraryRemoveFromPlaylistChangeRequestOperation_execute__block_invoke;
  v35[3] = &unk_1E767B6A8;
  v35[4] = v34;
  v36 = v32;
  v40 = v11;
  v38 = v30;
  v39 = v31;
  v37 = v14;
  v24 = v30;
  v25 = v14;
  v26 = v32;
  [v24 removeItems:MEMORY[0x1E695E0F0] atFilteredIndexes:v13 completionBlock:v35];
}

void __65__MPModelLibraryRemoveFromPlaylistChangeRequestOperation_execute__block_invoke(uint64_t a1, char a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) userIdentity];
  v5 = [MPCloudController controllerWithUserIdentity:v4];
  v6 = [v5 isCloudLibraryEnabled];

  if ((a2 & 1) == 0)
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 138543618;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to remove track entries from the database for %{public}@", buf, 0x16u);
    }

    v15 = [*(a1 + 32) responseHandler];
    v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:0 debugDescription:@"Failed to remove the track entries from the database"];
    (v15)[2](v15, v16);

    goto LABEL_11;
  }

  if ((v6 & 1) == 0)
  {
    v17 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 138543618;
      v30 = v18;
      v31 = 2114;
      v32 = v19;
      _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Finished removing tracks from %{public}@", buf, 0x16u);
    }

    v15 = [*(a1 + 32) responseHandler];
    v15[2](v15, 0);
LABEL_11:

    [*(a1 + 32) finish];
    return;
  }

  if (*(a1 + 72) == 1)
  {
    v7 = [*(a1 + 32) userIdentity];
    v8 = [MPCloudController controllerWithUserIdentity:v7];
    v9 = *(a1 + 64);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __65__MPModelLibraryRemoveFromPlaylistChangeRequestOperation_execute__block_invoke_18;
    v27[3] = &unk_1E767B680;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v27[4] = *(a1 + 32);
    v28 = v10;
    [v8 editCollaborationWithPersistentID:v9 properties:MEMORY[0x1E695E0F8] trackEdits:v11 completion:v27];
  }

  else
  {
    v20 = [MPCloudControllerItemIDList cloudItemIDListForPlaylist:*(a1 + 56)];
    v21 = [*(a1 + 32) userIdentity];
    v22 = [MPCloudController controllerWithUserIdentity:v21];
    v23 = [*(a1 + 56) persistentID];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __65__MPModelLibraryRemoveFromPlaylistChangeRequestOperation_execute__block_invoke_21;
    v25[3] = &unk_1E767B680;
    v24 = *(a1 + 40);
    v25[4] = *(a1 + 32);
    v26 = v24;
    [v22 setPlaylistProperties:MEMORY[0x1E695E0F8] trackList:v20 forPlaylistWithPersistentID:v23 completionHandler:v25];
  }
}

void __65__MPModelLibraryRemoveFromPlaylistChangeRequestOperation_execute__block_invoke_18(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = [v3 msv_description];
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "%{public}@ finished removing cloud tracks from playlist %{public}@ error=%{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ finished removing cloud tracks from playlist %{public}@", &v12, 0x16u);
  }

  v11 = [*(a1 + 32) responseHandler];
  (v11)[2](v11, v3);

  [*(a1 + 32) finish];
}

void __65__MPModelLibraryRemoveFromPlaylistChangeRequestOperation_execute__block_invoke_21(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = [v3 msv_description];
      v12 = 138543874;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "%{public}@ finished removing cloud tracks from playlist %{public}@ error=%{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ finished removing cloud tracks from playlist %{public}@", &v12, 0x16u);
  }

  v11 = [*(a1 + 32) responseHandler];
  (v11)[2](v11, v3);

  [*(a1 + 32) finish];
}

@end