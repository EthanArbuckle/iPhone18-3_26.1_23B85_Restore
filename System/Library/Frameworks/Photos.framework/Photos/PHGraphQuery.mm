@interface PHGraphQuery
+ (BOOL)_shouldExcludeSocialGroupWithVerifiedType:(signed __int16)a3 inSocialGroupContext:(int64_t)a4;
+ (id)_graphBasePredicateWithLabelCode:(int)a3 options:(id)a4;
+ (id)_graphFetchSocialGroupsObjectIDsSortedWithOptions:(id)a3 library:(id)a4;
+ (id)_nodeTableFromSocialGroupNodeValues:(id)a3 socialGroupContext:(int64_t)a4;
+ (id)graphQueryForAssetsForPerson:(id)a3 options:(id)a4;
+ (id)graphQueryForExclusiveAssetsForSocialGroup:(id)a3 options:(id)a4;
+ (id)graphQueryForInclusiveAssetsForSocialGroup:(id)a3 options:(id)a4;
+ (id)graphQueryForKeyAssetForSocialGroup:(id)a3 createIfNeeded:(BOOL)a4 options:(id)a5;
+ (id)graphQueryForPersonsForAsset:(id)a3 options:(id)a4;
+ (id)graphQueryForPersonsInSocialGroup:(id)a3 options:(id)a4;
+ (id)graphQueryForSocialGroupsWithOptions:(id)a3;
+ (id)queryForSearchEntitiesWithOptions:(id)a3;
+ (id)queryForSocialGroupsWithUUIDs:(id)a3 options:(id)a4;
- (BOOL)_graphQueryIntersectsWithChange:(id)a3;
- (id)_graphRefetchSocialGroup;
- (id)changeHandlingContainerIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)executeQuery;
- (id)extraBatchFetchingArrayOptions;
- (id)updatedQueryWithChange:(id)a3;
- (unint64_t)possibleChangesForChange:(id)a3;
@end

@implementation PHGraphQuery

- (id)extraBatchFetchingArrayOptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PHGraphQuery *)self graphQueryType];
  if (v3 > 8)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = [(PHGraphQuery *)self graphQueryType];
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Unknown graph query type: %ld", &v7, 0xCu);
    }

    goto LABEL_3;
  }

  if (v3 != 2)
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

