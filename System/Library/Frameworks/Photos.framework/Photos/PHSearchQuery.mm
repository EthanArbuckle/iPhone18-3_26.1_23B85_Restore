@interface PHSearchQuery
+ (id)_attributeKeyForPropertyKey:(id)key;
+ (id)_fetchAttributesForSortDescriptors:(id)descriptors;
+ (id)_spotlightQueryContextWithSearchOptions:(id)options;
+ (unint64_t)_searchResultTypesFromSearchQueryResultTypes:(unint64_t)types;
+ (void)_triggerQueryTimeoutTapToRadarForQuery:(id)query;
+ (void)performSearch:(id)search queryQueue:(id)queue resultsHandler:(id)handler;
+ (void)performSuggestionsSearch:(id)search queryQueue:(id)queue suggestionsHandler:(id)handler;
+ (void)suggestionsForSearchQuery:(id)query searchQueryResult:(id)result rangeOfSuggestionText:(_NSRange)text queryQueue:(id)queue suggestionsHandler:(id)handler;
- (BOOL)isCancelled;
- (BOOL)isEqual:(id)equal;
- (PHSearchQuery)initWithSearchText:(id)text searchOptions:(id)options photoLibrary:(id)library queryIdentifier:(int)identifier batchIdentifier:(int)batchIdentifier;
- (PHSearchQuery)initWithText:(id)text suggestionOptions:(id)options photoLibrary:(id)library queryIdentifier:(int)identifier;
- (id)_effectiveScopedUUIDs;
- (id)_executePhotosEntityStoreSearchWithAssetUUIDs:(id)ds collectionUUIDs:(id)iDs annotatedQueryString:(id)string rangeOfSuggestionText:(_NSRange)text;
- (id)description;
- (id)jsonDictionary;
- (id)redactedJSONDictionary;
- (void)_executeSearchWithResultsHandler:(id)handler;
- (void)_executeSpotlightSearchWithResultsHandlerV2:(id)v2;
- (void)cancel;
- (void)setIsCancelled:(BOOL)cancelled;
@end

@implementation PHSearchQuery

- (id)redactedJSONDictionary
{
  v32[8] = *MEMORY[0x1E69E9840];
  v25 = objc_alloc(MEMORY[0x1E695DF90]);
  v31[0] = @"searchText";
  searchText = [(PHSearchQuery *)self searchText];
  string = [searchText string];
  null = [string description];
  v28 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v32[0] = null;
  v31[1] = @"searchText_photosAttributedString";
  searchText2 = [(PHSearchQuery *)self searchText];
  v26 = [PHSearchQueryAnnotation annotatedQueryStringByFilteringToPHSearchQueryAttributes:?];
  null2 = [v26 description];
  v5 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v32[1] = null2;
  v31[2] = @"queryIdentifier";
  type = [(PHSearchQuery *)self type];
  v7 = MEMORY[0x1E696AD98];
  if (type)
  {
    suggestionQueryIdentifier = [(PHSearchQuery *)self suggestionQueryIdentifier];
  }

  else
  {
    suggestionQueryIdentifier = [(PHSearchQuery *)self queryIdentifier];
  }

  v24 = [v7 numberWithInt:suggestionQueryIdentifier];
  v32[2] = v24;
  v31[3] = @"batchIdentifier";
  v23 = [MEMORY[0x1E696AD98] numberWithInt:{-[PHSearchQuery batchIdentifier](self, "batchIdentifier")}];
  v32[3] = v23;
  v31[4] = @"isCancelled";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQuery isCancelled](self, "isCancelled")}];
  v32[4] = v22;
  v31[5] = @"isFeaturedContentAllowed";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:PLIsFeaturedContentAllowed()];
  v32[5] = v9;
  v31[6] = @"spotlightQueryString";
  queryStringSentToSpotlight = [(PHSearchQuery *)self queryStringSentToSpotlight];
  v11 = [queryStringSentToSpotlight description];
  null3 = v11;
  if (!v11)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = null3;
  v31[7] = @"spotlightFetchAttributes";
  spotlightQueryContext = [(PHSearchQuery *)self spotlightQueryContext];
  fetchAttributes = [spotlightQueryContext fetchAttributes];
  null4 = fetchAttributes;
  if (!fetchAttributes)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = null4;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:8];
  v17 = [v25 initWithDictionary:v16];

  if (!fetchAttributes)
  {
  }

  if (!v11)
  {
  }

  if (!v5)
  {
  }

  if (!v28)
  {
  }

  v18 = [v17 copy];

  return v18;
}

- (id)jsonDictionary
{
  v35[10] = *MEMORY[0x1E69E9840];
  v29 = objc_alloc(MEMORY[0x1E695DF90]);
  v34[0] = @"type";
  type = [(PHSearchQuery *)self type];
  v4 = @"Suggestion";
  if (!type)
  {
    v4 = @"Retrieval";
  }

  v35[0] = v4;
  v34[1] = @"searchOptions";
  if ([(PHSearchQuery *)self type])
  {
    [(PHSearchQuery *)self suggestionOptions];
  }

  else
  {
    [(PHSearchQuery *)self searchOptions];
  }
  v33 = ;
  jsonDictionary = [v33 jsonDictionary];
  v35[1] = jsonDictionary;
  v34[2] = @"searchText";
  searchText = [(PHSearchQuery *)self searchText];
  null = [searchText description];
  v30 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v35[2] = null;
  v34[3] = @"searchText_photosAttributedString";
  searchText2 = [(PHSearchQuery *)self searchText];
  v27 = [PHSearchQueryAnnotation annotatedQueryStringByFilteringToPHSearchQueryAttributes:?];
  null2 = [v27 description];
  v7 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v35[3] = null2;
  v34[4] = @"queryIdentifier";
  type2 = [(PHSearchQuery *)self type];
  v9 = MEMORY[0x1E696AD98];
  if (type2)
  {
    suggestionQueryIdentifier = [(PHSearchQuery *)self suggestionQueryIdentifier];
  }

  else
  {
    suggestionQueryIdentifier = [(PHSearchQuery *)self queryIdentifier];
  }

  v26 = [v9 numberWithInt:suggestionQueryIdentifier];
  v35[4] = v26;
  v34[5] = @"batchIdentifier";
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[PHSearchQuery batchIdentifier](self, "batchIdentifier")}];
  v35[5] = v25;
  v34[6] = @"isCancelled";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQuery isCancelled](self, "isCancelled")}];
  v35[6] = v24;
  v34[7] = @"isFeaturedContentAllowed";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:PLIsFeaturedContentAllowed()];
  v35[7] = v11;
  v34[8] = @"spotlightQueryString";
  queryStringSentToSpotlight = [(PHSearchQuery *)self queryStringSentToSpotlight];
  v13 = [queryStringSentToSpotlight description];
  null3 = v13;
  if (!v13)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = null3;
  v34[9] = @"spotlightFetchAttributes";
  spotlightQueryContext = [(PHSearchQuery *)self spotlightQueryContext];
  fetchAttributes = [spotlightQueryContext fetchAttributes];
  null4 = fetchAttributes;
  if (!fetchAttributes)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v35[9] = null4;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:10];
  v19 = [v29 initWithDictionary:v18];

  if (!fetchAttributes)
  {
  }

  if (!v13)
  {
  }

  if (!v7)
  {
  }

  if (!v30)
  {
  }

  v20 = [v19 copy];

  return v20;
}

