@interface PHGraphQuery
+ (BOOL)_shouldExcludeSocialGroupWithVerifiedType:(signed __int16)type inSocialGroupContext:(int64_t)context;
+ (id)_graphBasePredicateWithLabelCode:(int)code options:(id)options;
+ (id)_graphFetchSocialGroupsObjectIDsSortedWithOptions:(id)options library:(id)library;
+ (id)_nodeTableFromSocialGroupNodeValues:(id)values socialGroupContext:(int64_t)context;
+ (id)graphQueryForAssetsForPerson:(id)person options:(id)options;
+ (id)graphQueryForExclusiveAssetsForSocialGroup:(id)group options:(id)options;
+ (id)graphQueryForInclusiveAssetsForSocialGroup:(id)group options:(id)options;
+ (id)graphQueryForKeyAssetForSocialGroup:(id)group createIfNeeded:(BOOL)needed options:(id)options;
+ (id)graphQueryForPersonsForAsset:(id)asset options:(id)options;
+ (id)graphQueryForPersonsInSocialGroup:(id)group options:(id)options;
+ (id)graphQueryForSocialGroupsWithOptions:(id)options;
+ (id)queryForSearchEntitiesWithOptions:(id)options;
+ (id)queryForSocialGroupsWithUUIDs:(id)ds options:(id)options;
- (BOOL)_graphQueryIntersectsWithChange:(id)change;
- (id)_graphRefetchSocialGroup;
- (id)changeHandlingContainerIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)executeQuery;
- (id)extraBatchFetchingArrayOptions;
- (id)updatedQueryWithChange:(id)change;
- (unint64_t)possibleChangesForChange:(id)change;
@end

@implementation PHGraphQuery

- (id)extraBatchFetchingArrayOptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  graphQueryType = [(PHGraphQuery *)self graphQueryType];
  if (graphQueryType > 8)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      graphQueryType2 = [(PHGraphQuery *)self graphQueryType];
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Unknown graph query type: %ld", &v7, 0xCu);
    }

    goto LABEL_3;
  }

  if (graphQueryType != 2)
  {
LABEL_3:
    v4 = MEMORY[0x1E695E0F8];
    goto LABEL_4;
  }

  v9 = @"fetchedObjectClass";
  v10[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
LABEL_4:

  return v4;
}

- (BOOL)_graphQueryIntersectsWithChange:(id)change
{
  changeCopy = change;
  if (([(PHGraphQuery *)self graphQueryType]- 1) > 1)
  {
    updatedObjectIDs = [changeCopy updatedObjectIDs];
    graphSubject = [(PHGraphQuery *)self graphSubject];
    objectID = [graphSubject objectID];
    v9 = [updatedObjectIDs containsObject:objectID];

    if (v9)
    {
      graphQueryType = [(PHGraphQuery *)self graphQueryType];
      if (graphQueryType > 6)
      {
        if ((graphQueryType - 7) < 2)
        {
          entityName = [MEMORY[0x1E69BE468] entityName];
          v17 = [changeCopy containsChangesForEntityWithManagedEntityName:entityName];

          if (v17)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        if ((graphQueryType - 5) < 2)
        {
          graphSubject2 = [(PHGraphQuery *)self graphSubject];
          objectID2 = [graphSubject2 objectID];
          v13 = [changeCopy changedPropertyNamesForObjectID:objectID2 entityClass:objc_opt_class()];
          v14 = v13;
          v15 = @"inclusiveAssetIDs";
        }

        else if (graphQueryType == 3)
        {
          graphSubject2 = [(PHGraphQuery *)self graphSubject];
          objectID2 = [graphSubject2 objectID];
          v13 = [changeCopy changedPropertyNamesForObjectID:objectID2 entityClass:objc_opt_class()];
          v14 = v13;
          v15 = @"memberPersonIDs";
        }

        else
        {
          if (graphQueryType != 4)
          {
            goto LABEL_11;
          }

          graphSubject2 = [(PHGraphQuery *)self graphSubject];
          objectID2 = [graphSubject2 objectID];
          v13 = [changeCopy changedPropertyNamesForObjectID:objectID2 entityClass:objc_opt_class()];
          v14 = v13;
          v15 = @"keyAssetID";
        }

        v18 = [v13 containsObject:v15];

        if (v18)
        {
LABEL_15:
          v5 = 1;
          goto LABEL_16;
        }
      }
    }

LABEL_11:
    v5 = 0;
    goto LABEL_16;
  }

  v5 = [changeCopy containsChangesForEntityClass:objc_opt_class()];
LABEL_16:

  return v5;
}

- (id)_graphRefetchSocialGroup
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = self->_graphSubject;
  photoLibrary = [(PHObject *)v2 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setSocialGroupContext:2];
  localIdentifier = [(PHObject *)v2 localIdentifier];
  v10[0] = localIdentifier;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [PHSocialGroup fetchSocialGroupsWithLocalIdentifiers:v6 options:librarySpecificFetchOptions];

  firstObject = [v7 firstObject];

  return firstObject;
}

