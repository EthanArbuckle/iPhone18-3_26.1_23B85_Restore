@interface MPModelLibraryFavoriteEntityChangeRequestOperation
- (id)_storeImportItemFromRequestIdentifiers:(id)a3 modelClass:(Class)a4 changeAction:(int64_t)a5;
- (int64_t)_likedStateFromRequestAction:(int64_t)a3;
- (void)_runLibraryMappingRequestWithIdentifiers:(id)a3 class:(Class)a4 completionHandler:(id)a5;
- (void)_runRequestWithIdentifiers:(id)a3 persistentID:(int64_t)a4 favoriteEntityChangeRequestAction:(int64_t)a5 class:(Class)a6;
- (void)_setLikedStateForRequestAction:(int64_t)a3 forEntityWithPersistentID:(int64_t)a4 modelClass:(Class)a5;
- (void)execute;
@end

@implementation MPModelLibraryFavoriteEntityChangeRequestOperation

- (int64_t)_likedStateFromRequestAction:(int64_t)a3
{
  if (a3 < 4)
  {
    return qword_1A2740270[a3];
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"MPModelLibraryFavoriteEntityChangeRequestOperation.m" lineNumber:644 description:{@"FavoriteEntityChangeRequestAction (%d) is not a supported state", a3}];

  return 0;
}

- (id)_storeImportItemFromRequestIdentifiers:(id)a3 modelClass:(Class)a4 changeAction:(int64_t)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 universalStore];
  v10 = [v9 adamID];

  if (!v10)
  {
    v11 = [v8 universalStore];
    v10 = [v11 purchasedAdamID];

    if (!v10)
    {
      v12 = [v8 universalStore];
      v10 = [v12 subscriptionAdamID];
    }
  }

  v13 = [v8 universalStore];
  v14 = [v13 globalPlaylistID];

  if (v10 || v14)
  {
    v16 = [[MPStoreItemLibraryImportElement alloc] initWithStoreItemID:v10 additionalTrackMetadata:0];
    if (a5 == 2)
    {
      if ([(objc_class *)a4 isSubclassOfClass:objc_opt_class()])
      {
        v17 = MEMORY[0x1E69B34E0];
        v18 = [(MPAsyncOperation *)self userIdentity];
        v19 = [v17 musicLibraryForUserAccount:v18];

        v20 = [v19 sagaCloudFavoriteSongAddToLibraryBehavior] < 2;
      }

      else
      {
        v20 = 1;
      }

      v26 = [MPStoreItemLibraryImport alloc];
      v29[0] = v16;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v23 = v26;
      v24 = v22;
      v25 = v20;
    }

    else
    {
      v21 = [MPStoreItemLibraryImport alloc];
      v28 = v16;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      v23 = v21;
      v24 = v22;
      v25 = 0;
    }

    v15 = [(MPStoreItemLibraryImport *)v23 initUsingLocalDeviceLibraryDestinationWithImportElements:v24 referralObject:0 usingLocalLibraryDestination:v25 usingCloudLibraryDestination:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_runLibraryMappingRequestWithIdentifiers:(id)a3 class:(Class)a4 completionHandler:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v8 = a5;
  v9 = v8;
  if (self->_mappingState != 2)
  {
    v10 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      mappingState = self->_mappingState;
      *buf = 138543874;
      *&buf[4] = v37;
      *&buf[12] = 1024;
      *&buf[14] = mappingState;
      *&buf[18] = 2114;
      *&buf[20] = a4;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "Looking for entity with identifiers=%{public}@, mappingState=%d, class=%{public}@", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__30535;
    v59 = __Block_byref_object_dispose__30536;
    v60 = 0;
    v52[0] = 0;
    v52[1] = v52;
    v52[2] = 0x2020000000;
    v52[3] = 0;
    if (self->_mappingState == 1)
    {
      v12 = [(MPAsyncOperation *)self userIdentity];
      [MPStoreLibraryPersonalizationRequest libraryViewAllowingEmptyCollectionsAndNonLibraryContentForUserIdentity:v12];
    }

    else
    {
      v12 = [(MPAsyncOperation *)self userIdentity];
      [MPStoreLibraryPersonalizationRequest libraryViewAllowingEmptyCollectionsForUserIdentity:v12];
    }
    v36 = ;

    v13 = [(MPModelLibraryFavoriteEntityChangeRequest *)self->_request modelObject];
    v14 = objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v13 anyObject];
      v14 = objc_opt_class();
    }

    if (![v14 isSubclassOfClass:objc_opt_class()])
    {
      v18 = objc_alloc_init(MPStoreLibraryMappingRequestOperation);
      [(MPStoreLibraryMappingRequestOperation *)v18 setLibraryView:v36];
      [(MPStoreLibraryMappingRequestOperation *)v18 setModelClass:a4];
      v53 = v37;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      [(MPStoreLibraryMappingRequestOperation *)v18 setIdentifierSets:v24];

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __119__MPModelLibraryFavoriteEntityChangeRequestOperation__runLibraryMappingRequestWithIdentifiers_class_completionHandler___block_invoke_118;
      v38[3] = &unk_1E767AEB0;
      v42 = buf;
      v39 = v37;
      v40 = self;
      v43 = v52;
      v44 = a4;
      v41 = v9;
      [(MPStoreLibraryMappingRequestOperation *)v18 setResponseHandler:v38];
      [(NSOperationQueue *)self->_operationQueue addOperation:v18];

      v25 = v39;
LABEL_26:

      _Block_object_dispose(v52, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_27;
    }

    v34 = v13;
    v16 = MEMORY[0x1E69B34E0];
    v17 = [(MPAsyncOperation *)self userIdentity];
    v33 = [v16 musicLibraryForUserAccount:v17];

    v35 = [(__CFString *)v34 name];
    v18 = objc_alloc_init(MPStoreLibraryMappingRequestOperation);
    [(MPStoreLibraryMappingRequestOperation *)v18 setLibraryView:v36];
    [(MPStoreLibraryMappingRequestOperation *)v18 setModelClass:a4];
    if ([v35 length])
    {
      v19 = [v33 groupingKeyForString:v35];
      v20 = MEMORY[0x1E695DF20];
      v21 = v19;
      if (!v19)
      {
        v21 = [MEMORY[0x1E695DFB0] null];
      }

      v22 = [v20 dictionaryWithObject:v21 forKey:v37];
      v54 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      [(MPStoreLibraryMappingRequestOperation *)v18 setAlbumArtistNamesToIdentifierSets:v23];

      if (!v19)
      {
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __119__MPModelLibraryFavoriteEntityChangeRequestOperation__runLibraryMappingRequestWithIdentifiers_class_completionHandler___block_invoke;
      v45[3] = &unk_1E767AEB0;
      v49 = buf;
      v46 = v37;
      v47 = self;
      v50 = v52;
      v51 = a4;
      v48 = v9;
      [(MPStoreLibraryMappingRequestOperation *)v18 setResponseHandler:v45];
      [(NSOperationQueue *)self->_operationQueue addOperation:v18];
    }

    else
    {
      v26 = MEMORY[0x1E69B13D8];
      if (v34)
      {
        v27 = v34;
      }

      else
      {
        v27 = @"<nil>";
      }

      v55[0] = @"modelObject";
      v55[1] = @"action";
      v56[0] = v27;
      v28 = MEMORY[0x1E696AD98];
      v29 = [(MPModelLibraryFavoriteEntityChangeRequest *)self->_request requestAction];
      v30 = [v28 numberWithInteger:{objc_msgSend(v29, "changeRequestAction")}];
      v56[1] = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
      v57 = v31;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      [v26 snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"Album Artist With No Name" context:@"Request to run favorite change request for artist with no name" triggerThresholdValues:0 events:v32 completion:0];

      if (!v9)
      {
        goto LABEL_25;
      }

      v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:2 debugDescription:@"No album artist name to favorite."];
      (v9)[2](v9, 0, v19);
    }

LABEL_25:
    v25 = v34;
    goto LABEL_26;
  }

  if (v8)
  {
    (*(v8 + 2))(v8, 0, 0);
  }

LABEL_27:
}

