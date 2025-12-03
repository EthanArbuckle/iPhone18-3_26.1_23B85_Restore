@interface PHSearchResultProcessor
+ (id)_embeddingLookupIdentifiersForMatchedEmbeddingIDs:(id)ds assetEmbeddingIds:(id)ids;
+ (id)searchResultsFromAssetUUIDs:(id)ds;
+ (unint64_t)_searchResultTypeForSpotlightSearchableItem:(id)item;
- ($94F468A8D4C62B317260615823C2B210)embeddingThresholds;
- (BOOL)_isSyndicationLibrary;
- (PHSearchResultProcessor)initWithSearchQueryOptions:(id)options scopedUUIDs:(id)ds photoLibrary:(id)library;
- (id)_collectionResultsFromAssetResultsForQuery:(id)query;
- (id)_collectionResultsFromAssetResultsForResultType:(unint64_t)type query:(id)query;
- (id)_matchTypeFilteredResultsForResults:(id)results query:(id)query;
- (id)_popResultsFromResults:(id)results popCount:(unint64_t)count;
- (id)_rankSortedAssetSearchResultsFromResults:(id)results maxResults:(unint64_t)maxResults query:(id)query;
- (id)_rankSortedCollectionSearchResultsFromResults:(id)results maxResults:(unint64_t)maxResults query:(id)query;
- (void)_finalizePhotosResultsForQuery:(id)query resultHandler:(id)handler;
- (void)_finalizeSyndicationResultsForQuery:(id)query resultHandler:(id)handler;
- (void)_processSearchableItemForPhotosLibrary:(id)library;
- (void)_processSearchableItemForSyndicationLibrary:(id)library;
- (void)_processSpotlightItem:(id)item;
- (void)finalizeResultsForQuery:(id)query resultHandler:(id)handler;
- (void)processSpotlightComputedAttribute:(id)attribute values:(id)values;
- (void)processSpotlightItems:(id)items;
- (void)setSpotlightAttributedQuery:(id)query;
@end

@implementation PHSearchResultProcessor

- ($94F468A8D4C62B317260615823C2B210)embeddingThresholds
{
  highPrecision = self->_embeddingThresholds.highPrecision;
  veryHighPrecision = self->_embeddingThresholds.veryHighPrecision;
  result.var1 = veryHighPrecision;
  result.var0 = highPrecision;
  return result;
}

- (BOOL)_isSyndicationLibrary
{
  photoLibrary = [(PHSearchResultProcessor *)self photoLibrary];
  v3 = [PHSearchUtility isSyndicationLibrary:photoLibrary];

  return v3;
}

- (id)_popResultsFromResults:(id)results popCount:(unint64_t)count
{
  resultsCopy = results;
  v6 = [resultsCopy count];
  if (v6 < count)
  {
    count = v6;
  }

  v7 = [resultsCopy subarrayWithRange:{0, count}];
  [resultsCopy removeObjectsInRange:{0, count}];

  return v7;
}

- (id)_rankSortedCollectionSearchResultsFromResults:(id)results maxResults:(unint64_t)maxResults query:(id)query
{
  v82[4] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  queryCopy = query;
  v7 = PLPhotosSearchGetLog();
  v8 = os_signpost_id_generate(v7);

  v9 = v7;
  v10 = v9;
  spid = v8;
  v52 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLSearchBackendQueryCollectionRanking", byte_19CB567AE, buf, 2u);
  }

  v53 = v10;

  if ([resultsCopy count])
  {
    v51 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"collectionScore" ascending:0];
    v50 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"l2Score" ascending:0];
    v49 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"l1Score" ascending:0];
    v48 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
    v82[0] = v51;
    v82[1] = v50;
    v82[2] = v49;
    v82[3] = v48;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
    v12 = [resultsCopy sortedArrayUsingDescriptors:v11];

    if ([v12 count] <= maxResults)
    {
      v13 = v12;
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:maxResults];
      v59 = objc_opt_new();
      v58 = objc_opt_new();
      v61 = objc_opt_new();
      v60 = objc_opt_new();
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v70 objects:v81 count:16];
      if (v15)
      {
        v16 = *v71;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v71 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v70 + 1) + 8 * i);
            type = [v18 type];
            if (type > 2)
            {
              if (type == 3)
              {
                v21 = v58;
LABEL_23:
                [v21 addObject:v18];
                continue;
              }

              v21 = v61;
              if (type == 4)
              {
                goto LABEL_23;
              }

              v21 = v60;
              if (type == 5)
              {
                goto LABEL_23;
              }
            }

            else if (type >= 2)
            {
              v21 = v59;
              if (type == 2)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v20 = PLSearchBackendResultProcessingGetLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v75 = v18;
                _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Unexpected result type found during Top Collections ranking: %@", buf, 0xCu);
              }
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v70 objects:v81 count:16];
        }

        while (v15);
      }

      v80[0] = v59;
      v80[1] = v58;
      v80[2] = v60;
      v80[3] = v61;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];
      v23 = [v59 count];
      v57 = [v58 count];
      v46 = [v60 count];
      v45 = [v61 count];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v66 objects:v79 count:16];
      if (v25)
      {
        v26 = *v67;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v67 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = [(PHSearchResultProcessor *)self _popResultsFromResults:*(*(&v66 + 1) + 8 * j) popCount:(maxResults * 0.2)];
            [v13 addObjectsFromArray:v28];
          }

          v25 = [v24 countByEnumeratingWithState:&v66 objects:v79 count:16];
        }

        while (v25);
      }

      if (v57 + v23 + v46 + v45 >= maxResults)
      {
        maxResultsCopy = maxResults;
      }

      else
      {
        maxResultsCopy = v57 + v23 + v46 + v45;
      }

      while ([v13 count] < maxResultsCopy)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v30 = v24;
        v31 = [v30 countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (v31)
        {
          v32 = *v63;
LABEL_39:
          v33 = 0;
          while (1)
          {
            if (*v63 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = [(PHSearchResultProcessor *)self _popResultsFromResults:*(*(&v62 + 1) + 8 * v33) popCount:1];
            [v13 addObjectsFromArray:v34];

            if ([v13 count] >= maxResultsCopy)
            {
              break;
            }

            if (v31 == ++v33)
            {
              v31 = [v30 countByEnumeratingWithState:&v62 objects:v78 count:16];
              if (v31)
              {
                goto LABEL_39;
              }

              break;
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v35 = PFMap();
  v36 = PLSearchBackendResultProcessingGetLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    if ([queryCopy batchIdentifier])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier")];
    }
    v37 = ;
    v38 = [v35 count];
    *buf = 138543874;
    *v75 = v37;
    *&v75[8] = 2048;
    *v76 = v38;
    *&v76[8] = 2114;
    v77 = v35;
    _os_log_impl(&dword_19C86F000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ Ranked collections (%tu): %{public}@", buf, 0x20u);
  }

  v39 = v53;
  v40 = v39;
  if (v52 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v39))
  {
    queryIdentifier = [queryCopy queryIdentifier];
    batchIdentifier = [queryCopy batchIdentifier];
    v43 = [resultsCopy count];
    *buf = 67109632;
    *v75 = queryIdentifier;
    *&v75[4] = 1024;
    *&v75[6] = batchIdentifier;
    *v76 = 2048;
    *&v76[2] = v43;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v40, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchBackendQueryCollectionRanking", "Query: %d, Batch: %d, CollectionResults: %tu", buf, 0x18u);
  }

  return v13;
}

- (id)_rankSortedAssetSearchResultsFromResults:(id)results maxResults:(unint64_t)maxResults query:(id)query
{
  v35[3] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  queryCopy = query;
  v9 = PLPhotosSearchGetLog();
  v10 = os_signpost_id_generate(v9);

  v11 = v9;
  v12 = v11;
  spid = v10;
  v13 = v10 - 1;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PLSearchBackendQueryAssetRanking", byte_19CB567AE, buf, 2u);
  }

  if ([resultsCopy count])
  {
    v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"l2Score" ascending:0];
    v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"l1Score" ascending:0];
    v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
    v35[0] = v14;
    v35[1] = v15;
    v35[2] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    v18 = [resultsCopy sortedArrayUsingDescriptors:v17];

    if ([v18 count] > maxResults)
    {
      v19 = [v18 subarrayWithRange:{0, maxResults}];

      v18 = v19;
    }
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v20 = PFMap();
  v21 = PLSearchBackendResultProcessingGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if ([queryCopy batchIdentifier])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier")];
    }
    v22 = ;
    v23 = [v20 count];
    *buf = 138543874;
    *v32 = v22;
    *&v32[8] = 2048;
    *v33 = v23;
    *&v33[8] = 2114;
    v34 = v20;
    _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Ranked assets (%tu): %{public}@", buf, 0x20u);
  }

  v24 = v12;
  v25 = v24;
  if (v13 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v24))
  {
    queryIdentifier = [queryCopy queryIdentifier];
    batchIdentifier = [queryCopy batchIdentifier];
    v28 = [resultsCopy count];
    *buf = 67109632;
    *v32 = queryIdentifier;
    *&v32[4] = 1024;
    *&v32[6] = batchIdentifier;
    *v33 = 2048;
    *&v33[2] = v28;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v25, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchBackendQueryAssetRanking", "Query: %d, Batch: %d, AssetResults: %tu", buf, 0x18u);
  }

  return v18;
}

