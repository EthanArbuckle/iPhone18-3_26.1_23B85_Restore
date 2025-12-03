@interface PHCollectionListKeyAssetsFetchResult
- (BOOL)isFullyBackedByObjectIDs;
- (PHCollectionListKeyAssetsFetchResult)fetchResultWithChangeHandlingValue:(id)value;
- (PHCollectionListKeyAssetsFetchResult)initWithCollectionList:(id)list keyAssets:(id)assets childCollectionsFetchResult:(id)result keyAssetFetchByCollectionID:(id)d identifier:(id)identifier options:(id)options registerIfNeeded:(BOOL)needed;
- (id)_fetchesByCollectionID:(id)d change:(id)change;
- (id)_keyAssetsForCollectionListWithChange:(id)change outCollectionsFetch:(id *)fetch outKeyAssetFetchByCollectionID:(id *)d;
- (id)changeHandlingValueUsingSeedOids:(id)oids withChange:(id)change usingManagedObjectContext:(id)context;
- (id)copyWithOptions:(id)options;
- (id)fetchedObjectIDs;
- (id)fetchedObjectIDsSet;
- (unint64_t)possibleChangesForChange:(id)change propertiesFetchResult:(id)result;
- (void)dealloc;
@end

@implementation PHCollectionListKeyAssetsFetchResult

- (PHCollectionListKeyAssetsFetchResult)fetchResultWithChangeHandlingValue:(id)value
{
  v4 = [PHCollection fetchCollectionsInCollectionList:self->_collectionList options:self->_options];
  LOBYTE(v7) = 0;
  v5 = [[PHCollectionListKeyAssetsFetchResult alloc] initWithCollectionList:self->_collectionList keyAssets:0 childCollectionsFetchResult:v4 keyAssetFetchByCollectionID:0 identifier:0 options:self->_options registerIfNeeded:v7];

  return v5;
}

- (id)_fetchesByCollectionID:(id)d change:(id)change
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DFA8] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = dCopy;
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
        objectID = [v14 objectID];
        v17 = [(NSDictionary *)keyAssetFetchByCollectionID objectForKeyedSubscript:objectID];
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

        objectID2 = [v12 objectID];
        [dictionary setObject:v20 forKey:objectID2];

        firstObject = [v20 firstObject];

        if (firstObject)
        {
          firstObject2 = [v20 firstObject];
          [v6 addObject:firstObject2];
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

  return dictionary;
}

- (id)_keyAssetsForCollectionListWithChange:(id)change outCollectionsFetch:(id *)fetch outKeyAssetFetchByCollectionID:(id *)d
{
  v46 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v8 = self->_childCollectionsFetchResult;
  v9 = [(NSDictionary *)self->_keyAssetFetchByCollectionID mutableCopy];
  v10 = [changeCopy changeDetailsForFetchResult:v8];
  dCopy = d;
  v34 = v10;
  selfCopy = self;
  if (v10)
  {
    fetchResultAfterChanges = [v10 fetchResultAfterChanges];

    v12 = [(PHCollectionListKeyAssetsFetchResult *)self _fetchesByCollectionID:fetchResultAfterChanges change:changeCopy];

    v9 = v12;
    v8 = fetchResultAfterChanges;
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
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
      objectID = [v17 objectID];
      v19 = [v9 objectForKeyedSubscript:objectID];

      v20 = [changeCopy changeDetailsForFetchResult:v19];
      v21 = v20;
      if (v20)
      {
        fetchResultAfterChanges2 = [v20 fetchResultAfterChanges];

        objectID2 = [v17 objectID];
        [v9 setObject:fetchResultAfterChanges2 forKey:objectID2];

        v19 = fetchResultAfterChanges2;
      }

      objectID3 = [v17 objectID];
      v25 = [v9 objectForKeyedSubscript:objectID3];

      firstObject = [v25 firstObject];

      if (firstObject)
      {
        firstObject2 = [v25 firstObject];
        [orderedSet addObject:firstObject2];
      }

      v28 = [orderedSet count];
      collectionListKeyAssetLimit = selfCopy->_collectionListKeyAssetLimit;

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

  if (fetch)
  {
    v30 = obj;
    *fetch = obj;
  }

  if (dCopy)
  {
    v31 = v9;
    *dCopy = v9;
  }

  array = [orderedSet array];

  return array;
}

- (id)fetchedObjectIDsSet
{
  objectIDs = [(PHCollectionListKeyAssetsFetchResult *)self objectIDs];
  v3 = [objectIDs set];

  return v3;
}

- (id)fetchedObjectIDs
{
  objectIDs = [(PHCollectionListKeyAssetsFetchResult *)self objectIDs];
  array = [objectIDs array];

  return array;
}

- (unint64_t)possibleChangesForChange:(id)change propertiesFetchResult:(id)result
{
  changeCopy = change;
  v6 = [(PHFetchResult *)self->_childCollectionsFetchResult copy];
  v7 = [(NSSet *)self->_relevantOIDSet mutableCopy];
  if (([v6 possibleChangesForChange:changeCopy] & 7) != 0)
  {
    v8 = [PHCollection fetchCollectionsInCollectionList:self->_collectionList options:self->_options];

    fetchedObjectIDsSet = [v8 fetchedObjectIDsSet];
    if (fetchedObjectIDsSet)
    {
      [v7 unionSet:fetchedObjectIDsSet];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFD8] set];
      [v7 unionSet:v10];
    }

    v6 = v8;
  }

  insertedObjectIDs = [changeCopy insertedObjectIDs];
  if ([insertedObjectIDs intersectsSet:v7])
  {
    goto LABEL_9;
  }

  updatedObjectIDs = [changeCopy updatedObjectIDs];
  if ([updatedObjectIDs intersectsSet:v7])
  {

LABEL_9:
    goto LABEL_10;
  }

  deletedObjectIDs = [changeCopy deletedObjectIDs];
  v16 = [deletedObjectIDs intersectsSet:v7];

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

