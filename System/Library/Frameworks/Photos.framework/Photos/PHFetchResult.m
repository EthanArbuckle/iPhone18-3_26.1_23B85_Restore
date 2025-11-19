@interface PHFetchResult
+ (id)_batchFetchingArrayForObjectIDs:(id)a3 fetchResult:(id)a4;
+ (id)_typesToCountForAssetCollections;
+ (id)_typesToCountForListCollections;
+ (id)cleanedAndSortedOIDsFrom:(id)a3 usingFetchOptions:(id)a4;
+ (id)fetchObjectCount:(id)a3 inManagedObjectContext:(id)a4;
+ (id)fetchObjectIDs:(id)a3 inManagedObjectContext:(id)a4;
+ (id)fetchObjectIDsForCombinableFetchResults:(id)a3 inManagedObjectContext:(id)a4;
+ (id)filteredOIDsFrom:(id)a3 usingEntityName:(id)a4 withPhotoLibrary:(id)a5;
+ (id)pl_fetchResultContainingAssetContainer:(id)a3 photoLibrary:(id)a4 includeTrash:(BOOL)a5;
+ (id)pl_fetchResultForAssetContainerList:(id)a3 photoLibrary:(id)a4;
+ (id)pl_fetchResultForStandInAssetCollection:(id)a3;
+ (id)pl_filterPredicateForAssetContainer:(id)a3;
+ (id)postProcessFetchedObjectIDs:(id)a3 forFetchResult:(id)a4 fetchRequest:(id)a5;
- (BOOL)_canCreateFetchedPropertyObjectsWithClass:(Class)a3;
- (BOOL)containsObject:(id)anObject;
- (NSArray)fetchSortDescriptors;
- (NSArray)fetchedObjectIDs;
- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes;
- (NSArray)thumbnailAssets;
- (NSFetchRequest)fetchRequest;
- (NSSet)fetchedObjectIDsSet;
- (NSUInteger)count;
- (NSUInteger)countOfAssetsWithMediaType:(PHAssetMediaType)mediaType;
- (NSUInteger)indexOfObject:(id)anObject;
- (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range;
- (PHFetchOptions)fetchOptions;
- (PHFetchResult)fetchResultWithChangeHandlingValue:(id)a3;
- (PHFetchResult)init;
- (PHFetchResult)initWithExistingFetchResult:(id)a3 filteredObjectIDs:(id)a4;
- (PHFetchResult)initWithMediaTypeCounts:(id)a3 library:(id)a4;
- (PHFetchResult)initWithQuery:(id)a3 library:(id)a4 oids:(id)a5 registerIfNeeded:(BOOL)a6 usingManagedObjectContext:(id)a7;
- (PHFetchResult)initWithQuery:(id)a3 library:(id)a4 registerIfNeeded:(BOOL)a5;
- (PHPhotoLibrary)photoLibrary;
- (id)_createFetchedPropertyObjectsWithClass:(Class)a3 fetchedObjectIDs:(id)a4;
- (id)_mediaTypeCounts;
- (id)calculateMediaTypeCounts;
- (id)changeHandlingKey;
- (id)changeHandlingValueUsingSeedOids:(id)a3 withChange:(id)a4 usingManagedObjectContext:(id)a5;
- (id)containerIdentifier;
- (id)copyWithOptions:(id)a3;
- (id)description;
- (id)fetchPropertiesForPropertySetClass:(Class)a3 forObjectsAtIndexes:(id)a4;
- (id)fetchedObjectsUsingManagedObjectContext:(id)a3;
- (id)fetchedPropertiesForPropertySetClass:(Class)a3;
- (id)firstObject;
- (id)lastObject;
- (id)localIdentifiers;
- (id)objectAtIndex:(NSUInteger)index;
- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (id)objectIDAtIndex:(unint64_t)a3;
- (id)objectIDs;
- (id)pl_photoLibraryObject;
- (int64_t)collectionFetchType;
- (unint64_t)_possibleChangesFromDetectionCriteriaForChange:(id)a3;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3;
- (unint64_t)cachedCountOfCollectionsWithCollectionTypes:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)countOfAssetCollections;
- (unint64_t)countOfCollectionsLists;
- (unint64_t)possibleChangesForChange:(id)a3 propertiesFetchResult:(id)a4;
- (void)_handleInitWithInvalidConfigurationDetails:(id)a3 library:(id)a4;
- (void)_updateMediaTypeCountsIfNeeded;
- (void)dealloc;
- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateObjectsUsingBlock:(void *)block;
- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getCountOfCollectionsWithCollectionTypes:(id)a3;
- (void)prefetchObjectsAtIndexes:(id)a3;
- (void)prefetchThumbnailAssetsAtIndexes:(id)a3;
- (void)setRegisteredForChangeNotificationDeltas:(BOOL)a3;
- (void)updateRegistrationForChangeNotificationDeltas;
@end

@implementation PHFetchResult

- (PHFetchResult)init
{
  v10.receiver = self;
  v10.super_class = PHFetchResult;
  v2 = [(PHFetchResult *)&v10 init];
  if (v2)
  {
    v3 = [objc_opt_class() emptyFetchResultChangeHandlingKey];
    changeHandlingKey = v2->_changeHandlingKey;
    v2->_changeHandlingKey = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("PHFetchResult", v5);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v6;

    v2->_countsLock._os_unfair_lock_opaque = 0;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    *&v2->_albumsCount = vnegq_f64(v8);
    v2->_foldersCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

- (NSFetchRequest)fetchRequest
{
  v2 = [(PHFetchResult *)self query];
  v3 = [v2 fetchRequest];

  return v3;
}

- (PHPhotoLibrary)photoLibrary
{
  v2 = [(PHFetchResult *)self query];
  v3 = [v2 photoLibrary];

  return v3;
}

- (PHFetchOptions)fetchOptions
{
  v2 = [(PHFetchResult *)self query];
  v3 = [v2 fetchOptions];

  return v3;
}

- (void)updateRegistrationForChangeNotificationDeltas
{
  v3 = [(PHFetchResult *)self query];
  v5 = [v3 fetchOptions];

  if (v5)
  {
    v4 = [v5 wantsIncrementalChangeDetails];
  }

  else
  {
    v4 = 1;
  }

  [(PHFetchResult *)self setRegisteredForChangeNotificationDeltas:v4];
}

- (void)dealloc
{
  v3 = [(PHQuery *)self->_query photoLibrary];
  [v3 unregisterFetchResult:self];

  v4.receiver = self;
  v4.super_class = PHFetchResult;
  [(PHFetchResult *)&v4 dealloc];
}

- (NSUInteger)count
{
  if (self->_prefetchCount)
  {
    prefetchCount = self->_prefetchCount;

    return [(NSNumber *)prefetchCount unsignedIntegerValue];
  }

  else
  {
    v5 = [(PHFetchResult *)self fetchedObjects];
    v6 = [v5 count];

    return v6;
  }
}

- (id)firstObject
{
  v2 = [(PHFetchResult *)self fetchedObjects];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)fetchedObjectIDs
{
  v2 = [(PHFetchResult *)self fetchedObjects];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 oids];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NSArray)thumbnailAssets
{
  v3 = objc_opt_class();
  if (!self->_thumbnailAssets)
  {
    v4 = v3;
    v5 = [(PHFetchResult *)self count];
    if (v5 > [v4 batchSize])
    {
      if ([(PHFetchResult *)self _canCreateFetchedPropertyObjectsWithClass:v4])
      {
        v6 = [(PHFetchResult *)self fetchedObjectIDs];
        isolationQueue = self->_isolationQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __32__PHFetchResult_thumbnailAssets__block_invoke;
        block[3] = &unk_1E75AAF00;
        v12 = v6;
        v13 = v4;
        block[4] = self;
        v8 = v6;
        dispatch_sync(isolationQueue, block);
      }
    }
  }

  thumbnailAssets = self->_thumbnailAssets;

  return thumbnailAssets;
}

- (id)pl_photoLibraryObject
{
  v64 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"PHAdoptionUtilities.m" lineNumber:208 description:@"This is only callable on the main thread"];
  }

  v4 = [(PHFetchResult *)self containerIdentifier];

  v5 = objc_autoreleasePoolPush();
  v6 = [(PHFetchResult *)self photoLibrary];
  v7 = [v6 mainQueueConcurrencyPhotoLibrary];
  v8 = [v7 managedObjectContext];

  if (!v4)
  {
    v11 = [(PHFetchResult *)self firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(PHFetchResult *)v11 isTransient])
        {
          v13 = [MEMORY[0x1E695DFA0] orderedSet];
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __59__PHFetchResult_PHAdoptionUtilities__pl_photoLibraryObject__block_invoke;
          v53[3] = &unk_1E75A5828;
          v53[4] = self;
          v54 = v13;
          v12 = v13;
          [(PHFetchResult *)self enumerateObjectsUsingBlock:v53];
          v10 = [objc_alloc(MEMORY[0x1E69BE7E8]) initWithAssetContainers:v12];
          v14 = v54;
LABEL_47:

          goto LABEL_48;
        }
      }
    }

    v12 = [objc_opt_class() managedEntityName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(PHFetchResult *)self objectIDs];
      v16 = [v15 array];
    }

    else
    {
      v16 = [(PHFetchResult *)self fetchedObjectIDs];
      if (v12)
      {
LABEL_17:
        if ([v16 count])
        {
          v18 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v12];
          v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v16];
          [v18 setPredicate:v19];

          v20 = [v8 executeFetchRequest:v18 error:0];

LABEL_22:
          v44 = v16;
          if (v20)
          {
            v43 = v5;
            v22 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v20, "count")}];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v42 = v20;
            v23 = v20;
            v24 = [v23 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v50;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v50 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v49 + 1) + 8 * i);
                  v29 = [v28 objectID];
                  [v22 setObject:v28 forKey:v29];
                }

                v25 = [v23 countByEnumeratingWithState:&v49 objects:v57 count:16];
              }

              while (v25);
            }

            v30 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v23, "count")}];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v31 = v44;
            v32 = [v31 countByEnumeratingWithState:&v45 objects:v56 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v46;
              do
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v46 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = [v22 objectForKey:*(*(&v45 + 1) + 8 * j)];
                  if (v36)
                  {
                    [v30 addObject:v36];
                  }
                }

                v33 = [v31 countByEnumeratingWithState:&v45 objects:v56 count:16];
              }

              while (v33);
            }

            v37 = +[PHAsset managedEntityName];
            v38 = [v12 isEqualToString:v37];

            if (v38)
            {
              v39 = [objc_alloc(MEMORY[0x1E69BE7E0]) initWithTitle:&stru_1F0FC60C8 assets:v30];
            }

            else
            {
              v39 = [objc_alloc(MEMORY[0x1E69BE7E8]) initWithAssetContainers:v30];
            }

            v10 = v39;
            v20 = v42;
            v5 = v43;
          }

          else
          {
            v22 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v59 = 0;
              _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "Failed to fetch managedObject for fetchresult result: %@", buf, 0xCu);
            }

            v10 = 0;
          }

          v14 = v44;
          goto LABEL_47;
        }