- (BOOL)_graphQueryIntersectsWithChange:(id)a3
{
  v4 = a3;
  if (([(PHGraphQuery *)self graphQueryType]- 1) > 1)
  {
    v6 = [v4 updatedObjectIDs];
    v7 = [(PHGraphQuery *)self graphSubject];
    v8 = [v7 objectID];
    v9 = [v6 containsObject:v8];

    if (v9)
    {
      v10 = [(PHGraphQuery *)self graphQueryType];
      if (v10 > 6)
      {
        if ((v10 - 7) < 2)
        {
          v16 = [MEMORY[0x1E69BE468] entityName];
          v17 = [v4 containsChangesForEntityWithManagedEntityName:v16];

          if (v17)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        if ((v10 - 5) < 2)
        {
          v11 = [(PHGraphQuery *)self graphSubject];
          v12 = [v11 objectID];
          v13 = [v4 changedPropertyNamesForObjectID:v12 entityClass:objc_opt_class()];
          v14 = v13;
          v15 = @"inclusiveAssetIDs";
        }

        else if (v10 == 3)
        {
          v11 = [(PHGraphQuery *)self graphSubject];
          v12 = [v11 objectID];
          v13 = [v4 changedPropertyNamesForObjectID:v12 entityClass:objc_opt_class()];
          v14 = v13;
          v15 = @"memberPersonIDs";
        }

        else
        {
          if (v10 != 4)
          {
            goto LABEL_11;
          }

          v11 = [(PHGraphQuery *)self graphSubject];
          v12 = [v11 objectID];
          v13 = [v4 changedPropertyNamesForObjectID:v12 entityClass:objc_opt_class()];
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

  v5 = [v4 containsChangesForEntityClass:objc_opt_class()];
LABEL_16:

  return v5;
}

- (id)_graphRefetchSocialGroup
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = self->_graphSubject;
  v3 = [(PHObject *)v2 photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  [v4 setSocialGroupContext:2];
  v5 = [(PHObject *)v2 localIdentifier];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [PHSocialGroup fetchSocialGroupsWithLocalIdentifiers:v6 options:v4];

  v8 = [v7 firstObject];

  return v8;
}

- (id)changeHandlingContainerIdentifier
{
  v2 = [(PHGraphQuery *)self graphSubject];
  v3 = [v2 objectID];

  return v3;
}

- (id)executeQuery
{
  v2 = self;
  v3 = [(PHGraphQuery *)self graphQueryType];
  if (v3 <= 8)
  {
    if (v3 == 2)
    {
      v5 = [(PHFetchResult *)v2 fetchOptions];
      v6 = [v5 fetchPropertySets];
      if ([v6 count])
      {
        v7 = MEMORY[0x1E695DFD8];
        v8 = [(PHFetchResult *)v2 fetchOptions];
        v9 = [v8 fetchPropertySets];
        v10 = [v7 setWithArray:v9];
      }

      else
      {
        v10 = 0;
      }

      v11 = [PHManualFetchResult alloc];
      v12 = [(PHManualFetchResult *)v2 seedOIDs];
      v13 = [(PHFetchResult *)v2 fetchOptions];
      v14 = [v13 photoLibrary];
      v15 = [(PHManualFetchResult *)v2 description];
      v16 = [(PHFetchResult *)v2 fetchOptions];
      v17 = [v16 fetchLimit];

      v18 = 200;
      if (v17 < 0xC8)
      {
        v18 = v17;
      }

      v2 = [(PHManualFetchResult *)v11 initWithOids:v12 photoLibrary:v14 fetchType:@"PHSocialGroup" fetchPropertySets:v10 identifier:v15 registerIfNeeded:1 graphQuery:v2 batchSize:v18];
    }

    else
    {
      v19.receiver = v2;
      v19.super_class = PHGraphQuery;
      v2 = [(PHQuery *)&v19 executeQuery];
    }
  }

  return v2;
}

- (unint64_t)possibleChangesForChange:(id)a3
{
  if ([(PHGraphQuery *)self _graphQueryIntersectsWithChange:a3])
  {
    return 15;
  }

  else
  {
    return 0;
  }
}

- (id)updatedQueryWithChange:(id)a3
{
  if (![(PHGraphQuery *)self _graphQueryIntersectsWithChange:a3])
  {
    goto LABEL_21;
  }

  v4 = [(PHGraphQuery *)self graphQueryType];
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v14 = objc_opt_class();
        v6 = [(PHGraphQuery *)self _graphRefetchSocialGroup];
        v7 = [(PHQuery *)self fetchOptions];
        [v14 graphQueryForInclusiveAssetsForSocialGroup:v6 options:v7];
      }

      else
      {
        v9 = objc_opt_class();
        v6 = [(PHGraphQuery *)self _graphRefetchSocialGroup];
        v7 = [(PHQuery *)self fetchOptions];
        [v9 graphQueryForExclusiveAssetsForSocialGroup:v6 options:v7];
      }
      v8 = ;
      goto LABEL_19;
    }

    if (v4 == 7)
    {
      v15 = objc_opt_class();
      graphSubject = self->_graphSubject;
      v6 = [(PHQuery *)self fetchOptions];
      v12 = [v15 graphQueryForAssetsForPerson:graphSubject options:v6];
    }

    else
    {
      if (v4 != 8)
      {
        goto LABEL_21;
      }

      v10 = objc_opt_class();
      v11 = self->_graphSubject;
      v6 = [(PHQuery *)self fetchOptions];
      v12 = [v10 graphQueryForPersonsForAsset:v11 options:v6];
    }

LABEL_17:
    v17 = v12;
    goto LABEL_20;
  }

  if ((v4 - 1) < 2)
  {
    v13 = objc_opt_class();
    v6 = [(PHQuery *)self fetchOptions];
    v12 = [v13 graphQueryForSocialGroupsWithOptions:v6];
    goto LABEL_17;
  }

  if (v4 == 3)
  {
    v18 = objc_opt_class();
    v6 = [(PHGraphQuery *)self _graphRefetchSocialGroup];
    v7 = [(PHQuery *)self fetchOptions];
    v8 = [v18 graphQueryForPersonsInSocialGroup:v6 options:v7];
    goto LABEL_19;
  }

  if (v4 == 4)
  {
    v5 = objc_opt_class();
    v6 = [(PHGraphQuery *)self _graphRefetchSocialGroup];
    v7 = [(PHQuery *)self fetchOptions];
    v8 = [v5 graphQueryForKeyAssetForSocialGroup:v6 createIfNeeded:0 options:v7];
LABEL_19:
    v17 = v8;

LABEL_20:
    if (v17)
    {
      goto LABEL_22;
    }
  }

LABEL_21:
  v17 = self;
LABEL_22:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = PHGraphQuery;
  v4 = [(PHQuery *)&v8 copyWithZone:a3];
  v5 = [(PHGraphQuery *)self graphSubject];
  v6 = [v5 copy];
  [v4 setGraphSubject:v6];

  [v4 setGraphQueryType:{-[PHGraphQuery graphQueryType](self, "graphQueryType")}];
  return v4;
}

- (id)description
{
  v3 = [(PHGraphQuery *)self graphQueryType];
  if (v3 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E75A9B98[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(PHGraphQuery *)self graphSubject];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(PHGraphQuery *)self graphSubject];
  v10 = [v9 uuid];
  v11 = [v5 stringWithFormat:@"PHGraphQuery(type=%@, subject=(%@ uuid=%@))", v4, v8, v10];

  return v11;
}

+ (id)_nodeTableFromSocialGroupNodeValues:(id)a3 socialGroupContext:(int64_t)a4
{
  v23 = a1;
  v24 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v28 = [MEMORY[0x1E695DFA8] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
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
        v8 = [v7 objectForKeyedSubscript:{@"node", v23, v24}];
        v9 = [v5 objectForKeyedSubscript:v8];
        v10 = [v7 objectForKeyedSubscript:@"nameCode"];
        v11 = [v10 unsignedIntValue];
        v12 = [PHSocialGroup propertyNameFromNodeValueNameCode:v11];
        v13 = [PHSocialGroup nodeValueAcessorNameForNameCode:v11];
        v14 = [v7 objectForKeyedSubscript:v13];
        v15 = v14;
        if (v11 == 2000 && [v23 _shouldExcludeSocialGroupWithVerifiedType:objc_msgSend(v14 inSocialGroupContext:{"intValue"), v24}])
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

          [v5 setObject:v9 forKeyedSubscript:v8];

          if (v9)
          {
LABEL_10:
            if ([v28 containsObject:v8])
            {
              v16 = v5;
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

  return v5;
}

+ (BOOL)_shouldExcludeSocialGroupWithVerifiedType:(signed __int16)a3 inSocialGroupContext:(int64_t)a4
{
  v4 = (a3 + 1) < 2;
  if (a4)
  {
    v4 = 0;
  }

  if (a4 == 1)
  {
    return a3 != 1;
  }

  else
  {
    return v4;
  }
}

+ (id)_graphFetchSocialGroupsObjectIDsSortedWithOptions:(id)a3 library:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PHGraphQuery.m" lineNumber:454 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v9 = [v7 sortDescriptors];
  v10 = [v8 photoLibraryForCurrentQueueQoS];
  v11 = [v10 managedObjectContext];
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
  v12 = v9;
  v24 = v12;
  v13 = v11;
  v25 = v13;
  v28 = a1;
  v14 = v7;
  v26 = v14;
  v27 = &v29;
  [v10 performBlockAndWait:v23];
  v15 = v30[5];
  if ([v14 fetchLimit])
  {
    v16 = v30[5];
    v17 = [v14 fetchLimit];
    v18 = [v30[5] count];
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
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

+ (id)queryForSearchEntitiesWithOptions:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"%K == %u", @"primaryLabelCode", 1100];
  v6 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v4 object:0];
  v7 = [PHQuery queryForType:@"PHSearchEntity" withBasePredicate:v5 inLibrary:v6];

  [v7 setFetchOptions:v4];

  return v7;
}

+ (id)graphQueryForPersonsForAsset:(id)a3 options:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 photoLibrary];
  v9 = [v8 managedObjectContext];

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
  v10 = v6;
  v23 = v10;
  v11 = v9;
  v24 = v11;
  v26 = &v33;
  [v11 performBlockAndWait:&v19];
  if (v28[5])
  {
    v12 = [v10 photoLibrary];
    v13 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v12];

    v14 = [a1 queryForPersonsWithObjectIDs:v28[5] options:v13];
    [v14 setGraphSubject:v10];
    [v14 setGraphQueryType:8];
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v10 uuid];
      v17 = v34[5];
      *buf = 136315650;
      v40 = "+[PHGraphQuery graphQueryForPersonsForAsset:options:]";
      v41 = 2112;
      v42 = v16;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to fetch persons for asset %@ with error: %@", buf, 0x20u);
    }

    v14 = 0;
    v13 = v7;
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