- (id)_matchTypeFilteredResultsForResults:(id)results query:(id)query
{
  v85 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  queryCopy = query;
  [(PHSearchResultProcessor *)self embeddingThresholds];
  v9 = v8;
  [(PHSearchResultProcessor *)self embeddingThresholds];
  v11 = v10;
  if ([resultsCopy count])
  {
    searchOptions = [queryCopy searchOptions];
    matchType = [searchOptions matchType];
    v14 = matchType;
    if (matchType > 3)
    {
      v15 = @"Unknown";
    }

    else
    {
      v15 = off_1E75A4368[matchType];
    }

    v17 = v15;
    v18 = v17;
    if (v14 == 3 || !v14)
    {
      v19 = PLSearchBackendResultProcessingGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if ([queryCopy batchIdentifier])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier"), v54];
        }
        v36 = ;
        *buf = 138543618;
        v71 = v36;
        v72 = 2112;
        v73 = v18;
        _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Returning results of all match types for the query due to match type of: %@.", buf, 0x16u);
      }

      v37 = resultsCopy;
      goto LABEL_78;
    }

    v57 = v17;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([searchOptions enableEmbeddingOnlyResultsInExactMatches])
    {
      v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v64 = 0;
    }

    v58 = queryCopy;
    if ([searchOptions enableEmbeddingOnlyResultsInExactMatches])
    {
      v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v59 = 0;
    }

    v68 = 0u;
    v69 = 0u;
    v21 = fmaxf(v9, v11) <= 0.0;
    v66 = 0u;
    v67 = 0u;
    obj = resultsCopy;
    v22 = [obj countByEnumeratingWithState:&v66 objects:v84 count:16];
    if (v22)
    {
      v62 = 0;
      v63 = v20;
      v55 = searchOptions;
      v56 = resultsCopy;
      v23 = 0;
      v60 = v14;
      v61 = 0;
      v24 = *v67;
      v25 = v14 - 1;
      while (1)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v66 + 1) + 8 * i);
          isExclusivelyExactOCRTextMatch = [v27 isExclusivelyExactOCRTextMatch];
          matchType2 = [v27 matchType];
          if (matchType2 == 2)
          {
            if (v60 == 2)
            {
              [v63 addObject:v27];
              ++v62;
              goto LABEL_37;
            }
          }

          else if (matchType2 == 1 && v25 <= 1)
          {
            [v63 addObject:v27];
            ++v61;
            goto LABEL_37;
          }

          embeddingDistances = [v27 embeddingDistances];
          firstObject = [embeddingDistances firstObject];

          if (firstObject != 0 && !v21)
          {
            [firstObject doubleValue];
            v34 = v64;
            if (v33 <= v11 || (v34 = v59, v33 <= v9))
            {
              [v34 addObject:v27];
            }
          }

LABEL_37:
          v23 += isExclusivelyExactOCRTextMatch;
        }

        v22 = [obj countByEnumeratingWithState:&v66 objects:v84 count:16];
        if (!v22)
        {
          v22 = v62;
          v35 = v61 == 0;
          searchOptions = v55;
          resultsCopy = v56;
          v20 = v63;
          goto LABEL_44;
        }
      }
    }

    v23 = 0;
    v35 = 1;
LABEL_44:

    queryCopy = v58;
    if ([v20 count])
    {
      if ([v20 count] == v23)
      {
        v38 = PLSearchBackendResultProcessingGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          if ([v58 batchIdentifier])
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(v58, "batchIdentifier"), objc_msgSend(v58, "queryIdentifier")];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(v58, "queryIdentifier"), v54];
          }
          v44 = ;
          *buf = 138543618;
          v71 = v44;
          v72 = 2048;
          v73 = v23;
          v45 = "%{public}@ All %tu exact match results were for OCR results: returning all results.";
          v46 = v38;
          v47 = 22;
