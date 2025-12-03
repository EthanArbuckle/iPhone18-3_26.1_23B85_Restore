@interface PHSearchQueryOptions
+ (id)queryOptionsForSyndicationLibraryWithOptions:(id)options;
- (PHSearchQueryOptions)init;
- (id)_rankingModeDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)jsonDictionary;
@end

@implementation PHSearchQueryOptions

- (id)jsonDictionary
{
  v50[26] = *MEMORY[0x1E69E9840];
  v37 = objc_alloc(MEMORY[0x1E695DF90]);
  v49[0] = @"rankingMode_humanReadable";
  _rankingModeDescription = [(PHSearchQueryOptions *)self _rankingModeDescription];
  v50[0] = _rankingModeDescription;
  v49[1] = @"disableSemanticSearch";
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryOptions disableSemanticSearch](self, "disableSemanticSearch")}];
  v50[1] = v47;
  v49[2] = @"disableMetadataSearch";
  v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryOptions disableMetadataSearch](self, "disableMetadataSearch")}];
  v50[2] = v46;
  v49[3] = @"disableSafetyCheck";
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryOptions disableSafetyCheck](self, "disableSafetyCheck")}];
  v50[3] = v45;
  v49[4] = @"enableQueryMatchDetails";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryOptions enableQueryMatchDetails](self, "enableQueryMatchDetails")}];
  v50[4] = v44;
  v49[5] = @"maxSearchResults";
  v43 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHSearchQueryOptions maxSearchResults](self, "maxSearchResults")}];
  v50[5] = v43;
  v49[6] = @"maxRankedAssetSearchResults";
  v42 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHSearchQueryOptions maxRankedAssetSearchResults](self, "maxRankedAssetSearchResults")}];
  v50[6] = v42;
  v49[7] = @"maxRankedCollectionSearchResults";
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHSearchQueryOptions maxRankedCollectionSearchResults](self, "maxRankedCollectionSearchResults")}];
  v50[7] = v41;
  v49[8] = @"suggestionLimit";
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchQueryOptions suggestionLimit](self, "suggestionLimit")}];
  v50[8] = v40;
  v49[9] = @"searchQueryResultTypes";
  v39 = PHSearchQueryResultTypesDescription([(PHSearchQueryOptions *)self searchQueryResultTypes]);
  v50[9] = v39;
  v49[10] = @"scopedIdentifiers";
  scopedIdentifiers = [(PHSearchQueryOptions *)self scopedIdentifiers];
  allObjects = [scopedIdentifiers allObjects];
  v4 = allObjects;
  if (!allObjects)
  {
    allObjects = [MEMORY[0x1E695DFB0] null];
  }

  v50[10] = allObjects;
  v49[11] = @"locationInQueryStringForSuggestionGeneration";
  v35 = v4;
  if ([(PHSearchQueryOptions *)self locationInQueryStringForSuggestionGeneration]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchQueryOptions locationInQueryStringForSuggestionGeneration](self, "locationInQueryStringForSuggestionGeneration")}];
  }
  v34 = ;
  v50[11] = v34;
  v49[12] = @"collectionThreshold";
  v5 = MEMORY[0x1E696AD98];
  [(PHSearchQueryOptions *)self collectionThreshold];
  v33 = [v5 numberWithDouble:?];
  v50[12] = v33;
  v49[13] = @"embeddingRelevanceThreshold";
  v6 = MEMORY[0x1E696AD98];
  [(PHSearchQueryOptions *)self embeddingRelevanceThreshold];
  v32 = [v6 numberWithDouble:?];
  v50[13] = v32;
  v49[14] = @"disableU2";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryOptions disableU2](self, "disableU2")}];
  v50[14] = v31;
  v49[15] = @"embeddingGenerationTimeout";
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHSearchQueryOptions embeddingGenerationTimeout](self, "embeddingGenerationTimeout")}];
  v50[15] = v30;
  v49[16] = @"minNumberOfResultsForNextTokenGeneration";
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchQueryOptions minNumberOfResultsForNextTokenGeneration](self, "minNumberOfResultsForNextTokenGeneration")}];
  v50[16] = v29;
  v49[17] = @"matchType";
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchQueryOptions matchType](self, "matchType")}];
  v50[17] = v28;
  v49[18] = @"matchType_humanReadable";
  matchType = self->_matchType;
  if (matchType > 3)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E75A4368[matchType];
  }

  v27 = v8;
  v50[18] = v27;
  v49[19] = @"enableEmbeddingOnlyResultsInExactMatches";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryOptions enableEmbeddingOnlyResultsInExactMatches](self, "enableEmbeddingOnlyResultsInExactMatches")}];
  v50[19] = v26;
  v49[20] = @"spotlightQueryTimeout";
  v9 = MEMORY[0x1E696AD98];
  [(PHSearchQueryOptions *)self spotlightQueryTimeout];
  v25 = [v9 numberWithDouble:?];
  v50[20] = v25;
  v49[21] = @"enableNextTokenSuggestions";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryOptions enableNextTokenSuggestions](self, "enableNextTokenSuggestions")}];
  v50[21] = v24;
  v49[22] = @"sortDescriptors";
  sortDescriptors = [(PHSearchQueryOptions *)self sortDescriptors];
  if (sortDescriptors)
  {
    sortDescriptors2 = [(PHSearchQueryOptions *)self sortDescriptors];
    null = [sortDescriptors2 description];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    sortDescriptors2 = null;
  }

  v50[22] = null;
  v49[23] = @"SpotlightQUTypes";
  v12 = PHSearchQuerySpotlightQUTypesDescription([(PHSearchQueryOptions *)self spotlightQUTypes]);
  v13 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"|"];
  v14 = [v12 componentsSeparatedByCharactersInSet:v13];
  v50[23] = v14;
  v49[24] = @"fetchContextualThumbnails";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchQueryOptions fetchContextualThumbnails](self, "fetchContextualThumbnails")}];
  null2 = v15;
  if (!v15)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v50[24] = null2;
  v49[25] = @"SubstringMatchedCategories";
  substringMatchedCategories = [(PHSearchQueryOptions *)self substringMatchedCategories];
  v18 = PLDebugStringsForPHSearchSuggestionCategoriesTypes(substringMatchedCategories);
  v50[25] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:26];
  v38 = [v37 initWithDictionary:v19];

  if (!v15)
  {
  }

  if (sortDescriptors)
  {
  }

  if (!v35)
  {
  }

  v20 = [v38 copy];

  return v20;
}

