@interface PHSearchSuggestionProcessor
+ (id)_pHSearchSuggestionFromPLSearchSuggestion:(id)a3 rangeOfSuggestionText:(_NSRange)a4;
+ (void)searchSuggestionsFromPLSearchSuggestions:(id)a3 suggestions:(id *)a4 queryId:(int)a5 batchId:(int)a6 rangeOfSuggestionText:(_NSRange)a7;
@end

@implementation PHSearchSuggestionProcessor

+ (id)_pHSearchSuggestionFromPLSearchSuggestion:(id)a3 rangeOfSuggestionText:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 suggestionType];
  v8 = v7;
  if (v7 == 1)
  {
    v9 = 1;
    goto LABEL_5;
  }

  if (v7 == 2)
  {
    v9 = 0;
LABEL_5:
    v10 = [v6 categoriesType];
    if ((v10 - 1) >= 0x2C)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if ([v6 matchedAssetsCount])
    {
      v12 = [v6 matchedAssetsCount];
    }

    else
    {
      v12 = [v6 matchedCollectionsCount];
    }

    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v27 = v12;
    v28 = v11;
    if (v9)
    {
      if (location == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [v6 matchRangeOfSearchText];
        v29 = v16;
      }

      else
      {
        v29 = length;
        v15 = location;
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
    v17 = [v6 nextTokenSuggestions];
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = [objc_opt_class() _pHSearchSuggestionFromPLSearchSuggestion:*(*(&v30 + 1) + 8 * i) rangeOfSuggestionText:{0x7FFFFFFFFFFFFFFFLL, 0}];
          if (v22)
          {
            [v13 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    v23 = [PHSearchSuggestion alloc];
    v24 = [v6 contentString];
    v25 = [v6 suggestionComponents];
    v14 = [(PHSearchSuggestion *)v23 initWithType:v8 categoriesType:v28 text:v24 matchRangeOfSearchText:v15 count:v29 suggestionComponents:v27 nextTokenSuggestions:v25, v13];

    goto LABEL_29;
  }

  v13 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v36 = v6;
    _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Unexpected suggestion type for suggestion: %@, aborting translation", buf, 0xCu);
  }

  v14 = 0;
LABEL_29:

  return v14;
}

+ (void)searchSuggestionsFromPLSearchSuggestions:(id)a3 suggestions:(id *)a4 queryId:(int)a5 batchId:(int)a6 rangeOfSuggestionText:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  v37 = *MEMORY[0x1E69E9840];
  v13 = a3;
  if ([v13 count])
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
    v28 = a1;
    v29 = location;
    v30 = length;
    v19 = v18;
    v27 = v19;
    [v13 enumerateObjectsUsingBlock:&v23];
    *a4 = [v19 copy];
    v20 = v17;
    v21 = v20;
    if (v15 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v20))
    {
      v22 = [v13 count];
      *buf = 67109632;
      v32 = a5;
      v33 = 1024;
      v34 = a6;
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