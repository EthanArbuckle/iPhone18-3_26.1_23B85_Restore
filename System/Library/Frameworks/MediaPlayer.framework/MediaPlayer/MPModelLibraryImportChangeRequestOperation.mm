@interface MPModelLibraryImportChangeRequestOperation
- (BOOL)_isObjectImportable:(id)importable;
- (id)_modelObjectFromMPMediaItem:(id)item;
- (void)execute;
@end

@implementation MPModelLibraryImportChangeRequestOperation

- (id)_modelObjectFromMPMediaItem:(id)item
{
  itemCopy = item;
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v6 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];

  userIdentity2 = [(MPAsyncOperation *)self userIdentity];
  accountDSID = [userIdentity2 accountDSID];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{@"storeItemAdamID", @"subscriptionStoreItemAdamID", @"storeCloudAlbumID", @"storeSagaID", @"persistentID", @"mediaType", 0}];
  v10 = [itemCopy valuesForProperties:v9];

  v11 = [v10 objectForKey:@"mediaType"];
  [v11 integerValue];

  v12 = objc_opt_class();
  v13 = [v12 alloc];
  v14 = [MPIdentifierSet alloc];
  v15 = [MPModelKind kindWithModelClass:v12];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__MPModelLibraryImportChangeRequestOperation__modelObjectFromMPMediaItem___block_invoke;
  v22[3] = &unk_1E767AFA0;
  v23 = v6;
  v24 = v10;
  v25 = accountDSID;
  v16 = accountDSID;
  v17 = v10;
  v18 = v6;
  v19 = [(MPIdentifierSet *)v14 initWithSource:@"LibraryImport" modelKind:v15 block:v22];
  v20 = [v13 initWithIdentifiers:v19 block:&__block_literal_global_38];

  return v20;
}

void __74__MPModelLibraryImportChangeRequestOperation__modelObjectFromMPMediaItem___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] uniqueIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__MPModelLibraryImportChangeRequestOperation__modelObjectFromMPMediaItem___block_invoke_2;
  v10[3] = &unk_1E7680B00;
  v11 = a1[5];
  [v3 setLibraryIdentifiersWithDatabaseID:v4 block:v10];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__MPModelLibraryImportChangeRequestOperation__modelObjectFromMPMediaItem___block_invoke_3;
  v8[3] = &unk_1E767FAA0;
  v9 = a1[5];
  [v3 setUniversalStoreIdentifiersWithBlock:v8];
  if ([a1[6] length])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__MPModelLibraryImportChangeRequestOperation__modelObjectFromMPMediaItem___block_invoke_4;
    v6[3] = &unk_1E767FA78;
    v5 = a1[6];
    v7 = a1[5];
    [v3 setPersonalStoreIdentifiersWithPersonID:v5 block:v6];
  }
}

void __74__MPModelLibraryImportChangeRequestOperation__modelObjectFromMPMediaItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKey:@"persistentID"];
  [v3 setPersistentID:{objc_msgSend(v4, "longLongValue")}];
}

void __74__MPModelLibraryImportChangeRequestOperation__modelObjectFromMPMediaItem___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:@"storeItemAdamID"];
  [v4 setAdamID:{objc_msgSend(v5, "longLongValue")}];

  v6 = [*(a1 + 32) objectForKey:@"subscriptionStoreItemAdamID"];
  [v4 setSubscriptionAdamID:{objc_msgSend(v6, "longLongValue")}];
}

void __74__MPModelLibraryImportChangeRequestOperation__modelObjectFromMPMediaItem___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKey:@"storeCloudAlbumID"];
  if ([v3 length])
  {
    [v5 setCloudAlbumID:v3];
  }

  v4 = [*(a1 + 32) objectForKey:@"storeSagaID"];
  [v5 setCloudID:{objc_msgSend(v4, "unsignedLongLongValue")}];
}

