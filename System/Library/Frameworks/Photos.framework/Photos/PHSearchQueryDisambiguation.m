@interface PHSearchQueryDisambiguation
+ (id)_locationIndexEntitiesForLocationName:(id)a3 expansionStringValues:(id)a4 allowedSearchIndexCategories:(id)a5 matchOptions:(unint64_t)a6 photoLibrary:(id)a7;
+ (id)_personEntitiesByLookupIdentifierForPersonNames:(id)a3 entityMatchOptions:(unint64_t)a4 photoLibrary:(id)a5;
+ (id)_personEntitiesByLookupIdentifierForPersonNames:(id)a3 photoLibrary:(id)a4;
+ (id)_personEntitiesByLookupIdentifierForPersonRelationships:(id)a3 photoLibrary:(id)a4;
+ (id)allowedSearchIndexCategoriesForMemoriesLocationPromptBinding;
+ (id)locationSearchIndexCategories;
+ (id)performDisambiguationForPerson:(id)a3 usingGroundedNames:(id)a4 photoLibrary:(id)a5;
+ (id)performDisambiguationForPersonName:(id)a3 expansionStringValuesByCSAttributedEntityType:(id)a4 photoLibrary:(id)a5;
+ (id)performLocationDisambiguationForFullQueryString:(id)a3 allowedSearchIndexCategories:(id)a4 maxNumberOfResults:(unint64_t)a5 photoLibrary:(id)a6;
+ (id)personEntitiesByLookupIdentifierForPersonNames:(id)a3 photoLibrary:(id)a4;
+ (id)personRelationshipSearchIndexCategories;
+ (id)personSearchLocationIndexCategories;
@end

@implementation PHSearchQueryDisambiguation

+ (id)_locationIndexEntitiesForLocationName:(id)a3 expansionStringValues:(id)a4 allowedSearchIndexCategories:(id)a5 matchOptions:(unint64_t)a6 photoLibrary:(id)a7
{
  v28[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if ([v12 count])
  {
    v15 = v12;
  }

  else
  {
    v28[0] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  }

  v16 = v15;
  v17 = objc_alloc_init(PHSearchIndexEntityQueryOptions);
  [(PHSearchIndexEntityQueryOptions *)v17 setPhotoLibrary:v14];
  if ([v13 count])
  {
    [(PHSearchIndexEntityQueryOptions *)v17 setCategories:v13];
  }

  else
  {
    v18 = [objc_opt_class() locationSearchIndexCategories];
    [(PHSearchIndexEntityQueryOptions *)v17 setCategories:v18];
  }

  [(PHSearchIndexEntityQueryOptions *)v17 setMatchOptions:a6];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1494;
  v26 = __Block_byref_object_dispose__1495;
  v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __146__PHSearchQueryDisambiguation__locationIndexEntitiesForLocationName_expansionStringValues_allowedSearchIndexCategories_matchOptions_photoLibrary___block_invoke;
  v21[3] = &unk_1E75A39C8;
  v21[4] = &v22;
  [PHSearchIndexEntityResult enumerateIndexEntitiesMatchingTexts:v16 options:v17 resultHandler:v21];
  v19 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v19;
}

+ (id)_personEntitiesByLookupIdentifierForPersonNames:(id)a3 entityMatchOptions:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(PHSearchIndexEntityQueryOptions);
  [(PHSearchIndexEntityQueryOptions *)v10 setPhotoLibrary:v9];
  v11 = [a1 personSearchLocationIndexCategories];
  [(PHSearchIndexEntityQueryOptions *)v10 setCategories:v11];
  [(PHSearchIndexEntityQueryOptions *)v10 setMatchOptions:a4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1494;
  v19 = __Block_byref_object_dispose__1495;
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __111__PHSearchQueryDisambiguation__personEntitiesByLookupIdentifierForPersonNames_entityMatchOptions_photoLibrary___block_invoke;
  v14[3] = &unk_1E75A39C8;
  v14[4] = &v15;
  [PHSearchIndexEntityResult enumerateIndexEntitiesMatchingTexts:v8 options:v10 resultHandler:v14];
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __111__PHSearchQueryDisambiguation__personEntitiesByLookupIdentifierForPersonNames_entityMatchOptions_photoLibrary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 lookupIdentifier];
        v11 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11)
        {
          [v11 addObject:v9];
        }

        else
        {
          v13 = [MEMORY[0x1E695DFA8] setWithObject:v9];
          [*(*(*(a1 + 32) + 8) + 40) setObject:v13 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

+ (id)_personEntitiesByLookupIdentifierForPersonNames:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _personEntitiesByLookupIdentifierForPersonNames:v6 entityMatchOptions:22 photoLibrary:v7];
  if (![v8 count])
  {
    v9 = [a1 _personEntitiesByLookupIdentifierForPersonNames:v6 entityMatchOptions:6 photoLibrary:v7];

    v8 = v9;
  }

  v10 = v8;

  return v8;
}

