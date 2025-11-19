@interface PHSearchUtility
+ (BOOL)_shouldOfferCompletionSuggestionsInQueryString:(id)a3 atLocation:(unint64_t)a4 parsedQueryTokens:(id)a5;
+ (BOOL)_tokenHasSuggestion:(id)a3;
+ (BOOL)locationDisambiguationSpansFullLengthOfString:(id)a3;
+ (BOOL)rangeExists:(_NSRange)a3 forString:(id)a4;
+ (_NSRange)_rangeOfTokenInQueryString:(id)a3;
+ (id)CSAttributedEntityKeyFromIndexCategoryType:(unint64_t)a3;
+ (id)CSAttributedEntityKeyFromPHSearchEntityCategoryType:(unint64_t)a3;
+ (id)_parsedAttributedTokensFromQueryText:(id)a3;
+ (id)_searchQueryAnnotationFromRankedGroup:(id)a3 matchRange:(_NSRange)a4;
+ (id)allTokenNGramsFromString:(id)a3;
+ (id)completionSuggestionTextsForQueryString:(id)a3 locationInQueryString:(unint64_t)a4;
+ (id)extractAssetUUIDsForLocationDisambiguationsInQueryString:(id)a3;
+ (id)generateTripAnnotationWithTripUUIDs:(id)a3;
+ (id)insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString:(id)a3;
+ (id)queryTokensFromQueryText:(id)a3 limitToSuggestionCategories:(id)a4;
+ (id)sceneIdFromIndexCategoryType:(unint64_t)a3 lookupIdentifier:(id)a4;
+ (id)stringValueForPHSearchEntityCategoryType:(unint64_t)a3;
+ (id)suggestionComponentsInQueryString:(id)a3;
+ (id)syndicationLibraryBundleIdentifiers;
+ (id)tagRangeWithSpotlightAttributedTypeForLocationTripQueryString:(id)a3;
+ (id)updateInitialSearchQueryStringWithSearchAnnotations:(id)a3;
+ (int64_t)CSSceneTypeFromIndexCategoryType:(unint64_t)a3;
+ (unint64_t)PHSearchEntityCategoryTypeFromCSAttributedEntityType:(id)a3;
+ (unint64_t)PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType:(unint64_t)a3;
+ (unint64_t)PHSearchEntityCategoryTypeFromStringValue:(id)a3;
+ (unint64_t)numberOfInsertedSpacesBetweenAnnotationsAndPlainTextInQueryString:(id)a3 beforeLocation:(unint64_t)a4;
+ (unint64_t)suggestionTypeForQueryString:(id)a3 locationInQueryStringForSuggestionGeneration:(unint64_t)a4;
+ (void)completionSuggestionDateComponentsForQueryString:(id)a3 locationInQueryString:(unint64_t)a4 completion:(id)a5;
@end

@implementation PHSearchUtility

+ (id)_searchQueryAnnotationFromRankedGroup:(id)a3 matchRange:(_NSRange)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 group];
    [v6 category];
    v7 = PLSearchSuggestionCategoriesTypeForSearchIndexCategory();

    v8 = [v5 suggestionComponent];
    if (v8)
    {
      if ((v7 - 1) >= 0x2C)
      {
        v7 = 0;
      }

      v9 = [PHSearchSuggestion alloc];
      v10 = [v5 displayString];
      v15[0] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v12 = [(PHSearchSuggestion *)v9 initWithType:4 categoriesType:v7 text:v10 matchRangeOfSearchText:0x7FFFFFFFFFFFFFFFLL count:0 suggestionComponents:0 nextTokenSuggestions:v11, 0];

      v13 = [[PHSearchQueryAnnotation alloc] initWithSuggestion:v12 queryToken:0];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)_tokenHasSuggestion:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [v3 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PHSearchUtility__tokenHasSuggestion___block_invoke;
  v7[3] = &unk_1E75A4B08;
  v7[4] = &v8;
  [v3 enumerateAttributesInRange:0 options:v4 usingBlock:{0, v7}];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __39__PHSearchUtility__tokenHasSuggestion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a2 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }
}

+ (_NSRange)_rangeOfTokenInQueryString:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = &unk_19CB85426;
  v17 = xmmword_19CB29550;
  v4 = [v3 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PHSearchUtility__rangeOfTokenInQueryString___block_invoke;
  v10[3] = &unk_1E75A3600;
  v5 = v3;
  v11 = v5;
  v12 = &v13;
  [v5 enumerateAttributesInRange:0 options:v4 usingBlock:{0, v10}];
  v6 = v14[4];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);
  v8 = v6;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