- (BOOL)_isObjectImportable:(id)importable
{
  importableCopy = importable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = importableCopy;
    if ([v4 hasLoadedValueForKey:@"MPModelPropertySongTitle"])
    {
      title = [v4 title];
      v6 = [title length];

      if (v6)
      {
        album = [v4 album];
        v8 = album;
        if (album && [album hasLoadedValueForKey:@"MPModelPropertyAlbumTitle"] && (objc_msgSend(v8, "title"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
        {
          artist = [v4 artist];
          v12 = artist;
          if (artist && [artist hasLoadedValueForKey:@"MPModelPropertyPersonName"])
          {
            name = [v12 name];
            LOBYTE(v6) = [name length] != 0;
          }

          else
          {
            LOBYTE(v6) = 0;
          }
        }

        else
        {
          LOBYTE(v6) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)execute
{
  selfCopy2 = self;
  v92 = *MEMORY[0x1E69E9840];
  if (!self->_operationQueue)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = selfCopy2->_operationQueue;
    selfCopy2->_operationQueue = v3;

    [(NSOperationQueue *)selfCopy2->_operationQueue setMaxConcurrentOperationCount:4];
    [(NSOperationQueue *)selfCopy2->_operationQueue setName:@"com.apple.MediaPlayer.MPModelLibraryImportChangeRequestOperation.operationQueue"];
    v5 = selfCopy2->_operationQueue;
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    -[NSOperationQueue setQualityOfService:](v5, "setQualityOfService:", [currentThread qualityOfService]);

    selfCopy2 = self;
  }

  userIdentity = [(MPAsyncOperation *)selfCopy2 userIdentity];
  v33 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];

  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x3032000000;
  v85[3] = __Block_byref_object_copy__30854;
  v85[4] = __Block_byref_object_dispose__30855;
  v86 = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x3032000000;
  v83[3] = __Block_byref_object_copy__30854;
  v83[4] = __Block_byref_object_dispose__30855;
  v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
  responseHandler = [(MPModelLibraryImportChangeRequestOperation *)self responseHandler];
  v9 = MEMORY[0x1E696AAE0];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke;
  v79[3] = &unk_1E767D530;
  v81 = v83;
  v82 = v85;
  v27 = responseHandler;
  v80 = v27;
  v79[4] = self;
  v31 = [v9 blockOperationWithBlock:v79];
  referralObject = [(MPModelLibraryImportChangeRequest *)self->_request referralObject];
  modelObjects = [(MPModelLibraryImportChangeRequest *)self->_request modelObjects];
  shouldLibraryAdd = [(MPModelLibraryImportChangeRequest *)self->_request shouldLibraryAdd];
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__30854;
  v77 = __Block_byref_object_dispose__30855;
  v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__30854;
  v71 = __Block_byref_object_dispose__30855;
  v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__30854;
  v65 = __Block_byref_object_dispose__30855;
  v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_6;
  v54[3] = &unk_1E767AF28;
  v57 = &v67;
  v60 = shouldLibraryAdd;
  v55 = modelObjects;
  selfCopy3 = self;
  v58 = &v61;
  v59 = &v73;
  v26 = v55;
  [v55 enumerateItemIdentifiersUsingBlock:v54];
  v30 = dispatch_queue_create("com.apple.MediaPlayer.MPModelLibraryImportChangeRequestOperation.accessQueue", 0);
  v12 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v74[5] count];
    *buf = 67109120;
    LODWORD(v88) = v13;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "MPModelLibraryImportChangeRequestOperation creating operations to add %d store items", buf, 8u);
  }

  if ([v74[5] count])
  {
    v14 = objc_alloc_init(MPModelLibraryStoreIDsImportChangeRequestOperation);
    [(MPModelLibraryStoreIDsImportChangeRequestOperation *)v14 setShouldLibraryAdd:shouldLibraryAdd];
    [(MPModelLibraryStoreIDsImportChangeRequestOperation *)v14 setMediaLibrary:v33];
    [(MPModelLibraryStoreIDsImportChangeRequestOperation *)v14 setStoreIDs:v74[5]];
    [(MPModelLibraryStoreIDsImportChangeRequestOperation *)v14 setReferralObject:referralObject];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_11;
    v49[3] = &unk_1E767AF78;
    v50 = v30;
    selfCopy4 = self;
    v52 = v85;
    v53 = v83;
    [(MPModelLibraryStoreIDsImportChangeRequestOperation *)v14 setResponseHandler:v49];
    [v31 addDependency:v14];
    [(NSOperationQueue *)self->_operationQueue addOperation:v14];
  }

  v15 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v68[5] count];
    *buf = 67109120;
    LODWORD(v88) = v16;
    _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEFAULT, "MPModelLibraryImportChangeRequestOperation creating operations to add %d global playlists", buf, 8u);
  }

  if ([v68[5] count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v68[5];
    v17 = [obj countByEnumeratingWithState:&v45 objects:v91 count:16];
    if (v17)
    {
      v18 = *v46;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v45 + 1) + 8 * i);
          v21 = objc_alloc_init(MPModelLibraryGlobalPlaylistImportChangeRequestOperation);
          [(MPModelLibraryGlobalPlaylistImportChangeRequestOperation *)v21 setShouldLibraryAdd:shouldLibraryAdd];
          [(MPModelLibraryGlobalPlaylistImportChangeRequestOperation *)v21 setMediaLibrary:v33];
          [(MPModelLibraryGlobalPlaylistImportChangeRequestOperation *)v21 setGlobalPlaylistID:v20];
          v22 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v88 = v20;
            v89 = 1024;
            v90 = shouldLibraryAdd;
            _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "MPModelLibraryImportChangeRequestOperation creating operation to add playlist with globalID=%{public}@ to library:%{BOOL}u", buf, 0x12u);
          }

          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_14;
          v39[3] = &unk_1E767AFF0;
          v39[4] = v20;
          v44 = shouldLibraryAdd;
          v40 = v30;
          v42 = v85;
          v41 = v33;
          v43 = v83;
          [(MPModelLibraryGlobalPlaylistImportChangeRequestOperation *)v21 setResponseHandler:v39];
          [v31 addDependency:v21];
          [(NSOperationQueue *)self->_operationQueue addOperation:v21];
        }

        v17 = [obj countByEnumeratingWithState:&v45 objects:v91 count:16];
      }

      while (v17);
    }
  }

  v23 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v62[5] count];
    *buf = 67109120;
    LODWORD(v88) = v24;
    _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "MPModelLibraryImportChangeRequestOperation creating operations to add %d model objects directly", buf, 8u);
  }

  if ([v62[5] count])
  {
    v25 = objc_alloc_init(MPModelLibraryModelObjectImportChangeRequestOperation);
    [(MPModelLibraryModelObjectImportChangeRequestOperation *)v25 setShouldLibraryAdd:shouldLibraryAdd];
    [(MPModelLibraryModelObjectImportChangeRequestOperation *)v25 setMediaLibrary:v33];
    [(MPModelLibraryModelObjectImportChangeRequestOperation *)v25 setObjectsToImport:v62[5]];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_29;
    v34[3] = &unk_1E767AF78;
    v35 = v30;
    selfCopy5 = self;
    v37 = v85;
    v38 = v83;
    [(MPModelLibraryModelObjectImportChangeRequestOperation *)v25 setResponseHandler:v34];
    [v31 addDependency:v25];
    [(NSOperationQueue *)self->_operationQueue addOperation:v25];
  }

  [(NSOperationQueue *)self->_operationQueue addOperation:v31];

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(v83, 8);

  _Block_object_dispose(v85, 8);
}

