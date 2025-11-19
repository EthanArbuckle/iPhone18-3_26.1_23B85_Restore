@interface MPModelLibraryAddToPlaylistChangeRequestOperation
- (BOOL)_isCloudLibraryEnabled;
- (void)_updateCloudLibraryForPlaylist:(id)a3 withAddedItems:(id)a4 completion:(id)a5;
- (void)execute;
@end

@implementation MPModelLibraryAddToPlaylistChangeRequestOperation

- (BOOL)_isCloudLibraryEnabled
{
  v2 = [(MPAsyncOperation *)self userIdentity];
  v3 = [MPCloudController controllerWithUserIdentity:v2];
  v4 = [v3 isCloudLibraryEnabled];

  return v4;
}

- (void)_updateCloudLibraryForPlaylist:(id)a3 withAddedItems:(id)a4 completion:(id)a5
{
  v54 = a3;
  v9 = a4;
  v53 = a5;
  v10 = [(MPModelLibraryAddToPlaylistChangeRequest *)self->_request representativeModelObject];
  v11 = [v10 identifiers];
  v12 = [v11 library];
  v51 = [v12 persistentID];

  v13 = [v11 personalizedStore];
  v55 = [v13 cloudID];

  v14 = [v11 universalStore];
  v15 = [v14 purchasedAdamID];
  if (!v15)
  {
    v16 = [v11 universalStore];
    v15 = [v16 adamID];
    if (!v15)
    {
      [v11 universalStore];
      v17 = v11;
      v19 = v18 = a2;
      v15 = [v19 subscriptionAdamID];

      a2 = v18;
      v11 = v17;
    }
  }

  objc_opt_class();
  v52 = v10;
  LOBYTE(v20) = objc_opt_isKindOfClass();
  if ([v9 count] == 1)
  {
    v50 = v9;
    v21 = v11;
    v22 = a2;
    v23 = [v9 firstObject];
    v24 = [v23 persistentID];
    v25 = [v23 valueForProperty:@"subscriptionStoreItemAdamID"];
    v26 = [v25 unsignedLongLongValue];

    if (!v26)
    {
      v27 = [v23 valueForProperty:@"storeItemAdamID"];
      v26 = [v27 unsignedLongLongValue];
    }

    v28 = [v23 valueForProperty:@"storeSagaID"];
    v29 = [v28 unsignedLongLongValue];

    v30 = v51;
    if (v24)
    {
      v31 = v51 == 0;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      v30 = v24;
    }

    if (v55)
    {
      a2 = v22;
      v11 = v21;
    }

    else
    {
      a2 = v22;
      v11 = v21;
      if (v29)
      {
        if ([v23 mediaType])
        {
          LOBYTE(v20) = 1;
        }

        else
        {
          v20 = ([v23 mediaType] >> 11) & 1;
        }

        v55 = v29;
      }
    }

    if (v26)
    {
      v32 = v15 == 0;
    }

    else
    {
      v32 = 0;
    }

    if (v32)
    {
      v15 = v26;
    }

    v9 = v50;
  }

  else
  {
    v30 = v51;
  }

  if (self->_isCollaborativePlaylist)
  {
    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke;
    v64[3] = &unk_1E767ACA0;
    v65 = v33;
    v66 = a2;
    v64[4] = self;
    v34 = v33;
    [v9 enumerateObjectsUsingBlock:v64];
    v35 = [(MPAsyncOperation *)self userIdentity];
    v36 = [MPCloudController controllerWithUserIdentity:v35];
    v37 = v54;
    v38 = [v54 persistentID];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke_38;
    v62[3] = &unk_1E76816D0;
    v39 = v53;
    v63 = v53;
    [v36 editCollaborationWithPersistentID:v38 properties:MEMORY[0x1E695E0F8] trackEdits:v34 completion:v62];
  }

  else if (((v55 != 0) & v20) == 1)
  {
    v40 = [(MPAsyncOperation *)self userIdentity];
    v41 = [MPCloudController controllerWithUserIdentity:v40];
    v37 = v54;
    v42 = [v54 persistentID];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke_39;
    v60[3] = &unk_1E76816D0;
    v39 = v53;
    v61 = v53;
    [v41 addItemWithSagaID:v55 toPlaylistWithPersistentID:v42 completionHandler:v60];

    v34 = v61;
  }

  else
  {
    v43 = v9;
    v44 = [(MPAsyncOperation *)self userIdentity];
    v45 = [MPCloudController controllerWithUserIdentity:v44];
    if (!v15 || v30)
    {
      v37 = v54;
      v48 = [MPCloudControllerItemIDList cloudItemIDListForPlaylist:v54];
      v49 = [v54 persistentID];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke_42;
      v56[3] = &unk_1E76816D0;
      v39 = v53;
      v57 = v53;
      [v45 setPlaylistProperties:0 trackList:v48 forPlaylistWithPersistentID:v49 completionHandler:v56];

      v34 = v57;
    }

    else
    {
      v46 = [(MPModelLibraryAddToPlaylistChangeRequest *)self->_request referralObject];
      v37 = v54;
      v47 = [v54 persistentID];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke_40;
      v58[3] = &unk_1E76816D0;
      v39 = v53;
      v59 = v53;
      [v45 addStoreItemWithAdamID:v15 referralObject:v46 toPlaylistWithPersistentID:v47 completionHandler:v58];

      v34 = v59;
    }

    v9 = v43;
  }
}