void __46__PHSearchUtility__rangeOfTokenInQueryString___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"PHSearchParsedTokenRangeInQueryKey"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rangeValue];
    v6 = *(*(a1 + 40) + 8);
    *(v6 + 32) = v5;
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Unable to find associated range value for the parsed token: %@", &v10, 0xCu);
    }
  }
}

+ (BOOL)_shouldOfferCompletionSuggestionsInQueryString:(id)a3 atLocation:(unint64_t)a4 parsedQueryTokens:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = a5;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v22 + 1) + 8 * v13);
      v15 = [a1 _rangeOfTokenInQueryString:{v14, v22}];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v17 = v15 + v16;
      if (v15 + v16 > [v8 length])
      {
        break;
      }

      if (v17 == a4)
      {
        v19 = [v14 string];

        if (v19)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_12:
  v18 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v27 = a4;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_INFO, "Unable to locate specified location: %tu in query string: %@ with parsed query tokens: %@, no suggestions will be generated.", buf, 0x20u);
  }

  v19 = 0;
LABEL_15:
  v20 = [v19 length] != 0;

  return v20;
}

+ (id)_parsedAttributedTokensFromQueryText:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x1E6977A88]) initWithUnit:0];
    v5 = [v3 string];
    [v4 setString:v5];

    v6 = [v4 string];
    v7 = [v6 length];

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__PHSearchUtility__parsedAttributedTokensFromQueryText___block_invoke;
    v15[3] = &unk_1E75A36F0;
    v16 = v4;
    v9 = v3;
    v17 = v9;
    v10 = v8;
    v18 = v10;
    v11 = v4;
    [v11 enumerateTokensInRange:0 usingBlock:{v7, v15}];
    if (![v10 count])
    {
      v12 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v9;
        _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Unable to extract query parses from query: %@", buf, 0xCu);
      }
    }

    v13 = [v10 copy];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

void __56__PHSearchUtility__parsedAttributedTokensFromQueryText___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) string];
  v7 = [v6 substringWithRange:{a2, a3}];

  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v7];
  v9 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PHSearchUtility__parsedAttributedTokensFromQueryText___block_invoke_2;
  v11[3] = &unk_1E75A36C8;
  v12 = v8;
  v13 = a2;
  v14 = a3;
  v10 = v8;
  [v9 enumerateAttributesInRange:a2 options:a3 usingBlock:{0, v11}];
  [*(a1 + 48) addObject:v10];
}

void __56__PHSearchUtility__parsedAttributedTokensFromQueryText___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696B098];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = a2;
  v8 = [v3 valueWithRange:{v5, v6}];
  [v4 addAttribute:@"PHSearchParsedTokenRangeInQueryKey" value:v8 range:{0, objc_msgSend(*(a1 + 32), "length")}];

  v10 = [v7 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];

  v9 = [v10 suggestion];

  if (v9)
  {
    [*(a1 + 32) addAttribute:@"PHSearchQueryAttributeKey" value:v10 range:{0, objc_msgSend(*(a1 + 32), "length")}];
  }
}

+ (BOOL)rangeExists:(_NSRange)a3 forString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = 0;
  if ([v6 length] && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = location <= [v6 length] && location + length <= objc_msgSend(v6, "length");
  }

  return v7;
}

+ (id)syndicationLibraryBundleIdentifiers
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:*MEMORY[0x1E69BFF20]];
  [v2 addObject:*MEMORY[0x1E69BFF00]];
  v3 = PLSyndicationAllEquivalentFileProviderLocalAndCloudBundleIDs();
  v4 = [v3 allObjects];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (void)completionSuggestionDateComponentsForQueryString:(id)a3 locationInQueryString:(unint64_t)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ([v8 length])
  {
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a4 = [v8 length];
    }

    if ([a1 _locationExists:a4 forString:v8])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v24 = __Block_byref_object_copy__904;
      v25 = __Block_byref_object_dispose__905;
      v26 = MEMORY[0x1E695E0F0];
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__904;
      v21 = __Block_byref_object_dispose__905;
      v22 = 0;
      v10 = [v8 length];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __101__PHSearchUtility_completionSuggestionDateComponentsForQueryString_locationInQueryString_completion___block_invoke;
      v12[3] = &unk_1E75A36A0;
      v15 = &v17;
      v16 = a4;
      v14 = buf;
      v13 = v8;
      [v13 enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v10 usingBlock:{0, v12}];
      v9[2](v9, *(*&buf[8] + 40), v18[5]);

      _Block_object_dispose(&v17, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v11 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = a4;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, "Unable to locate specified location: %tu in query string: %@, no suggestions will be generated.", buf, 0x16u);
      }

      v9[2](v9, MEMORY[0x1E695E0F0], 0);
    }
  }

  else
  {
    v9[2](v9, MEMORY[0x1E695E0F0], 0);
  }
}

