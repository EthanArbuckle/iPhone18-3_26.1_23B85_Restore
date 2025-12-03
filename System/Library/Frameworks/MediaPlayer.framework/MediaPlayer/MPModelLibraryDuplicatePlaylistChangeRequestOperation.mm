@interface MPModelLibraryDuplicatePlaylistChangeRequestOperation
- (void)_addPlaylistToCloudLibraryIfNeeded:(id)needed withProperties:(id)properties completion:(id)completion;
- (void)_finishWithError:(id)error newPlaylist:(id)playlist;
- (void)execute;
@end

@implementation MPModelLibraryDuplicatePlaylistChangeRequestOperation

- (void)_finishWithError:(id)error newPlaylist:(id)playlist
{
  errorCopy = error;
  playlistCopy = playlist;
  responseHandler = [(MPModelLibraryDuplicatePlaylistChangeRequestOperation *)self responseHandler];
  if (responseHandler)
  {
    (responseHandler)[2](responseHandler, [playlistCopy persistentID], errorCopy);
  }

  [(MPAsyncOperation *)self finishWithError:errorCopy];
}

- (void)_addPlaylistToCloudLibraryIfNeeded:(id)needed withProperties:(id)properties completion:(id)completion
{
  neededCopy = needed;
  propertiesCopy = properties;
  completionCopy = completion;
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v12 = [MPCloudController controllerWithUserIdentity:userIdentity];

  if ([v12 isCloudLibraryEnabled])
  {
    userIdentity2 = [(MPAsyncOperation *)self userIdentity];
    v14 = [MPCloudController controllerWithUserIdentity:userIdentity2];
    persistentID = [neededCopy persistentID];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __118__MPModelLibraryDuplicatePlaylistChangeRequestOperation__addPlaylistToCloudLibraryIfNeeded_withProperties_completion___block_invoke;
    v16[3] = &unk_1E767AD98;
    v20 = completionCopy;
    v17 = neededCopy;
    selfCopy = self;
    v19 = propertiesCopy;
    [v14 createPlaylistWithPersistentID:persistentID properties:v19 trackList:0 completionHandler:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __118__MPModelLibraryDuplicatePlaylistChangeRequestOperation__addPlaylistToCloudLibraryIfNeeded_withProperties_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = [MPCloudControllerItemIDList cloudItemIDListForPlaylist:*(a1 + 32)];
    v6 = [*(a1 + 40) userIdentity];
    v7 = [MPCloudController controllerWithUserIdentity:v6];
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) persistentID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __118__MPModelLibraryDuplicatePlaylistChangeRequestOperation__addPlaylistToCloudLibraryIfNeeded_withProperties_completion___block_invoke_2;
    v10[3] = &unk_1E76816D0;
    v11 = *(a1 + 56);
    [v7 setPlaylistProperties:v8 trackList:v5 forPlaylistWithPersistentID:v9 completionHandler:v10];
  }
}

- (void)execute
{
  v47 = *MEMORY[0x1E69E9840];
  request = [(MPModelLibraryDuplicatePlaylistChangeRequestOperation *)self request];
  mediaLibrary = [request mediaLibrary];
  playlist = [request playlist];
  playlistPersistentID = [request playlistPersistentID];
  if (playlistPersistentID)
  {
    persistentID = playlistPersistentID;
  }

  else
  {
    identifiers = [playlist identifiers];
    library = [identifiers library];
    persistentID = [library persistentID];

    if (!persistentID)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryDuplicatePlaylistChangeRequestOperation.m" lineNumber:31 description:@"MPModelLibraryDuplicatePlaylistChangeRequest requires either a playlist or persistent ID"];

      persistentID = 0;
    }
  }

  v27 = [[MPMediaPlaylist alloc] initWithPersistentID:persistentID];
  items = [(MPMediaPlaylist *)v27 items];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(items, "count")}];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = items;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v10)
  {
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v9);
        }

        persistentID2 = [*(*(&v36 + 1) + 8 * i) persistentID];
        if (persistentID2)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithLongLong:persistentID2];
          [v8 addObject:v14];
        }

        else
        {
          v14 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            selfCopy3 = self;
            _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Original playlist has a track without a persistent ID!", buf, 0xCu);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v10);
  }

  mediaPlayerBundle = [MEMORY[0x1E696AAE8] mediaPlayerBundle];
  v16 = [mediaPlayerBundle localizedStringForKey:@"PLAYLIST_COPY_TITLE_ADDITION" value:&stru_1F149ECA8 table:@"MediaPlayer"];

  name = [(MPMediaPlaylist *)v27 name];
  v18 = [name stringByAppendingFormat:@" %@", v16];

  v19 = [mediaLibrary addPlaylistWithName:v18];
  v20 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  if (v19)
  {
    if (v21)
    {
      persistentID3 = [v19 persistentID];
      *buf = 138543874;
      selfCopy3 = self;
      v42 = 2048;
      v43 = persistentID3;
      v44 = 2114;
      v45 = v18;
      _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Created new playlist with persistent ID %lld: %{public}@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __64__MPModelLibraryDuplicatePlaylistChangeRequestOperation_execute__block_invoke;
    v30[3] = &unk_1E767AD70;
    objc_copyWeak(&v35, buf);
    v30[4] = self;
    v31 = v19;
    v32 = v18;
    v33 = v27;
    v34 = mediaLibrary;
    [v31 replaceItemsWithPersistentIDs:v8 completion:v30];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v21)
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create playlist", buf, 0xCu);
    }

    v23 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:0 debugDescription:@"Failed to set track list on new playlist"];
    [(MPModelLibraryDuplicatePlaylistChangeRequestOperation *)self _finishWithError:v23 newPlaylist:0];
  }
}