void __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 persistentID];
  v7 = [v5 valueForProperty:@"subscriptionStoreItemAdamID"];
  v8 = [v7 unsignedLongLongValue];

  if (v8 || ([v5 valueForProperty:@"storeItemAdamID"], v9 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v9, "unsignedLongLongValue"), v9, v8) || (objc_msgSend(v5, "valueForProperty:", @"assetStoreItemAdamID"), v10 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v10, "unsignedLongLongValue"), v10, v8))
  {
    v11 = *(a1[4] + 288);
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (!v13)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a1[6] object:a1[4] file:@"MPModelLibraryAddToPlaylistChangeRequestOperation.m" lineNumber:263 description:{@"No item properties for track with persistent ID %lld", v6}];
    }

    v14 = a1[5];
    v15 = MEMORY[0x1E69E43D0];
    v16 = [v13 objectForKeyedSubscript:@"entryUniversalIdentifier"];
    v17 = [v13 objectForKeyedSubscript:@"entryPositionUniversalIdentifier"];
    v18 = [v15 paramsForAddingTrackWithAdamID:v8 itemUUID:v16 itemPositionUUID:v17 atPosition:2];
    [v14 addObject:v18];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[4];
      *buf = 138543618;
      v23 = v20;
      v24 = 2048;
      v25 = v6;
      _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_ERROR, "%{public}@ No adamID for track %lld - skipping adding to collaboration", buf, 0x16u);
    }
  }
}