LABEL_19:
        v20 = [MEMORY[0x1E695DEC8] array];
        v21 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v59 = self;
          v60 = 2112;
          v61 = v12;
          v62 = 2112;
          v63 = v16;
          _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "Cannot to fetch managedObject for fetchresult result: %@, with entityName %@ and objectIDs %@", buf, 0x20u);
        }

        goto LABEL_22;
      }

      v15 = [(PHFetchResult *)self query];
      v17 = [v15 fetchRequest];
      v12 = [v17 entityName];
    }

    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v9 = [(PHFetchResult *)self containerIdentifier];
  v55 = 0;
  v10 = [v8 existingObjectWithID:v9 error:&v55];
  v11 = v55;

  if (v10)
  {
    goto LABEL_49;
  }

  v12 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v11;
    _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEFAULT, "Failed to fetch container for fetchresult: %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_48:

LABEL_49:
  objc_autoreleasePoolPop(v5);

  return v10;
}

void __59__PHFetchResult_PHAdoptionUtilities__pl_photoLibraryObject__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 photoLibrary];
  v8 = [PHFetchOptions fetchOptionsWithPhotoLibrary:v5 orObject:v4];

  [v8 setIncludeHiddenAssets:1];
  v6 = [PHAsset fetchAssetsInAssetCollection:v4 options:v8];

  v7 = [v6 pl_photoLibraryObject];
  [*(a1 + 40) addObject:v7];
}

+ (id)pl_fetchResultForStandInAssetCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 pl_assetContainer];
  v5 = [v3 photoLibrary];
  v6 = [v5 mainQueueConcurrencyPhotoLibrary];

  v7 = [v6 albumListForAlbumOfKind:{objc_msgSend(v4, "kindValue")}];
  v8 = [v3 photoLibrary];

  v9 = [PHFetchResult pl_fetchResultForAssetContainerList:v7 photoLibrary:v8];

  return v9;
}

+ (id)pl_fetchResultForAssetContainerList:(id)a3 photoLibrary:(id)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 uuid];
    v41[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v9 = [v6 librarySpecificFetchOptions];
    v10 = [PHCollectionList fetchCollectionListsWithLocalIdentifiers:v8 options:v9];
    v11 = [v10 firstObject];

    v12 = [PHCollection fetchCollectionsInCollectionList:v11 options:0];
  }

  else
  {
    NSClassFromString(&cfstr_Pxfeedassetcon.isa);
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [v5 performSelector:sel_transientIdentifier];
      }

      else
      {
        v11 = 0;
      }

      v21 = [v5 containers];
      v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v21, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [PHAssetCollection pl_PHAssetCollectionForAssetContainer:*(*(&v35 + 1) + 8 * i) photoLibrary:v6];
            if (v28)
            {
              [v22 addObject:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v25);
      }

      v29 = [PHCollectionList transientCollectionListWithCollections:v22 title:&stru_1F0FC60C8 identifier:v11 photoLibrary:v6];
      v12 = [PHCollection fetchCollectionsInCollectionList:v29 options:0];
    }

    else
    {
      v13 = [v5 containers];
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v13;
      v15 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v11);
            }

            v19 = [PHAssetCollection pl_PHAssetCollectionForAssetContainer:*(*(&v31 + 1) + 8 * j) photoLibrary:v6, v31];
            if (v19)
            {
              [v14 addObject:v19];
            }
          }

          v16 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v16);
      }

      v20 = [PHCollectionList transientCollectionListWithCollections:v14 title:&stru_1F0FC60C8];
      v12 = [PHCollection fetchCollectionsInCollectionList:v20 options:0];
    }
  }

  return v12;
}

+ (id)pl_filterPredicateForAssetContainer:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PHAdoptionUtilities.m" lineNumber:496 description:@"This is only callable on the main thread"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 backingAlbum];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 predicate];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)pl_fetchResultContainingAssetContainer:(id)a3 photoLibrary:(id)a4 includeTrash:(BOOL)a5
{
  v5 = a5;
  v78[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = [v10 isEqual:objc_opt_class()];
  v12 = [v9 librarySpecificFetchOptions];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = MEMORY[0x1E696AE18];
    v14 = [v8 objectID];
    v78[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
    v16 = [v13 predicateWithFormat:@"self IN %@", v15];
    [v12 setInternalPredicate:v16];

    v17 = [PHAssetCollection fetchMomentsWithOptions:v12];
    goto LABEL_69;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v8;
    v19 = [v18 kindValue];
    switch(v19)
    {
      case 1605:
        v20 = 2;
        v21 = 201;
        goto LABEL_66;
      case 1606:
        v20 = 2;
        v21 = 202;
        goto LABEL_66;
      case 1607:
      case 1608:
      case 1625:
      case 1629:
      case 1633:
      case 1635:
      case 1637:
      case 1638:
        goto LABEL_36;
      case 1609:
        v20 = 2;
        v21 = 203;
        goto LABEL_66;
      case 1610:
        v20 = 2;
        v21 = 204;
        goto LABEL_66;
      case 1611:
        v20 = 2;
        v21 = 205;
        goto LABEL_66;
      case 1612:
        v58 = 200;
        goto LABEL_64;
      case 1613:
        v20 = 2;
        v21 = 209;
        goto LABEL_66;
      case 1614:
        v20 = 2;
        v21 = 207;
        goto LABEL_66;
      case 1615:
        v20 = 2;
        v21 = 208;
        goto LABEL_66;
      case 1616:
        v20 = 2;
        v21 = 206;
        goto LABEL_66;
      case 1617:
        v20 = 2;
        v21 = 210;
        goto LABEL_66;
      case 1618:
        v20 = 2;
        v21 = 211;
        goto LABEL_66;
      case 1619:
        [v12 setIncludePlacesSmartAlbum:1];
        v58 = 202;
        goto LABEL_64;
      case 1620:
        v20 = 2;
        v21 = 212;
        goto LABEL_66;
      case 1621:
        v20 = 2;
        v21 = 213;
        goto LABEL_66;
      case 1622:
        v20 = 2;
        v21 = 214;
        goto LABEL_66;
      case 1623:
        v20 = 2;
        v21 = 215;
        goto LABEL_66;
      case 1624:
        v20 = 2;
        v21 = 216;
        goto LABEL_66;
      case 1626:
        [v12 setIncludeRecentlyEditedSmartAlbum:1];
        v21 = 1000000206;
        goto LABEL_65;
      case 1627:
        [v12 setIncludeScreenRecordingsSmartAlbum:1];
        v20 = 2;
        v21 = 220;
        goto LABEL_66;
      case 1628:
        [v12 setIncludeAllPhotosSmartAlbum:1];
        v58 = 204;
        goto LABEL_64;
      case 1630:
        v20 = 2;
        v21 = 217;
        goto LABEL_66;
      case 1631:
        v20 = 2;
        v21 = 218;
        goto LABEL_66;
      case 1632:
        [v12 setIncludeProResSmartAlbum:1];
        v58 = 210;
        goto LABEL_64;
      case 1634:
        [v12 setIncludeDuplicatesAlbums:1];
        v21 = 1000000212;
        goto LABEL_65;
      case 1636:
        [v12 setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
        v21 = 1000000214;
        goto LABEL_65;
      case 1639:
        v20 = 2;
        v21 = 219;
        goto LABEL_66;
      case 1640:
        v21 = 1000000218;
        goto LABEL_65;
      case 1641:
        v58 = 218;
LABEL_64:
        v21 = v58 | 0x3B9ACA01;
LABEL_65:
        v20 = 2;
        goto LABEL_66;
      case 1642:
        v20 = 2;
        v21 = 221;
        goto LABEL_66;
      default:
        if (v19 != 1000)
        {
LABEL_36:
          v29 = [v18 objectID];
          v77 = v29;
          v36 = MEMORY[0x1E695DEC8];
          v37 = &v77;
          goto LABEL_37;
        }

        v20 = 1;
        v21 = 1000000001;
LABEL_66:
        v26 = [PHAssetCollection fetchAssetCollectionsWithType:v20 subtype:v21 options:v12];
        break;
    }

    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v8 backingAlbum];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = MEMORY[0x1E696AE18];
      v23 = [v18 objectID];
      v76 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      v25 = [v22 predicateWithFormat:@"self IN %@", v24];
      [v12 setInternalPredicate:v25];

      v26 = [PHAssetCollection fetchMomentsWithOptions:v12];
LABEL_67:
      v17 = v26;
      goto LABEL_68;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = 0;
LABEL_68:

      goto LABEL_69;
    }

    if ([v18 kindValue] == 1628)
    {
      [v12 setIncludeAllPhotosSmartAlbum:1];
    }

    v29 = [v18 objectID];
    v75 = v29;
    v36 = MEMORY[0x1E695DEC8];
    v37 = &v75;
LABEL_37:
    v57 = [v36 arrayWithObjects:v37 count:1];
    v17 = [PHAssetCollection fetchAssetCollectionsWithObjectIDs:v57 options:v12];

LABEL_38:
    goto LABEL_68;
  }

  v27 = objc_opt_class();
  if ([v27 isEqual:NSClassFromString(&cfstr_Pumapalbum.isa)])
  {
    [v12 setIncludeHiddenAssets:1];
    v18 = [v8 assets];
    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __103__PHFetchResult_PHAdoptionUtilities__pl_fetchResultContainingAssetContainer_photoLibrary_includeTrash___block_invoke;
    v66[3] = &unk_1E75A5850;
    v67 = v28;
    v29 = v28;
    [v18 enumerateObjectsUsingBlock:v66];
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v29];
    [v12 setInternalPredicate:v30];

    [v12 setIncludeAssetSourceTypes:7];
    v31 = [PHAsset fetchAssetsWithOptions:v12];
    v32 = [v8 localizedTitle];
    v33 = [PHAssetCollection transientAssetCollectionWithAssetFetchResult:v31 title:v32];

    v74 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
    v35 = [PHCollectionList transientCollectionListWithCollections:v34 title:0];

    v17 = [(PHCollection *)PHAssetCollection fetchCollectionsInCollectionList:v35 options:0];

    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v38 = objc_opt_class(), ([v38 isEqual:NSClassFromString(&cfstr_Pxfeedassetsse.isa)]) || (v39 = objc_opt_class(), (objc_msgSend(v39, "isEqual:", NSClassFromString(&cfstr_Pxfeedcomments.isa))) || (v40 = objc_opt_class(), ((objc_msgSend(v40, "isEqual:", NSClassFromString(&cfstr_Pxfeedsubscrip.isa)) | v11)))
  {
    v63 = [v12 copy];
    [v12 setIncludeHiddenAssets:1];
    v41 = [v8 assets];
    v42 = [MEMORY[0x1E695DF70] array];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __103__PHFetchResult_PHAdoptionUtilities__pl_fetchResultContainingAssetContainer_photoLibrary_includeTrash___block_invoke_2;
    v64[3] = &unk_1E75A5850;
    v43 = v42;
    v65 = v43;
    v62 = v41;
    [v41 enumerateObjectsUsingBlock:v64];
    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v43];
    [v12 setInternalPredicate:v44];

    v45 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v73 = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    [v12 setSortDescriptors:v46];

    [v12 setCustomObjectIDSortOrder:v43];
    if (v11)
    {
      [v12 setIncludeAllBurstAssets:1];
    }

    if (v5)
    {
      [v12 setIncludeTrashedAssets:1];
    }

    [v12 setIncludeAssetSourceTypes:7];
    v47 = [PHAsset fetchAssetsWithOptions:v12];
    if (objc_opt_respondsToSelector())
    {
      v48 = [v8 performSelector:sel_transientIdentifier];
    }

    else
    {
      if (!v11)
      {
        v49 = 0;
        goto LABEL_30;
      }

      v48 = [v8 uuid];
    }

    v49 = v48;
LABEL_30:
    v50 = [v8 canShowComments];
    if (v50)
    {
      v51 = 101;
    }

    else
    {
      v51 = 200;
    }

    v52 = [PHAssetCollection alloc];
    v53 = [v8 localizedTitle];
    v54 = [(PHAssetCollection *)v52 initTransientWithAssets:0 orFetchResult:v47 title:v53 identifier:v49 albumKind:2 subtype:v51];

    [v54 _setCanShowCloudComments:v50];
    v72 = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    v56 = [PHCollectionList transientCollectionListWithCollections:v55 title:0];

    v17 = [(PHCollection *)PHAssetCollection fetchCollectionsInCollectionList:v56 options:v63];

    goto LABEL_69;
  }

  v60 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    v61 = NSStringFromSelector(a2);
    *buf = 138412546;
    v69 = v61;
    v70 = 2112;
    v71 = v8;
    _os_log_impl(&dword_19C86F000, v60, OS_LOG_TYPE_DEBUG, "##### %@: Unhandled album %@", buf, 0x16u);
  }

  v17 = 0;
