@interface PHSearchQueryAnnotation
+ (BOOL)hasCSAttributedEntityTypePhotosMemoriesTripKeyInAttributedQueryString:(id)a3;
+ (id)_annotationFromQueryString:(id)a3 inRange:(_NSRange)a4;
+ (id)_updateSpotlightAttributedQueryString:(id)a3 disambiguation:(id)a4 range:(_NSRange)a5;
+ (id)_updateSpotlightAttributedQueryString:(id)a3 suggestion:(id)a4 range:(_NSRange)a5;
+ (id)_updateSpotlightAttributedQueryString:(id)a3 withAnnotation:(id)a4 range:(_NSRange)a5;
+ (id)annotatedQueryStringByFilteringToPHSearchQueryAttributes:(id)a3;
+ (id)annotatedQueryStringFromSpotlightAttributedQueryString:(id)a3 forSearchQuery:(id)a4 photoLibrary:(id)a5;
+ (id)searchQueryAnnotationsFromAttributedQueryString:(id)a3;
+ (id)selectedSuggestionsFromQueryString:(id)a3 inRange:(_NSRange)a4;
+ (id)spotlightAttributedQueryStringFromAnnotatedQueryString:(id)a3;
+ (id)updateQueryString:(id)a3 withSelectedSuggestion:(id)a4 inRange:(_NSRange)a5 additionalAttributes:(id)a6;
- (BOOL)isEqual:(id)a3;
- (PHSearchQueryAnnotation)initWithCoder:(id)a3;
- (PHSearchQueryAnnotation)initWithQueryToken:(id)a3;
- (PHSearchQueryAnnotation)initWithSuggestion:(id)a3 queryToken:(id)a4;
- (id)description;
- (id)jsonDictionary;
- (unint64_t)ambiguityType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHSearchQueryAnnotation

- (id)jsonDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PHSearchQueryAnnotation *)self suggestion];
  v5 = [v4 jsonDictionary];
  [v3 setObject:v5 forKeyedSubscript:@"suggestion"];

  v6 = [(PHSearchQueryAnnotation *)self QUToken];
  v7 = [v6 jsonDictionary];
  [v3 setObject:v7 forKeyedSubscript:@"disambiguation_token"];

  v8 = [(PHSearchQueryAnnotation *)self ambiguityType];
  v9 = @"PHSearchAmbiguityTypeNone";
  if (v8 == 1)
  {
    v9 = @"PHSearchAmbiguityTypePartiallyAmbiguous";
  }

  if (v8 == 2)
  {
    v9 = @"PHSearchAmbiguityTypeFullyAmbiguous";
  }

  v10 = v9;
  [v3 setObject:v10 forKeyedSubscript:@"ambiguity_type"];

  v11 = [v3 copy];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(PHSearchQueryAnnotation *)self suggestion];
  v4 = [v3 hash];
  v5 = [(PHSearchQueryAnnotation *)self QUToken];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHSearchQueryAnnotation *)self suggestion];
      if (v6 && ([(PHSearchQueryAnnotation *)v5 suggestion], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = v7;
        v9 = [(PHSearchQueryAnnotation *)self suggestion];
        v10 = [(PHSearchQueryAnnotation *)v5 suggestion];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
LABEL_6:
          v12 = [(PHSearchQueryAnnotation *)self QUToken];
          if (v12 && ([(PHSearchQueryAnnotation *)v5 QUToken], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v14 = v13;
            v15 = [(PHSearchQueryAnnotation *)self QUToken];
            v16 = [(PHSearchQueryAnnotation *)v5 QUToken];
            v17 = [v15 isEqual:v16];
          }

          else
          {
            v14 = [(PHSearchQueryAnnotation *)self QUToken];
            v15 = [(PHSearchQueryAnnotation *)v5 QUToken];
            v17 = v14 == v15;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v18 = [(PHSearchQueryAnnotation *)self suggestion];
        v19 = [(PHSearchQueryAnnotation *)v5 suggestion];

        if (v6)
        {
        }

        if (v18 == v19)
        {
          goto LABEL_6;
        }
      }

      v17 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v17 = 0;
  }

LABEL_18:

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PHSearchQueryAnnotation *)self QUToken];
  v5 = [(PHSearchQueryAnnotation *)self suggestion];
  v6 = [(PHSearchQueryAnnotation *)self ambiguityType];
  v7 = @"PHSearchAmbiguityTypeNone";
  if (v6 == 1)
  {
    v7 = @"PHSearchAmbiguityTypePartiallyAmbiguous";
  }

  if (v6 == 2)
  {
    v7 = @"PHSearchAmbiguityTypeFullyAmbiguous";
  }

  v8 = v7;
  v9 = [v3 stringWithFormat:@"QU token: %@, suggestion: %@, ambiguityType: %@", v4, v5, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  suggestion = self->_suggestion;
  v5 = a3;
  [v5 encodeObject:suggestion forKey:@"PHSearchQueryAnnotationPropertySuggestion"];
  [v5 encodeObject:self->_QUToken forKey:@"PHSearchQueryAnnotationPropertyToken"];
}