void __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke_38(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 msv_description];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "-editCollaborationWithPersistentID completed. error=%{public}@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "-editCollaborationWithPersistentID completed.", &v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke_39(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 msv_description];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "-addItemWithSagaID:toPlaylistWithPersistentID:completionHandler: completed. error=%{public}@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "-addItemWithSagaID:toPlaylistWithPersistentID:completionHandler: completed.", &v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke_40(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 msv_description];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "-addStoreItemWithAdamID:referralObject:toPlaylistWithPersistentID:completionHandler: completed. error=%{public}@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "-addStoreItemWithAdamID:referralObject:toPlaylistWithPersistentID:completionHandler: completed.", &v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __110__MPModelLibraryAddToPlaylistChangeRequestOperation__updateCloudLibraryForPlaylist_withAddedItems_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "CloudController");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 msv_description];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "-setPlaylistProperties:trackList:forPlaylistWithPersistentID:completionHandler: completed. error=%{public}@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "-setPlaylistProperties:trackList:forPlaylistWithPersistentID:completionHandler: completed.", &v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)execute
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 qualityOfService];

  v5 = [(MPModelLibraryAddToPlaylistChangeRequestOperation *)self request];
  v6 = [(MPAsyncOperation *)self userIdentity];
  v7 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v6];

  v8 = [v5 playlist];
  v9 = [v8 identifiers];
  v10 = [v9 library];
  v11 = [v10 persistentID];

  if (v11)
  {
    v12 = [v7 playlistWithPersistentID:v11];
    if ([v8 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsCollaborative"])
    {
      self->_isCollaborativePlaylist = [v8 isCollaborative];
    }

    else
    {
      v13 = [v12 valueForProperty:@"isCollaborative"];
      self->_isCollaborativePlaylist = [v13 BOOLValue];
    }

    if ([v8 hasLoadedValueForKey:@"MPModelPropertyPlaylistIsOwner"])
    {
      self->_isOwner = [v8 isOwner];
    }

    else
    {
      v14 = [v12 valueForProperty:@"iO"];
      self->_isOwner = [v14 BOOLValue];
    }

    v15 = [MEMORY[0x1E695DF90] dictionary];
    itemEntryProperties = self->_itemEntryProperties;
    self->_itemEntryProperties = v15;
  }

  else
  {
    v12 = 0;
  }

  v17 = os_log_create("com.apple.amp.mediaplayer", "Default_Oversize");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v5 songResults];
    v19 = [v18 totalItemCount];
    isCollaborativePlaylist = self->_isCollaborativePlaylist;
    *buf = 138544386;
    v61 = self;
    v62 = 2048;
    v63 = v19;
    v64 = 2114;
    v65 = v8;
    v66 = 1024;
    v67 = isCollaborativePlaylist;
    v68 = 1024;
    v69 = v4;
    _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding %ld items to playlist %{public}@. isCollaborative = %{BOOL}u, qualityOfService=%d", buf, 0x2Cu);
  }

  if (v12)
  {
    v40 = v12;
    v38 = v4;
    v21 = [v5 songResults];
    v22 = objc_alloc_init(MPMutableSectionedCollection);
    [(MPMutableSectionedCollection *)v22 appendSection:&stru_1F149ECA8];
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke;
    v54[3] = &unk_1E767BEC8;
    v24 = v7;
    v55 = v24;
    v56 = self;
    v25 = v23;
    v57 = v25;
    v26 = v21;
    v58 = v26;
    v27 = v22;
    v59 = v27;
    [v26 enumerateItemIdentifiersUsingBlock:v54];
    v41 = v5;
    v39 = v7;
    if ([(MPSectionedCollection *)v27 totalItemCount]< 1)
    {
      v12 = v40;
      v36 = v40;
      v37 = self->_itemEntryProperties;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_2_28;
      v42[3] = &unk_1E767AC70;
      v42[4] = self;
      v30 = &v43;
      v32 = &v44;
      v43 = v25;
      v44 = v36;
      [v36 appendItems:v43 andEntryProperties:v37 completion:v42];
    }

    else
    {
      v28 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(MPSectionedCollection *)v27 totalItemCount];
        *buf = 138543618;
        v61 = self;
        v62 = 2048;
        v63 = v29;
        _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Importing %ld songs not in the library", buf, 0x16u);
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_12;
      aBlock[3] = &unk_1E767AC20;
      aBlock[4] = self;
      v53 = v38;
      v30 = &v48;
      v31 = v5;
      v48 = v31;
      v32 = &v49;
      v49 = v27;
      v50 = v26;
      v51 = v24;
      v52 = v40;
      v33 = _Block_copy(aBlock);
      v34 = [v31 storeImportAllowedHandler];
      if (v34)
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_27;
        v45[3] = &unk_1E767AC48;
        v45[4] = self;
        v46 = v33;
        (v34)[2](v34, v45);
      }

      else
      {
        v33[2](v33);
      }

      v12 = v40;
    }

    v5 = v41;
    v7 = v39;
  }

  else
  {
    responseHandler = self->_responseHandler;
    if (responseHandler)
    {
      responseHandler[2](responseHandler, 0);
    }

    [(MPAsyncOperation *)self finish];
  }
}

void __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 library];
  v8 = [v7 persistentID];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [*(a1 + 32) itemWithPersistentID:v8 verifyExistence:0];
  v10 = v9;
  if (!v9 || ([v9 valueForProperty:@"isInMyLibrary"], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, !v12))
  {

LABEL_12:
    v10 = [*(a1 + 56) itemAtIndexPath:v5];
    [*(a1 + 64) appendItem:v10];
    goto LABEL_13;
  }

  if (*(*(a1 + 40) + 280) == 1)
  {
    v13 = [v6 universalStore];
    if ([v13 subscriptionAdamID])
    {
LABEL_8:

      goto LABEL_9;
    }

    v14 = [v6 universalStore];
    if ([v14 adamID])
    {

      goto LABEL_8;
    }

    v21 = [v6 universalStore];
    v22 = [v21 assetAdamID];

    if (!v22)
    {
      v15 = _MPLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 40);
        *buf = 138543874;
        v27 = v23;
        v28 = 2048;
        v29 = v8;
        v30 = 2114;
        v31 = v6;
        _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Skipping adding song with persistent ID %lld because a store ID is required. identifiers=%{public}@", buf, 0x20u);
      }

      goto LABEL_10;
    }
  }

