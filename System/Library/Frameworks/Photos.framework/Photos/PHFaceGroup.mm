@interface PHFaceGroup
+ (id)entityKeyMap;
+ (id)fetchFaceGroupsForPerson:(id)person options:(id)options;
+ (id)fetchFaceGroupsGroupedByFaceLocalIdentifierForFaces:(id)faces options:(id)options;
+ (id)fetchFaceGroupsWithFace:(id)face options:(id)options;
+ (id)fetchFaceGroupsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
- (PHFaceGroup)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
@end

@implementation PHFaceGroup

- (PHFaceGroup)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PHFaceGroup;
  v9 = [(PHObject *)&v13 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"unnamedFaceCount"];
    v9->_unnamedFaceCount = [v10 integerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"personBuilderState"];
    v9->_personBuilderState = [v11 integerValue];
  }

  return v9;
}

+ (id)fetchPredicateFromComparisonPredicate:(id)predicate options:(id)options
{
  predicateCopy = predicate;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___PHFaceGroup;
  v7 = objc_msgSendSuper2(&v16, sel_fetchPredicateFromComparisonPredicate_options_, predicateCopy, options);
  if (!v7)
  {
    leftExpression = [predicateCopy leftExpression];
    rightExpression = [predicateCopy rightExpression];
    expressionType = [leftExpression expressionType];
    v11 = leftExpression;
    if (expressionType == 3 || (v12 = [rightExpression expressionType], v11 = rightExpression, v12 == 3))
    {
      keyPath = [v11 keyPath];
      v14 = keyPath;
      if (keyPath && (([keyPath isEqualToString:@"detectedFaces.personForFace"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"detectedFaces.@count") & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"detectedFaces.detectionType")))
      {
        v7 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:leftExpression rightExpression:rightExpression modifier:objc_msgSend(predicateCopy type:"comparisonPredicateModifier") options:{objc_msgSend(predicateCopy, "predicateOperatorType"), objc_msgSend(predicateCopy, "options")}];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v14 = 0;
    }

    v7 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

id __47__PHFaceGroup_fetchEmptyFaceGroupsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForEmptyFaceGroupsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchFaceGroupsGroupedByFaceLocalIdentifierForFaces:(id)faces options:(id)options
{
  v39 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  optionsCopy = options;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1422;
  v36 = __Block_byref_object_dispose__1423;
  v37 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = facesCopy;
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        uuid = [v14 uuid];
        [array addObject:uuid];

        if (!v10)
        {
          v10 = v14;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v11);
  }

  v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:v10];
  v17 = MEMORY[0x1E69BE3D8];
  photoLibrary = [v16 photoLibrary];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__PHFaceGroup_fetchFaceGroupsGroupedByFaceLocalIdentifierForFaces_options___block_invoke;
  v23[3] = &unk_1E75A7BD0;
  v26 = &v32;
  v19 = v16;
  v24 = v19;
  v20 = optionsCopy;
  v25 = v20;
  selfCopy = self;
  [v17 batchFetchFaceGroupByFaceUUIDWithFaceUUIDs:array predicate:0 library:photoLibrary completion:v23];

  v21 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v21;
}

void __75__PHFaceGroup_fetchFaceGroupsGroupedByFaceLocalIdentifierForFaces_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PHFaceGroup_fetchFaceGroupsGroupedByFaceLocalIdentifierForFaces_options___block_invoke_2;
    v11[3] = &unk_1E75A3978;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v5 enumerateKeysAndObjectsUsingBlock:v11];

    v10 = v12;
  }

  else
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Error batch fetching associated person by face group: %@", buf, 0xCu);
    }
  }
}

void __75__PHFaceGroup_fetchFaceGroupsGroupedByFaceLocalIdentifierForFaces_options___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PHObject *)PHFace localIdentifierWithUUID:a2];
  v7 = [[PHObjectPLAdapter alloc] initWithPLManagedObject:v5 photoLibrary:*(a1 + 32)];

  v8 = [*(a1 + 40) fetchPropertySetsAsSet];
  v9 = [objc_alloc(*(a1 + 56)) initWithFetchDictionary:v7 propertyHint:+[PHObject propertyFetchHintsForPropertySets:](PHFaceGroup photoLibrary:{"propertyFetchHintsForPropertySets:", v8), *(a1 + 32)}];
  v10 = [PHManualFetchResult alloc];
  v13[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = [(PHManualFetchResult *)v10 initWithObjects:v11 photoLibrary:*(a1 + 32) fetchType:@"PHPerson" fetchPropertySets:v8 identifier:0 registerIfNeeded:1];

  [*(*(*(a1 + 48) + 8) + 40) setObject:v12 forKeyedSubscript:v6];
}

+ (id)fetchFaceGroupsWithFace:(id)face options:(id)options
{
  v4 = [PHQuery queryForFaceGroupsWithFace:face options:options];
  executeQuery = [v4 executeQuery];

  return executeQuery;
}

+ (id)fetchFaceGroupsForPerson:(id)person options:(id)options
{
  personCopy = person;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PHFaceGroup_fetchFaceGroupsForPerson_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = personCopy;
  v6 = personCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __48__PHFaceGroup_fetchFaceGroupsForPerson_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForFaceGroupsForPerson:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchFaceGroupsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PHFaceGroup_fetchFaceGroupsWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = identifiersCopy;
  v6 = identifiersCopy;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __59__PHFaceGroup_fetchFaceGroupsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForFaceGroupsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __42__PHFaceGroup_fetchFaceGroupsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForFaceGroupsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  expressionCopy = expression;
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PHFaceGroup_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transformValueExpression_forKeyPath__onceToken_1434 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_1434, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_1435 containsObject:pathCopy])
  {
    v8 = expressionCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __51__PHFaceGroup_transformValueExpression_forKeyPath___block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"uuid";
  v4[1] = @"unnamedFaceCount";
  v4[2] = @"personBuilderState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_1435;
  transformValueExpression_forKeyPath___passThroughSet_1435 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_1438;

  return v2;
}

void __27__PHFaceGroup_entityKeyMap__block_invoke()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v9 = @"uuid";
  v10[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v11[0] = v1;
  v10[1] = @"unnamedFaceCount";
  v8 = @"unnamedFaceCount";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v11[1] = v2;
  v10[2] = @"personBuilderState";
  v7 = @"personBuilderState";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v11[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v5 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v4];
  v6 = entityKeyMap_pl_once_object_15_1438;
  entityKeyMap_pl_once_object_15_1438 = v5;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  if (propertiesToFetchWithHint__onceToken_1441 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_1441, &__block_literal_global_1442);
  }

  v4 = propertiesToFetchWithHint__array_1443;

  return v4;
}

void __41__PHFaceGroup_propertiesToFetchWithHint___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"uuid";
  v3[2] = @"unnamedFaceCount";
  v3[3] = @"personBuilderState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v2 = propertiesToFetchWithHint__array_1443;
  propertiesToFetchWithHint__array_1443 = v1;
}

@end