void __101__PHSearchUtility_completionSuggestionDateComponentsForQueryString_locationInQueryString_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = v9;
  if (a3 + a4 == *(a1 + 56))
  {
    v11 = [v9 suggestion];

    if (!v11)
    {
      v25 = a5;
      v12 = [v10 QUToken];
      v13 = [v12 metadataForCategoryType:2];

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v13;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v19 = PLSearchBackendQueryGetLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v23 = *(a1 + 32);
                *buf = 138412546;
                v31 = v14;
                v32 = 2112;
                v33 = v23;
                _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Unexpected data type: %@ when extracting date components in query string: %@, NL Date suggestion will not be generated.", buf, 0x16u);
              }

              goto LABEL_14;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:{16, obj}];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
      v19 = [*(a1 + 32) string];
      v20 = [v19 substringWithRange:a3, a4];
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

LABEL_14:
      *v25 = 1;
    }
  }
}

+ (id)completionSuggestionTextsForQueryString:(id)a3 locationInQueryString:(unint64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![v6 length])
  {
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_50;
  }

  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a4 = [v6 length];
  }

  if (([a1 _locationExists:a4 forString:v6] & 1) == 0)
  {
    v7 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v39 = a4;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Unable to locate specified location: %tu in query string: %@, no suggestions will be generated.", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v7 = [a1 _parsedAttributedTokensFromQueryText:v6];
  if (![a1 _shouldOfferCompletionSuggestionsInQueryString:v6 atLocation:a4 parsedQueryTokens:v7])
  {
LABEL_24:
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_49;
  }

  v8 = [v7 count];
  if (v8 - 1 < 0)
  {
    goto LABEL_33;
  }

  v9 = v8;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v12 = [v7 objectAtIndexedSubscript:--v9];
    if (![a1 _tokenHasSuggestion:v12])
    {
      goto LABEL_11;
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

LABEL_19:

    v11 = v13;
    if (v9 <= 0)
    {
      goto LABEL_26;
    }
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_11:
    v14 = [a1 _rangeOfTokenInQueryString:v12];
    v16 = v14 + v15;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v9;
    }

    else
    {
      v17 = v11;
    }

    if (v16 <= a4)
    {
      v13 = v17;
    }

    else
    {
      v13 = v11;
    }

    if (v16 <= a4)
    {
      v10 = v9;
    }

    goto LABEL_19;
  }

  v13 = v11;
LABEL_26:
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_33:
    v19 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v39 = v6;
      v40 = 2048;
      v41 = a4;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Unable to extract completion suggestion texts for query: %@ at location: %tu", buf, 0x16u);
    }

    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_48;
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = [v7 objectAtIndexedSubscript:v13];
  v21 = [a1 _rangeOfTokenInQueryString:v20];
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v36 = v20;
  if (v13 < v10)
  {
LABEL_46:
    v18 = [v19 copy];
    v20 = v36;
  }

  else
  {
    v24 = 0;
    v34 = v19;
    v35 = v21 + v22;
    while (v13 <= ([v7 count]- 1))
    {
      v25 = [v7 objectAtIndexedSubscript:v13];
      if (v24)
      {
        v26 = [a1 _rangeOfTokenInQueryString:v25];
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = PLSearchBackendQueryGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v39 = v6;
            v40 = 2048;
            v41 = a4;
            _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_ERROR, "Unable to extract completion suggestion texts for query: %@ at location: %tu", buf, 0x16u);
          }

          v20 = v36;
          goto LABEL_61;
        }

        v27 = v26;
        v37 = v25;
        v28 = v35 - v26;
        if (([a1 rangeExists:v26 forString:{v35 - v26, v6}] & 1) == 0)
        {
          v33 = PLSearchBackendQueryGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v39 = v6;
            v40 = 2048;
            v41 = a4;
            _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_ERROR, "Unable to extract completion suggestion texts for query: %@ at location: %tu", buf, 0x16u);
          }

          v20 = v36;
          v25 = v37;
LABEL_61:

          goto LABEL_32;
        }

        v29 = [v6 string];
        v30 = [v29 substringWithRange:{v27, v28}];

        v19 = v34;
        v25 = v37;
      }

      else
      {
        v30 = [v36 string];
      }

      [v19 addObject:v30];

      ++v24;
      if (v13-- <= v10)
      {
        goto LABEL_46;
      }
    }

    v23 = PLSearchBackendQueryGetLog();
    v20 = v36;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