- (PHSearchQueryAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryAnnotationPropertySuggestion"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryAnnotationPropertyToken"];

  if (v5)
  {
    v7 = [(PHSearchQueryAnnotation *)self initWithSuggestion:v5 queryToken:v6];
LABEL_5:
    v8 = v7;
    self = v8;
    goto LABEL_6;
  }

  if (v6)
  {
    v7 = [(PHSearchQueryAnnotation *)self initWithQueryToken:v6];
    goto LABEL_5;
  }

  v10 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_FAULT, "Both suggestion and QUToken are nil", v11, 2u);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (unint64_t)ambiguityType
{
  v3 = [(PHSearchQueryAnnotation *)self suggestion];

  if (v3)
  {
    return 0;
  }

  v5 = [(PHSearchQueryAnnotation *)self QUToken];
  v6 = [v5 ambiguityType];

  return v6;
}

- (PHSearchQueryAnnotation)initWithSuggestion:(id)a3 queryToken:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PHSearchQueryAnnotation.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"suggestion"}];
  }

  v14.receiver = self;
  v14.super_class = PHSearchQueryAnnotation;
  v10 = [(PHSearchQueryAnnotation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_suggestion, a3);
    objc_storeStrong(&v11->_QUToken, a4);
  }

  return v11;
}

- (PHSearchQueryAnnotation)initWithQueryToken:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PHSearchQueryAnnotation.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"queryToken"}];
  }

  v11.receiver = self;
  v11.super_class = PHSearchQueryAnnotation;
  v7 = [(PHSearchQueryAnnotation *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_QUToken, a3);
  }

  return v8;
}

+ (BOOL)hasCSAttributedEntityTypePhotosMemoriesTripKeyInAttributedQueryString:(id)a3
{
  v3 = [a3 attribute:*MEMORY[0x1E6963A08] atIndex:0 effectiveRange:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)searchQueryAnnotationsFromAttributedQueryString:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PHSearchQueryAnnotation_searchQueryAnnotationsFromAttributedQueryString___block_invoke;
  v10[3] = &unk_1E75A4B58;
  v11 = v5;
  v7 = v5;
  [v4 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v10}];

  v8 = [v7 copy];

  return v8;
}

uint64_t __75__PHSearchQueryAnnotation_searchQueryAnnotationsFromAttributedQueryString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (id)annotatedQueryStringByFilteringToPHSearchQueryAttributes:(id)a3
{
  v3 = MEMORY[0x1E696AD40];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 string];
  v7 = [v5 initWithString:v6];

  v8 = [v4 length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PHSearchQueryAnnotation_annotatedQueryStringByFilteringToPHSearchQueryAttributes___block_invoke;
  v12[3] = &unk_1E75A4BA8;
  v13 = v7;
  v9 = v7;
  [v4 enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v8 usingBlock:{0, v12}];

  v10 = [v9 copy];

  return v10;
}

uint64_t __84__PHSearchQueryAnnotation_annotatedQueryStringByFilteringToPHSearchQueryAttributes___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:@"PHSearchQueryAttributeKey" value:a2 range:{a3, a4}];
  }

  return result;
}

+ (id)_annotationFromQueryString:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9709;
  v14 = __Block_byref_object_dispose__9710;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PHSearchQueryAnnotation__annotationFromQueryString_inRange___block_invoke;
  v9[3] = &unk_1E75A4B08;
  v9[4] = &v10;
  [v6 enumerateAttributesInRange:location options:length usingBlock:{0, v9}];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __62__PHSearchQueryAnnotation__annotationFromQueryString_inRange___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_updateSpotlightAttributedQueryString:(id)a3 disambiguation:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [(__CFString *)v10 categoriesType];
  if (v11 <= 6)
  {
    if (v11 == 1)
    {
      v22 = [(__CFString *)v10 locationAssetUUIDs];
      v23 = [v22 count];

      v24 = MEMORY[0x1E69639C0];
      if (v23)
      {
        v24 = MEMORY[0x1E69639A8];
      }

      [v9 tagRangeWithFilter:location withCSAttributedEntityKey:{length, *v24}];
      goto LABEL_30;
    }

    if (v11 != 4)
    {
      goto LABEL_17;
    }

    v14 = [(__CFString *)v10 startDate];
    v15 = [(__CFString *)v10 endDate];
    v16 = [(__CFString *)v10 startDateComponents];
    v17 = v16;
    if (v14 && v15)
    {
      [v9 tagRangeWithFilter:location withCSAttributedEntityKey:length startDate:*MEMORY[0x1E69639D8] endDate:{v14, v15}];
    }

    else
    {
      if (!v16)
      {
        v34 = PLSearchBackendQueryGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v9 string];
          *buf = 138412546;
          v38 = v10;
          v39 = 2112;
          v40 = v35;
          _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEFAULT, "Nil dates and date components found for date type suggestion: %@ for Spotlight query: %@, attempting to annotate with non-disambiguation tagging.", buf, 0x16u);
        }

        v30 = [a1 _updateSpotlightAttributedQueryString:v9 suggestion:v10 range:{location, length}];

        goto LABEL_26;
      }

      v28 = [(__CFString *)v10 endDateComponents];
      [v9 tagRangeWithFilter:location withCSAttributedEntityKey:length startDateComponents:*MEMORY[0x1E6963968] endDateComponents:{v17, v28}];
    }

    goto LABEL_30;
  }

  if (v11 == 42)
  {
    v18 = PLServicesLocalizedFrameworkString();
    v14 = v18;
    if (v18)
    {
      v19 = *MEMORY[0x1E69639C8];
      v36 = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
      [v9 tagRangeWithFilter:location withCSAttributedEntityKey:length stringValues:{v19, v20}];
    }

    else
    {
      v20 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v29 = [v9 string];
        *buf = 138412290;
        v38 = v29;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Unable to find localized string for SEARCH_TRIP, will not annotate query as trip: %@", buf, 0xCu);
      }
    }

    [v9 tagRangeWithFilter:location withCSAttributedEntityKey:{length, *MEMORY[0x1E69639C0]}];
    v30 = v9;