- (id)description
{
  locationInQueryStringForSuggestionGeneration = self->_locationInQueryStringForSuggestionGeneration;
  if (locationInQueryStringForSuggestionGeneration == 0x7FFFFFFFFFFFFFFFLL)
  {
    locationInQueryStringForSuggestionGeneration = @"NSNotFound";
  }

  else
  {
    locationInQueryStringForSuggestionGeneration = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tu", locationInQueryStringForSuggestionGeneration];
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  _rankingModeDescription = [(PHSearchQueryOptions *)self _rankingModeDescription];
  [v5 appendFormat:@"Ranking: %@, ", _rankingModeDescription];

  if (self->_disableSemanticSearch)
  {
    v7 = @"NO";
  }

  else
  {
    v7 = @"YES";
  }

  [v5 appendFormat:@"Embeddings: %@, ", v7];
  if (self->_disableMetadataSearch)
  {
    v8 = @"NO";
  }

  else
  {
    v8 = @"YES";
  }

  [v5 appendFormat:@"Metadata: %@, ", v8];
  if (self->_enableQueryMatchDetails)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v5 appendFormat:@"QueryMatchDetails: %@, ", v9];
  [v5 appendFormat:@"SuggestionLimit: %tu, ", self->_suggestionLimit];
  [v5 appendFormat:@"ScopedIdentifiers count: %tu, ", -[NSSet count](self->_scopedIdentifiers, "count")];
  v10 = PHSearchQueryResultTypesDescription([(PHSearchQueryOptions *)self searchQueryResultTypes]);
  [v5 appendFormat:@"ResultTypes: %@, ", v10];

  [v5 appendFormat:@"Max Results: %tu, ", self->_maxSearchResults];
  [v5 appendFormat:@"Max Top Assets: %tu, ", self->_maxRankedAssetSearchResults];
  [v5 appendFormat:@"Max Top Collections: %tu, ", self->_maxRankedCollectionSearchResults];
  [v5 appendFormat:@"Query text position for suggestions: %@, ", locationInQueryStringForSuggestionGeneration];
  if (self->_disableSafetyCheck)
  {
    v11 = @"NO";
  }

  else
  {
    v11 = @"YES";
  }

  [v5 appendFormat:@"SafetyCheck: %@, ", v11];
  if (self->_disableU2)
  {
    v12 = @"NO";
  }

  else
  {
    v12 = @"YES";
  }

  [v5 appendFormat:@"U2: %@, ", v12];
  [v5 appendFormat:@"Collection Threshold: %f, ", *&self->_collectionThreshold];
  [v5 appendFormat:@"Embedding Threshold: %f, ", *&self->_embeddingRelevanceThreshold];
  [v5 appendFormat:@"Embedding Timeout: %ld, ", self->_embeddingGenerationTimeout];
  matchType = self->_matchType;
  if (matchType > 3)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_1E75A4368[matchType];
  }

  v15 = v14;
  [v5 appendFormat:@"Result match type: %@, ", v15];

  [v5 appendFormat:@"Min Num Results For Next Token Generation: %tu, ", self->_minNumberOfResultsForNextTokenGeneration];
  if (self->_enableEmbeddingOnlyResultsInExactMatches)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v5 appendFormat:@"Enable Embedding Only Results In Exact Matches: %@, ", v16];
  [v5 appendFormat:@"Spotlight Query Timeout: %f, ", *&self->_spotlightQueryTimeout];
  if (self->_enableNextTokenSuggestions)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v5 appendFormat:@"Enable Next TokenSuggestions: %@, ", v17];
  [v5 appendFormat:@"Sort Descriptors: %@, ", self->_sortDescriptors];
  v18 = PHSearchQuerySpotlightQUTypesDescription(self->_spotlightQUTypes);
  [v5 appendFormat:@"Spotlight QU Types: %@, ", v18];

  if (self->_fetchContextualThumbnails)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v5 appendFormat:@"FetchContextualThumbnails: %@, ", v19];
  substringMatchedCategories = [(PHSearchQueryOptions *)self substringMatchedCategories];
  v21 = PLDebugStringsForPHSearchSuggestionCategoriesTypes(substringMatchedCategories);
  [v5 appendFormat:@"SubstringMatchedCategories: %@", v21];

  v22 = [v5 copy];

  return v22;
}

