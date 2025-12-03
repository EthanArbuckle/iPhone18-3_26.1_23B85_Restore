@interface PHSearchQueryDisambiguation
+ (id)_locationIndexEntitiesForLocationName:(id)name expansionStringValues:(id)values allowedSearchIndexCategories:(id)categories matchOptions:(unint64_t)options photoLibrary:(id)library;
+ (id)_personEntitiesByLookupIdentifierForPersonNames:(id)names entityMatchOptions:(unint64_t)options photoLibrary:(id)library;
+ (id)_personEntitiesByLookupIdentifierForPersonNames:(id)names photoLibrary:(id)library;
+ (id)_personEntitiesByLookupIdentifierForPersonRelationships:(id)relationships photoLibrary:(id)library;
+ (id)allowedSearchIndexCategoriesForMemoriesLocationPromptBinding;
+ (id)locationSearchIndexCategories;
+ (id)performDisambiguationForPerson:(id)person usingGroundedNames:(id)names photoLibrary:(id)library;
+ (id)performDisambiguationForPersonName:(id)name expansionStringValuesByCSAttributedEntityType:(id)type photoLibrary:(id)library;
+ (id)performLocationDisambiguationForFullQueryString:(id)string allowedSearchIndexCategories:(id)categories maxNumberOfResults:(unint64_t)results photoLibrary:(id)library;
+ (id)personEntitiesByLookupIdentifierForPersonNames:(id)names photoLibrary:(id)library;
+ (id)personRelationshipSearchIndexCategories;
+ (id)personSearchLocationIndexCategories;
@end

@implementation PHSearchQueryDisambiguation