- (id)changeHandlingValueUsingSeedOids:(id)oids withChange:(id)change usingManagedObjectContext:(id)context
{
  v12 = 0;
  v13 = 0;
  v6 = [(PHCollectionListKeyAssetsFetchResult *)self _keyAssetsForCollectionListWithChange:change outCollectionsFetch:&v13 outKeyAssetFetchByCollectionID:&v12];
  v7 = v13;
  v8 = v12;
  LOBYTE(v11) = 1;
  v9 = [[PHCollectionListKeyAssetsFetchResult alloc] initWithCollectionList:self->_collectionList keyAssets:v6 childCollectionsFetchResult:v7 keyAssetFetchByCollectionID:v8 identifier:0 options:self->_options registerIfNeeded:v11];

  return v9;
}

- (BOOL)isFullyBackedByObjectIDs
{
  v3 = [(NSArray *)self->_objects count];
  objectIDs = [(PHCollectionListKeyAssetsFetchResult *)self objectIDs];
  LOBYTE(v3) = v3 == [objectIDs count];

  return v3;
}

- (id)copyWithOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:@"invalidateCache"];
  if ([v4 BOOLValue])
  {
    isRegisteredForChangeNotificationDeltas = [(PHFetchResult *)self isRegisteredForChangeNotificationDeltas];
    v6 = [PHCollectionListKeyAssetsFetchResult alloc];
    collectionList = self->_collectionList;
    fetchedObjects = [(PHCollectionListKeyAssetsFetchResult *)self fetchedObjects];
    LOBYTE(v11) = isRegisteredForChangeNotificationDeltas;
    v9 = [(PHCollectionListKeyAssetsFetchResult *)v6 initWithCollectionList:collectionList keyAssets:fetchedObjects childCollectionsFetchResult:self->_childCollectionsFetchResult keyAssetFetchByCollectionID:self->_keyAssetFetchByCollectionID identifier:self->_changeHandlingKey options:self->_options registerIfNeeded:v11];
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

- (PHCollectionListKeyAssetsFetchResult)initWithCollectionList:(id)list keyAssets:(id)assets childCollectionsFetchResult:(id)result keyAssetFetchByCollectionID:(id)d identifier:(id)identifier options:(id)options registerIfNeeded:(BOOL)needed
{
  v61 = *MEMORY[0x1E69E9840];
  listCopy = list;
  assetsCopy = assets;
  resultCopy = result;
  dCopy = d;
  identifierCopy = identifier;
  optionsCopy = options;
  v59.receiver = self;
  v59.super_class = PHCollectionListKeyAssetsFetchResult;
  v22 = [(PHFetchResult *)&v59 init];
  v23 = v22;
  if (v22)
  {
    v52 = resultCopy;
    objc_storeStrong(&v22->_options, options);
    fetchLimit = [(PHFetchOptions *)v23->_options fetchLimit];
    v25 = 4;
    if (fetchLimit)
    {
      v25 = fetchLimit;
    }

    v23->_collectionListKeyAssetLimit = v25;
    objc_storeStrong(&v23->_collectionList, list);
    v51 = optionsCopy;
    v54 = listCopy;
    v26 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:optionsCopy object:listCopy];
    photoLibrary = v23->_photoLibrary;
    v23->_photoLibrary = v26;

    if (needed)
    {
      [(PHFetchResult *)v23 setRegisteredForChangeNotificationDeltas:1];
    }

    objc_storeStrong(&v23->_childCollectionsFetchResult, result);
    v28 = dCopy;
    if (!dCopy)
    {
      v28 = [(PHCollectionListKeyAssetsFetchResult *)v23 _fetchesByCollectionID:v23->_childCollectionsFetchResult change:0];
    }

    objc_storeStrong(&v23->_keyAssetFetchByCollectionID, v28);
    if (!dCopy)
    {
    }

    v53 = assetsCopy;
    if (assetsCopy)
    {
      v29 = [assetsCopy copy];
    }

    else
    {
      v29 = [(PHCollectionListKeyAssetsFetchResult *)v23 _keyAssetsForCollectionListWithChange:0 outCollectionsFetch:0 outKeyAssetFetchByCollectionID:0];
    }

    v50 = v29;
    v30 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v29];
    array = [v30 array];
    objects = v23->_objects;
    v23->_objects = array;

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

          objectID = [*(*(&v55 + 1) + 8 * i) objectID];
          if (objectID)
          {
            [v33 addObject:objectID];
          }
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v36);
    }

    objc_storeStrong(&v23->_objectIDs, v33);
    fetchedObjectIDsSet = [(PHFetchResult *)v23->_childCollectionsFetchResult fetchedObjectIDsSet];
    v41 = [fetchedObjectIDsSet mutableCopy];

    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = [MEMORY[0x1E695DFA8] set];
    }

    v43 = v42;
    resultCopy = v52;
    v44 = MEMORY[0x1E695DFD8];
    objectID2 = [(PHObject *)v23->_collectionList objectID];
    v46 = [v44 setWithObject:objectID2];
    [v43 unionSet:v46];

    objc_storeStrong(&v23->_relevantOIDSet, v43);
    if (!identifierCopy)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      identifierCopy = [uUID UUIDString];
    }

    objc_storeStrong(&v23->_changeHandlingKey, identifierCopy);
    v48 = v23;

    assetsCopy = v53;
    listCopy = v54;
    optionsCopy = v51;
  }

  return v23;
}

@end