LABEL_69:

  return v17;
}

void __103__PHFetchResult_PHAdoptionUtilities__pl_fetchResultContainingAssetContainer_photoLibrary_includeTrash___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  [*(a1 + 32) addObject:v3];
}

void __103__PHFetchResult_PHAdoptionUtilities__pl_fetchResultContainingAssetContainer_photoLibrary_includeTrash___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  [*(a1 + 32) addObject:v3];
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = PHFetchResult;
  v3 = [(PHFetchResult *)&v15 description];
  prefetchCount = self->_prefetchCount;
  if (prefetchCount)
  {
    v5 = [v3 stringByAppendingFormat:@" prefetchCount=%lu", -[NSNumber unsignedLongValue](prefetchCount, "unsignedLongValue")];

    v3 = v5;
  }

  fetchedObjects = self->_fetchedObjects;
  if (fetchedObjects)
  {
    [v3 stringByAppendingFormat:@" count=%lu", -[PHBatchFetchingArray count](fetchedObjects, "count")];
  }

  else
  {
    [v3 stringByAppendingFormat:@" count=(NA)", v14];
  }
  v7 = ;

  v8 = [(PHFetchResult *)self containerIdentifier];
  v9 = [(PHFetchResult *)self collectionFetchType];
  v10 = [(PHFetchResult *)self query];
  v11 = [v10 shortDescription];
  v12 = [v7 stringByAppendingFormat:@" CID=%@, CFT=%ld query=%@", v8, v9, v11];

  return v12;
}

- (id)localIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self;
  v5 = [(PHFetchResult *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) localIdentifier];
        [v3 addObject:v9];
      }

      v6 = [(PHFetchResult *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v10;
}

- (id)calculateMediaTypeCounts
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = [(PHFetchResult *)self fetchedObjectIDs];
  if ([v4 count])
  {
    v5 = [(PHFetchResult *)self photoLibrary];
    v6 = [v5 photoLibraryForCurrentQueueQoS];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__PHFetchResult_calculateMediaTypeCounts__block_invoke;
    v11[3] = &unk_1E75AAFA8;
    v12 = v4;
    v7 = v6;
    v13 = v7;
    v14 = self;
    v15 = &v26;
    v16 = &v22;
    v17 = &v18;
    [v7 performBlockAndWait:v11];
  }

  objc_autoreleasePoolPop(v3);
  v8 = [PHFetchResultMediaTypeCounts alloc];
  v9 = [(PHFetchResultMediaTypeCounts *)v8 initWithPhotosCount:v27[3] videosCount:v23[3] audiosCount:v19[3]];
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v9;
}

void __41__PHFetchResult_calculateMediaTypeCounts__block_invoke(uint64_t a1)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE540] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setIncludesPendingChanges:0];
  [v4 setPropertiesToGroupBy:&unk_1F102E468];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(self) IN %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"kind"];
  v7 = MEMORY[0x1E696ABC8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v6];
  v9 = [v7 expressionForFunction:@"count:" arguments:v8];

  v10 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v10 setName:@"count"];
  [v10 setExpression:v9];
  [v10 setExpressionResultType:200];
  v44[0] = @"kind";
  v44[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  [v4 setPropertiesToFetch:v11];

  [v4 setResultType:2];
  v12 = [*(a1 + 40) managedObjectContext];
  v36 = 0;
  v13 = [v12 executeFetchRequest:v4 error:&v36];
  v14 = v36;

  if (v13)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v27 = v14;
      v28 = v9;
      v29 = v6;
      v30 = v4;
      v18 = *v33;
      obj = v15;
      while (1)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = [v20 objectForKeyedSubscript:@"kind"];
          v22 = [v21 intValue];

          v23 = [v20 objectForKeyedSubscript:@"count"];
          v24 = [v23 intValue];

          v25 = a1 + 56;
          if (!v22)
          {
            goto LABEL_12;
          }

          if (v22 == 2)
          {
            v25 = a1 + 72;
LABEL_12:
            *(*(*v25 + 8) + 24) = v24;
            continue;
          }

          v25 = a1 + 64;
          if (v22 == 1)
          {
            goto LABEL_12;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (!v17)
        {
          v6 = v29;
          v4 = v30;
          v9 = v28;
          v14 = v27;
          v15 = obj;
          break;
        }
      }
    }
  }

  else
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 48);
      *buf = 138412802;
      v39 = v4;
      v40 = 2112;
      v41 = v26;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Error executing media type fetch %@ for %@: %@", buf, 0x20u);
    }
  }
}

- (void)_updateMediaTypeCountsIfNeeded
{
  v3 = [(PHFetchResult *)self _mediaTypeCounts];
  if (!v3)
  {
    v5 = [(PHFetchResult *)self calculateMediaTypeCounts];
    v4 = v5;
    PLRunWithUnfairLock();
  }
}

void __47__PHFetchResult__updateMediaTypeCountsIfNeeded__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 88);
  v2 = (v1 + 88);
  if (!v3)
  {
    objc_storeStrong(v2, *(a1 + 40));
  }
}

- (id)_mediaTypeCounts
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

- (NSUInteger)countOfAssetsWithMediaType:(PHAssetMediaType)mediaType
{
  [(PHFetchResult *)self _updateMediaTypeCountsIfNeeded];

  return [(PHFetchResult *)self cachedCountOfAssetsWithMediaType:mediaType];
}

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)a3
{
  v5 = [(PHFetchResult *)self _mediaTypeCounts];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v8 = [v5 videosCount];
        goto LABEL_12;
      }

      if (a3 == 3)
      {
        v8 = [v5 audiosCount];
        goto LABEL_12;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v8 = [v5 photosCount];
LABEL_12:
        v7 = v8;
      }
    }

    else
    {
      v9 = [(PHFetchResult *)self count];
      v10 = [v6 photosCount];
      v11 = [v6 videosCount];
      v7 = v9 - [v6 audiosCount] - (v10 + v11);
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)getCountOfCollectionsWithCollectionTypes:(id)a3
{
  v4 = a3;
  if (self->_albumsCount == 0x7FFFFFFFFFFFFFFFLL || self->_sharedAlbumsCount == 0x7FFFFFFFFFFFFFFFLL || self->_foldersCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(PHFetchResult *)self objectIDs];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(PHFetchResult *)self photoLibrary];
      v8 = [v7 photoLibraryForCurrentQueueQoS];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __58__PHFetchResult_getCountOfCollectionsWithCollectionTypes___block_invoke;
      v10[3] = &unk_1E75AB248;
      v11 = v4;
      v12 = self;
      v13 = v8;
      v9 = v8;
      [v9 performBlockAndWait:v10];
    }
  }
}

