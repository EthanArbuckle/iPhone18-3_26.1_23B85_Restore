@interface PHLibraryScopeRule
+ (BOOL)generateDefaultRulesForLibraryScope:(id)scope options:(id)options error:(id *)error;
+ (id)_estimatedAssetsForRules:(id)rules autoSharePolicy:(signed __int16)policy options:(id)options error:(id *)error;
+ (id)dataFromRules:(id)rules;
+ (id)fetchLibraryScopeRulesForLibraryScope:(id)scope options:(id)options;
+ (id)suggestedStartDateForRules:(id)rules autoSharePolicy:(signed __int16)policy options:(id)options error:(id *)error;
+ (unint64_t)estimatedAssetCountForRules:(id)rules autoSharePolicy:(signed __int16)policy imageCount:(unint64_t *)count videoCount:(unint64_t *)videoCount audioCount:(unint64_t *)audioCount itemCount:(unint64_t *)itemCount options:(id)options error:(id *)self0;
- (PHLibraryScopeRule)init;
- (PHLibraryScopeRule)initWithProxyObject:(id)object;
- (PHLibraryScopeRule)initWithQuery:(id)query;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateRangeCondition;
- (id)personCondition;
- (id)unknownConditions;
- (void)addCondition:(id)condition;
- (void)removeConditionOfType:(Class)type;
@end

@implementation PHLibraryScopeRule

- (id)unknownConditions
{
  unknownConditions = [(PLLibraryScopeRule *)self->_proxyObject unknownConditions];
  if (unknownConditions)
  {
    unknownConditions2 = [(PLLibraryScopeRule *)self->_proxyObject unknownConditions];
    v5 = [unknownConditions2 _pl_map:&__block_literal_global_32189];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

PHLibraryScopeConditionUnknown *__39__PHLibraryScopeRule_unknownConditions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PHLibraryScopeConditionUnknown alloc] initWithProxyObject:v2];

  return v3;
}

- (id)personCondition
{
  personCondition = [(PLLibraryScopeRule *)self->_proxyObject personCondition];
  if (personCondition)
  {
    v4 = [PHLibraryScopeConditionPerson alloc];
    personCondition2 = [(PLLibraryScopeRule *)self->_proxyObject personCondition];
    v6 = [(PHLibraryScopeCondition *)v4 initWithProxyObject:personCondition2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dateRangeCondition
{
  dateRangeCondition = [(PLLibraryScopeRule *)self->_proxyObject dateRangeCondition];
  if (dateRangeCondition)
  {
    v4 = [PHLibraryScopeConditionDateRange alloc];
    dateRangeCondition2 = [(PLLibraryScopeRule *)self->_proxyObject dateRangeCondition];
    v6 = [(PHLibraryScopeCondition *)v4 initWithProxyObject:dateRangeCondition2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeConditionOfType:(Class)type
{
  if (objc_opt_class() == type || objc_opt_class() == type || objc_opt_class() == type)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v5 = 0;
  }

  proxyObject = self->_proxyObject;

  [(PLLibraryScopeRule *)proxyObject removeConditionOfType:v5];
}

- (void)addCondition:(id)condition
{
  proxyObject = self->_proxyObject;
  proxyObject = [condition proxyObject];
  [(PLLibraryScopeRule *)proxyObject addCondition:proxyObject];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PLLibraryScopeRule *)self->_proxyObject copyWithZone:zone];
  v7 = [v5 initWithProxyObject:v6];

  return v7;
}

- (PHLibraryScopeRule)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69BE508]);
  v4 = [(PHLibraryScopeRule *)self initWithProxyObject:v3];

  return v4;
}

- (PHLibraryScopeRule)initWithQuery:(id)query
{
  v4 = MEMORY[0x1E69BE508];
  queryCopy = query;
  v6 = [[v4 alloc] initWithQuery:queryCopy];

  v7 = [(PHLibraryScopeRule *)self initWithProxyObject:v6];
  return v7;
}

- (PHLibraryScopeRule)initWithProxyObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = PHLibraryScopeRule;
  v6 = [(PHLibraryScopeRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyObject, object);
  }

  return v7;
}

+ (BOOL)generateDefaultRulesForLibraryScope:(id)scope options:(id)options error:(id *)error
{
  optionsCopy = options;
  scopeCopy = scope;
  photoLibrary = [scopeCopy photoLibrary];
  photoAnalysisClient = [photoLibrary photoAnalysisClient];

  localIdentifier = [scopeCopy localIdentifier];

  LOBYTE(error) = [photoAnalysisClient requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier:localIdentifier withOptions:optionsCopy error:error];
  return error;
}