- (id)changeHandlingContainerIdentifier
{
  graphSubject = [(PHGraphQuery *)self graphSubject];
  objectID = [graphSubject objectID];

  return objectID;
}

- (id)executeQuery
{
  selfCopy = self;
  graphQueryType = [(PHGraphQuery *)self graphQueryType];
  if (graphQueryType <= 8)
  {
    if (graphQueryType == 2)
    {
      fetchOptions = [(PHFetchResult *)selfCopy fetchOptions];
      fetchPropertySets = [fetchOptions fetchPropertySets];
      if ([fetchPropertySets count])
      {
        v7 = MEMORY[0x1E695DFD8];
        fetchOptions2 = [(PHFetchResult *)selfCopy fetchOptions];
        fetchPropertySets2 = [fetchOptions2 fetchPropertySets];
        v10 = [v7 setWithArray:fetchPropertySets2];
      }

      else
      {
        v10 = 0;
      }

      v11 = [PHManualFetchResult alloc];
      seedOIDs = [(PHManualFetchResult *)selfCopy seedOIDs];
      fetchOptions3 = [(PHFetchResult *)selfCopy fetchOptions];
      photoLibrary = [fetchOptions3 photoLibrary];
      v15 = [(PHManualFetchResult *)selfCopy description];
      fetchOptions4 = [(PHFetchResult *)selfCopy fetchOptions];
      fetchLimit = [fetchOptions4 fetchLimit];

      v18 = 200;
      if (fetchLimit < 0xC8)
      {
        v18 = fetchLimit;
      }

      selfCopy = [(PHManualFetchResult *)v11 initWithOids:seedOIDs photoLibrary:photoLibrary fetchType:@"PHSocialGroup" fetchPropertySets:v10 identifier:v15 registerIfNeeded:1 graphQuery:selfCopy batchSize:v18];
    }

    else
    {
      v19.receiver = selfCopy;
      v19.super_class = PHGraphQuery;
      selfCopy = [(PHQuery *)&v19 executeQuery];
    }
  }

  return selfCopy;
}

- (unint64_t)possibleChangesForChange:(id)change
{
  if ([(PHGraphQuery *)self _graphQueryIntersectsWithChange:change])
  {
    return 15;
  }

  else
  {
    return 0;
  }
}

