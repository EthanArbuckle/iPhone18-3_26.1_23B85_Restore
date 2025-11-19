@interface PHSearchQueryResult
- (PHSearchQueryResult)initWithSearchQuery:(id)a3;
- (PHSearchQueryResult)initWithSearchQuery:(id)a3 searchResults:(id)a4 unfilteredAssetSearchResults:(id)a5 rankedAssetSearchResults:(id)a6 rankedCollectionSearchResults:(id)a7 searchSuggestions:(id)a8 queryMatchDetails:(id)a9 annotatedQueryString:(id)a10 queryStringReceivedFromSpotlight:(id)a11 isUnsafeQuery:(BOOL)a12;
- (id)description;
- (id)jsonDictionary;
- (id)redactedDescription;
- (id)redactedJSONDictionary;
@end

@implementation PHSearchQueryResult

- (id)redactedJSONDictionary
{
  v55[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PHSearchQueryResult *)self rankedAssetSearchResults];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke;
  v51[3] = &unk_1E75A51A8;
  v53 = 10000;
  v5 = v3;
  v52 = v5;
  [v4 enumerateObjectsUsingBlock:v51];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(PHSearchQueryResult *)self rankedCollectionSearchResults];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke_2;
  v48[3] = &unk_1E75A51A8;
  v50 = 10000;
  v8 = v6;
  v49 = v8;
  [v7 enumerateObjectsUsingBlock:v48];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [(PHSearchQueryResult *)self searchResults];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke_3;
  v45[3] = &unk_1E75A51A8;
  v47 = 10000;
  v11 = v9;
  v46 = v11;
  [v10 enumerateObjectsUsingBlock:v45];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [(PHSearchQueryResult *)self unfilteredAssetSearchResults];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke_4;
  v42[3] = &unk_1E75A51A8;
  v44 = 10000;
  v14 = v12;
  v43 = v14;
  [v13 enumerateObjectsUsingBlock:v42];

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [(PHSearchQueryResult *)self searchSuggestions];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke_5;
  v39[3] = &unk_1E75A51D0;
  v41 = 10000;
  v17 = v15;
  v40 = v17;
  [v16 enumerateObjectsUsingBlock:v39];

  v32 = objc_alloc(MEMORY[0x1E695DF90]);
  v54[0] = @"searchQuery";
  v33 = [(PHSearchQueryResult *)self searchQuery];
  v18 = [v33 redactedJSONDictionary];
  v19 = v18;
  if (!v18)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v55[0] = v18;
  v55[1] = v11;
  v36 = v11;
  v37 = v8;
  v54[1] = @"searchResults";
  v54[2] = @"unfilteredResults";
  v55[2] = v14;
  v55[3] = v5;
  v38 = v5;
  v54[3] = @"topAssets";
  v54[4] = @"topCollections";
  v55[4] = v8;
  v55[5] = v17;
  v34 = v17;
  v54[5] = @"searchSuggestions";
  v54[6] = @"queryMatchDetails";
  v20 = [(PHSearchQueryResult *)self queryMatchDetails];
  v21 = [v20 redactedJSONDictionary];
  v22 = v21;
  if (!v21)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v14;
  v55[6] = v22;
  v54[7] = @"isUnsafeQuery";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryResult isUnsafeQuery](self, "isUnsafeQuery")}];
  v55[7] = v23;
  v54[8] = @"queryStringReceivedFromSpotlight";
  v24 = [(PHSearchQueryResult *)self queryStringReceivedFromSpotlight];
  v25 = [v24 description];
  v26 = v25;
  if (!v25)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v55[8] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:9];
  v28 = [v32 initWithDictionary:v27];

  if (!v25)
  {
  }

  if (!v21)
  {
  }

  if (!v19)
  {
  }

  v29 = [v28 copy];

  return v29;
}

void __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 40) <= a3)
  {
    *a4 = 1;
  }

  v5 = *(a1 + 32);
  v6 = [a2 jsonDictionary];
  [v5 addObject:v6];
}

void __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 40) <= a3)
  {
    *a4 = 1;
  }

  v5 = *(a1 + 32);
  v6 = [a2 jsonDictionary];
  [v5 addObject:v6];
}

void __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke_3(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 40) <= a3)
  {
    *a4 = 1;
  }

  v5 = *(a1 + 32);
  v6 = [a2 jsonDictionary];
  [v5 addObject:v6];
}