void __119__MPModelLibraryFavoriteEntityChangeRequestOperation__runLibraryMappingRequestWithIdentifiers_class_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(*(a1 + 40) + 280);
      v14 = 138543874;
      v15 = v8;
      v16 = 1024;
      v17 = v9;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Mapping operation for identifiers = %{public}@, mappingState=%d returned error=%{public}@", &v14, 0x1Cu);
    }
  }

  else
  {
    v10 = [v5 libraryIdentifierSetForIdentifierSet:*(a1 + 32)];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v7 = [*(*(*(a1 + 56) + 8) + 40) library];
    *(*(*(a1 + 64) + 8) + 24) = [v7 persistentID];
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, v5, v6);
    }
  }

  else
  {
    ++*(*(a1 + 40) + 280);
    [*(a1 + 40) _runLibraryMappingRequestWithIdentifiers:*(a1 + 32) class:*(a1 + 72) completionHandler:*(a1 + 48)];
  }
}

void __119__MPModelLibraryFavoriteEntityChangeRequestOperation__runLibraryMappingRequestWithIdentifiers_class_completionHandler___block_invoke_118(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(*(a1 + 40) + 280);
      v14 = 138543874;
      v15 = v8;
      v16 = 1024;
      v17 = v9;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "Mapping operation for identifiers = %{public}@, mappingState=%d returned error=%{public}@", &v14, 0x1Cu);
    }
  }

  else
  {
    v10 = [v5 libraryIdentifierSetForIdentifierSet:*(a1 + 32)];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v7 = [*(*(*(a1 + 56) + 8) + 40) library];
    *(*(*(a1 + 64) + 8) + 24) = [v7 persistentID];
  }

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      (*(v13 + 16))(v13, v5, v6);
    }
  }

  else
  {
    ++*(*(a1 + 40) + 280);
    [*(a1 + 40) _runLibraryMappingRequestWithIdentifiers:*(a1 + 32) class:*(a1 + 72) completionHandler:*(a1 + 48)];
  }
}