- (id)_rankingModeDescription
{
  if (self->_maxRankedAssetSearchResults || self->_maxRankedCollectionSearchResults)
  {
    return @"ON";
  }

  else
  {
    return @"OFF";
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PHSearchQueryOptions);
  [(PHSearchQueryOptions *)v4 setSearchQueryResultTypes:self->_searchQueryResultTypes];
  v5 = [(NSSet *)self->_scopedIdentifiers copy];
  [(PHSearchQueryOptions *)v4 setScopedIdentifiers:v5];

  [(PHSearchQueryOptions *)v4 setSuggestionLimit:self->_suggestionLimit];
  [(PHSearchQueryOptions *)v4 setDisableSemanticSearch:self->_disableSemanticSearch];
  [(PHSearchQueryOptions *)v4 setDisableMetadataSearch:self->_disableMetadataSearch];
  [(PHSearchQueryOptions *)v4 setDisableSafetyCheck:self->_disableSafetyCheck];
  [(PHSearchQueryOptions *)v4 setEnableQueryMatchDetails:self->_enableQueryMatchDetails];
  [(PHSearchQueryOptions *)v4 setMaxSearchResults:self->_maxSearchResults];
  [(PHSearchQueryOptions *)v4 setMaxRankedAssetSearchResults:self->_maxRankedAssetSearchResults];
  [(PHSearchQueryOptions *)v4 setMaxRankedCollectionSearchResults:self->_maxRankedCollectionSearchResults];
  [(PHSearchQueryOptions *)v4 setLocationInQueryStringForSuggestionGeneration:self->_locationInQueryStringForSuggestionGeneration];
  [(PHSearchQueryOptions *)v4 setSpotlightQUTypes:self->_spotlightQUTypes];
  [(PHSearchQueryOptions *)v4 setEmbeddingRelevanceThreshold:self->_embeddingRelevanceThreshold];
  [(PHSearchQueryOptions *)v4 setDisableU2:self->_disableU2];
  [(PHSearchQueryOptions *)v4 setEmbeddingGenerationTimeout:self->_embeddingGenerationTimeout];
  [(PHSearchQueryOptions *)v4 setCollectionThreshold:self->_collectionThreshold];
  [(PHSearchQueryOptions *)v4 setMatchType:self->_matchType];
  [(PHSearchQueryOptions *)v4 setMinNumberOfResultsForNextTokenGeneration:self->_minNumberOfResultsForNextTokenGeneration];
  [(PHSearchQueryOptions *)v4 setEnableEmbeddingOnlyResultsInExactMatches:self->_enableEmbeddingOnlyResultsInExactMatches];
  [(PHSearchQueryOptions *)v4 setSpotlightQueryTimeout:self->_spotlightQueryTimeout];
  [(PHSearchQueryOptions *)v4 setEnableNextTokenSuggestions:self->_enableNextTokenSuggestions];
  v6 = [(NSArray *)self->_sortDescriptors copy];
  [(PHSearchQueryOptions *)v4 setSortDescriptors:v6];

  [(PHSearchQueryOptions *)v4 setFetchContextualThumbnails:self->_fetchContextualThumbnails];
  [(PHSearchQueryOptions *)v4 setSubstringMatchedCategories:self->_substringMatchedCategories];
  [(PHSearchQueryOptions *)v4 setBundleIdentifiers:self->_bundleIdentifiers];
  [(PHSearchQueryOptions *)v4 setFilterQueries:self->_filterQueries];
  return v4;
}