+ (id)_personEntitiesByLookupIdentifierForPersonRelationships:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(PHSearchIndexEntityQueryOptions);
  [(PHSearchIndexEntityQueryOptions *)v8 setPhotoLibrary:v7];
  v9 = [a1 personRelationshipSearchIndexCategories];
  [(PHSearchIndexEntityQueryOptions *)v8 setCategories:v9];
  [(PHSearchIndexEntityQueryOptions *)v8 setMatchOptions:4];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1494;
  v17 = __Block_byref_object_dispose__1495;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__PHSearchQueryDisambiguation__personEntitiesByLookupIdentifierForPersonRelationships_photoLibrary___block_invoke;
  v12[3] = &unk_1E75A39C8;
  v12[4] = &v13;
  [PHSearchIndexEntityResult enumerateIndexEntitiesMatchingTexts:v6 options:v8 resultHandler:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __100__PHSearchQueryDisambiguation__personEntitiesByLookupIdentifierForPersonRelationships_photoLibrary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 lookupIdentifier];
        v11 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11)
        {
          [v11 addObject:v9];
        }

        else
        {
          v13 = [MEMORY[0x1E695DFA8] setWithObject:v9];
          [*(*(*(a1 + 32) + 8) + 40) setObject:v13 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

+ (id)locationSearchIndexCategories
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:1];
  [v2 addIndex:2];
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:5];
  [v2 addIndex:6];
  [v2 addIndex:7];
  [v2 addIndex:8];
  [v2 addIndex:9];
  [v2 addIndex:10];
  [v2 addIndex:11];
  [v2 addIndex:12];
  [v2 addIndex:13];
  [v2 addIndex:14];
  [v2 addIndex:1000];
  [v2 addIndex:1009];
  [v2 addIndex:1010];
  [v2 addIndex:1001];
  [v2 addIndex:1700];
  [v2 addIndex:1520];
  [v2 addIndex:1521];
  [v2 addIndex:1007];
  [v2 addIndex:1008];

  return v2;
}

+ (id)personSearchLocationIndexCategories
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:1300];
  [v2 addIndex:1330];

  return v2;
}

+ (id)personRelationshipSearchIndexCategories
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:1301];
  [v2 addIndex:1331];

  return v2;
}

+ (id)allowedSearchIndexCategoriesForMemoriesLocationPromptBinding
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:1];
  [v2 addIndex:1700];

  return v2;
}

+ (id)performLocationDisambiguationForFullQueryString:(id)a3 allowedSearchIndexCategories:(id)a4 maxNumberOfResults:(unint64_t)a5 photoLibrary:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [PHSearchUtility allTokenNGramsFromString:v10];
  v14 = [v13 allObjects];
  v26 = v11;
  v15 = [a1 _locationIndexEntitiesForLocationName:v10 expansionStringValues:v14 allowedSearchIndexCategories:v11 matchOptions:6 photoLibrary:v12];

  v16 = [v15 allObjects];
  v17 = [v16 sortedArrayUsingSelector:sel_compare_];

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [v17 count];
  if (v19 >= a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = v19;
  }

  if (a5)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      v23 = [v17 objectAtIndexedSubscript:i];
      v24 = [v23 normalizedText];

      if (([v18 containsObject:v24] & 1) == 0)
      {
        [v18 addObject:v24];
      }
    }
  }

  return v18;
}

+ (id)performDisambiguationForPerson:(id)a3 usingGroundedNames:(id)a4 photoLibrary:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PHSearchQueryDisambiguation.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v10 count])
  {
    v13 = [a1 personEntitiesByLookupIdentifierForPersonNames:v10 photoLibrary:v11];
    v14 = [v13 allKeys];

    [v12 addObjectsFromArray:v14];
  }

  if (![v12 count])
  {
    v21[0] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v16 = [a1 personEntitiesByLookupIdentifierForPersonNames:v15 photoLibrary:v11];
    v17 = [v16 allKeys];

    [v12 addObjectsFromArray:v17];
  }

  v18 = [v12 allObjects];

  return v18;
}

+ (id)performDisambiguationForPersonName:(id)a3 expansionStringValuesByCSAttributedEntityType:(id)a4 photoLibrary:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PHSearchQueryDisambiguation.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"personName"}];
  }

  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6963A38]];
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6963A28]];
  if ([v12 count])
  {
    v14 = v12;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([v13 count])
    {
      v16 = [a1 personEntitiesByLookupIdentifierForPersonNames:v13 photoLibrary:v11];
      v17 = [v16 allKeys];

      [v15 addObjectsFromArray:v17];
    }

    if (![v15 count])
    {
      v23[0] = v9;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v19 = [a1 personEntitiesByLookupIdentifierForPersonNames:v18 photoLibrary:v11];
      v20 = [v19 allKeys];

      [v15 addObjectsFromArray:v20];
    }

    v14 = [v15 allObjects];
  }

  return v14;
}

+ (id)personEntitiesByLookupIdentifierForPersonNames:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _personEntitiesByLookupIdentifierForPersonRelationships:v6 photoLibrary:v7];
  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = [a1 _personEntitiesByLookupIdentifierForPersonNames:v6 photoLibrary:v7];
  }

  v10 = v9;

  return v10;
}

@end