- (id)description
{
  if ([(PHSearchQuery *)self type])
  {
    if ([(PHSearchQuery *)self type]== 1)
    {
      v3 = MEMORY[0x1E696AEC0];
      suggestionQueryIdentifier = [(PHSearchQuery *)self suggestionQueryIdentifier];
      isCancelled = [(PHSearchQuery *)self isCancelled];
      v6 = @"NO";
      if (isCancelled)
      {
        v6 = @"YES";
      }

      v7 = v6;
      searchText = [(PHSearchQuery *)self searchText];
      suggestionOptions = [(PHSearchQuery *)self suggestionOptions];
      v10 = [v3 stringWithFormat:@"Type: Suggestion Query, QueryId: %d, isCancelled: %@, SearchText: '%@', SuggestionOptions: %@", suggestionQueryIdentifier, v7, searchText, suggestionOptions];
    }

    else
    {
      v21.receiver = self;
      v21.super_class = PHSearchQuery;
      v10 = [(PHSearchQuery *)&v21 description];
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    queryIdentifier = [(PHSearchQuery *)self queryIdentifier];
    batchIdentifier = [(PHSearchQuery *)self batchIdentifier];
    if ([(PHSearchQuery *)self isCancelled])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    searchText2 = [(PHSearchQuery *)self searchText];
    if (PLIsFeaturedContentAllowed())
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = v17;
    searchOptions = [(PHSearchQuery *)self searchOptions];
    v10 = [v11 stringWithFormat:@"Type: Retrieval Query, QueryId: %d, BatchId: %d, isCancelled: %@, SearchText: '%@', FeaturedContentAllowed: %@, SearchOptions: %@", queryIdentifier, batchIdentifier, v15, searchText2, v18, searchOptions];
  }

  return v10;
}

- (id)_effectiveScopedUUIDs
{
  v17 = *MEMORY[0x1E69E9840];
  searchOptions = [(PHSearchQuery *)self searchOptions];
  scopedIdentifiers = [searchOptions scopedIdentifiers];

  searchText = [(PHSearchQuery *)self searchText];
  v6 = [PHSearchUtility extractAssetUUIDsForLocationDisambiguationsInQueryString:searchText];

  if ([v6 count])
  {
    v7 = PLSearchBackendResultProcessingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_batchIdentifier)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", self->_batchIdentifier, self->_queryIdentifier];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", self->_queryIdentifier, v12];
      }
      v8 = ;
      *buf = 138543618;
      v14 = v8;
      v15 = 2048;
      v16 = [v6 count];
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %tu assetUUIDs from location disambiguations to scope the search.", buf, 0x16u);
    }

    if ([scopedIdentifiers count])
    {
      v9 = [scopedIdentifiers mutableCopy];
      [v9 intersectSet:v6];
      v10 = [v9 copy];

      scopedIdentifiers = v9;
    }

    else
    {
      v10 = v6;
    }

    scopedIdentifiers = v10;
  }

  return scopedIdentifiers;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(PHSearchQuery *)self type];
      if (type == [(PHSearchQuery *)v5 type])
      {
        if (![(PHSearchQuery *)self type])
        {
          queryIdentifier = [(PHSearchQuery *)self queryIdentifier];
          queryIdentifier2 = [(PHSearchQuery *)v5 queryIdentifier];
          goto LABEL_11;
        }

        if ([(PHSearchQuery *)self type]== 1)
        {
          queryIdentifier = [(PHSearchQuery *)self suggestionQueryIdentifier];
          queryIdentifier2 = [(PHSearchQuery *)v5 suggestionQueryIdentifier];
LABEL_11:
          v9 = queryIdentifier == queryIdentifier2;
          goto LABEL_12;
        }
      }

      v9 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (BOOL)isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCancelled = selfCopy->_isCancelled;
  objc_sync_exit(selfCopy);

  return isCancelled;
}

- (void)setIsCancelled:(BOOL)cancelled
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isCancelled = cancelled;
  objc_sync_exit(obj);
}

- (id)_executePhotosEntityStoreSearchWithAssetUUIDs:(id)ds collectionUUIDs:(id)iDs annotatedQueryString:(id)string rangeOfSuggestionText:(_NSRange)text
{
  length = text.length;
  location = text.location;
  v58 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  stringCopy = string;
  v11 = PLPhotosSearchGetLog();
  v12 = os_signpost_id_generate(v11);

  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLSearchBackendQuerySuggestions", byte_19CB567AE, buf, 2u);
  }

  photosRetrievalSuggestionsQuery = [(PHSearchQuery *)self photosRetrievalSuggestionsQuery];
  v16 = photosRetrievalSuggestionsQuery;
  if (photosRetrievalSuggestionsQuery)
  {
    photosSuggestionsQuery = photosRetrievalSuggestionsQuery;
  }

  else
  {
    photosSuggestionsQuery = [(PHSearchQuery *)self photosSuggestionsQuery];
  }

  v18 = photosSuggestionsQuery;

  *buf = 0;
  v48 = buf;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__33343;
  v51 = __Block_byref_object_dispose__33344;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__33343;
  v45 = __Block_byref_object_dispose__33344;
  v46 = 0;
  photosRetrievalSuggestionsQuery2 = [(PHSearchQuery *)self photosRetrievalSuggestionsQuery];
  if (photosRetrievalSuggestionsQuery2)
  {
    suggestionOptions = [v18 suggestionOptions];
    v21 = [suggestionOptions searchSuggestionType] == 1;

    if (v21)
    {
      suggestionOptions2 = [v18 suggestionOptions];
      locationInQueryStringForSuggestionGeneration = [suggestionOptions2 locationInQueryStringForSuggestionGeneration];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __122__PHSearchQuery__executePhotosEntityStoreSearchWithAssetUUIDs_collectionUUIDs_annotatedQueryString_rangeOfSuggestionText___block_invoke;
      v40[3] = &unk_1E75A8700;
      v40[4] = buf;
      v40[5] = &v41;
      [PHSearchUtility completionSuggestionDateComponentsForQueryString:stringCopy locationInQueryString:locationInQueryStringForSuggestionGeneration completion:v40];
    }
  }

  v24 = [v18 performQueryWithSearchResultAssetUUIDs:dsCopy collectionUUIDs:iDsCopy completionSuggestionDateComponents:*(v48 + 5) completionTextForDateComponents:v42[5]];
  v39 = 0;
  [PHSearchSuggestionProcessor searchSuggestionsFromPLSearchSuggestions:v24 suggestions:&v39 queryId:[(PHSearchQuery *)self queryIdentifier] batchId:[(PHSearchQuery *)self batchIdentifier] rangeOfSuggestionText:location, length];
  v35 = v39;
  queryIdentifier = [(PHSearchQuery *)self queryIdentifier];
  batchIdentifier = [(PHSearchQuery *)self batchIdentifier];
  v27 = v14;
  v28 = v27;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    v29 = [dsCopy count];
    v30 = [iDsCopy count];
    *v53 = 67109888;
    *v54 = queryIdentifier;
    *&v54[4] = 1024;
    *&v54[6] = batchIdentifier;
    *v55 = 2048;
    *&v55[2] = v29;
    v56 = 2048;
    v57 = v30;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v28, OS_SIGNPOST_INTERVAL_END, v12, "PLSearchBackendQuerySuggestions", "Query: %d, Batch: %d, Input Assets: %tu, Input Collections: %tu", v53, 0x22u);
  }

  v31 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    if (batchIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", batchIdentifier, queryIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", queryIdentifier];
    }
    v32 = ;
    v33 = [v24 count];
    *v53 = 138543618;
    *v54 = v32;
    *&v54[8] = 2050;
    *v55 = v33;
    _os_log_impl(&dword_19C86F000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ Suggestion generation completed with %{public}tu suggestions.", v53, 0x16u);
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(buf, 8);

  return v35;
}