LABEL_75:
          _os_log_impl(&dword_19C86F000, v46, OS_LOG_TYPE_DEFAULT, v45, buf, v47);
        }
      }

      else
      {
        if (!v23 || [v20 count] != &v23[v22])
        {
          v40 = v64;
          if (!v35 || (v40 = v59, v22))
          {
            [v20 addObjectsFromArray:v40];
          }

          v38 = PLSearchBackendResultProcessingGetLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v20;
            v42 = searchOptions;
            if ([v58 batchIdentifier])
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(v58, "batchIdentifier"), objc_msgSend(v58, "queryIdentifier")];
            }

            else
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(v58, "queryIdentifier"), v54];
            }
            v48 = ;
            v49 = [v41 count];
            v50 = [obj count];
            v51 = [v64 count];
            v52 = [v59 count];
            *buf = 138544898;
            v71 = v48;
            v72 = 2048;
            v73 = v49;
            v74 = 2048;
            v75 = v50;
            v76 = 2048;
            v77 = v51;
            v78 = 2048;
            v79 = v11;
            v80 = 2048;
            v81 = v52;
            v82 = 2048;
            v83 = v9;
            _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ Filtered down to %tu asset results from %tu asset results returned from Spotlight. With %tu veryHighPrecision (%f) embedding results and %tu highPrecision (%f) embedding results.", buf, 0x48u);

            obj = v41;
            searchOptions = v42;
            v20 = v41;
          }

          else
          {
            obj = v20;
          }

          goto LABEL_76;
        }

        v38 = PLSearchBackendResultProcessingGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          if ([v58 batchIdentifier])
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(v58, "batchIdentifier"), objc_msgSend(v58, "queryIdentifier")];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(v58, "queryIdentifier"), v54];
          }
          v44 = ;
          *buf = 138543874;
          v71 = v44;
          v72 = 2048;
          v73 = v23;
          v74 = 2048;
          v75 = v22;
          v45 = "%{public}@ All %tu exact match results were for OCR or %tu hybrid boosted results: returning all results.";
          v46 = v38;
          v47 = 32;
          goto LABEL_75;
        }
      }
    }

    else
    {
      v38 = PLSearchBackendResultProcessingGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        if ([v58 batchIdentifier])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(v58, "batchIdentifier"), objc_msgSend(v58, "queryIdentifier")];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(v58, "queryIdentifier"), v54];
        }
        v43 = ;
        *buf = 138543618;
        v71 = v43;
        v72 = 2112;
        v18 = v57;
        v73 = v57;
        _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ No filtered results found for match type: %@, returning all results.", buf, 0x16u);

        goto LABEL_77;
      }
    }

LABEL_76:
    v18 = v57;
LABEL_77:

    v37 = obj;
LABEL_78:

    goto LABEL_79;
  }

  v16 = PLSearchBackendResultProcessingGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if ([queryCopy batchIdentifier])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier"), v54];
    }
    v39 = ;
    *buf = 138543362;
    v71 = v39;
    _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ No results available to filter by match type.", buf, 0xCu);
  }

  v37 = resultsCopy;
LABEL_79:

  return v37;
}

- (id)_collectionResultsFromAssetResultsForResultType:(unint64_t)type query:(id)query
{
  v64 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  queryOptions = [(PHSearchResultProcessor *)self queryOptions];
  [queryOptions collectionThreshold];
  v10 = v9;

  v11 = 0;
  v12 = MEMORY[0x1E695E0F0];
  typeCopy = type;
  if (type <= 2)
  {
    if (type < 2)
    {
      goto LABEL_42;
    }

    if (type != 2)
    {
      goto LABEL_11;
    }

    assetMatchedAlbumUUIDs = [(PHSearchResultProcessor *)self assetMatchedAlbumUUIDs];
    goto LABEL_10;
  }

  switch(type)
  {
    case 3uLL:
      goto LABEL_42;
    case 4uLL:
      assetMatchedAlbumUUIDs = [(PHSearchResultProcessor *)self assetMatchedMemoryUUIDs];
      goto LABEL_10;
    case 5uLL:
      assetMatchedAlbumUUIDs = [(PHSearchResultProcessor *)self assetMatchedHighlightUUIDs];
LABEL_10:
      v11 = assetMatchedAlbumUUIDs;
      break;
  }

LABEL_11:
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = v11;
  typeCopy2 = type;
  v46 = [v14 countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v46)
  {
    v45 = *v48;
    selfCopy = self;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v48 != v45)
        {
          objc_enumerationMutation(v14);
        }

        v17 = *(*(&v47 + 1) + 8 * i);
        assetCountByCollectionUUID = [(PHSearchResultProcessor *)self assetCountByCollectionUUID];
        v19 = [assetCountByCollectionUUID objectForKeyedSubscript:v17];
        unsignedIntegerValue = [v19 unsignedIntegerValue];

        v21 = [v14 countForObject:v17];
        v22 = v21 / unsignedIntegerValue;
        if (v22 >= v10)
        {
          v26 = [PHSearchResult alloc];
          v27 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
          v28 = [(PHSearchResult *)v26 initWithSearchResultType:typeCopy2 uuid:v17 retrievalType:0 hasOCRTextMatch:0 isSensitiveLocation:0 embeddingDistances:0 l1Score:0 l2Score:0 collectionScore:v27 creationDate:0 addedDate:0 matchedThumbnailIdentifier:0 bundleIdentifier:0];

          [v7 addObject:v28];
        }

        else
        {
          v23 = v21;
          v24 = v14;
          v25 = PLSearchBackendResultProcessingGetLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            if ([queryCopy batchIdentifier])
            {
              typeCopy2 = typeCopy;
              [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
            }

            else
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier"), v41];
            }
            v29 = ;
            *buf = 138544642;
            v52 = v29;
            v53 = 2112;
            v54 = v17;
            v55 = 2048;
            v56 = v22;
            v57 = 2048;
            v58 = v10;
            v59 = 2048;
            v60 = unsignedIntegerValue;
            v61 = 2048;
            v62 = v23;
            _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_DEBUG, "%{public}@ Skipping collection below threshold. Collection: %@, confidence: %f, threshold: %f, collectionAssetCount: %tu, collectionAssetHitCount: %tu", buf, 0x3Eu);
          }

          [v44 addObject:v17];
          v14 = v24;
          self = selfCopy;
        }
      }

      v46 = [v14 countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v46);
  }

  if ([v44 count])
  {
    v30 = PLSearchBackendResultProcessingGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      if ([queryCopy batchIdentifier])
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier"), v41];
      }
      v31 = ;
      v32 = [v44 count];
      *buf = 138544130;
      v52 = v31;
      v53 = 2048;
      v54 = v32;
      v55 = 2048;
      v56 = *&typeCopy2;
      v57 = 2112;
      v58 = *&v44;
      _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %tu collections of type %tu below threshold. Collection UUIDs: %@", buf, 0x2Au);
    }
  }

  v33 = PLSearchBackendResultProcessingGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    if ([queryCopy batchIdentifier])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier"), v41];
    }
    v34 = ;
    v35 = [v7 count];
    if (typeCopy2 > 5)
    {
      v37 = queryCopy;
      v38 = @"Unknown";
    }

    else
    {
      v36 = typeCopy2;
      v37 = queryCopy;
      v38 = off_1E75A4318[v36];
    }

    v39 = v38;
    *buf = 138543874;
    v52 = v34;
    v53 = 2048;
    v54 = v35;
    v55 = 2112;
    v56 = *&v39;
    _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Added %tu %@ collections derived from assets.", buf, 0x20u);

    queryCopy = v37;
  }

  v12 = v7;