void __58__PHFetchResult_getCountOfCollectionsWithCollectionTypes___block_invoke(uint64_t a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE458] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setFetchBatchSize:100];
  [v4 setIncludesPendingChanges:0];
  v49[0] = @"kind";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  [v4 setPropertiesToGroupBy:v5];

  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"kind"];
  v7 = MEMORY[0x1E696ABC8];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v6];
  v9 = [v7 expressionForFunction:@"count:" arguments:v8];

  v10 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v10 setName:@"count"];
  [v10 setExpression:v9];
  [v10 setExpressionResultType:200];
  v48[0] = @"kind";
  v48[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
  [v4 setPropertiesToFetch:v11];

  [v4 setResultType:2];
  v12 = MEMORY[0x1E696AE18];
  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) objectIDs];
  v15 = [v12 predicateWithFormat:@"%K in %@ AND self IN %@ AND trashedState == %d", @"kind", v13, v14, 0];
  [v4 setPredicate:v15];

  *(*(a1 + 40) + 96) = 0;
  v16 = [*(a1 + 48) managedObjectContext];
  v40 = 0;
  v17 = [v16 executeFetchRequest:v4 error:&v40];
  v18 = v40;

  if (v17)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v32 = v18;
      v33 = v10;
      v34 = v9;
      v35 = v4;
      v22 = *v37;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v36 + 1) + 8 * i);
          v25 = [v24 objectForKeyedSubscript:@"kind"];
          v26 = [v24 objectForKeyedSubscript:@"count"];
          v27 = [v26 intValue];

          v28 = +[PHFetchResult _typesToCountForAssetCollections];
          if ([v25 integerValue] == 1505)
          {
            *(*(a1 + 40) + 104) = v27;
          }

          else if ([v25 integerValue] == 4000)
          {
            *(*(a1 + 40) + 112) = v27;
          }

          else if ([v28 containsObject:v25])
          {
            *(*(a1 + 40) + 96) += v27;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v21);
      v4 = v35;
      v10 = v33;
      v9 = v34;
      v18 = v32;
    }
  }

  else
  {
    v19 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 40);
      *buf = 138412802;
      v43 = v4;
      v44 = 2112;
      v45 = v29;
      v46 = 2112;
      v47 = v18;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Error executing count of collections fetch %@ for %@: %@", buf, 0x20u);
    }
  }

  v30 = *(a1 + 40);
  v31 = *(v30 + 96);
  if (!v31)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v30 + 96) = v31;
}

- (unint64_t)cachedCountOfCollectionsWithCollectionTypes:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PHFetchResult_cachedCountOfCollectionsWithCollectionTypes___block_invoke;
  aBlock[3] = &unk_1E75AAF58;
  aBlock[4] = &v11;
  v5 = _Block_copy(aBlock);
  v6 = +[PHFetchResult _typesToCountForAssetCollections];
  v7 = [v4 intersectsSet:v6];

  if (v7)
  {
    v5[2](v5, self->_albumsCount);
  }

  if ([v4 containsObject:&unk_1F102DAC0])
  {
    v5[2](v5, self->_sharedAlbumsCount);
  }

  if ([v4 containsObject:&unk_1F102DD48])
  {
    v5[2](v5, self->_foldersCount);
  }

  v8 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __61__PHFetchResult_cachedCountOfCollectionsWithCollectionTypes___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = *(*(result + 32) + 8);
    if (*(v2 + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(v2 + 24);
    }

    *(v2 + 24) = v3 + a2;
  }

  return result;
}

- (unint64_t)countOfCollectionsLists
{
  v3 = +[PHFetchResult _typesToCountForListCollections];
  [(PHFetchResult *)self getCountOfCollectionsWithCollectionTypes:v3];
  v4 = [(PHFetchResult *)self cachedCountOfCollectionsWithCollectionTypes:v3];

  return v4;
}

- (unint64_t)countOfAssetCollections
{
  v3 = +[PHFetchResult _typesToCountForAssetCollections];
  [(PHFetchResult *)self getCountOfCollectionsWithCollectionTypes:v3];
  v4 = [(PHFetchResult *)self cachedCountOfCollectionsWithCollectionTypes:v3];

  return v4;
}

- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v8 = block;
  v9 = s;
  v10 = [(PHFetchResult *)self fetchedObjects];
  [v10 enumerateObjectsAtIndexes:v9 options:opts usingBlock:v8];
}

- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v6 = block;
  v7 = [(PHFetchResult *)self fetchedObjects];
  [v7 enumerateObjectsWithOptions:opts usingBlock:v6];
}

- (void)enumerateObjectsUsingBlock:(void *)block
{
  v4 = block;
  v5 = [(PHFetchResult *)self fetchedObjects];
  [v5 enumerateObjectsUsingBlock:v4];
}

- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes
{
  v4 = indexes;
  v5 = [(PHFetchResult *)self fetchedObjects];
  v6 = [v5 objectsAtIndexes:v4];

  return v6;
}

- (id)lastObject
{
  v2 = [(PHFetchResult *)self fetchedObjects];
  v3 = [v2 lastObject];

  return v3;
}

- (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = anObject;
  v8 = [(PHFetchResult *)self fetchedObjects];
  v9 = [v8 indexOfObject:v7 inRange:{location, length}];

  return v9;
}

