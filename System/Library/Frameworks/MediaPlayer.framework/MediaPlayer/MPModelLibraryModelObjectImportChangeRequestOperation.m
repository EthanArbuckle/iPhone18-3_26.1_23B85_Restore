@interface MPModelLibraryModelObjectImportChangeRequestOperation
- (id)_importItemFromModelObject:(id)a3;
- (void)_finishOperationWithAddedItems:(id)a3 error:(id)a4;
- (void)execute;
@end

@implementation MPModelLibraryModelObjectImportChangeRequestOperation

- (id)_importItemFromModelObject:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69B3400]);
  v7 = [v5 identifiers];
  v8 = [v7 personalizedStore];
  v9 = [v8 personID];

  if ([v9 length])
  {
    [v6 setAccountId:{objc_msgSend(v9, "longLongValue")}];
  }

  v10 = [v7 universalStore];
  v11 = [v10 adamID];

  if (v11)
  {
    [v6 setStoreId:v11];
  }

  v12 = objc_alloc_init(MEMORY[0x1E69B33F8]);
  [v12 setIsInUsersLibrary:self->_shouldLibraryAdd];
  [v12 setCloudAssetAvailable:1];
  v13 = [v7 universalStore];
  v14 = [v13 subscriptionAdamID];

  if (v14)
  {
    [v12 setSubscriptionStoreItemId:v14];
    [v12 setPlaybackEndpointType:3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v5;
    [v12 setMediaType:1];
    v16 = [v15 title];
    [v12 setTitle:v16];

    if ([v15 hasLoadedValueForKey:@"MPModelPropertySongExplicit"])
    {
      [v12 setHasExplicitContent:{objc_msgSend(v15, "isExplicitSong")}];
    }

    if ([v15 hasLoadedValueForKey:@"MPModelPropertySongDuration"])
    {
      [v15 duration];
      [v12 setDuration:v17];
    }

    if ([v15 hasLoadedValueForKey:@"MPModelPropertySongCopyrightText"])
    {
      v18 = [v15 copyrightText];
      [v12 setCopyright:v18];
    }

    if ([v15 hasLoadedValueForKey:@"MPModelPropertySongYear"])
    {
      [v12 setYear:{objc_msgSend(v15, "year")}];
    }

    v19 = objc_alloc_init(MEMORY[0x1E69B3410]);
    if ([v15 hasLoadedValueForKey:@"MPModelPropertySongTrackNumber"])
    {
      [v19 setTrackNumber:{objc_msgSend(v15, "trackNumber")}];
    }

    if ([v15 hasLoadedValueForKey:@"MPModelPropertySongDiscNumber"])
    {
      [v19 setDiscNumber:{objc_msgSend(v15, "discNumber")}];
    }

    v20 = objc_alloc_init(MEMORY[0x1E69B33D8]);
    v47 = v20;
    if ([v15 hasLoadedValueForKey:@"MPModelRelationshipSongAlbum"])
    {
      v21 = [v15 album];
      v22 = v21;
      if (v21 && [v21 hasLoadedValueForKey:@"MPModelPropertyAlbumTitle"])
      {
        v44 = v9;
        v23 = [v22 title];
        [v20 setName:v23];

        if ([v22 hasLoadedValueForKey:@"MPModelPropertyAlbumDiscCount"])
        {
          [v20 setNumDiscs:{objc_msgSend(v22, "discCount")}];
        }

        if ([v22 hasLoadedValueForKey:@"MPModelPropertyAlbumTrackCount"])
        {
          [v20 setNumTracks:{objc_msgSend(v22, "trackCount")}];
        }

        v9 = v44;
        if ([v22 hasLoadedValueForKey:@"MPModelPropertyAlbumIsCompilation"])
        {
          [v20 setCompilation:{objc_msgSend(v22, "isCompilation")}];
        }
      }
    }

    v42 = self;
    v24 = objc_alloc_init(MEMORY[0x1E69B33E0]);
    if ([v15 hasLoadedValueForKey:@"MPModelRelationshipSongArtist"])
    {
      v25 = [v15 artist];
      v26 = v25;
      if (v25 && [v25 hasLoadedValueForKey:@"MPModelPropertyPersonName"])
      {
        [v26 name];
        v28 = v27 = v9;
        [v24 setName:v28];

        v9 = v27;
        v20 = v47;
      }
    }

    if ([v15 hasLoadedValueForKey:@"MPModelRelationshipSongGenre"])
    {
      v29 = [v15 genre];
      v30 = v29;
      if (v29 && [v29 hasLoadedValueForKey:@"MPModelPropertyGenreName"])
      {
        v45 = v9;
        v31 = objc_alloc_init(MEMORY[0x1E69B33E8]);
        v32 = [v30 name];
        [v31 setName:v32];

        v20 = v47;
        [v19 setGenre:v31];

        v9 = v45;
      }
    }

    [v19 setAlbum:v20];
    [v19 setArtist:v24];
    [v12 setSong:v19];
    if ([v15 hasLoadedValueForKey:@"MPModelPropertySongArtwork"])
    {
      v46 = v9;
      v41 = [v15 artworkCatalog];
      v33 = [v41 token];
      if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v34 = [v33 imageArtworkInfo];
        MSVGetMaximumScreenSize();
        v43 = v34;
        v35 = [v34 artworkURLWithSize:*MEMORY[0x1E69E4240] cropStyle:*MEMORY[0x1E69E4268] format:?];
        v36 = [v35 absoluteString];
        if ([v36 length])
        {
          [v12 setArtworkId:v36];
        }
      }

      else
      {
        v38 = os_log_create("com.apple.amp.mediaplayer", "Library");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v49 = v42;
          v50 = 2114;
          v51 = v33;
          _os_log_impl(&dword_1A238D000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Unexpected token in artwork catalog - skipping setting artwork on the import item. token=%{public}@", buf, 0x16u);
        }
      }

      v9 = v46;
      v20 = v47;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"MPModelLibraryModelObjectImportChangeRequestOperation.m" lineNumber:235 description:{@"Unsupported model type %@", objc_opt_class()}];
  }

  v39 = [objc_alloc(MEMORY[0x1E69B3470]) initWithMultiverseIdentifier:v6 mediaItem:v12];

  return v39;
}