void __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke_4(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 40) <= a3)
  {
    *a4 = 1;
  }

  v5 = *(a1 + 32);
  v6 = [a2 jsonDictionary];
  [v5 addObject:v6];
}

void __45__PHSearchQueryResult_redactedJSONDictionary__block_invoke_5(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 40) <= a3)
  {
    *a4 = 1;
  }

  v5 = *(a1 + 32);
  v6 = [a2 jsonDictionary];
  [v5 addObject:v6];
}

- (id)jsonDictionary
{
  v50[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PHSearchQueryResult *)self rankedAssetSearchResults];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __37__PHSearchQueryResult_jsonDictionary__block_invoke;
  v47[3] = &unk_1E75A5180;
  v5 = v3;
  v48 = v5;
  [v4 enumerateObjectsUsingBlock:v47];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(PHSearchQueryResult *)self rankedCollectionSearchResults];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __37__PHSearchQueryResult_jsonDictionary__block_invoke_2;
  v45[3] = &unk_1E75A5180;
  v8 = v6;
  v46 = v8;
  [v7 enumerateObjectsUsingBlock:v45];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [(PHSearchQueryResult *)self searchResults];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __37__PHSearchQueryResult_jsonDictionary__block_invoke_3;
  v43[3] = &unk_1E75A5180;
  v11 = v9;
  v44 = v11;
  [v10 enumerateObjectsUsingBlock:v43];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [(PHSearchQueryResult *)self unfilteredAssetSearchResults];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __37__PHSearchQueryResult_jsonDictionary__block_invoke_4;
  v41[3] = &unk_1E75A5180;
  v14 = v12;
  v42 = v14;
  [v13 enumerateObjectsUsingBlock:v41];

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = [(PHSearchQueryResult *)self searchSuggestions];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __37__PHSearchQueryResult_jsonDictionary__block_invoke_5;
  v39[3] = &unk_1E75A73B8;
  v17 = v15;
  v40 = v17;
  [v16 enumerateObjectsUsingBlock:v39];

  v32 = objc_alloc(MEMORY[0x1E695DF90]);
  v49[0] = @"searchQuery";
  v33 = [(PHSearchQueryResult *)self searchQuery];
  v18 = [v33 jsonDictionary];
  v19 = v18;
  if (!v18)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v18;
  v50[0] = v18;
  v50[1] = v11;
  v35 = v14;
  v36 = v11;
  v49[1] = @"searchResults";
  v49[2] = @"unfilteredResults";
  v50[2] = v14;
  v50[3] = v5;
  v49[3] = @"topAssets";
  v49[4] = @"topCollections";
  v37 = v8;
  v50[4] = v8;
  v50[5] = v17;
  v34 = v17;
  v49[5] = @"searchSuggestions";
  v49[6] = @"queryMatchDetails";
  v20 = [(PHSearchQueryResult *)self queryMatchDetails];
  v21 = [v20 jsonDictionary];
  v22 = v21;
  if (!v21)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v5;
  v50[6] = v22;
  v49[7] = @"isUnsafeQuery";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryResult isUnsafeQuery](self, "isUnsafeQuery")}];
  v50[7] = v23;
  v49[8] = @"queryStringReceivedFromSpotlight";
  v24 = [(PHSearchQueryResult *)self queryStringReceivedFromSpotlight];
  v25 = [v24 description];
  v26 = v25;
  if (!v25)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v50[8] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:9];
  v28 = [v32 initWithDictionary:v27];

  if (!v25)
  {
  }

  if (!v21)
  {
  }

  if (!v19)
  {
  }

  v29 = [v28 copy];

  return v29;
}

void __37__PHSearchQueryResult_jsonDictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 jsonDictionary];
  [v2 addObject:v3];
}

void __37__PHSearchQueryResult_jsonDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 jsonDictionary];
  [v2 addObject:v3];
}

void __37__PHSearchQueryResult_jsonDictionary__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 jsonDictionary];
  [v2 addObject:v3];
}

void __37__PHSearchQueryResult_jsonDictionary__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 jsonDictionary];
  [v2 addObject:v3];
}

void __37__PHSearchQueryResult_jsonDictionary__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 jsonDictionary];
  [v2 addObject:v3];
}

