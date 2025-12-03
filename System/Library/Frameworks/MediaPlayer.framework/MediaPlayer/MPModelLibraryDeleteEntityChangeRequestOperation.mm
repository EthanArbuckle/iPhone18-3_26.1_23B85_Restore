@interface MPModelLibraryDeleteEntityChangeRequestOperation
- (BOOL)_isCloudLibraryEnabled;
- (void)_deleteItems:(id)items withLibrary:(id)library;
- (void)_handlePersistentID:(int64_t)d modelClass:(Class)class mediaLibrary:(id)library;
- (void)execute;
@end

@implementation MPModelLibraryDeleteEntityChangeRequestOperation

- (BOOL)_isCloudLibraryEnabled
{
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v3 = [MPCloudController controllerWithUserIdentity:userIdentity];
  isCloudLibraryEnabled = [v3 isCloudLibraryEnabled];

  return isCloudLibraryEnabled;
}

- (void)_deleteItems:(id)items withLibrary:(id)library
{
  v44 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  libraryCopy = library;
  if ([itemsCopy count])
  {
    userIdentity = [(MPAsyncOperation *)self userIdentity];
    v9 = [MPCloudController controllerWithUserIdentity:userIdentity];

    userIdentity2 = [(MPAsyncOperation *)self userIdentity];
    v11 = [MPCloudServiceStatusController cloudServiceStatusControllerWithUserIdentity:userIdentity2];

    if ([(MPModelLibraryDeleteEntityChangeRequestOperation *)self _isCloudLibraryEnabled])
    {
      v29 = v11;
      v30 = v9;
      selfCopy = self;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v12 = itemsCopy;
      v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v39;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v39 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = [*(*(&v38 + 1) + 8 * i) valueForProperty:@"storeSagaID"];
            if ([v18 unsignedLongLongValue])
            {
              if (!v15)
              {
                v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
              }

              [v15 addObject:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      if ([v15 count])
      {
        v9 = v30;
        [v30 removeItemsWithSagaIDs:v15 completionHandler:0];
        self = selfCopy;
LABEL_37:
        v11 = v29;

        goto LABEL_38;
      }

      self = selfCopy;
    }

    else
    {
      if (![v11 isPurchaseHistoryEnabled])
      {
LABEL_38:
        [libraryCopy deleteItems:itemsCopy];

        goto LABEL_39;
      }

      v29 = v11;
      v30 = v9;
      v31 = libraryCopy;
      selfCopy2 = self;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = itemsCopy;
      v19 = itemsCopy;
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v20)
      {
        v21 = v20;
        v15 = 0;
        v22 = *v35;
        v23 = MEMORY[0x1E695E118];
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v34 + 1) + 8 * j);
            v26 = [v25 valueForProperty:@"purchaseHistoryID"];
            if ([v26 unsignedLongLongValue])
            {
              if (!v15)
              {
                v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
              }

              [v15 addObject:v26];
              [v25 setValue:v23 forProperty:@"isHidden"];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v21);
      }

      else
      {
        v15 = 0;
      }

      if ([v15 count])
      {
        v9 = v30;
        [v30 hideItemsWithPurchaseHistoryIDs:v15 completionHandler:0];
        itemsCopy = v28;
        libraryCopy = v31;
        self = selfCopy2;
        goto LABEL_37;
      }

      itemsCopy = v28;
      libraryCopy = v31;
      self = selfCopy2;
    }

    v9 = v30;
    goto LABEL_37;
  }

LABEL_39:
  responseHandler = self->_responseHandler;
  if (responseHandler)
  {
    responseHandler[2](responseHandler, 0);
  }

  [(MPAsyncOperation *)self finish];
}