- (void)_setLikedStateForRequestAction:(int64_t)a3 forEntityWithPersistentID:(int64_t)a4 modelClass:(Class)a5
{
  v107 = *MEMORY[0x1E69E9840];
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__30535;
  v101 = __Block_byref_object_dispose__30536;
  v102 = 0;
  v9 = [(MPAsyncOperation *)self userIdentity];
  v10 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v9];

  v11 = [(MPModelLibraryFavoriteEntityChangeRequest *)self->_request modelObject];
  v85 = [v11 identifiers];

  v12 = [(MPModelLibraryFavoriteEntityChangeRequestOperation *)self _likedStateFromRequestAction:a3];
  v13 = [v10 favoriteSongsPlaylist];
  v14 = [v13 valueForProperty:@"keepLocal"];
  v15 = [v14 BOOLValue];

  if ([(objc_class *)a5 isSubclassOfClass:objc_opt_class()])
  {
    v16 = [v10 itemWithPersistentID:a4 verifyExistence:0];
    if (v16)
    {
      v17 = @"_itemLikedState";
      v18 = [MEMORY[0x1E695DFD8] setWithObjects:{@"likedState", @"keepLocal", 0}];
      v19 = [v16 valuesForProperties:v18];
      v20 = v98[5];
      v98[5] = v19;

      v21 = [v98[5] objectForKey:@"likedState"];
      v22 = [v21 intValue];

      v23 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
      v24 = v23;
      if (v12 == v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          if ((v12 - 1) > 2)
          {
            v25 = @"Unknown";
          }

          else
          {
            v25 = off_1E7678740[v12 - 1];
          }

          v59 = v25;
          *buf = 134218242;
          v104 = a4;
          v105 = 2114;
          v106 = v59;
          _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_ERROR, "track persistentID=%lld is already %{public}@", buf, 0x16u);
        }

        v60 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:2 debugDescription:@"track is already in correct favorited state"];
        responseHandler = self->_responseHandler;
        if (responseHandler)
        {
          responseHandler[2](responseHandler, v60);
        }

        [(MPAsyncOperation *)self finishWithError:v60];
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          if ((v12 - 1) > 2)
          {
            v45 = @"Unknown";
          }

          else
          {
            v45 = off_1E7678740[v12 - 1];
          }

          v62 = v45;
          *buf = 138543618;
          v104 = v62;
          v105 = 2048;
          v106 = a4;
          _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "Setting likedState=%{public}@ for track with persistentID=%lld", buf, 0x16u);
        }

        v63 = v16;
        v64 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __122__MPModelLibraryFavoriteEntityChangeRequestOperation__setLikedStateForRequestAction_forEntityWithPersistentID_modelClass___block_invoke;
        v89[3] = &unk_1E767AE70;
        v93 = &v97;
        v94 = v12;
        v96 = v15;
        v95 = a4;
        v16 = v63;
        v90 = v16;
        v91 = v10;
        v92 = self;
        [v16 setValue:v64 forProperty:@"_itemLikedState" withCompletionBlock:v89];
      }

      v65 = @"_itemLikedState";
      goto LABEL_94;
    }

    v42 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v104 = a4;
      _os_log_impl(&dword_1A238D000, v42, OS_LOG_TYPE_ERROR, "Could not locate item with persistentID=%lld", buf, 0xCu);
    }

    v43 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:4 debugDescription:@"could not find song in media library"];
    v44 = self->_responseHandler;
    if (v44)
    {
      v44[2](v44, v43);
    }

LABEL_63:
    [(MPAsyncOperation *)self finishWithError:v43];

    v16 = 0;
    v65 = 0;
    v18 = 0;
