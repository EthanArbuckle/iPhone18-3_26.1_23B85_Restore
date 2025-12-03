@interface PHFaceCrop
+ (id)_trainingFaceCropByUUIDForPerson:(id)person options:(id)options;
+ (id)entityKeyMap;
+ (id)fetchFaceCropByFaceLocalIdentifierForFaces:(id)faces fetchOptions:(id)options;
+ (id)fetchFaceCropsForPerson:(id)person options:(id)options;
+ (id)fetchFaceCropsNeedingFaceDetectionWithOptions:(id)options;
+ (id)fetchFaceCropsWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchFaceCropsWithOptions:(id)options;
+ (id)fetchTransientTrainingFaceCropsForPerson:(id)person options:(id)options;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
- (PHFaceCrop)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
@end

@implementation PHFaceCrop

- (PHFaceCrop)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PHFaceCrop;
  v9 = [(PHObject *)&v15 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"resourceData"];
    resourceData = v9->_resourceData;
    v9->_resourceData = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    v9->_state = [v12 shortValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    v9->_type = [v13 integerValue];
  }

  return v9;
}

+ (id)fetchFaceCropByFaceLocalIdentifierForFaces:(id)faces fetchOptions:(id)options
{
  selfCopy = self;
  v37 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  optionsCopy = options;
  photoLibrary = [facesCopy photoLibrary];
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = facesCopy;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        objectID = [v14 objectID];
        localIdentifier = [v14 localIdentifier];
        [array addObject:objectID];
        [dictionary setObject:localIdentifier forKeyedSubscript:objectID];
        if (!photoLibrary)
        {
          photoLibrary = [v14 photoLibrary];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v18 = MEMORY[0x1E69BE410];
  v6PhotoLibrary = [photoLibrary photoLibrary];
  v20 = [v18 batchFetchFaceCropByFaceObjectIDWithFaceObjectIDs:array library:v6PhotoLibrary];

  if ([v20 count])
  {
    v6PhotoLibrary2 = [photoLibrary photoLibrary];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__PHFaceCrop_fetchFaceCropByFaceLocalIdentifierForFaces_fetchOptions___block_invoke;
    v25[3] = &unk_1E75AA2F0;
    v26 = v20;
    v27 = dictionary;
    v28 = photoLibrary;
    v29 = optionsCopy;
    v31 = selfCopy;
    v30 = dictionary2;
    [v6PhotoLibrary2 performBlockAndWait:v25];
  }

  return dictionary2;
}

void __70__PHFaceCrop_fetchFaceCropByFaceLocalIdentifierForFaces_fetchOptions___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PHFaceCrop_fetchFaceCropByFaceLocalIdentifierForFaces_fetchOptions___block_invoke_2;
  v5[3] = &unk_1E75AA2C8;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4 = *(a1 + 64);
  v3 = v4;
  v9 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __70__PHFaceCrop_fetchFaceCropByFaceLocalIdentifierForFaces_fetchOptions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v10 = [v5 objectForKeyedSubscript:a2];
  v7 = [[PHObjectPLAdapter alloc] initWithPLManagedObject:v6 photoLibrary:*(a1 + 40)];

  v8 = [*(a1 + 48) fetchPropertySetsAsSet];
  v9 = [objc_alloc(*(a1 + 64)) initWithFetchDictionary:v7 propertyHint:+[PHObject propertyFetchHintsForPropertySets:](PHFaceCrop photoLibrary:{"propertyFetchHintsForPropertySets:", v8), *(a1 + 40)}];
  if (v10 && v9)
  {
    [*(a1 + 56) setObject:v9 forKeyedSubscript:v10];
  }
}

+ (id)_trainingFaceCropByUUIDForPerson:(id)person options:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  personCopy = person;
  optionsCopy = options;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];
  librarySpecificFetchOptions = [v7 librarySpecificFetchOptions];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"vipModelType", 1];
  [librarySpecificFetchOptions setInternalPredicate:v9];

  [librarySpecificFetchOptions setFetchLimit:{objc_msgSend(optionsCopy, "fetchLimit")}];
  sortDescriptors = [optionsCopy sortDescriptors];
  [librarySpecificFetchOptions setSortDescriptors:sortDescriptors];

  [librarySpecificFetchOptions setIncludeNonvisibleFaces:{objc_msgSend(optionsCopy, "includeNonvisibleFaces")}];
  v11 = [PHFace fetchFacesForPerson:personCopy options:librarySpecificFetchOptions];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        localIdentifier = [*(*(&v26 + 1) + 8 * i) localIdentifier];
        [v12 addObject:localIdentifier];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v15);
  }

  if ([v12 count])
  {
    photoAnalysisClient = [v7 photoAnalysisClient];
    v25 = 0;
    v20 = [photoAnalysisClient requestOnDemandFaceCropsForFaceLocalIdentifiers:v12 error:&v25];
    v21 = v25;

    if (v21 || !v20)
    {
      v23 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v31 = personCopy;
        v32 = 2112;
        v33 = v12;
        v34 = 2112;
        v35 = v21;
        _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Failed to request on demand face crops for person: %@, faces: %@, error: %@", buf, 0x20u);
      }

      v22 = 0;
    }

    else
    {
      v22 = v20;
    }
  }

  else
  {
    v21 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = personCopy;
      _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "No on demand face crops to request for person: %@", buf, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

+ (id)fetchTransientTrainingFaceCropsForPerson:(id)person options:(id)options
{
  personCopy = person;
  optionsCopy = options;
  v8 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:personCopy];
  v9 = [self _trainingFaceCropByUUIDForPerson:personCopy options:optionsCopy];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    uuid = [personCopy uuid];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__PHFaceCrop_fetchTransientTrainingFaceCropsForPerson_options___block_invoke;
    v17[3] = &unk_1E75AA2A0;
    v18 = uuid;
    v12 = v8;
    v19 = v12;
    v20 = v10;
    v13 = v10;
    v14 = uuid;
    [v9 enumerateKeysAndObjectsUsingBlock:v17];
    v15 = [[PHManualFetchResult alloc] initWithObjects:v13 photoLibrary:v12 fetchType:@"PHFaceCrop" fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __63__PHFaceCrop_fetchTransientTrainingFaceCropsForPerson_options___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 stringByAppendingString:a2];
  v10[0] = @"uuid";
  v10[1] = @"resourceData";
  v11[0] = v7;
  v11[1] = v6;
  v10[2] = @"state";
  v10[3] = @"type";
  v11[2] = &unk_1F102DA30;
  v11[3] = &unk_1F102DA30;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v9 = [[PHFaceCrop alloc] initWithFetchDictionary:v8 propertyHint:2 photoLibrary:*(a1 + 40)];
  [*(a1 + 48) addObject:v9];
}