- (id)redactedDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"Query: %d, ", -[PHSearchQuery queryIdentifier](self->_searchQuery, "queryIdentifier")];
  if ([(PHSearchQuery *)self->_searchQuery batchIdentifier])
  {
    [v3 appendFormat:@"Batch: %d, ", -[PHSearchQuery batchIdentifier](self->_searchQuery, "batchIdentifier")];
  }

  [v3 appendFormat:@"%tu results, ", -[NSArray count](self->_searchResults, "count")];
  [v3 appendFormat:@"%tu unfiltered results, ", -[NSArray count](self->_unfilteredAssetSearchResults, "count")];
  [v3 appendFormat:@"%tu top assets, ", -[NSArray count](self->_rankedAssetSearchResults, "count")];
  [v3 appendFormat:@"%tu top collections, ", -[NSArray count](self->_rankedCollectionSearchResults, "count")];
  [v3 appendFormat:@"%tu suggestions", -[NSArray count](self->_searchSuggestions, "count")];
  v4 = [v3 copy];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"Query: %d, ", -[PHSearchQuery queryIdentifier](self->_searchQuery, "queryIdentifier")];
  if ([(PHSearchQuery *)self->_searchQuery batchIdentifier])
  {
    [v3 appendFormat:@"Batch: %d, ", -[PHSearchQuery batchIdentifier](self->_searchQuery, "batchIdentifier")];
  }

  [v3 appendFormat:@"%tu results, ", -[NSArray count](self->_searchResults, "count")];
  [v3 appendFormat:@"%tu unfiltered results, ", -[NSArray count](self->_unfilteredAssetSearchResults, "count")];
  [v3 appendFormat:@"%tu top assets, ", -[NSArray count](self->_rankedAssetSearchResults, "count")];
  [v3 appendFormat:@"%tu top collections, ", -[NSArray count](self->_rankedCollectionSearchResults, "count")];
  [v3 appendFormat:@"%tu suggestions, ", -[NSArray count](self->_searchSuggestions, "count")];
  [v3 appendFormat:@"match details: %@, ", self->_queryMatchDetails];
  if (self->_isUnsafeQuery)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"isUnsafe: %@, ", v4];
  [v3 appendFormat:@"Spotlight annotated query: %@", self->_queryStringReceivedFromSpotlight];
  v5 = [v3 copy];

  return v5;
}

- (PHSearchQueryResult)initWithSearchQuery:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PHSearchQueryResult.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"searchQuery"}];
  }

  v6 = [v5 searchText];
  LOBYTE(v10) = 1;
  v7 = [(PHSearchQueryResult *)self initWithSearchQuery:v5 searchResults:MEMORY[0x1E695E0F0] unfilteredAssetSearchResults:MEMORY[0x1E695E0F0] rankedAssetSearchResults:MEMORY[0x1E695E0F0] rankedCollectionSearchResults:MEMORY[0x1E695E0F0] searchSuggestions:MEMORY[0x1E695E0F0] queryMatchDetails:0 annotatedQueryString:v6 queryStringReceivedFromSpotlight:0 isUnsafeQuery:v10];

  return v7;
}

- (PHSearchQueryResult)initWithSearchQuery:(id)a3 searchResults:(id)a4 unfilteredAssetSearchResults:(id)a5 rankedAssetSearchResults:(id)a6 rankedCollectionSearchResults:(id)a7 searchSuggestions:(id)a8 queryMatchDetails:(id)a9 annotatedQueryString:(id)a10 queryStringReceivedFromSpotlight:(id)a11 isUnsafeQuery:(BOOL)a12
{
  v18 = a3;
  v31 = a4;
  v19 = a4;
  v32 = a5;
  v20 = a5;
  v33 = a6;
  v21 = a6;
  v34 = a7;
  v37 = a7;
  v22 = self;
  v23 = a8;
  v36 = a9;
  v24 = a10;
  v35 = a11;
  if (!v18)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:v22 file:@"PHSearchQueryResult.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"searchQuery"}];
  }

  v38.receiver = v22;
  v38.super_class = PHSearchQueryResult;
  v25 = [(PHSearchQueryResult *)&v38 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_searchQuery, a3);
    objc_storeStrong(&v26->_searchResults, v31);
    objc_storeStrong(&v26->_unfilteredAssetSearchResults, v32);
    objc_storeStrong(&v26->_rankedAssetSearchResults, v33);
    objc_storeStrong(&v26->_rankedCollectionSearchResults, v34);
    objc_storeStrong(&v26->_searchSuggestions, a8);
    objc_storeStrong(&v26->_queryMatchDetails, a9);
    objc_storeStrong(&v26->_annotatedQueryString, a10);
    objc_storeStrong(&v26->_queryStringReceivedFromSpotlight, a11);
    v26->_isUnsafeQuery = a12;
  }

  return v26;
}

@end