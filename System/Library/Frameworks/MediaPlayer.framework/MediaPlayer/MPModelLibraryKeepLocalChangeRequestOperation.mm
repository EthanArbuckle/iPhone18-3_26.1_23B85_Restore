@interface MPModelLibraryKeepLocalChangeRequestOperation
- (void)_handleKeepLocalUpdateStatus:(int64_t)status forLibraryIdentifier:(int64_t)identifier mediaType:(int64_t)type completedWithError:(id)error;
- (void)_handlePersistentID:(int64_t)d modelClass:(Class)class keepLocal:(int64_t)local keepLocalConstraints:(unint64_t)constraints mediaLibrary:(id)library;
- (void)execute;
@end

@implementation MPModelLibraryKeepLocalChangeRequestOperation

- (void)_handleKeepLocalUpdateStatus:(int64_t)status forLibraryIdentifier:(int64_t)identifier mediaType:(int64_t)type completedWithError:(id)error
{
  errorCopy = error;
  v11 = +[MPMediaDownloadManager sharedManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __128__MPModelLibraryKeepLocalChangeRequestOperation__handleKeepLocalUpdateStatus_forLibraryIdentifier_mediaType_completedWithError___block_invoke;
  v13[3] = &unk_1E767B680;
  v14 = errorCopy;
  selfCopy = self;
  v12 = errorCopy;
  [v11 sendKeepLocalStatusChanged:status forLibraryIdentifier:identifier entityType:type withCompletionHandler:v13];
}

void __128__MPModelLibraryKeepLocalChangeRequestOperation__handleKeepLocalUpdateStatus_forLibraryIdentifier_mediaType_completedWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (!v4)
  {
    v4 = v3;
  }

  v5 = v4;
  v6 = *(a1 + 40);
  v7 = v6[35];
  if (v7)
  {
    (*(v7 + 16))(v6[35], v5);
    v6 = *(a1 + 40);
  }

  [v6 finishWithError:v5];
}

- (void)_handlePersistentID:(int64_t)d modelClass:(Class)class keepLocal:(int64_t)local keepLocalConstraints:(unint64_t)constraints mediaLibrary:(id)library
{
  libraryCopy = library;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || [(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v13 = [libraryCopy itemWithPersistentID:d verifyExistence:0];
    if (v13)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:constraints];
      [(MPMediaQuery *)v13 setValue:v14 forProperty:@"keepLocalConstraints"];

      v15 = [MEMORY[0x1E696AD98] numberWithInteger:local];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __124__MPModelLibraryKeepLocalChangeRequestOperation__handlePersistentID_modelClass_keepLocal_keepLocalConstraints_mediaLibrary___block_invoke;
      v43[3] = &unk_1E767B090;
      v43[4] = self;
      v43[5] = local;
      v43[6] = d;
      [(MPMediaQuery *)v13 setValue:v15 forProperty:@"keepLocal" withCompletionBlock:v43];

LABEL_20:
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || [(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v16 = [MPMediaQuery alloc];
    v17 = MEMORY[0x1E695DFD8];
    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    v19 = [MPMediaPropertyPredicate predicateWithValue:v18 forProperty:@"albumPID"];
    v20 = [v17 setWithObject:v19];
    v13 = [(MPMediaQuery *)v16 initWithFilterPredicates:v20];

    [(MPMediaQuery *)v13 setMediaLibrary:libraryCopy];
    [(MPMediaQuery *)v13 setIgnoreRestrictionsPredicates:1];
    [(MPMediaQuery *)v13 setShouldIncludeNonLibraryEntities:1];
    [(MPMediaQuery *)v13 setGroupingType:1];
    [(MPMediaQuery *)v13 setEntityLimit:1];
    collections = [(MPMediaQuery *)v13 collections];
    firstObject = [collections firstObject];

    if (firstObject)
    {
      v23 = firstObject;
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:constraints];
      [v23 setValue:v24 forProperty:@"keepLocalConstraints"];

      v25 = [MEMORY[0x1E696AD98] numberWithInteger:local];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __124__MPModelLibraryKeepLocalChangeRequestOperation__handlePersistentID_modelClass_keepLocal_keepLocalConstraints_mediaLibrary___block_invoke_2;
      v39[3] = &unk_1E767B0E8;
      localCopy = local;
      dCopy = d;
      v39[4] = self;
      v40 = v23;
      v26 = v23;
      [v26 setValue:v25 forProperty:@"keepLocal" withCompletionBlock:v39];
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

    goto LABEL_20;
  }

  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v28 = [libraryCopy playlistWithPersistentID:d];
    v13 = v28;
    if (v28)
    {
      v29 = v28;
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:constraints];
      [(MPMediaQuery *)v29 setValue:v30 forProperty:@"keepLocalConstraints"];

      v31 = [MEMORY[0x1E696AD98] numberWithInteger:local];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __124__MPModelLibraryKeepLocalChangeRequestOperation__handlePersistentID_modelClass_keepLocal_keepLocalConstraints_mediaLibrary___block_invoke_26;
      v35[3] = &unk_1E767B0E8;
      localCopy2 = local;
      dCopy2 = d;
      v35[4] = self;
      v36 = v29;
      v32 = v29;
      [(MPMediaQuery *)v32 setValue:v31 forProperty:@"keepLocal" withCompletionBlock:v35];

      goto LABEL_20;
    }

LABEL_17:
    v33 = self->_responseHandler;
    if (v33)
    {
      v33[2](v33, 0);
    }

    [(MPAsyncOperation *)self finish];
    goto LABEL_20;
  }

  v34 = self->_responseHandler;
  if (v34)
  {
    v34[2](v34, 0);
  }

  [(MPAsyncOperation *)self finish];
LABEL_21:
}