void __122__PHSearchQuery__executePhotosEntityStoreSearchWithAssetUUIDs_collectionUUIDs_annotatedQueryString_rangeOfSuggestionText___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = a2;
  if ([v5 length])
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (void)_executeSpotlightSearchWithResultsHandlerV2:(id)v2
{
  v50 = *MEMORY[0x1E69E9840];
  v2Copy = v2;
  v4 = PLPhotosSearchGetLog();
  v5 = os_signpost_id_generate(v4);

  v6 = v4;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLSearchBackendQuerySpotlightQuery", byte_19CB567AE, buf, 2u);
  }

  batchIdentifier = [(PHSearchQuery *)self batchIdentifier];
  queryIdentifier = [(PHSearchQuery *)self queryIdentifier];
  v10 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (batchIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", batchIdentifier, queryIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", queryIdentifier];
    }
    v11 = ;
    spotlightQuery = [(PHSearchQuery *)self spotlightQuery];
    queryStringSentToSpotlight = [(PHSearchQuery *)self queryStringSentToSpotlight];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = spotlightQuery;
    *&buf[22] = 2112;
    v49 = queryStringSentToSpotlight;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Start Spotlight query: %@, queryString: %@.", buf, 0x20u);
  }

  _effectiveScopedUUIDs = [(PHSearchQuery *)self _effectiveScopedUUIDs];
  v15 = [PHSearchResultProcessor alloc];
  searchOptions = [(PHSearchQuery *)self searchOptions];
  photoLibrary = [(PHSearchQuery *)self photoLibrary];
  v18 = [(PHSearchResultProcessor *)v15 initWithSearchQueryOptions:searchOptions scopedUUIDs:_effectiveScopedUUIDs photoLibrary:photoLibrary];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v49 = 0;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __61__PHSearchQuery__executeSpotlightSearchWithResultsHandlerV2___block_invoke;
  v46[3] = &unk_1E75A8688;
  v19 = v18;
  v47 = v19;
  spotlightQuery2 = [(PHSearchQuery *)self spotlightQuery];
  [spotlightQuery2 setAttributedQueryHandler:v46];

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __61__PHSearchQuery__executeSpotlightSearchWithResultsHandlerV2___block_invoke_2;
  v44[3] = &unk_1E75A86B0;
  v21 = v19;
  v45 = v21;
  spotlightQuery3 = [(PHSearchQuery *)self spotlightQuery];
  [spotlightQuery3 setPhotosComputedAttributesHandler:v44];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __61__PHSearchQuery__executeSpotlightSearchWithResultsHandlerV2___block_invoke_3;
  v41[3] = &unk_1E75A86D8;
  v23 = v21;
  v42 = v23;
  v43 = buf;
  spotlightQuery4 = [(PHSearchQuery *)self spotlightQuery];
  [spotlightQuery4 setFoundItemsHandler:v41];

  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3254779904;
  v31[2] = __61__PHSearchQuery__executeSpotlightSearchWithResultsHandlerV2___block_invoke_4;
  v31[3] = &unk_1F0FC4538;
  objc_copyWeak(&v35, &location);
  v38 = batchIdentifier;
  v39 = queryIdentifier;
  v25 = v2Copy;
  v33 = v25;
  v26 = v23;
  v32 = v26;
  v27 = v7;
  v36 = v27;
  v37 = v5;
  v34 = buf;
  spotlightQuery5 = [(PHSearchQuery *)self spotlightQuery];
  [spotlightQuery5 setCompletionHandler:v31];

  spotlightQuery6 = [(PHSearchQuery *)self spotlightQuery];
  [spotlightQuery6 start];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
}

void __61__PHSearchQuery__executeSpotlightSearchWithResultsHandlerV2___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 processSpotlightItems:v4];
  v5 = [v4 count];

  *(*(*(a1 + 40) + 8) + 24) += v5;
}

void __61__PHSearchQuery__executeSpotlightSearchWithResultsHandlerV2___block_invoke_4(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v3)
  {
    v5 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 80))
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 80), *(a1 + 84)];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 84)];
      }
      v6 = ;
      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = v3;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Spotlight Query error: %{public}@", buf, 0x16u);
    }
  }

  if (WeakRetained && ![WeakRetained isCancelled])
  {
    v8 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 80))
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 80), *(a1 + 84)];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 84)];
      }
      v10 = ;
      v11 = [WeakRetained spotlightQuery];
      v12 = [v11 queryString];
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Spotlight query completed for %@.", buf, 0x16u);
    }

    v13 = *(a1 + 32);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3254779904;
    v18[2] = __61__PHSearchQuery__executeSpotlightSearchWithResultsHandlerV2___block_invoke_172;
    v18[3] = &unk_1F0FC4500;
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v21 = v14;
    v22 = v15;
    v23 = vrev64_s32(*(a1 + 80));
    v17 = *(a1 + 40);
    v16 = v17;
    v20 = v17;
    v19 = v3;
    [v13 finalizeResultsForQuery:WeakRetained resultHandler:v18];
  }

  else
  {
    v7 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 80))
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 80), *(a1 + 84)];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 84)];
      }
      v9 = ;
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Query cancelled. Skipped processing any partial results.", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0]);
  }
}

void __61__PHSearchQuery__executeSpotlightSearchWithResultsHandlerV2___block_invoke_172(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v42[3] = *MEMORY[0x1E69E9840];
  v17 = a2;
  v38 = a3;
  v37 = a4;
  v36 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = *(a1 + 56);
  v24 = v23;
  v25 = *(a1 + 64);
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v32 = *(a1 + 72);
    v34 = *(a1 + 76);
    v33 = *(*(*(a1 + 48) + 8) + 24);
    v35 = [v20 queryEmbedding];
    v26 = @"YES";
    if (!v35)
    {
      v26 = @"NO";
    }

    v27 = v26;
    *buf = 67109890;
    *v40 = v32;
    *&v40[4] = 1024;
    *&v40[6] = v34;
    *v41 = 2048;
    *&v41[2] = v33;
    LOWORD(v42[0]) = 2112;
    *(v42 + 2) = v27;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PLSearchBackendQuerySpotlightQuery", "Query: %d, Batch: %d, CSSearchableItems: %tu, QueryEmbedding: %@", buf, 0x22u);
  }

  v28 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 76))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 76), *(a1 + 72)];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 72), v31];
    }
    v29 = ;
    v30 = [v17 count];
    *buf = 138543874;
    *v40 = v29;
    *&v40[8] = 2050;
    *v41 = v30;
    *&v41[8] = 2112;
    v42[0] = v20;
    _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %{public}tu search results. Match details: %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v17, v38, v37);
}

- (void)_executeSearchWithResultsHandler:(id)handler
{
  handlerCopy = handler;
  searchText = [(PHSearchQuery *)self searchText];
  v5 = [PHSearchUtility locationDisambiguationSpansFullLengthOfString:searchText];

  if (v5)
  {
    searchText2 = [(PHSearchQuery *)self searchText];
    v7 = [PHSearchUtility extractAssetUUIDsForLocationDisambiguationsInQueryString:searchText2];

    allObjects = [v7 allObjects];
    v9 = [PHSearchResultProcessor searchResultsFromAssetUUIDs:allObjects];
    (*(handlerCopy + 2))(handlerCopy, v9, v9, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], allObjects, MEMORY[0x1E695E0F0], 0, 0, 0, 0, 0);
  }

  else
  {
    [(PHSearchQuery *)self _executeSpotlightSearchWithResultsHandlerV2:handlerCopy];
  }
}

- (void)cancel
{
  v15 = *MEMORY[0x1E69E9840];
  [(PHSearchQuery *)self setIsCancelled:1];
  if ([(PHSearchQuery *)self type])
  {
    if ([(PHSearchQuery *)self type]!= 1)
    {
      return;
    }

    v3 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if ([(PHSearchQuery *)self batchIdentifier])
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", -[PHSearchQuery batchIdentifier](self, "batchIdentifier"), -[PHSearchQuery suggestionQueryIdentifier](self, "suggestionQueryIdentifier")];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", -[PHSearchQuery suggestionQueryIdentifier](self, "suggestionQueryIdentifier"), v10];
      }
      v8 = ;
      *buf = 138543618;
      v12 = v8;
      v13 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ PHSearchQuery cancelled: %@", buf, 0x16u);
    }

    photosSuggestionsQuery = [(PHSearchQuery *)self photosSuggestionsQuery];
  }

  else
  {
    v4 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ([(PHSearchQuery *)self batchIdentifier])
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", -[PHSearchQuery batchIdentifier](self, "batchIdentifier"), -[PHSearchQuery queryIdentifier](self, "queryIdentifier")];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", -[PHSearchQuery queryIdentifier](self, "queryIdentifier"), v10];
      }
      v5 = ;
      *buf = 138543618;
      v12 = v5;
      v13 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ PHSearchQuery cancelled: %@", buf, 0x16u);
    }

    spotlightQuery = [(PHSearchQuery *)self spotlightQuery];
    [spotlightQuery cancel];

    photosSuggestionsQuery = [(PHSearchQuery *)self photosRetrievalSuggestionsQuery];
  }

  v9 = photosSuggestionsQuery;
  [photosSuggestionsQuery cancel];
}

- (PHSearchQuery)initWithText:(id)text suggestionOptions:(id)options photoLibrary:(id)library queryIdentifier:(int)identifier
{
  v48 = *MEMORY[0x1E69E9840];
  textCopy = text;
  optionsCopy = options;
  libraryCopy = library;
  v14 = libraryCopy;
  if (textCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"text"}];

    if (v14)
    {
LABEL_3:
      if (optionsCopy)
      {
        goto LABEL_4;
      }

LABEL_24:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"suggestionOptions"}];

      if (identifier)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

  if (!optionsCopy)
  {
    goto LABEL_24;
  }

LABEL_4:
  if (identifier)
  {
    goto LABEL_5;
  }

LABEL_25:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"queryIdentifier != PHInvalidSuggestionsQueryID"}];