LABEL_9:
  [*(a1 + 48) addObject:v10];
  v15 = [MEMORY[0x1E69E43D0] newIdentifierString];
  v24[1] = @"entryPositionUniversalIdentifier";
  v25[0] = v15;
  v16 = [MEMORY[0x1E69E43D0] newIdentifierString];
  v25[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v18 = *(a1 + 48);
  v19 = *(*(a1 + 40) + 288);
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "count") - 1}];
  [v19 setObject:v17 forKeyedSubscript:v20];

LABEL_10:
LABEL_13:
}

void __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 32) userIdentity];
  v3 = [MPCloudController controllerWithUserIdentity:v2];

  v4 = *(a1 + 32);
  if (*(v4 + 281) == 1)
  {
    v5 = [v3 cloudAddToPlaylistBehavior] == 1;
    v4 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  if (!*(v4 + 272))
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v7 = *(a1 + 32);
    v8 = *(v7 + 272);
    *(v7 + 272) = v6;

    [*(*(a1 + 32) + 272) setName:@"com.apple.MediaPlayer.MPModelLibraryAddToPlaylistChangeRequestOperation.operationQueue"];
    [*(*(a1 + 32) + 272) setMaxConcurrentOperationCount:1];
    [*(*(a1 + 32) + 272) setQualityOfService:*(a1 + 80)];
  }

  v9 = objc_alloc_init(MPModelLibraryImportChangeRequest);
  v10 = [*(a1 + 40) referralObject];
  [(MPModelLibraryImportChangeRequest *)v9 setReferralObject:v10];

  [(MPModelLibraryImportChangeRequest *)v9 setModelObjects:*(a1 + 48)];
  [(MPModelLibraryImportChangeRequest *)v9 setShouldLibraryAdd:v5];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_2;
  v13[3] = &unk_1E767ABF8;
  v13[4] = *(a1 + 32);
  v14 = v9;
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v11 = v9;
  v12 = [(MPModelLibraryImportChangeRequest *)v11 newOperationWithResponseHandler:v13];
  [*(*(a1 + 32) + 272) addOperation:v12];
}

void __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_27(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPModelLibraryAddToPlaylistChangeRequestErrorDomain" code:-6003 userInfo:0];
    v5 = *(a1 + 32);
    v6 = v5[38];
    v7 = v4;
    if (v6)
    {
      (*(v6 + 16))(v6);
      v4 = v7;
      v5 = *(a1 + 32);
    }

    [v5 finishWithError:v4];
  }
}

void __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_2_28(uint64_t a1, int a2)
{
  if (a2)
  {
    if ([*(a1 + 32) _isCloudLibraryEnabled] && objc_msgSend(*(a1 + 40), "count"))
    {
      v4 = *(a1 + 40);
      v3 = *(a1 + 48);
      v5 = *(a1 + 32);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_3;
      v11[3] = &unk_1E767D2A0;
      v11[4] = v5;
      [v5 _updateCloudLibraryForPlaylist:v3 withAddedItems:v4 completion:v11];
      return;
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPModelLibraryAddToPlaylistChangeRequestErrorDomain" code:-6004 userInfo:0];
  }

  v7 = *(a1 + 32);
  v8 = v7[38];
  v9 = v6;
  if (v8)
  {
    (*(v8 + 16))(v8);
    v6 = v9;
    v7 = *(a1 + 32);
  }

  [v7 finishWithError:{v6, v9}];
}

void __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[38];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

void __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543874;
    v53 = v8;
    v54 = 2114;
    v55 = v9;
    v56 = 2114;
    v57 = v6;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Request %{public}@ finished with error=%{public}@", buf, 0x20u);
  }

  v36 = v6;

  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v47 + 1) + 8 * i) identifiers];
        v16 = [v15 library];
        v17 = [v16 persistentID];

        v18 = [v15 universalStore];
        v19 = [v18 subscriptionAdamID];
        if (!v19)
        {
          v20 = [v15 universalStore];
          v19 = [v20 adamID];
        }

        if (v19)
        {
          v21 = v17 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          v22 = [MEMORY[0x1E696AD98] numberWithLongLong:v17];
          v23 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
          [v37 setObject:v22 forKey:v23];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v12);
  }

  v24 = v10;

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_19;
  v42[3] = &unk_1E767BE50;
  v43 = v37;
  v26 = *(a1 + 48);
  v44 = *(a1 + 56);
  v27 = v25;
  v28 = *(a1 + 32);
  v45 = v27;
  v46 = v28;
  v29 = v37;
  [v26 enumerateItemIdentifiersUsingBlock:v42];
  v30 = *(a1 + 64);
  v31 = *(a1 + 64);
  v32 = *(a1 + 32);
  v33 = *(v32 + 288);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_20;
  v38[3] = &unk_1E767ABD0;
  v38[4] = v32;
  v39 = v27;
  v40 = v30;
  v41 = v31;
  v34 = v30;
  v35 = v27;
  [v41 appendItems:v35 andEntryProperties:v33 completion:v38];
}

