@interface PHSearchQueryManager
+ (BOOL)_isValidQueryText:(id)a3;
- (PHSearchQuery)currentSearchQuery;
- (PHSearchQuery)currentSuggestionsQuery;
- (PHSearchQueryManager)initWithPhotoLibrary:(id)a3;
- (id)_searchQueriesFromSearchTexts:(id)a3 searchOptions:(id)a4 batchQueryID:(int)a5;
- (id)initForTestingWithPhotoLibrary:(id)a3;
- (int)performBatchSearch:(id)a3 searchOptions:(id)a4 resultsHandler:(id)a5;
- (int)performSearch:(id)a3 searchOptions:(id)a4 resultsHandler:(id)a5;
- (int)suggestionsForSearchQuery:(id)a3 rangeOfSuggestionText:(_NSRange)a4 searchQueryResult:(id)a5 suggestionsHandler:(id)a6;
- (int)suggestionsForSearchText:(id)a3 options:(id)a4 suggestionsHandler:(id)a5;
- (void)cancelQueryWithQueryId:(int)a3;
- (void)performSearch:(id)a3 resultsHandler:(id)a4;
- (void)preheatSearchWithCompletionBlock:(id)a3;
- (void)setCurrentSearchQuery:(id)a3;
- (void)setCurrentSuggestionsQuery:(id)a3;
@end

@implementation PHSearchQueryManager

- (PHSearchQuery)currentSearchQuery
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_currentSearchQuery;
  objc_sync_exit(v2);

  return v3;
}

- (void)performSearch:(id)a3 resultsHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHSearchQueryManager+SPI.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"searchText"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PHSearchQueryManager+SPI.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"resultsHandler"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = objc_alloc_init(PHSearchQueryOptions);
  [(PHSearchQueryOptions *)v10 setSuggestionLimit:4];
  [(PHSearchQueryOptions *)v10 setEnableQueryMatchDetails:1];
  [(PHSearchQueryOptions *)v10 setMaxRankedAssetSearchResults:10];
  [(PHSearchQueryOptions *)v10 setMaxRankedCollectionSearchResults:6];
  [(PHSearchQueryOptions *)v10 setEnableQueryMatchDetails:1];
  [(PHSearchQueryOptions *)v10 setEnableEmbeddingOnlyResultsInExactMatches:1];
  [(PHSearchQueryOptions *)v10 setSearchQueryResultTypes:3];
  v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v11 addIndex:7];
  [v11 addIndex:9];
  [v11 addIndex:1];
  [v11 addIndex:38];
  [v11 addIndex:5];
  [(PHSearchQueryOptions *)v10 setSubstringMatchedCategories:v11];
  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__PHSearchQueryManager_SPI__performSearch_resultsHandler___block_invoke;
  v16[3] = &unk_1E75A7538;
  v17 = v9;
  v13 = v9;
  [(PHSearchQueryManager *)self performSearch:v12 searchOptions:v10 resultsHandler:v16];
}

void __58__PHSearchQueryManager_SPI__performSearch_resultsHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v25 = a4;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v5;
  v8 = [v5 searchResults];
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v13 type];
        if ((v14 - 2) < 4)
        {
          v15 = [v13 uuid];
          [v7 addObject:v15];

LABEL_8:
          v16 = PLSearchBackendQueryGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = v13;
            _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Encountered result result with undefined type: %@", buf, 0xCu);
          }

          goto LABEL_13;
        }

        if (!v14)
        {
          goto LABEL_8;
        }

        if (v14 != 1)
        {
          continue;
        }

        v16 = [v13 uuid];
        [v6 addObject:v16];
LABEL_13:
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v10);
  }

  v17 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [v26 rankedAssetSearchResults];
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v27 + 1) + 8 * j) uuid];
        [v17 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  (*(*(a1 + 32) + 16))();
}

- (PHSearchQuery)currentSuggestionsQuery
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_currentSuggestionsQuery;
  objc_sync_exit(v2);

  return v3;
}

- (void)setCurrentSuggestionsQuery:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  currentSuggestionsQuery = obj->_currentSuggestionsQuery;
  obj->_currentSuggestionsQuery = v4;

  objc_sync_exit(obj);
}

- (void)setCurrentSearchQuery:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  currentSearchQuery = obj->_currentSearchQuery;
  obj->_currentSearchQuery = v4;

  objc_sync_exit(obj);
}