LABEL_42:

  return v12;
}

- (id)_collectionResultsFromAssetResultsForQuery:(id)query
{
  v4 = MEMORY[0x1E695DF70];
  queryCopy = query;
  v6 = objc_alloc_init(v4);
  v7 = [(PHSearchResultProcessor *)self _collectionResultsFromAssetResultsForResultType:2 query:queryCopy];
  [v6 addObjectsFromArray:v7];

  v8 = [(PHSearchResultProcessor *)self _collectionResultsFromAssetResultsForResultType:4 query:queryCopy];
  [v6 addObjectsFromArray:v8];

  v9 = [(PHSearchResultProcessor *)self _collectionResultsFromAssetResultsForResultType:5 query:queryCopy];

  [v6 addObjectsFromArray:v9];

  return v6;
}

- (void)_processSearchableItemForSyndicationLibrary:(id)library
{
  v36 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  bundleID = [libraryCopy bundleID];
  uniqueIdentifier = [libraryCopy uniqueIdentifier];
  if ([bundleID length])
  {
    queryOptions = [(PHSearchResultProcessor *)self queryOptions];
    v8 = +[PHSearchUtility syndicationLibraryBundleIdentifiers];
    bundleID2 = [libraryCopy bundleID];
    v10 = [v8 containsObject:bundleID2];

    if (v10)
    {
      attributeSet = [libraryCopy attributeSet];
      photosResultType = [attributeSet photosResultType];
      v13 = [photosResultType isEqual:*MEMORY[0x1E69BF0F8]];

      if ((v13 & 1) == 0)
      {
        v28 = v8;
        attributeSet2 = [libraryCopy attributeSet];
        v27 = [attributeSet2 attributeForKey:*MEMORY[0x1E6964D78]];
        v31 = [attributeSet2 attributeForKey:*MEMORY[0x1E6964DB8]];
        v15 = [attributeSet2 attributeForKey:*MEMORY[0x1E6964DC0]];
        photosContentCreationDate = [attributeSet2 photosContentCreationDate];
        photosContentAddedDate = [attributeSet2 photosContentAddedDate];
        v18 = [attributeSet2 attributeForKey:*MEMORY[0x1E6964DB0]];
        unsignedIntegerValue = [v18 unsignedIntegerValue];

        v29 = photosContentAddedDate;
        v30 = photosContentCreationDate;
        v25 = photosContentAddedDate;
        v19 = v31;
        v20 = [[PHSearchResult alloc] initWithSearchResultType:1 uuid:uniqueIdentifier retrievalType:unsignedIntegerValue hasOCRTextMatch:0 isSensitiveLocation:0 embeddingDistances:v27 l1Score:v31 l2Score:v15 collectionScore:0 creationDate:photosContentCreationDate addedDate:v25 matchedThumbnailIdentifier:0 bundleIdentifier:bundleID];
        if ([queryOptions maxRankedAssetSearchResults]>= 1 && v15)
        {
          topHitAssetSearchResultCandidates = [(PHSearchResultProcessor *)self topHitAssetSearchResultCandidates];
          [topHitAssetSearchResultCandidates addObject:v20];

          v19 = v31;
        }

        unfilteredAssetSearchResults = [(PHSearchResultProcessor *)self unfilteredAssetSearchResults];
        [unfilteredAssetSearchResults addObject:v20];

        v8 = v28;
      }
    }

    else
    {
      v23 = PLSearchBackendResultProcessingGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        bundleID3 = [libraryCopy bundleID];
        *buf = 138412546;
        v33 = bundleID3;
        v34 = 2112;
        v35 = uniqueIdentifier;
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Invalid syndication bundle identifier (%@) for SearchableItem: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    queryOptions = PLSearchBackendResultProcessingGetLog();
    if (os_log_type_enabled(queryOptions, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = uniqueIdentifier;
      _os_log_impl(&dword_19C86F000, queryOptions, OS_LOG_TYPE_ERROR, "Missing syndication bundle identifier for SearchableItem: %@, skipping", buf, 0xCu);
    }
  }
}

- (void)_processSearchableItemForPhotosLibrary:(id)library
{
  v81 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  queryOptions = [(PHSearchResultProcessor *)self queryOptions];
  uniqueIdentifier = [libraryCopy uniqueIdentifier];
  scopedUUIDs = [(PHSearchResultProcessor *)self scopedUUIDs];
  v8 = scopedUUIDs;
  if (!scopedUUIDs || [scopedUUIDs containsObject:uniqueIdentifier])
  {
    domainIdentifier = [libraryCopy domainIdentifier];
    v10 = [domainIdentifier isEqualToString:*MEMORY[0x1E69BF0C8]];

    if ((v10 & 1) == 0)
    {
      attributeSet2 = PLSearchBackendResultProcessingGetLog();
      if (os_log_type_enabled(attributeSet2, OS_LOG_TYPE_ERROR))
      {
        domainIdentifier2 = [libraryCopy domainIdentifier];
        *buf = 138412546;
        v78 = domainIdentifier2;
        v79 = 2112;
        v80 = uniqueIdentifier;
        _os_log_impl(&dword_19C86F000, attributeSet2, OS_LOG_TYPE_ERROR, "Invalid domain identifier (%@) for SearchableItem: %@", buf, 0x16u);
      }

      goto LABEL_11;
    }

    attributeSet = [libraryCopy attributeSet];
    photosResultType = [attributeSet photosResultType];
    v13 = [photosResultType isEqual:*MEMORY[0x1E69BF0F8]];

    if ((v13 & 1) == 0)
    {
      v14 = [objc_opt_class() _searchResultTypeForSpotlightSearchableItem:libraryCopy];
      v15 = v14;
      if (v14 == 4)
      {
        if (!PLIsFeaturedContentAllowed())
        {
          goto LABEL_12;
        }
      }

      else if (!v14)
      {
        attributeSet2 = PLSearchBackendResultProcessingGetLog();
        if (os_log_type_enabled(attributeSet2, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v78 = 0;
          v79 = 2112;
          v80 = uniqueIdentifier;
          _os_log_impl(&dword_19C86F000, attributeSet2, OS_LOG_TYPE_ERROR, "Invalid result type (%tu) for SearchableItem: %@", buf, 0x16u);
        }

        goto LABEL_11;
      }

      searchQueryResultTypes = [queryOptions searchQueryResultTypes];
      if (v15 != 1 || (searchQueryResultTypes & 1) != 0)
      {
        v19 = [PHSearchResult isCollectionResultType:v15];
        searchQueryResultTypes2 = [queryOptions searchQueryResultTypes];
        v21 = v19 ? &unk_1F102C9E0 : 0;
        if (!v19 || (searchQueryResultTypes2 & 2) != 0)
        {
          v59 = searchQueryResultTypes2;
          v58 = v19;
          attributeSet2 = [libraryCopy attributeSet];
          v69 = [attributeSet2 attributeForKey:*MEMORY[0x1E6964D78]];
          photosSensitiveLocationKey = [(PHSearchResultProcessor *)self photosSensitiveLocationKey];
          v23 = [attributeSet2 valueForCustomKey:photosSensitiveLocationKey];
          bOOLValue = [v23 BOOLValue];

          v68 = [attributeSet2 attributeForKey:*MEMORY[0x1E6964DB8]];
          v70 = [attributeSet2 attributeForKey:*MEMORY[0x1E6964DC0]];
          v64 = v21;
          photosContentCreationDate = [attributeSet2 photosContentCreationDate];
          photosContentAddedDate = [attributeSet2 photosContentAddedDate];
          v24 = [attributeSet2 attributeForKey:*MEMORY[0x1E6964DC8]];
          bOOLValue2 = [v24 BOOLValue];

          v25 = [attributeSet2 attributeForKey:*MEMORY[0x1E6964DB0]];
          unsignedIntegerValue = [v25 unsignedIntegerValue];

          if (v15 != 1)
          {
            goto LABEL_29;
          }

          if ((v59 & 2) != 0)
          {
            photosAlbumIdentifiersKey = [(PHSearchResultProcessor *)self photosAlbumIdentifiersKey];
            v56 = [attributeSet2 valueForCustomKey:photosAlbumIdentifiersKey];

            photosAlbumAssetCountsKey = [(PHSearchResultProcessor *)self photosAlbumAssetCountsKey];
            v28 = [attributeSet2 valueForCustomKey:photosAlbumAssetCountsKey];

            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __66__PHSearchResultProcessor__processSearchableItemForPhotosLibrary___block_invoke;
            v75[3] = &unk_1E75A5B20;
            v75[4] = self;
            v76 = v28;
            v60 = v28;
            [v56 enumerateObjectsUsingBlock:v75];
            photosHighlightIdentifiersKey = [(PHSearchResultProcessor *)self photosHighlightIdentifiersKey];
            v53 = [attributeSet2 valueForCustomKey:photosHighlightIdentifiersKey];

            photosHighlightAssetCountsKey = [(PHSearchResultProcessor *)self photosHighlightAssetCountsKey];
            v31 = [attributeSet2 valueForCustomKey:photosHighlightAssetCountsKey];

            v73[0] = MEMORY[0x1E69E9820];
            v73[1] = 3221225472;
            v73[2] = __66__PHSearchResultProcessor__processSearchableItemForPhotosLibrary___block_invoke_2;
            v73[3] = &unk_1E75A5B20;
            v73[4] = self;
            v74 = v31;
            v54 = v31;
            [v53 enumerateObjectsUsingBlock:v73];
            photosMemoryIdentifiersKey = [(PHSearchResultProcessor *)self photosMemoryIdentifiersKey];
            v33 = [attributeSet2 valueForCustomKey:photosMemoryIdentifiersKey];

            photosMemoryAssetCountsKey = [(PHSearchResultProcessor *)self photosMemoryAssetCountsKey];
            v35 = [attributeSet2 valueForCustomKey:photosMemoryAssetCountsKey];

            v71[0] = MEMORY[0x1E69E9820];
            v71[1] = 3221225472;
            v71[2] = __66__PHSearchResultProcessor__processSearchableItemForPhotosLibrary___block_invoke_3;
            v71[3] = &unk_1E75A5B20;
            v71[4] = self;
            v72 = v35;
            v36 = v35;
            [v33 enumerateObjectsUsingBlock:v71];
          }

          if ([queryOptions fetchContextualThumbnails])
          {
            matchedLookupIdentifiers = [(PHSearchResultProcessor *)self matchedLookupIdentifiers];
            allObjects = [matchedLookupIdentifiers allObjects];

            attributeDictionary = [attributeSet2 attributeDictionary];
            v40 = [attributeDictionary objectForKey:*MEMORY[0x1E6964D80]];

            [attributeSet2 photoEmbeddingVectorIds];
            v57 = v61 = v40;
            v41 = [objc_opt_class() _embeddingLookupIdentifiersForMatchedEmbeddingIDs:v40 assetEmbeddingIds:v57];
            v55 = v41;
            if ([v41 count])
            {
              v42 = [allObjects arrayByAddingObjectsFromArray:v41];

              allObjects = v42;
            }

            v43 = [attributeSet2 attributeForKey:*MEMORY[0x1E69BF0C0]];
            if ([v43 length])
            {
              v44 = [MEMORY[0x1E69BE7C8] earliestThumbnailIdentifierForLookupIdentifiers:allObjects thumbnailMapData:v43];
            }

            else
            {
              v44 = 0;
            }
          }

          else
          {
LABEL_29:
            v44 = 0;
          }

          v45 = [PHSearchResult alloc];
          bundleID = [libraryCopy bundleID];
          v47 = [(PHSearchResult *)v45 initWithSearchResultType:v15 uuid:uniqueIdentifier retrievalType:unsignedIntegerValue hasOCRTextMatch:bOOLValue2 isSensitiveLocation:bOOLValue embeddingDistances:v69 l1Score:v68 l2Score:v70 collectionScore:v64 creationDate:photosContentCreationDate addedDate:photosContentAddedDate matchedThumbnailIdentifier:v44 bundleIdentifier:bundleID];

          if (v15 == 1)
          {
            if (-[PHSearchResult isEligibleForSuggestions](v47, "isEligibleForSuggestions") || [queryOptions disableSemanticSearch])
            {
              assetUUIDsForSuggestions = [(PHSearchResultProcessor *)self assetUUIDsForSuggestions];
              [assetUUIDsForSuggestions addObject:uniqueIdentifier];
            }

            if ([queryOptions maxRankedAssetSearchResults] >= 1 && v70)
            {
              topHitAssetSearchResultCandidates = [(PHSearchResultProcessor *)self topHitAssetSearchResultCandidates];
              [topHitAssetSearchResultCandidates addObject:v47];
            }

            unfilteredAssetSearchResults = [(PHSearchResultProcessor *)self unfilteredAssetSearchResults];
          }

          else
          {
            if (!v58)
            {
LABEL_45:

LABEL_11:
              goto LABEL_12;
            }

            if ([(PHSearchResult *)v47 isEligibleForSuggestions])
            {
              collectionUUIDsForSuggestions = [(PHSearchResultProcessor *)self collectionUUIDsForSuggestions];
              [collectionUUIDsForSuggestions addObject:uniqueIdentifier];
            }

            unfilteredAssetSearchResults = [(PHSearchResultProcessor *)self collectionResults];
          }

          v52 = unfilteredAssetSearchResults;
          [unfilteredAssetSearchResults addObject:v47];

          goto LABEL_45;
        }
      }
    }
  }

LABEL_12:
}

void __66__PHSearchResultProcessor__processSearchableItemForPhotosLibrary___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 assetMatchedAlbumUUIDs];
  [v7 addObject:v6];

  v9 = [*(a1 + 40) _pl_safeObjectAtIndex:a3];
  v8 = [*(a1 + 32) assetCountByCollectionUUID];
  [v8 setObject:v9 forKeyedSubscript:v6];
}

void __66__PHSearchResultProcessor__processSearchableItemForPhotosLibrary___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 assetMatchedHighlightUUIDs];
  [v7 addObject:v6];

  v9 = [*(a1 + 40) _pl_safeObjectAtIndex:a3];
  v8 = [*(a1 + 32) assetCountByCollectionUUID];
  [v8 setObject:v9 forKeyedSubscript:v6];
}

