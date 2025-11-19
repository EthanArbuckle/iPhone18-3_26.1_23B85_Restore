@interface PHCollection
+ (PHFetchResult)fetchCollectionsInCollectionList:(PHCollectionList *)collectionList options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchTopLevelUserCollectionsWithOptions:(PHFetchOptions *)options;
+ (id)entityKeyMap;
+ (id)fetchFilteredAssetCollections:(id)a3 containingAssetsMatchingPredicate:(id)a4;
+ (id)fetchMomentsForAssetsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)fetchMomentsForAssetsWithOIDs:(id)a3 options:(id)a4;
+ (id)fetchMomentsForFacesWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)fetchMomentsForPersonsWithLocalIdentifiers:(id)a3 options:(id)a4;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
- (BOOL)hasLocalizedTitle;
- (BOOL)isDeleted;
- (PHCollection)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)description;
- (unint64_t)ancestryIndexOfCollectionList:(id)a3 context:(id)a4;
@end

@implementation PHCollection

- (id)description
{
  v8.receiver = self;
  v8.super_class = PHCollection;
  v3 = [(PHObject *)&v8 description];
  v4 = [(PHCollection *)self localizedTitle];
  v5 = [(PHCollection *)self localizedSubtitle];
  v6 = [v3 stringByAppendingFormat:@", title:%@, subtitle:%@", v4, v5];

  return v6;
}

- (unint64_t)ancestryIndexOfCollectionList:(id)a3 context:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 == self)
  {
    v11 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = [(PHCollection *)self parentFolderID];
    v10 = [v7 folderForID:v9];

    if (v10)
    {
      v11 = 1;
      while (1)
      {
        v12 = [v10 objectID];
        v13 = [v8 containsObject:v12];

        if (v13)
        {
          break;
        }

        v14 = [v10 objectID];
        [v8 addObject:v14];

        if ([(PHObject *)v6 isEqual:v10])
        {
          goto LABEL_14;
        }

        v15 = [v10 parentFolderID];
        v16 = [v7 folderForID:v15];

        ++v11;
        v10 = v16;
        if (!v16)
        {
          goto LABEL_13;
        }
      }

      v17 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v10 objectID];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "Cycle detected in PHCollectionList hierarchy for %@", &v20, 0xCu);
      }

LABEL_13:
      v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v11;
}

- (BOOL)isDeleted
{
  v5.receiver = self;
  v5.super_class = PHCollection;
  return [(PHObject *)&v5 isDeleted]|| self->_trashed;
}

- (BOOL)hasLocalizedTitle
{
  v2 = [(PHCollection *)self localizedTitle];
  v3 = [v2 length] != 0;

  return v3;
}

- (PHCollection)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = PHCollection;
  v9 = [(PHObject *)&v14 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"customSortAscending"];
    v9->_customSortAscending = [v10 BOOLValue];

    v11 = [v8 objectForKeyedSubscript:@"customSortKey"];
    v9->_customSortKey = [v11 unsignedIntegerValue];

    v12 = [v8 objectForKeyedSubscript:@"trashedState"];
    v9->_trashed = [v12 intValue] != 0;
  }

  return v9;
}