- (NSUInteger)indexOfObject:(id)anObject
{
  v4 = anObject;
  v5 = [(PHFetchResult *)self fetchedObjects];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (BOOL)containsObject:(id)anObject
{
  v4 = anObject;
  v5 = [(PHFetchResult *)self fetchedObjects];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)objectAtIndexedSubscript:(NSUInteger)idx
{
  v4 = [(PHFetchResult *)self fetchedObjects];
  v5 = [v4 objectAtIndex:idx];

  return v5;
}

- (id)objectAtIndex:(NSUInteger)index
{
  v4 = [(PHFetchResult *)self fetchedObjects];
  v5 = [v4 objectAtIndex:index];

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(PHFetchResult *)self fetchedObjects];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (PHFetchResult)fetchResultWithChangeHandlingValue:(id)a3
{
  v4 = a3;
  v5 = [PHFetchResult alloc];
  v6 = [(PHFetchResult *)self query];
  v7 = [(PHFetchResult *)self photoLibrary];
  v8 = [(PHFetchResult *)v5 initWithQuery:v6 library:v7 oids:v4 registerIfNeeded:0 usingManagedObjectContext:0];

  return v8;
}

- (unint64_t)possibleChangesForChange:(id)a3 propertiesFetchResult:(id)a4
{
  v118 = *MEMORY[0x1E69E9840];
  v88 = a3;
  v86 = a4;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v83 = self;
  if (([(PHFetchResult *)self collectionFetchType]- 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v79 = [(PHFetchResult *)self fetchRequest];
    v89 = [v79 entity];
    if (v89)
    {
      v87 = [(PHFetchResult *)self query];
      v81 = [(PHFetchResult *)self fetchedObjectIDsSet];
      v84 = [v88 changedRelationshipsByOID];
      v85 = [v88 changedAttributesByOID];
      v80 = [(PHFetchResult *)self containerIdentifier];
      v7 = [v87 containerToObjectRelationshipIndexValue];
      if (!v80)
      {
        goto LABEL_14;
      }

      v8 = v7;
      if (v7)
      {
        v9 = [v88 updatedObjectIDs];
        v10 = [v9 containsObject:v80];

        if (v10)
        {
          v11 = [v84 objectForKeyedSubscript:v80];
          v12 = [v11 unsignedLongLongValue];

          if (([v87 containerToObjectRelationshipIndexValue] & v12) != 0)
          {
            v109[3] |= 7uLL;
          }
        }
      }

      v13 = [v85 objectForKeyedSubscript:v80];
      v14 = [v13 unsignedLongLongValue];

      v15 = [v87 containerSortingAttributesIndexValue];
      v16 = [v87 containerUserQueryIndexValue];
      if ((v15 & v14) != 0)
      {
        v109[3] |= 4uLL;
      }

      if ((v16 & v14) != 0)
      {
        v109[3] |= 3uLL;
      }

      if (!v8)
      {
LABEL_14:
        v17 = [v88 insertedObjectIDs];
        v18 = _oidsContainEntity(v17, v89);

        if (v18)
        {
          if (v86)
          {
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v19 = [v88 insertedObjectIDs];
            v20 = [v19 countByEnumeratingWithState:&v104 objects:v117 count:16];
            if (v20)
            {
              v21 = *v105;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v105 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = *(*(&v104 + 1) + 8 * i);
                  v24 = [v23 entity];
                  v25 = [v24 isKindOfEntity:v89];

                  if (v25)
                  {
                    v103 = 0;
                    v26 = [v86 evaluateQuery:v87 withObjectID:v23 outMissingPropertyNames:&v103];
                    v27 = v103;
                    if ([v27 count])
                    {
                      v30 = PLPhotoKitGetLog();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412802;
                        *&buf[4] = v23;
                        *&buf[12] = 2112;
                        *&buf[14] = v27;
                        *&buf[22] = 2112;
                        v114 = v87;
                        _os_log_impl(&dword_19C86F000, v30, OS_LOG_TYPE_ERROR, "Unable to perform detailed change handling for inserts, falling back to refetch, oid:%@ missing properties:%@ for query:%@", buf, 0x20u);
                      }

LABEL_37:
                      v109[3] |= 1uLL;

                      goto LABEL_38;
                    }

                    if (v26)
                    {
                      goto LABEL_37;
                    }
                  }
                }

                v20 = [v19 countByEnumeratingWithState:&v104 objects:v117 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

LABEL_38:
          }

          else
          {
            v109[3] |= 1uLL;
          }
        }

        v31 = [v88 deletedObjectIDs];
        v32 = _oidsContainEntity(v31, v89);

        if (v32)
        {
          v109[3] |= 2uLL;
        }
      }

      v33 = [v88 updatedObjectIDs];
      if (v33)
      {
        v34 = [v87 filteringOids];
        v35 = [v88 updatedObjectIDs];
        v36 = [v34 intersectsSet:v35];

        if (v36)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v114 = __Block_byref_object_copy__52946;
          v115 = __Block_byref_object_dispose__52947;
          v116 = 0;
          v101[0] = 0;
          v101[1] = v101;
          v101[2] = 0x3032000000;
          v101[3] = __Block_byref_object_copy__52946;
          v101[4] = __Block_byref_object_dispose__52947;
          v102 = 0;
          v37 = [v87 filteringOids];
          v38 = [v88 updatedObjectIDs];
          v95[0] = MEMORY[0x1E69E9820];
          v95[1] = 3221225472;
          v95[2] = __64__PHFetchResult_possibleChangesForChange_propertiesFetchResult___block_invoke;
          v95[3] = &unk_1E75AAF30;
          v98 = v101;
          v99 = buf;
          v96 = v87;
          v97 = v84;
          v100 = &v108;
          [v37 ph_enumerateIntersectionWithSet:v38 usingBlock:v95];

          _Block_object_dispose(v101, 8);
          _Block_object_dispose(buf, 8);
        }
      }

      v39 = [v87 objectToContainerRelationshipIndexValue];
      v82 = [v87 filteringAttributesIndexValue];
      v40 = [v87 filteringRelationshipsIndexValue];
      v41 = [v87 sortingAttributesIndexValue];
      v42 = [v88 anyUpdatedObjectsWithChangedAttributes:v82 ofEntity:v89];
      v43 = v40 & ~v39;
      if ((v42 | [v88 anyUpdatedObjectsWithChangedRelationships:v43 ofEntity:v89]))
      {
        if (v86)
        {
          v78 = v41;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v44 = [v88 updatedObjectIDs];
          v45 = [v44 countByEnumeratingWithState:&v91 objects:v112 count:16];
          if (!v45)
          {
            goto LABEL_75;
          }

          v46 = *v92;
          while (1)
          {
            for (j = 0; j != v45; ++j)
            {
              if (*v92 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v91 + 1) + 8 * j);
              v49 = objc_autoreleasePoolPush();
              v50 = [v48 entity];
              v51 = [v50 isKindOfEntity:v89];

              if ((v51 & 1) == 0)
              {
                v59 = 5;
                goto LABEL_71;
              }

              v52 = [v85 objectForKeyedSubscript:v48];
              v53 = [v52 unsignedLongLongValue];

              v54 = [v84 objectForKeyedSubscript:v48];
              v55 = [v54 unsignedLongLongValue];

              if (!(v53 & v82 | v55 & v43))
              {
                goto LABEL_67;
              }

              v90 = 0;
              v56 = [v86 evaluateQuery:v87 withObjectID:v48 outMissingPropertyNames:&v90];
              v57 = v90;
              if ([v57 count])
              {
                v58 = PLPhotoKitGetLog();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  *&buf[4] = v48;
                  *&buf[12] = 2114;
                  *&buf[14] = v57;
                  *&buf[22] = 2114;
                  v114 = v87;
                  _os_log_impl(&dword_19C86F000, v58, OS_LOG_TYPE_ERROR, "Unable to perform detailed change analysis, falling back to refetch, oid:%@ missing properties:%{public}@ for query:%{public}@", buf, 0x20u);
                }

                v109[3] |= 7uLL;
                v59 = 4;
                goto LABEL_71;
              }

              if ([v81 containsObject:v48])
              {
                if ((v56 & 1) == 0)
                {
                  v109[3] |= 2uLL;
                }

                if ((v53 & v78) == 0)
                {
                  goto LABEL_66;
                }

                v60 = 4;
                goto LABEL_65;
              }

              if (v56)
              {
                v60 = 1;
LABEL_65:
                v109[3] |= v60;
              }

LABEL_66:

LABEL_67:
              v61 = v109[3];
              if ((v61 & 8) == 0)
              {
                v62 = [v81 containsObject:v48];
                v61 = v109[3];
                if (v62)
                {
                  v61 |= 8uLL;
                  v109[3] = v61;
                }
              }

              v59 = 4 * (v61 == 15);
LABEL_71:
              objc_autoreleasePoolPop(v49);
              if (v59 != 5 && v59)
              {
                goto LABEL_75;
              }
            }

            v45 = [v44 countByEnumeratingWithState:&v91 objects:v112 count:16];
            if (!v45)
            {
LABEL_75:

              goto LABEL_82;
            }
          }
        }

        v63 = [v88 updatedObjectIDs];
        v64 = [v63 isSubsetOfSet:v81];

        if (v64)
        {
          v65 = v109;
          v66 = v109[3] | 6;
        }

        else
        {
          v67 = [v88 updatedObjectIDs];
          v68 = [v67 intersectsSet:v81];

          v65 = v109;
          v69 = v109[3];
          if (v68)
          {
            v66 = v69 | 7;
          }

          else
          {
            v66 = v69 | 1;
          }
        }

        v65[3] = v66;
      }

LABEL_82:
      v70 = [(PHFetchResult *)v83 _possibleChangesFromDetectionCriteriaForChange:v88];
      v109[3] |= v70;
      v71 = [v87 possibleChangesForChange:v88];
      v72 = v109[3];
      v6 = v72 | v71;
      v109[3] = v72 | v71;
      if (((v72 | v71) & 2) == 0)
      {
        v73 = [v88 deletedObjectIDs];
        v74 = [v73 intersectsSet:v81];

        v6 = v109[3];
        if (v74)
        {
          v6 |= 2uLL;
          v109[3] = v6;
        }
      }

      if ((v6 & 8) == 0)
      {
        v75 = [v88 updatedObjectIDs];
        v76 = [v75 intersectsSet:v81];

        v6 = v109[3];
        if (v76)
        {
          v6 |= 8uLL;
          v109[3] = v6;
        }
      }
    }

    else
    {
      v28 = PLPhotoKitGetLog();
      v87 = v28;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = @"non-null";
        if (!v79)
        {
          v29 = @"nil";
        }

        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_ERROR, "returning PHFetchResultChangeKindNone because entity is nil for change with %{public}@ fetchRequest", buf, 0xCu);
      }

      v6 = 0;
    }

    goto LABEL_90;
  }

  v6 = v109[3];
LABEL_90:
  _Block_object_dispose(&v108, 8);

  return v6;
}

void __64__PHFetchResult_possibleChangesForChange_propertiesFetchResult___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 48) + 8) + 40);
  v21 = v5;
  v7 = [v5 entity];

  if (v6 != v7)
  {
    v8 = [v21 entity];
    v9 = [v8 ph_baseEntity];
    v10 = [v9 name];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [v21 entity];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = [*(a1 + 32) filteringRelationshipsIndexValueByBaseEntityName];
  v17 = [v16 objectForKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];
  v18 = [v17 unsignedLongLongValue];

  v19 = [*(a1 + 40) objectForKeyedSubscript:v21];
  v20 = [v19 unsignedLongLongValue];

  if ((v20 & v18) != 0)
  {
    *(*(*(a1 + 64) + 8) + 24) |= 1uLL;
    *(*(*(a1 + 64) + 8) + 24) |= 2uLL;
    *a3 = 1;
  }
}

- (unint64_t)_possibleChangesFromDetectionCriteriaForChange:(id)a3
{
  v4 = a3;
  v5 = [(PHFetchResult *)self query];
  v6 = [v5 fetchOptions];
  v7 = [v6 changeDetectionCriteria];
  v8 = [v5 photoLibrary];
  v9 = [v8 managedObjectContext];
  v10 = [v4 intersectsWithDetectionCriteria:v7 managedObjectContext:v9];

  if (v10)
  {
    v11 = 15;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setRegisteredForChangeNotificationDeltas:(BOOL)a3
{
  if (self->_registeredForChangeNotificationDeltas != a3)
  {
    v3 = a3;
    v5 = [(PHFetchResult *)self photoLibrary];
    v6 = v5;
    if (v3)
    {
      [v5 registerFetchResult:self];
    }

    else
    {
      [v5 unregisterFetchResult:self];
    }

    self->_registeredForChangeNotificationDeltas = v3;
  }
}

- (id)_createFetchedPropertyObjectsWithClass:(Class)a3 fetchedObjectIDs:(id)a4
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"batchSize";
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:{-[objc_class batchSize](a3, "batchSize")}];
  v16[0] = v8;
  v15[1] = @"cacheSize";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[objc_class cacheSize](a3, "cacheSize")}];
  v15[2] = @"fetchedObjectBatchPropertySetClass";
  v16[1] = v9;
  v16[2] = a3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v11 = [PHBatchFetchingArray alloc];
  v12 = [(PHFetchResult *)self photoLibrary];
  v13 = [(PHBatchFetchingArray *)v11 initWithOIDs:v7 options:v10 photoLibrary:v12];

  return v13;
}