LABEL_94:

    goto LABEL_95;
  }

  if ([(objc_class *)a5 isSubclassOfClass:objc_opt_class()])
  {
    v16 = [v10 playlistWithPersistentID:a4];
    if (v16)
    {
      v26 = @"_playlistLikedState";
      v18 = [MEMORY[0x1E695DFD8] setWithObjects:{@"likedState", 0}];
      v27 = [v16 valuesForProperties:v18];
      v28 = v98[5];
      v98[5] = v27;

      v29 = [v98[5] objectForKey:@"likedState"];
      v30 = [v29 intValue];

      v31 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
      v32 = v31;
      if (v12 == v30)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          if ((v12 - 1) > 2)
          {
            v33 = @"Unknown";
          }

          else
          {
            v33 = off_1E7678740[v12 - 1];
          }

          v69 = v33;
          *buf = 134218242;
          v104 = a4;
          v105 = 2114;
          v106 = v69;
          _os_log_impl(&dword_1A238D000, v32, OS_LOG_TYPE_ERROR, "playlist persistentID=%lld is already %{public}@", buf, 0x16u);
        }

        v70 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:2 debugDescription:@"playlist is already in correct favorited state"];
        v71 = self->_responseHandler;
        if (v71)
        {
          v71[2](v71, v70);
        }

        [(MPAsyncOperation *)self finishWithError:v70];
      }

      else
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          if ((v12 - 1) > 2)
          {
            v56 = @"Unknown";
          }

          else
          {
            v56 = off_1E7678740[v12 - 1];
          }

          v72 = v56;
          *buf = 138543618;
          v104 = v72;
          v105 = 2048;
          v106 = a4;
          _os_log_impl(&dword_1A238D000, v32, OS_LOG_TYPE_DEFAULT, "Setting likedState=%{public}@ for playlist with persistentID=%lld", buf, 0x16u);
        }

        v73 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __122__MPModelLibraryFavoriteEntityChangeRequestOperation__setLikedStateForRequestAction_forEntityWithPersistentID_modelClass___block_invoke_86;
        v88[3] = &unk_1E767B220;
        v88[4] = self;
        [v16 setValue:v73 forProperty:@"_playlistLikedState" withCompletionBlock:v88];
      }

      v65 = @"_playlistLikedState";
      goto LABEL_94;
    }

    v54 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v104 = a4;
      _os_log_impl(&dword_1A238D000, v54, OS_LOG_TYPE_ERROR, "Could not locate playlist with persistentID=%lld", buf, 0xCu);
    }

    v43 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:4 debugDescription:@"could not find playlist in media library"];
    v55 = self->_responseHandler;
    if (v55)
    {
      v55[2](v55, v43);
    }

    goto LABEL_63;
  }

  if ([(objc_class *)a5 isSubclassOfClass:objc_opt_class()])
  {
    v16 = [v10 collectionWithPersistentID:a4 groupingType:3];
    if (v16)
    {
      v34 = @"_albumArtistLikedState";
      v18 = [MEMORY[0x1E695DFD8] setWithObjects:{@"albumArtistFavoriteState", 0}];
      v35 = [v16 valuesForProperties:v18];
      v36 = v98[5];
      v98[5] = v35;

      v37 = [v98[5] objectForKey:@"albumArtistFavoriteState"];
      v38 = [v37 intValue];

      v39 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
      v40 = v39;
      if (v12 == v38)
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          if ((v12 - 1) > 2)
          {
            v41 = @"Unknown";
          }

          else
          {
            v41 = off_1E7678740[v12 - 1];
          }

          v75 = v41;
          *buf = 134218242;
          v104 = a4;
          v105 = 2114;
          v106 = v75;
          _os_log_impl(&dword_1A238D000, v40, OS_LOG_TYPE_ERROR, "album artist persistentID=%lld is already %{public}@", buf, 0x16u);
        }

        v76 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:2 debugDescription:@"artist is already in correct favorited state"];
        v77 = self->_responseHandler;
        if (v77)
        {
          v77[2](v77, v76);
        }

        [(MPAsyncOperation *)self finishWithError:v76];
      }

      else
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          if ((v12 - 1) > 2)
          {
            v66 = @"Unknown";
          }

          else
          {
            v66 = off_1E7678740[v12 - 1];
          }

          v78 = v66;
          *buf = 138543618;
          v104 = v78;
          v105 = 2048;
          v106 = a4;
          _os_log_impl(&dword_1A238D000, v40, OS_LOG_TYPE_DEFAULT, "Setting likedState=%{public}@ for album artist with persistentID=%lld", buf, 0x16u);
        }

        v79 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 3221225472;
        v87[2] = __122__MPModelLibraryFavoriteEntityChangeRequestOperation__setLikedStateForRequestAction_forEntityWithPersistentID_modelClass___block_invoke_93;
        v87[3] = &unk_1E767B220;
        v87[4] = self;
        [v16 setValue:v79 forProperty:@"_albumArtistLikedState" withCompletionBlock:v87];
      }

      v65 = @"_albumArtistLikedState";
      goto LABEL_94;
    }

    v57 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v104 = a4;
      v105 = 2114;
      v106 = v85;
      _os_log_impl(&dword_1A238D000, v57, OS_LOG_TYPE_ERROR, "Could not locate album artist with persistentID=%lld, identifiers=%{public}@", buf, 0x16u);
    }

    v43 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:4 debugDescription:@"could not find album artist in media library"];
    v58 = self->_responseHandler;
    if (v58)
    {
      v58[2](v58, v43);
    }

    goto LABEL_63;
  }

  if ([(objc_class *)a5 isSubclassOfClass:objc_opt_class()])
  {
    v16 = [v10 collectionWithPersistentID:a4 groupingType:1];
    if (v16)
    {
      v46 = @"_albumLikedState";
      v18 = [MEMORY[0x1E695DFD8] setWithObjects:{@"albumLikedState", 0}];
      v47 = [v16 valuesForProperties:v18];
      v48 = v98[5];
      v98[5] = v47;

      v49 = [v98[5] objectForKey:@"albumLikedState"];
      v50 = [v49 intValue];

      v51 = _MPLogCategoryFavoriting();
      v52 = v51;
      if (v12 == v50)
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          if ((v12 - 1) > 2)
          {
            v53 = @"Unknown";
          }

          else
          {
            v53 = off_1E7678740[v12 - 1];
          }

          v80 = v53;
          *buf = 134218242;
          v104 = a4;
          v105 = 2114;
          v106 = v80;
          _os_log_impl(&dword_1A238D000, v52, OS_LOG_TYPE_ERROR, "album persistentID=%lld is already %{public}@", buf, 0x16u);
        }

        v81 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:2 debugDescription:@"album is already in correct favorited state"];
        v82 = self->_responseHandler;
        if (v82)
        {
          v82[2](v82, v81);
        }

        [(MPAsyncOperation *)self finishWithError:v81];
      }

      else
      {
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          if ((v12 - 1) > 2)
          {
            v74 = @"Unknown";
          }

          else
          {
            v74 = off_1E7678740[v12 - 1];
          }

          v83 = v74;
          *buf = 138543618;
          v104 = v83;
          v105 = 2048;
          v106 = a4;
          _os_log_impl(&dword_1A238D000, v52, OS_LOG_TYPE_DEFAULT, "Setting likedState=%{public}@ for album with persistentID=%lld", buf, 0x16u);
        }

        v84 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 3221225472;
        v86[2] = __122__MPModelLibraryFavoriteEntityChangeRequestOperation__setLikedStateForRequestAction_forEntityWithPersistentID_modelClass___block_invoke_100;
        v86[3] = &unk_1E767B220;
        v86[4] = self;
        [v16 setValue:v84 forProperty:@"_albumLikedState" withCompletionBlock:v86];
      }

      v65 = @"_albumLikedState";
      goto LABEL_94;
    }

    v67 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v104 = a4;
      _os_log_impl(&dword_1A238D000, v67, OS_LOG_TYPE_ERROR, "Could not locate album with persistentID=%lld", buf, 0xCu);
    }

    v43 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:4 debugDescription:@"could not find album in media library"];
    v68 = self->_responseHandler;
    if (v68)
    {
      v68[2](v68, v43);
    }

    goto LABEL_63;
  }

  v18 = 0;
