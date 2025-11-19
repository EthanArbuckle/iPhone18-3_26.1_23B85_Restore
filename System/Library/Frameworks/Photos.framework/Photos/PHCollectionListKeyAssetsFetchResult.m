@interface PHCollectionListKeyAssetsFetchResult
- (BOOL)isFullyBackedByObjectIDs;
- (PHCollectionListKeyAssetsFetchResult)fetchResultWithChangeHandlingValue:(id)a3;
- (PHCollectionListKeyAssetsFetchResult)initWithCollectionList:(id)a3 keyAssets:(id)a4 childCollectionsFetchResult:(id)a5 keyAssetFetchByCollectionID:(id)a6 identifier:(id)a7 options:(id)a8 registerIfNeeded:(BOOL)a9;
- (id)_fetchesByCollectionID:(id)a3 change:(id)a4;
- (id)_keyAssetsForCollectionListWithChange:(id)a3 outCollectionsFetch:(id *)a4 outKeyAssetFetchByCollectionID:(id *)a5;
- (id)changeHandlingValueUsingSeedOids:(id)a3 withChange:(id)a4 usingManagedObjectContext:(id)a5;
- (id)copyWithOptions:(id)a3;
- (id)fetchedObjectIDs;
- (id)fetchedObjectIDsSet;
- (unint64_t)possibleChangesForChange:(id)a3 propertiesFetchResult:(id)a4;
- (void)dealloc;
@end

@implementation PHCollectionListKeyAssetsFetchResult

- (PHCollectionListKeyAssetsFetchResult)fetchResultWithChangeHandlingValue:(id)a3
{
  v4 = [PHCollection fetchCollectionsInCollectionList:self->_collectionList options:self->_options];
  LOBYTE(v7) = 0;
  v5 = [[PHCollectionListKeyAssetsFetchResult alloc] initWithCollectionList:self->_collectionList keyAssets:0 childCollectionsFetchResult:v4 keyAssetFetchByCollectionID:0 identifier:0 options:self->_options registerIfNeeded:v7];

  return v5;
}

- (id)_fetchesByCollectionID:(id)a3 change:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DFA8] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      objc_opt_class();
      v12 = v11;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v14)
      {
        keyAssetFetchByCollectionID = self->_keyAssetFetchByCollectionID;
        v16 = [v14 objectID];
        v17 = [(NSDictionary *)keyAssetFetchByCollectionID objectForKeyedSubscript:v16];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = [PHAsset fetchKeyAssetsInAssetCollection:v14 options:self->_options];
        }

        v20 = v19;

        v21 = [v12 objectID];
        [v28 setObject:v20 forKey:v21];

        v22 = [v20 firstObject];

        if (v22)
        {
          v23 = [v20 firstObject];
          [v6 addObject:v23];
        }
      }

      v24 = [v6 count];
      collectionListKeyAssetLimit = self->_collectionListKeyAssetLimit;

      if (v24 >= collectionListKeyAssetLimit)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v28;
}