LABEL_30:
    *buf = 138412546;
    v39 = v6;
    v40 = 2048;
    v41 = a4;
    _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Unable to extract completion suggestion texts for query: %@ at location: %tu", buf, 0x16u);
LABEL_31:

LABEL_32:
    v18 = MEMORY[0x1E695E0F0];
  }

LABEL_48:
LABEL_49:

LABEL_50:

  return v18;
}

+ (id)generateTripAnnotationWithTripUUIDs:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLServicesLocalizedFrameworkString();
  v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:14];
  v6 = [PHSearchQueryQUToken entityCategoryTypeKeyForEntityTypeCategory:14];
  v7 = [PHSearchQueryQUToken alloc];
  v13 = v6;
  v14[0] = v3;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [(PHSearchQueryQUToken *)v7 initWithText:v4 entityCategoryTypes:v5 metadata:v8];

  v10 = [PHSearchQueryAnnotation alloc];
  v11 = [(PHSearchQueryAnnotation *)v10 initWithQueryToken:v9];

  return v11;
}

+ (id)tagRangeWithSpotlightAttributedTypeForLocationTripQueryString:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD40];
  v4 = a3;
  v5 = [[v3 alloc] initWithAttributedString:v4];

  if ([v5 length])
  {
    v6 = PLServicesLocalizedFrameworkString();
    v7 = [v5 length];
    if (v6)
    {
      v8 = *MEMORY[0x1E69639C8];
      v18[0] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [v5 tagRangeWithFilter:0 withCSAttributedEntityKey:v7 stringValues:{v8, v9}];
    }

    else
    {
      v9 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v5 string];
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "Unable to find localized string for SEARCH_TRIP, will not annotate query as trip: %@", buf, 0xCu);
      }
    }

    v11 = [v5 string];
    v12 = *MEMORY[0x1E69639C0];
    v15 = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [v5 tagRangeWithFilter:0 withCSAttributedEntityKey:v7 stringValues:{v12, v13}];
  }

  return v5;
}

+ (id)queryTokensFromQueryText:(id)a3 limitToSuggestionCategories:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _parsedAttributedTokensFromQueryText:v6];
  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v13 = [v12 length];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __72__PHSearchUtility_queryTokensFromQueryText_limitToSuggestionCategories___block_invoke;
        v19[3] = &unk_1E75A3678;
        v23 = &v24;
        v20 = v7;
        v21 = v6;
        v22 = v12;
        [v12 enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v13 usingBlock:{0, v19}];
        if (*(v25 + 24) == 1)
        {
          v14 = [v12 string];
          [v17 addObject:v14];
        }

        _Block_object_dispose(&v24, 8);
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v15 = [v17 copy];

  return v15;
}

void __72__PHSearchUtility_queryTokensFromQueryText_limitToSuggestionCategories___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 suggestion];
      if (v4)
      {
        if ([*(a1 + 32) count])
        {
          v5 = [*(a1 + 32) containsIndex:{-[NSObject categoriesType](v4, "categoriesType")}];
        }

        else
        {
          v5 = 1;
        }

        *(*(*(a1 + 56) + 8) + 24) = v5;
      }
    }

    else
    {
      v4 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        v8 = 138412546;
        v9 = v6;
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Found unexpected attribute for PHSearchQueryAttributeKey in query string: %@, not including %@ as a query token for OCR match highlighting", &v8, 0x16u);
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

+ (BOOL)locationDisambiguationSpansFullLengthOfString:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    [a1 _parsedAttributedTokensFromQueryText:v4];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 length];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __65__PHSearchUtility_locationDisambiguationSpansFullLengthOfString___block_invoke;
          v14[3] = &unk_1E75A4B08;
          v14[4] = &v19;
          [v9 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v14}];
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

    v11 = v20[3];
    v12 = v11 == [v5 count];
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __65__PHSearchUtility_locationDisambiguationSpansFullLengthOfString___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];
  v3 = [v7 suggestion];
  if ([v3 type] == 3)
  {
    v4 = [v7 suggestion];
    v5 = [v4 locationAssetUUIDs];
    v6 = [v5 count];

    if (v6)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  else
  {
  }
}

+ (id)extractAssetUUIDsForLocationDisambiguationsInQueryString:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (v4)
  {
    v6 = [v3 length];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__PHSearchUtility_extractAssetUUIDsForLocationDisambiguationsInQueryString___block_invoke;
    v9[3] = &unk_1E75A4B58;
    v10 = v5;
    v7 = v5;
    [v3 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v9}];
    v5 = [v7 copy];
  }

  return v5;
}