- (id)_searchQueriesFromSearchTexts:(id)a3 searchOptions:(id)a4 batchQueryID:(int)a5
{
  v5 = *&a5;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  if ([v8 count])
  {
    v12 = 0;
    *&v11 = 67109120;
    v20 = v11;
    do
    {
      v13 = [v8 objectAtIndexedSubscript:{v12, v20}];
      if ([v13 length])
      {
        v14 = [PHSearchQuery alloc];
        v15 = [(PHSearchQueryManager *)self photoLibrary];
        v16 = [(PHSearchQuery *)v14 initWithSearchText:v13 searchOptions:v9 photoLibrary:v15 queryIdentifier:++v12 batchIdentifier:v5];

        [v10 addObject:v16];
      }

      else
      {
        v17 = PLSearchBackendQueryGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = v20;
          v22 = v12;
          _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Found empty search text in performBatchSearch for query %d, will not construct query", buf, 8u);
        }

        ++v12;
      }
    }

    while ([v8 count] > v12);
  }

  v18 = [v10 copy];

  return v18;
}

void __53__PHSearchQueryManager_cancelQueriesForBatchQueryId___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 80);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v3 = [v1 objectForKeyedSubscript:v2];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        [v9 cancel];
        v10 = PLSearchBackendQueryGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if ([v9 batchIdentifier])
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(v9, "batchIdentifier"), objc_msgSend(v9, "queryIdentifier")];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(v9, "queryIdentifier"), v16];
          }
          v11 = ;
          *buf = 138543362;
          v23 = v11;
          _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelled batch queries.", buf, 0xCu);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v12 = *(*(a1 + 32) + 80);
  v13 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v12 setObject:0 forKeyedSubscript:v13];

  v14 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    *buf = 67109120;
    LODWORD(v23) = v15;
    _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "[Batch: %d] Cancelled batch queries.", buf, 8u);
  }
}

- (void)cancelQueryWithQueryId:(int)a3
{
  v3 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(PHSearchQueryManager *)self currentSearchQuery];
  v6 = [v5 queryIdentifier];

  if (v6 == v3)
  {
    v7 = [(PHSearchQueryManager *)self currentSearchQuery];
    [v7 cancel];

    v8 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v3];
      v10 = [(PHSearchQueryManager *)self currentSearchQuery];
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v11 = "%{public}@ Cancelled query: %@";
LABEL_7:
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
    }
  }

  else
  {
    v12 = [(PHSearchQueryManager *)self currentSuggestionsQuery];
    v13 = [v12 queryIdentifier];

    if (v13 != v3)
    {
      return;
    }

    v14 = [(PHSearchQueryManager *)self currentSuggestionsQuery];
    [v14 cancel];

    v8 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v3];
      v10 = [(PHSearchQueryManager *)self currentSuggestionsQuery];
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v11 = "%{public}@ Cancelled suggestions query: %@";
      goto LABEL_7;
    }
  }
}

- (int)suggestionsForSearchText:(id)a3 options:(id)a4 suggestionsHandler:(id)a5
{
  v50[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"PHSearchQueryManager.m" lineNumber:351 description:{@"Invalid parameter not satisfying: %@", @"suggestionsHandler"}];
  }

  v12 = [(PHSearchQueryManager *)self currentSuggestionsQuery];
  [v12 cancel];

  [(PHSearchQueryManager *)self setCurrentSuggestionsQueryId:[(PHSearchQueryManager *)self currentSuggestionsQueryId]+ 1];
  [v10 setWantsUnscopedSuggestions:1];
  v13 = [PHSearchQuery alloc];
  v14 = [(PHSearchQueryManager *)self photoLibrary];
  v15 = [(PHSearchQuery *)v13 initWithText:v9 suggestionOptions:v10 photoLibrary:v14 queryIdentifier:[(PHSearchQueryManager *)self currentSuggestionsQueryId]];

  [(PHSearchQueryManager *)self setCurrentSuggestionsQuery:v15];
  if (v15)
  {
    v16 = [v9 length];
    if (v10 && v16)
    {
      objc_initWeak(location, self);
      v17 = [(PHSearchQuery *)v15 suggestionQueryIdentifier];
      v18 = [v10 suggestionsHandlerQueue];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = MEMORY[0x1E69E96A0];
        v35 = MEMORY[0x1E69E96A0];
      }

      v36 = [(PHSearchQueryManager *)self queryQueue];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __76__PHSearchQueryManager_suggestionsForSearchText_options_suggestionsHandler___block_invoke;
      v40[3] = &unk_1E75A8180;
      objc_copyWeak(&v44, location);
      v45 = v17;
      v41 = v15;
      v43 = v11;
      v37 = v20;
      v42 = v37;
      [PHSearchQuery performSuggestionsSearch:v41 queryQueue:v36 suggestionsHandler:v40];

      v30 = [(PHSearchQueryManager *)self currentSuggestionsQueryId];
      objc_destroyWeak(&v44);

      objc_destroyWeak(location);
      goto LABEL_21;
    }

    if ([v9 length])
    {
      if (v10)
      {
LABEL_18:
        v34 = [[PHSearchSuggestionQueryResult alloc] initWithSearchQuery:v15];
        (*(v11 + 2))(v11, v34, 3, 0);
        v30 = [(PHSearchQueryManager *)self currentSuggestionsQueryId];

        goto LABEL_21;
      }

      v31 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", -[PHSearchQueryManager currentSuggestionsQueryId](self, "currentSuggestionsQueryId")];
        *location = 138543618;
        *&location[4] = v32;
        v47 = 2112;
        v48 = v9;
        _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_ERROR, "%{public}@ No options provided for suggestions query: %@, suggestions will not be generated", location, 0x16u);
      }
    }

    else
    {
      v31 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", -[PHSearchQueryManager currentSuggestionsQueryId](self, "currentSuggestionsQueryId")];
        *location = 138543362;
        *&location[4] = v33;
        _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ No search text provided for suggestions query, suggestions will not be generated", location, 0xCu);
      }
    }

    goto LABEL_18;
  }

  v21 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", -[PHSearchQueryManager currentSuggestionsQueryId](self, "currentSuggestionsQueryId")];
    *location = 138543362;
    *&location[4] = v22;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Unable to initialize PHSearchQuery, aborting suggestions request", location, 0xCu);
  }

  v23 = MEMORY[0x1E696ABC0];
  v49 = *MEMORY[0x1E696A278];
  v24 = MEMORY[0x1E696AEC0];
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", -[PHSearchQueryManager currentSuggestionsQueryId](self, "currentSuggestionsQueryId")];
  v26 = [v24 stringWithFormat:@"Unable to initialize PHSearchQuery: %@, aborting suggestions request", v25];
  v50[0] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v28 = [v23 errorWithDomain:@"PHPhotosErrorDomain" code:6101 userInfo:v27];

  v29 = [[PHSearchSuggestionQueryResult alloc] initWithSearchQuery:0];
  (*(v11 + 2))(v11, v29, 3, v28);

  v30 = [(PHSearchQueryManager *)self currentSuggestionsQueryId];