LABEL_5:
  v45.receiver = self;
  v45.super_class = PHSearchQuery;
  v15 = [(PHSearchQuery *)&v45 init];
  if (!v15)
  {
LABEL_20:
    v34 = v15;
    goto LABEL_21;
  }

  searchIndex = [v14 searchIndex];
  unverifiedPsiSearchIndex = [searchIndex unverifiedPsiSearchIndex];

  if (unverifiedPsiSearchIndex)
  {
    v18 = [textCopy copy];
    searchText = v15->_searchText;
    v15->_searchText = v18;

    v20 = [optionsCopy copy];
    suggestionOptions = v15->_suggestionOptions;
    v15->_suggestionOptions = v20;

    v15->_suggestionQueryIdentifier = identifier;
    objc_storeStrong(&v15->_photoLibrary, library);
    v15->_type = 1;
    if ([textCopy length])
    {
      v22 = [PHSearchUtility insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString:textCopy];
      v42 = [PHSearchUtility completionSuggestionTextsForQueryString:v22 locationInQueryString:[v22 length]];
      v23 = [PHSearchUtility suggestionComponentsInQueryString:v22];
      v24 = 1;
      v25 = [objc_alloc(MEMORY[0x1E69BE8C0]) initWithSuggestionType:1 suggestionLimit:{objc_msgSend(optionsCopy, "suggestionLimit")}];
      [v25 setSuggestionResultTypes:{objc_msgSend(objc_opt_class(), "_searchResultTypesFromSearchQueryResultTypes:", objc_msgSend(optionsCopy, "suggestionResultTypes"))}];
      [v25 setLocationInQueryStringForSuggestionGeneration:{objc_msgSend(textCopy, "length")}];
      suggestionCategories = [optionsCopy suggestionCategories];
      [v25 setSuggestionCategories:suggestionCategories];

      [v25 setWantsUnscopedSuggestions:{objc_msgSend(optionsCopy, "wantsUnscopedSuggestions")}];
      [v25 setWantsPairedSuggestions:{objc_msgSend(optionsCopy, "wantsPairedSuggestions")}];
      [v25 setLimitSuggestionsToExactTextMatches:{objc_msgSend(optionsCopy, "limitSuggestionsToExactTextMatches")}];
      do
      {
        [v25 setMinMatchPercent:objc_msgSend(optionsCopy forCategoriesType:{"minMatchPercentForCategoriesType:", v24), v24}];
        ++v24;
      }

      while (v24 != 44);
      substringMatchedCategories = [optionsCopy substringMatchedCategories];
      [v25 setSubstringMatchedCategories:substringMatchedCategories];

      v28 = objc_alloc_init(MEMORY[0x1E696AD50]);
      suggestionCategories2 = [optionsCopy suggestionCategories];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __77__PHSearchQuery_initWithText_suggestionOptions_photoLibrary_queryIdentifier___block_invoke;
      v43[3] = &unk_1E75A9568;
      v44 = v28;
      v30 = v28;
      [suggestionCategories2 enumerateIndexesUsingBlock:v43];

      [optionsCopy setSuggestionCategories:v30];
      v31 = [objc_alloc(MEMORY[0x1E69BE8C8]) initWithFormattedSearchText:v22 originalSearchText:textCopy completionSuggestionTexts:v42 suggestionOptions:v25 suggestionComponents:v23 photosEntityStore:unverifiedPsiSearchIndex];
      photosSuggestionsQuery = v15->_photosSuggestionsQuery;
      v15->_photosSuggestionsQuery = v31;
    }

    else
    {
      v22 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (v15->_batchIdentifier)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v15->_batchIdentifier, v15->_suggestionQueryIdentifier];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v15->_suggestionQueryIdentifier, v41];
        }
        v35 = ;
        *buf = 138543362;
        v47 = v35;
        _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "%{public}@ PHSearchQuery initialized with empty query string for suggestions query.", buf, 0xCu);
      }
    }

    goto LABEL_20;
  }

  v33 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_ERROR, "PSIDatabase unavailable, cannot initialize suggestions query", buf, 2u);
  }

  v34 = 0;
LABEL_21:

  return v34;
}

uint64_t __77__PHSearchQuery_initWithText_suggestionOptions_photoLibrary_queryIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0x2B)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  return [*(a1 + 32) addIndex:v2];
}

- (PHSearchQuery)initWithSearchText:(id)text searchOptions:(id)options photoLibrary:(id)library queryIdentifier:(int)identifier batchIdentifier:(int)batchIdentifier
{
  v87 = *MEMORY[0x1E69E9840];
  textCopy = text;
  optionsCopy = options;
  libraryCopy = library;
  v16 = libraryCopy;
  if (textCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }

LABEL_77:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (identifier)
    {
      goto LABEL_4;
    }

    goto LABEL_78;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"searchText"}];

  if (!v16)
  {
    goto LABEL_77;
  }

LABEL_3:
  if (identifier)
  {
    goto LABEL_4;
  }

LABEL_78:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"queryIdentifier != PHInvalidSearchQueryID"}];