LABEL_26:

    goto LABEL_32;
  }

  if (v11 != 12)
  {
    if (v11 == 7)
    {
      v12 = *MEMORY[0x1E6963A38];
      v13 = [(__CFString *)v10 personUUIDs];
      [v9 tagRangeWithFilter:location withCSAttributedEntityKey:length stringValues:v12 filterOperator:{v13, 1}];

LABEL_30:
      v21 = v9;
      goto LABEL_31;
    }

LABEL_17:
    v25 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [(__CFString *)v10 categoriesType];
      if (v26 > 0x2C)
      {
        v27 = @"undefined";
      }

      else
      {
        v27 = off_1E75A60F8[v26];
      }

      v31 = v27;
      v32 = [(__CFString *)v10 text];
      *buf = 138412546;
      v38 = v31;
      v39 = 2112;
      v40 = v32;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Unsupported categories type found for disambiguation suggestion: %@, no query filter applied for the suggestion: %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v21 = [a1 _updateSpotlightAttributedQueryString:v9 suggestion:v10 range:{location, length}];
LABEL_31:
  v30 = v21;
LABEL_32:

  return v30;
}

+ (id)_updateSpotlightAttributedQueryString:(id)a3 suggestion:(id)a4 range:(_NSRange)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v58 = a4;
  v7 = [v58 suggestionComponents];
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v62;
    v53 = *MEMORY[0x1E69BF0F0];
    v54 = *MEMORY[0x1E6963A78];
    v51 = *MEMORY[0x1E69BF0D0];
    v52 = *MEMORY[0x1E69BF0E0];
    *&v9 = 138412546;
    v50 = v9;
    v57 = v6;
    do
    {
      v12 = 0;
      do
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v61 + 1) + 8 * v12);
        v14 = +[PHSearchUtility CSAttributedEntityKeyFromIndexCategoryType:](PHSearchUtility, "CSAttributedEntityKeyFromIndexCategoryType:", [v13 indexCategory]);
        if (!v14)
        {
          v16 = PLSearchBackendQueryGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [v13 indexCategory];
            v17 = PLDebugStringForSearchIndexCategory();
            *buf = 138412802;
            v70 = v17;
            v71 = 2112;
            v72 = v13;
            v73 = 2112;
            v74 = v58;
            _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Unable to find CSAttributedEntityKey for index category: %@, no query filter applied for suggestion component: %@ for suggestion: %@", buf, 0x20u);
          }

          goto LABEL_16;
        }

        v15 = [v13 indexCategory];
        if (v15 <= 1499)
        {
          if (v15 <= 1099)
          {
            if ((v15 - 1) < 0xE)
            {
              goto LABEL_70;
            }

            v18 = v15 + 24;
            if ((v15 - 1000) <= 0xA)
            {
              if (((1 << v18) & 0x783) != 0)
              {
                goto LABEL_70;
              }

              if (((1 << v18) & 0x78) != 0)
              {
                goto LABEL_88;
              }
            }

            if (v15)
            {
              goto LABEL_72;
            }

            v19 = PLSearchBackendQueryGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = v50;
              v70 = v13;
              v71 = 2112;
              v72 = v58;
              _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Unexpected PLSearchIndexCategoryNone, no query filter applied for suggestion component: %@ for suggestion: %@", buf, 0x16u);
            }

            goto LABEL_81;
          }

          if (v15 <= 1199)
          {
            if ((v15 - 1100) > 9)
            {
              goto LABEL_72;
            }

            if (v15 != 1102)
            {
              goto LABEL_70;
            }

            v21 = [v13 completionSuggestionStartDateComponents];

            if (v21)
            {
              v22 = [v13 completionSuggestionStartDateComponents];
              v23 = [v13 completionSuggestionEndDateComponents];
              [v6 tagRangeWithFilter:a5.location withCSAttributedEntityKey:a5.length startDateComponents:v14 endDateComponents:{v22, v23}];
            }
          }

          else if (v15 > 1309)
          {
            if (v15 > 1330)
            {
              if (v15 <= 1400)
              {
                if (v15 == 1331)
                {
LABEL_70:
                  v30 = v6;
                  location = a5.location;
                  length = a5.length;
                  v33 = v14;
                }

                else
                {
                  if (v15 != 1400)
                  {
                    goto LABEL_72;
                  }

                  v67 = v51;
                  v28 = MEMORY[0x1E695DEC8];
                  v29 = &v67;
LABEL_91:
                  v45 = [v28 arrayWithObjects:v29 count:1];
                  [v6 tagRangeWithFilter:a5.location withCSAttributedEntityKey:a5.length stringValues:{v14, v45}];

                  v30 = v6;
                  location = a5.location;
                  length = a5.length;
                  v33 = v54;
                }

                [v30 tagRangeWithFilter:location withCSAttributedEntityKey:{length, v33}];
                goto LABEL_72;
              }

              if (v15 == 1401)
              {
                v65 = v53;
                v28 = MEMORY[0x1E695DEC8];
                v29 = &v65;
                goto LABEL_91;
              }

              if (v15 == 1402)
              {
                v66 = v52;
                v28 = MEMORY[0x1E695DEC8];
                v29 = &v66;
                goto LABEL_91;
              }
            }

            else if ((v15 - 1320) < 2)
            {
              v40 = [v13 lookupIdentifier];

              if (v40)
              {
                v41 = [v13 lookupIdentifier];
                v42 = PLSearchContributorUUIDFromLookupIdentifier();

                v68 = v42;
                v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
                [v6 tagRangeWithFilter:a5.location withCSAttributedEntityKey:a5.length stringValues:{v14, v43}];
              }
            }

            else
            {
              if (v15 == 1310)
              {
                goto LABEL_88;
              }

              if (v15 == 1330)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            if ((v15 - 1200) < 6)
            {
              goto LABEL_70;
            }

            if (v15 == 1300)
            {
LABEL_59:
              v25 = [v58 personUUIDs];
              v26 = [v25 count];

              if (v26)
              {
                v27 = [v58 personUUIDs];
                [v6 tagRangeWithFilter:a5.location withCSAttributedEntityKey:a5.length stringValues:v14 filterOperator:{v27, 0}];
              }

              goto LABEL_72;
            }

            if (v15 == 1301)
            {
              goto LABEL_70;
            }
          }
        }

        else if (v15 <= 1899)
        {
          if (v15 > 1599)
          {
            v24 = (v15 - 1600) > 0xB || ((1 << (v15 - 64)) & 0xC03) == 0;
            if (!v24 || (v15 - 1800) < 4 || (v15 - 1700) < 2)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v20 = v15 + 36;
            if ((v15 - 1500) > 0x29)
            {
              goto LABEL_72;
            }

            if (((1 << v20) & 0xC0300C03) != 0)
            {
              goto LABEL_75;
            }

            if (((1 << v20) & 0x30000000000) != 0)
            {
              goto LABEL_88;
            }
          }
        }

        else if (v15 > 2199)
        {
          if (v15 > 2599)
          {
            if (v15 > 2799)
            {
              if ((v15 - 2900) < 2)
              {
                goto LABEL_70;
              }

              if (v15 == 2800)
              {
LABEL_88:
                v16 = PLSearchBackendQueryGetLog();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  [v13 indexCategory];
                  v44 = PLDebugStringForSearchIndexCategory();
                  *buf = 138412802;
                  v70 = v44;
                  v71 = 2112;
                  v72 = v13;
                  v73 = 2112;
                  v74 = v58;
                  _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Unexpected PLSearchIndexCategory: %@, no query filter applied for suggestion component: %@ for suggestion: %@", buf, 0x20u);
                }

LABEL_16:
              }
            }

            else
            {
              if ((v15 - 2600) < 2)
              {
                goto LABEL_75;
              }

              if (v15 == 2700)
              {
                goto LABEL_88;
              }
            }
          }

          else
          {
            if (v15 > 2499)
            {
              if ((v15 - 2500) >= 2)
              {
                goto LABEL_72;
              }

LABEL_75:
              v34 = +[PHSearchUtility CSSceneTypeFromIndexCategoryType:](PHSearchUtility, "CSSceneTypeFromIndexCategoryType:", [v13 indexCategory]);
              v35 = [v13 lookupIdentifier];
              v36 = [v13 lookupIdentifier];
              if (v36)
              {
                v37 = v36;
                v38 = +[PHSearchUtility sceneIdFromIndexCategoryType:lookupIdentifier:](PHSearchUtility, "sceneIdFromIndexCategoryType:lookupIdentifier:", [v13 indexCategory], v35);

                if (v34 && v38)
                {
                  v39 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
                  [v56 addObject:v39];

                  [v55 addObject:v38];
                }
              }

              else
              {
                v38 = 0;
              }

LABEL_81:
              v6 = v57;
              goto LABEL_72;
            }

            if ((v15 - 2400) < 2 || v15 == 2200 || v15 == 2300)
            {
              goto LABEL_70;
            }
          }
        }

        else
        {
          if ((v15 - 1900) < 0x15)
          {
            goto LABEL_70;
          }

          if (v15 == 2000)
          {
            [v6 tagRangeWithFilter:a5.location withCSAttributedEntityKey:a5.length numberValues:{v14, &unk_1F102DEB0}];
          }

          else if (v15 == 2100)
          {
            goto LABEL_70;
          }
        }