- (id)updatedQueryWithChange:(id)change
{
  if (![(PHGraphQuery *)self _graphQueryIntersectsWithChange:change])
  {
    goto LABEL_21;
  }

  graphQueryType = [(PHGraphQuery *)self graphQueryType];
  if (graphQueryType > 4)
  {
    if (graphQueryType <= 6)
    {
      if (graphQueryType == 5)
      {
        v14 = objc_opt_class();
        _graphRefetchSocialGroup = [(PHGraphQuery *)self _graphRefetchSocialGroup];
        fetchOptions = [(PHQuery *)self fetchOptions];
        [v14 graphQueryForInclusiveAssetsForSocialGroup:_graphRefetchSocialGroup options:fetchOptions];
      }

      else
      {
        v9 = objc_opt_class();
        _graphRefetchSocialGroup = [(PHGraphQuery *)self _graphRefetchSocialGroup];
        fetchOptions = [(PHQuery *)self fetchOptions];
        [v9 graphQueryForExclusiveAssetsForSocialGroup:_graphRefetchSocialGroup options:fetchOptions];
      }
      v8 = ;
      goto LABEL_19;
    }

    if (graphQueryType == 7)
    {
      v15 = objc_opt_class();
      graphSubject = self->_graphSubject;
      _graphRefetchSocialGroup = [(PHQuery *)self fetchOptions];
      v12 = [v15 graphQueryForAssetsForPerson:graphSubject options:_graphRefetchSocialGroup];
    }

    else
    {
      if (graphQueryType != 8)
      {
        goto LABEL_21;
      }

      v10 = objc_opt_class();
      v11 = self->_graphSubject;
      _graphRefetchSocialGroup = [(PHQuery *)self fetchOptions];
      v12 = [v10 graphQueryForPersonsForAsset:v11 options:_graphRefetchSocialGroup];
    }

LABEL_17:
    selfCopy = v12;
    goto LABEL_20;
  }

  if ((graphQueryType - 1) < 2)
  {
    v13 = objc_opt_class();
    _graphRefetchSocialGroup = [(PHQuery *)self fetchOptions];
    v12 = [v13 graphQueryForSocialGroupsWithOptions:_graphRefetchSocialGroup];
    goto LABEL_17;
  }

  if (graphQueryType == 3)
  {
    v18 = objc_opt_class();
    _graphRefetchSocialGroup = [(PHGraphQuery *)self _graphRefetchSocialGroup];
    fetchOptions = [(PHQuery *)self fetchOptions];
    v8 = [v18 graphQueryForPersonsInSocialGroup:_graphRefetchSocialGroup options:fetchOptions];
    goto LABEL_19;
  }

  if (graphQueryType == 4)
  {
    v5 = objc_opt_class();
    _graphRefetchSocialGroup = [(PHGraphQuery *)self _graphRefetchSocialGroup];
    fetchOptions = [(PHQuery *)self fetchOptions];
    v8 = [v5 graphQueryForKeyAssetForSocialGroup:_graphRefetchSocialGroup createIfNeeded:0 options:fetchOptions];
LABEL_19:
    selfCopy = v8;

LABEL_20:
    if (selfCopy)
    {
      goto LABEL_22;
    }
  }

LABEL_21:
  selfCopy = self;
LABEL_22:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = PHGraphQuery;
  v4 = [(PHQuery *)&v8 copyWithZone:zone];
  graphSubject = [(PHGraphQuery *)self graphSubject];
  v6 = [graphSubject copy];
  [v4 setGraphSubject:v6];

  [v4 setGraphQueryType:{-[PHGraphQuery graphQueryType](self, "graphQueryType")}];
  return v4;
}

- (id)description
{
  graphQueryType = [(PHGraphQuery *)self graphQueryType];
  if (graphQueryType > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E75A9B98[graphQueryType];
  }

  v5 = MEMORY[0x1E696AEC0];
  graphSubject = [(PHGraphQuery *)self graphSubject];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  graphSubject2 = [(PHGraphQuery *)self graphSubject];
  uuid = [graphSubject2 uuid];
  v11 = [v5 stringWithFormat:@"PHGraphQuery(type=%@, subject=(%@ uuid=%@))", v4, v8, uuid];

  return v11;
}

+ (id)_nodeTableFromSocialGroupNodeValues:(id)values socialGroupContext:(int64_t)context
{
  selfCopy = self;
  contextCopy = context;
  v36 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v28 = [MEMORY[0x1E695DFA8] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = valuesCopy;
  v27 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v27)
  {
    v26 = *v30;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:{@"node", selfCopy, contextCopy}];
        v9 = [dictionary objectForKeyedSubscript:v8];
        v10 = [v7 objectForKeyedSubscript:@"nameCode"];
        unsignedIntValue = [v10 unsignedIntValue];
        v12 = [PHSocialGroup propertyNameFromNodeValueNameCode:unsignedIntValue];
        v13 = [PHSocialGroup nodeValueAcessorNameForNameCode:unsignedIntValue];
        v14 = [v7 objectForKeyedSubscript:v13];
        v15 = v14;
        if (unsignedIntValue == 2000 && [selfCopy _shouldExcludeSocialGroupWithVerifiedType:objc_msgSend(v14 inSocialGroupContext:{"intValue"), contextCopy}])
        {
          [v28 addObject:v8];
        }

        if (v9)
        {
          goto LABEL_10;
        }

        if (([v28 containsObject:v8] & 1) == 0)
        {
          v19 = [v7 objectForKeyedSubscript:@"node.uuid"];
          v20 = MEMORY[0x1E695DF90];
          v33 = @"objectID";
          v34 = v8;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v9 = [v20 dictionaryWithDictionary:v21];

          if (v19)
          {
            [v9 setObject:v19 forKeyedSubscript:@"uuid"];
          }

          [dictionary setObject:v9 forKeyedSubscript:v8];

          if (v9)
          {
LABEL_10:
            if ([v28 containsObject:v8])
            {
              v16 = dictionary;
              v17 = 0;
              v18 = v8;
            }

            else
            {
              v16 = v9;
              v17 = v15;
              v18 = v12;
            }

            [v16 setObject:v17 forKeyedSubscript:v18];
          }
        }
      }

      v27 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v27);
  }

  return dictionary;
}