- (BOOL)_canCreateFetchedPropertyObjectsWithClass:(Class)a3
{
  v5 = [(PHFetchResult *)self fetchedObjectIDs];
  v6 = [v5 count];
  if (v6 == [(PHFetchResult *)self count])
  {
    v7 = [(PHFetchResult *)self fetchType];
    v8 = [(objc_class *)a3 fetchType];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *__32__PHFetchResult_thumbnailAssets__block_invoke(void *a1)
{
  result = a1[4];
  if (!result[9])
  {
    *(a1[4] + 72) = [result _createFetchedPropertyObjectsWithClass:a1[6] fetchedObjectIDs:a1[5]];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)fetchPropertiesForPropertySetClass:(Class)a3 forObjectsAtIndexes:(id)a4
{
  v6 = a4;
  if ([(PHFetchResult *)self _canCreateFetchedPropertyObjectsWithClass:a3])
  {
    v7 = [(PHFetchResult *)self fetchedObjectIDs];
    v8 = [v7 objectsAtIndexes:v6];

    v9 = [(PHFetchResult *)self _createFetchedPropertyObjectsWithClass:a3 fetchedObjectIDs:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fetchedPropertiesForPropertySetClass:(Class)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__52946;
  v18 = __Block_byref_object_dispose__52947;
  v19 = [(NSDictionary *)self->_fetchedPropertySetsCache objectForKeyedSubscript:?];
  if (!v15[5] && [(PHFetchResult *)self _canCreateFetchedPropertyObjectsWithClass:a3])
  {
    v5 = [(PHFetchResult *)self fetchedObjectIDs];
    isolationQueue = self->_isolationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__PHFetchResult_fetchedPropertiesForPropertySetClass___block_invoke;
    v10[3] = &unk_1E75AAED8;
    v12 = &v14;
    v13 = a3;
    v10[4] = self;
    v11 = v5;
    v7 = v5;
    dispatch_sync(isolationQueue, v10);
  }

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __54__PHFetchResult_fetchedPropertiesForPropertySetClass___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 32) _createFetchedPropertyObjectsWithClass:*(a1 + 56) fetchedObjectIDs:*(a1 + 40)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(*(a1 + 32) + 48) mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v14 = v10;

    [v14 setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 56)];
    v11 = [v14 copy];
    v12 = *(a1 + 32);
    v13 = *(v12 + 48);
    *(v12 + 48) = v11;
  }
}

- (id)objectIDAtIndex:(unint64_t)a3
{
  v4 = [(PHFetchResult *)self fetchedObjectIDs];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (NSSet)fetchedObjectIDsSet
{
  v2 = [(PHFetchResult *)self fetchedObjects];
  v3 = [v2 oidsSet];

  return v3;
}

- (id)objectIDs
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [(PHFetchResult *)self fetchedObjectIDs];
  v4 = [v2 orderedSetWithArray:v3];

  return v4;
}

- (id)containerIdentifier
{
  v2 = [(PHFetchResult *)self query];
  v3 = [v2 containerIdentifier];

  return v3;
}

- (int64_t)collectionFetchType
{
  v2 = [(PHFetchResult *)self query];
  v3 = [v2 collectionFetchType];

  return v3;
}

- (id)fetchedObjectsUsingManagedObjectContext:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PHFetchResult_fetchedObjectsUsingManagedObjectContext___block_invoke;
  v10[3] = &unk_1E75AAEB0;
  v10[4] = self;
  v11 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v10);
  fetchedObjects = self->_fetchedObjects;
  v8 = fetchedObjects;

  return fetchedObjects;
}

void __57__PHFetchResult_fetchedObjectsUsingManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 40))
  {
    v4 = *(v2 + 56);
    if (!v4)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v7 = [*(a1 + 32) photoLibrary];
        v6 = [v7 managedObjectContextForCurrentQueueQoS];
      }

      v11 = [PHFetchResult fetchObjectIDs:*(a1 + 32) inManagedObjectContext:v6];

      v4 = v11;
    }

    v12 = v4;
    v8 = [PHFetchResult _batchFetchingArrayForObjectIDs:v4 fetchResult:*(a1 + 32)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (NSArray)fetchSortDescriptors
{
  v2 = [(PHFetchResult *)self fetchRequest];
  v3 = [v2 sortDescriptors];

  return v3;
}

- (id)changeHandlingValueUsingSeedOids:(id)a3 withChange:(id)a4 usingManagedObjectContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PHFetchResult *)self query];
  v12 = [v11 updatedQueryWithChange:v9];

  v13 = [PHFetchResult alloc];
  v14 = [(PHFetchResult *)self photoLibrary];
  v15 = [(PHFetchResult *)v13 initWithQuery:v12 library:v14 oids:v10 registerIfNeeded:0 usingManagedObjectContext:v8];

  return v15;
}

- (id)changeHandlingKey
{
  v10 = *MEMORY[0x1E69E9840];
  changeHandlingKey = self->_changeHandlingKey;
  if (!changeHandlingKey)
  {
    v4 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Missing required change handling key for fetch result %@", &v8, 0xCu);
    }

    changeHandlingKey = self->_changeHandlingKey;
  }

  v5 = [objc_opt_class() emptyFetchResultChangeHandlingKey];

  if (changeHandlingKey == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_changeHandlingKey;
  }

  return v6;
}

- (void)prefetchThumbnailAssetsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PHFetchResult *)self thumbnailAssets];
  [v5 prefetchObjectsAtIndexes:v4];
}

- (void)prefetchObjectsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PHFetchResult *)self fetchedObjects];
  [v5 prefetchObjectsAtIndexes:v4];
}

- (id)copyWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(PHFetchResult *)self query];
  v6 = [v5 fetchOptions];
  v7 = [v6 chunkSizeForFetch];

  v8 = [v5 fetchOptions];
  v9 = [v8 cacheSizeForFetch];

  v10 = [v4 objectForKeyedSubscript:@"chunkSizeForFetch"];
  v11 = [v4 objectForKeyedSubscript:@"cacheSizeForFetch"];
  v12 = [v4 objectForKeyedSubscript:@"invalidateCache"];
  v13 = [v4 objectForKeyedSubscript:@"registerIfNeeded"];

  if (v10 && v7 != [v10 integerValue] || v11 && v9 != objc_msgSend(v11, "integerValue") || v12 && (objc_msgSend(v12, "BOOLValue") & 1) != 0)
  {
    v14 = 0;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v13 == 0;
    if (!v5)
    {
LABEL_13:
      v18 = [(PHFetchResult *)self copy];
      goto LABEL_25;
    }
  }

  if (v14)
  {
    goto LABEL_13;
  }

  v15 = [v5 fetchOptions];
  if (v15)
  {
    v16 = [v5 fetchOptions];
    v17 = [v16 copy];
  }

  else
  {
    v16 = [(PHFetchResult *)self photoLibrary];
    v17 = [v16 librarySpecificFetchOptions];
  }

  v19 = v17;

  if (v10)
  {
    [v19 setChunkSizeForFetch:{objc_msgSend(v10, "integerValue")}];
  }

  if (v11)
  {
    [v19 setCacheSizeForFetch:{objc_msgSend(v11, "integerValue")}];
  }

  v20 = [v5 copy];
  [v20 setFetchOptions:v19];
  v21 = [(PHFetchResult *)self fetchedObjectIDs];
  v29 = v13;
  v30 = v12;
  if (v13)
  {
    v22 = [v13 BOOLValue];
  }

  else
  {
    v22 = [(PHFetchResult *)self isRegisteredForChangeNotificationDeltas];
  }

  v23 = v22;
  v24 = [PHFetchResult alloc];
  v25 = [(PHFetchResult *)self photoLibrary];
  v18 = [(PHFetchResult *)v24 initWithQuery:v20 library:v25 oids:v21 registerIfNeeded:v23 usingManagedObjectContext:0];

  if ([v21 count])
  {
    v26 = [(PHFetchResult *)self _mediaTypeCounts];
    mediaTypeCounts = v18->_mediaTypeCounts;
    v18->_mediaTypeCounts = v26;
  }

  v13 = v29;
  v12 = v30;
LABEL_25:

  return v18;
}

- (PHFetchResult)initWithMediaTypeCounts:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = [(PHFetchResult *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaTypeCounts, a3);
  }

  return v8;
}

- (PHFetchResult)initWithExistingFetchResult:(id)a3 filteredObjectIDs:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 query];
  v9 = [v8 copy];

  if (v9)
  {
    v10 = [v9 fetchOptions];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v7];
    v12 = v10;
    v13 = v11;
    v14 = v13;
    if (v12)
    {
      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _appendFetchOptionsPredicate(PHFetchOptions *__strong, NSPredicate *__strong)"}];
      [v29 handleFailureInFunction:v30 file:@"PHFetchResult.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"fetchOptions"}];

      if (v14)
      {
        goto LABEL_4;
      }
    }

    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _appendFetchOptionsPredicate(PHFetchOptions *__strong, NSPredicate *__strong)"}];
    [v31 handleFailureInFunction:v32 file:@"PHFetchResult.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];

LABEL_4:
    v15 = [v12 predicate];
    v16 = [v12 internalPredicate];
    v17 = v16;
    if (v15)
    {
      v18 = MEMORY[0x1E696AB28];
      v33 = v15;
      v34 = v14;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:2];
      v20 = [v18 andPredicateWithSubpredicates:v19];
      [v12 setPredicate:v20];
    }

    else
    {
      if (!v16)
      {
        [v12 setPredicate:v14];
        goto LABEL_11;
      }

      v21 = MEMORY[0x1E696AB28];
      v33 = v16;
      v34 = v14;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:2];
      v20 = [v21 andPredicateWithSubpredicates:v19];
      [v12 setInternalPredicate:v20];
    }

LABEL_11:
    v22 = [v6 photoLibrary];
    v23 = -[PHFetchResult initWithQuery:library:oids:registerIfNeeded:usingManagedObjectContext:](self, "initWithQuery:library:oids:registerIfNeeded:usingManagedObjectContext:", v9, v22, v7, [v6 isRegisteredForChangeNotificationDeltas], 0);

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v6 identifier];
  }

  else
  {
    v12 = 0;
  }

  v24 = [PHManualFetchResult alloc];
  v25 = [v6 photoLibrary];
  v26 = [v6 fetchType];
  v27 = [v6 fetchPropertySets];
  v23 = -[PHManualFetchResult initWithOids:photoLibrary:fetchType:fetchPropertySets:identifier:registerIfNeeded:](v24, "initWithOids:photoLibrary:fetchType:fetchPropertySets:identifier:registerIfNeeded:", v7, v25, v26, v27, v12, [v6 isRegisteredForChangeNotificationDeltas]);

LABEL_14:
  return v23;
}

- (PHFetchResult)initWithQuery:(id)a3 library:(id)a4 registerIfNeeded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 seedOIDs];
    v11 = [(PHFetchResult *)self initWithQuery:v8 library:v9 oids:v10 registerIfNeeded:v5 usingManagedObjectContext:0];
  }

  else
  {
    v12 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_FAULT, "PHFetchRequest initWithQuery: initialized with nil query", v14, 2u);
    }

    v11 = [(PHFetchResult *)self init];
  }

  return v11;
}