+ (id)graphQueryForAssetsForPerson:(id)a3 options:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 photoLibrary];
  v9 = [v8 managedObjectContext];

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
  v10 = v6;
  v23 = v10;
  v11 = v9;
  v24 = v11;
  v26 = &v33;
  [v11 performBlockAndWait:&v19];
  if (v28[5])
  {
    v12 = [v10 photoLibrary];
    v13 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v7 photoLibrary:v12];

    v14 = [a1 queryForVisibleAssetsWithObjectIDs:v28[5] options:v13];
    [v14 setGraphSubject:v10];
    [v14 setGraphQueryType:7];
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v10 uuid];
      v17 = v34[5];
      *buf = 136315650;
      v40 = "+[PHGraphQuery graphQueryForAssetsForPerson:options:]";
      v41 = 2112;
      v42 = v16;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "%s: Failed to fetch assets for person %@ with error: %@", buf, 0x20u);
    }

    v14 = 0;
    v13 = v7;
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

+ (id)graphQueryForKeyAssetForSocialGroup:(id)a3 createIfNeeded:(BOOL)a4 options:(id)a5
{
  v6 = a4;
  v39[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [v9 keyAssetID];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (v11)
  {
    v12 = [v10 photoLibrary];
    v13 = [v12 managedObjectContext];
    v14 = v13 == 0;

    if (v14)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:a2 object:a1 file:@"PHGraphQuery.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"options.photoLibrary.managedObjectContext"}];
    }

    v15 = [v10 photoLibrary];
    v16 = [v15 managedObjectContext];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __75__PHGraphQuery_graphQueryForKeyAssetForSocialGroup_createIfNeeded_options___block_invoke;
    v31[3] = &unk_1E75AA3F8;
    v32 = v10;
    v33 = v11;
    v34 = &v35;
    [v16 performBlockAndWait:v31];
  }

  if (_os_feature_enabled_impl())
  {
    if (((v11 != 0) & v36[3]) == 0 && v6)
    {
      v17 = [v9 exclusiveAssetIDs];
      v18 = [v17 count] == 0;

      if (!v18)
      {
        v19 = [v10 photoLibrary];
        v20 = [v19 photoAnalysisClient];

        v21 = [objc_alloc(MEMORY[0x1E69BE630]) initWithServiceProvider:v20];
        v22 = MEMORY[0x1E695DFD8];
        v23 = [v9 uuid];
        v24 = [v22 setWithObject:v23];
        [v21 updateKeyAssetOfSocialGroupsWithUUIDs:v24 operationID:&stru_1F0FC60C8 reply:&__block_literal_global_100];
      }
    }
  }

  if (v11)
  {
    v39[0] = v11;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  v26 = [v9 photoLibrary];
  v27 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v10 photoLibrary:v26];

  v28 = [a1 queryForVisibleAssetsWithObjectIDs:v25 options:v27];
  [v28 setGraphSubject:v9];
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

+ (id)graphQueryForInclusiveAssetsForSocialGroup:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 inclusiveAssetIDs];
  v9 = [v7 photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v9];

  v11 = [v8 allObjects];
  v12 = [a1 queryForVisibleAssetsWithObjectIDs:v11 options:v10];

  [v12 setGraphSubject:v7];
  [v12 setGraphQueryType:5];

  return v12;
}