+ (BOOL)_shouldExcludeSocialGroupWithVerifiedType:(signed __int16)type inSocialGroupContext:(int64_t)context
{
  v4 = (type + 1) < 2;
  if (context)
  {
    v4 = 0;
  }

  if (context == 1)
  {
    return type != 1;
  }

  else
  {
    return v4;
  }
}

+ (id)_graphFetchSocialGroupsObjectIDsSortedWithOptions:(id)options library:(id)library
{
  optionsCopy = options;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHGraphQuery.m" lineNumber:454 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  sortDescriptors = [optionsCopy sortDescriptors];
  photoLibraryForCurrentQueueQoS = [libraryCopy photoLibraryForCurrentQueueQoS];
  managedObjectContext = [photoLibraryForCurrentQueueQoS managedObjectContext];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__44252;
  v33 = __Block_byref_object_dispose__44253;
  v34 = MEMORY[0x1E695E0F0];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74__PHGraphQuery__graphFetchSocialGroupsObjectIDsSortedWithOptions_library___block_invoke;
  v23[3] = &unk_1E75A9B78;
  v12 = sortDescriptors;
  v24 = v12;
  v13 = managedObjectContext;
  v25 = v13;
  selfCopy = self;
  v14 = optionsCopy;
  v26 = v14;
  v27 = &v29;
  [photoLibraryForCurrentQueueQoS performBlockAndWait:v23];
  v15 = v30[5];
  if ([v14 fetchLimit])
  {
    v16 = v30[5];
    fetchLimit = [v14 fetchLimit];
    v18 = [v30[5] count];
    if (fetchLimit >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = fetchLimit;
    }

    v20 = [v16 subarrayWithRange:{0, v19}];

    v15 = v20;
  }

  _Block_object_dispose(&v29, 8);

  return v15;
}

void __74__PHGraphQuery__graphFetchSocialGroupsObjectIDsSortedWithOptions_library___block_invoke(uint64_t a1)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  v3 = [v2 _pl_map:&__block_literal_global_152];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2000];
  v5 = [MEMORY[0x1E695DFA8] setWithSet:v3];
  [v5 addObject:v4];
  v6 = [MEMORY[0x1E69BE480] fetchRequest];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %u AND %K IN %@", @"node.primaryLabelCode", 1000, @"nameCode", v5];
  [v6 setPredicate:v7];

  [v6 setResultType:2];
  v19[0] = @"nameCode";
  v19[1] = @"integerValue";
  v19[2] = @"stringValue";
  v19[3] = @"node";
  v19[4] = @"node.uuid";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
  [v6 setPropertiesToFetch:v8];

  v9 = *(a1 + 40);
  v18 = 0;
  v10 = [v9 executeFetchRequest:v6 error:&v18];
  v11 = v18;
  v12 = [*(a1 + 64) _nodeTableFromSocialGroupNodeValues:v10 socialGroupContext:{objc_msgSend(*(a1 + 48), "socialGroupContext")}];
  v13 = [v12 allValues];
  v14 = [v13 sortedArrayUsingDescriptors:*(a1 + 32)];

  v15 = [v14 _pl_map:&__block_literal_global_173];
  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