void __64__MPModelLibraryDuplicatePlaylistChangeRequestOperation_execute__block_invoke(uint64_t a1, char a2)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (a2)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    [v5 setObject:*(a1 + 48) forKeyedSubscript:@"name"];
    v6 = [*(a1 + 56) valueForProperty:@"cloudIsVisible"];
    [v5 setObject:v6 forKeyedSubscript:@"cloudIsVisible"];

    v7 = [*(a1 + 56) valueForProperty:@"cloudIsPublic"];
    [v5 setObject:v7 forKeyedSubscript:@"cloudIsPublic"];

    v8 = [*(a1 + 56) valueForProperty:@"coverArtworkRecipe"];
    if ([v8 length])
    {
      [v5 setObject:v8 forKeyedSubscript:@"coverArtworkRecipe"];
    }

    v9 = [*(a1 + 56) valueForProperty:@"descriptionInfo"];
    if ([v9 length])
    {
      [v5 setObject:v9 forKeyedSubscript:@"descriptionInfo"];
    }

    v10 = [*(a1 + 56) valueForProperty:@"parentPersistentID"];
    if ([v10 longLongValue])
    {
      [v5 setObject:v10 forKeyedSubscript:@"parentPersistentID"];
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__MPModelLibraryDuplicatePlaylistChangeRequestOperation_execute__block_invoke_25;
    v16[3] = &unk_1E767AD48;
    v17 = WeakRetained;
    v18 = *(a1 + 40);
    v19 = *(a1 + 64);
    v20 = *(a1 + 56);
    [v11 _addPlaylistToCloudLibraryIfNeeded:v12 withProperties:v5 completion:v16];
  }

  else
  {
    v13 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to set track list on new playlist", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v5 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:0 debugDescription:@"Failed to set track list on new playlist"];
    [v15 _finishWithError:v5 newPlaylist:*(a1 + 40)];
  }
}

void __64__MPModelLibraryDuplicatePlaylistChangeRequestOperation_execute__block_invoke_25(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 _finishWithError:a2 newPlaylist:v4];
  }

  else
  {
    v14 = -[MPMediaLibraryArtworkRequest initWithLibrary:identifier:entityType:artworkType:]([MPMediaLibraryArtworkRequest alloc], "initWithLibrary:identifier:entityType:artworkType:", *(a1 + 48), [*(a1 + 56) persistentID], 1, 5);
    v5 = [(MPMediaLibraryArtworkRequest *)v14 fetchableArtworkSource];
    if ([v5 intValue] == 100)
    {
      v6 = [MPMediaLibraryArtwork availableArtworkWithRequest:v14];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 originalFileURL];
        v9 = v8;
        if (v8)
        {
          v10 = *(a1 + 40);
          v11 = MEMORY[0x1E69DCAB8];
          v12 = [v8 path];
          v13 = [v11 imageWithContentsOfFile:v12];
          [v10 setUserSelectedArtworkImage:v13];
        }
      }
    }

    [*(a1 + 32) _finishWithError:0 newPlaylist:*(a1 + 40)];
  }
}

@end