uint64_t __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _Block_copy(*(a1 + 40));
    v4 = [*(*(*(a1 + 48) + 8) + 40) count];
    v8 = 134218240;
    v9 = v3;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "MPModelLibraryImportChangeRequestOperation finishing with responseHandler=%p, resultingObjects.count=%d", &v8, 0x12u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    else
    {
      v6 = 0;
    }

    (*(v5 + 16))(v5, v6, *(*(*(a1 + 56) + 8) + 40));
  }

  return [*(a1 + 32) finishWithError:*(*(*(a1 + 56) + 8) + 40)];
}

void __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 universalStore];
  v8 = [v7 globalPlaylistID];

  if (![v8 length])
  {
    v9 = [*(a1 + 32) itemAtIndexPath:v5];
    if (*(a1 + 72) == 1 && [*(a1 + 40) _isObjectImportable:v9])
    {
      [*(*(*(a1 + 56) + 8) + 40) addObject:v9];
    }

    else
    {
      v10 = [v6 universalStore];
      v11 = [v10 subscriptionAdamID];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v13 = [v6 universalStore];
        v12 = [v13 adamID];

        if (!v12)
        {
          v16 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = 138543362;
            v18 = v9;
            _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_ERROR, "MPModelLibraryImportChangeRequestOperation cannot import object - skipping: %{public}@", &v17, 0xCu);
          }

          goto LABEL_10;
        }
      }

      v14 = *(*(*(a1 + 64) + 8) + 40);
      v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
      [v14 addObject:v15];
    }