+ (id)_locationIndexEntitiesForLocationName:(id)name expansionStringValues:(id)values allowedSearchIndexCategories:(id)categories matchOptions:(unint64_t)options photoLibrary:(id)library
{
  v28[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  valuesCopy = values;
  categoriesCopy = categories;
  libraryCopy = library;
  if ([valuesCopy count])
  {
    v15 = valuesCopy;
  }

  else
  {
    v28[0] = nameCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  }

  v16 = v15;
  v17 = objc_alloc_init(PHSearchIndexEntityQueryOptions);
  [(PHSearchIndexEntityQueryOptions *)v17 setPhotoLibrary:libraryCopy];
  if ([categoriesCopy count])
  {
    [(PHSearchIndexEntityQueryOptions *)v17 setCategories:categoriesCopy];
  }

  else
  {
    locationSearchIndexCategories = [objc_opt_class() locationSearchIndexCategories];
    [(PHSearchIndexEntityQueryOptions *)v17 setCategories:locationSearchIndexCategories];
  }

  [(PHSearchIndexEntityQueryOptions *)v17 setMatchOptions:options];
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

+ (id)_personEntitiesByLookupIdentifierForPersonNames:(id)names entityMatchOptions:(unint64_t)options photoLibrary:(id)library
{
  namesCopy = names;
  libraryCopy = library;
  v10 = objc_alloc_init(PHSearchIndexEntityQueryOptions);
  [(PHSearchIndexEntityQueryOptions *)v10 setPhotoLibrary:libraryCopy];
  personSearchLocationIndexCategories = [self personSearchLocationIndexCategories];
  [(PHSearchIndexEntityQueryOptions *)v10 setCategories:personSearchLocationIndexCategories];
  [(PHSearchIndexEntityQueryOptions *)v10 setMatchOptions:options];
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
  [PHSearchIndexEntityResult enumerateIndexEntitiesMatchingTexts:namesCopy options:v10 resultHandler:v14];
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

+ (id)_personEntitiesByLookupIdentifierForPersonNames:(id)names photoLibrary:(id)library
{
  namesCopy = names;
  libraryCopy = library;
  v8 = [self _personEntitiesByLookupIdentifierForPersonNames:namesCopy entityMatchOptions:22 photoLibrary:libraryCopy];
  if (![v8 count])
  {
    v9 = [self _personEntitiesByLookupIdentifierForPersonNames:namesCopy entityMatchOptions:6 photoLibrary:libraryCopy];

    v8 = v9;
  }

  v10 = v8;

  return v8;
}

+ (id)_personEntitiesByLookupIdentifierForPersonRelationships:(id)relationships photoLibrary:(id)library
{
  relationshipsCopy = relationships;
  libraryCopy = library;
  v8 = objc_alloc_init(PHSearchIndexEntityQueryOptions);
  [(PHSearchIndexEntityQueryOptions *)v8 setPhotoLibrary:libraryCopy];
  personRelationshipSearchIndexCategories = [self personRelationshipSearchIndexCategories];
  [(PHSearchIndexEntityQueryOptions *)v8 setCategories:personRelationshipSearchIndexCategories];
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
  [PHSearchIndexEntityResult enumerateIndexEntitiesMatchingTexts:relationshipsCopy options:v8 resultHandler:v12];
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

+ (id)performLocationDisambiguationForFullQueryString:(id)string allowedSearchIndexCategories:(id)categories maxNumberOfResults:(unint64_t)results photoLibrary:(id)library
{
  stringCopy = string;
  categoriesCopy = categories;
  libraryCopy = library;
  v13 = [PHSearchUtility allTokenNGramsFromString:stringCopy];
  allObjects = [v13 allObjects];
  v26 = categoriesCopy;
  v15 = [self _locationIndexEntitiesForLocationName:stringCopy expansionStringValues:allObjects allowedSearchIndexCategories:categoriesCopy matchOptions:6 photoLibrary:libraryCopy];

  allObjects2 = [v15 allObjects];
  v17 = [allObjects2 sortedArrayUsingSelector:sel_compare_];

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = [v17 count];
  if (v19 >= results)
  {
    resultsCopy = results;
  }

  else
  {
    resultsCopy = v19;
  }

  if (results)
  {
    v21 = resultsCopy;
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
      normalizedText = [v23 normalizedText];

      if (([v18 containsObject:normalizedText] & 1) == 0)
      {
        [v18 addObject:normalizedText];
      }
    }
  }

  return v18;
}

+ (id)performDisambiguationForPerson:(id)person usingGroundedNames:(id)names photoLibrary:(id)library
{
  v21[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  namesCopy = names;
  libraryCopy = library;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryDisambiguation.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"query"}];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([namesCopy count])
  {
    v13 = [self personEntitiesByLookupIdentifierForPersonNames:namesCopy photoLibrary:libraryCopy];
    allKeys = [v13 allKeys];

    [v12 addObjectsFromArray:allKeys];
  }

  if (![v12 count])
  {
    v21[0] = personCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v16 = [self personEntitiesByLookupIdentifierForPersonNames:v15 photoLibrary:libraryCopy];
    allKeys2 = [v16 allKeys];

    [v12 addObjectsFromArray:allKeys2];
  }

  allObjects = [v12 allObjects];

  return allObjects;
}

+ (id)performDisambiguationForPersonName:(id)name expansionStringValuesByCSAttributedEntityType:(id)type photoLibrary:(id)library
{
  v23[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  typeCopy = type;
  libraryCopy = library;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSearchQueryDisambiguation.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"personName"}];
  }

  v12 = [typeCopy objectForKeyedSubscript:*MEMORY[0x1E6963A38]];
  v13 = [typeCopy objectForKeyedSubscript:*MEMORY[0x1E6963A28]];
  if ([v12 count])
  {
    allObjects = v12;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([v13 count])
    {
      v16 = [self personEntitiesByLookupIdentifierForPersonNames:v13 photoLibrary:libraryCopy];
      allKeys = [v16 allKeys];

      [v15 addObjectsFromArray:allKeys];
    }

    if (![v15 count])
    {
      v23[0] = nameCopy;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v19 = [self personEntitiesByLookupIdentifierForPersonNames:v18 photoLibrary:libraryCopy];
      allKeys2 = [v19 allKeys];

      [v15 addObjectsFromArray:allKeys2];
    }

    allObjects = [v15 allObjects];
  }

  return allObjects;
}

+ (id)personEntitiesByLookupIdentifierForPersonNames:(id)names photoLibrary:(id)library
{
  namesCopy = names;
  libraryCopy = library;
  v8 = [self _personEntitiesByLookupIdentifierForPersonRelationships:namesCopy photoLibrary:libraryCopy];
  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = [self _personEntitiesByLookupIdentifierForPersonNames:namesCopy photoLibrary:libraryCopy];
  }

  v10 = v9;

  return v10;
}

@end