+ (id)graphQueryForExclusiveAssetsForSocialGroup:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 exclusiveAssetIDs];
  v9 = [v7 photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v9];

  v11 = [v8 allObjects];
  v12 = [a1 queryForVisibleAssetsWithObjectIDs:v11 options:v10];

  [v12 setGraphSubject:v7];
  [v12 setGraphQueryType:6];

  return v12;
}

+ (id)graphQueryForPersonsInSocialGroup:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 memberPersonIDs];
  v9 = [v7 photoLibrary];
  v10 = [PHFetchOptions fetchOptionsCopyFromNullableFetchOptions:v6 photoLibrary:v9];

  v11 = [v8 allObjects];
  v12 = [a1 queryForPersonsWithObjectIDs:v11 options:v10];

  [v12 setGraphSubject:v7];
  [v12 setGraphQueryType:3];

  return v12;
}

+ (id)queryForSocialGroupsWithUUIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__44252;
  v25 = __Block_byref_object_dispose__44253;
  v26 = 0;
  v7 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
  v8 = [v7 photoLibrary];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__PHGraphQuery_queryForSocialGroupsWithUUIDs_options___block_invoke;
  v18 = &unk_1E75AADC0;
  v9 = v8;
  v19 = v9;
  v20 = &v21;
  [v9 performBlockAndWait:&v15];
  v10 = v22[5];
  if (v10)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K IN %@", @"primaryLabel", v10, @"uuid", v5, v15, v16, v17, v18];
    v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:0];
    v13 = [PHQuery queryForType:@"PHSocialGroup" withBasePredicate:v11 inLibrary:v12];

    [v13 setFetchOptions:v6];
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

