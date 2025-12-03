@interface PHSearchSuggestionOptions
- (PHSearchSuggestionOptions)init;
- (id)_minMatchPercentByCategoriesTypeDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)jsonDictionary;
- (unint64_t)minMatchPercentForCategoriesType:(unint64_t)type;
- (void)setMinMatchPercent:(unint64_t)percent forCategoriesType:(unint64_t)type;
@end

@implementation PHSearchSuggestionOptions

- (id)_minMatchPercentByCategoriesTypeDescription
{
  minMatchPercentByCategoriesType = [(PHSearchSuggestionOptions *)self minMatchPercentByCategoriesType];
  v4 = [minMatchPercentByCategoriesType count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    minMatchPercentByCategoriesType2 = [(PHSearchSuggestionOptions *)self minMatchPercentByCategoriesType];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__PHSearchSuggestionOptions__minMatchPercentByCategoriesTypeDescription__block_invoke;
    v9[3] = &unk_1E75A9DE8;
    v7 = v5;
    v10 = v7;
    [minMatchPercentByCategoriesType2 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

void __72__PHSearchSuggestionOptions__minMatchPercentByCategoriesTypeDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 unsignedIntegerValue])
  {
    v6 = [v10 unsignedIntegerValue];
    v7 = *(a1 + 32);
    if (v6 > 0x2C)
    {
      v8 = @"undefined";
    }

    else
    {
      v8 = off_1E75A60F8[v6];
    }

    v9 = v8;
    [v7 appendFormat:@"%@: %tu, ", v9, objc_msgSend(v5, "unsignedIntegerValue")];
  }
}

- (id)jsonDictionary
{
  v18[7] = *MEMORY[0x1E69E9840];
  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  v17[0] = @"suggestionLimit";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHSearchSuggestionOptions suggestionLimit](self, "suggestionLimit")}];
  v18[0] = v16;
  v17[1] = @"searchQueryResultTypes";
  v3 = PHSearchQueryResultTypesDescription([(PHSearchSuggestionOptions *)self suggestionResultTypes]);
  v18[1] = v3;
  v17[2] = @"suggestionCategories";
  suggestionCategories = [(PHSearchSuggestionOptions *)self suggestionCategories];
  v5 = PLDebugStringsForPHSearchSuggestionCategoriesTypes(suggestionCategories);
  v18[2] = v5;
  v17[3] = @"limitToExactMatches";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchSuggestionOptions limitSuggestionsToExactTextMatches](self, "limitSuggestionsToExactTextMatches")}];
  v18[3] = v6;
  v17[4] = @"wantsUnscopedSuggestions";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHSearchSuggestionOptions wantsUnscopedSuggestions](self, "wantsUnscopedSuggestions")}];
  v18[4] = v7;
  v17[5] = @"substringMatchedSuggestionCategories";
  substringMatchedCategories = [(PHSearchSuggestionOptions *)self substringMatchedCategories];
  v9 = PLDebugStringsForPHSearchSuggestionCategoriesTypes(substringMatchedCategories);
  v18[5] = v9;
  v17[6] = @"minMatchPercentByCategoriesType";
  _minMatchPercentByCategoriesTypeDescription = [(PHSearchSuggestionOptions *)self _minMatchPercentByCategoriesTypeDescription];
  v18[6] = _minMatchPercentByCategoriesTypeDescription;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];
  v12 = [v15 initWithDictionary:v11];

  v13 = [v12 copy];

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"SuggestionLimit: %tu, ", self->_suggestionLimit];
  suggestionCategories = [(PHSearchSuggestionOptions *)self suggestionCategories];
  v5 = PLDebugStringsForPHSearchSuggestionCategoriesTypes(suggestionCategories);
  [v3 appendFormat:@"SuggestionCategories: %@, ", v5];

  v6 = PHSearchQueryResultTypesDescription([(PHSearchSuggestionOptions *)self suggestionResultTypes]);
  [v3 appendFormat:@"ResultTypes: %@, ", v6];

  if (self->_limitSuggestionsToExactTextMatches)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"LimitToExactMatches: %@, ", v7];
  if (self->_wantsUnscopedSuggestions)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"WantsUnscopedSuggestions: %@, ", v8];
  substringMatchedCategories = [(PHSearchSuggestionOptions *)self substringMatchedCategories];
  v10 = PLDebugStringsForPHSearchSuggestionCategoriesTypes(substringMatchedCategories);
  [v3 appendFormat:@"SubstringMatchedSuggestionCategories: %@, ", v10];

  _minMatchPercentByCategoriesTypeDescription = [(PHSearchSuggestionOptions *)self _minMatchPercentByCategoriesTypeDescription];
  [v3 appendFormat:@"MinMatchPercentByCategoriesType: %@", _minMatchPercentByCategoriesTypeDescription];

  v12 = [v3 copy];

  return v12;
}

- (unint64_t)minMatchPercentForCategoriesType:(unint64_t)type
{
  minMatchPercentByCategoriesType = [(PHSearchSuggestionOptions *)self minMatchPercentByCategoriesType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [minMatchPercentByCategoriesType objectForKeyedSubscript:v5];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setMinMatchPercent:(unint64_t)percent forCategoriesType:(unint64_t)type
{
  minMatchPercentByCategoriesType = [(PHSearchSuggestionOptions *)self minMatchPercentByCategoriesType];

  if (!minMatchPercentByCategoriesType)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PHSearchSuggestionOptions *)self setMinMatchPercentByCategoriesType:v8];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:percent];
  minMatchPercentByCategoriesType2 = [(PHSearchSuggestionOptions *)self minMatchPercentByCategoriesType];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [minMatchPercentByCategoriesType2 setObject:v11 forKeyedSubscript:v10];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PHSearchSuggestionOptions);
  [(PHSearchSuggestionOptions *)v4 setSuggestionResultTypes:self->_suggestionResultTypes];
  [(PHSearchSuggestionOptions *)v4 setSuggestionsHandlerQueue:self->_suggestionsHandlerQueue];
  [(PHSearchSuggestionOptions *)v4 setSuggestionLimit:self->_suggestionLimit];
  [(PHSearchSuggestionOptions *)v4 setSuggestionCategories:self->_suggestionCategories];
  [(PHSearchSuggestionOptions *)v4 setLimitSuggestionsToExactTextMatches:self->_limitSuggestionsToExactTextMatches];
  [(PHSearchSuggestionOptions *)v4 setWantsUnscopedSuggestions:self->_wantsUnscopedSuggestions];
  [(PHSearchSuggestionOptions *)v4 setSubstringMatchedCategories:self->_substringMatchedCategories];
  [(PHSearchSuggestionOptions *)v4 setMinMatchPercentByCategoriesType:self->_minMatchPercentByCategoriesType];
  return v4;
}

- (PHSearchSuggestionOptions)init
{
  v3.receiver = self;
  v3.super_class = PHSearchSuggestionOptions;
  result = [(PHSearchSuggestionOptions *)&v3 init];
  if (result)
  {
    result->_suggestionResultTypes = 1;
  }

  return result;
}

@end