LABEL_72:

        ++v12;
      }

      while (v10 != v12);
      v46 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
      v10 = v46;
    }

    while (v46);
  }

  v47 = [v56 count];
  if (v47 == [v55 count])
  {
    if ([v56 count] && objc_msgSend(v55, "count"))
    {
      [v6 tagRangeWithSceneFilters:a5.location withCSSceneTypes:a5.length sceneIDs:{v56, v55}];
    }
  }

  else
  {
    v48 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v70 = v58;
      v71 = 2112;
      v72 = v56;
      v73 = 2112;
      v74 = v55;
      _os_log_impl(&dword_19C86F000, v48, OS_LOG_TYPE_ERROR, "Unaligned scene identifiers and scene types, no query filter applied for suggestion: %@, sceneTypes: %@, sceneIds: %@", buf, 0x20u);
    }
  }

  return v6;
}

+ (id)_updateSpotlightAttributedQueryString:(id)a3 withAnnotation:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"PHSearchQueryAnnotation.m" lineNumber:409 description:{@"Invalid parameter not satisfying: %@", @"attributedQueryString"}];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v10 string];
      *buf = 138412546;
      v32 = v21;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Cannot update query string: %@ with annotation: %@ because it belongs to an unexpected class", buf, 0x16u);
    }

    goto LABEL_33;
  }

  if (![PHSearchUtility rangeExists:location forString:length, v10])
  {
    v22 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v10 string];
      v39.location = location;
      v39.length = length;
      v24 = NSStringFromRange(v39);
      *buf = 138412802;
      v32 = v23;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Cannot update query string: %@ with annotation: %@ because the provided range is out of bounds: %@", buf, 0x20u);
    }

    goto LABEL_33;
  }

  v13 = [v12 QUToken];
  if (([v13 hasMemoryGenAnnotation]& 1) != 0)
  {
    v14 = [v12 suggestion];

    if (!v14)
    {
      goto LABEL_10;
    }

    v13 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = [v10 string];
      *buf = 138412546;
      v32 = v12;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_INFO, "Found suggestion on memory gen annotation: %@, may be erroneous for query: %@", buf, 0x16u);
    }
  }

