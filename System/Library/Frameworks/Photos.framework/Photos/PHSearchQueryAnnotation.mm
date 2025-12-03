@interface PHSearchQueryAnnotation
+ (BOOL)hasCSAttributedEntityTypePhotosMemoriesTripKeyInAttributedQueryString:(id)string;
+ (id)_annotationFromQueryString:(id)string inRange:(_NSRange)range;
+ (id)_updateSpotlightAttributedQueryString:(id)string disambiguation:(id)disambiguation range:(_NSRange)range;
+ (id)_updateSpotlightAttributedQueryString:(id)string suggestion:(id)suggestion range:(_NSRange)range;
+ (id)_updateSpotlightAttributedQueryString:(id)string withAnnotation:(id)annotation range:(_NSRange)range;
+ (id)annotatedQueryStringByFilteringToPHSearchQueryAttributes:(id)attributes;
+ (id)annotatedQueryStringFromSpotlightAttributedQueryString:(id)string forSearchQuery:(id)query photoLibrary:(id)library;
+ (id)searchQueryAnnotationsFromAttributedQueryString:(id)string;
+ (id)selectedSuggestionsFromQueryString:(id)string inRange:(_NSRange)range;
+ (id)spotlightAttributedQueryStringFromAnnotatedQueryString:(id)string;
+ (id)updateQueryString:(id)string withSelectedSuggestion:(id)suggestion inRange:(_NSRange)range additionalAttributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (PHSearchQueryAnnotation)initWithCoder:(id)coder;
- (PHSearchQueryAnnotation)initWithQueryToken:(id)token;
- (PHSearchQueryAnnotation)initWithSuggestion:(id)suggestion queryToken:(id)token;
- (id)description;
- (id)jsonDictionary;
- (unint64_t)ambiguityType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHSearchQueryAnnotation

- (id)jsonDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  suggestion = [(PHSearchQueryAnnotation *)self suggestion];
  jsonDictionary = [suggestion jsonDictionary];
  [v3 setObject:jsonDictionary forKeyedSubscript:@"suggestion"];

  qUToken = [(PHSearchQueryAnnotation *)self QUToken];
  jsonDictionary2 = [qUToken jsonDictionary];
  [v3 setObject:jsonDictionary2 forKeyedSubscript:@"disambiguation_token"];

  ambiguityType = [(PHSearchQueryAnnotation *)self ambiguityType];
  v9 = @"PHSearchAmbiguityTypeNone";
  if (ambiguityType == 1)
  {
    v9 = @"PHSearchAmbiguityTypePartiallyAmbiguous";
  }

  if (ambiguityType == 2)
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
  suggestion = [(PHSearchQueryAnnotation *)self suggestion];
  v4 = [suggestion hash];
  qUToken = [(PHSearchQueryAnnotation *)self QUToken];
  v6 = [qUToken hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      suggestion = [(PHSearchQueryAnnotation *)self suggestion];
      if (suggestion && ([(PHSearchQueryAnnotation *)v5 suggestion], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = v7;
        suggestion2 = [(PHSearchQueryAnnotation *)self suggestion];
        suggestion3 = [(PHSearchQueryAnnotation *)v5 suggestion];
        v11 = [suggestion2 isEqual:suggestion3];

        if (v11)
        {
LABEL_6:
          qUToken = [(PHSearchQueryAnnotation *)self QUToken];
          if (qUToken && ([(PHSearchQueryAnnotation *)v5 QUToken], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            qUToken4 = v13;
            qUToken2 = [(PHSearchQueryAnnotation *)self QUToken];
            qUToken3 = [(PHSearchQueryAnnotation *)v5 QUToken];
            v17 = [qUToken2 isEqual:qUToken3];
          }

          else
          {
            qUToken4 = [(PHSearchQueryAnnotation *)self QUToken];
            qUToken2 = [(PHSearchQueryAnnotation *)v5 QUToken];
            v17 = qUToken4 == qUToken2;
          }

          goto LABEL_17;
        }
      }

      else
      {
        suggestion4 = [(PHSearchQueryAnnotation *)self suggestion];
        suggestion5 = [(PHSearchQueryAnnotation *)v5 suggestion];

        if (suggestion)
        {
        }

        if (suggestion4 == suggestion5)
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
  qUToken = [(PHSearchQueryAnnotation *)self QUToken];
  suggestion = [(PHSearchQueryAnnotation *)self suggestion];
  ambiguityType = [(PHSearchQueryAnnotation *)self ambiguityType];
  v7 = @"PHSearchAmbiguityTypeNone";
  if (ambiguityType == 1)
  {
    v7 = @"PHSearchAmbiguityTypePartiallyAmbiguous";
  }

  if (ambiguityType == 2)
  {
    v7 = @"PHSearchAmbiguityTypeFullyAmbiguous";
  }

  v8 = v7;
  v9 = [v3 stringWithFormat:@"QU token: %@, suggestion: %@, ambiguityType: %@", qUToken, suggestion, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  suggestion = self->_suggestion;
  coderCopy = coder;
  [coderCopy encodeObject:suggestion forKey:@"PHSearchQueryAnnotationPropertySuggestion"];
  [coderCopy encodeObject:self->_QUToken forKey:@"PHSearchQueryAnnotationPropertyToken"];
}

- (PHSearchQueryAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryAnnotationPropertySuggestion"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PHSearchQueryAnnotationPropertyToken"];

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
  suggestion = [(PHSearchQueryAnnotation *)self suggestion];

  if (suggestion)
  {
    return 0;
  }

  qUToken = [(PHSearchQueryAnnotation *)self QUToken];
  ambiguityType = [qUToken ambiguityType];

  return ambiguityType;
}

- (PHSearchQueryAnnotation)initWithSuggestion:(id)suggestion queryToken:(id)token
{
  suggestionCopy = suggestion;
  tokenCopy = token;
  if (!suggestionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryAnnotation.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"suggestion"}];
  }

  v14.receiver = self;
  v14.super_class = PHSearchQueryAnnotation;
  v10 = [(PHSearchQueryAnnotation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_suggestion, suggestion);
    objc_storeStrong(&v11->_QUToken, token);
  }

  return v11;
}

- (PHSearchQueryAnnotation)initWithQueryToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryAnnotation.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"queryToken"}];
  }

  v11.receiver = self;
  v11.super_class = PHSearchQueryAnnotation;
  v7 = [(PHSearchQueryAnnotation *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_QUToken, token);
  }

  return v8;
}