void __76__PHSearchUtility_extractAssetUUIDsForLocationDisambiguationsInQueryString___block_invoke(uint64_t a1, void *a2)
{
  v13 = [a2 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];
  v3 = [v13 suggestion];
  if ([v3 type] == 3)
  {
    v4 = [v13 suggestion];
    v5 = [v4 locationAssetUUIDs];
    v6 = [v5 count];

    v7 = v13;
    if (!v6)
    {
      goto LABEL_8;
    }

    v8 = [*(a1 + 32) count];
    v9 = *(a1 + 32);
    v3 = [v13 suggestion];
    v10 = [v3 locationAssetUUIDs];
    v11 = v10;
    if (v8)
    {
      [v9 intersectSet:v10];
    }

    else
    {
      v12 = [v10 allObjects];
      [v9 addObjectsFromArray:v12];
    }
  }

  v7 = v13;
LABEL_8:
}

+ (id)allTokenNGramsFromString:(id)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E6977A80]);
  v40[0] = *MEMORY[0x1E69779C8];
  v5 = v40[0];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v7 = [v4 initWithTagSchemes:v6];

  [v7 setString:v3];
  v8 = v5;
  v9 = objc_alloc(MEMORY[0x1E695DFD8]);
  v10 = *MEMORY[0x1E6977948];
  v39[0] = *MEMORY[0x1E6977938];
  v39[1] = v10;
  v11 = *MEMORY[0x1E69779A8];
  v39[2] = *MEMORY[0x1E6977980];
  v39[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  v13 = [v9 initWithArray:v12];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [v3 length];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __44__PHSearchUtility_allTokenNGramsFromString___block_invoke;
  v36[3] = &unk_1E75A3650;
  v32 = v13;
  v37 = v32;
  v16 = v14;
  v38 = v16;
  v33 = v8;
  v34 = v7;
  [v7 enumerateTagsInRange:0 unit:v15 scheme:0 options:v8 usingBlock:{6, v36}];
  v17 = [v16 count];
  v18 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v17 * v17];
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      v19 = i;
      do
      {
        [v16 objectAtIndexedSubscript:{i, v32}];
        v21 = v20 = v3;
        v22 = [v21 rangeValue];
        v24 = v23;

        v25 = [v16 objectAtIndexedSubscript:v19];
        v26 = [v25 rangeValue];
        v28 = v27;

        v3 = v20;
        v42.location = v22;
        v42.length = v24;
        v43.location = v26;
        v43.length = v28;
        v29 = NSUnionRange(v42, v43);
        v30 = [v20 substringWithRange:{v29.location, v29.length}];
        [v18 addObject:v30];

        ++v19;
      }

      while (v17 != v19);
    }
  }

  return v18;
}

void __44__PHSearchUtility_allTokenNGramsFromString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [*(a1 + 40) addObject:v7];
  }
}

+ (id)suggestionComponentsInQueryString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [v3 length];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __53__PHSearchUtility_suggestionComponentsInQueryString___block_invoke;
    v12 = &unk_1E75A3628;
    v13 = v4;
    v14 = v3;
    v6 = v4;
    [v14 enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v5 usingBlock:{0, &v9}];
    v7 = [v6 copy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

void __53__PHSearchUtility_suggestionComponentsInQueryString___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 suggestion];
      v5 = v4;
      if (v4)
      {
        v6 = *(a1 + 32);
        v7 = [v4 suggestionComponents];
        [v6 addObjectsFromArray:v7];
      }
    }

    else
    {
      v5 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        v9 = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_ERROR, "Found unexpected attribute %@ for PHSearchQueryAttributeKey in query string: %@", &v9, 0x16u);
      }
    }
  }
}

+ (unint64_t)suggestionTypeForQueryString:(id)a3 locationInQueryStringForSuggestionGeneration:(unint64_t)a4
{
  v5 = a3;
  if (![v5 length])
  {
    goto LABEL_5;
  }

  if (a4)
  {
    if (a4 != 0x7FFFFFFFFFFFFFFFLL && [v5 length] < a4)
    {
LABEL_5:
      a4 = 0;
      goto LABEL_12;
    }

    if ([v5 length] <= a4)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      v6 = [v5 length];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __93__PHSearchUtility_suggestionTypeForQueryString_locationInQueryStringForSuggestionGeneration___block_invoke;
      v8[3] = &unk_1E75A3600;
      v9 = v5;
      v10 = &v11;
      [v9 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v8}];
      if (*(v12 + 24))
      {
        a4 = 2;
      }

      else
      {
        a4 = 1;
      }

      _Block_object_dispose(&v11, 8);
    }

    else
    {
      a4 = 1;
    }
  }