+ (id)fetchFaceCropsNeedingFaceDetectionWithOptions:(id)options
{
  v15[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (optionsCopy)
  {
    v5 = optionsCopy;
    v6 = [optionsCopy copy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"state == %d", 0];
  predicate = [v6 predicate];

  if (predicate)
  {
    predicate2 = [v6 predicate];
    v10 = MEMORY[0x1E696AB28];
    v15[0] = predicate2;
    v15[1] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];
    [v6 setPredicate:v12];
  }

  else
  {
    [v6 setPredicate:v7];
  }

  v13 = [self fetchFaceCropsWithOptions:v6];

  return v13;
}

+ (id)fetchFaceCropsForPerson:(id)person options:(id)options
{
  personCopy = person;
  optionsCopy = options;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__PHFaceCrop_fetchFaceCropsForPerson_options___block_invoke;
  v11[3] = &unk_1E75AA278;
  v12 = personCopy;
  v13 = optionsCopy;
  v7 = optionsCopy;
  v8 = personCopy;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v7 fetchBlock:v11];

  return v9;
}

id __46__PHFaceCrop_fetchFaceCropsForPerson_options___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForFaceCropsForPerson:*(a1 + 32) options:*(a1 + 40)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)fetchFaceCropsWithLocalIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PHFaceCrop_fetchFaceCropsWithLocalIdentifiers_options___block_invoke;
  v11[3] = &unk_1E75AA278;
  v12 = identifiersCopy;
  v13 = optionsCopy;
  v7 = optionsCopy;
  v8 = identifiersCopy;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v7 fetchBlock:v11];

  return v9;
}

id __57__PHFaceCrop_fetchFaceCropsWithLocalIdentifiers_options___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForFaceCropsWithLocalIdentifiers:*(a1 + 32) options:*(a1 + 40)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)fetchFaceCropsWithOptions:(id)options
{
  optionsCopy = options;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PHFaceCrop_fetchFaceCropsWithOptions___block_invoke;
  v7[3] = &unk_1E75AB0E0;
  v8 = optionsCopy;
  v4 = optionsCopy;
  v5 = [PHObject authorizationAwareFetchResultWithOptions:v4 fetchBlock:v7];

  return v5;
}

id __40__PHFaceCrop_fetchFaceCropsWithOptions___block_invoke(uint64_t a1)
{
  v1 = [PHQuery queryForFaceCropsWithOptions:*(a1 + 32)];
  v2 = [v1 executeQuery];

  return v2;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  expressionCopy = expression;
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PHFaceCrop_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transformValueExpression_forKeyPath__onceToken_48135 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_48135, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_48136 containsObject:pathCopy])
  {
    v8 = expressionCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __50__PHFaceCrop_transformValueExpression_forKeyPath___block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"uuid";
  v4[1] = @"resourceData";
  v4[2] = @"state";
  v4[3] = @"type";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_48136;
  transformValueExpression_forKeyPath___passThroughSet_48136 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_48139;

  return v2;
}

void __26__PHFaceCrop_entityKeyMap__block_invoke()
{
  v13[4] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v11 = @"uuid";
  v12[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v13[0] = v1;
  v12[1] = @"resourceData";
  v10 = @"resourceData";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v13[1] = v2;
  v12[2] = @"state";
  v9 = @"state";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v13[2] = v3;
  v12[3] = @"type";
  v8 = @"type";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v13[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v6 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v5];
  v7 = entityKeyMap_pl_once_object_15_48139;
  entityKeyMap_pl_once_object_15_48139 = v6;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  if (propertiesToFetchWithHint__onceToken_48141 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_48141, &__block_literal_global_48142);
  }

  v4 = propertiesToFetchWithHint__array_48143;

  return v4;
}

void __40__PHFaceCrop_propertiesToFetchWithHint___block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"uuid";
  v3[2] = @"resourceData";
  v3[3] = @"state";
  v3[4] = @"type";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v2 = propertiesToFetchWithHint__array_48143;
  propertiesToFetchWithHint__array_48143 = v1;
}

@end