+ (BOOL)hasCSAttributedEntityTypePhotosMemoriesTripKeyInAttributedQueryString:(id)string
{
  v3 = [string attribute:*MEMORY[0x1E6963A08] atIndex:0 effectiveRange:0];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)searchQueryAnnotationsFromAttributedQueryString:(id)string
{
  v3 = MEMORY[0x1E695DF70];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  v6 = [stringCopy length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PHSearchQueryAnnotation_searchQueryAnnotationsFromAttributedQueryString___block_invoke;
  v10[3] = &unk_1E75A4B58;
  v11 = v5;
  v7 = v5;
  [stringCopy enumerateAttributesInRange:0 options:v6 usingBlock:{0, v10}];

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

+ (id)annotatedQueryStringByFilteringToPHSearchQueryAttributes:(id)attributes
{
  v3 = MEMORY[0x1E696AD40];
  attributesCopy = attributes;
  v5 = [v3 alloc];
  string = [attributesCopy string];
  v7 = [v5 initWithString:string];

  v8 = [attributesCopy length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PHSearchQueryAnnotation_annotatedQueryStringByFilteringToPHSearchQueryAttributes___block_invoke;
  v12[3] = &unk_1E75A4BA8;
  v13 = v7;
  v9 = v7;
  [attributesCopy enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v8 usingBlock:{0, v12}];

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

+ (id)_annotationFromQueryString:(id)string inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stringCopy = string;
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
  [stringCopy enumerateAttributesInRange:location options:length usingBlock:{0, v9}];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __62__PHSearchQueryAnnotation__annotationFromQueryString_inRange___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 objectForKeyedSubscript:@"PHSearchQueryAttributeKey"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_updateSpotlightAttributedQueryString:(id)string disambiguation:(id)disambiguation range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v41 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  disambiguationCopy = disambiguation;
  categoriesType = [(__CFString *)disambiguationCopy categoriesType];
  if (categoriesType <= 6)
  {
    if (categoriesType == 1)
    {
      locationAssetUUIDs = [(__CFString *)disambiguationCopy locationAssetUUIDs];
      v23 = [locationAssetUUIDs count];

      v24 = MEMORY[0x1E69639C0];
      if (v23)
      {
        v24 = MEMORY[0x1E69639A8];
      }

      [stringCopy tagRangeWithFilter:location withCSAttributedEntityKey:{length, *v24}];
      goto LABEL_30;
    }

    if (categoriesType != 4)
    {
      goto LABEL_17;
    }

    startDate = [(__CFString *)disambiguationCopy startDate];
    endDate = [(__CFString *)disambiguationCopy endDate];
    startDateComponents = [(__CFString *)disambiguationCopy startDateComponents];
    v17 = startDateComponents;
    if (startDate && endDate)
    {
      [stringCopy tagRangeWithFilter:location withCSAttributedEntityKey:length startDate:*MEMORY[0x1E69639D8] endDate:{startDate, endDate}];
    }

    else
    {
      if (!startDateComponents)
      {
        v34 = PLSearchBackendQueryGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          string = [stringCopy string];
          *buf = 138412546;
          v38 = disambiguationCopy;
          v39 = 2112;
          v40 = string;
          _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEFAULT, "Nil dates and date components found for date type suggestion: %@ for Spotlight query: %@, attempting to annotate with non-disambiguation tagging.", buf, 0x16u);
        }

        v30 = [self _updateSpotlightAttributedQueryString:stringCopy suggestion:disambiguationCopy range:{location, length}];

        goto LABEL_26;
      }

      endDateComponents = [(__CFString *)disambiguationCopy endDateComponents];
      [stringCopy tagRangeWithFilter:location withCSAttributedEntityKey:length startDateComponents:*MEMORY[0x1E6963968] endDateComponents:{v17, endDateComponents}];
    }

    goto LABEL_30;
  }

  if (categoriesType == 42)
  {
    v18 = PLServicesLocalizedFrameworkString();
    startDate = v18;
    if (v18)
    {
      v19 = *MEMORY[0x1E69639C8];
      v36 = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
      [stringCopy tagRangeWithFilter:location withCSAttributedEntityKey:length stringValues:{v19, v20}];
    }

    else
    {
      v20 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        string2 = [stringCopy string];
        *buf = 138412290;
        v38 = string2;
        _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Unable to find localized string for SEARCH_TRIP, will not annotate query as trip: %@", buf, 0xCu);
      }
    }

    [stringCopy tagRangeWithFilter:location withCSAttributedEntityKey:{length, *MEMORY[0x1E69639C0]}];
    v30 = stringCopy;
LABEL_26:

    goto LABEL_32;
  }

  if (categoriesType != 12)
  {
    if (categoriesType == 7)
    {
      v12 = *MEMORY[0x1E6963A38];
      personUUIDs = [(__CFString *)disambiguationCopy personUUIDs];
      [stringCopy tagRangeWithFilter:location withCSAttributedEntityKey:length stringValues:v12 filterOperator:{personUUIDs, 1}];

LABEL_30:
      v21 = stringCopy;
      goto LABEL_31;
    }

LABEL_17:
    v25 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      categoriesType2 = [(__CFString *)disambiguationCopy categoriesType];
      if (categoriesType2 > 0x2C)
      {
        v27 = @"undefined";
      }

      else
      {
        v27 = off_1E75A60F8[categoriesType2];
      }

      v31 = v27;
      text = [(__CFString *)disambiguationCopy text];
      *buf = 138412546;
      v38 = v31;
      v39 = 2112;
      v40 = text;
      _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Unsupported categories type found for disambiguation suggestion: %@, no query filter applied for the suggestion: %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v21 = [self _updateSpotlightAttributedQueryString:stringCopy suggestion:disambiguationCopy range:{location, length}];
LABEL_31:
  v30 = v21;
LABEL_32:

  return v30;
}

+ (id)_updateSpotlightAttributedQueryString:(id)string suggestion:(id)suggestion range:(_NSRange)range
{
  v76 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  suggestionCopy = suggestion;
  suggestionComponents = [suggestionCopy suggestionComponents];
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = suggestionComponents;
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
    v57 = stringCopy;
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
            v74 = suggestionCopy;
            _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Unable to find CSAttributedEntityKey for index category: %@, no query filter applied for suggestion component: %@ for suggestion: %@", buf, 0x20u);
          }

          goto LABEL_16;
        }

        indexCategory = [v13 indexCategory];
        if (indexCategory <= 1499)
        {
          if (indexCategory <= 1099)
          {
            if ((indexCategory - 1) < 0xE)
            {
              goto LABEL_70;
            }

            v18 = indexCategory + 24;
            if ((indexCategory - 1000) <= 0xA)
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

            if (indexCategory)
            {
              goto LABEL_72;
            }

            v19 = PLSearchBackendQueryGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = v50;
              v70 = v13;
              v71 = 2112;
              v72 = suggestionCopy;
              _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Unexpected PLSearchIndexCategoryNone, no query filter applied for suggestion component: %@ for suggestion: %@", buf, 0x16u);
            }

            goto LABEL_81;
          }

          if (indexCategory <= 1199)
          {
            if ((indexCategory - 1100) > 9)
            {
              goto LABEL_72;
            }

            if (indexCategory != 1102)
            {
              goto LABEL_70;
            }

            completionSuggestionStartDateComponents = [v13 completionSuggestionStartDateComponents];

            if (completionSuggestionStartDateComponents)
            {
              completionSuggestionStartDateComponents2 = [v13 completionSuggestionStartDateComponents];
              completionSuggestionEndDateComponents = [v13 completionSuggestionEndDateComponents];
              [stringCopy tagRangeWithFilter:range.location withCSAttributedEntityKey:range.length startDateComponents:v14 endDateComponents:{completionSuggestionStartDateComponents2, completionSuggestionEndDateComponents}];
            }
          }

          else if (indexCategory > 1309)
          {
            if (indexCategory > 1330)
            {
              if (indexCategory <= 1400)
              {
                if (indexCategory == 1331)
                {
LABEL_70:
                  v30 = stringCopy;
                  location = range.location;
                  length = range.length;
                  v33 = v14;
                }

                else
                {
                  if (indexCategory != 1400)
                  {
                    goto LABEL_72;
                  }

                  v67 = v51;
                  v28 = MEMORY[0x1E695DEC8];
                  v29 = &v67;
LABEL_91:
                  v45 = [v28 arrayWithObjects:v29 count:1];
                  [stringCopy tagRangeWithFilter:range.location withCSAttributedEntityKey:range.length stringValues:{v14, v45}];

                  v30 = stringCopy;
                  location = range.location;
                  length = range.length;
                  v33 = v54;
                }

                [v30 tagRangeWithFilter:location withCSAttributedEntityKey:{length, v33}];
                goto LABEL_72;
              }

              if (indexCategory == 1401)
              {
                v65 = v53;
                v28 = MEMORY[0x1E695DEC8];
                v29 = &v65;
                goto LABEL_91;
              }

              if (indexCategory == 1402)
              {
                v66 = v52;
                v28 = MEMORY[0x1E695DEC8];
                v29 = &v66;
                goto LABEL_91;
              }
            }

            else if ((indexCategory - 1320) < 2)
            {
              lookupIdentifier = [v13 lookupIdentifier];

              if (lookupIdentifier)
              {
                lookupIdentifier2 = [v13 lookupIdentifier];
                v42 = PLSearchContributorUUIDFromLookupIdentifier();

                v68 = v42;
                v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
                [stringCopy tagRangeWithFilter:range.location withCSAttributedEntityKey:range.length stringValues:{v14, v43}];
              }
            }

            else
            {
              if (indexCategory == 1310)
              {
                goto LABEL_88;
              }

              if (indexCategory == 1330)
              {
                goto LABEL_59;
              }
            }
          }

          else
          {
            if ((indexCategory - 1200) < 6)
            {
              goto LABEL_70;
            }

            if (indexCategory == 1300)
            {
LABEL_59:
              personUUIDs = [suggestionCopy personUUIDs];
              v26 = [personUUIDs count];

              if (v26)
              {
                personUUIDs2 = [suggestionCopy personUUIDs];
                [stringCopy tagRangeWithFilter:range.location withCSAttributedEntityKey:range.length stringValues:v14 filterOperator:{personUUIDs2, 0}];
              }

              goto LABEL_72;
            }

            if (indexCategory == 1301)
            {
              goto LABEL_70;
            }
          }
        }

        else if (indexCategory <= 1899)
        {
          if (indexCategory > 1599)
          {
            v24 = (indexCategory - 1600) > 0xB || ((1 << (indexCategory - 64)) & 0xC03) == 0;
            if (!v24 || (indexCategory - 1800) < 4 || (indexCategory - 1700) < 2)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v20 = indexCategory + 36;
            if ((indexCategory - 1500) > 0x29)
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

        else if (indexCategory > 2199)
        {
          if (indexCategory > 2599)
          {
            if (indexCategory > 2799)
            {
              if ((indexCategory - 2900) < 2)
              {
                goto LABEL_70;
              }

              if (indexCategory == 2800)
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
                  v74 = suggestionCopy;
                  _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Unexpected PLSearchIndexCategory: %@, no query filter applied for suggestion component: %@ for suggestion: %@", buf, 0x20u);
                }

LABEL_16:
              }
            }

            else
            {
              if ((indexCategory - 2600) < 2)
              {
                goto LABEL_75;
              }

              if (indexCategory == 2700)
              {
                goto LABEL_88;
              }
            }
          }

          else
          {
            if (indexCategory > 2499)
            {
              if ((indexCategory - 2500) >= 2)
              {
                goto LABEL_72;
              }

LABEL_75:
              v34 = +[PHSearchUtility CSSceneTypeFromIndexCategoryType:](PHSearchUtility, "CSSceneTypeFromIndexCategoryType:", [v13 indexCategory]);
              lookupIdentifier3 = [v13 lookupIdentifier];
              lookupIdentifier4 = [v13 lookupIdentifier];
              if (lookupIdentifier4)
              {
                v37 = lookupIdentifier4;
                v38 = +[PHSearchUtility sceneIdFromIndexCategoryType:lookupIdentifier:](PHSearchUtility, "sceneIdFromIndexCategoryType:lookupIdentifier:", [v13 indexCategory], lookupIdentifier3);

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
              stringCopy = v57;
              goto LABEL_72;
            }

            if ((indexCategory - 2400) < 2 || indexCategory == 2200 || indexCategory == 2300)
            {
              goto LABEL_70;
            }
          }
        }

        else
        {
          if ((indexCategory - 1900) < 0x15)
          {
            goto LABEL_70;
          }

          if (indexCategory == 2000)
          {
            [stringCopy tagRangeWithFilter:range.location withCSAttributedEntityKey:range.length numberValues:{v14, &unk_1F102DEB0}];
          }

          else if (indexCategory == 2100)
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
      [stringCopy tagRangeWithSceneFilters:range.location withCSSceneTypes:range.length sceneIDs:{v56, v55}];
    }
  }

  else
  {
    v48 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v70 = suggestionCopy;
      v71 = 2112;
      v72 = v56;
      v73 = 2112;
      v74 = v55;
      _os_log_impl(&dword_19C86F000, v48, OS_LOG_TYPE_ERROR, "Unaligned scene identifiers and scene types, no query filter applied for suggestion: %@, sceneTypes: %@, sceneIds: %@", buf, 0x20u);
    }
  }

  return stringCopy;
}