LABEL_21:

  return v30;
}

void __76__PHSearchQueryManager_suggestionsForSearchText_options_suggestionsHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = [v7 searchQuery];
  v11 = [WeakRetained currentSuggestionsQuery];
  v12 = [v10 isEqual:v11] ^ 1;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PHSearchQueryManager_suggestionsForSearchText_options_suggestionsHandler___block_invoke_2;
  aBlock[3] = &unk_1E75A8158;
  v26 = v12;
  v25 = *(a1 + 64);
  v13 = v7;
  v20 = v13;
  v21 = *(a1 + 32);
  v23 = *(a1 + 48);
  v24 = a3;
  v14 = v8;
  v22 = v14;
  v15 = _Block_copy(aBlock);
  if ([WeakRetained isTestingConfiguration])
  {
    v15[2](v15);
  }

  else
  {
    v16 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PHSearchQueryManager_suggestionsForSearchText_options_suggestionsHandler___block_invoke_118;
    block[3] = &unk_1E75AADE8;
    v18 = v15;
    dispatch_async(v16, block);
  }
}

void __76__PHSearchQueryManager_suggestionsForSearchText_options_suggestionsHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 76);
  v3 = PLSearchBackendQueryGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 72)];
      v6 = [*(a1 + 32) searchQuery];
      v7 = [v6 searchText];
      *buf = 138543618;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Suggestion query has changed and was cancelled: %@", buf, 0x16u);
    }

    v8 = [[PHSearchSuggestionQueryResult alloc] initWithSearchQuery:*(a1 + 40)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (v4)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 72)];
      v10 = *(a1 + 32);
      *buf = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Suggestion Query completed with result: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (int)suggestionsForSearchQuery:(id)a3 rangeOfSuggestionText:(_NSRange)a4 searchQueryResult:(id)a5 suggestionsHandler:(id)a6
{
  v80 = *MEMORY[0x1E69E9840];
  v62 = a3;
  v10 = a5;
  v11 = a6;
  if (!v11)
  {
    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"PHSearchQueryManager.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"suggestionsHandler"}];
  }

  v12 = [(PHSearchQueryManager *)self currentSuggestionsQuery];
  [v12 cancel];

  [(PHSearchQueryManager *)self setCurrentSuggestionsQueryId:[(PHSearchQueryManager *)self currentSuggestionsQueryId]+ 1];
  v13 = [v10 searchQuery];
  v14 = [v13 queryIdentifier];

  v15 = [v10 searchQuery];
  v16 = [v15 batchIdentifier];

  v17 = [v62 length];
  if (v10 && v17)
  {
    v18 = [PHSearchQueryAnnotation selectedSuggestionsFromQueryString:v62 inRange:a4.location, a4.length];
    if ([v18 count] == 1)
    {
      v19 = [v10 searchQuery];
      v20 = [v19 searchOptions];
      v21 = [v20 copy];

      v22 = objc_alloc_init(PHSearchSuggestionOptions);
      [(PHSearchSuggestionOptions *)v22 setLimitSuggestionsToExactTextMatches:1];
      [(PHSearchSuggestionOptions *)v22 setSuggestionLimit:[(PHSearchSuggestionQueryResult *)v21 suggestionLimit]];
      [(PHSearchSuggestionOptions *)v22 setSuggestionResultTypes:[(PHSearchSuggestionQueryResult *)v21 searchQueryResultTypes]];
      v23 = [(PHSearchSuggestionQueryResult *)v21 resultsHandlerQueue];
      [(PHSearchSuggestionOptions *)v22 setSuggestionsHandlerQueue:v23];

      [(PHSearchSuggestionOptions *)v22 setWantsUnscopedSuggestions:0];
      v59 = [v18 firstObject];
      v24 = objc_alloc(MEMORY[0x1E696AAB0]);
      v25 = [v59 text];
      v60 = [v24 initWithString:v25];

      v26 = [PHSearchQuery alloc];
      v27 = [(PHSearchQueryManager *)self photoLibrary];
      v28 = [(PHSearchQuery *)v26 initWithText:v60 suggestionOptions:v22 photoLibrary:v27 queryIdentifier:[(PHSearchQueryManager *)self currentSuggestionsQueryId]];

      v58 = v28;
      if (v28)
      {
        [(PHSearchQueryManager *)self setCurrentSuggestionsQuery:v28];
        objc_initWeak(location, self);
        v29 = PLPhotosSearchGetLog();
        v30 = os_signpost_id_generate(v29);

        v31 = v29;
        v32 = v31;
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19C86F000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "PLSearchBackendSuggestionsQuery", byte_19CB567AE, buf, 2u);
        }

        v57 = v32;

        v33 = [(PHSearchQueryManager *)self queryQueue];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3254779904;
        v63[2] = __109__PHSearchQueryManager_suggestionsForSearchQuery_rangeOfSuggestionText_searchQueryResult_suggestionsHandler___block_invoke;
        v63[3] = &unk_1F0FC42E8;
        v68 = v57;
        v69 = v30;
        v34 = v68;
        v63[4] = self;
        v70 = v14;
        objc_copyWeak(&v67, location);
        v71 = v16;
        v64 = v60;
        v66 = v11;
        v65 = v22;
        [PHSearchQuery suggestionsForSearchQuery:v58 searchQueryResult:v10 rangeOfSuggestionText:a4.location queryQueue:a4.length suggestionsHandler:v33, v63];

        v35 = [(PHSearchQueryManager *)self currentSuggestionsQueryId];
        objc_destroyWeak(&v67);

        objc_destroyWeak(location);
      }

      else
      {
        v42 = PLSearchBackendQueryGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", -[PHSearchQueryManager currentSuggestionsQueryId](self, "currentSuggestionsQueryId")];
          *location = 138543362;
          *&location[4] = v43;
          _os_log_impl(&dword_19C86F000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Unable to initialize PHSearchQuery, aborting suggestions request", location, 0xCu);
        }

        v44 = MEMORY[0x1E696ABC0];
        v73 = *MEMORY[0x1E696A278];
        v45 = MEMORY[0x1E696AEC0];
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", -[PHSearchQueryManager currentSuggestionsQueryId](self, "currentSuggestionsQueryId")];
        v47 = [v45 stringWithFormat:@"Unable to initialize PHSearchQuery: %@, aborting suggestions request", v46];
        v74 = v47;
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v49 = [v44 errorWithDomain:@"PHPhotosErrorDomain" code:6101 userInfo:v48];

        v50 = [[PHSearchSuggestionQueryResult alloc] initWithSearchQuery:0];
        (*(v11 + 2))(v11, v50, 3, v49);

        v35 = [(PHSearchQueryManager *)self currentSuggestionsQueryId];
      }
    }

    else
    {
      v37 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        if (v16)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v16, v14];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v14];
        }
        v51 = ;
        v52 = [v18 count];
        v53 = @"contained multiple";
        *location = 138543874;
        *&location[4] = v51;
        if (!v52)
        {
          v53 = @"did not contain any";
        }

        v76 = 2114;
        v77 = v53;
        v78 = 2112;
        v79 = v62;
        _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_ERROR, "%{public}@ Unable to generate suggestions because the provided query string %{public}@ suggestions: %@", location, 0x20u);
      }

      v54 = [PHSearchSuggestionQueryResult alloc];
      v21 = [(PHSearchQueryManager *)self currentSuggestionsQuery];
      v22 = [(PHSearchSuggestionQueryResult *)v54 initWithSearchQuery:v21];
      (*(v11 + 2))(v11, v22, 3, 0);
      v35 = 0;
    }
  }

  else
  {
    v36 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      if (v16)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v16, v14];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v14];
      }
      v38 = ;
      v39 = [v62 length];
      v40 = @"search query result";
      if (!v39)
      {
        v40 = @"search text";
      }

      *location = 138543618;
      *&location[4] = v38;
      v76 = 2114;
      v77 = v40;
      _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_ERROR, "%{public}@ Unable to generate suggestions for previous query without %{public}@", location, 0x16u);
    }

    v41 = [PHSearchSuggestionQueryResult alloc];
    v18 = [(PHSearchQueryManager *)self currentSuggestionsQuery];
    v21 = [(PHSearchSuggestionQueryResult *)v41 initWithSearchQuery:v18];
    (*(v11 + 2))(v11, v21, 3, 0);
    v35 = 0;
  }

  return v35;
}