LABEL_4:
  v78.receiver = self;
  v78.super_class = PHSearchQuery;
  v17 = [(PHSearchQuery *)&v78 init];
  if (!v17)
  {
    v21 = optionsCopy;
    goto LABEL_75;
  }

  v18 = [(NSAttributedString *)textCopy copy];
  searchText = v17->_searchText;
  v17->_searchText = v18;

  v20 = off_1E75A1000;
  if ([PHSearchUtility isSyndicationLibrary:v16])
  {
    v21 = [PHSearchQueryOptions queryOptionsForSyndicationLibraryWithOptions:optionsCopy];

    v22 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifiers = [(NSAttributedString *)v21 bundleIdentifiers];
      v24 = [bundleIdentifiers componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v80 = v24;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "Preparing query options for syndication library query with bundleIDs: %@", buf, 0xCu);

      v20 = off_1E75A1000;
    }
  }

  else
  {
    v25 = [(NSAttributedString *)optionsCopy copy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = objc_opt_new();
    }

    v21 = v27;

    v22 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifiers2 = [(NSAttributedString *)v21 bundleIdentifiers];
      v29 = [bundleIdentifiers2 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v80 = v29;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "Preparing query options for SPL query with bundleIDs: %@", buf, 0xCu);
    }

    v20 = off_1E75A1000;
  }

  objc_storeStrong(&v17->_searchOptions, v21);
  v17->_queryIdentifier = identifier;
  v17->_batchIdentifier = batchIdentifier;
  objc_storeStrong(&v17->_photoLibrary, library);
  v17->_type = 0;
  v30 = [objc_opt_class() _spotlightQueryContextWithSearchOptions:v21];
  spotlightQueryContext = v17->_spotlightQueryContext;
  v17->_spotlightQueryContext = v30;

  if (![(NSAttributedString *)textCopy length])
  {
    v32 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      if (v17->_batchIdentifier)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v17->_batchIdentifier, v17->_queryIdentifier];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v17->_queryIdentifier, v76];
      }
      v33 = ;
      *buf = 138543362;
      v80 = v33;
      _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_ERROR, "%{public}@ PHSearchQuery initialized with empty query string for retrieval query.", buf, 0xCu);
    }
  }

  if ([(NSAttributedString *)v21 disableMetadataSearch]&& [(NSAttributedString *)v21 disableSemanticSearch])
  {
    v34 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      if (v17->_batchIdentifier)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v17->_batchIdentifier, v17->_queryIdentifier];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v17->_queryIdentifier, v76];
      }
      v35 = ;
      *buf = 138543362;
      v80 = v35;
      _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_FAULT, "%{public}@ disableMetadataSearch and disableSemanticSearch options set. Query won't retrieve on anything.", buf, 0xCu);
    }
  }

  if ([(NSAttributedString *)v21 fetchContextualThumbnails]&& ([(NSAttributedString *)v21 enableQueryMatchDetails]& 1) == 0)
  {
    v36 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_FAULT, "Invalid PHSearchQueryOptions set. fetchContextualThumbnails requires enableQueryMatchDetails to determine matched identifiers.", buf, 2u);
    }
  }

  v37 = [(__objc2_class *)v20[222] insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString:textCopy];
  v38 = [PHSearchQueryAnnotation spotlightAttributedQueryStringFromAnnotatedQueryString:v37];
  queryStringSentToSpotlight = v17->_queryStringSentToSpotlight;
  v17->_queryStringSentToSpotlight = v38;

  if ([MEMORY[0x1E69BE810] spotlightPrivateIndexEnabled])
  {
    pathManager = [v16 pathManager];
    spotlightSearchIndexPath = [pathManager spotlightSearchIndexPath];

    v42 = objc_alloc(MEMORY[0x1E6964E40]);
    queryStringSentToSpotlight = [(PHSearchQuery *)v17 queryStringSentToSpotlight];
    v44 = [v42 initWithUserAttributedQueryString:queryStringSentToSpotlight userQueryContext:v17->_spotlightQueryContext path:spotlightSearchIndexPath];
    spotlightQuery = v17->_spotlightQuery;
    v17->_spotlightQuery = v44;
  }

  else
  {
    v46 = objc_alloc(MEMORY[0x1E6964EC8]);
    spotlightSearchIndexPath = [(PHSearchQuery *)v17 queryStringSentToSpotlight];
    v47 = [v46 initWithUserAttributedQueryString:spotlightSearchIndexPath userQueryContext:v17->_spotlightQueryContext];
    queryStringSentToSpotlight = v17->_spotlightQuery;
    v17->_spotlightQuery = v47;
  }

  if ([(NSAttributedString *)v21 suggestionLimit])
  {
    searchIndex = [v16 searchIndex];
    unverifiedPsiSearchIndex = [searchIndex unverifiedPsiSearchIndex];

    if (unverifiedPsiSearchIndex)
    {
      v50 = v20[222];
      searchText = [(PHSearchQuery *)v17 searchText];
      v52 = [(__objc2_class *)v50 suggestionTypeForQueryString:searchText locationInQueryStringForSuggestionGeneration:[(NSAttributedString *)v21 locationInQueryStringForSuggestionGeneration]];

      if (!v52)
      {
LABEL_58:

        goto LABEL_59;
      }

      v53 = 0x7FFFFFFFFFFFFFFFLL;
      if ([(NSAttributedString *)v21 locationInQueryStringForSuggestionGeneration]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v54 = [(__objc2_class *)v20[222] numberOfInsertedSpacesBetweenAnnotationsAndPlainTextInQueryString:textCopy beforeLocation:[(NSAttributedString *)v21 locationInQueryStringForSuggestionGeneration]];
        v53 = [(NSAttributedString *)v21 locationInQueryStringForSuggestionGeneration]+ v54;
      }

      suggestionLimit = [(NSAttributedString *)v21 suggestionLimit];
      v56 = [objc_alloc(MEMORY[0x1E69BE8C0]) initWithSuggestionType:v52 suggestionLimit:suggestionLimit];
      [v56 setLimitSuggestionsToExactTextMatches:[(NSAttributedString *)v21 limitSuggestionsToExactTextMatches]];
      -[NSObject setSuggestionResultTypes:](v56, "setSuggestionResultTypes:", [objc_opt_class() _searchResultTypesFromSearchQueryResultTypes:{-[NSAttributedString searchQueryResultTypes](v21, "searchQueryResultTypes")}]);
      [v56 setLocationInQueryStringForSuggestionGeneration:v53];
      [v56 setMinNumberOfResultsForNextTokenGeneration:[(NSAttributedString *)v21 minNumberOfResultsForNextTokenGeneration]];
      [v56 setEnableNextTokenSuggestions:[(NSAttributedString *)v21 enableNextTokenSuggestions]];
      substringMatchedCategories = [(NSAttributedString *)v21 substringMatchedCategories];
      [v56 setSubstringMatchedCategories:substringMatchedCategories];

      if ([v56 searchSuggestionType]== 1)
      {
        v58 = [(__objc2_class *)v20[222] completionSuggestionTextsForQueryString:v37 locationInQueryString:v53];
      }

      else
      {
        v58 = MEMORY[0x1E695E0F0];
      }

      v59 = [(__objc2_class *)v20[222] suggestionComponentsInQueryString:v37];
      v77 = v37;
      v60 = [objc_alloc(MEMORY[0x1E69BE8C8]) initWithFormattedSearchText:v37 originalSearchText:textCopy completionSuggestionTexts:v58 suggestionOptions:v56 suggestionComponents:v59 photosEntityStore:unverifiedPsiSearchIndex];
      photosRetrievalSuggestionsQuery = v17->_photosRetrievalSuggestionsQuery;
      v17->_photosRetrievalSuggestionsQuery = v60;

      v62 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        if (v17->_batchIdentifier)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v17->_batchIdentifier, v17->_queryIdentifier];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v17->_queryIdentifier, v76];
        }
        v63 = ;
        *buf = 138544130;
        v80 = v63;
        v81 = 2112;
        v82 = v77;
        v83 = 2112;
        v84 = v58;
        v85 = 2112;
        v86 = v59;
        _os_log_impl(&dword_19C86F000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@ Initializing PSISuggestionQuery with query string: %@, completion suggestion texts: %@, query suggestion components: %@.", buf, 0x2Au);
      }

      v37 = v77;
    }

    else
    {
      v56 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        if (v17->_batchIdentifier)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v17->_batchIdentifier, v17->_queryIdentifier];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v17->_queryIdentifier, v76];
        }
        v64 = ;
        *buf = 138543362;
        v80 = v64;
        _os_log_impl(&dword_19C86F000, v56, OS_LOG_TYPE_ERROR, "%{public}@ Unable to access Photos Entity Store (PSI database).", buf, 0xCu);
      }
    }

    goto LABEL_58;
  }

LABEL_59:
  v65 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    if (v17->_batchIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v17->_batchIdentifier, v17->_queryIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v17->_queryIdentifier, v76];
    }
    v66 = ;
    v67 = v17->_queryStringSentToSpotlight;
    *buf = 138543618;
    v80 = v66;
    v81 = 2112;
    v82 = v67;
    _os_log_impl(&dword_19C86F000, v65, OS_LOG_TYPE_DEFAULT, "%{public}@ Initializing PHSearchQuery with Spotlight query string: %@.", buf, 0x16u);
  }

  v68 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    if (v17->_batchIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v17->_batchIdentifier, v17->_queryIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v17->_queryIdentifier, v76];
    }
    v69 = ;
    *buf = 138543618;
    v80 = v69;
    v81 = 2114;
    v82 = v21;
    _os_log_impl(&dword_19C86F000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@ Initializing PHSearchQuery with Search Options: %{public}@", buf, 0x16u);
  }

  v70 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    if (v17->_batchIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", v17->_batchIdentifier, v17->_queryIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", v17->_queryIdentifier, v76];
    }
    v71 = ;
    *buf = 138543618;
    v80 = v71;
    v81 = 2112;
    v82 = textCopy;
    _os_log_impl(&dword_19C86F000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ Initialized PHSearchQuery for searchText: %@", buf, 0x16u);
  }

LABEL_75:
  return v17;
}

+ (unint64_t)_searchResultTypesFromSearchQueryResultTypes:(unint64_t)types
{
  v3 = 1;
  if ((types & 1) == 0)
  {
    v3 = 2;
  }

  if ((~types & 3) != 0)
  {
    return v3;
  }

  else
  {
    return v3 | 2;
  }
}

+ (id)_attributeKeyForPropertyKey:(id)key
{
  v3 = _attributeKeyForPropertyKey__onceToken;
  keyCopy = key;
  if (v3 != -1)
  {
    dispatch_once(&_attributeKeyForPropertyKey__onceToken, &__block_literal_global_33432);
  }

  v5 = [_attributeKeyForPropertyKey__propertyKeyMap objectForKeyedSubscript:keyCopy];

  return v5;
}

void __45__PHSearchQuery__attributeKeyForPropertyKey___block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"uuid";
  v3[1] = @"creationDate";
  v0 = *MEMORY[0x1E6963E78];
  v4[0] = @"uuid";
  v4[1] = v0;
  v3[2] = @"addedDate";
  v4[2] = *MEMORY[0x1E6964760];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = _attributeKeyForPropertyKey__propertyKeyMap;
  _attributeKeyForPropertyKey__propertyKeyMap = v1;
}

+ (id)_fetchAttributesForSortDescriptors:(id)descriptors
{
  v4 = MEMORY[0x1E695DF70];
  descriptorsCopy = descriptors;
  v6 = objc_alloc_init(v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PHSearchQuery__fetchAttributesForSortDescriptors___block_invoke;
  v9[3] = &unk_1E75A8728;
  selfCopy = self;
  v7 = v6;
  v10 = v7;
  [descriptorsCopy enumerateObjectsUsingBlock:v9];

  return v7;
}

void __52__PHSearchQuery__fetchAttributesForSortDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v11 = a2;
  v3 = [v11 key];
  v4 = [*(a1 + 40) _attributeKeyForPropertyKey:v3];
  if (!v4)
  {
    v12 = @"sortDescriptor";
    v13[0] = v11;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v11 description];
    v9 = [v7 stringWithFormat:@"Unsupported sort descriptor in search query options: %@", v8];

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:v6];
    objc_exception_throw(v10);
  }

  v5 = v4;
  [*(a1 + 32) addObject:v4];
}

