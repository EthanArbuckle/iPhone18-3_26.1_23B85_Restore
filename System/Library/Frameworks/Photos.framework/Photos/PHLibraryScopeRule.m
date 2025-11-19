@interface PHLibraryScopeRule
+ (BOOL)generateDefaultRulesForLibraryScope:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)_estimatedAssetsForRules:(id)a3 autoSharePolicy:(signed __int16)a4 options:(id)a5 error:(id *)a6;
+ (id)dataFromRules:(id)a3;
+ (id)fetchLibraryScopeRulesForLibraryScope:(id)a3 options:(id)a4;
+ (id)suggestedStartDateForRules:(id)a3 autoSharePolicy:(signed __int16)a4 options:(id)a5 error:(id *)a6;
+ (unint64_t)estimatedAssetCountForRules:(id)a3 autoSharePolicy:(signed __int16)a4 imageCount:(unint64_t *)a5 videoCount:(unint64_t *)a6 audioCount:(unint64_t *)a7 itemCount:(unint64_t *)a8 options:(id)a9 error:(id *)a10;
- (PHLibraryScopeRule)init;
- (PHLibraryScopeRule)initWithProxyObject:(id)a3;
- (PHLibraryScopeRule)initWithQuery:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateRangeCondition;
- (id)personCondition;
- (id)unknownConditions;
- (void)addCondition:(id)a3;
- (void)removeConditionOfType:(Class)a3;
@end

@implementation PHLibraryScopeRule

- (id)unknownConditions
{
  v3 = [(PLLibraryScopeRule *)self->_proxyObject unknownConditions];
  if (v3)
  {
    v4 = [(PLLibraryScopeRule *)self->_proxyObject unknownConditions];
    v5 = [v4 _pl_map:&__block_literal_global_32189];
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
  v3 = [(PLLibraryScopeRule *)self->_proxyObject personCondition];
  if (v3)
  {
    v4 = [PHLibraryScopeConditionPerson alloc];
    v5 = [(PLLibraryScopeRule *)self->_proxyObject personCondition];
    v6 = [(PHLibraryScopeCondition *)v4 initWithProxyObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dateRangeCondition
{
  v3 = [(PLLibraryScopeRule *)self->_proxyObject dateRangeCondition];
  if (v3)
  {
    v4 = [PHLibraryScopeConditionDateRange alloc];
    v5 = [(PLLibraryScopeRule *)self->_proxyObject dateRangeCondition];
    v6 = [(PHLibraryScopeCondition *)v4 initWithProxyObject:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeConditionOfType:(Class)a3
{
  if (objc_opt_class() == a3 || objc_opt_class() == a3 || objc_opt_class() == a3)
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

- (void)addCondition:(id)a3
{
  proxyObject = self->_proxyObject;
  v4 = [a3 proxyObject];
  [(PLLibraryScopeRule *)proxyObject addCondition:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PLLibraryScopeRule *)self->_proxyObject copyWithZone:a3];
  v7 = [v5 initWithProxyObject:v6];

  return v7;
}

- (PHLibraryScopeRule)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69BE508]);
  v4 = [(PHLibraryScopeRule *)self initWithProxyObject:v3];

  return v4;
}

- (PHLibraryScopeRule)initWithQuery:(id)a3
{
  v4 = MEMORY[0x1E69BE508];
  v5 = a3;
  v6 = [[v4 alloc] initWithQuery:v5];

  v7 = [(PHLibraryScopeRule *)self initWithProxyObject:v6];
  return v7;
}

- (PHLibraryScopeRule)initWithProxyObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PHLibraryScopeRule;
  v6 = [(PHLibraryScopeRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyObject, a3);
  }

  return v7;
}

+ (BOOL)generateDefaultRulesForLibraryScope:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 photoLibrary];
  v10 = [v9 photoAnalysisClient];

  v11 = [v8 localIdentifier];

  LOBYTE(a5) = [v10 requestGenerateDefaultRulesForLibraryScopeWithLocalIdentifier:v11 withOptions:v7 error:a5];
  return a5;
}

+ (id)_estimatedAssetsForRules:(id)a3 autoSharePolicy:(signed __int16)a4 options:(id)a5 error:(id *)a6
{
  v8 = a4;
  v54[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (v8 == 1)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    if (v11)
    {
LABEL_3:
      v12 = [MEMORY[0x1E69BE4E8] compoundPredicateForMarkingOnboardingPreviewAssetsWithRulePredicate:v11];
      [v10 setShouldPrefetchCount:1];
      [v10 setInternalPredicate:v12];
      v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v49 = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
      [v10 setSortDescriptors:v14];

      v15 = [PHAsset fetchAssetsWithOptions:v10];
      goto LABEL_22;
    }
  }

  else
  {
    v11 = [v9 _pl_map:&__block_literal_global_44];
    v16 = [MEMORY[0x1E69BE508] queryForLibraryScopeRules:v11];
    if (!v16)
    {
      v39 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"estimatedAssetCountForRules: query is nil"];
      v54[0] = v12;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v41 = [v39 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v40];
      if (a6)
      {
        v41 = v41;
        *a6 = v41;
      }

      goto LABEL_21;
    }

    v17 = v16;
    v18 = [PHUserFeedbackCalculator alloc];
    v19 = [v10 photoLibrary];
    v20 = [(PHUserFeedbackCalculator *)v18 initWithPhotoLibrary:v19];

    v44 = v20;
    v21 = [(PHUserFeedbackCalculator *)v20 personUUIDsWithNegativeFeedback];
    if ([v21 count])
    {
      v43 = a6;
      v22 = [objc_alloc(MEMORY[0x1E69BF2C0]) initWithConjunction:0];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v23 = v21;
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

            [v22 addPersonUUIDQuery:*(*(&v45 + 1) + 8 * i) comparator:{22, v43}];
          }

          v25 = [v23 countByEnumeratingWithState:&v45 objects:v52 count:16];
        }

        while (v25);
      }

      v28 = MEMORY[0x1E69BF2C0];
      v29 = [v22 query];
      v30 = [v28 notQuery:v29];

      v31 = [MEMORY[0x1E69BF2C0] andCombineFirstQuery:v17 secondQuery:v30];

      v17 = v31;
      a6 = v43;
    }

    v32 = MEMORY[0x1E69BE708];
    v33 = [v10 photoLibrary];
    v34 = [v33 photoLibrary];
    v35 = objc_opt_new();
    v36 = [v32 predicateForQuery:v17 inLibrary:v34 changeDetectionCriteria:v35];

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
  if (a6)
  {
    v38 = v38;
    *a6 = v38;
  }