id __74__PHGraphQuery__graphFetchSocialGroupsObjectIDsSortedWithOptions_library___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 key];
  v3 = [PHSocialGroup nodeValueNameCodeFromPropertyName:v2];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)queryForSearchEntitiesWithOptions:(id)options
{
  v3 = MEMORY[0x1E696AE18];
  optionsCopy = options;
  1100 = [v3 predicateWithFormat:@"%K == %u", @"primaryLabelCode", 1100];
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  v7 = [PHQuery queryForType:@"PHSearchEntity" withBasePredicate:1100 inLibrary:v6];

  [v7 setFetchOptions:optionsCopy];

  return v7;
}

+ (id)graphQueryForPersonsForAsset:(id)asset options:(id)options
{
  v45 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  photoLibrary = [assetCopy photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__44252;
  v37 = __Block_byref_object_dispose__44253;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__44252;
  v31 = __Block_byref_object_dispose__44253;
  v32 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __53__PHGraphQuery_graphQueryForPersonsForAsset_options___block_invoke;
  v22 = &unk_1E75A9D58;
  v25 = &v27;
  v10 = assetCopy;
  v23 = v10;
  v11 = managedObjectContext;
  v24 = v11;
  v26 = &v33;
  [v11 performBlockAndWait:&v19];
  if (v28[5])
  {
    photoLibrary2 = [v10 photoLibrary];
    v13 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary2];

    v14 = [self queryForPersonsWithObjectIDs:v28[5] options:v13];
    [v14 setGraphSubject:v10];
    [v14 setGraphQueryType:8];
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      uuid = [v10 uuid];
      v17 = v34[5];
      *buf = 136315650;
      v40 = "+[PHGraphQuery graphQueryForPersonsForAsset:options:]";
      v41 = 2112;
      v42 = uuid;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to fetch persons for asset %@ with error: %@", buf, 0x20u);
    }

    v14 = 0;
    v13 = optionsCopy;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v14;
}

void __53__PHGraphQuery_graphQueryForPersonsForAsset_options___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE7F8];
  v3 = [*(a1 + 32) objectID];
  v4 = *(a1 + 40);
  v17 = 0;
  v5 = [v2 fetchPersonIDsHavingAssetPersonEdgesToAssetID:v3 inManagedObjectContext:v4 error:&v17];
  v6 = v17;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(*(*(a1 + 48) + 8) + 40);
  v10 = *(*(a1 + 56) + 8);
  v13 = *(v10 + 40);
  v11 = (v10 + 40);
  v12 = v13;
  v14 = v6;
  v15 = v14;
  if (!v9)
  {
    v16 = v14;
    v12 = v15;
  }

  objc_storeStrong(v11, v12);
}

+ (id)graphQueryForAssetsForPerson:(id)person options:(id)options
{
  v45 = *MEMORY[0x1E69E9840];
  personCopy = person;
  optionsCopy = options;
  photoLibrary = [personCopy photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__44252;
  v37 = __Block_byref_object_dispose__44253;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__44252;
  v31 = __Block_byref_object_dispose__44253;
  v32 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __53__PHGraphQuery_graphQueryForAssetsForPerson_options___block_invoke;
  v22 = &unk_1E75A9D58;
  v25 = &v27;
  v10 = personCopy;
  v23 = v10;
  v11 = managedObjectContext;
  v24 = v11;
  v26 = &v33;
  [v11 performBlockAndWait:&v19];
  if (v28[5])
  {
    photoLibrary2 = [v10 photoLibrary];
    v13 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary2];

    v14 = [self queryForVisibleAssetsWithObjectIDs:v28[5] options:v13];
    [v14 setGraphSubject:v10];
    [v14 setGraphQueryType:7];
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      uuid = [v10 uuid];
      v17 = v34[5];
      *buf = 136315650;
      v40 = "+[PHGraphQuery graphQueryForAssetsForPerson:options:]";
      v41 = 2112;
      v42 = uuid;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to fetch assets for person %@ with error: %@", buf, 0x20u);
    }

    v14 = 0;
    v13 = optionsCopy;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v14;
}