LABEL_95:

  _Block_object_dispose(&v97, 8);
}

void __122__MPModelLibraryFavoriteEntityChangeRequestOperation__setLikedStateForRequestAction_forEntityWithPersistentID_modelClass___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:@"keepLocal"];
  v6 = [v5 integerValue];

  if (!v4 && *(a1 + 64) == 2 && *(a1 + 80) == 1 && v6 == -1)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 72);
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Clearing keep-local on favorited track. persistentID=%lld", &v12, 0xCu);
    }

    if ([*(a1 + 32) setValue:&unk_1F1509A78 forProperty:@"keepLocal"])
    {
      v9 = [*(a1 + 40) ml3Library];
      [v9 notifyEntitiesAddedOrRemoved];
    }
  }

  v10 = *(a1 + 48);
  v11 = v10[37];
  if (v11)
  {
    (*(v11 + 16))(v10[37], v4);
    v10 = *(a1 + 48);
  }

  [v10 finishWithError:v4];
}

void __122__MPModelLibraryFavoriteEntityChangeRequestOperation__setLikedStateForRequestAction_forEntityWithPersistentID_modelClass___block_invoke_86(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v5[37];
  v7 = v4;
  if (v6)
  {
    (*(v6 + 16))(v6);
    v4 = v7;
    v5 = *(a1 + 32);
  }

  [v5 finishWithError:v4];
}

void __122__MPModelLibraryFavoriteEntityChangeRequestOperation__setLikedStateForRequestAction_forEntityWithPersistentID_modelClass___block_invoke_93(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v5[37];
  v7 = v4;
  if (v6)
  {
    (*(v6 + 16))(v6);
    v4 = v7;
    v5 = *(a1 + 32);
  }

  [v5 finishWithError:v4];
}

void __122__MPModelLibraryFavoriteEntityChangeRequestOperation__setLikedStateForRequestAction_forEntityWithPersistentID_modelClass___block_invoke_100(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = v5[37];
  v7 = v4;
  if (v6)
  {
    (*(v6 + 16))(v6);
    v4 = v7;
    v5 = *(a1 + 32);
  }

  [v5 finishWithError:v4];
}

- (void)_runRequestWithIdentifiers:(id)a3 persistentID:(int64_t)a4 favoriteEntityChangeRequestAction:(int64_t)a5 class:(Class)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = os_log_create("com.apple.amp.mediaplayer", "Favoriting_Oversize");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MPNSStringForFavoriteEntityChangeRequestAction(a5);
    v13 = [(MPAsyncOperation *)self userIdentity];
    *buf = 138544130;
    v21 = v12;
    v22 = 2114;
    v23 = v10;
    v24 = 2114;
    v25 = a6;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "Running request %{public}@ for entity with identifiers=%{public}@, modelClass=%{public}@ userIdentity=%{public}@", buf, 0x2Au);
  }

  if (a4)
  {
    [(MPModelLibraryFavoriteEntityChangeRequestOperation *)self _setLikedStateForRequestAction:a5 forEntityWithPersistentID:a4 modelClass:a6];
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke;
    v14[3] = &unk_1E767AE40;
    v15 = v10;
    v16 = self;
    v17 = a5;
    v18 = a6;
    v19 = 0;
    [(MPModelLibraryFavoriteEntityChangeRequestOperation *)self _runLibraryMappingRequestWithIdentifiers:v15 class:a6 completionHandler:v14];
  }
}