LABEL_12:

  return a4;
}

void __93__PHSearchUtility_suggestionTypeForQueryString_locationInQueryStringForSuggestionGeneration___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = [a2 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];
  v9 = a3 + a4;
  v10 = [*(a1 + 32) length];
  v11 = [v13 suggestion];

  if (v11)
  {
    v12 = v9 == v10;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }
}

+ (id)insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v5 = [v3 mutableCopy];
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    v6 = [v3 length];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __84__PHSearchUtility_insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString___block_invoke;
    v27[3] = &unk_1E75A35D8;
    v7 = v3;
    v28 = v7;
    v8 = v4;
    v29 = v8;
    v31 = v32;
    v9 = v5;
    v30 = v9;
    [v7 enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v6 usingBlock:{0, v27}];
    if (![v9 length])
    {
      v10 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "[First Pass] Failed to insert spacing for query string: %@", &buf, 0xCu);
      }
    }

    v11 = [v9 mutableCopy];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x2020000000;
    v37 = 0;
    v12 = [v9 length];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __84__PHSearchUtility_insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString___block_invoke_133;
    v22 = &unk_1E75A35D8;
    v13 = v9;
    v23 = v13;
    v14 = v8;
    v24 = v14;
    p_buf = &buf;
    v15 = v11;
    v25 = v15;
    [v13 enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v12 usingBlock:{0, &v19}];
    if (![v15 length])
    {
      v16 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v33 = 138412290;
        v34 = v7;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "[Second Pass] Failed to insert spacing for query string: %@", v33, 0xCu);
      }
    }

    v17 = [v15 copy];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v32, 8);
  }

  else
  {
    v17 = v3;
  }

  return v17;
}

void __84__PHSearchUtility_insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  if (v13)
  {
    v7 = a3 + a4;
    if (v7 != [*(a1 + 32) length])
    {
      v8 = [*(a1 + 32) string];
      v9 = [v8 characterAtIndex:v7];

      if (([*(a1 + 40) characterIsMember:v9] & 1) == 0)
      {
        v10 = *(a1 + 48);
        v11 = *(*(*(a1 + 56) + 8) + 24);
        v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v10 insertAttributedString:v12 atIndex:v7 + v11];

        ++*(*(*(a1 + 56) + 8) + 24);
      }
    }
  }
}

void __84__PHSearchUtility_insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString___block_invoke_133(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (v10)
  {
    if (a3)
    {
      v5 = [*(a1 + 32) string];
      v6 = [v5 characterAtIndex:a3 - 1];

      if (([*(a1 + 40) characterIsMember:v6] & 1) == 0)
      {
        v7 = *(a1 + 48);
        v8 = *(*(*(a1 + 56) + 8) + 24);
        v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
        [v7 insertAttributedString:v9 atIndex:v8 + a3];

        ++*(*(*(a1 + 56) + 8) + 24);
      }
    }
  }
}

+ (unint64_t)numberOfInsertedSpacesBetweenAnnotationsAndPlainTextInQueryString:(id)a3 beforeLocation:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 length];
  v7 = 0;
  if (a4 && v6)
  {
    if (a4 == 0x7FFFFFFFFFFFFFFFLL || [v5 length] <= a4)
    {
      a4 = [v5 length];
    }

    v8 = [v5 attributedSubstringFromRange:{0, a4}];
    v9 = [PHSearchUtility insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString:v8];

    v7 = [v9 length] - a4;
  }

  return v7;
}

+ (id)updateInitialSearchQueryStringWithSearchAnnotations:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 mutableCopy];
    v6 = [v4 length];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __71__PHSearchUtility_updateInitialSearchQueryStringWithSearchAnnotations___block_invoke;
    v13 = &unk_1E75A35B0;
    v14 = v5;
    v15 = a1;
    v7 = v5;
    [v4 enumerateAttributesInRange:0 options:v6 usingBlock:{0, &v10}];
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __71__PHSearchUtility_updateInitialSearchQueryStringWithSearchAnnotations___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E69BF078];
  v8 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69BF078]];
  if (v8)
  {
    [*(a1 + 32) removeAttribute:v7 range:{a3, a4}];
    v9 = [*(a1 + 40) _searchQueryAnnotationFromRankedGroup:v8 matchRange:{a3, a4}];
    v10 = v9;
    if (v9)
    {
      v11 = *(a1 + 32);
      v13 = @"PHSearchQueryAttributeKey";
      v14[0] = v9;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [v11 addAttributes:v12 range:{a3, a4}];
    }
  }
}