void __109__PHSearchQueryManager_suggestionsForSearchQuery_rangeOfSuggestionText_searchQueryResult_suggestionsHandler___block_invoke(int32x2_t *a1, void *a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = *&a1[9];
  v10 = v9;
  v11 = a1[10];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = [*&a1[4] currentSuggestionsQueryId];
    v13 = a1[11].i32[0];
    v14 = [v7 searchSuggestions];
    *buf = 67109888;
    v38 = v12;
    v39 = 1024;
    v40 = v13;
    v41 = 1024;
    v42 = 0;
    v43 = 2048;
    v44 = [v14 count];
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PLSearchBackendSuggestionsQuery", "Suggestion Query: %d, for related Query: %d Batch: %d, Suggestions: %tu", buf, 0x1Eu);
  }

  WeakRetained = objc_loadWeakRetained(&a1[8]);
  v16 = [v7 searchQuery];
  v17 = [WeakRetained currentSuggestionsQuery];
  v18 = [v16 isEqual:v17] ^ 1;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __109__PHSearchQueryManager_suggestionsForSearchQuery_rangeOfSuggestionText_searchQueryResult_suggestionsHandler___block_invoke_114;
  aBlock[3] = &unk_1E75A8130;
  v36 = v18;
  v19 = a1[5];
  aBlock[4] = a1[4];
  v35 = vrev64_s32(a1[11]);
  v30 = v19;
  v33 = *&a1[7];
  v20 = v7;
  v31 = v20;
  v34 = a3;
  v21 = v8;
  v32 = v21;
  v22 = _Block_copy(aBlock);
  if ([WeakRetained isTestingConfiguration])
  {
    v22[2](v22);
  }

  else
  {
    v23 = [*&a1[6] suggestionsHandlerQueue];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = MEMORY[0x1E69E96A0];
      v26 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__PHSearchQueryManager_suggestionsForSearchQuery_rangeOfSuggestionText_searchQueryResult_suggestionsHandler___block_invoke_115;
    block[3] = &unk_1E75AADE8;
    v28 = v22;
    dispatch_async(v25, block);
  }
}