void __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_19(uint64_t a1, uint64_t a2, void *a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 library];
  v6 = [v5 persistentID];

  if (v6 || ([v4 universalStore], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "subscriptionAdamID"), v7, v9 = *(a1 + 32), objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v8), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", v10), v11 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v11, "longLongValue"), v11, v10, v6) || (objc_msgSend(v4, "universalStore"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "adamID"), v12, v14 = *(a1 + 32), objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v13), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "objectForKey:", v15), v16 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v16, "longLongValue"), v16, v15, v6))
  {
    v17 = [*(a1 + 40) itemWithPersistentID:v6 verifyExistence:0];
    if (v17)
    {
      [*(a1 + 48) addObject:v17];
      v29[0] = @"entryUniversalIdentifier";
      v18 = [MEMORY[0x1E69E43D0] newIdentifierString];
      v29[1] = @"entryPositionUniversalIdentifier";
      v30[0] = v18;
      v19 = [MEMORY[0x1E69E43D0] newIdentifierString];
      v30[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
      v21 = *(a1 + 48);
      v22 = *(*(a1 + 56) + 288);
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "count") - 1}];
      [v22 setObject:v20 forKeyedSubscript:v23];
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 56);
      v25 = 138543618;
      v26 = v24;
      v27 = 2114;
      v28 = v4;
      _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Failed to re-map song with identifier set %{public}@", &v25, 0x16u);
    }
  }
}

uint64_t __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_20(uint64_t a1, int a2)
{
  v2 = a2;
  v24 = *MEMORY[0x1E69E9840];
  if (a2 && [*(a1 + 32) _isCloudLibraryEnabled] && objc_msgSend(*(a1 + 40), "count"))
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_2_21;
    v19[3] = &unk_1E767D2A0;
    v19[4] = v6;
    return [v6 _updateCloudLibraryForPlaylist:v4 withAddedItems:v5 completion:v19];
  }

  v8 = *(a1 + 32);
  if (v8[38])
  {
    if ([*(a1 + 40) count])
    {
      if (v2)
      {
        if (([*(a1 + 32) _isCloudLibraryEnabled] & 1) == 0)
        {
          v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = *(a1 + 56);
            *buf = 138543362;
            v21 = v10;
            _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEBUG, "Skipping cloud library update for playlist %{public}@ because cloudLibrary is not enabled", buf, 0xCu);
          }
        }

        v11 = 0;
        goto LABEL_20;
      }

      v16 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 40);
        v18 = *(a1 + 56);
        *buf = 138412546;
        v21 = v17;
        v22 = 2114;
        v23 = v18;
        _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "Failed to add items %{}@ to local database for playlist %{public}@", buf, 0x16u);
      }

      v14 = MEMORY[0x1E696ABC0];
      v15 = -6006;
    }

    else
    {
      v12 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 56);
        *buf = 138543362;
        v21 = v13;
        _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_ERROR, "Failed to add to playlist %{public}@ because there were no resolvable items to add.", buf, 0xCu);
      }

      v14 = MEMORY[0x1E696ABC0];
      v15 = -6005;
    }

    v11 = [v14 errorWithDomain:@"MPModelLibraryAddToPlaylistChangeRequestErrorDomain" code:v15 userInfo:0];
LABEL_20:
    (*(*(*(a1 + 32) + 304) + 16))();

    v8 = *(a1 + 32);
  }

  return [v8 finish];
}

void __60__MPModelLibraryAddToPlaylistChangeRequestOperation_execute__block_invoke_2_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[38];
  v6 = v3;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v3 = v6;
    v4 = *(a1 + 32);
  }

  [v4 finishWithError:v3];
}

@end