- (void)_handlePersistentID:(int64_t)d modelClass:(Class)class mediaLibrary:(id)library
{
  v60[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || [(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v9 = [libraryCopy itemWithPersistentID:d verifyExistence:0];
    v10 = v9;
    if (v9)
    {
      v60[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
      [(MPModelLibraryDeleteEntityChangeRequestOperation *)self _deleteItems:v11 withLibrary:libraryCopy];
    }

    else
    {
      [(MPModelLibraryDeleteEntityChangeRequestOperation *)self _deleteItems:0 withLibrary:libraryCopy];
    }

    goto LABEL_8;
  }

  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v12 = objc_alloc_init(MPModelLibraryRequest);
    [(MPModelLibraryRequest *)v12 setFilteringOptions:0x10000];
    [(MPModelLibraryRequest *)v12 setMediaLibrary:libraryCopy];
    v13 = [class alloc];
    v14 = [MPIdentifierSet alloc];
    v15 = +[MPModelAlbumKind identityKind];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke;
    v50[3] = &unk_1E767CDA0;
    v16 = libraryCopy;
    v51 = v16;
    dCopy = d;
    v17 = [(MPIdentifierSet *)v14 initWithSource:@"LibraryEdit" modelKind:v15 block:v50];
    v18 = [v13 initWithIdentifiers:v17 block:&__block_literal_global_30201];

    v19 = [MPModelSong kindWithVariants:3];
    [(MPModelRequest *)v12 setItemKind:v19];

    v59 = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    [(MPModelLibraryRequest *)v12 setScopedContainers:v20];

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_4;
    v47[3] = &unk_1E767B6F0;
    v48 = v16;
    selfCopy = self;
    v21 = [(MPModelLibraryRequest *)v12 newOperationWithResponseHandler:v47];
    [(NSOperationQueue *)self->_operationQueue addOperation:v21];

    v22 = v51;
LABEL_13:

LABEL_14:
    goto LABEL_8;
  }

  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v12 = objc_alloc_init(MPModelLibraryRequest);
    [(MPModelLibraryRequest *)v12 setMediaLibrary:libraryCopy];
    v23 = [class alloc];
    v24 = [MPIdentifierSet alloc];
    v25 = +[MPModelTVSeasonKind identityKind];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_6;
    v44[3] = &unk_1E767CDA0;
    v26 = libraryCopy;
    v45 = v26;
    dCopy2 = d;
    v27 = [(MPIdentifierSet *)v24 initWithSource:@"LibraryEdit" modelKind:v25 block:v44];
    v28 = [v23 initWithIdentifiers:v27 block:&__block_literal_global_29_30204];

    v29 = [MPModelTVEpisode kindWithVariants:3];
    [(MPModelRequest *)v12 setItemKind:v29];

    v58 = v28;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
    [(MPModelLibraryRequest *)v12 setScopedContainers:v30];

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_9;
    v41[3] = &unk_1E767B6F0;
    v42 = v26;
    selfCopy2 = self;
    v31 = [(MPModelLibraryRequest *)v12 newOperationWithResponseHandler:v41];
    [(NSOperationQueue *)self->_operationQueue addOperation:v31];

    v22 = v45;
    goto LABEL_13;
  }

  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v12 = [libraryCopy playlistWithPersistentID:d];
    if (!v12)
    {
LABEL_32:
      responseHandler = self->_responseHandler;
      if (responseHandler)
      {
        responseHandler[2](responseHandler, 0);
      }

      [(MPAsyncOperation *)self finish];
      goto LABEL_14;
    }

    if (![(MPModelLibraryDeleteEntityChangeRequestOperation *)self _isCloudLibraryEnabled])
    {
LABEL_31:
      [libraryCopy removePlaylist:v12 preserveUndeletableEntities:1];
      goto LABEL_32;
    }

    v32 = [(MPModelLibraryRequest *)v12 valueForProperty:@"isFolder"];

    if (v32)
    {
      v33 = [(MPModelLibraryRequest *)v12 sagaIDTreeIncludingUndeletablePlaylists:0];
      if (!v33)
      {
        v39 = _MPLogCategoryDefault();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v56 = 2048;
          dCopy3 = d;
          _os_log_impl(&dword_1A238D000, v39, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve saga IDs for removal given playlist with persistent ID=%lld, skipping cloud library update", buf, 0x16u);
        }

        v34 = 0;
        goto LABEL_30;
      }

      v34 = v33;
      userIdentity = [(MPAsyncOperation *)self userIdentity];
      v36 = [MPCloudController controllerWithUserIdentity:userIdentity];
      [v36 removePlaylistsWithSagaIDs:v34 performDeltaSync:1 completionHandler:0];
    }

    else
    {
      v34 = [(MPModelLibraryRequest *)v12 valueForProperty:@"storeCloudID"];
      if (![v34 unsignedLongLongValue])
      {
LABEL_30:

        goto LABEL_31;
      }

      userIdentity = [(MPAsyncOperation *)self userIdentity];
      v36 = [MPCloudController controllerWithUserIdentity:userIdentity];
      v53 = v34;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      [v36 removePlaylistsWithSagaIDs:v38 performDeltaSync:0 completionHandler:0];
    }

    goto LABEL_30;
  }

  v37 = self->_responseHandler;
  if (v37)
  {
    v37[2](v37, 0);
  }

  [(MPAsyncOperation *)self finish];
LABEL_8:
}