- (PHSearchQueryOptions)init
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PHSearchQueryOptions;
  v2 = [(PHSearchQueryOptions *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 3) = 1;
    *(v2 + 12) = 0x7FFFFFFFFFFFFFFFLL;
    *(v2 + 14) = 0xBFF0000000000000;
    *(v2 + 15) = 1000;
    *(v2 + 16) = 0x3FD51EB851EB851FLL;
    *(v2 + 136) = xmmword_19CB295B0;
    *(v2 + 19) = 0x4024000000000000;
    v4 = +[PHSearchUtility photosBundleIdentifier];
    v12[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    bundleIdentifiers = v3->_bundleIdentifiers;
    v3->_bundleIdentifiers = v5;

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FieldMatch(_kMDItemDomainIdentifier, %@)", *MEMORY[0x1E69BF0C8]];
    v11 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [(PHSearchQueryOptions *)v3 setFilterQueries:v8];
  }

  return v3;
}

+ (id)queryOptionsForSyndicationLibraryWithOptions:(id)options
{
  v10[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = objc_alloc_init(PHSearchQueryOptions);
  -[PHSearchQueryOptions setMaxRankedAssetSearchResults:](v4, "setMaxRankedAssetSearchResults:", [optionsCopy maxRankedAssetSearchResults]);
  -[PHSearchQueryOptions setDisableSemanticSearch:](v4, "setDisableSemanticSearch:", [optionsCopy disableSemanticSearch]);
  resultsHandlerQueue = [optionsCopy resultsHandlerQueue];
  [(PHSearchQueryOptions *)v4 setResultsHandlerQueue:resultsHandlerQueue];

  -[PHSearchQueryOptions setDisableMetadataSearch:](v4, "setDisableMetadataSearch:", [optionsCopy disableMetadataSearch]);
  maxSearchResults = [optionsCopy maxSearchResults];

  [(PHSearchQueryOptions *)v4 setMaxSearchResults:maxSearchResults];
  [(PHSearchQueryOptions *)v4 setCollectionThreshold:0.0];
  v7 = +[PHSearchUtility syndicationLibraryBundleIdentifiers];
  [(PHSearchQueryOptions *)v4 setBundleIdentifiers:v7];

  v10[0] = @"kMDItemPhotosDonationState > 0";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(PHSearchQueryOptions *)v4 setFilterQueries:v8];

  return v4;
}

@end