LABEL_21:
  v15 = 0;
LABEL_22:

  return v15;
}

+ (unint64_t)estimatedAssetCountForRules:(id)a3 autoSharePolicy:(signed __int16)a4 imageCount:(unint64_t *)a5 videoCount:(unint64_t *)a6 audioCount:(unint64_t *)a7 itemCount:(unint64_t *)a8 options:(id)a9 error:(id *)a10
{
  v14 = [a1 _estimatedAssetsForRules:a3 autoSharePolicy:a4 options:a9 error:a10];
  v15 = v14;
  if (a5)
  {
    *a5 = [v14 countOfAssetsWithMediaType:1];
  }

  if (a6)
  {
    *a6 = [v15 countOfAssetsWithMediaType:2];
  }

  if (a7)
  {
    *a7 = [v15 countOfAssetsWithMediaType:3];
  }

  if (a8)
  {
    *a8 = [v15 countOfAssetsWithMediaType:0];
  }

  v16 = [v15 count];

  return v16;
}

+ (id)suggestedStartDateForRules:(id)a3 autoSharePolicy:(signed __int16)a4 options:(id)a5 error:(id *)a6
{
  v6 = [a1 _estimatedAssetsForRules:a3 autoSharePolicy:a4 options:a5 error:a6];
  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v8 = [v7 creationDate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fetchLibraryScopeRulesForLibraryScope:(id)a3 options:(id)a4
{
  v4 = [a3 rulesData];
  v5 = [MEMORY[0x1E69BE508] libraryScopeRulesForLibraryScopeRulesData:v4];
  v6 = [v5 _pl_map:&__block_literal_global_40];

  return v6;
}

PHLibraryScopeRule *__68__PHLibraryScopeRule_fetchLibraryScopeRulesForLibraryScope_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PHLibraryScopeRule alloc] initWithProxyObject:v2];

  return v3;
}

+ (id)dataFromRules:(id)a3
{
  v3 = [a3 _pl_map:&__block_literal_global_37_32235];
  v4 = [MEMORY[0x1E69BE508] dataForLibraryScopeRules:v3];

  return v4;
}

@end