- (PHFetchResult)initWithQuery:(id)a3 library:(id)a4 oids:(id)a5 registerIfNeeded:(BOOL)a6 usingManagedObjectContext:(id)a7
{
  v8 = a6;
  v59 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(PHFetchResult *)self init];
  v17 = v16;
  if (!v16)
  {
LABEL_31:
    v37 = v17;
    goto LABEL_32;
  }

  v16->_preventsClearingOIDCache = 1;
  changeHandlingKey = v16->_changeHandlingKey;
  v16->_changeHandlingKey = 0;

  objc_storeStrong(&v17->_seedOIDs, a5);
  if (!v12)
  {
    [(PHFetchResult *)v17 _handleInitWithInvalidConfigurationDetails:@"nil query" library:v13];
LABEL_28:
    if (!v17->_fetchError && v8)
    {
      [(PHFetchResult *)v17 updateRegistrationForChangeNotificationDeltas];
    }

    goto LABEL_31;
  }

  v19 = [v12 copy];
  query = v17->_query;
  v17->_query = v19;

  v21 = [v12 fetchType];
  v22 = [v21 copy];
  fetchType = v17->_fetchType;
  v17->_fetchType = v22;

  v24 = [v12 fetchOptions];
  v25 = [v24 fetchPropertySetsAsSet];
  v26 = [v25 copy];
  fetchPropertySets = v17->_fetchPropertySets;
  v17->_fetchPropertySets = v26;

  v28 = [(PHQuery *)v17->_query fetchRequest];
  if (v28)
  {
    v29 = [_PHFetchRequestWrapper alloc];
    v30 = [(PHQuery *)v17->_query containerIdentifier];
    v31 = v30;
    if (!v30)
    {
      v31 = [(PHQuery *)v17->_query changeHandlingContainerIdentifier];
    }

    v32 = [(_PHFetchRequestWrapper *)v29 initWithFetchRequest:v28 containerIdentifier:v31 fetchPropertySets:v17->_fetchPropertySets];
    v33 = v17->_changeHandlingKey;
    v17->_changeHandlingKey = v32;

    if (!v30)
    {
    }

    if (!v17->_changeHandlingKey)
    {
      [(PHFetchResult *)v17 _handleInitWithInvalidConfigurationDetails:@"failed to create _PHFetchRequestWrapper" library:v13];
    }

LABEL_19:
    if (!v17->_fetchError)
    {
      if (v15)
      {
        v47 = v15;
      }

      else
      {
        v48 = [v12 photoLibrary];
        v47 = [v48 managedObjectContextForCurrentQueueQoS];
      }

      v49 = [v12 fetchOptions];
      v50 = [v49 shouldPrefetchCount];

      if (v50)
      {
        v51 = [PHFetchResult fetchObjectCount:v17 inManagedObjectContext:v47];
        prefetchCount = v17->_prefetchCount;
        v17->_prefetchCount = v51;
      }

      else
      {
        v53 = [(PHFetchResult *)v17 fetchedObjectsUsingManagedObjectContext:v47];
      }
    }

    goto LABEL_28;
  }

  v34 = [(PHQuery *)v17->_query searchIndexLookupIdentifier];

  if (!v34)
  {
    v38 = [(PHFetchResult *)v17 photoLibrary];
    v39 = [v38 unavailabilityReason];

    if (v39)
    {
      v40 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v55 = 138412546;
        v56 = v39;
        v57 = 2112;
        v58 = v17;
        _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_ERROR, "PHFetchResult init after library became unavailable, setting fetchError to %@\n\tself: %@", &v55, 0x16u);
      }

      objc_storeStrong(&v17->_fetchError, v39);
    }

    else
    {
      [(PHFetchResult *)v17 _handleInitWithInvalidConfigurationDetails:@"query has nil fetch request" library:v13];
      v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
      fetchError = v17->_fetchError;
      v17->_fetchError = v41;
    }

    v43 = [PHBatchFetchingArray alloc];
    v44 = [v12 photoLibrary];
    v45 = [(PHBatchFetchingArray *)v43 initWithOIDs:MEMORY[0x1E695E0F0] options:MEMORY[0x1E695E0F8] photoLibrary:v44];
    fetchedObjects = v17->_fetchedObjects;
    v17->_fetchedObjects = v45;

    goto LABEL_19;
  }

  v35 = [(PHQuery *)v17->_query searchIndexLookupIdentifier];
  v36 = [v12 fetchOptions];
  v37 = [PHAsset fetchAssetsForSearchLookupIdentifier:v35 options:v36];

LABEL_32:
  return v37;
}

- (void)_handleInitWithInvalidConfigurationDetails:(id)a3 library:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 photoLibraryBundle];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__52946;
  v35 = __Block_byref_object_dispose__52947;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__52946;
  v29 = __Block_byref_object_dispose__52947;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__PHFetchResult__handleInitWithInvalidConfigurationDetails_library___block_invoke;
  v24[3] = &unk_1E75AAE10;
  v24[4] = &v31;
  v24[5] = &v25;
  [v8 getNilPhotoLibraryReasonAndName:v24];
  v9 = [v8 persistentContainer];
  v23 = 0;
  v10 = [v9 sharedPersistentStoreCoordinatorWithError:&v23];
  v11 = v23;

  v12 = [v8 isSystemPhotoLibrary];
  v13 = MEMORY[0x1E696AEC0];
  if (v12)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(SPL: %@)", v26[5]];
  }

  else
  {
    v15 = [v7 wellKnownPhotoLibraryIdentifier];
    [v13 stringWithFormat:@"(L-%d: %@)", v15, v26[5]];
  }
  v14 = ;
  v16 = v26[5];
  v26[5] = v14;

  v17 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = v26[5];
    v19 = MEMORY[0x1E69BF220];
    v20 = [v8 libraryURL];
    v21 = [v19 descriptionWithFileURL:v20];
    v22 = v32[5];
    *buf = 138544642;
    v38 = v6;
    v39 = 2114;
    v40 = v18;
    v41 = 2112;
    v42 = v21;
    v43 = 2112;
    v44 = v22;
    v45 = 2112;
    v46 = v11;
    v47 = 2112;
    v48 = self;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_ERROR, "PHFetchResult init with invalid config: %{public}@, library: %{public}@ %@\n\terror: %@\n\tpsc error: %@\n\tself: %@", buf, 0x3Eu);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __68__PHFetchResult__handleInitWithInvalidConfigurationDetails_library___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (id)_typesToCountForListCollections
{
  if (_typesToCountForListCollections_onceToken != -1)
  {
    dispatch_once(&_typesToCountForListCollections_onceToken, &__block_literal_global_171);
  }

  v3 = _typesToCountForListCollections_typesToCountForListCollections;

  return v3;
}

uint64_t __48__PHFetchResult__typesToCountForListCollections__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F102DD48, 0}];
  v1 = _typesToCountForListCollections_typesToCountForListCollections;
  _typesToCountForListCollections_typesToCountForListCollections = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_typesToCountForAssetCollections
{
  if (_typesToCountForAssetCollections_onceToken != -1)
  {
    dispatch_once(&_typesToCountForAssetCollections_onceToken, &__block_literal_global_53034);
  }

  v3 = _typesToCountForAssetCollections_typesToCountForAssetCollections;

  return v3;
}

uint64_t __49__PHFetchResult__typesToCountForAssetCollections__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F102DAA8, &unk_1F102DAC0, &unk_1F102DAD8, &unk_1F102DAF0, &unk_1F102DB08, &unk_1F102DB20, &unk_1F102DB38, &unk_1F102DB50, &unk_1F102DB68, &unk_1F102DB80, &unk_1F102DB98, &unk_1F102DBB0, &unk_1F102DBC8, &unk_1F102DBE0, &unk_1F102DBF8, &unk_1F102DC10, &unk_1F102DC28, &unk_1F102DC40, &unk_1F102DC58, &unk_1F102DC70, &unk_1F102DC88, &unk_1F102DCA0, &unk_1F102DCB8, &unk_1F102DCD0, &unk_1F102DCE8, &unk_1F102DD00, &unk_1F102DD18, &unk_1F102DD30, 0}];
  v1 = _typesToCountForAssetCollections_typesToCountForAssetCollections;
  _typesToCountForAssetCollections_typesToCountForAssetCollections = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_batchFetchingArrayForObjectIDs:(id)a3 fetchResult:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 query];
  v8 = [v7 fetchOptions];

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v10 = [v5 fetchType];
  v11 = [v5 fetchPropertySets];
  v12 = v11;
  if (v10 && [v11 count])
  {
    v13 = [(objc_class *)[PHPhotoLibrary classForFetchType:?], "propertyFetchHintsForPropertySets:", v12];
  }

  else
  {
    v13 = 2;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  [v9 setObject:v14 forKeyedSubscript:@"propertyHint"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "chunkSizeForFetch")}];
  [v9 setObject:v15 forKeyedSubscript:@"batchSize"];

  if ([v8 cacheSizeForFetch] >= 1)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "cacheSizeForFetch")}];
    [v9 setObject:v16 forKeyedSubscript:@"cacheSize"];
  }

  v17 = [v5 query];
  v18 = [v17 overrideResultClassWithFetchType];

  if (v18)
  {
    [v9 setObject:NSClassFromString(v10) forKeyedSubscript:@"fetchedObjectClass"];
  }

  v19 = [PHBatchFetchingArray alloc];
  v20 = [v5 photoLibrary];
  v21 = [(PHBatchFetchingArray *)v19 initWithOIDs:v6 options:v9 photoLibrary:v20];

  return v21;
}

+ (id)filteredOIDsFrom:(id)a3 usingEntityName:(id)a4 withPhotoLibrary:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 allowedEntities];
  v10 = [v9 member:v8];

  if (v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

+ (id)cleanedAndSortedOIDsFrom:(id)a3 usingFetchOptions:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [PHPhotoLibrary uniquedOIDs:v5];
  v8 = [v6 customObjectIDSortOrder];
  if (v8)
  {
    v26 = v6;
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v32 + 1) + 8 * i);
          if ([v9 containsObject:v16])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v13);
    }

    v27 = v5;

    v17 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v28 + 1) + 8 * j);
          if (([v17 containsObject:v23] & 1) == 0)
          {
            [v10 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v20);
    }

    v6 = v26;
    v5 = v27;
  }

  else
  {
    v10 = v7;
  }

  v24 = v10;

  return v10;
}