void __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v12 = [v5 libraryIdentifierSetForIdentifierSet:*(a1 + 32)];
    v13 = [v12 library];
    v14 = [v13 persistentID];

    v15 = *(a1 + 40);
    if (v14)
    {
      [v15 _setLikedStateForRequestAction:*(a1 + 48) forEntityWithPersistentID:v14 modelClass:*(a1 + 56)];
    }

    else
    {
      if (v15[288] == 1)
      {
        v15[288] = 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v74 = 0;
        v16 = [*(a1 + 40) userIdentity];
        v17 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v16];

        v18 = [*(a1 + 40) _storeImportItemFromRequestIdentifiers:*(a1 + 32) modelClass:*(a1 + 56) changeAction:*(a1 + 48)];
        if (v18)
        {
          if ([*(a1 + 56) isSubclassOfClass:objc_opt_class()])
          {
            v19 = [*(a1 + 32) universalStore];
            v20 = [v19 globalPlaylistID];

            if ([v18 addToDeviceLibraryOnly])
            {
              v21 = v67;
              v67[0] = MEMORY[0x1E69E9820];
              v67[1] = 3221225472;
              v67[2] = __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_44;
              v67[3] = &unk_1E767ADC8;
              v22 = v20;
              v67[4] = v22;
              v69 = buf;
              v42 = *(a1 + 32);
              v23 = v42.i64[0];
              v68 = vextq_s8(v42, v42, 8uLL);
              v24 = *(a1 + 56);
              v70 = *(a1 + 48);
              v71 = v24;
              [v17 addToLocalDeviceLibraryGlobalPlaylistWithID:v22 completion:v67];
            }

            else
            {
              v72 = v20;
              v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
              v21 = v62;
              v62[0] = MEMORY[0x1E69E9820];
              v62[1] = 3221225472;
              v62[2] = __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_49;
              v62[3] = &unk_1E767ADC8;
              v62[4] = v20;
              v64 = buf;
              v45 = *(a1 + 32);
              v38 = v45.i64[0];
              v63 = vextq_s8(v45, v45, 8uLL);
              v39 = *(a1 + 56);
              v65 = *(a1 + 48);
              v66 = v39;
              [v17 addNonLibraryOwnedPlaylistsWithGlobalIDs:v37 completion:v62];
            }
          }

          else if ([*(a1 + 56) isSubclassOfClass:objc_opt_class()])
          {
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_50;
            v57[3] = &unk_1E767ADF0;
            v59 = buf;
            v43 = *(a1 + 32);
            v33 = v43.i64[0];
            v58 = vextq_s8(v43, v43, 8uLL);
            v34 = *(a1 + 56);
            v60 = *(a1 + 48);
            v61 = v34;
            [v17 performStoreAlbumArtistLibraryImport:v18 withCompletion:v57];
          }

          else if ([*(a1 + 56) isSubclassOfClass:objc_opt_class()])
          {
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_56;
            v52[3] = &unk_1E767ADF0;
            v54 = buf;
            v44 = *(a1 + 32);
            v35 = v44.i64[0];
            v53 = vextq_s8(v44, v44, 8uLL);
            v36 = *(a1 + 56);
            v55 = *(a1 + 48);
            v56 = v36;
            [v17 performStoreItemLibraryImport:v18 withCompletion:v52];
          }

          else
          {
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_60;
            v47[3] = &unk_1E767AE18;
            v49 = *(a1 + 48);
            v46 = *(a1 + 32);
            v40 = v46.i64[0];
            v48 = vextq_s8(v46, v46, 8uLL);
            v41 = *(a1 + 56);
            v50 = *(a1 + 64);
            v51 = v41;
            [v17 performStoreItemLibraryImport:v18 withCompletion:v47];
          }

          v7 = 0;
        }

        else
        {
          v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:2 debugDescription:@"no store identifiers to run request"];
          v31 = *(a1 + 40);
          v32 = v31[37];
          if (v32)
          {
            (*(v32 + 16))(v31[37], v7);
            v31 = *(a1 + 40);
          }

          [v31 finishWithError:v7];
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_20;
      }

      v25 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        v27 = *(a1 + 56);
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_impl(&dword_1A238D000, v25, OS_LOG_TYPE_ERROR, "Could not locate entity identifiers=%{public}@, class=%{public}@", buf, 0x16u);
      }

      v28 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:4 debugDescription:@"could not find entity in media library"];
      v29 = *(a1 + 40);
      v30 = v29[37];
      if (v30)
      {
        (*(v30 + 16))(v29[37], v28);
        v29 = *(a1 + 40);
      }

      [v29 finishWithError:v28];
    }

    v7 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v7 = v6;
  v8 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "Library mapping for identifiers=%{public}@ failed with error=%{public}@", buf, 0x16u);
  }

  v10 = *(a1 + 40);
  v11 = v10[37];
  if (v11)
  {
    (*(v11 + 16))(v10[37], v7);
    v10 = *(a1 + 40);
  }

  [v10 finishWithError:v7];
LABEL_21:
}

void __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 64));
      v9 = *(a1 + 32);
      v20 = 138543874;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Not running %{public}@ request for globalPlaylistID=%{public}@ as we could not lookup the item (error=%{public}@)", &v20, 0x20u);
    }

    v10 = *(a1 + 40);
    v11 = v10[37];
    if (v11)
    {
      (*(v11 + 16))(v10[37], v6);
      v10 = *(a1 + 40);
    }

    [v10 finishWithError:v6];
  }

  else
  {
    v12 = [v5 objectForKey:*(a1 + 32)];
    v13 = v12;
    if (v12)
    {
      *(*(*(a1 + 56) + 8) + 24) = [v12 longLongValue];
      [*(a1 + 40) _runRequestWithIdentifiers:*(a1 + 48) persistentID:*(*(*(a1 + 56) + 8) + 24) favoriteEntityChangeRequestAction:*(a1 + 64) class:*(a1 + 72)];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 64));
        v16 = *(a1 + 32);
        v20 = 138543874;
        v21 = v15;
        v22 = 2114;
        v23 = v16;
        v24 = 2114;
        v25 = v5;
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "Not running %{public}@ request for globalPlaylistID=%{public}@ as we could not lookup the item in the response=%{public}@", &v20, 0x20u);
      }

      v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:5 debugDescription:@"could not import playlist"];
      v18 = *(a1 + 40);
      v19 = v18[37];
      if (v19)
      {
        (*(v19 + 16))(v18[37], v17);
        v18 = *(a1 + 40);
      }

      [v18 finishWithError:v17];
    }
  }
}