void __66__PHSearchResultProcessor__processSearchableItemForPhotosLibrary___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 assetMatchedMemoryUUIDs];
  [v7 addObject:v6];

  v9 = [*(a1 + 40) _pl_safeObjectAtIndex:a3];
  v8 = [*(a1 + 32) assetCountByCollectionUUID];
  [v8 setObject:v9 forKeyedSubscript:v6];
}

- (void)_processSpotlightItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchResultProcessor.m" lineNumber:343 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];
  }

  if ([(PHSearchResultProcessor *)self _isSyndicationLibrary])
  {
    [(PHSearchResultProcessor *)self _processSearchableItemForSyndicationLibrary:itemCopy];
  }

  else
  {
    [(PHSearchResultProcessor *)self _processSearchableItemForPhotosLibrary:itemCopy];
  }
}

- (void)_finalizeSyndicationResultsForQuery:(id)query resultHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  handlerCopy = handler;
  queryOptions = [(PHSearchResultProcessor *)self queryOptions];
  queryStringReceivedFromSpotlight = [(PHSearchResultProcessor *)self queryStringReceivedFromSpotlight];
  photoLibrary = [(PHSearchResultProcessor *)self photoLibrary];
  v11 = [PHSearchQueryAnnotation annotatedQueryStringFromSpotlightAttributedQueryString:queryStringReceivedFromSpotlight forSearchQuery:queryCopy photoLibrary:photoLibrary];

  unfilteredAssetSearchResults = [(PHSearchResultProcessor *)self unfilteredAssetSearchResults];
  sortDescriptors = [queryOptions sortDescriptors];
  v14 = [sortDescriptors count];

  if (v14)
  {
    v15 = PLSearchBackendResultProcessingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ([queryCopy batchIdentifier])
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier"), v26];
      }
      v16 = ;
      v17 = [unfilteredAssetSearchResults count];
      sortDescriptors2 = [queryOptions sortDescriptors];
      *buf = 138543874;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      v32 = 2112;
      v33 = sortDescriptors2;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Sorting %tu asset results with SortDescriptors: %@", buf, 0x20u);
    }

    sortDescriptors3 = [queryOptions sortDescriptors];
    v20 = [unfilteredAssetSearchResults sortedArrayUsingDescriptors:sortDescriptors3];

    unfilteredAssetSearchResults = v20;
  }

  topHitAssetSearchResultCandidates = [(PHSearchResultProcessor *)self topHitAssetSearchResultCandidates];
  queryOptions2 = [(PHSearchResultProcessor *)self queryOptions];
  v23 = -[PHSearchResultProcessor _rankSortedAssetSearchResultsFromResults:maxResults:query:](self, "_rankSortedAssetSearchResultsFromResults:maxResults:query:", topHitAssetSearchResultCandidates, [queryOptions2 maxRankedAssetSearchResults], queryCopy);

  unfilteredAssetSearchResults2 = [(PHSearchResultProcessor *)self unfilteredAssetSearchResults];
  queryStringReceivedFromSpotlight2 = [(PHSearchResultProcessor *)self queryStringReceivedFromSpotlight];
  isUnsafeQuery = [(PHSearchResultProcessor *)self isUnsafeQuery];
  (*(handlerCopy + 2))(handlerCopy, unfilteredAssetSearchResults, unfilteredAssetSearchResults2, v23, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], 0, v11, queryStringReceivedFromSpotlight2, isUnsafeQuery);
}

