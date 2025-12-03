@interface MPModelLibraryModelObjectImportChangeRequestOperation
- (id)_importItemFromModelObject:(id)object;
- (void)_finishOperationWithAddedItems:(id)items error:(id)error;
- (void)execute;
@end

@implementation MPModelLibraryModelObjectImportChangeRequestOperation

- (id)_importItemFromModelObject:(id)object
{
  v52 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v6 = objc_alloc_init(MEMORY[0x1E69B3400]);
  identifiers = [objectCopy identifiers];
  personalizedStore = [identifiers personalizedStore];
  personID = [personalizedStore personID];

  if ([personID length])
  {
    [v6 setAccountId:{objc_msgSend(personID, "longLongValue")}];
  }

  universalStore = [identifiers universalStore];
  adamID = [universalStore adamID];

  if (adamID)
  {
    [v6 setStoreId:adamID];
  }

  v12 = objc_alloc_init(MEMORY[0x1E69B33F8]);
  [v12 setIsInUsersLibrary:self->_shouldLibraryAdd];
  [v12 setCloudAssetAvailable:1];
  universalStore2 = [identifiers universalStore];
  subscriptionAdamID = [universalStore2 subscriptionAdamID];

  if (subscriptionAdamID)
  {
    [v12 setSubscriptionStoreItemId:subscriptionAdamID];
    [v12 setPlaybackEndpointType:3];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objectCopy;
    [v12 setMediaType:1];
    title = [v15 title];
    [v12 setTitle:title];

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
      copyrightText = [v15 copyrightText];
      [v12 setCopyright:copyrightText];
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
      album = [v15 album];
      v22 = album;
      if (album && [album hasLoadedValueForKey:@"MPModelPropertyAlbumTitle"])
      {
        v44 = personID;
        title2 = [v22 title];
        [v20 setName:title2];

        if ([v22 hasLoadedValueForKey:@"MPModelPropertyAlbumDiscCount"])
        {
          [v20 setNumDiscs:{objc_msgSend(v22, "discCount")}];
        }

        if ([v22 hasLoadedValueForKey:@"MPModelPropertyAlbumTrackCount"])
        {
          [v20 setNumTracks:{objc_msgSend(v22, "trackCount")}];
        }

        personID = v44;
        if ([v22 hasLoadedValueForKey:@"MPModelPropertyAlbumIsCompilation"])
        {
          [v20 setCompilation:{objc_msgSend(v22, "isCompilation")}];
        }
      }
    }

    selfCopy = self;
    v24 = objc_alloc_init(MEMORY[0x1E69B33E0]);
    if ([v15 hasLoadedValueForKey:@"MPModelRelationshipSongArtist"])
    {
      artist = [v15 artist];
      v26 = artist;
      if (artist && [artist hasLoadedValueForKey:@"MPModelPropertyPersonName"])
      {
        [v26 name];
        v28 = v27 = personID;
        [v24 setName:v28];

        personID = v27;
        v20 = v47;
      }
    }

    if ([v15 hasLoadedValueForKey:@"MPModelRelationshipSongGenre"])
    {
      genre = [v15 genre];
      v30 = genre;
      if (genre && [genre hasLoadedValueForKey:@"MPModelPropertyGenreName"])
      {
        v45 = personID;
        v31 = objc_alloc_init(MEMORY[0x1E69B33E8]);
        name = [v30 name];
        [v31 setName:name];

        v20 = v47;
        [v19 setGenre:v31];

        personID = v45;
      }
    }

    [v19 setAlbum:v20];
    [v19 setArtist:v24];
    [v12 setSong:v19];
    if ([v15 hasLoadedValueForKey:@"MPModelPropertySongArtwork"])
    {
      v46 = personID;
      artworkCatalog = [v15 artworkCatalog];
      token = [artworkCatalog token];
      if (token && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        imageArtworkInfo = [token imageArtworkInfo];
        MSVGetMaximumScreenSize();
        v43 = imageArtworkInfo;
        v35 = [imageArtworkInfo artworkURLWithSize:*MEMORY[0x1E69E4240] cropStyle:*MEMORY[0x1E69E4268] format:?];
        absoluteString = [v35 absoluteString];
        if ([absoluteString length])
        {
          [v12 setArtworkId:absoluteString];
        }
      }

      else
      {
        v38 = os_log_create("com.apple.amp.mediaplayer", "Library");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v49 = selfCopy;
          v50 = 2114;
          v51 = token;
          _os_log_impl(&dword_1A238D000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Unexpected token in artwork catalog - skipping setting artwork on the import item. token=%{public}@", buf, 0x16u);
        }
      }

      personID = v46;
      v20 = v47;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelLibraryModelObjectImportChangeRequestOperation.m" lineNumber:235 description:{@"Unsupported model type %@", objc_opt_class()}];
  }

  v39 = [objc_alloc(MEMORY[0x1E69B3470]) initWithMultiverseIdentifier:v6 mediaItem:v12];

  return v39;
}

- (void)_finishOperationWithAddedItems:(id)items error:(id)error
{
  itemsCopy = items;
  errorCopy = error;
  responseHandler = [(MPModelLibraryModelObjectImportChangeRequestOperation *)self responseHandler];
  v8 = responseHandler;
  if (responseHandler)
  {
    (*(responseHandler + 16))(responseHandler, itemsCopy, errorCopy);
  }

  [(MPAsyncOperation *)self finishWithError:errorCopy];
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
            identifiers = [v9 identifiers];
            universalStore = [identifiers universalStore];
            subscriptionAdamID = [universalStore subscriptionAdamID];

            if (!subscriptionAdamID)
            {
              universalStore2 = [identifiers universalStore];
              subscriptionAdamID = [universalStore2 adamID];
            }

            v15 = [MEMORY[0x1E696AD98] numberWithLongLong:subscriptionAdamID];
            [v27 addObject:v15];
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v6);
    }

    v16 = [v25 addItemsReturningResult:v28];
    success = [v16 success];
    if (success)
    {
      resultingDatabasePersistentIDs = [v16 resultingDatabasePersistentIDs];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __64__MPModelLibraryModelObjectImportChangeRequestOperation_execute__block_invoke;
      v32[3] = &unk_1E767B110;
      v32[4] = self;
      v33 = v24;
      [resultingDatabasePersistentIDs enumerateKeysAndObjectsUsingBlock:v32];

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
    if (success)
    {
      v45 = 0;
      if (self->_shouldLibraryAdd && [v27 count] == 1)
      {
        v21 = os_log_create("com.apple.amp.mediaplayer", "Library");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v38 = 138543618;
          selfCopy = self;
          v40 = 2114;
          v41 = v27;
          _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding tracks with adam IDs %{public}@ to cloud library.", v38, 0x16u);
        }

        userIdentity = [(MPAsyncOperation *)self userIdentity];
        v23 = [MPCloudController controllerWithUserIdentity:userIdentity];
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