LABEL_10:
  v16 = [v12 suggestion];

  if (!v16)
  {
    v25 = [v12 QUToken];
    v26 = [v25 hasMemoryGenAnnotation];

    if (v26)
    {
      v27 = [v12 QUToken];
      v17 = [v27 entityCategoryTypes];

      if (([v17 containsIndex:6] & 1) == 0 && ((objc_msgSend(v17, "containsIndex:", 12) & 1) != 0 || (objc_msgSend(v17, "containsIndex:", 13) & 1) != 0 || (objc_msgSend(v17, "containsIndex:", 9) & 1) != 0 || (objc_msgSend(v17, "containsIndex:", 11) & 1) != 0 || objc_msgSend(v17, "containsIndex:", 10)))
      {
        [v10 tagRangeWithFilter:location withCSAttributedEntityKey:{length, *MEMORY[0x1E69639A8]}];
      }

      goto LABEL_32;
    }

LABEL_33:
    v28 = v10;
    goto LABEL_34;
  }

  v17 = [v12 suggestion];
  v18 = [v17 type];
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v19 = [a1 _updateSpotlightAttributedQueryString:v10 disambiguation:v17 range:{location, length}];
      goto LABEL_38;
    }

    if (v18 != 4)
    {
      goto LABEL_32;
    }

LABEL_31:
    v19 = [a1 _updateSpotlightAttributedQueryString:v10 suggestion:v17 range:{location, length}];
    goto LABEL_38;
  }

  if ((v18 - 1) < 2)
  {
    goto LABEL_31;
  }

  if (v18)
  {
LABEL_32:

    goto LABEL_33;
  }

  v19 = v10;
LABEL_38:
  v28 = v19;

LABEL_34:

  return v28;
}