+ (id)_spotlightQueryContextWithSearchOptions:(id)options
{
  v40 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  userQueryContext = [MEMORY[0x1E6964ED0] userQueryContext];
  v6 = PLSearchFileProtectionTypes();
  [userQueryContext setProtectionClasses:v6];

  bundleIdentifiers = [optionsCopy bundleIdentifiers];
  [userQueryContext setBundleIDs:bundleIdentifiers];

  [userQueryContext setDisableBlockingOnIndex:1];
  [userQueryContext setDisableMetadataSearch:{objc_msgSend(optionsCopy, "disableMetadataSearch")}];
  [userQueryContext setDisableSafetyCheck:{objc_msgSend(optionsCopy, "disableSafetyCheck")}];
  [userQueryContext setDisableU2:{objc_msgSend(optionsCopy, "disableU2")}];
  if ([optionsCopy maxSearchResults])
  {
    maxSearchResults = [optionsCopy maxSearchResults];
    v9 = userQueryContext;
  }

  else
  {
    v10 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "maxSearchResults == 0, forcing maxResultCount = 1000000 due to rdar://123315356", buf, 2u);
    }

    v9 = userQueryContext;
    maxSearchResults = 1000000;
  }

  [v9 setMaxResultCount:maxSearchResults];
  v11 = PLSearchSemanticSearchQueriesSupported();
  disableSemanticSearch = [optionsCopy disableSemanticSearch];
  v13 = disableSemanticSearch;
  if ((v11 & 1) == 0)
  {
    if (disableSemanticSearch)
    {
      goto LABEL_12;
    }

    v14 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "Embedding search not supported. Embedding search will not run.", buf, 2u);
    }

    v13 = 1;
  }

  [userQueryContext setDisableSemanticSearch:v13];
LABEL_12:
  [optionsCopy embeddingRelevanceThreshold];
  if (v15 != -1.0)
  {
    v16 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [optionsCopy embeddingRelevanceThreshold];
      *buf = 134349056;
      v39 = v17;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEFAULT, "[OVERRIDE SET] Set the queryContext.embeddingRelevanceThreshold to %{public}lf", buf, 0xCu);
    }

    [optionsCopy embeddingRelevanceThreshold];
    [userQueryContext setEmbeddingRelevanceThreshold:?];
  }

  if ([optionsCopy embeddingGenerationTimeout] != -1)
  {
    [userQueryContext setEmbeddingGenerationTimeout:{objc_msgSend(optionsCopy, "embeddingGenerationTimeout")}];
  }

  v18 = MEMORY[0x1E695DF70];
  v37 = *MEMORY[0x1E6964820];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v20 = [v18 arrayWithArray:v19];

  if ([optionsCopy enableQueryMatchDetails])
  {
    [userQueryContext setComputePhotosDerivedAttributes:1];
    v21 = *MEMORY[0x1E6964DB0];
    v36[0] = *MEMORY[0x1E6964DC8];
    v36[1] = v21;
    v36[2] = *MEMORY[0x1E69BF0B8];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
    [v20 addObjectsFromArray:v22];

    if (([optionsCopy disableSemanticSearch] & 1) == 0)
    {
      [v20 addObject:*MEMORY[0x1E6964D78]];
    }
  }

  if ([optionsCopy maxRankedAssetSearchResults] >= 1)
  {
    [userQueryContext setEnableRankedResults:1];
    [userQueryContext setMaxRankedResultCount:{objc_msgSend(optionsCopy, "maxRankedAssetSearchResults")}];
    [v20 addObject:*MEMORY[0x1E6964DB8]];
    [v20 addObject:*MEMORY[0x1E6964DC0]];
  }

  if (([optionsCopy searchQueryResultTypes] & 2) != 0)
  {
    v23 = *MEMORY[0x1E69BF088];
    v35[0] = *MEMORY[0x1E69BF090];
    v35[1] = v23;
    v24 = *MEMORY[0x1E69BF098];
    v35[2] = *MEMORY[0x1E69BF0A0];
    v35[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
    [v20 addObjectsFromArray:v25];

    if (PLIsFeaturedContentAllowed())
    {
      v26 = *MEMORY[0x1E69BF0A8];
      v34[0] = *MEMORY[0x1E69BF0B0];
      v34[1] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
      [v20 addObjectsFromArray:v27];
    }
  }

  if ([optionsCopy fetchContextualThumbnails])
  {
    if (_os_feature_enabled_impl())
    {
      [v20 addObject:*MEMORY[0x1E69BF0C0]];
      [v20 addObject:*MEMORY[0x1E6964740]];
      [v20 addObject:*MEMORY[0x1E6964D80]];
    }

    else
    {
      v28 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "SearchContextualThumbnails feature flag disabled. Not fetching CVTs.", buf, 2u);
      }
    }
  }

  sortDescriptors = [optionsCopy sortDescriptors];
  v30 = [self _fetchAttributesForSortDescriptors:sortDescriptors];

  [v20 addObjectsFromArray:v30];
  v31 = [v20 copy];
  [userQueryContext setFetchAttributes:v31];

  filterQueries = [optionsCopy filterQueries];
  [userQueryContext setFilterQueries:filterQueries];

  return userQueryContext;
}

+ (void)performSuggestionsSearch:(id)search queryQueue:(id)queue suggestionsHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  searchCopy = search;
  queueCopy = queue;
  handlerCopy = handler;
  if (searchCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:421 description:{@"Invalid parameter not satisfying: %@", @"queryQueue"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:420 description:{@"Invalid parameter not satisfying: %@", @"suggestionsQuery"}];

  if (!queueCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"suggestionsHandler"}];

LABEL_4:
  photosSuggestionsQuery = [searchCopy photosSuggestionsQuery];
  if (photosSuggestionsQuery)
  {
    if (![searchCopy isCancelled])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__PHSearchQuery_performSuggestionsSearch_queryQueue_suggestionsHandler___block_invoke;
      block[3] = &unk_1E75AA870;
      v21 = photosSuggestionsQuery;
      v22 = searchCopy;
      v23 = handlerCopy;
      dispatch_async(queueCopy, block);

      goto LABEL_12;
    }

    v13 = [[PHSearchSuggestionQueryResult alloc] initWithSearchQuery:searchCopy];
    (*(handlerCopy + 2))(handlerCopy, v13, 2, 0);
  }

  else
  {
    v14 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(searchCopy, "suggestionQueryIdentifier")];
      searchText = [searchCopy searchText];
      *buf = 138543618;
      v25 = v15;
      v26 = 2112;
      v27 = searchText;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "%{public}@ PHSearchQuery suggestions query unexpectedly nil for query: %@, suggestions will not be generated", buf, 0x16u);
    }

    v13 = [[PHSearchSuggestionQueryResult alloc] initWithSearchQuery:searchCopy];
    (*(handlerCopy + 2))(handlerCopy, v13, 3, 0);
  }

LABEL_12:
}

void __72__PHSearchQuery_performSuggestionsSearch_queryQueue_suggestionsHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) performQueryWithSearchResultAssetUUIDs:MEMORY[0x1E695E0F0] collectionUUIDs:MEMORY[0x1E695E0F0] completionSuggestionDateComponents:0 completionTextForDateComponents:0];
  v10 = 0;
  [PHSearchSuggestionProcessor searchSuggestionsFromPLSearchSuggestions:v2 suggestions:&v10 queryId:0 batchId:0 rangeOfSuggestionText:0x7FFFFFFFFFFFFFFFLL, 0];
  v3 = v10;
  v4 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(*(a1 + 40), "suggestionQueryIdentifier")];
    v6 = [*(a1 + 40) searchText];
    v7 = [*(a1 + 40) suggestionOptions];
    v8 = [v3 count];
    *buf = 138544130;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed suggestion generation for search text: %@, with options: %@ and found %tu suggestions", buf, 0x2Au);
  }

  v9 = [[PHSearchSuggestionQueryResult alloc] initWithSearchQuery:*(a1 + 40) searchSuggestions:v3];
  (*(*(a1 + 48) + 16))();
}

