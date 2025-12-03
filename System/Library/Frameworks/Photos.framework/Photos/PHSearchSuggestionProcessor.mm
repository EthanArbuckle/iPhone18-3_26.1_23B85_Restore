@interface PHSearchSuggestionProcessor
+ (id)_pHSearchSuggestionFromPLSearchSuggestion:(id)suggestion rangeOfSuggestionText:(_NSRange)text;
+ (void)searchSuggestionsFromPLSearchSuggestions:(id)suggestions suggestions:(id *)a4 queryId:(int)id batchId:(int)batchId rangeOfSuggestionText:(_NSRange)text;
@end

@implementation PHSearchSuggestionProcessor

+ (id)_pHSearchSuggestionFromPLSearchSuggestion:(id)suggestion rangeOfSuggestionText:(_NSRange)text
{
  length = text.length;
  location = text.location;
  v37 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  suggestionType = [suggestionCopy suggestionType];
  v8 = suggestionType;
  if (suggestionType == 1)
  {
    v9 = 1;
    goto LABEL_5;
  }

  if (suggestionType == 2)
  {
    v9 = 0;
LABEL_5:
    categoriesType = [suggestionCopy categoriesType];
    if ((categoriesType - 1) >= 0x2C)
    {
      v11 = 0;
    }

    else
    {
      v11 = categoriesType;
    }

    if ([suggestionCopy matchedAssetsCount])
    {
      matchedAssetsCount = [suggestionCopy matchedAssetsCount];
    }

    else
    {
      matchedAssetsCount = [suggestionCopy matchedCollectionsCount];
    }

    matchRangeOfSearchText = 0x7FFFFFFFFFFFFFFFLL;
    v27 = matchedAssetsCount;
    v28 = v11;
    if (v9)
    {
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        matchRangeOfSearchText = [suggestionCopy matchRangeOfSearchText];
        v29 = v16;
      }

      else
      {
        v29 = length;
        matchRangeOfSearchText = location;
      }
    }

    else
    {
      v29 = 0;
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    nextTokenSuggestions = [suggestionCopy nextTokenSuggestions];
    v18 = [nextTokenSuggestions countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(nextTokenSuggestions);
          }

          v22 = [objc_opt_class() _pHSearchSuggestionFromPLSearchSuggestion:*(*(&v30 + 1) + 8 * i) rangeOfSuggestionText:{0x7FFFFFFFFFFFFFFFLL, 0}];
          if (v22)
          {
            [v13 addObject:v22];
          }
        }

        v19 = [nextTokenSuggestions countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    v23 = [PHSearchSuggestion alloc];
    contentString = [suggestionCopy contentString];
    suggestionComponents = [suggestionCopy suggestionComponents];
    v14 = [(PHSearchSuggestion *)v23 initWithType:v8 categoriesType:v28 text:contentString matchRangeOfSearchText:matchRangeOfSearchText count:v29 suggestionComponents:v27 nextTokenSuggestions:suggestionComponents, v13];

    goto LABEL_29;
  }

  v13 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v36 = suggestionCopy;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Unexpected suggestion type for suggestion: %@, aborting translation", buf, 0xCu);
  }

  v14 = 0;
LABEL_29:

  return v14;
}

+ (void)searchSuggestionsFromPLSearchSuggestions:(id)suggestions suggestions:(id *)a4 queryId:(int)id batchId:(int)batchId rangeOfSuggestionText:(_NSRange)text
{
  length = text.length;
  location = text.location;
  v37 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  if ([suggestionsCopy count])
  {
    v14 = PLPhotosSearchGetLog();
    v15 = os_signpost_id_generate(v14);

    v16 = v14;
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PLSearchBackendQuerySuggestionTranslation", byte_19CB567AE, buf, 2u);
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __122__PHSearchSuggestionProcessor_searchSuggestionsFromPLSearchSuggestions_suggestions_queryId_batchId_rangeOfSuggestionText___block_invoke;
    v26 = &unk_1E75A39A0;
    selfCopy = self;
    v29 = location;
    v30 = length;
    v19 = v18;
    v27 = v19;
    [suggestionsCopy enumerateObjectsUsingBlock:&v23];
    *a4 = [v19 copy];
    v20 = v17;
    v21 = v20;
    if (v15 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v20))
    {
      v22 = [suggestionsCopy count];
      *buf = 67109632;
      idCopy = id;
      v33 = 1024;
      batchIdCopy = batchId;
      v35 = 2048;
      v36 = v22;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v21, OS_SIGNPOST_INTERVAL_END, v15, "PLSearchBackendQuerySuggestionTranslation", "Query: %d, Batch: %d, Suggestions: %tu", buf, 0x18u);
    }
  }

  else
  {
    *a4 = MEMORY[0x1E695E0F0];
  }
}

uint64_t __122__PHSearchSuggestionProcessor_searchSuggestionsFromPLSearchSuggestions_suggestions_queryId_batchId_rangeOfSuggestionText___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _pHSearchSuggestionFromPLSearchSuggestion:a2 rangeOfSuggestionText:{*(a1 + 48), *(a1 + 56)}];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end