+ (id)annotatedQueryStringFromSpotlightAttributedQueryString:(id)a3 forSearchQuery:(id)a4 photoLibrary:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 searchText];
  v12 = [PHSearchUtility insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString:v11];

  v13 = [v9 searchOptions];
  v14 = [v13 spotlightQUTypes];

  if (v14 != 1)
  {
    if ([v8 length])
    {
      v15 = [v8 string];
      v16 = [v12 string];
      v17 = [v15 isEqualToString:v16];

      if (v17)
      {
        v18 = objc_alloc(MEMORY[0x1E696AD40]);
        v19 = [v8 string];
        v20 = [v18 initWithString:v19];

        v21 = [v12 length];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __110__PHSearchQueryAnnotation_annotatedQueryStringFromSpotlightAttributedQueryString_forSearchQuery_photoLibrary___block_invoke;
        v38[3] = &unk_1E75A4B58;
        v22 = v20;
        v39 = v22;
        [v12 enumerateAttributesInRange:0 options:v21 usingBlock:{0, v38}];
        v23 = [v8 length];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __110__PHSearchQueryAnnotation_annotatedQueryStringFromSpotlightAttributedQueryString_forSearchQuery_photoLibrary___block_invoke_2;
        v31[3] = &unk_1E75A4B80;
        v37 = a1;
        v32 = v12;
        v33 = v9;
        v34 = v8;
        v35 = v10;
        v24 = v22;
        v36 = v24;
        [v34 enumerateAttributesInRange:0 options:v23 usingBlock:{0, v31}];
        v25 = v36;
        v26 = v24;

        goto LABEL_11;
      }

      v27 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [v8 string];
        v29 = [v12 string];
        *buf = 138412546;
        v41 = v28;
        v42 = 2112;
        v43 = v29;
        _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "QU annotated string value: %@ is not equal to the original string provided to spotlight: %@, cannot annotate the provided string.", buf, 0x16u);
      }
    }

    else
    {
      v27 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v12;
        _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_ERROR, "No QU annotated string provided to search by Spotlight for query: %@", buf, 0xCu);
      }
    }
  }

  v26 = [v12 copy];
LABEL_11:

  return v26;
}

void __110__PHSearchQueryAnnotation_annotatedQueryStringFromSpotlightAttributedQueryString_forSearchQuery_photoLibrary___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];
  v7 = [v8 suggestion];
  if (v7)
  {
    [*(a1 + 32) addAttribute:@"PHSearchQueryAttributeKey" value:v8 range:{a3, a4}];
  }
}

void __110__PHSearchQueryAnnotation_annotatedQueryStringFromSpotlightAttributedQueryString_forSearchQuery_photoLibrary___block_invoke_2(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v98 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 72) _annotationFromQueryString:*(a1 + 32) inRange:{a3, a4}];
  if (v8)
  {
    goto LABEL_74;
  }

  v9 = [*(a1 + 40) searchOptions];
  v10 = [v9 spotlightQUTypes];

  v11 = [*(a1 + 40) searchOptions];
  v12 = [v11 spotlightQUTypes];

  if (PHSearchNaturalLanguageDateSuggestionsEnabled_once != -1)
  {
    dispatch_once(&PHSearchNaturalLanguageDateSuggestionsEnabled_once, &__block_literal_global_987);
  }

  if (PHSearchNaturalLanguageDateSuggestionsEnabled_naturalLanguageDateSuggestionsEnabled == 1)
  {
    v13 = [*(a1 + 40) searchOptions];
    v14 = ([v13 spotlightQUTypes] >> 3) & 1;

    if ((v10 & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v14) = 0;
    if ((v10 & 2) != 0)
    {
LABEL_6:
      v15 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6963A28]];
      v16 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6963A38]];
      if ((v12 & 4) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v73 = 0;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_12:
      v74 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6963968]];
      goto LABEL_13;
    }
  }

  v16 = 0;
  v15 = 0;
  if ((v12 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v73 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69639C0]];
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_8:
  v74 = 0;