+ (void)suggestionsForSearchQuery:(id)query searchQueryResult:(id)result rangeOfSuggestionText:(_NSRange)text queryQueue:(id)queue suggestionsHandler:(id)handler
{
  length = text.length;
  location = text.location;
  queryCopy = query;
  resultCopy = result;
  queueCopy = queue;
  handlerCopy = handler;
  if (queryCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"searchQuery"}];

    if (queueCopy)
    {
LABEL_3:
      if (resultCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"searchQueryResult"}];

      if (handlerCopy)
      {
        goto LABEL_5;
      }

LABEL_9:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"suggestionsHandler"}];

      goto LABEL_5;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"queryQueue"}];

  if (!resultCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!handlerCopy)
  {
    goto LABEL_9;
  }

LABEL_5:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__PHSearchQuery_suggestionsForSearchQuery_searchQueryResult_rangeOfSuggestionText_queryQueue_suggestionsHandler___block_invoke;
  block[3] = &unk_1E75A8638;
  v26 = resultCopy;
  v27 = queryCopy;
  v29 = location;
  v30 = length;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = queryCopy;
  v20 = resultCopy;
  dispatch_async(queueCopy, block);
}

void __113__PHSearchQuery_suggestionsForSearchQuery_searchQueryResult_rangeOfSuggestionText_queryQueue_suggestionsHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [*(a1 + 32) searchResults];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __113__PHSearchQuery_suggestionsForSearchQuery_searchQueryResult_rangeOfSuggestionText_queryQueue_suggestionsHandler___block_invoke_2;
  v28 = &unk_1E75A8660;
  v5 = v2;
  v29 = v5;
  v6 = v3;
  v30 = v6;
  [v4 enumerateObjectsUsingBlock:&v25];

  v7 = *(a1 + 40);
  v8 = [v5 copy];
  v9 = [v6 copy];
  v10 = [v7 _executePhotosEntityStoreSearchWithAssetUUIDs:v8 collectionUUIDs:v9 annotatedQueryString:0 rangeOfSuggestionText:{*(a1 + 56), *(a1 + 64)}];

  v11 = [*(a1 + 40) isCancelled];
  v12 = [PHSearchSuggestionQueryResult alloc];
  if (v11)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v11)
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v14 = v10;
  }

  v15 = [(PHSearchSuggestionQueryResult *)v12 initWithSearchQuery:*(a1 + 40) searchSuggestions:v14];
  (*(*(a1 + 48) + 16))();
  v16 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*(a1 + 40) batchIdentifier];
    v18 = MEMORY[0x1E696AEC0];
    v19 = *(a1 + 40);
    if (v17)
    {
      v20 = [v19 batchIdentifier];
      v24 = [*(a1 + 40) queryIdentifier];
      [v18 stringWithFormat:@"[Batch: %d | Query: %d]", v20, v24, v25, v26, v27, v28, v29];
    }

    else
    {
      v22 = [v19 queryIdentifier];
      [v18 stringWithFormat:@"[Query: %d]", v22, v23, v25, v26, v27, v28, v29];
    }
    v21 = ;
    *buf = 138543874;
    v32 = v21;
    v33 = 2050;
    v34 = v13;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Suggestions for search query completed. Status: %{public}tu, Suggestions: %@", buf, 0x20u);
  }
}

void __113__PHSearchQuery_suggestionsForSearchQuery_searchQueryResult_rangeOfSuggestionText_queryQueue_suggestionsHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 type];
  if ((v3 - 1) <= 4)
  {
    v4 = *(a1 + qword_19CB29AE8[v3 - 1]);
    v5 = [v6 uuid];
    [v4 addObject:v5];
  }
}

+ (void)_triggerQueryTimeoutTapToRadarForQuery:(id)query
{
  queryCopy = query;
  if (PFOSVariantHasInternalDiagnostics() && ((PFIsPhotosAppAnyPlatform() & 1) != 0 || PFIsPhotosPicker()))
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZZZZZ"];
    v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
    [v3 setLocale:v4];

    date = [MEMORY[0x1E695DF00] date];
    v6 = [v3 stringFromDate:date];

    v7 = MEMORY[0x1E696AD60];
    if ([queryCopy batchIdentifier])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier"), v15];
    }
    v8 = ;
    searchText = [queryCopy searchText];
    string = [searchText string];
    v11 = [v7 stringWithFormat:@"%@: %@\n\n", v8, string];

    [v11 appendFormat:@"Report Time: %@\n", v6];
    searchOptions = [queryCopy searchOptions];
    [searchOptions spotlightQueryTimeout];
    [v11 appendFormat:@"Timeout: %.0fs\n", v13];

    queryStringSentToSpotlight = [queryCopy queryStringSentToSpotlight];
    [v11 appendFormat:@"Spotlight query string: %@\n", queryStringSentToSpotlight];

    [v11 appendFormat:@"\n----------------------------------------\n"];
    [v11 appendFormat:@"Query: %@\n", queryCopy];
    [MEMORY[0x1E69BE3F0] fileRadarUserNotificationWithHeader:@"Search Query Hang Issue" message:@"Your search query has experienced an unexpected hang/timeout radarTitle:please file a Radar to diagnose the issue" radarDescription:@"TTR: Detected search query hang/timeout" radarComponent:v11 diagnosticTTRType:4 attachments:0 extensionItem:{MEMORY[0x1E695E0F0], 0}];
  }
}

+ (void)performSearch:(id)search queryQueue:(id)queue resultsHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  searchCopy = search;
  queueCopy = queue;
  handlerCopy = handler;
  if (searchCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }

LABEL_26:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"queryQueue"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"searchQuery"}];

  if (!queueCopy)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_27:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHSearchQuery.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"resultsHandler"}];

LABEL_4:
  photoLibrary = [searchCopy photoLibrary];
  searchIndex = [photoLibrary searchIndex];
  [searchIndex acquireSpotlightSandboxExtensionIfNeeded];

  batchIdentifier = [searchCopy batchIdentifier];
  queryIdentifier = [searchCopy queryIdentifier];
  v16 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (batchIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", batchIdentifier, queryIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", queryIdentifier, v35];
    }
    v17 = ;
    *buf = 138543618;
    v44 = v17;
    v45 = 2112;
    v46 = searchCopy;
    _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Perform Search: %@", buf, 0x16u);
  }

  v18 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    if (batchIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", batchIdentifier, queryIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", queryIdentifier, v35];
    }
    v19 = ;
    searchOptions = [searchCopy searchOptions];
    *buf = 138543618;
    v44 = v19;
    v45 = 2114;
    v46 = searchOptions;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Search Options: %{public}@", buf, 0x16u);
  }

  v21 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (batchIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", batchIdentifier, queryIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", queryIdentifier, v35];
    }
    v22 = ;
    queryStringSentToSpotlight = [searchCopy queryStringSentToSpotlight];
    *buf = 138543618;
    v44 = v22;
    v45 = 2112;
    v46 = queryStringSentToSpotlight;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Query string sent to Spotlight: %@", buf, 0x16u);
  }

  v24 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (batchIdentifier)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", batchIdentifier, queryIdentifier];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", queryIdentifier, v35];
    }
    v25 = ;
    searchText = [searchCopy searchText];
    string = [searchText string];
    *buf = 138543618;
    v44 = v25;
    v45 = 2112;
    v46 = string;
    _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Plain text query string: %@", buf, 0x16u);
  }

  v28 = [MEMORY[0x1E695DF00] now];
  [searchCopy setStartDate:v28];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PHSearchQuery_performSearch_queryQueue_resultsHandler___block_invoke;
  block[3] = &unk_1E75A8638;
  v37 = searchCopy;
  v38 = queueCopy;
  v41 = batchIdentifier;
  v42 = queryIdentifier;
  v39 = handlerCopy;
  selfCopy = self;
  v29 = queueCopy;
  v30 = handlerCopy;
  v31 = searchCopy;
  dispatch_async(v29, block);
}

