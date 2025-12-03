@interface PHSearchSuggestionQueryResult
- (PHSearchSuggestionQueryResult)initWithSearchQuery:(id)query;
- (PHSearchSuggestionQueryResult)initWithSearchQuery:(id)query searchSuggestions:(id)suggestions;
- (id)description;
- (id)jsonDictionary;
@end

@implementation PHSearchSuggestionQueryResult

- (id)jsonDictionary
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  searchSuggestions = [(PHSearchSuggestionQueryResult *)self searchSuggestions];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __47__PHSearchSuggestionQueryResult_jsonDictionary__block_invoke;
  v17 = &unk_1E75A73B8;
  v5 = v3;
  v18 = v5;
  [searchSuggestions enumerateObjectsUsingBlock:&v14];

  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v19 = @"searchSuggestions";
  v20[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:{1, v14, v15, v16, v17}];
  v8 = [v6 initWithDictionary:v7];

  searchQuery = [(PHSearchSuggestionQueryResult *)self searchQuery];

  if (searchQuery)
  {
    searchQuery2 = [(PHSearchSuggestionQueryResult *)self searchQuery];
    jsonDictionary = [searchQuery2 jsonDictionary];
    [v8 setObject:jsonDictionary forKeyedSubscript:@"searchQuery"];
  }

  v12 = [v8 copy];

  return v12;
}

void __47__PHSearchSuggestionQueryResult_jsonDictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 jsonDictionary];
  [v2 addObject:v3];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  searchQuery = self->_searchQuery;
  if (searchQuery)
  {
    searchQuery = [(PHSearchQuery *)searchQuery suggestionQueryIdentifier];
  }

  [v3 appendFormat:@"Suggestion Query: %d, ", searchQuery];
  [v3 appendFormat:@"%tu suggestions, ", -[NSArray count](self->_searchSuggestions, "count")];
  v5 = [v3 copy];

  return v5;
}

- (PHSearchSuggestionQueryResult)initWithSearchQuery:(id)query
{
  if (query)
  {
    v3 = [(PHSearchSuggestionQueryResult *)self initWithSearchQuery:query searchSuggestions:0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PHSearchSuggestionQueryResult;
    v3 = [(PHSearchSuggestionQueryResult *)&v6 init];
  }

  v4 = v3;

  return v4;
}

- (PHSearchSuggestionQueryResult)initWithSearchQuery:(id)query searchSuggestions:(id)suggestions
{
  queryCopy = query;
  suggestionsCopy = suggestions;
  if (!queryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchSuggestionQueryResult.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"searchQuery"}];
  }

  v14.receiver = self;
  v14.super_class = PHSearchSuggestionQueryResult;
  v10 = [(PHSearchSuggestionQueryResult *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_searchQuery, query);
    objc_storeStrong(&v11->_searchSuggestions, suggestions);
  }

  return v11;
}

@end