+ (id)sceneIdFromIndexCategoryType:(unint64_t)a3 lookupIdentifier:(id)a4
{
  v7 = a4;
  if (![v7 length])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PHSearchUtility.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"lookupIdentifier.length > 0"}];
  }

  if (a3 - 1500 <= 0x1F && ((1 << (a3 + 36)) & 0xC0300C03) != 0)
  {
    goto LABEL_5;
  }

  if (a3 - 2600 < 2)
  {
    v8 = PLSearchHumanActionIdentifierFromLookupIdentifier();
    goto LABEL_6;
  }

  if (a3 - 2500 <= 1)
  {
LABEL_5:
    v8 = PLSearchSceneIdentifierFromLookupIdentifier();
LABEL_6:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)CSAttributedEntityKeyFromPHSearchEntityCategoryType:(unint64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1 <= 0x13 && ((0xE6E2Du >> v4) & 1) != 0)
  {
    v5 = **(&unk_1E75A37B0 + v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)PHSearchEntityCategoryTypeFromCSAttributedEntityType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E6963A28]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E6963A38]))
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69639C0]])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963968]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963A10]])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69639F8]])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69639F0]])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69639E8]])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963A08]])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69639E0]])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963A00]])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963A18]])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963A20]])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963A60]])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unint64_t)PHSearchEntityCategoryTypeFromStringValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeDate"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypePeople"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeLocations"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeGenericLocations"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesWhat"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesPublicEvent"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesPersonalEvent"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesMusicTitle"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesMusicArtist"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesMusicGenre"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesMoods"])
  {
    v4 = 12;
  }

  else
  {
    if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesDuration"])
    {
      goto LABEL_24;
    }

    if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesTrip"])
    {
      v4 = 14;
      goto LABEL_27;
    }

    if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesDuration"])
    {
LABEL_24:
      v4 = 13;
    }

    else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesPersonAgeType"])
    {
      v4 = 15;
    }

    else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesAllTime"])
    {
      v4 = 16;
    }

    else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesSortOrder"])
    {
      v4 = 17;
    }

    else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesPartOfDay"])
    {
      v4 = 18;
    }

    else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesPartOfWeek"])
    {
      v4 = 19;
    }

    else if ([v3 isEqualToString:@"PHSearchEntityCategoryTypeMemoriesSeason"])
    {
      v4 = 20;
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_27:

  return v4;
}

+ (id)stringValueForPHSearchEntityCategoryType:(unint64_t)a3
{
  if (a3 - 1 > 0x13)
  {
    return @"PHSearchEntityCategoryTypeUndefined";
  }

  else
  {
    return off_1E75A3710[a3 - 1];
  }
}

+ (int64_t)CSSceneTypeFromIndexCategoryType:(unint64_t)a3
{
  if (a3 <= 1519)
  {
    if (a3 - 1500 < 2)
    {
      return 1;
    }

    if (a3 - 1510 < 2)
    {
      return 4;
    }
  }

  else
  {
    v3 = a3 + 16;
    if (a3 - 1520 <= 0x15)
    {
      if (((1 << v3) & 3) != 0)
      {
        return 6;
      }

      if (((1 << v3) & 0xC00) != 0)
      {
        return 7;
      }

      if (((1 << v3) & 0x300000) != 0)
      {
        return 8;
      }
    }

    if (a3 - 2500 < 2)
    {
      return 3;
    }

    if (a3 - 2600 <= 1)
    {
      return 2;
    }
  }

  return 0;
}

+ (id)CSAttributedEntityKeyFromIndexCategoryType:(unint64_t)a3
{
  v4 = 0;
  if (a3 <= 1499)
  {
    if (a3 <= 1101)
    {
      v5 = MEMORY[0x1E69639C0];
      if (a3 > 999)
      {
        if (a3 - 1000 > 0xA || ((1 << (a3 + 24)) & 0x783) == 0)
        {
          if (a3 == 1100)
          {
            v5 = MEMORY[0x1E6963958];
          }

          else
          {
            if (a3 != 1101)
            {
              goto LABEL_79;
            }

            v5 = MEMORY[0x1E6963960];
          }
        }

        goto LABEL_78;
      }

      if (a3 - 1 >= 0xE)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (a3 <= 1202)
      {
        if (a3 > 1199)
        {
          if (a3 == 1200)
          {
            v5 = MEMORY[0x1E69639B0];
          }

          else if (a3 == 1201)
          {
            v5 = MEMORY[0x1E6963A78];
          }

          else
          {
            v5 = MEMORY[0x1E6963970];
          }
        }

        else
        {
          v7 = a3 - 80;
          if (a3 - 1104 > 5)
          {
            if (a3 == 1102)
            {
              v5 = MEMORY[0x1E6963968];
            }

            else
            {
              if (a3 != 1103)
              {
                goto LABEL_79;
              }

              v5 = MEMORY[0x1E69639A0];
            }
          }

          else
          {
            v8 = 1 << v7;
            v9 = ((1 << v7) & 0x14) == 0;
            v5 = MEMORY[0x1E6963A20];
            if (!v9)
            {
              v5 = MEMORY[0x1E6963A18];
            }

            if ((v8 & 3) != 0)
            {
              v5 = MEMORY[0x1E6963A60];
            }
          }
        }

        goto LABEL_78;
      }

      v6 = a3 - 20;
      if (a3 - 1300 > 0x1F)
      {
        goto LABEL_9;
      }

      if (((1 << v6) & 0x300000) != 0)
      {
        v5 = MEMORY[0x1E6963A68];
        goto LABEL_78;
      }

      if (((1 << v6) & 0x40000001) != 0)
      {
        v5 = MEMORY[0x1E6963A38];
        goto LABEL_78;
      }

      if (((1 << v6) & 0x80000002) == 0)
      {
LABEL_9:
        if (a3 - 1203 < 3)
        {
          v5 = MEMORY[0x1E6963A70];
        }

        else
        {
          if (a3 - 1400 >= 3)
          {
            goto LABEL_79;
          }

          v5 = MEMORY[0x1E6963A48];
        }

        goto LABEL_78;
      }

      v5 = MEMORY[0x1E6963A30];
    }

LABEL_78:
    v4 = *v5;
    goto LABEL_79;
  }

  if (a3 > 1899)
  {
    if (a3 <= 2199)
    {
      if (a3 - 1900 >= 0x15)
      {
        if (a3 == 2000)
        {
          v5 = MEMORY[0x1E6963990];
        }

        else
        {
          if (a3 != 2100)
          {
            goto LABEL_79;
          }

          v5 = MEMORY[0x1E6963998];
        }
      }

      else
      {
        v5 = MEMORY[0x1E69639D0];
      }

      goto LABEL_78;
    }

    if (a3 <= 2499)
    {
      if (a3 - 2400 < 2)
      {
        v5 = MEMORY[0x1E69639B8];
      }

      else if (a3 == 2200)
      {
        v5 = MEMORY[0x1E6963A50];
      }

      else
      {
        if (a3 != 2300)
        {
          goto LABEL_79;
        }

        v5 = MEMORY[0x1E6963950];
      }

      goto LABEL_78;
    }

    if (a3 - 2500 >= 2 && a3 - 2600 >= 2)
    {
      if (a3 - 2900 >= 2)
      {
        goto LABEL_79;
      }

      v5 = MEMORY[0x1E6963A40];
      goto LABEL_78;
    }

    goto LABEL_34;
  }

  if (a3 > 1599)
  {
    if (a3 > 1700)
    {
      if (a3 > 1801)
      {
        if (a3 - 1802 >= 2)
        {
          goto LABEL_79;
        }

        v5 = MEMORY[0x1E6963978];
      }

      else
      {
        switch(a3)
        {
          case 0x6A5uLL:
            v5 = MEMORY[0x1E6963940];
            break;
          case 0x708uLL:
            v5 = MEMORY[0x1E6963980];
            break;
          case 0x709uLL:
            v5 = MEMORY[0x1E6963988];
            break;
          default:
            goto LABEL_79;
        }
      }
    }

    else if (a3 - 1600 <= 0xB && ((1 << (a3 - 64)) & 0xC03) != 0)
    {
      v5 = MEMORY[0x1E69639C8];
    }

    else
    {
      if (a3 != 1700)
      {
        goto LABEL_79;
      }

      v5 = MEMORY[0x1E6963948];
    }

    goto LABEL_78;
  }

  if (a3 - 1500 <= 0x1F && ((1 << (a3 + 36)) & 0xC0300C03) != 0)
  {
LABEL_34:
    v5 = MEMORY[0x1E6963A58];
    goto LABEL_78;
  }

LABEL_79:

  return v4;
}

+ (unint64_t)PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType:(unint64_t)a3
{
  if (a3 > 6)
  {
    if (a3 != 7)
    {
      if (a3 == 44)
      {
        return 8;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (a3 != 1)
    {
      return a3 == 4;
    }

    return 4;
  }
}

@end