void __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 64));
      v9 = *(a1 + 32);
      v20 = 138543874;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Not running %{public}@ request for globalPlaylistID=%{public}@ as we could not lookup the item (error=%{public}@)", &v20, 0x20u);
    }

    v10 = *(a1 + 40);
    v11 = v10[37];
    if (v11)
    {
      (*(v11 + 16))(v10[37], v6);
      v10 = *(a1 + 40);
    }

    [v10 finishWithError:v6];
  }

  else
  {
    v12 = [v5 objectForKey:*(a1 + 32)];
    v13 = v12;
    if (v12)
    {
      *(*(*(a1 + 56) + 8) + 24) = [v12 longLongValue];
      [*(a1 + 40) _runRequestWithIdentifiers:*(a1 + 48) persistentID:*(*(*(a1 + 56) + 8) + 24) favoriteEntityChangeRequestAction:*(a1 + 64) class:*(a1 + 72)];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 64));
        v16 = *(a1 + 32);
        v20 = 138543874;
        v21 = v15;
        v22 = 2114;
        v23 = v16;
        v24 = 2114;
        v25 = v5;
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "Not running %{public}@ request for globalPlaylistID=%{public}@ as we could not lookup the item in the response=%{public}@", &v20, 0x20u);
      }

      v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:5 debugDescription:@"could not import playlist"];
      v18 = *(a1 + 40);
      v19 = v18[37];
      if (v19)
      {
        (*(v19 + 16))(v18[37], v17);
        v18 = *(a1 + 40);
      }

      [v18 finishWithError:v17];
    }
  }
}

void __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 56));
      v9 = *(a1 + 40);
      v21 = 138543874;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Not running %{public}@ request for artist with identifiers=%{public}@ as we could not lookup the item (error=%{public}@)", &v21, 0x20u);
    }

    v10 = *(a1 + 32);
    v11 = v10[37];
    if (v11)
    {
      (*(v11 + 16))(v10[37], v6);
      v10 = *(a1 + 32);
    }

    [v10 finishWithError:v6];
  }

  else
  {
    if ([v5 count])
    {
      v12 = [v5 objectAtIndexedSubscript:0];
      v13 = a1 + 48;
      *(*(*(a1 + 48) + 8) + 24) = [v12 longLongValue];
    }

    else
    {
      v13 = a1 + 48;
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v14 = *(*(*v13 + 8) + 24);
    if (v14)
    {
      [*(a1 + 32) _runRequestWithIdentifiers:*(a1 + 40) persistentID:v14 favoriteEntityChangeRequestAction:*(a1 + 56) class:*(a1 + 64)];
    }

    else
    {
      v15 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 56));
        v17 = *(a1 + 40);
        v21 = 138543874;
        v22 = v16;
        v23 = 2114;
        v24 = v17;
        v25 = 2114;
        v26 = v5;
        _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "Not running %{public}@ request for identifiers=%{public}@ as we could not lookup the item in the response=%{public}@", &v21, 0x20u);
      }

      v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:5 debugDescription:@"could not import album artist"];
      v19 = *(a1 + 32);
      v20 = v19[37];
      if (v20)
      {
        (*(v20 + 16))(v19[37], v18);
        v19 = *(a1 + 32);
      }

      [v19 finishWithError:v18];
    }
  }
}

void __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 56));
      v9 = *(a1 + 40);
      v20 = 138543874;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Not running %{public}@ request for entity with identifiers=%{public}@ as we could not lookup the item (error=%{public}@)", &v20, 0x20u);
    }

    v10 = *(a1 + 32);
    v11 = v10[37];
    if (v11)
    {
      (*(v11 + 16))(v10[37], v6);
      v10 = *(a1 + 32);
    }

    [v10 finishWithError:v6];
  }

  else
  {
    if ([v5 count])
    {
      v12 = [v5 objectAtIndexedSubscript:0];
      *(*(*(a1 + 48) + 8) + 24) = [v12 persistentID];
    }

    v13 = *(*(*(a1 + 48) + 8) + 24);
    if (v13)
    {
      [*(a1 + 32) _runRequestWithIdentifiers:*(a1 + 40) persistentID:v13 favoriteEntityChangeRequestAction:*(a1 + 56) class:*(a1 + 64)];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 56));
        v16 = *(a1 + 40);
        v20 = 138543874;
        v21 = v15;
        v22 = 2114;
        v23 = v16;
        v24 = 2114;
        v25 = v5;
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "Not running %{public}@ request for identifiers=%{public}@ as we could not lookup the item in the response=%{public}@", &v20, 0x20u);
      }

      v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:5 debugDescription:@"could not import song"];
      v18 = *(a1 + 32);
      v19 = v18[37];
      if (v19)
      {
        (*(v19 + 16))(v18[37], v17);
        v18 = *(a1 + 32);
      }

      [v18 finishWithError:v17];
    }
  }
}