- (void)_finalizePhotosResultsForQuery:(id)query resultHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  handlerCopy = handler;
  queryOptions = [(PHSearchResultProcessor *)self queryOptions];
  queryStringReceivedFromSpotlight = [(PHSearchResultProcessor *)self queryStringReceivedFromSpotlight];
  photoLibrary = [(PHSearchResultProcessor *)self photoLibrary];
  v10 = [PHSearchQueryAnnotation annotatedQueryStringFromSpotlightAttributedQueryString:queryStringReceivedFromSpotlight forSearchQuery:queryCopy photoLibrary:photoLibrary];

  unfilteredAssetSearchResults = [(PHSearchResultProcessor *)self unfilteredAssetSearchResults];
  v12 = [(PHSearchResultProcessor *)self _matchTypeFilteredResultsForResults:unfilteredAssetSearchResults query:queryCopy];

  sortDescriptors = [queryOptions sortDescriptors];
  v14 = [sortDescriptors count];

  if (v14)
  {
    v15 = PLSearchBackendResultProcessingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ([queryCopy batchIdentifier])
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Batch: %d | Query: %d]", objc_msgSend(queryCopy, "batchIdentifier"), objc_msgSend(queryCopy, "queryIdentifier")];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"[Query: %d]", objc_msgSend(queryCopy, "queryIdentifier"), v37];
      }
      v16 = ;
      v17 = [v12 count];
      sortDescriptors2 = [queryOptions sortDescriptors];
      *buf = 138543874;
      v47 = v16;
      v48 = 2048;
      v49 = v17;
      v50 = 2112;
      v51 = sortDescriptors2;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Sorting %tu asset results with SortDescriptors: %@", buf, 0x20u);
    }

    sortDescriptors3 = [queryOptions sortDescriptors];
    v20 = [v12 sortedArrayUsingDescriptors:sortDescriptors3];

    v12 = v20;
  }

  topHitAssetSearchResultCandidates = [(PHSearchResultProcessor *)self topHitAssetSearchResultCandidates];
  v22 = [(PHSearchResultProcessor *)self _matchTypeFilteredResultsForResults:topHitAssetSearchResultCandidates query:queryCopy];

  queryOptions2 = [(PHSearchResultProcessor *)self queryOptions];
  v42 = -[PHSearchResultProcessor _rankSortedAssetSearchResultsFromResults:maxResults:query:](self, "_rankSortedAssetSearchResultsFromResults:maxResults:query:", v22, [queryOptions2 maxRankedAssetSearchResults], queryCopy);

  v24 = [(PHSearchResultProcessor *)self _collectionResultsFromAssetResultsForQuery:queryCopy];
  collectionResults = [(PHSearchResultProcessor *)self collectionResults];
  v41 = v24;
  v26 = [collectionResults arrayByAddingObjectsFromArray:v24];

  -[PHSearchResultProcessor _rankSortedCollectionSearchResultsFromResults:maxResults:query:](self, "_rankSortedCollectionSearchResultsFromResults:maxResults:query:", v26, [queryOptions maxRankedCollectionSearchResults], queryCopy);
  v40 = v39 = v26;
  v43 = v12;
  v27 = [v12 arrayByAddingObjectsFromArray:v26];
  v45 = queryOptions;
  if ([queryOptions enableQueryMatchDetails])
  {
    queryEmbedding = [(PHSearchResultProcessor *)self queryEmbedding];
    matchedPersonUUIDs = [(PHSearchResultProcessor *)self matchedPersonUUIDs];
    matchedSceneIdentifierAndTypes = [(PHSearchResultProcessor *)self matchedSceneIdentifierAndTypes];
    v31 = +[PHSearchQueryMatchDetails queryMatchDetailsForSearchResults:queryText:queryEmbedding:matchedPersonUUIDs:matchedScenes:queryId:](PHSearchQueryMatchDetails, "queryMatchDetailsForSearchResults:queryText:queryEmbedding:matchedPersonUUIDs:matchedScenes:queryId:", v27, v10, queryEmbedding, matchedPersonUUIDs, matchedSceneIdentifierAndTypes, [queryCopy queryIdentifier]);
  }

  else
  {
    v31 = 0;
  }

  v32 = v10;
  unfilteredAssetSearchResults2 = [(PHSearchResultProcessor *)self unfilteredAssetSearchResults];
  assetUUIDsForSuggestions = [(PHSearchResultProcessor *)self assetUUIDsForSuggestions];
  collectionUUIDsForSuggestions = [(PHSearchResultProcessor *)self collectionUUIDsForSuggestions];
  queryStringReceivedFromSpotlight2 = [(PHSearchResultProcessor *)self queryStringReceivedFromSpotlight];
  isUnsafeQuery = [(PHSearchResultProcessor *)self isUnsafeQuery];
  handlerCopy[2](handlerCopy, v27, unfilteredAssetSearchResults2, v42, v40, assetUUIDsForSuggestions, collectionUUIDsForSuggestions, v31, v32, queryStringReceivedFromSpotlight2, isUnsafeQuery);
}