+ (id)_updateSpotlightAttributedQueryString:(id)string withAnnotation:(id)annotation range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v37 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  annotationCopy = annotation;
  v12 = annotationCopy;
  if (stringCopy)
  {
    if (!annotationCopy)
    {
      goto LABEL_33;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryAnnotation.m" lineNumber:409 description:{@"Invalid parameter not satisfying: %@", @"attributedQueryString"}];

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
      string = [stringCopy string];
      *buf = 138412546;
      v32 = string;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Cannot update query string: %@ with annotation: %@ because it belongs to an unexpected class", buf, 0x16u);
    }

    goto LABEL_33;
  }

  if (![PHSearchUtility rangeExists:location forString:length, stringCopy])
  {
    v22 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      string2 = [stringCopy string];
      v39.location = location;
      v39.length = length;
      v24 = NSStringFromRange(v39);
      *buf = 138412802;
      v32 = string2;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_ERROR, "Cannot update query string: %@ with annotation: %@ because the provided range is out of bounds: %@", buf, 0x20u);
    }

    goto LABEL_33;
  }

  qUToken = [v12 QUToken];
  if (([qUToken hasMemoryGenAnnotation]& 1) != 0)
  {
    suggestion = [v12 suggestion];

    if (!suggestion)
    {
      goto LABEL_10;
    }

    qUToken = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(qUToken, OS_LOG_TYPE_INFO))
    {
      string3 = [stringCopy string];
      *buf = 138412546;
      v32 = v12;
      v33 = 2112;
      v34 = string3;
      _os_log_impl(&dword_19C86F000, qUToken, OS_LOG_TYPE_INFO, "Found suggestion on memory gen annotation: %@, may be erroneous for query: %@", buf, 0x16u);
    }
  }