LABEL_13:
  v17 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v71 = v17;
  v72 = v16;
  range = a4;
  if (v15 | v16)
  {
    [v17 addIndex:3];
    v65 = [PHSearchQueryQUToken entityCategoryTypeKeyForEntityTypeCategory:3];
    v18 = [*(a1 + 48) string];
    v19 = [v18 substringWithRange:{a3, a4}];

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = v20;
    if (v16)
    {
      [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6963A38]];
    }

    if (v15)
    {
      [v21 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6963A28]];
    }

    v68 = v15;
    v64 = v19;
    if (*(a1 + 56))
    {
      v22 = [PHSearchQueryDisambiguation performDisambiguationForPersonName:v19 expansionStringValuesByCSAttributedEntityType:v21 photoLibrary:v19];
    }

    else
    {
      v22 = v16;
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v84 objects:v97 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v85;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v85 != v26)
          {
            objc_enumerationMutation(v23);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v29 = v65;
            [v75 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:v65];
            v30 = PLSearchBackendQueryGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v99.location = a3;
              v99.length = range;
              v31 = NSStringFromRange(v99);
              v32 = [*(a1 + 40) searchText];
              *buf = 138412802;
              v92 = v31;
              v93 = 2112;
              v94 = v32;
              v95 = 2112;
              v96 = v23;
              _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "QU person data for range: %@ in query: %@ has an unexpected data type: %@", buf, 0x20u);
            }

            goto LABEL_36;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v84 objects:v97 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    if ([v23 count])
    {
      v28 = v23;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    v29 = v65;
    [v75 setObject:v28 forKeyedSubscript:{v65, v64}];
LABEL_36:
    v15 = v68;

    a4 = range;
    v17 = v71;
    v16 = v72;
  }

  v33 = v75;
  if (v73)
  {
    [v17 addIndex:4];
    v34 = [PHSearchQueryQUToken entityCategoryTypeKeyForEntityTypeCategory:4];
    v35 = [*(a1 + 48) string];
    v36 = [v35 substringWithRange:{a3, a4}];

    v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (*(a1 + 56))
    {
      v66 = v7;
      v69 = v15;
      v38 = [PHSearchQueryDisambiguation performDisambiguationForLocationName:v36 expansionStringValues:v73 allowedSearchIndexCategories:0 photoLibrary:?];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v39 = [v38 countByEnumeratingWithState:&v80 objects:v90 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v81;
        do
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v81 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = [*(*(&v80 + 1) + 8 * j) normalizedText];
            [v37 addObject:v43];
          }

          v40 = [v38 countByEnumeratingWithState:&v80 objects:v90 count:16];
        }

        while (v40);
      }

      v7 = v66;
      v15 = v69;
      v33 = v75;
    }

    v44 = [v36 lowercaseString];
    if ([v37 containsObject:v44])
    {
      v89 = v44;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
    }

    else
    {
      [v37 allObjects];
    }
    v45 = ;
    [v33 setObject:v45 forKeyedSubscript:v34];

    a4 = range;
    v17 = v71;
    v16 = v72;
  }

  if (v74)
  {
    [v17 addIndex:2];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v46 = v74;
    v47 = [v46 countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (v47)
    {
      v48 = v47;
      v67 = a3;
      v49 = v15;
      v50 = v7;
      v51 = *v77;
      while (2)
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v77 != v51)
          {
            objc_enumerationMutation(v46);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v53 = 0;
            goto LABEL_62;
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v76 objects:v88 count:16];
        if (v48)
        {
          continue;
        }

        break;
      }

      v53 = 1;
LABEL_62:
      v7 = v50;
      v15 = v49;
      a3 = v67;
      v17 = v71;
      v16 = v72;
    }

    else
    {
      v53 = 1;
    }

    v54 = [PHSearchQueryQUToken entityCategoryTypeKeyForEntityTypeCategory:2];
    if (v53 && [v46 count])
    {
      v33 = v75;
      [v75 setObject:v46 forKeyedSubscript:v54];
    }

    else
    {
      v33 = v75;
      [v75 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:{v54, v64}];
      v55 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v100.location = a3;
        v100.length = a4;
        v56 = NSStringFromRange(v100);
        v57 = [*(a1 + 40) searchText];
        *buf = 138412802;
        v92 = v56;
        v93 = 2112;
        v94 = v57;
        v95 = 2112;
        v96 = v46;
        _os_log_impl(&dword_19C86F000, v55, OS_LOG_TYPE_ERROR, "QU date data for range: %@ in query: %@ has an unexpected data type: %@", buf, 0x20u);

        v33 = v75;
      }

      v17 = v71;
      v16 = v72;
    }
  }

  if ([v33 count])
  {
    v58 = [*(a1 + 64) string];
    v59 = [v58 substringWithRange:{a3, a4}];

    v60 = [PHSearchQueryQUToken alloc];
    v61 = [v17 copy];
    v62 = [(PHSearchQueryQUToken *)v60 initWithText:v59 entityCategoryTypes:v61 metadata:v75];

    v63 = [[PHSearchQueryAnnotation alloc] initWithQueryToken:v62];
    [*(a1 + 64) addAttribute:@"PHSearchQueryAttributeKey" value:v63 range:{a3, a4}];

    v33 = v75;
  }

  v8 = 0;
LABEL_74:
}

+ (id)spotlightAttributedQueryStringFromAnnotatedQueryString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__9709;
    v15 = __Block_byref_object_dispose__9710;
    v5 = objc_alloc(MEMORY[0x1E696AD40]);
    v6 = [v4 string];
    v16 = [v5 initWithString:v6];

    v7 = [v4 length];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__PHSearchQueryAnnotation_spotlightAttributedQueryStringFromAnnotatedQueryString___block_invoke;
    v10[3] = &unk_1E75A4B30;
    v10[4] = &v11;
    v10[5] = a1;
    [v4 enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v7 usingBlock:{0, v10}];
    v8 = [v12[5] copy];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __82__PHSearchQueryAnnotation_spotlightAttributedQueryStringFromAnnotatedQueryString___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = result;
    *(*(*(v4 + 32) + 8) + 40) = [*(result + 40) _updateSpotlightAttributedQueryString:*(*(*(result + 32) + 8) + 40) withAnnotation:a2 range:{a3, a4}];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)selectedSuggestionsFromQueryString:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (![v8 length])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PHSearchQueryAnnotation.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"queryString.length > 0"}];
  }

  if ([PHSearchUtility rangeExists:location forString:length, v8])
  {
    *v25 = 0;
    *&v25[8] = v25;
    *&v25[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__9709;
    v27 = __Block_byref_object_dispose__9710;
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [v8 attributedSubstringFromRange:{location, length}];
    v10 = [v9 length];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70__PHSearchQueryAnnotation_selectedSuggestionsFromQueryString_inRange___block_invoke;
    v20[3] = &unk_1E75A4B08;
    v20[4] = v25;
    [v9 enumerateAttributesInRange:0 options:v10 usingBlock:{0, v20}];
    if (![*(*&v25[8] + 40) count])
    {
      v11 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v31.location = location;
        v31.length = length;
        v12 = NSStringFromRange(v31);
        v13 = [v8 string];
        *buf = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_INFO, "Unable to find selected suggestions in range: %@ for query string: %@", buf, 0x16u);
      }
    }

    v14 = *(*&v25[8] + 40);

    _Block_object_dispose(v25, 8);
  }

  else
  {
    v15 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v32.location = location;
      v32.length = length;
      v16 = NSStringFromRange(v32);
      v17 = [v8 string];
      *v25 = 138412546;
      *&v25[4] = v16;
      *&v25[12] = 2112;
      *&v25[14] = v17;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Received out of bounds range: %@ for query string: %@", v25, 0x16u);
    }

    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