uint64_t __109__PHSearchQueryManager_suggestionsForSearchQuery_rangeOfSuggestionText_searchQueryResult_suggestionsHandler___block_invoke_114(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  v3 = PLSearchBackendQueryGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) currentSuggestionsQueryId];
      if (*(a1 + 80))
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 80), *(a1 + 84)];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 84), v11];
      }
      v7 = ;
      v8 = *(a1 + 40);
      *buf = 67109634;
      v13 = v5;
      v14 = 2114;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "Suggestions query: %d for related query: %{public}@ has changed and was cancelled: %@", buf, 0x1Cu);
LABEL_12:
    }
  }

  else if (v4)
  {
    v6 = [*(a1 + 32) currentSuggestionsQueryId];
    if (*(a1 + 80))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 80), *(a1 + 84)];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 84), v11];
    }
    v7 = ;
    v9 = [*(a1 + 48) searchSuggestions];
    *buf = 67109634;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "Completed suggestions query: %d for related query: %{public}@ with suggestions: %@", buf, 0x1Cu);

    goto LABEL_12;
  }

  return (*(*(a1 + 64) + 16))();
}

- (int)performBatchSearch:(id)a3 searchOptions:(id)a4 resultsHandler:(id)a5
{
  v95 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v49 = a4;
  v10 = a5;
  v42 = v9;
  if ([v9 count])
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PHSearchQueryManager.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"searchTexts.count > 0"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v41 = [MEMORY[0x1E696AAA8] currentHandler];
  [v41 handleFailureInMethod:a2 object:self file:@"PHSearchQueryManager.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"resultsHandler"}];

LABEL_3:
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v76 = MEMORY[0x1E69E9820];
  v77 = 3221225472;
  v78 = __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke;
  v79 = &unk_1E75AADC0;
  v80 = self;
  v81 = &v82;
  PLRunWithUnfairLock();
  v11 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(v83 + 6);
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "[Batch: %d] ----- BEGIN BATCH SEARCH -----", buf, 8u);
  }

  v13 = PLPhotosSearchGetLog();
  spid = os_signpost_id_generate(v13);

  v14 = v13;
  v15 = v14;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PLSearchBackendBatchQuery", byte_19CB567AE, buf, 2u);
  }

  v16 = [(PHSearchQueryManager *)self _searchQueriesFromSearchTexts:v42 searchOptions:v49 batchQueryID:*(v83 + 6)];
  v47 = [v16 count];
  *buf = 0;
  v92 = buf;
  v93 = 0x2020000000;
  v94 = 0;
  v69 = MEMORY[0x1E69E9820];
  v70 = 3221225472;
  v71 = __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke_81;
  v72 = &unk_1E75AA3F8;
  v73 = self;
  v75 = &v82;
  v74 = v16;
  PLRunWithUnfairLock();
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v17 = v74;
  v18 = [v17 countByEnumeratingWithState:&v65 objects:v90 count:16];
  if (v18)
  {
    v52 = *v66;
    v45 = v17;
    v46 = v15;
    do
    {
      v53 = v18;
      for (i = 0; i != v53; ++i)
      {
        if (*v66 != v52)
        {
          objc_enumerationMutation(v17);
        }

        v20 = *(*(&v65 + 1) + 8 * i);
        v21 = [v20 queryIdentifier];
        v22 = PLSearchBackendQueryGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v10;
          v24 = *(v83 + 6);
          if (v24)
          {
            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(v83 + 6), v21];
            v51 = v25;
          }

          else
          {
            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v21];
            v50 = v25;
          }

          v26 = [v20 searchText];
          v27 = [v26 string];
          *v86 = 138543618;
          v87 = v25;
          v88 = 2112;
          v89 = v27;
          _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Begin query: %@", v86, 0x16u);

          v10 = v23;
          v17 = v45;
          v15 = v46;

          v28 = v51;
          if (!v24)
          {
            v28 = v50;
          }
        }

        objc_initWeak(&location, self);
        v29 = [v20 searchText];
        v30 = [v29 length] == 0;

        if (v30)
        {
          v32 = PLSearchBackendQueryGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *(v83 + 6);
            if (v33)
            {
              v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(v83 + 6), v21];
              v35 = v34;
              v36 = v44;
            }

            else
            {
              v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v21];
              v36 = v34;
              v35 = v43;
            }

            *v86 = 138543362;
            v87 = v34;
            _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Encountered empty query, moving on to next query.", v86, 0xCu);
            v43 = v35;
            v44 = v36;
            if (v33)
            {
              v37 = v35;
            }

            else
            {
              v37 = v36;
            }
          }

          ++*(v92 + 3);
        }

        else
        {
          v31 = [(PHSearchQueryManager *)self batchQueryQueue];
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3254779904;
          v54[2] = __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke_86;
          v54[3] = &unk_1F0FC42B0;
          v59 = &v82;
          v63 = v21;
          v58 = buf;
          v54[4] = v20;
          objc_copyWeak(v60, &location);
          v60[1] = v47;
          v54[5] = self;
          v61 = v15;
          v62 = spid;
          v55 = v17;
          v57 = v10;
          v56 = v49;
          [PHSearchQuery performSearch:v20 queryQueue:v31 resultsHandler:v54];

          objc_destroyWeak(v60);
        }

        objc_destroyWeak(&location);
      }

      v18 = [v17 countByEnumeratingWithState:&v65 objects:v90 count:16];
    }

    while (v18);
  }

  v38 = *(v83 + 6);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v82, 8);
  return v38;
}