+ (id)_estimatedAssetsForRules:(id)rules autoSharePolicy:(signed __int16)policy options:(id)options error:(id *)error
{
  policyCopy = policy;
  v54[1] = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  optionsCopy = options;
  if (policyCopy == 1)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    if (v11)
    {
LABEL_3:
      v12 = [MEMORY[0x1E69BE4E8] compoundPredicateForMarkingOnboardingPreviewAssetsWithRulePredicate:v11];
      [optionsCopy setShouldPrefetchCount:1];
      [optionsCopy setInternalPredicate:v12];
      v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v49 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
      [optionsCopy setSortDescriptors:v14];

      v15 = [PHAsset fetchAssetsWithOptions:optionsCopy];
      goto LABEL_22;
    }
  }

  else
  {
    v11 = [rulesCopy _pl_map:&__block_literal_global_44];
    v16 = [MEMORY[0x1E69BE508] queryForLibraryScopeRules:v11];
    if (!v16)
    {
      v39 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"estimatedAssetCountForRules: query is nil"];
      v54[0] = v12;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v41 = [v39 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v40];
      if (error)
      {
        v41 = v41;
        *error = v41;
      }

      goto LABEL_21;
    }

    v17 = v16;
    v18 = [PHUserFeedbackCalculator alloc];
    photoLibrary = [optionsCopy photoLibrary];
    v20 = [(PHUserFeedbackCalculator *)v18 initWithPhotoLibrary:photoLibrary];

    v44 = v20;
    personUUIDsWithNegativeFeedback = [(PHUserFeedbackCalculator *)v20 personUUIDsWithNegativeFeedback];
    if ([personUUIDsWithNegativeFeedback count])
    {
      errorCopy = error;
      v22 = [objc_alloc(MEMORY[0x1E69BF2C0]) initWithConjunction:0];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v23 = personUUIDsWithNegativeFeedback;
      v24 = [v23 countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v46;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v46 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [v22 addPersonUUIDQuery:*(*(&v45 + 1) + 8 * i) comparator:{22, errorCopy}];
          }

          v25 = [v23 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v25);
      }

      v28 = MEMORY[0x1E69BF2C0];
      query = [v22 query];
      v30 = [v28 notQuery:query];

      v31 = [MEMORY[0x1E69BF2C0] andCombineFirstQuery:v17 secondQuery:v30];

      v17 = v31;
      error = errorCopy;
    }

    v32 = MEMORY[0x1E69BE708];
    photoLibrary2 = [optionsCopy photoLibrary];
    v33PhotoLibrary = [photoLibrary2 photoLibrary];
    v35 = objc_opt_new();
    v36 = [v32 predicateForQuery:v17 inLibrary:v33PhotoLibrary changeDetectionCriteria:v35];

    v11 = v36;
    if (v36)
    {
      goto LABEL_3;
    }
  }

  v37 = MEMORY[0x1E696ABC0];
  v50 = *MEMORY[0x1E696A578];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"estimatedAssetCountForRules: generated predate is nil"];
  v51 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v38 = [v37 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v12];
  if (error)
  {
    v38 = v38;
    *error = v38;
  }

LABEL_21:
  v15 = 0;
LABEL_22:

  return v15;
}

+ (unint64_t)estimatedAssetCountForRules:(id)rules autoSharePolicy:(signed __int16)policy imageCount:(unint64_t *)count videoCount:(unint64_t *)videoCount audioCount:(unint64_t *)audioCount itemCount:(unint64_t *)itemCount options:(id)options error:(id *)self0
{
  v14 = [self _estimatedAssetsForRules:rules autoSharePolicy:policy options:options error:error];
  v15 = v14;
  if (count)
  {
    *count = [v14 countOfAssetsWithMediaType:1];
  }

  if (videoCount)
  {
    *videoCount = [v15 countOfAssetsWithMediaType:2];
  }

  if (audioCount)
  {
    *audioCount = [v15 countOfAssetsWithMediaType:3];
  }

  if (itemCount)
  {
    *itemCount = [v15 countOfAssetsWithMediaType:0];
  }

  v16 = [v15 count];

  return v16;
}

+ (id)suggestedStartDateForRules:(id)rules autoSharePolicy:(signed __int16)policy options:(id)options error:(id *)error
{
  v6 = [self _estimatedAssetsForRules:rules autoSharePolicy:policy options:options error:error];
  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    creationDate = [firstObject creationDate];
  }

  else
  {
    creationDate = 0;
  }

  return creationDate;
}

+ (id)fetchLibraryScopeRulesForLibraryScope:(id)scope options:(id)options
{
  rulesData = [scope rulesData];
  v5 = [MEMORY[0x1E69BE508] libraryScopeRulesForLibraryScopeRulesData:rulesData];
  v6 = [v5 _pl_map:&__block_literal_global_40];

  return v6;
}

PHLibraryScopeRule *__68__PHLibraryScopeRule_fetchLibraryScopeRulesForLibraryScope_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PHLibraryScopeRule alloc] initWithProxyObject:v2];

  return v3;
}

+ (id)dataFromRules:(id)rules
{
  v3 = [rules _pl_map:&__block_literal_global_37_32235];
  v4 = [MEMORY[0x1E69BE508] dataForLibraryScopeRules:v3];

  return v4;
}

@end