void __70__PHSearchQueryAnnotation_selectedSuggestionsFromQueryString_inRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];
  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v6 = v3;
    v5 = [v3 suggestion];
    [v4 addObject:v5];

    v3 = v6;
  }
}

+ (id)updateQueryString:(id)a3 withSelectedSuggestion:(id)a4 inRange:(_NSRange)a5 additionalAttributes:(id)a6
{
  length = a5.length;
  location = a5.location;
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (![v12 length])
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PHSearchQueryAnnotation.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"queryString.length > 0"}];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_18:
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PHSearchQueryAnnotation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"selectedSuggestion"}];

    goto LABEL_3;
  }

  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ([v13 type] == 2 || +[PHSearchUtility rangeExists:forString:](PHSearchUtility, "rangeExists:forString:", location, length, v12))
  {
    v15 = [v12 mutableCopy];
    if ([v13 type] == 2)
    {
      v16 = objc_alloc(MEMORY[0x1E696AD40]);
      v17 = [v13 text];
      v18 = [v16 initWithString:v17];

      v19 = [[PHSearchQueryAnnotation alloc] initWithSuggestion:v13 queryToken:0];
      v36 = @"PHSearchQueryAttributeKey";
      v37 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v21 = [v20 mutableCopy];

      if (v14)
      {
        [v21 addEntriesFromDictionary:v14];
      }

      v22 = [v21 copy];
      [v18 setAttributes:v22 range:{0, objc_msgSend(v18, "length")}];

      [v15 appendAttributedString:v18];
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __97__PHSearchQueryAnnotation_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes___block_invoke;
      v30[3] = &unk_1E75A4AE0;
      v34 = location;
      v35 = length;
      v31 = v15;
      v32 = v13;
      v33 = v14;
      [v12 enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:location options:length usingBlock:{0, v30}];

      v18 = v31;
    }

    v23 = [v15 copy];
  }

  else
  {
    v24 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v46.location = location;
      v46.length = length;
      v25 = NSStringFromRange(v46);
      v26 = [v12 string];
      *buf = 138412802;
      v39 = v25;
      v40 = 2112;
      v41 = v13;
      v42 = 2112;
      v43 = v26;
      _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "Received out of bounds range: %@ for suggestion: %@ in query string: %@", buf, 0x20u);
    }

    v23 = v12;
  }

  return v23;
}

void __97__PHSearchQueryAnnotation_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = v9;
  if (a3 == *(a1 + 56) && a4 == *(a1 + 64))
  {
    v12 = v9;
    if (v12)
    {
      [*(a1 + 32) removeAttribute:@"PHSearchQueryAttributeKey" range:{*(a1 + 56), *(a1 + 64)}];
    }

    v13 = [v12 QUToken];
    v14 = [[PHSearchQueryAnnotation alloc] initWithSuggestion:*(a1 + 40) queryToken:v13];
    if ([*(a1 + 40) type])
    {
      v22 = @"PHSearchQueryAttributeKey";
      v23[0] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v16 = [v15 mutableCopy];

      if (*(a1 + 48))
      {
        [v16 addEntriesFromDictionary:?];
      }

      if ([*(a1 + 40) type] == 3)
      {
        v17 = *(a1 + 32);
        v18 = [v16 copy];
        [v17 setAttributes:v18 range:{*(a1 + 56), *(a1 + 64)}];
      }

      else
      {
        v19 = objc_alloc(MEMORY[0x1E696AD40]);
        v20 = [*(a1 + 40) text];
        v18 = [v19 initWithString:v20];

        v21 = [v16 copy];
        [v18 setAttributes:v21 range:{0, objc_msgSend(v18, "length")}];

        [*(a1 + 32) replaceCharactersInRange:*(a1 + 56) withAttributedString:{*(a1 + 64), v18}];
      }
    }

    *a5 = 1;
  }
}

@end