void __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke_81(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 80);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1[6] + 8) + 24)];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

void __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke_86(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  ++*(*(*(a1 + 72) + 8) + 24);
  v9 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 80) + 8) + 24))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(*(*(a1 + 80) + 8) + 24), *(a1 + 120)];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 120), v35];
    }
    v10 = ;
    v11 = [*(a1 + 32) searchText];
    v12 = [v11 string];
    *buf = 138543618;
    *v52 = v10;
    *&v52[8] = 2112;
    *&v52[10] = v12;
    _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed query: %@.", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v14 = *(*(*(a1 + 72) + 8) + 24);
  v15 = *(a1 + 96);
  v16 = v14 == v15;
  if (v14 == v15)
  {
    v17 = *(a1 + 40);
    v45 = MEMORY[0x1E69E9820];
    v46 = 3221225472;
    v47 = __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke_87;
    v48 = &unk_1E75AADC0;
    v18 = *(a1 + 80);
    v49 = v17;
    v50 = v18;
    PLRunWithUnfairLock();
    v19 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(*(a1 + 80) + 8) + 24);
      *buf = 67109120;
      *v52 = v20;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEFAULT, "[Batch: %d] ----- COMPLETED BATCH SEARCH -----", buf, 8u);
    }

    v21 = *(a1 + 104);
    v22 = v21;
    v23 = *(a1 + 112);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = *(*(*(a1 + 80) + 8) + 24);
      v25 = [*(a1 + 48) count];
      *buf = 67109376;
      *v52 = v24;
      *&v52[4] = 2048;
      *&v52[6] = v25;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLSearchBackendBatchQuery", "Batch: %d, Queries: %tu", buf, 0x12u);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke_88;
  aBlock[3] = &unk_1E75A8108;
  v26 = v7;
  v39 = v26;
  v27 = *(a1 + 64);
  v28 = *(a1 + 32);
  v42 = v27;
  v43 = a3;
  v40 = v28;
  v44 = v16;
  v29 = v8;
  v41 = v29;
  v30 = _Block_copy(aBlock);
  if ([WeakRetained isTestingConfiguration])
  {
    v30[2](v30);
  }

  else
  {
    v31 = [*(a1 + 56) resultsHandlerQueue];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = MEMORY[0x1E69E96A0];
      v34 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke_2;
    block[3] = &unk_1E75AADE8;
    v37 = v30;
    dispatch_async(v33, block);
  }
}