- (void)finalizeResultsForQuery:(id)query resultHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchResultProcessor.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"resultsHandler"}];
  }

  if ([(PHSearchResultProcessor *)self _isSyndicationLibrary])
  {
    [(PHSearchResultProcessor *)self _finalizeSyndicationResultsForQuery:queryCopy resultHandler:handlerCopy];
  }

  else
  {
    [(PHSearchResultProcessor *)self _finalizePhotosResultsForQuery:queryCopy resultHandler:handlerCopy];
  }
}

- (void)processSpotlightItems:(id)items
{
  v14 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        [(PHSearchResultProcessor *)self _processSpotlightItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)processSpotlightComputedAttribute:(id)attribute values:(id)values
{
  v19 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  valuesCopy = values;
  queryOptions = [(PHSearchResultProcessor *)self queryOptions];
  fetchContextualThumbnails = [queryOptions fetchContextualThumbnails];

  if ([*MEMORY[0x1E6964818] isEqualToString:attributeCopy])
  {
    matchedPersonUUIDs = [(PHSearchResultProcessor *)self matchedPersonUUIDs];
    [matchedPersonUUIDs addObjectsFromArray:valuesCopy];

    if (fetchContextualThumbnails)
    {
      matchedLookupIdentifiers = [(PHSearchResultProcessor *)self matchedLookupIdentifiers];
      v12 = [PHSearchQueryMatchDetails lookupIdentifiersForPersonUUIDs:valuesCopy];
LABEL_7:
      v14 = v12;
      [matchedLookupIdentifiers addObjectsFromArray:v12];

LABEL_10:
    }
  }

  else
  {
    if (![*MEMORY[0x1E6963B70] isEqualToString:attributeCopy])
    {
      matchedLookupIdentifiers = PLSearchBackendResultProcessingGetLog();
      if (os_log_type_enabled(matchedLookupIdentifiers, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412546;
        v16 = attributeCopy;
        v17 = 2112;
        v18 = valuesCopy;
        _os_log_impl(&dword_19C86F000, matchedLookupIdentifiers, OS_LOG_TYPE_ERROR, "Unexpected attribute found in SpotlightComputedAttributes. Attribute: %@, values: %@", &v15, 0x16u);
      }

      goto LABEL_10;
    }

    matchedSceneIdentifierAndTypes = [(PHSearchResultProcessor *)self matchedSceneIdentifierAndTypes];
    [matchedSceneIdentifierAndTypes addObjectsFromArray:valuesCopy];

    if (fetchContextualThumbnails)
    {
      matchedLookupIdentifiers = [(PHSearchResultProcessor *)self matchedLookupIdentifiers];
      v12 = [PHSearchQueryMatchDetails lookupIdentifiersForSceneIdentifiersAndTypesTuple:valuesCopy];
      goto LABEL_7;
    }
  }
}

- (void)setSpotlightAttributedQuery:(id)query
{
  queryCopy = query;
  queryOptions = [(PHSearchResultProcessor *)self queryOptions];
  spotlightQUTypes = [queryOptions spotlightQUTypes];

  if (spotlightQUTypes == 1)
  {
    [(PHSearchResultProcessor *)self setQueryStringReceivedFromSpotlight:0];
  }

  else
  {
    query = [queryCopy query];
    [(PHSearchResultProcessor *)self setQueryStringReceivedFromSpotlight:query];
  }

  queryEmbedding = [queryCopy queryEmbedding];
  [(PHSearchResultProcessor *)self setQueryEmbedding:queryEmbedding];

  -[PHSearchResultProcessor setIsUnsafeQuery:](self, "setIsUnsafeQuery:", [queryCopy isUnsafeQuery]);
  [queryCopy highPrecisionDistanceThresh];
  v9 = v8;
  [queryCopy veryHighPrecisionDistanceThresh];
  LODWORD(v11) = v10;
  LODWORD(v12) = v9;
  [(PHSearchResultProcessor *)self setEmbeddingThresholds:v12, v11];
}

- (PHSearchResultProcessor)initWithSearchQueryOptions:(id)options scopedUUIDs:(id)ds photoLibrary:(id)library
{
  optionsCopy = options;
  dsCopy = ds;
  libraryCopy = library;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchResultProcessor.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"queryOptions"}];
  }

  v62.receiver = self;
  v62.super_class = PHSearchResultProcessor;
  v13 = [(PHSearchResultProcessor *)&v62 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queryOptions, options);
    objc_storeStrong(&v14->_scopedUUIDs, ds);
    objc_storeStrong(&v14->_photoLibrary, library);
    v14->_embeddingThresholds = 0;
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    matchedPersonUUIDs = v14->_matchedPersonUUIDs;
    v14->_matchedPersonUUIDs = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    matchedSceneIdentifierAndTypes = v14->_matchedSceneIdentifierAndTypes;
    v14->_matchedSceneIdentifierAndTypes = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    matchedLookupIdentifiers = v14->_matchedLookupIdentifiers;
    v14->_matchedLookupIdentifiers = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unfilteredAssetSearchResults = v14->_unfilteredAssetSearchResults;
    v14->_unfilteredAssetSearchResults = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    topHitAssetSearchResultCandidates = v14->_topHitAssetSearchResultCandidates;
    v14->_topHitAssetSearchResultCandidates = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    collectionResults = v14->_collectionResults;
    v14->_collectionResults = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetCountByCollectionUUID = v14->_assetCountByCollectionUUID;
    v14->_assetCountByCollectionUUID = v27;

    v29 = objc_alloc_init(MEMORY[0x1E696AB50]);
    assetMatchedAlbumUUIDs = v14->_assetMatchedAlbumUUIDs;
    v14->_assetMatchedAlbumUUIDs = v29;

    v31 = objc_alloc_init(MEMORY[0x1E696AB50]);
    assetMatchedMemoryUUIDs = v14->_assetMatchedMemoryUUIDs;
    v14->_assetMatchedMemoryUUIDs = v31;

    v33 = objc_alloc_init(MEMORY[0x1E696AB50]);
    assetMatchedHighlightUUIDs = v14->_assetMatchedHighlightUUIDs;
    v14->_assetMatchedHighlightUUIDs = v33;

    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetUUIDsForSuggestions = v14->_assetUUIDsForSuggestions;
    v14->_assetUUIDsForSuggestions = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    collectionUUIDsForSuggestions = v14->_collectionUUIDsForSuggestions;
    v14->_collectionUUIDsForSuggestions = v37;

    v39 = objc_alloc(MEMORY[0x1E6964E00]);
    v40 = [v39 initWithKeyName:*MEMORY[0x1E69BF090] searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosAlbumIdentifiersKey = v14->_photosAlbumIdentifiersKey;
    v14->_photosAlbumIdentifiersKey = v40;

    v42 = objc_alloc(MEMORY[0x1E6964E00]);
    v43 = [v42 initWithKeyName:*MEMORY[0x1E69BF088] searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosAlbumAssetCountsKey = v14->_photosAlbumAssetCountsKey;
    v14->_photosAlbumAssetCountsKey = v43;

    v45 = objc_alloc(MEMORY[0x1E6964E00]);
    v46 = [v45 initWithKeyName:*MEMORY[0x1E69BF0B0] searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosMemoryIdentifiersKey = v14->_photosMemoryIdentifiersKey;
    v14->_photosMemoryIdentifiersKey = v46;

    v48 = objc_alloc(MEMORY[0x1E6964E00]);
    v49 = [v48 initWithKeyName:*MEMORY[0x1E69BF0A8] searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosMemoryAssetCountsKey = v14->_photosMemoryAssetCountsKey;
    v14->_photosMemoryAssetCountsKey = v49;

    v51 = objc_alloc(MEMORY[0x1E6964E00]);
    v52 = [v51 initWithKeyName:*MEMORY[0x1E69BF0A0] searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosHighlightIdentifiersKey = v14->_photosHighlightIdentifiersKey;
    v14->_photosHighlightIdentifiersKey = v52;

    v54 = objc_alloc(MEMORY[0x1E6964E00]);
    v55 = [v54 initWithKeyName:*MEMORY[0x1E69BF098] searchable:0 searchableByDefault:0 unique:0 multiValued:1];
    photosHighlightAssetCountsKey = v14->_photosHighlightAssetCountsKey;
    v14->_photosHighlightAssetCountsKey = v55;

    v57 = objc_alloc(MEMORY[0x1E6964E00]);
    v58 = [v57 initWithKeyName:*MEMORY[0x1E69BF0B8] searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    photosSensitiveLocationKey = v14->_photosSensitiveLocationKey;
    v14->_photosSensitiveLocationKey = v58;
  }

  return v14;
}

+ (id)_embeddingLookupIdentifiersForMatchedEmbeddingIDs:(id)ds assetEmbeddingIds:(id)ids
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  idsCopy = ids;
  if ([dsCopy count] && objc_msgSend(idsCopy, "count"))
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = dsCopy;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([idsCopy indexOfObject:{*(*(&v15 + 1) + 8 * i), v15}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = PLSearchEmbeddingIndexLookupIdentifier();
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

+ (unint64_t)_searchResultTypeForSpotlightSearchableItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchResultProcessor.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"searchableItem"}];
  }

  attributeSet = [itemCopy attributeSet];
  photosResultType = [attributeSet photosResultType];

  if ([photosResultType isEqualToString:*MEMORY[0x1E69BF0D8]])
  {
    v8 = 1;
  }

  else if ([photosResultType isEqualToString:*MEMORY[0x1E69BF0D0]])
  {
    v8 = 2;
  }

  else if ([photosResultType isEqualToString:*MEMORY[0x1E69BF0E0]])
  {
    v8 = 3;
  }

  else if ([photosResultType isEqualToString:*MEMORY[0x1E69BF0F0]])
  {
    v8 = 4;
  }

  else if ([photosResultType isEqualToString:*MEMORY[0x1E69BF0E8]])
  {
    v8 = 5;
  }

  else
  {
    [photosResultType isEqualToString:*MEMORY[0x1E69BF0F8]];
    v8 = 0;
  }

  return v8;
}

+ (id)searchResultsFromAssetUUIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [ds sortedArrayUsingSelector:sel_compare_];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[PHSearchResult alloc] initWithSearchResultType:1 uuid:*(*(&v13 + 1) + 8 * i) retrievalType:0 hasOCRTextMatch:0 isSensitiveLocation:0 embeddingDistances:0 l1Score:0 l2Score:0 collectionScore:0 creationDate:0 addedDate:0 matchedThumbnailIdentifier:0 bundleIdentifier:0];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end