- (id)_keyAssetsForCollectionListWithChange:(id)a3 outCollectionsFetch:(id *)a4 outKeyAssetFetchByCollectionID:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = self->_childCollectionsFetchResult;
  v9 = [(NSDictionary *)self->_keyAssetFetchByCollectionID mutableCopy];
  v10 = [v7 changeDetailsForFetchResult:v8];
  v37 = a5;
  v34 = v10;
  v40 = self;
  if (v10)
  {
    v11 = [v10 fetchResultAfterChanges];

    v12 = [(PHCollectionListKeyAssetsFetchResult *)self _fetchesByCollectionID:v11 change:v7];

    v9 = v12;
    v8 = v11;
  }

  v13 = [MEMORY[0x1E695DFA0] orderedSet];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v8;
  v14 = [(PHFetchResult *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v39 = *v42;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v42 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v41 + 1) + 8 * v16);
      v18 = [v17 objectID];
      v19 = [v9 objectForKeyedSubscript:v18];

      v20 = [v7 changeDetailsForFetchResult:v19];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 fetchResultAfterChanges];

        v23 = [v17 objectID];
        [v9 setObject:v22 forKey:v23];

        v19 = v22;
      }

      v24 = [v17 objectID];
      v25 = [v9 objectForKeyedSubscript:v24];

      v26 = [v25 firstObject];

      if (v26)
      {
        v27 = [v25 firstObject];
        [v13 addObject:v27];
      }

      v28 = [v13 count];
      collectionListKeyAssetLimit = v40->_collectionListKeyAssetLimit;

      if (v28 >= collectionListKeyAssetLimit)
      {
        break;
      }

      if (v15 == ++v16)
      {
        v15 = [(PHFetchResult *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (a4)
  {
    v30 = obj;
    *a4 = obj;
  }

  if (v37)
  {
    v31 = v9;
    *v37 = v9;
  }

  v32 = [v13 array];

  return v32;
}

- (id)fetchedObjectIDsSet
{
  v2 = [(PHCollectionListKeyAssetsFetchResult *)self objectIDs];
  v3 = [v2 set];

  return v3;
}

- (id)fetchedObjectIDs
{
  v2 = [(PHCollectionListKeyAssetsFetchResult *)self objectIDs];
  v3 = [v2 array];

  return v3;
}

- (unint64_t)possibleChangesForChange:(id)a3 propertiesFetchResult:(id)a4
{
  v5 = a3;
  v6 = [(PHFetchResult *)self->_childCollectionsFetchResult copy];
  v7 = [(NSSet *)self->_relevantOIDSet mutableCopy];
  if (([v6 possibleChangesForChange:v5] & 7) != 0)
  {
    v8 = [PHCollection fetchCollectionsInCollectionList:self->_collectionList options:self->_options];

    v9 = [v8 fetchedObjectIDsSet];
    if (v9)
    {
      [v7 unionSet:v9];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFD8] set];
      [v7 unionSet:v10];
    }

    v6 = v8;
  }

  v11 = [v5 insertedObjectIDs];
  if ([v11 intersectsSet:v7])
  {
    goto LABEL_9;
  }

  v12 = [v5 updatedObjectIDs];
  if ([v12 intersectsSet:v7])
  {

LABEL_9:
    goto LABEL_10;
  }

  v15 = [v5 deletedObjectIDs];
  v16 = [v15 intersectsSet:v7];

  if ((v16 & 1) == 0)
  {
    v13 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v13 = 15;
LABEL_11:

  return v13;
}

- (id)changeHandlingValueUsingSeedOids:(id)a3 withChange:(id)a4 usingManagedObjectContext:(id)a5
{
  v12 = 0;
  v13 = 0;
  v6 = [(PHCollectionListKeyAssetsFetchResult *)self _keyAssetsForCollectionListWithChange:a4 outCollectionsFetch:&v13 outKeyAssetFetchByCollectionID:&v12];
  v7 = v13;
  v8 = v12;
  LOBYTE(v11) = 1;
  v9 = [[PHCollectionListKeyAssetsFetchResult alloc] initWithCollectionList:self->_collectionList keyAssets:v6 childCollectionsFetchResult:v7 keyAssetFetchByCollectionID:v8 identifier:0 options:self->_options registerIfNeeded:v11];

  return v9;
}

- (BOOL)isFullyBackedByObjectIDs
{
  v3 = [(NSArray *)self->_objects count];
  v4 = [(PHCollectionListKeyAssetsFetchResult *)self objectIDs];
  LOBYTE(v3) = v3 == [v4 count];

  return v3;
}

- (id)copyWithOptions:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"invalidateCache"];
  if ([v4 BOOLValue])
  {
    v5 = [(PHFetchResult *)self isRegisteredForChangeNotificationDeltas];
    v6 = [PHCollectionListKeyAssetsFetchResult alloc];
    collectionList = self->_collectionList;
    v8 = [(PHCollectionListKeyAssetsFetchResult *)self fetchedObjects];
    LOBYTE(v11) = v5;
    v9 = [(PHCollectionListKeyAssetsFetchResult *)v6 initWithCollectionList:collectionList keyAssets:v8 childCollectionsFetchResult:self->_childCollectionsFetchResult keyAssetFetchByCollectionID:self->_keyAssetFetchByCollectionID identifier:self->_changeHandlingKey options:self->_options registerIfNeeded:v11];
  }

  else
  {
    v9 = [(PHCollectionListKeyAssetsFetchResult *)self copy];
  }

  return v9;
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary unregisterFetchResult:self];
  v3.receiver = self;
  v3.super_class = PHCollectionListKeyAssetsFetchResult;
  [(PHFetchResult *)&v3 dealloc];
}