LABEL_10:

    goto LABEL_11;
  }

  [*(*(*(a1 + 48) + 8) + 40) addObject:v8];
LABEL_11:
}

void __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_2;
  block[3] = &unk_1E767AF50;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  dispatch_sync(v7, block);
}

void __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 72);
    *buf = 138543874;
    v24 = v8;
    v25 = 1024;
    v26 = v9;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "MPModelLibraryImportChangeRequestOperation finished operation to add playlist with globalID=%{public}@ to library:%{BOOL}u with error=%{public}@", buf, 0x1Cu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_15;
  v16[3] = &unk_1E767AFC8;
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v21 = *(a1 + 56);
  v17 = v6;
  v18 = v5;
  v12 = v10;
  v13 = *(a1 + 32);
  v19 = v12;
  v20 = v13;
  v22 = *(a1 + 64);
  v14 = v5;
  v15 = v6;
  dispatch_sync(v11, v16);
}

void __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_2_30;
  block[3] = &unk_1E767AF50;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  dispatch_sync(v7, block);
}

void __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_2_30(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 56) + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {
      objc_storeStrong(v4, v2);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 48) _modelObjectFromMPMediaItem:{*(*(&v12 + 1) + 8 * v10), v12}];
        if (v11)
        {
          [*(*(*(a1 + 64) + 8) + 40) addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

void __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 64) + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {
      objc_storeStrong(v4, v2);
    }
  }

  if (*(a1 + 40))
  {
    v6 = [MPModelPlaylist alloc];
    v7 = [MPIdentifierSet alloc];
    v8 = +[MPModelPlaylistKind identityKind];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_2_22;
    v13[3] = &unk_1E767AFA0;
    v14 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v15 = v9;
    v16 = v10;
    v11 = [(MPIdentifierSet *)v7 initWithSource:@"LibraryImport" modelKind:v8 block:v13];
    v12 = [(MPModelObject *)v6 initWithIdentifiers:v11 block:&__block_literal_global_30871];

    if (v12)
    {
      [*(*(*(a1 + 72) + 8) + 40) addObject:v12];
    }
  }
}

void __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_2_22(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_3;
  v7[3] = &unk_1E7680B00;
  v8 = *(a1 + 40);
  [v4 setLibraryIdentifiersWithDatabaseID:v5 block:v7];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_4;
  v6[3] = &unk_1E767FAA0;
  v6[4] = *(a1 + 48);
  [v4 setUniversalStoreIdentifiersWithBlock:v6];
}

void __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(v2, "persistentID")}];
}

void __53__MPModelLibraryImportChangeRequestOperation_execute__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 56) + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {
      objc_storeStrong(v4, v2);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 48) _modelObjectFromMPMediaItem:{*(*(&v12 + 1) + 8 * v10), v12}];
        if (v11)
        {
          [*(*(*(a1 + 64) + 8) + 40) addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end