void __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke_87(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 40) + 8) + 24)];
  [v1 setObject:0 forKeyedSubscript:v2];
}

void __72__PHSearchQueryManager_performBatchSearch_searchOptions_resultsHandler___block_invoke_88(uint64_t a1)
{
  v2 = [*(a1 + 32) searchQuery];
  v3 = [v2 isCancelled];

  v4 = *(a1 + 56);
  if (v3)
  {
    v11 = [[PHSearchQueryResult alloc] initWithSearchQuery:*(a1 + 40)];
    (*(v4 + 16))(v4, v11, 2, 0, 0);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v8 = *(a1 + 48);
    v9 = *(v4 + 16);
    v10 = *(a1 + 56);

    v9(v10, v5, v6, v7, v8);
  }
}

- (int)performSearch:(id)a3 searchOptions:(id)a4 resultsHandler:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v35 = a4;
  v10 = a5;
  if (!v9)
  {
    v31 = v10;
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PHSearchQueryManager.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"searchText"}];

    v10 = v31;
  }

  v34 = v10;
  if (!v10)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PHSearchQueryManager.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"resultsHandler"}];
  }

  v11 = PLPhotosSearchGetLog();
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLSearchBackendQuery", byte_19CB567AE, buf, 2u);
  }

  v15 = [(PHSearchQueryManager *)self currentSearchQuery];
  [v15 cancel];

  [(PHSearchQueryManager *)self setCurrentQueryId:[(PHSearchQueryManager *)self currentQueryId]+ 1];
  v16 = [PHSearchQuery alloc];
  v17 = [(PHSearchQueryManager *)self photoLibrary];
  v18 = [(PHSearchQuery *)v16 initWithSearchText:v9 searchOptions:v35 photoLibrary:v17 queryIdentifier:[(PHSearchQueryManager *)self currentQueryId] batchIdentifier:0];

  [(PHSearchQueryManager *)self setCurrentSearchQuery:v18];
  v19 = [(PHSearchQuery *)v18 queryIdentifier];
  v20 = [v35 resultsHandlerQueue];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = MEMORY[0x1E69E96A0];
    v23 = MEMORY[0x1E69E96A0];
  }

  if ([objc_opt_class() _isValidQueryText:v9])
  {
    v24 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v19];
      *buf = 138543362;
      v47 = v25;
      _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ ----- BEGIN SEARCH -----", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v26 = [(PHSearchQueryManager *)self queryQueue];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3254779904;
    v36[2] = __67__PHSearchQueryManager_performSearch_searchOptions_resultsHandler___block_invoke_73;
    v36[3] = &unk_1F0FC4278;
    objc_copyWeak(&v39, buf);
    v40 = v14;
    v41 = v12;
    v42 = v19;
    v38 = v34;
    v37 = v22;
    [PHSearchQuery performSearch:v18 queryQueue:v26 resultsHandler:v36];

    v27 = [(PHSearchQueryManager *)self currentQueryId];
    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

  else
  {
    v28 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v19];
      *buf = 138543618;
      v47 = v29;
      v48 = 2112;
      v49 = v9;
      _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Query is invalid, returning early: %@.", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PHSearchQueryManager_performSearch_searchOptions_resultsHandler___block_invoke;
    block[3] = &unk_1E75AA820;
    v45 = v34;
    v44 = v18;
    dispatch_async(v22, block);
    v27 = [(PHSearchQueryManager *)self currentQueryId];
  }

  return v27;
}

void __67__PHSearchQueryManager_performSearch_searchOptions_resultsHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[PHSearchQueryResult alloc] initWithSearchQuery:*(a1 + 32)];
  (*(v1 + 16))(v1, v2, 1, 0);
}

void __67__PHSearchQueryManager_performSearch_searchOptions_resultsHandler___block_invoke_73(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [v7 searchQuery];
  v11 = [WeakRetained currentSearchQuery];
  v12 = [v10 isEqual:v11] ^ 1;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3254779904;
  aBlock[2] = __67__PHSearchQueryManager_performSearch_searchOptions_resultsHandler___block_invoke_2;
  aBlock[3] = &unk_1F0FC4240;
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v25 = v13;
  v26 = v14;
  v28 = *(a1 + 72);
  v15 = v7;
  v22 = v15;
  v29 = v12;
  v24 = *(a1 + 40);
  v16 = v8;
  v23 = v16;
  v27 = a3;
  v17 = _Block_copy(aBlock);
  if ([WeakRetained isTestingConfiguration])
  {
    v17[2](v17);
  }

  else
  {
    v18 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__PHSearchQueryManager_performSearch_searchOptions_resultsHandler___block_invoke_74;
    v19[3] = &unk_1E75AADE8;
    v20 = v17;
    dispatch_async(v18, v19);
  }
}