- (PHCollectionListKeyAssetsFetchResult)initWithCollectionList:(id)a3 keyAssets:(id)a4 childCollectionsFetchResult:(id)a5 keyAssetFetchByCollectionID:(id)a6 identifier:(id)a7 options:(id)a8 registerIfNeeded:(BOOL)a9
{
  v61 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v59.receiver = self;
  v59.super_class = PHCollectionListKeyAssetsFetchResult;
  v22 = [(PHFetchResult *)&v59 init];
  v23 = v22;
  if (v22)
  {
    v52 = v18;
    objc_storeStrong(&v22->_options, a8);
    v24 = [(PHFetchOptions *)v23->_options fetchLimit];
    v25 = 4;
    if (v24)
    {
      v25 = v24;
    }

    v23->_collectionListKeyAssetLimit = v25;
    objc_storeStrong(&v23->_collectionList, a3);
    v51 = v21;
    v54 = v16;
    v26 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v21 object:v16];
    photoLibrary = v23->_photoLibrary;
    v23->_photoLibrary = v26;

    if (a9)
    {
      [(PHFetchResult *)v23 setRegisteredForChangeNotificationDeltas:1];
    }

    objc_storeStrong(&v23->_childCollectionsFetchResult, a5);
    v28 = v19;
    if (!v19)
    {
      v28 = [(PHCollectionListKeyAssetsFetchResult *)v23 _fetchesByCollectionID:v23->_childCollectionsFetchResult change:0];
    }

    objc_storeStrong(&v23->_keyAssetFetchByCollectionID, v28);
    if (!v19)
    {
    }

    v53 = v17;
    if (v17)
    {
      v29 = [v17 copy];
    }

    else
    {
      v29 = [(PHCollectionListKeyAssetsFetchResult *)v23 _keyAssetsForCollectionListWithChange:0 outCollectionsFetch:0 outKeyAssetFetchByCollectionID:0];
    }

    v50 = v29;
    v30 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v29];
    v31 = [v30 array];
    objects = v23->_objects;
    v23->_objects = v31;

    v33 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{-[NSArray count](v23->_objects, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v34 = v23->_objects;
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v56;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v56 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v55 + 1) + 8 * i) objectID];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v36);
    }

    objc_storeStrong(&v23->_objectIDs, v33);
    v40 = [(PHFetchResult *)v23->_childCollectionsFetchResult fetchedObjectIDsSet];
    v41 = [v40 mutableCopy];

    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = [MEMORY[0x1E695DFA8] set];
    }

    v43 = v42;
    v18 = v52;
    v44 = MEMORY[0x1E695DFD8];
    v45 = [(PHObject *)v23->_collectionList objectID];
    v46 = [v44 setWithObject:v45];
    [v43 unionSet:v46];

    objc_storeStrong(&v23->_relevantOIDSet, v43);
    if (!v20)
    {
      v47 = [MEMORY[0x1E696AFB0] UUID];
      v20 = [v47 UUIDString];
    }

    objc_storeStrong(&v23->_changeHandlingKey, v20);
    v48 = v23;

    v17 = v53;
    v16 = v54;
    v21 = v51;
  }

  return v23;
}

@end