void __53__PHGraphQuery_graphQueryForAssetsForPerson_options___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE7F8];
  v3 = [*(a1 + 32) objectID];
  v4 = *(a1 + 40);
  v17 = 0;
  v5 = [v2 fetchAssetIDsHavingAssetPersonEdgesToPersonID:v3 inManagedObjectContext:v4 error:&v17];
  v6 = v17;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(*(*(a1 + 48) + 8) + 40);
  v10 = *(*(a1 + 56) + 8);
  v13 = *(v10 + 40);
  v11 = (v10 + 40);
  v12 = v13;
  v14 = v6;
  v15 = v14;
  if (!v9)
  {
    v16 = v14;
    v12 = v15;
  }

  objc_storeStrong(v11, v12);
}

+ (id)graphQueryForKeyAssetForSocialGroup:(id)group createIfNeeded:(BOOL)needed options:(id)options
{
  neededCopy = needed;
  v39[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  optionsCopy = options;
  keyAssetID = [groupCopy keyAssetID];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (keyAssetID)
  {
    photoLibrary = [optionsCopy photoLibrary];
    managedObjectContext = [photoLibrary managedObjectContext];
    v14 = managedObjectContext == 0;

    if (v14)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHGraphQuery.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"options.photoLibrary.managedObjectContext"}];
    }

    photoLibrary2 = [optionsCopy photoLibrary];
    managedObjectContext2 = [photoLibrary2 managedObjectContext];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __75__PHGraphQuery_graphQueryForKeyAssetForSocialGroup_createIfNeeded_options___block_invoke;
    v31[3] = &unk_1E75AA3F8;
    v32 = optionsCopy;
    v33 = keyAssetID;
    v34 = &v35;
    [managedObjectContext2 performBlockAndWait:v31];
  }

  if (_os_feature_enabled_impl())
  {
    if (((keyAssetID != 0) & v36[3]) == 0 && neededCopy)
    {
      exclusiveAssetIDs = [groupCopy exclusiveAssetIDs];
      v18 = [exclusiveAssetIDs count] == 0;

      if (!v18)
      {
        photoLibrary3 = [optionsCopy photoLibrary];
        photoAnalysisClient = [photoLibrary3 photoAnalysisClient];

        v21 = [objc_alloc(MEMORY[0x1E69BE630]) initWithServiceProvider:photoAnalysisClient];
        v22 = MEMORY[0x1E695DFD8];
        uuid = [groupCopy uuid];
        v24 = [v22 setWithObject:uuid];
        [v21 updateKeyAssetOfSocialGroupsWithUUIDs:v24 operationID:&stru_1F0FC60C8 reply:&__block_literal_global_100];
      }
    }
  }

  if (keyAssetID)
  {
    v39[0] = keyAssetID;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  photoLibrary4 = [groupCopy photoLibrary];
  v27 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary4];

  v28 = [self queryForVisibleAssetsWithObjectIDs:v25 options:v27];
  [v28 setGraphSubject:groupCopy];
  [v28 setGraphQueryType:4];

  _Block_object_dispose(&v35, 8);

  return v28;
}

void __75__PHGraphQuery_graphQueryForKeyAssetForSocialGroup_createIfNeeded_options___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) photoLibrary];
  v3 = [v2 managedObjectContext];
  v4 = *(a1 + 40);
  v8 = 0;
  v5 = [v3 existingObjectWithID:v4 error:&v8];
  v6 = v8;

  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v5 isVisibleForSocialGroupKeyAssetFetch];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_ERROR, "Error getting social group key asset from assetID: %@", buf, 0xCu);
    }
  }
}

void __75__PHGraphQuery_graphQueryForKeyAssetForSocialGroup_createIfNeeded_options___block_invoke_97(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_ERROR, "Error updating key asset for social group: %@", &v4, 0xCu);
    }
  }
}