+ (id)postProcessFetchedObjectIDs:(id)a3 forFetchResult:(id)a4 fetchRequest:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v7 count])
  {
    v15 = v7;
LABEL_19:
    v30 = [MEMORY[0x1E695DEC8] array];
    goto LABEL_20;
  }

  if ([v9 resultType] == 2 && (objc_msgSend(v7, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
  {
    v12 = [v7 firstObject];
    v13 = [v12 mapping];

    v14 = [v13 indexForKey:@"objectID"];
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v32 + 1) + 8 * i) valueAtIndex:{v14, v32}];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v15 = v7;
  }

  v22 = [v8 query];
  v23 = [v22 fetchOptions];
  v24 = [v23 relatedEntityName];

  if (!v24 || ([v15 firstObject], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "entity"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "name"), v27 = objc_claimAutoreleasedReturnValue(), v26, v25, !v27))
  {
    v27 = [v9 entityName];
  }

  v28 = [PHFetchResult cleanedAndSortedOIDsFrom:v15 usingFetchOptions:v23];
  v29 = [v22 photoLibrary];
  v30 = [PHFetchResult filteredOIDsFrom:v28 usingEntityName:v27 withPhotoLibrary:v29];

  if (!v30)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v30;
}

+ (id)fetchObjectIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(PHFetchResultInstrumentation);
  v10 = v7;
  if (v9)
  {
    objc_storeStrong(&v9->_fetchResult, a3);
    v11 = [v10 fetchOptions];
    v12 = [v11 importantFetchName];
    importantFetchName = v9->_importantFetchName;
    v9->_importantFetchName = v12;

    v14 = [v10 fetchOptions];
    v9->_suppressSlowFetchReports = [v14 suppressSlowFetchReports];

    v15 = [v10 fetchRequest];
    if (kdebug_is_enabled())
    {
      v16 = PLPhotoKitGetLog();
      v17 = os_signpost_id_generate(v16);

      v18 = v16;
      v19 = v18;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        v20 = [v15 entityName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v20;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "FetchObjectIDs", "Entity: %@", &buf, 0xCu);
      }

      log = v9->_fetchSignpost.log;
      v9->_fetchSignpost.log = v19;

      v9->_fetchSignpost.signpostId = v17;
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__52946;
  v39 = __Block_byref_object_dispose__52947;
  v40 = 0;
  v22 = [v10 fetchRequest];
  if (v22)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__PHFetchResult_fetchObjectIDs_inManagedObjectContext___block_invoke;
    v30[3] = &unk_1E75AAE68;
    p_buf = &buf;
    v31 = v9;
    v32 = v22;
    v33 = v8;
    v34 = v10;
    [v33 performBlockAndWait:v30];

    p_super = &v31->super;
  }

  else
  {
    p_super = PLPhotoKitGetLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *v41 = 0;
      _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_ERROR, "fetchObjectIDs found NULL fetch request, returning empty array", v41, 2u);
    }
  }

  v24 = [a1 postProcessFetchedObjectIDs:*(*(&buf + 1) + 40) forFetchResult:v10 fetchRequest:v22];
  if (v9 && kdebug_is_enabled())
  {
    v25 = v9->_fetchSignpost.log;
    v26 = v25;
    signpostId = v9->_fetchSignpost.signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v28 = [v24 count];
      *v41 = 134217984;
      v42 = v28;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v26, OS_SIGNPOST_INTERVAL_END, signpostId, "FetchObjectIDs", "%tu", v41, 0xCu);
    }
  }

  _Block_object_dispose(&buf, 8);

  return v24;
}

void __55__PHFetchResult_fetchObjectIDs_inManagedObjectContext___block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v18 = 0;
  if (v2)
  {
    v5 = v4;
    v6 = v3;
    objc_opt_class();
    v7 = [v5 _delegate];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    [v9 setPhotoKitFetchInstrumentation:v2];
    v10 = [v5 executeFetchRequest:v6 error:&v18];

    [v9 setPhotoKitFetchInstrumentation:0];
    v11 = v18;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = v11;
  v13 = *(a1[8] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;

  if (!*(*(a1[8] + 8) + 40))
  {
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = a1[5];
      v17 = a1[7];
      *buf = 138412802;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_FAULT, "Error executing fetch %@ for %@: %@", buf, 0x20u);
    }
  }
}

+ (id)fetchObjectCount:(id)a3 inManagedObjectContext:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PHFetchResultInstrumentation);
  v8 = v5;
  v9 = v8;
  if (v7)
  {
    v10 = [v8 fetchRequest];
    v11 = [v9 fetchOptions];
    v7->_suppressSlowFetchReports = [v11 suppressSlowFetchReports];

    if (kdebug_is_enabled())
    {
      v12 = PLPhotoKitGetLog();
      v13 = os_signpost_id_generate(v12);

      v14 = v12;
      v15 = v14;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        v16 = [v10 entityName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "FetchCount", "Entity: %@", &buf, 0xCu);
      }

      log = v7->_fetchSignpost.log;
      v7->_fetchSignpost.log = v15;

      v7->_fetchSignpost.signpostId = v13;
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x2020000000;
  v34 = 0;
  v18 = [v9 fetchRequest];
  if (v18)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__PHFetchResult_fetchObjectCount_inManagedObjectContext___block_invoke;
    v26[3] = &unk_1E75AAE68;
    p_buf = &buf;
    v27 = v7;
    v28 = v18;
    v29 = v6;
    v30 = v9;
    [v29 performBlockAndWait:v26];

    p_super = &v27->super;
  }

  else
  {
    p_super = PLPhotoKitGetLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *v35 = 0;
      _os_log_impl(&dword_19C86F000, p_super, OS_LOG_TYPE_ERROR, "fetchObjectCount found NULL fetch request, returning zero count", v35, 2u);
    }
  }

  if (v7)
  {
    v20 = *(*(&buf + 1) + 24);
    if (kdebug_is_enabled())
    {
      v21 = v7->_fetchSignpost.log;
      v22 = v21;
      signpostId = v7->_fetchSignpost.signpostId;
      if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
      {
        *v35 = 134217984;
        v36 = v20;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v22, OS_SIGNPOST_INTERVAL_END, signpostId, "FetchCount", "count: %tu", v35, 0xCu);
      }
    }
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(&buf + 1) + 24)];

  _Block_object_dispose(&buf, 8);

  return v24;
}

void __57__PHFetchResult_fetchObjectCount_inManagedObjectContext___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v13 = 0;
  v5 = v2;
  v6 = v4;
  if (v3)
  {
    [v3 willExecuteFetchRequestWithContext:v6];
    v7 = [v6 countForFetchRequest:v5 error:&v13];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 didFailFetchRequestWithContext:v6];
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
      [v3 didExecuteFetchRequestWithContext:v6 resultCount:v7 sqlString:0 bindVariables:0];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  *(*(a1[8] + 8) + 24) = v8;
  if (*(*(a1[8] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = a1[5];
      v12 = a1[7];
      *buf = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_FAULT, "Error executing count fetch %@ for %@: %@", buf, 0x20u);
    }
  }
}

+ (id)fetchObjectIDsForCombinableFetchResults:(id)a3 inManagedObjectContext:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__52946;
  v40 = __Block_byref_object_dispose__52947;
  v41 = 0;
  v7 = [v5 firstObject];
  v8 = [v7 query];
  v9 = [v8 photoLibrary];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v12)
  {
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v32 + 1) + 8 * i) query];
        [v10 addObject:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v12);
  }

  v16 = [PHQuery combinedFetchRequestForQueries:v10];
  if (v16)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __80__PHFetchResult_fetchObjectIDsForCombinableFetchResults_inManagedObjectContext___block_invoke;
    v24[3] = &unk_1E75AAE40;
    v25 = v6;
    v26 = v16;
    v27 = v7;
    v28 = v8;
    v29 = v11;
    v30 = v9;
    v31 = &v36;
    [v25 performBlockAndWait:v24];
    v17 = v37;
    v18 = v37[5];
    if (v18)
    {
      v19 = v18;
      v20 = v17[5];
      v17[5] = v19;
    }

    else
    {
      v22 = [MEMORY[0x1E695DF20] dictionary];
      v20 = v37[5];
      v37[5] = v22;
    }

    v21 = v37[5];
  }

  else
  {
    v21 = 0;
  }

  _Block_object_dispose(&v36, 8);

  return v21;
}

void __80__PHFetchResult_fetchObjectIDsForCombinableFetchResults_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v52 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v52];
  v5 = v52;
  v6 = v5;
  if (v4)
  {
    v37 = v5;
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v43 = a1;
    v42 = [*(a1 + 56) combinedQueryKeyPath];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v49;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v48 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"objectID"];
          v15 = [v13 objectForKeyedSubscript:v42];
          v16 = [v7 objectForKeyedSubscript:v15];
          if (!v16)
          {
            v16 = [MEMORY[0x1E695DF70] array];
            [v7 setObject:v16 forKeyedSubscript:v15];
          }

          [v16 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v10);
    }

    v41 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 64), "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = *(a1 + 64);
    v17 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v17)
    {
      v18 = v17;
      v40 = *v45;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v45 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v44 + 1) + 8 * j);
          v21 = [v20 query];
          v22 = [v21 combinedQuerySeparatingIdentifier];

          v23 = [v7 objectForKeyedSubscript:v22];
          v24 = v23;
          v25 = MEMORY[0x1E695E0F0];
          if (v23)
          {
            v25 = v23;
          }

          v26 = v25;

          v27 = [v20 query];
          v28 = [v27 fetchOptions];
          v29 = [PHFetchResult cleanedAndSortedOIDsFrom:v26 usingFetchOptions:v28];

          v30 = [v20 fetchRequest];
          v31 = [v30 entityName];
          v32 = [PHFetchResult filteredOIDsFrom:v29 usingEntityName:v31 withPhotoLibrary:*(v43 + 72)];

          [v41 setObject:v32 forKeyedSubscript:v20];
        }

        v18 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v18);
    }

    v33 = *(*(v43 + 80) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v41;

    v6 = v37;
    v4 = v38;
  }

  else
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v35 = *(a1 + 40);
      v36 = *(a1 + 48);
      *buf = 138412802;
      v56 = v35;
      v57 = 2112;
      v58 = v36;
      v59 = 2112;
      v60 = v6;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_FAULT, "Error executing combined fetch %@ for %@: %@", buf, 0x20u);
    }
  }
}

@end