void __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 48));
      v9 = *(a1 + 40);
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v31 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Not running %{public}@ request for entity with identifiers=%{public}@ as we could not lookup the item (error=%{public}@)", buf, 0x20u);
    }

    v10 = *(a1 + 32);
    v11 = v10[37];
    if (v11)
    {
      (*(v11 + 16))(v10[37], v6);
      v10 = *(a1 + 32);
    }

    [v10 finishWithError:v6];
  }

  else
  {
    *(*(a1 + 32) + 280) = 0;
    if (*(a1 + 48) == 2)
    {
      [*(a1 + 32) _runRequestWithIdentifiers:*(a1 + 40) persistentID:*(a1 + 56) favoriteEntityChangeRequestAction:2 class:*(a1 + 64)];
    }

    else if ([v5 count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v31 = 0;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_2;
      v25[3] = &unk_1E767DF10;
      v25[4] = buf;
      [v5 enumerateObjectsUsingBlock:v25];
      v12 = *(*&buf[8] + 24);
      if (v12)
      {
        [*(a1 + 32) _runRequestWithIdentifiers:*(a1 + 40) persistentID:v12 favoriteEntityChangeRequestAction:*(a1 + 48) class:*(a1 + 64)];
      }

      else
      {
        v19 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 48));
          v21 = *(a1 + 40);
          *v26 = 138543618;
          v27 = v20;
          v28 = 2114;
          v29 = v21;
          _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_ERROR, "Not running %{public}@ request for entity with identifiers=%{public}@ as albumPersistentID is invalid", v26, 0x16u);
        }

        v22 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:5 debugDescription:@"albumPID of track is invalid"];
        v23 = *(a1 + 32);
        v24 = v23[37];
        if (v24)
        {
          (*(v24 + 16))(v23[37], v22);
          v23 = *(a1 + 32);
        }

        [v23 finishWithError:v22];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v13 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = MPNSStringForFavoriteEntityChangeRequestAction(*(a1 + 48));
        v15 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v15;
        _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "Not running %{public}@ request for entity with identifiers=%{public}@ as no tracks were imported", buf, 0x16u);
      }

      v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:5 debugDescription:@"album import did not add any tracks"];
      v17 = *(a1 + 32);
      v18 = v17[37];
      if (v18)
      {
        (*(v18 + 16))(v17[37], v16);
        v17 = *(a1 + 32);
      }

      [v17 finishWithError:v16];
    }
  }
}

void __134__MPModelLibraryFavoriteEntityChangeRequestOperation__runRequestWithIdentifiers_persistentID_favoriteEntityChangeRequestAction_class___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 valueForProperty:@"albumPID"];
  if (_NSIsNSNumber() && [v6 longLongValue])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 longLongValue];
    *a4 = 1;
  }
}

- (void)execute
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(MPModelLibraryFavoriteEntityChangeRequest *)self->_request modelObject];
  v4 = [(MPModelLibraryFavoriteEntityChangeRequest *)self->_request requestAction];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543618;
      v25 = v3;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "Not running favorite state change operation for entity=%{public}@ action=%{public}@ as the request is invalid", &v24, 0x16u);
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = @"missing parameters to run request";
    v10 = 2;
  }

  else
  {
    v13 = objc_opt_class();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v15 = [v3 anyObject];
      v13 = objc_opt_class();
    }

    if ([v13 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v13, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v13, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v13, "isSubclassOfClass:", objc_opt_class()))
    {
      [v13 isSubclassOfClass:objc_opt_class()];
      if (!self->_operationQueue)
      {
        v16 = objc_alloc_init(MEMORY[0x1E696ADC8]);
        operationQueue = self->_operationQueue;
        self->_operationQueue = v16;

        [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
        [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.MediaPlayer.MPModelLibraryFavoriteEntityChangeRequestOperation.operationQueue"];
        v18 = self->_operationQueue;
        v19 = [MEMORY[0x1E696AF00] currentThread];
        -[NSOperationQueue setQualityOfService:](v18, "setQualityOfService:", [v19 qualityOfService]);
      }

      self->_mappingState = 0;
      self->_canRerunRequest = 1;
      v20 = [v3 identifiers];
      v21 = [v20 library];
      v22 = [v21 persistentID];

      -[MPModelLibraryFavoriteEntityChangeRequestOperation _runRequestWithIdentifiers:persistentID:favoriteEntityChangeRequestAction:class:](self, "_runRequestWithIdentifiers:persistentID:favoriteEntityChangeRequestAction:class:", v20, v22, [v5 changeRequestAction], v13);
      goto LABEL_21;
    }

    v23 = os_log_create("com.apple.amp.mediaplayer", "Favoriting");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543618;
      v25 = v3;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "Not running favorite state change operation for entity=%{public}@ action=%{public}@ as the request object is not supported", &v24, 0x16u);
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = @"unsupported entity type";
    v10 = 3;
  }

  v11 = [v8 msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:v10 debugDescription:v9];
  responseHandler = self->_responseHandler;
  if (responseHandler)
  {
    responseHandler[2](responseHandler, v11);
  }

  [(MPAsyncOperation *)self finishWithError:v11];

LABEL_21:
}

@end