+ (id)fetchFilteredAssetCollections:(id)a3 containingAssetsMatchingPredicate:(id)a4
{
  v70[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v41 = v6;
    v7 = [v5 firstObject];
    v42 = [v7 photoLibrary];
    v43 = [PHQuery queryForAssetsInAssetCollection:v7 options:0];
    v8 = [v43 containerRelationship];
    v9 = [v8 name];
    if (v8 && ([v8 isToMany] & 1) == 0)
    {
      v39 = [v5 fetchedObjectIDs];
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"noindex:(%@) IN (%%@)", v9];
      v37 = [MEMORY[0x1E696AE18] predicateWithFormat:v38, v39];
      v11 = MEMORY[0x1E695D5E0];
      v12 = [MEMORY[0x1E69BE540] entityName];
      v13 = [v11 fetchRequestWithEntityName:v12];

      [v13 setResultType:2];
      v14 = MEMORY[0x1E696AB28];
      v70[0] = v6;
      v70[1] = v37;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
      v16 = [v14 andPredicateWithSubpredicates:v15];
      [v13 setPredicate:v16];

      [v13 setSortDescriptors:MEMORY[0x1E695E0F0]];
      v69 = v9;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
      [v13 setPropertiesToGroupBy:v17];

      v40 = objc_alloc_init(MEMORY[0x1E695D5C8]);
      [v40 setName:v9];
      v18 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v9];
      [v40 setExpression:v18];

      [v40 setExpressionResultType:2000];
      v68 = v40;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      [v13 setPropertiesToFetch:v19];

      v59 = 0;
      v60 = &v59;
      v61 = 0x3032000000;
      v62 = __Block_byref_object_copy__44481;
      v63 = __Block_byref_object_dispose__44482;
      v64 = 0;
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy__44481;
      v57 = __Block_byref_object_dispose__44482;
      v58 = 0;
      v20 = [v42 photoLibraryForCurrentQueueQoS];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __80__PHCollection_fetchFilteredAssetCollections_containingAssetsMatchingPredicate___block_invoke;
      v48[3] = &unk_1E75A9D58;
      v51 = &v59;
      v21 = v20;
      v49 = v21;
      v22 = v13;
      v50 = v22;
      v52 = &v53;
      [v21 performBlockAndWait:v48];
      v35 = v22;
      v36 = v21;
      if (v60[5])
      {
        v23 = objc_alloc(MEMORY[0x1E695DF70]);
        v24 = [v23 initWithCapacity:{objc_msgSend(v60[5], "count")}];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v25 = v60[5];
        v26 = [v25 countByEnumeratingWithState:&v44 objects:v65 count:16];
        if (v26)
        {
          v27 = *v45;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v45 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = [*(*(&v44 + 1) + 8 * i) valueAtIndex:0];
              [v24 addObject:v29];
            }

            v26 = [v25 countByEnumeratingWithState:&v44 objects:v65 count:16];
          }

          while (v26);
        }

        v30 = [PHManualFetchResult alloc];
        v31 = [v5 fetchType];
        v32 = [v5 fetchPropertySets];
        v10 = [(PHManualFetchResult *)v30 initWithOids:v24 photoLibrary:v42 fetchType:v31 fetchPropertySets:v32 identifier:0 registerIfNeeded:0];
      }

      else
      {
        v24 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v33 = v54[5];
          *buf = 138412290;
          v67 = v33;
          _os_log_impl(&dword_19C86F000, v24, OS_LOG_TYPE_ERROR, "Error fetching filtered asset collections:%@", buf, 0xCu);
        }

        v10 = 0;
      }

      _Block_object_dispose(&v53, 8);
      _Block_object_dispose(&v59, 8);
    }

    else
    {
      v10 = 0;
    }

    v6 = v41;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

void __80__PHCollection_fetchFilteredAssetCollections_containingAssetsMatchingPredicate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)fetchMomentsForPersonsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 chunkSizeForFetch])
  {
    if (v6)
    {
      v7 = [v6 copy];

      v6 = v7;
    }

    else
    {
      v6 = objc_opt_new();
    }

    [v6 setChunkSizeForFetch:2000];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PHCollection_fetchMomentsForPersonsWithLocalIdentifiers_options___block_invoke;
  v11[3] = &unk_1E75AB0E0;
  v12 = v5;
  v8 = v5;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:v11];

  return v9;
}

id __67__PHCollection_fetchMomentsForPersonsWithLocalIdentifiers_options___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [PHQuery queryForMomentsForPersonsWithLocalIdentifiers:v2 options:v3];
  [v4 setFetchOptions:v3];

  v5 = [v4 executeQuery];

  return v5;
}

+ (id)fetchMomentsForFacesWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 chunkSizeForFetch])
  {
    if (v6)
    {
      v7 = [v6 copy];

      v6 = v7;
    }

    else
    {
      v6 = objc_opt_new();
    }

    [v6 setChunkSizeForFetch:2000];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PHCollection_fetchMomentsForFacesWithLocalIdentifiers_options___block_invoke;
  v11[3] = &unk_1E75AB0E0;
  v12 = v5;
  v8 = v5;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:v11];

  return v9;
}