void __124__MPModelLibraryKeepLocalChangeRequestOperation__handlePersistentID_modelClass_keepLocal_keepLocalConstraints_mediaLibrary___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 == 1)
  {
    v7 = MEMORY[0x1E696AAE0];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __124__MPModelLibraryKeepLocalChangeRequestOperation__handlePersistentID_modelClass_keepLocal_keepLocalConstraints_mediaLibrary___block_invoke_3;
    v29[3] = &unk_1E767B0C0;
    v29[4] = *(a1 + 32);
    v8 = *(a1 + 56);
    v31 = 1;
    v32 = v8;
    v30 = v4;
    v9 = [v7 blockOperationWithBlock:v29];
    v10 = [*(a1 + 40) itemsQuery];
    v11 = [v10 copy];

    [v11 setIgnoreRestrictionsPredicates:1];
    [v11 setShouldIncludeNonLibraryEntities:0];
    [v11 setIgnoreSystemFilterPredicates:1];
    v12 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509A90 forProperty:@"keepLocal" comparisonType:100];
    v34[0] = v12;
    v13 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509AA8 forProperty:@"keepLocalConstraints" comparisonType:100];
    v34[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v15 = [(MPMediaCompoundPredicate *)MPMediaCompoundAnyPredicate predicateMatchingPredicates:v14];

    [v11 addFilterPredicate:v15];
    v16 = [v11 items];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v23 = v11;
      v24 = v5;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          v22 = objc_alloc_init(_MPModelLibraryKeepLocalChangeRequestUpdateItemOperation);
          [(_MPModelLibraryKeepLocalChangeRequestUpdateItemOperation *)v22 setMediaItem:v21];
          [(_MPModelLibraryKeepLocalChangeRequestUpdateItemOperation *)v22 setKeepLocal:0];
          [(_MPModelLibraryKeepLocalChangeRequestUpdateItemOperation *)v22 setKeepLocalConstraints:0];
          [v9 addDependency:v22];
          [*(*(a1 + 32) + 272) addOperation:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
      v11 = v23;
      v5 = v24;
    }

    [*(*(a1 + 32) + 272) addOperation:v9];
  }

  else
  {
    [*(a1 + 32) _handleKeepLocalUpdateStatus:v6 forLibraryIdentifier:*(a1 + 56) mediaType:4 completedWithError:v4];
  }
}