void __57__PHSearchQuery_performSearch_queryQueue_resultsHandler___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isCancelled])
  {
    v2 = [MEMORY[0x1E695DF00] now];
    [*(a1 + 32) setEndDate:v2];

    v3 = *(a1 + 48);
    v16 = [[PHSearchQueryResult alloc] initWithSearchQuery:*(a1 + 32)];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69BE850]) initWithQueue:*(a1 + 40) name:@"PHSearchQuery performSearch"];
    *v63 = 0xE00000001;
    v64 = 1;
    v65 = getpid();
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 648;
    LODWORD(v33) = 0;
    sysctl(v63, 4u, &v31, &v30, 0, 0);
    if ((v33 & 0x800) != 0)
    {
      v7 = 1000000000.0;
    }

    else
    {
      v5 = [*(a1 + 32) searchOptions];
      [v5 spotlightQueryTimeout];
      v7 = v6;
    }

    v8 = MEMORY[0x1E696AEC0];
    if (*(a1 + 64))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 64), *(a1 + 68)];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 68)];
    }
    v9 = ;
    v10 = [v8 stringWithFormat:@"Spotlight query: %@", v9];
    v11 = [v4 enterWithTimeout:v10 name:v7];

    *&v31 = 0;
    *(&v31 + 1) = &v31;
    *&v32 = 0x3032000000;
    *(&v32 + 1) = __Block_byref_object_copy__33343;
    *&v33 = __Block_byref_object_dispose__33344;
    *(&v33 + 1) = 0;
    v12 = *(a1 + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__PHSearchQuery_performSearch_queryQueue_resultsHandler___block_invoke_108;
    v23[3] = &unk_1E75A8610;
    v28 = &v31;
    v13 = v11;
    v24 = v13;
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v29 = *(a1 + 64);
    v27 = *(a1 + 48);
    [v12 _executeSearchWithResultsHandler:v23];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__PHSearchQuery_performSearch_queryQueue_resultsHandler___block_invoke_112;
    v18[3] = &unk_1E75A8638;
    v14 = v13;
    v19 = v14;
    v20 = *(a1 + 32);
    v22 = *(a1 + 64);
    *v17 = *(a1 + 48);
    v15 = v17[0];
    v21 = *v17;
    [v4 notify:v18];

    _Block_object_dispose(&v31, 8);
  }
}

void __57__PHSearchQuery_performSearch_queryQueue_resultsHandler___block_invoke_108(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, char a11, void *a12)
{
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a12;
  v26 = MEMORY[0x1E69BF2D0];
  if (v25)
  {
    v27 = [MEMORY[0x1E69BF2D0] failureWithError:v25];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
    v29 = v28 = v19;
    v27 = [v26 successWithResult:v29];

    v19 = v28;
  }

  v30 = *(*(a1 + 64) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v27;

  [*(a1 + 32) leaveWithResult:*(*(*(a1 + 64) + 8) + 40)];
  if (([*(a1 + 32) didTimeout] & 1) == 0)
  {
    v40 = v21;
    v32 = v20;
    v33 = [*(a1 + 40) isCancelled];
    v34 = 0;
    v35 = 3;
    if (!v25)
    {
      v35 = 1;
    }

    if (v33)
    {
      v35 = 2;
    }

    v39 = v35;
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x3032000000;
    v62[3] = __Block_byref_object_copy__33343;
    v62[4] = __Block_byref_object_dispose__33344;
    v63 = 0;
    if (!v25 && (v33 & 1) == 0)
    {
      v36 = [*(a1 + 40) photosRetrievalSuggestionsQuery];
      if (v36 && [v43 count])
      {
        v34 = [*(a1 + 40) isCancelled] ^ 1;
      }

      else
      {
        v34 = 0;
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PHSearchQuery_performSearch_queryQueue_resultsHandler___block_invoke_2;
    block[3] = &unk_1E75A85E8;
    v60 = v34;
    v37 = *(a1 + 48);
    v45 = *(a1 + 40);
    v20 = v32;
    v46 = v32;
    v21 = v40;
    v47 = v40;
    v48 = v23;
    v57 = v62;
    v49 = v43;
    v50 = v42;
    v51 = v41;
    v52 = v19;
    v53 = v22;
    v38 = v24;
    v61 = a11;
    v59 = *(a1 + 72);
    v54 = v38;
    v58 = v39;
    v55 = v25;
    v56 = *(a1 + 56);
    dispatch_async(v37, block);

    _Block_object_dispose(v62, 8);
  }
}

void __57__PHSearchQuery_performSearch_queryQueue_resultsHandler___block_invoke_112(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) didTimeout])
  {
    v2 = [[PHSearchQueryResult alloc] initWithSearchQuery:*(a1 + 40)];
    if ([*(a1 + 40) isCancelled])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [*(a1 + 56) _triggerQueryTimeoutTapToRadarForQuery:*(a1 + 40)];
      v3 = [*(a1 + 40) searchOptions];
      [v3 spotlightQueryTimeout];
      v5 = v4;

      v6 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A278];
      v7 = MEMORY[0x1E696AEC0];
      if (*(a1 + 64))
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 64), *(a1 + 68)];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 68), v14];
      }
      v8 = ;
      v9 = [v7 stringWithFormat:@"Spotlight query: %@, timed out in %0.4fs", v8, v5];
      v27[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v11 = [v6 errorWithDomain:@"PHPhotosErrorDomain" code:6100 userInfo:v10];

      v12 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 64))
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 64), *(a1 + 68)];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 68), v15];
        }
        v13 = ;
        *buf = 138544386;
        v17 = v13;
        v18 = 2048;
        v19 = v5;
        v20 = 2048;
        v21 = 3;
        v22 = 2112;
        v23 = v11;
        v24 = 2112;
        v25 = v2;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Query timed out in %0.4fs, with status: %tu, error: %@, result: %@", buf, 0x34u);
      }

      [*(a1 + 40) cancel];
      (*(*(a1 + 48) + 16))();
    }
  }
}

uint64_t __57__PHSearchQuery_performSearch_queryQueue_resultsHandler___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 152);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 _executePhotosEntityStoreSearchWithAssetUUIDs:*(a1 + 40) collectionUUIDs:*(a1 + 48) annotatedQueryString:*(a1 + 56) rangeOfSuggestionText:{0x7FFFFFFFFFFFFFFFLL, 0}];
    v5 = [*(a1 + 32) isCancelled];
    v6 = [PHSearchQueryResult alloc];
    v7 = *(a1 + 32);
    if (v5)
    {
      v8 = [(PHSearchQueryResult *)v6 initWithSearchQuery:v7];
    }

    else
    {
      LOBYTE(v28) = *(a1 + 153);
      v8 = [(PHSearchQueryResult *)v6 initWithSearchQuery:v7 searchResults:*(a1 + 64) unfilteredAssetSearchResults:*(a1 + 72) rankedAssetSearchResults:*(a1 + 80) rankedCollectionSearchResults:*(a1 + 88) searchSuggestions:v4 queryMatchDetails:*(a1 + 96) annotatedQueryString:*(a1 + 56) queryStringReceivedFromSpotlight:*(a1 + 104) isUnsafeQuery:v28];
    }

    v13 = *(*(a1 + 128) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v8;
  }

  else
  {
    v9 = [v3 isCancelled];
    v10 = [PHSearchQueryResult alloc];
    v11 = *(a1 + 32);
    if (v9)
    {
      v12 = [(PHSearchQueryResult *)v10 initWithSearchQuery:v11];
    }

    else
    {
      LOBYTE(v28) = *(a1 + 153);
      v12 = [(PHSearchQueryResult *)v10 initWithSearchQuery:v11 searchResults:*(a1 + 64) unfilteredAssetSearchResults:*(a1 + 72) rankedAssetSearchResults:*(a1 + 80) rankedCollectionSearchResults:*(a1 + 88) searchSuggestions:MEMORY[0x1E695E0F0] queryMatchDetails:*(a1 + 96) annotatedQueryString:*(a1 + 56) queryStringReceivedFromSpotlight:*(a1 + 104) isUnsafeQuery:v28];
    }

    v15 = *(*(a1 + 128) + 8);
    v4 = *(v15 + 40);
    *(v15 + 40) = v12;
  }

  v16 = [MEMORY[0x1E695DF00] now];
  [*(a1 + 32) setEndDate:v16];

  v17 = [*(a1 + 32) endDate];
  v18 = [*(a1 + 32) startDate];
  [v17 timeIntervalSinceDate:v18];
  v20 = v19;

  v21 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 144))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", *(a1 + 144), *(a1 + 148)];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", *(a1 + 148), v27];
    }
    v22 = ;
    v23 = *(a1 + 112);
    v24 = *(a1 + 136);
    v25 = *(*(*(a1 + 128) + 8) + 40);
    *buf = 138544386;
    v30 = v22;
    v31 = 2050;
    v32 = v20;
    v33 = 2050;
    v34 = v24;
    v35 = 2112;
    v36 = v23;
    v37 = 2112;
    v38 = v25;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Query completed in %{public}0.4fs, with status: %{public}tu, error: %@, result: %@", buf, 0x34u);
  }

  return (*(*(a1 + 120) + 16))();
}

@end