+ (id)graphQueryForSocialGroupsWithOptions:(id)a3
{
  v4 = a3;
  v5 = [a1 _graphBasePredicateWithLabelCode:1000 options:v4];
  v6 = [v4 sortDescriptors];
  v7 = [v6 _pl_firstObjectPassingTest:&__block_literal_global_44307];

  v8 = [v4 photoLibrary];
  if (v7)
  {
    v9 = [a1 _graphFetchSocialGroupsObjectIDsSortedWithOptions:v4 library:v8];

    v10 = [v4 photoLibrary];
    v11 = [a1 queryForType:@"PHSocialGroup" withBasePredicate:v5 seedOIDs:v9 inLibrary:v10];

    [v11 setGraphQueryType:2];
  }

  else
  {
    v11 = [a1 queryForType:@"PHSocialGroup" withBasePredicate:v5 inLibrary:v8];

    [v11 setGraphQueryType:1];
  }

  [v11 setFetchOptions:v4];
  [v11 setGraphSubject:0];

  return v11;
}

BOOL __53__PHGraphQuery_graphQueryForSocialGroupsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 key];
  v3 = [PHSocialGroup nodeValueNameCodeFromPropertyName:v2];

  return v3 != 0;
}

+ (id)_graphBasePredicateWithLabelCode:(int)a3 options:(id)a4
{
  v4 = *&a3;
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %u", @"primaryLabelCode", v4];
  if ([v5 socialGroupContext])
  {
    v7 = v6;
    if ([v5 socialGroupContext] != 1)
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