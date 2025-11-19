@interface PHRecentContentSyndicationCollectionsResult
+ (id)pointerComparableIdentifiersFromIdentifiers:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PHRecentContentSyndicationCollectionsResult)initWithObjects:(id)a3 photoLibrary:(id)a4 fetchOptions:(id)a5 maxNumberOfStacks:(int64_t)a6 maxNumberOfAssetsPerStack:(int64_t)a7 fetchType:(id)a8 fetchPropertySets:(id)a9 identifier:(id)a10 registerIfNeeded:(BOOL)a11;
- (id)_transientCollectionForAssetOID:(id)a3;
- (id)_transientCollectionForIdentifier:(id)a3;
- (id)additionalChangedIdentifiersFromPreviousIdentifiers:(id)a3 currentIdentifiers:(id)a4 inFetchResultBeforeChanges:(id)a5;
- (id)changeHandlingValueUsingSeedOids:(id)a3 withChange:(id)a4 usingManagedObjectContext:(id)a5;
- (id)copyWithOptions:(id)a3;
- (id)description;
- (id)objectIDAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)possibleChangesForChange:(id)a3 propertiesFetchResult:(id)a4;
@end

@implementation PHRecentContentSyndicationCollectionsResult

- (id)description
{
  v4.receiver = self;
  v4.super_class = PHRecentContentSyndicationCollectionsResult;
  v2 = [(PHFetchResult *)&v4 description];

  return v2;
}

- (unint64_t)possibleChangesForChange:(id)a3 propertiesFetchResult:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v44 = a3;
  v4 = [v44 insertedObjectIDs];
  v5 = [v4 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v54;
    v8 = 1;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v54 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = [*(*(&v53 + 1) + 8 * v9) entity];
      v11 = [v10 name];
      v12 = [MEMORY[0x1E69BE540] entityName];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v53 objects:v60 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = [v44 deletedObjectIDs];
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v41 = v8;
    v17 = *v50;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        v20 = [v19 entity];
        v21 = [v20 name];
        v22 = [MEMORY[0x1E69BE540] entityName];
        v23 = [v21 isEqualToString:v22];

        if (v23)
        {
          v24 = [(PHRecentContentSyndicationCollectionsResult *)self _transientCollectionForAssetOID:v19];

          if (v24)
          {
            v8 = v41 | 0xA;
            goto LABEL_21;
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v8 = v41;
  }

LABEL_21:

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v25 = [v44 updatedObjectIDs];
  v26 = [v25 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v26)
  {
    v27 = v26;
    v42 = v8;
    v28 = *v46;
    while (2)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v45 + 1) + 8 * j);
        v31 = [v30 entity];
        v32 = [v31 name];
        v33 = [MEMORY[0x1E69BE540] entityName];
        v34 = [v32 isEqualToString:v33];

        if (v34)
        {
          v35 = MEMORY[0x1E69BE6F8];
          v57[0] = @"syndicationState";
          v57[1] = @"savedAssetType";
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
          v37 = [MEMORY[0x1E69BE540] entityName];
          v38 = [v35 indexValueForAttributeNames:v36 entity:v37];

          v39 = [v30 entity];
          LOBYTE(v38) = [v44 anyUpdatedObjectsWithChangedAttributes:v38 ofEntity:v39];

          if (v38)
          {
            v8 = 11;
            goto LABEL_32;
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v45 objects:v58 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

    v8 = v42;
  }

LABEL_32:

  return v8;
}

- (id)objectIDAtIndex:(unint64_t)a3
{
  v4 = [(PHRecentContentSyndicationCollectionsResult *)self objects];
  v5 = [v4 objectAtIndex:a3];
  v6 = [v5 objectID];

  return v6;
}

- (id)additionalChangedIdentifiersFromPreviousIdentifiers:(id)a3 currentIdentifiers:(id)a4 inFetchResultBeforeChanges:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = v8;
  v11 = [MEMORY[0x1E695DFA8] setWithArray:v8];
  v25 = v9;
  v12 = [MEMORY[0x1E695DFD8] setWithArray:v9];
  [v11 intersectSet:v12];

  v30 = v10;
  v29 = self;
  v27 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v11, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [v30 _transientCollectionForIdentifier:v17];
        v20 = [(PHRecentContentSyndicationCollectionsResult *)v29 _transientCollectionForIdentifier:v17];
        v21 = [v19 assetOids];
        v22 = [v20 assetOids];
        v23 = [v21 isEqualToArray:v22];

        if ((v23 & 1) == 0)
        {
          [v27 addObject:v17];
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  return v27;
}

- (id)changeHandlingValueUsingSeedOids:(id)a3 withChange:(id)a4 usingManagedObjectContext:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_30448];
  v8 = [v6 deletedObjectIDs];
  v9 = [v8 filteredSetUsingPredicate:v7];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(PHRecentContentSyndicationCollectionsResult *)self _transientCollectionForAssetOID:*(*(&v22 + 1) + 8 * i), v22];

        if (v15)
        {

          goto LABEL_12;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v6 updatedObjectIDs];
  v17 = [v16 filteredSetUsingPredicate:v7];

  v18 = [v17 count];
  if (v18)
  {
LABEL_12:
    v19 = [PHAssetCollection fetchRecentContentSyndicationAssetCollectionsWithOptions:self->_fetchOptions maxNumberOfStacks:self->_maxNumberOfStacks maxNumberOfAssetsPerStack:self->_maxNumberOfAssetsPerStack, v22];
  }

  else
  {
    v19 = self;
  }

  v20 = v19;

  return v20;
}