LABEL_10:
  suggestion2 = [v12 suggestion];

  if (!suggestion2)
  {
    qUToken2 = [v12 QUToken];
    hasMemoryGenAnnotation = [qUToken2 hasMemoryGenAnnotation];

    if (hasMemoryGenAnnotation)
    {
      qUToken3 = [v12 QUToken];
      entityCategoryTypes = [qUToken3 entityCategoryTypes];

      if (([entityCategoryTypes containsIndex:6] & 1) == 0 && ((objc_msgSend(entityCategoryTypes, "containsIndex:", 12) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 13) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 9) & 1) != 0 || (objc_msgSend(entityCategoryTypes, "containsIndex:", 11) & 1) != 0 || objc_msgSend(entityCategoryTypes, "containsIndex:", 10)))
      {
        [stringCopy tagRangeWithFilter:location withCSAttributedEntityKey:{length, *MEMORY[0x1E69639A8]}];
      }

      goto LABEL_32;
    }

LABEL_33:
    v28 = stringCopy;
    goto LABEL_34;
  }

  entityCategoryTypes = [v12 suggestion];
  type = [entityCategoryTypes type];
  if (type > 2)
  {
    if (type == 3)
    {
      v19 = [self _updateSpotlightAttributedQueryString:stringCopy disambiguation:entityCategoryTypes range:{location, length}];
      goto LABEL_38;
    }

    if (type != 4)
    {
      goto LABEL_32;
    }

LABEL_31:
    v19 = [self _updateSpotlightAttributedQueryString:stringCopy suggestion:entityCategoryTypes range:{location, length}];
    goto LABEL_38;
  }

  if ((type - 1) < 2)
  {
    goto LABEL_31;
  }

  if (type)
  {
LABEL_32:

    goto LABEL_33;
  }

  v19 = stringCopy;