+ (id)graphQueryForInclusiveAssetsForSocialGroup:(id)group options:(id)options
{
  optionsCopy = options;
  groupCopy = group;
  inclusiveAssetIDs = [groupCopy inclusiveAssetIDs];
  photoLibrary = [groupCopy photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  allObjects = [inclusiveAssetIDs allObjects];
  v12 = [self queryForVisibleAssetsWithObjectIDs:allObjects options:v10];

  [v12 setGraphSubject:groupCopy];
  [v12 setGraphQueryType:5];

  return v12;
}

+ (id)graphQueryForExclusiveAssetsForSocialGroup:(id)group options:(id)options
{
  optionsCopy = options;
  groupCopy = group;
  exclusiveAssetIDs = [groupCopy exclusiveAssetIDs];
  photoLibrary = [groupCopy photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  allObjects = [exclusiveAssetIDs allObjects];
  v12 = [self queryForVisibleAssetsWithObjectIDs:allObjects options:v10];

  [v12 setGraphSubject:groupCopy];
  [v12 setGraphQueryType:6];

  return v12;
}

+ (id)graphQueryForPersonsInSocialGroup:(id)group options:(id)options
{
  optionsCopy = options;
  groupCopy = group;
  memberPersonIDs = [groupCopy memberPersonIDs];
  photoLibrary = [groupCopy photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:optionsCopy photoLibrary:photoLibrary];

  allObjects = [memberPersonIDs allObjects];
  v12 = [self queryForPersonsWithObjectIDs:allObjects options:v10];

  [v12 setGraphSubject:groupCopy];
  [v12 setGraphQueryType:3];

  return v12;
}

+ (id)queryForSocialGroupsWithUUIDs:(id)ds options:(id)options
{
  dsCopy = ds;
  optionsCopy = options;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__44252;
  v25 = __Block_byref_object_dispose__44253;
  v26 = 0;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
  photoLibrary = [v7 photoLibrary];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__PHGraphQuery_queryForSocialGroupsWithUUIDs_options___block_invoke;
  v18 = &unk_1E75AADC0;
  v9 = photoLibrary;
  v19 = v9;
  v20 = &v21;
  [v9 performBlockAndWait:&v15];
  v10 = v22[5];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K IN %@", @"primaryLabel", v10, @"uuid", dsCopy, v15, v16, v17, v18];
    v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:0];
    v13 = [PHQuery queryForType:@"PHSocialGroup" withBasePredicate:v11 inLibrary:v12];

    [v13 setFetchOptions:optionsCopy];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __54__PHGraphQuery_queryForSocialGroupsWithUUIDs_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v7 = [v2 pl_graphCache];

  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [v7 objectIDForLabelWithCode:1000 inContext:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)graphQueryForSocialGroupsWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [self _graphBasePredicateWithLabelCode:1000 options:optionsCopy];
  sortDescriptors = [optionsCopy sortDescriptors];
  v7 = [sortDescriptors _pl_firstObjectPassingTest:&__block_literal_global_44307];

  photoLibrary = [optionsCopy photoLibrary];
  if (v7)
  {
    v9 = [self _graphFetchSocialGroupsObjectIDsSortedWithOptions:optionsCopy library:photoLibrary];

    photoLibrary2 = [optionsCopy photoLibrary];
    v11 = [self queryForType:@"PHSocialGroup" withBasePredicate:v5 seedOIDs:v9 inLibrary:photoLibrary2];

    [v11 setGraphQueryType:2];
  }

  else
  {
    v11 = [self queryForType:@"PHSocialGroup" withBasePredicate:v5 inLibrary:photoLibrary];

    [v11 setGraphQueryType:1];
  }

  [v11 setFetchOptions:optionsCopy];
  [v11 setGraphSubject:0];

  return v11;
}

BOOL __53__PHGraphQuery_graphQueryForSocialGroupsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 key];
  v3 = [PHSocialGroup nodeValueNameCodeFromPropertyName:v2];

  return v3 != 0;
}

+ (id)_graphBasePredicateWithLabelCode:(int)code options:(id)options
{
  v4 = *&code;
  v14[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %u", @"primaryLabelCode", v4];
  if ([optionsCopy socialGroupContext])
  {
    v7 = v6;
    if ([optionsCopy socialGroupContext] != 1)
    {
      goto LABEL_6;
    }

    v8 = MEMORY[0x1E696AB28];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $v, $v.%K == %d AND $v.%K == %d).@count > 0", @"values", @"nameCode", 2000, @"integerValue", 1, v6];
    v13[1] = v9;
    v10 = v13;
  }

  else
  {
    v8 = MEMORY[0x1E696AB28];
    v14[0] = v6;
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $v, $v.%K == %d AND $v.%K > %d).@count > 0", @"values", @"nameCode", 2000, @"integerValue", 0];
    v14[1] = v9;
    v10 = v14;
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v8 andPredicateWithSubpredicates:v11];

LABEL_6:

  return v7;
}

@end