id __65__PHCollection_fetchMomentsForFacesWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForMomentsForFacesWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchMomentsForAssetsWithOIDs:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 chunkSizeForFetch])
  {
    if (v6)
    {
      v7 = [v6 copy];

      v6 = v7;
    }

    else
    {
      v6 = objc_opt_new();
    }

    [v6 setChunkSizeForFetch:2000];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__PHCollection_fetchMomentsForAssetsWithOIDs_options___block_invoke;
  v11[3] = &unk_1E75AB0E0;
  v12 = v5;
  v8 = v5;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:v11];

  return v9;
}

id __54__PHCollection_fetchMomentsForAssetsWithOIDs_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForMomentsContainingAssetsWithOIDs:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchMomentsForAssetsWithLocalIdentifiers:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 chunkSizeForFetch])
  {
    if (v6)
    {
      v7 = [v6 copy];

      v6 = v7;
    }

    else
    {
      v6 = objc_opt_new();
    }

    [v6 setChunkSizeForFetch:2000];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PHCollection_fetchMomentsForAssetsWithLocalIdentifiers_options___block_invoke;
  v11[3] = &unk_1E75AB0E0;
  v12 = v5;
  v8 = v5;
  v9 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:v11];

  return v9;
}

id __66__PHCollection_fetchMomentsForAssetsWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForMomentsContainingAssetsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchTopLevelUserCollectionsWithOptions:(PHFetchOptions *)options
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = options;
  if (v3)
  {
    v4 = v3;
    v5 = [(PHFetchOptions *)v3 copy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = [v5 sortDescriptors];
  if (v6)
  {
  }

  else
  {
    v7 = [v5 internalSortDescriptors];

    if (!v7)
    {
      v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"parentFolder" ascending:1];
      v12[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [v5 setInternalSortDescriptors:v9];
    }
  }

  v10 = [PHObject authorizationAwareFetchResultWithOptions:v5 fetchBlock:&__block_literal_global_44498];

  return v10;
}

id __56__PHCollection_fetchTopLevelUserCollectionsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForTopLevelUserCollectionsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchCollectionsInCollectionList:(PHCollectionList *)collectionList options:(PHFetchOptions *)options
{
  v5 = collectionList;
  v6 = options;
  if (v5)
  {
    if (![(PHObject *)v5 isTransient])
    {
      goto LABEL_8;
    }

    v7 = [(PHCollectionList *)v5 transientIdentifier];
    v8 = [(PHCollectionList *)v5 query];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 executeQuery];
    }

    else
    {
      v11 = [(PHCollectionList *)v5 collections];
      v12 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v6 object:v5];
      v13 = [PHManualFetchResult alloc];
      v14 = [(PHFetchOptions *)v6 fetchPropertySetsAsSet];
      v10 = [(PHManualFetchResult *)v13 initWithObjects:v11 photoLibrary:v12 fetchType:@"PHCollectionList" fetchPropertySets:v14 identifier:v7 registerIfNeeded:1];
    }

    if (!v10)
    {
LABEL_8:
      if (!v6)
      {
        v6 = [PHFetchOptions fetchOptionsWithPhotoLibrary:0 orObject:v5];
      }

      v15 = [(PHFetchOptions *)v6 photoLibrary];

      if (!v15)
      {
        v16 = [(PHObject *)v5 photoLibrary];
        [(PHFetchOptions *)v6 setPhotoLibrary:v16];
      }

      v17 = [PHQuery queryForCollectionsInCollectionList:v5 options:v6];
      v10 = [v17 executeQuery];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PHCollection_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_44502 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_44502, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_44503 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __52__PHCollection_transformValueExpression_forKeyPath___block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"title";
  v4[1] = @"localizedTitle";
  v4[2] = @"startDate";
  v4[3] = @"endDate";
  v4[4] = @"modificationDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_44503;
  transformValueExpression_forKeyPath___passThroughSet_44503 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_44521;

  return v2;
}

void __28__PHCollection_entityKeyMap__block_invoke()
{
  v13[4] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v11 = @"uuid";
  v12[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v13[0] = v1;
  v12[1] = @"title";
  v10[0] = @"localizedTitle";
  v10[1] = @"title";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v13[1] = v2;
  v12[2] = @"startDate";
  v9 = @"startDate";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v13[2] = v3;
  v12[3] = @"endDate";
  v8 = @"endDate";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v13[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v6 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v5];
  v7 = entityKeyMap_pl_once_object_15_44521;
  entityKeyMap_pl_once_object_15_44521 = v6;
}

@end