void __67__PHSearchQueryManager_performSearch_searchOptions_resultsHandler___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 80);
    v27 = [*(a1 + 32) searchResults];
    v6 = [v27 count];
    v7 = [*(a1 + 32) rankedAssetSearchResults];
    v8 = [v7 count];
    v9 = [*(a1 + 32) queryMatchDetails];
    v10 = [v9 queryEmbedding];
    v11 = @"YES";
    if (!v10)
    {
      v11 = @"NO";
    }

    v12 = v11;
    *buf = 67110146;
    *v29 = v5;
    *&v29[4] = 1024;
    *&v29[6] = 0;
    *v30 = 2048;
    *&v30[2] = v6;
    v31 = 2048;
    v32 = v8;
    v33 = 2112;
    v34 = v12;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PLSearchBackendQuery", "Query: %d, Batch: %d, PHSearchResults: %tu, Top Assets: %tu, Query Embedding: %@", buf, 0x2Cu);
  }

  v13 = *(a1 + 84);
  v14 = PLSearchBackendQueryGetLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13 == 1)
  {
    if (v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 80)];
      v17 = [*(a1 + 32) searchQuery];
      v18 = [v17 searchText];
      *buf = 138543618;
      *v29 = v16;
      *&v29[8] = 2112;
      *v30 = v18;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Query has changed and was cancelled: %@", buf, 0x16u);
    }

    v19 = *(a1 + 48);
    v20 = [PHSearchQueryResult alloc];
    v21 = [*(a1 + 32) searchQuery];
    v22 = [(PHSearchQueryResult *)v20 initWithSearchQuery:v21];
    (*(v19 + 16))(v19, v22, 2, *(a1 + 40));
  }

  else
  {
    if (v15)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 80)];
      v24 = *(a1 + 32);
      *buf = 138543618;
      *v29 = v23;
      *&v29[8] = 2112;
      *v30 = v24;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Query result: %@", buf, 0x16u);
    }

    v25 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 80)];
      *buf = 138543362;
      *v29 = v26;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ ----- COMPLETED SEARCH -----", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)preheatSearchWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PHSearchQueryManager *)self photoLibrary];
  v6 = [(PHSearchQueryManager *)self queryQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PHSearchQueryManager_preheatSearchWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E75AA820;
  v11 = v5;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  v9 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v10);
  dispatch_async(v6, v9);
}

uint64_t __57__PHSearchQueryManager_preheatSearchWithCompletionBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) wellKnownPhotoLibraryIdentifier];
    v4 = [*(a1 + 32) photoLibraryURL];
    v11 = 134349314;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_19C86F000, v2, OS_LOG_TYPE_DEFAULT, "Preheat Search for PhotoLibrary identifier %{public}td, url: %@", &v11, 0x16u);
  }

  if ([MEMORY[0x1E69BE810] spotlightPrivateIndexEnabled])
  {
    v5 = [*(a1 + 32) pathManager];
    v6 = [v5 spotlightSearchIndexPath];

    v7 = MEMORY[0x1E6964E40];
    v8 = PLSearchFileProtectionTypes();
    [v7 prepareProtectionClasses:v8 path:v6];
  }

  else
  {
    v9 = MEMORY[0x1E6964EC8];
    v6 = PLSearchFileProtectionTypes();
    [v9 prepareProtectionClasses:v6];
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)initForTestingWithPhotoLibrary:(id)a3
{
  v3 = [(PHSearchQueryManager *)self initWithPhotoLibrary:a3];
  [(PHSearchQueryManager *)v3 setIsTestingConfiguration:1];
  return v3;
}

- (PHSearchQueryManager)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PHSearchQueryManager.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v21.receiver = self;
  v21.super_class = PHSearchQueryManager;
  v7 = [(PHSearchQueryManager *)&v21 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryLock_batchQueriesInProgress = v8->_queryLock_batchQueriesInProgress;
    v8->_queryLock_batchQueriesInProgress = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);

    v13 = dispatch_queue_create("com.apple.photos.search.query_execution", v12);
    queryQueue = v8->_queryQueue;
    v8->_queryQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);

    v17 = dispatch_queue_create("com.apple.photos.search.query_execution", v16);
    batchQueryQueue = v8->_batchQueryQueue;
    v8->_batchQueryQueue = v17;

    v8->_queryLock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

+ (BOOL)_isValidQueryText:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 string];
    v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    v7 = [v6 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end