LABEL_38:
  v28 = v19;

LABEL_34:

  return v28;
}

+ (id)annotatedQueryStringFromSpotlightAttributedQueryString:(id)string forSearchQuery:(id)query photoLibrary:(id)library
{
  v44 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  queryCopy = query;
  libraryCopy = library;
  searchText = [queryCopy searchText];
  v12 = [PHSearchUtility insertSpacingIfNeededBetweenAnnotationsAndPlainTextInQueryString:searchText];

  searchOptions = [queryCopy searchOptions];
  spotlightQUTypes = [searchOptions spotlightQUTypes];

  if (spotlightQUTypes != 1)
  {
    if ([stringCopy length])
    {
      string = [stringCopy string];
      string2 = [v12 string];
      v17 = [string isEqualToString:string2];

      if (v17)
      {
        v18 = objc_alloc(MEMORY[0x1E696AD40]);
        string3 = [stringCopy string];
        v20 = [v18 initWithString:string3];

        v21 = [v12 length];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __110__PHSearchQueryAnnotation_annotatedQueryStringFromSpotlightAttributedQueryString_forSearchQuery_photoLibrary___block_invoke;
        v38[3] = &unk_1E75A4B58;
        v22 = v20;
        v39 = v22;
        [v12 enumerateAttributesInRange:0 options:v21 usingBlock:{0, v38}];
        v23 = [stringCopy length];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __110__PHSearchQueryAnnotation_annotatedQueryStringFromSpotlightAttributedQueryString_forSearchQuery_photoLibrary___block_invoke_2;
        v31[3] = &unk_1E75A4B80;
        selfCopy = self;
        v32 = v12;
        v33 = queryCopy;
        v34 = stringCopy;
        v35 = libraryCopy;
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
        string4 = [stringCopy string];
        string5 = [v12 string];
        *buf = 138412546;
        v41 = string4;
        v42 = 2112;
        v43 = string5;
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

+ (id)spotlightAttributedQueryStringFromAnnotatedQueryString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__9709;
    v15 = __Block_byref_object_dispose__9710;
    v5 = objc_alloc(MEMORY[0x1E696AD40]);
    string = [stringCopy string];
    v16 = [v5 initWithString:string];

    v7 = [stringCopy length];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__PHSearchQueryAnnotation_spotlightAttributedQueryStringFromAnnotatedQueryString___block_invoke;
    v10[3] = &unk_1E75A4B30;
    v10[4] = &v11;
    v10[5] = self;
    [stringCopy enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:0 options:v7 usingBlock:{0, v10}];
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

+ (id)selectedSuggestionsFromQueryString:(id)string inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (![stringCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryAnnotation.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"queryString.length > 0"}];
  }

  if ([PHSearchUtility rangeExists:location forString:length, stringCopy])
  {
    *v25 = 0;
    *&v25[8] = v25;
    *&v25[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__9709;
    v27 = __Block_byref_object_dispose__9710;
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [stringCopy attributedSubstringFromRange:{location, length}];
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
        string = [stringCopy string];
        *buf = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = string;
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
      string2 = [stringCopy string];
      *v25 = 138412546;
      *&v25[4] = v16;
      *&v25[12] = 2112;
      *&v25[14] = string2;
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

+ (id)updateQueryString:(id)string withSelectedSuggestion:(id)suggestion inRange:(_NSRange)range additionalAttributes:(id)attributes
{
  length = range.length;
  location = range.location;
  v44 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  suggestionCopy = suggestion;
  attributesCopy = attributes;
  if (![stringCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryAnnotation.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"queryString.length > 0"}];

    if (suggestionCopy)
    {
      goto LABEL_3;
    }

LABEL_18:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHSearchQueryAnnotation.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"selectedSuggestion"}];

    goto LABEL_3;
  }

  if (!suggestionCopy)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ([suggestionCopy type] == 2 || +[PHSearchUtility rangeExists:forString:](PHSearchUtility, "rangeExists:forString:", location, length, stringCopy))
  {
    v15 = [stringCopy mutableCopy];
    if ([suggestionCopy type] == 2)
    {
      v16 = objc_alloc(MEMORY[0x1E696AD40]);
      text = [suggestionCopy text];
      v18 = [v16 initWithString:text];

      v19 = [[PHSearchQueryAnnotation alloc] initWithSuggestion:suggestionCopy queryToken:0];
      v36 = @"PHSearchQueryAttributeKey";
      v37 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v21 = [v20 mutableCopy];

      if (attributesCopy)
      {
        [v21 addEntriesFromDictionary:attributesCopy];
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
      v32 = suggestionCopy;
      v33 = attributesCopy;
      [stringCopy enumerateAttribute:@"PHSearchQueryAttributeKey" inRange:location options:length usingBlock:{0, v30}];

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
      string = [stringCopy string];
      *buf = 138412802;
      v39 = v25;
      v40 = 2112;
      v41 = suggestionCopy;
      v42 = 2112;
      v43 = string;
      _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "Received out of bounds range: %@ for suggestion: %@ in query string: %@", buf, 0x20u);
    }

    v23 = stringCopy;
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