void __124__MPModelLibraryKeepLocalChangeRequestOperation__handlePersistentID_modelClass_keepLocal_keepLocalConstraints_mediaLibrary___block_invoke_26(uint64_t a1, uint64_t a2, void *a3)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 == 1)
  {
    v7 = MEMORY[0x1E696AAE0];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __124__MPModelLibraryKeepLocalChangeRequestOperation__handlePersistentID_modelClass_keepLocal_keepLocalConstraints_mediaLibrary___block_invoke_2_27;
    v29[3] = &unk_1E767B0C0;
    v29[4] = *(a1 + 32);
    v8 = *(a1 + 56);
    v31 = 1;
    v32 = v8;
    v30 = v4;
    v9 = [v7 blockOperationWithBlock:v29];
    v10 = [*(a1 + 40) itemsQuery];
    v11 = [v10 copy];

    [v11 setIgnoreRestrictionsPredicates:1];
    [v11 setShouldIncludeNonLibraryEntities:1];
    [v11 setIgnoreSystemFilterPredicates:1];
    v12 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509A90 forProperty:@"keepLocal" comparisonType:100];
    v34[0] = v12;
    v13 = [MPMediaPropertyPredicate predicateWithValue:&unk_1F1509AA8 forProperty:@"keepLocalConstraints" comparisonType:100];
    v34[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v15 = [(MPMediaCompoundPredicate *)MPMediaCompoundAnyPredicate predicateMatchingPredicates:v14];

    [v11 addFilterPredicate:v15];
    v16 = [v11 items];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v23 = v11;
      v24 = v5;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          v22 = objc_alloc_init(_MPModelLibraryKeepLocalChangeRequestUpdateItemOperation);
          [(_MPModelLibraryKeepLocalChangeRequestUpdateItemOperation *)v22 setMediaItem:v21];
          [(_MPModelLibraryKeepLocalChangeRequestUpdateItemOperation *)v22 setKeepLocal:0];
          [(_MPModelLibraryKeepLocalChangeRequestUpdateItemOperation *)v22 setKeepLocalConstraints:0];
          [v9 addDependency:v22];
          [*(*(a1 + 32) + 272) addOperation:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
      v11 = v23;
      v5 = v24;
    }

    [*(*(a1 + 32) + 272) addOperation:v9];
  }

  else
  {
    [*(a1 + 32) _handleKeepLocalUpdateStatus:v6 forLibraryIdentifier:*(a1 + 56) mediaType:1 completedWithError:v4];
  }
}

- (void)execute
{
  v30[1] = *MEMORY[0x1E69E9840];
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

  modelObject = [(MPModelLibraryKeepLocalChangeRequest *)self->_request modelObject];
  v8 = [(MPModelLibraryKeepLocalChangeRequest *)self->_request enableState]+ 1;
  if (v8 > 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1A2740290[v8];
  }

  constraints = [(MPModelLibraryKeepLocalChangeRequest *)self->_request constraints];
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v12 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:userIdentity];

  identifiers = [modelObject identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  if (persistentID)
  {
    [(MPModelLibraryKeepLocalChangeRequestOperation *)self _handlePersistentID:persistentID modelClass:objc_opt_class() keepLocal:v9 keepLocalConstraints:constraints mediaLibrary:v12];
  }

  else
  {
    userIdentity2 = [(MPAsyncOperation *)self userIdentity];
    v17 = [MPStoreLibraryPersonalizationRequest libraryViewWithUserIdentity:userIdentity2];

    v18 = objc_alloc_init(MPStoreLibraryMappingRequestOperation);
    [(MPStoreLibraryMappingRequestOperation *)v18 setLibraryView:v17];
    [(MPStoreLibraryMappingRequestOperation *)v18 setModelClass:objc_opt_class()];
    v30[0] = identifiers;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [(MPStoreLibraryMappingRequestOperation *)v18 setIdentifierSets:v19];

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __56__MPModelLibraryKeepLocalChangeRequestOperation_execute__block_invoke;
    v23 = &unk_1E767B058;
    v24 = identifiers;
    selfCopy = self;
    v26 = modelObject;
    v28 = v9;
    v29 = constraints;
    v27 = v12;
    [(MPStoreLibraryMappingRequestOperation *)v18 setResponseHandler:&v20];
    [(NSOperationQueue *)self->_operationQueue addOperation:v18, v20, v21, v22, v23];
  }
}

void __56__MPModelLibraryKeepLocalChangeRequestOperation_execute__block_invoke(void *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (!v13 || v5)
  {
    v10 = a1[5];
    v11 = v10[35];
    if (v11)
    {
      (*(v11 + 16))(v10[35], v5);
      v10 = a1[5];
    }

    [v10 finish];
  }

  else
  {
    v6 = [v13 libraryIdentifierSetForIdentifierSet:a1[4]];
    v7 = [v6 library];
    v8 = [v7 persistentID];

    v9 = a1[5];
    if (v8)
    {
      [v9 _handlePersistentID:v8 modelClass:objc_opt_class() keepLocal:a1[8] keepLocalConstraints:a1[9] mediaLibrary:a1[7]];
    }

    else
    {
      v12 = v9[35];
      if (v12)
      {
        (*(v12 + 16))(v12, 0);
        v9 = a1[5];
      }

      [v9 finish];
    }
  }
}

@end