void __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_2;
  v6[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v6[4] = *(a1 + 40);
  [v4 setLibraryIdentifiersWithDatabaseID:v5 block:v6];
}

void __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 results];

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_5;
  v11 = &unk_1E767ACF0;
  v12 = *(a1 + 32);
  v13 = v5;
  v7 = v5;
  [v6 enumerateItemIdentifiersUsingBlock:&v8];

  [*(a1 + 40) _deleteItems:v7 withLibrary:{*(a1 + 32), v8, v9, v10, v11}];
}

void __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_7;
  v6[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v6[4] = *(a1 + 40);
  [v4 setLibraryIdentifiersWithDatabaseID:v5 block:v6];
}

void __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 results];

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_10;
  v11 = &unk_1E767ACF0;
  v12 = *(a1 + 32);
  v13 = v5;
  v7 = v5;
  [v6 enumerateItemIdentifiersUsingBlock:&v8];

  [*(a1 + 40) _deleteItems:v7 withLibrary:{*(a1 + 32), v8, v9, v10, v11}];
}

void __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 library];
  v5 = [v4 persistentID];

  if (v5)
  {
    v6 = [*(a1 + 32) itemWithPersistentID:v5 verifyExistence:0];
    if (v6)
    {
      v7 = v6;
      [*(a1 + 40) addObject:v6];
      v6 = v7;
    }
  }
}

void __96__MPModelLibraryDeleteEntityChangeRequestOperation__handlePersistentID_modelClass_mediaLibrary___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 library];
  v5 = [v4 persistentID];

  if (v5)
  {
    v6 = [*(a1 + 32) itemWithPersistentID:v5 verifyExistence:0];
    if (v6)
    {
      v7 = v6;
      [*(a1 + 40) addObject:v6];
      v6 = v7;
    }
  }
}

- (void)execute
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!self->_operationQueue)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = self->_operationQueue;
    self->_operationQueue = v3;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.MediaPlayer.MPModelLibraryKeepLocalChangeRequestOperation.operationQueue"];
    v5 = self->_operationQueue;
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    -[NSOperationQueue setQualityOfService:](v5, "setQualityOfService:", [currentThread qualityOfService]);
  }

  modelObject = [(MPModelLibraryDeleteEntityChangeRequest *)self->_request modelObject];
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v9 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];

  identifiers = [modelObject identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  v13 = objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    anyObject = [modelObject anyObject];
    v13 = objc_opt_class();
  }

  if (persistentID)
  {
    [(MPModelLibraryDeleteEntityChangeRequestOperation *)self _handlePersistentID:persistentID modelClass:v13 mediaLibrary:v9];
  }

  else
  {
    userIdentity2 = [(MPAsyncOperation *)self userIdentity];
    v16 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:userIdentity2];

    v17 = objc_alloc_init(MPStoreLibraryMappingRequestOperation);
    [(MPStoreLibraryMappingRequestOperation *)v17 setLibraryView:v16];
    [(MPStoreLibraryMappingRequestOperation *)v17 setModelClass:objc_opt_class()];
    v27[0] = identifiers;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [(MPStoreLibraryMappingRequestOperation *)v17 setIdentifierSets:v18];

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __59__MPModelLibraryDeleteEntityChangeRequestOperation_execute__block_invoke;
    v22 = &unk_1E767ACC8;
    v23 = identifiers;
    selfCopy = self;
    v26 = v13;
    v25 = v9;
    [(MPStoreLibraryMappingRequestOperation *)v17 setResponseHandler:&v19];
    [(NSOperationQueue *)self->_operationQueue addOperation:v17, v19, v20, v21, v22];
  }
}

void __59__MPModelLibraryDeleteEntityChangeRequestOperation_execute__block_invoke(void *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (!v13 || v5)
  {
    v10 = a1[5];
    v11 = v10[36];
    if (v11)
    {
      (*(v11 + 16))(v10[36], v5);
      v10 = a1[5];
    }

    [v10 finishWithError:v5];
  }

  else
  {
    v6 = [v13 libraryIdentifierSetForIdentifierSet:a1[4]];
    v7 = [v6 library];
    v8 = [v7 persistentID];

    v9 = a1[5];
    if (v8)
    {
      [v9 _handlePersistentID:v8 modelClass:a1[7] mediaLibrary:a1[6]];
    }

    else
    {
      v12 = v9[36];
      if (v12)
      {
        (*(v12 + 16))(v9[36], 0);
        v9 = a1[5];
      }

      [v9 finish];
    }
  }
}

@end