- (void)_finishOperationWithAddedItems:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MPModelLibraryModelObjectImportChangeRequestOperation *)self responseHandler];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v9, v6);
  }

  [(MPAsyncOperation *)self finishWithError:v6];
}

- (void)execute
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSArray *)self->_objectsToImport count];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Performing library import of %lu tracks", buf, 0x16u);
  }

  v26 = objc_alloc_init(MEMORY[0x1E69B3480]);
  [v26 setOperationCount:{-[NSArray count](self->_objectsToImport, "count")}];
  [v26 setSourceType:6];
  [v26 setShouldLibraryAdd:self->_shouldLibraryAdd];
  v25 = [objc_alloc(MEMORY[0x1E69B3478]) initWithConfiguration:v26 delegate:0];
  if ([v25 start])
  {
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_objectsToImport, "count")}];
    v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_objectsToImport, "count")}];
    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_objectsToImport, "count")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = self->_objectsToImport;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v6)
    {
      v7 = *v35;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v34 + 1) + 8 * i);
          v10 = [(MPModelLibraryModelObjectImportChangeRequestOperation *)self _importItemFromModelObject:v9];
          [v28 addObject:v10];
          if (self->_shouldLibraryAdd)
          {
            v11 = [v9 identifiers];
            v12 = [v11 universalStore];
            v13 = [v12 subscriptionAdamID];

            if (!v13)
            {
              v14 = [v11 universalStore];
              v13 = [v14 adamID];
            }

            v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
            [v27 addObject:v15];
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v6);
    }

    v16 = [v25 addItemsReturningResult:v28];
    v17 = [v16 success];
    if (v17)
    {
      v18 = [v16 resultingDatabasePersistentIDs];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __64__MPModelLibraryModelObjectImportChangeRequestOperation_execute__block_invoke;
      v32[3] = &unk_1E767B110;
      v32[4] = self;
      v33 = v24;
      [v18 enumerateKeysAndObjectsUsingBlock:v32];

      [v25 finish];
    }

    else
    {
      v20 = os_log_create("com.apple.amp.mediaplayer", "Library");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Import failed", buf, 0xCu);
      }

      [v25 cancel];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = __Block_byref_object_copy__31176;
    v44 = __Block_byref_object_dispose__31177;
    if (v17)
    {
      v45 = 0;
      if (self->_shouldLibraryAdd && [v27 count] == 1)
      {
        v21 = os_log_create("com.apple.amp.mediaplayer", "Library");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v38 = 138543618;
          v39 = self;
          v40 = 2114;
          v41 = v27;
          _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding tracks with adam IDs %{public}@ to cloud library.", v38, 0x16u);
        }

        v22 = [(MPAsyncOperation *)self userIdentity];
        v23 = [MPCloudController controllerWithUserIdentity:v22];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __64__MPModelLibraryModelObjectImportChangeRequestOperation_execute__block_invoke_13;
        v29[3] = &unk_1E767B138;
        v29[4] = self;
        v30 = v24;
        v31 = buf;
        [v23 addStoreItemsWithAdamIDs:v27 referralObject:0 completionHandler:v29];

        goto LABEL_31;
      }
    }

    else
    {
      v45 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryModelObjectImportChangeRequestOperationErrorDomain" code:-1 debugDescription:@"Import failed for unknown reason"];
    }

    [(MPModelLibraryModelObjectImportChangeRequestOperation *)self _finishOperationWithAddedItems:v24 error:*(*&buf[8] + 40)];
LABEL_31:
    _Block_object_dispose(buf, 8);

    goto LABEL_32;
  }

  v19 = os_log_create("com.apple.amp.mediaplayer", "Library");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Failed to start import session", buf, 0xCu);
  }

  v24 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:0 debugDescription:@"Failed to start import session"];
  [(MPModelLibraryModelObjectImportChangeRequestOperation *)self _finishOperationWithAddedItems:0 error:v24];
LABEL_32:
}

void __64__MPModelLibraryModelObjectImportChangeRequestOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(*(a1 + 32) + 280) itemWithPersistentID:objc_msgSend(a3 verifyExistence:{"unsignedLongLongValue"), 0}];
  [*(a1 + 40) addObject:v4];
}

void __64__MPModelLibraryModelObjectImportChangeRequestOperation_execute__block_invoke_13(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Library");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v4 msv_description];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Finished request to add tracks to cloud library. error=%{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished request to add tracks to cloud library.", &v10, 0xCu);
  }

  [*(a1 + 32) _finishOperationWithAddedItems:*(a1 + 40) error:*(*(*(a1 + 48) + 8) + 40)];
}

@end