uint64_t __117__PHRecentContentSyndicationCollectionsResult_changeHandlingValueUsingSeedOids_withChange_usingManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 entity];
  v3 = [v2 name];
  v4 = [MEMORY[0x1E69BE540] entityName];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)copyWithOptions:(id)a3
{
  v4 = [(PHRecentContentSyndicationCollectionsResult *)self objects];
  v5 = [PHRecentContentSyndicationCollectionsResult alloc];
  photoLibrary = self->_photoLibrary;
  fetchOptions = self->_fetchOptions;
  maxNumberOfStacks = self->_maxNumberOfStacks;
  maxNumberOfAssetsPerStack = self->_maxNumberOfAssetsPerStack;
  fetchType = self->super._fetchType;
  fetchPropertySets = self->super._fetchPropertySets;
  identifier = self->_identifier;
  LOBYTE(v15) = [(PHFetchResult *)self isRegisteredForChangeNotificationDeltas];
  v13 = [(PHRecentContentSyndicationCollectionsResult *)v5 initWithObjects:v4 photoLibrary:photoLibrary fetchOptions:fetchOptions maxNumberOfStacks:maxNumberOfStacks maxNumberOfAssetsPerStack:maxNumberOfAssetsPerStack fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:identifier registerIfNeeded:v15];

  return v13;
}

- (unint64_t)hash
{
  v3 = [(PHRecentContentSyndicationCollectionsResult *)self identifier];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PHRecentContentSyndicationCollectionsResult;
    v5 = [(PHRecentContentSyndicationCollectionsResult *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PHRecentContentSyndicationCollectionsResult;
  if ([(PHRecentContentSyndicationCollectionsResult *)&v9 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PHRecentContentSyndicationCollectionsResult *)self identifier];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v4 identifier];
      v5 = [v6 isEqualToString:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PHRecentContentSyndicationCollectionsResult)initWithObjects:(id)a3 photoLibrary:(id)a4 fetchOptions:(id)a5 maxNumberOfStacks:(int64_t)a6 maxNumberOfAssetsPerStack:(int64_t)a7 fetchType:(id)a8 fetchPropertySets:(id)a9 identifier:(id)a10 registerIfNeeded:(BOOL)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v36.receiver = self;
  v36.super_class = PHRecentContentSyndicationCollectionsResult;
  v23 = [(PHFetchResult *)&v36 init];
  if (v23)
  {
    v24 = [v17 copy];
    objects = v23->_objects;
    v23->_objects = v24;

    v26 = [v20 copy];
    fetchType = v23->super._fetchType;
    v23->super._fetchType = v26;

    v28 = [v19 copy];
    fetchOptions = v23->_fetchOptions;
    v23->_fetchOptions = v28;

    v30 = [v21 copy];
    fetchPropertySets = v23->super._fetchPropertySets;
    v23->super._fetchPropertySets = v30;

    v23->_maxNumberOfStacks = a6;
    v23->_maxNumberOfAssetsPerStack = a7;
    v32 = v18;
    if (!v32)
    {
      v33 = [v17 firstObject];
      v32 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v19 object:v33];
    }

    objc_storeStrong(&v23->_photoLibrary, v32);
    if (!v22)
    {
      v34 = [MEMORY[0x1E696AFB0] UUID];
      v22 = [v34 UUIDString];
    }

    objc_storeStrong(&v23->_identifier, v22);
    if (a11)
    {
      [(PHFetchResult *)v23 setRegisteredForChangeNotificationDeltas:1];
    }
  }

  return v23;
}

- (id)_transientCollectionForAssetOID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(v10, 0, sizeof(v10));
  v5 = self->_objects;
  if ([(NSArray *)v5 countByEnumeratingWithState:v10 objects:v11 count:16])
  {
    v6 = **(&v10[0] + 1);
    v7 = [**(&v10[0] + 1) assetOids];
    [v7 containsObject:v4];

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_transientCollectionForIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_objects;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 transientIdentifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)pointerComparableIdentifiersFromIdentifiers:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v19 + 1) + 8 * i) longLongValue];
          v12 = [MEMORY[0x1E696AD98] numberWithLongLong:v11];
          v13 = v12;
          if (v11 < 1 || (v12 & 0x8000000000000000) == 0)
          {
            v14 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v24 = v11;
              _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Unable to translate value: %lld in PHRecentContentSyndicationCollectionsResult to a tagged pointer equivalent.", buf, 0xCu);
            }

            goto LABEL_15;
          }

          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    if (v5)
    {
      v15 = [v5 count];
      if (v15 == [v6 count])
      {
        v16 = v5;
        v5 = v16;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = v3;
LABEL_20:
  v17 = v16;

  return v17;
}

@end