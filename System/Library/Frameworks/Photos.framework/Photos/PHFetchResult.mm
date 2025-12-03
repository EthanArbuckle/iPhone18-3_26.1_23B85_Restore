@interface PHFetchResult
+ (id)_batchFetchingArrayForObjectIDs:(id)ds fetchResult:(id)result;
+ (id)_typesToCountForAssetCollections;
+ (id)_typesToCountForListCollections;
+ (id)cleanedAndSortedOIDsFrom:(id)from usingFetchOptions:(id)options;
+ (id)fetchObjectCount:(id)count inManagedObjectContext:(id)context;
+ (id)fetchObjectIDs:(id)ds inManagedObjectContext:(id)context;
+ (id)fetchObjectIDsForCombinableFetchResults:(id)results inManagedObjectContext:(id)context;
+ (id)filteredOIDsFrom:(id)from usingEntityName:(id)name withPhotoLibrary:(id)library;
+ (id)pl_fetchResultContainingAssetContainer:(id)container photoLibrary:(id)library includeTrash:(BOOL)trash;
+ (id)pl_fetchResultForAssetContainerList:(id)list photoLibrary:(id)library;
+ (id)pl_fetchResultForStandInAssetCollection:(id)collection;
+ (id)pl_filterPredicateForAssetContainer:(id)container;
+ (id)postProcessFetchedObjectIDs:(id)ds forFetchResult:(id)result fetchRequest:(id)request;
- (BOOL)_canCreateFetchedPropertyObjectsWithClass:(Class)class;
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
- (PHFetchResult)fetchResultWithChangeHandlingValue:(id)value;
- (PHFetchResult)init;
- (PHFetchResult)initWithExistingFetchResult:(id)result filteredObjectIDs:(id)ds;
- (PHFetchResult)initWithMediaTypeCounts:(id)counts library:(id)library;
- (PHFetchResult)initWithQuery:(id)query library:(id)library oids:(id)oids registerIfNeeded:(BOOL)needed usingManagedObjectContext:(id)context;
- (PHFetchResult)initWithQuery:(id)query library:(id)library registerIfNeeded:(BOOL)needed;
- (PHPhotoLibrary)photoLibrary;
- (id)_createFetchedPropertyObjectsWithClass:(Class)class fetchedObjectIDs:(id)ds;
- (id)_mediaTypeCounts;
- (id)calculateMediaTypeCounts;
- (id)changeHandlingKey;
- (id)changeHandlingValueUsingSeedOids:(id)oids withChange:(id)change usingManagedObjectContext:(id)context;
- (id)containerIdentifier;
- (id)copyWithOptions:(id)options;
- (id)description;
- (id)fetchPropertiesForPropertySetClass:(Class)class forObjectsAtIndexes:(id)indexes;
- (id)fetchedObjectsUsingManagedObjectContext:(id)context;
- (id)fetchedPropertiesForPropertySetClass:(Class)class;
- (id)firstObject;
- (id)lastObject;
- (id)localIdentifiers;
- (id)objectAtIndex:(NSUInteger)index;
- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (id)objectIDAtIndex:(unint64_t)index;
- (id)objectIDs;
- (id)pl_photoLibraryObject;
- (int64_t)collectionFetchType;
- (unint64_t)_possibleChangesFromDetectionCriteriaForChange:(id)change;
- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type;
- (unint64_t)cachedCountOfCollectionsWithCollectionTypes:(id)types;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)countOfAssetCollections;
- (unint64_t)countOfCollectionsLists;
- (unint64_t)possibleChangesForChange:(id)change propertiesFetchResult:(id)result;
- (void)_handleInitWithInvalidConfigurationDetails:(id)details library:(id)library;
- (void)_updateMediaTypeCountsIfNeeded;
- (void)dealloc;
- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateObjectsUsingBlock:(void *)block;
- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)getCountOfCollectionsWithCollectionTypes:(id)types;
- (void)prefetchObjectsAtIndexes:(id)indexes;
- (void)prefetchThumbnailAssetsAtIndexes:(id)indexes;
- (void)setRegisteredForChangeNotificationDeltas:(BOOL)deltas;
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
    emptyFetchResultChangeHandlingKey = [objc_opt_class() emptyFetchResultChangeHandlingKey];
    changeHandlingKey = v2->_changeHandlingKey;
    v2->_changeHandlingKey = emptyFetchResultChangeHandlingKey;

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
  query = [(PHFetchResult *)self query];
  fetchRequest = [query fetchRequest];

  return fetchRequest;
}

- (PHPhotoLibrary)photoLibrary
{
  query = [(PHFetchResult *)self query];
  photoLibrary = [query photoLibrary];

  return photoLibrary;
}

- (PHFetchOptions)fetchOptions
{
  query = [(PHFetchResult *)self query];
  fetchOptions = [query fetchOptions];

  return fetchOptions;
}

- (void)updateRegistrationForChangeNotificationDeltas
{
  query = [(PHFetchResult *)self query];
  fetchOptions = [query fetchOptions];

  if (fetchOptions)
  {
    wantsIncrementalChangeDetails = [fetchOptions wantsIncrementalChangeDetails];
  }

  else
  {
    wantsIncrementalChangeDetails = 1;
  }

  [(PHFetchResult *)self setRegisteredForChangeNotificationDeltas:wantsIncrementalChangeDetails];
}

- (void)dealloc
{
  photoLibrary = [(PHQuery *)self->_query photoLibrary];
  [photoLibrary unregisterFetchResult:self];

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
    fetchedObjects = [(PHFetchResult *)self fetchedObjects];
    v6 = [fetchedObjects count];

    return v6;
  }
}

- (id)firstObject
{
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  firstObject = [fetchedObjects firstObject];

  return firstObject;
}

- (NSArray)fetchedObjectIDs
{
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  v3 = fetchedObjects;
  if (fetchedObjects)
  {
    oids = [fetchedObjects oids];
  }

  else
  {
    oids = MEMORY[0x1E695E0F0];
  }

  return oids;
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
        fetchedObjectIDs = [(PHFetchResult *)self fetchedObjectIDs];
        isolationQueue = self->_isolationQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __32__PHFetchResult_thumbnailAssets__block_invoke;
        block[3] = &unk_1E75AAF00;
        v12 = fetchedObjectIDs;
        v13 = v4;
        block[4] = self;
        v8 = fetchedObjectIDs;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAdoptionUtilities.m" lineNumber:208 description:@"This is only callable on the main thread"];
  }

  containerIdentifier = [(PHFetchResult *)self containerIdentifier];

  v5 = objc_autoreleasePoolPush();
  photoLibrary = [(PHFetchResult *)self photoLibrary];
  mainQueueConcurrencyPhotoLibrary = [photoLibrary mainQueueConcurrencyPhotoLibrary];
  managedObjectContext = [mainQueueConcurrencyPhotoLibrary managedObjectContext];

  if (!containerIdentifier)
  {
    firstObject = [(PHFetchResult *)self firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(PHFetchResult *)firstObject isTransient])
        {
          orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __59__PHFetchResult_PHAdoptionUtilities__pl_photoLibraryObject__block_invoke;
          v53[3] = &unk_1E75A5828;
          v53[4] = self;
          v54 = orderedSet;
          managedEntityName = orderedSet;
          [(PHFetchResult *)self enumerateObjectsUsingBlock:v53];
          v10 = [objc_alloc(MEMORY[0x1E69BE7E8]) initWithAssetContainers:managedEntityName];
          v14 = v54;
LABEL_47:

          goto LABEL_48;
        }
      }
    }

    managedEntityName = [objc_opt_class() managedEntityName];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectIDs = [(PHFetchResult *)self objectIDs];
      array = [objectIDs array];
    }

    else
    {
      array = [(PHFetchResult *)self fetchedObjectIDs];
      if (managedEntityName)
      {
LABEL_17:
        if ([array count])
        {
          v18 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:managedEntityName];
          v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", array];
          [v18 setPredicate:v19];

          array2 = [managedObjectContext executeFetchRequest:v18 error:0];

LABEL_22:
          v44 = array;
          if (array2)
          {
            v43 = v5;
            v22 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(array2, "count")}];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v42 = array2;
            v23 = array2;
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
                  objectID = [v28 objectID];
                  [v22 setObject:v28 forKey:objectID];
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
            v38 = [managedEntityName isEqualToString:v37];

            if (v38)
            {
              v39 = [objc_alloc(MEMORY[0x1E69BE7E0]) initWithTitle:&stru_1F0FC60C8 assets:v30];
            }

            else
            {
              v39 = [objc_alloc(MEMORY[0x1E69BE7E8]) initWithAssetContainers:v30];
            }

            v10 = v39;
            array2 = v42;
            v5 = v43;
          }

          else
          {
            v22 = PLPhotoKitGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy = 0;
              _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "Failed to fetch managedObject for fetchresult result: %@", buf, 0xCu);
            }

            v10 = 0;
          }

          v14 = v44;
          goto LABEL_47;
        }

LABEL_19:
        array2 = [MEMORY[0x1E695DEC8] array];
        v21 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          selfCopy = self;
          v60 = 2112;
          v61 = managedEntityName;
          v62 = 2112;
          v63 = array;
          _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_DEFAULT, "Cannot to fetch managedObject for fetchresult result: %@, with entityName %@ and objectIDs %@", buf, 0x20u);
        }

        goto LABEL_22;
      }

      objectIDs = [(PHFetchResult *)self query];
      fetchRequest = [objectIDs fetchRequest];
      managedEntityName = [fetchRequest entityName];
    }

    if (!managedEntityName)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  containerIdentifier2 = [(PHFetchResult *)self containerIdentifier];
  v55 = 0;
  v10 = [managedObjectContext existingObjectWithID:containerIdentifier2 error:&v55];
  firstObject = v55;

  if (v10)
  {
    goto LABEL_49;
  }

  managedEntityName = PLPhotoKitGetLog();
  if (os_log_type_enabled(managedEntityName, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = firstObject;
    _os_log_impl(&dword_19C86F000, managedEntityName, OS_LOG_TYPE_DEFAULT, "Failed to fetch container for fetchresult: %@", buf, 0xCu);
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

+ (id)pl_fetchResultForStandInAssetCollection:(id)collection
{
  collectionCopy = collection;
  pl_assetContainer = [collectionCopy pl_assetContainer];
  photoLibrary = [collectionCopy photoLibrary];
  mainQueueConcurrencyPhotoLibrary = [photoLibrary mainQueueConcurrencyPhotoLibrary];

  v7 = [mainQueueConcurrencyPhotoLibrary albumListForAlbumOfKind:{objc_msgSend(pl_assetContainer, "kindValue")}];
  photoLibrary2 = [collectionCopy photoLibrary];

  v9 = [PHFetchResult pl_fetchResultForAssetContainerList:v7 photoLibrary:photoLibrary2];

  return v9;
}

+ (id)pl_fetchResultForAssetContainerList:(id)list photoLibrary:(id)library
{
  v41[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  libraryCopy = library;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [listCopy uuid];
    v41[0] = uuid;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v10 = [PHCollectionList fetchCollectionListsWithLocalIdentifiers:v8 options:librarySpecificFetchOptions];
    firstObject = [v10 firstObject];

    v12 = [PHCollection fetchCollectionsInCollectionList:firstObject options:0];
  }

  else
  {
    NSClassFromString(&cfstr_Pxfeedassetcon.isa);
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_respondsToSelector())
      {
        firstObject = [listCopy performSelector:sel_transientIdentifier];
      }

      else
      {
        firstObject = 0;
      }

      containers = [listCopy containers];
      v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(containers, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v23 = containers;
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

            v28 = [PHAssetCollection pl_PHAssetCollectionForAssetContainer:*(*(&v35 + 1) + 8 * i) photoLibrary:libraryCopy];
            if (v28)
            {
              [v22 addObject:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v25);
      }

      v29 = [PHCollectionList transientCollectionListWithCollections:v22 title:&stru_1F0FC60C8 identifier:firstObject photoLibrary:libraryCopy];
      v12 = [PHCollection fetchCollectionsInCollectionList:v29 options:0];
    }

    else
    {
      containers2 = [listCopy containers];
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(containers2, "count")}];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      firstObject = containers2;
      v15 = [firstObject countByEnumeratingWithState:&v31 objects:v39 count:16];
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
              objc_enumerationMutation(firstObject);
            }

            v19 = [PHAssetCollection pl_PHAssetCollectionForAssetContainer:*(*(&v31 + 1) + 8 * j) photoLibrary:libraryCopy, v31];
            if (v19)
            {
              [v14 addObject:v19];
            }
          }

          v16 = [firstObject countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v16);
      }

      v20 = [PHCollectionList transientCollectionListWithCollections:v14 title:&stru_1F0FC60C8];
      v12 = [PHCollection fetchCollectionsInCollectionList:v20 options:0];
    }
  }

  return v12;
}

+ (id)pl_filterPredicateForAssetContainer:(id)container
{
  containerCopy = container;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAdoptionUtilities.m" lineNumber:496 description:@"This is only callable on the main thread"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    backingAlbum = [containerCopy backingAlbum];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      predicate = [containerCopy predicate];
    }

    else
    {
      predicate = 0;
    }
  }

  else
  {
    predicate = 0;
  }

  return predicate;
}

+ (id)pl_fetchResultContainingAssetContainer:(id)container photoLibrary:(id)library includeTrash:(BOOL)trash
{
  trashCopy = trash;
  v78[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  libraryCopy = library;
  v10 = objc_opt_class();
  v11 = [v10 isEqual:objc_opt_class()];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = MEMORY[0x1E696AE18];
    objectID = [containerCopy objectID];
    v78[0] = objectID;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
    v16 = [v13 predicateWithFormat:@"self IN %@", v15];
    [librarySpecificFetchOptions setInternalPredicate:v16];

    v17 = [PHAssetCollection fetchMomentsWithOptions:librarySpecificFetchOptions];
    goto LABEL_69;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    backingAlbum = containerCopy;
    kindValue = [backingAlbum kindValue];
    switch(kindValue)
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
        [librarySpecificFetchOptions setIncludePlacesSmartAlbum:1];
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
        [librarySpecificFetchOptions setIncludeRecentlyEditedSmartAlbum:1];
        v21 = 1000000206;
        goto LABEL_65;
      case 1627:
        [librarySpecificFetchOptions setIncludeScreenRecordingsSmartAlbum:1];
        v20 = 2;
        v21 = 220;
        goto LABEL_66;
      case 1628:
        [librarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:1];
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
        [librarySpecificFetchOptions setIncludeProResSmartAlbum:1];
        v58 = 210;
        goto LABEL_64;
      case 1634:
        [librarySpecificFetchOptions setIncludeDuplicatesAlbums:1];
        v21 = 1000000212;
        goto LABEL_65;
      case 1636:
        [librarySpecificFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
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
        if (kindValue != 1000)
        {
LABEL_36:
          objectID2 = [backingAlbum objectID];
          v77 = objectID2;
          v36 = MEMORY[0x1E695DEC8];
          v37 = &v77;
          goto LABEL_37;
        }

        v20 = 1;
        v21 = 1000000001;
LABEL_66:
        v26 = [PHAssetCollection fetchAssetCollectionsWithType:v20 subtype:v21 options:librarySpecificFetchOptions];
        break;
    }

    goto LABEL_67;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    backingAlbum = [containerCopy backingAlbum];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = MEMORY[0x1E696AE18];
      objectID3 = [backingAlbum objectID];
      v76 = objectID3;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      v25 = [v22 predicateWithFormat:@"self IN %@", v24];
      [librarySpecificFetchOptions setInternalPredicate:v25];

      v26 = [PHAssetCollection fetchMomentsWithOptions:librarySpecificFetchOptions];
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

    if ([backingAlbum kindValue] == 1628)
    {
      [librarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:1];
    }

    objectID2 = [backingAlbum objectID];
    v75 = objectID2;
    v36 = MEMORY[0x1E695DEC8];
    v37 = &v75;
LABEL_37:
    v57 = [v36 arrayWithObjects:v37 count:1];
    v17 = [PHAssetCollection fetchAssetCollectionsWithObjectIDs:v57 options:librarySpecificFetchOptions];

LABEL_38:
    goto LABEL_68;
  }

  v27 = objc_opt_class();
  if ([v27 isEqual:NSClassFromString(&cfstr_Pumapalbum.isa)])
  {
    [librarySpecificFetchOptions setIncludeHiddenAssets:1];
    backingAlbum = [containerCopy assets];
    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(backingAlbum, "count")}];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __103__PHFetchResult_PHAdoptionUtilities__pl_fetchResultContainingAssetContainer_photoLibrary_includeTrash___block_invoke;
    v66[3] = &unk_1E75A5850;
    v67 = v28;
    objectID2 = v28;
    [backingAlbum enumerateObjectsUsingBlock:v66];
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", objectID2];
    [librarySpecificFetchOptions setInternalPredicate:v30];

    [librarySpecificFetchOptions setIncludeAssetSourceTypes:7];
    v31 = [PHAsset fetchAssetsWithOptions:librarySpecificFetchOptions];
    localizedTitle = [containerCopy localizedTitle];
    v33 = [PHAssetCollection transientAssetCollectionWithAssetFetchResult:v31 title:localizedTitle];

    v74 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
    v35 = [PHCollectionList transientCollectionListWithCollections:v34 title:0];

    v17 = [(PHCollection *)PHAssetCollection fetchCollectionsInCollectionList:v35 options:0];

    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v38 = objc_opt_class(), ([v38 isEqual:NSClassFromString(&cfstr_Pxfeedassetsse.isa)]) || (v39 = objc_opt_class(), (objc_msgSend(v39, "isEqual:", NSClassFromString(&cfstr_Pxfeedcomments.isa))) || (v40 = objc_opt_class(), ((objc_msgSend(v40, "isEqual:", NSClassFromString(&cfstr_Pxfeedsubscrip.isa)) | v11)))
  {
    v63 = [librarySpecificFetchOptions copy];
    [librarySpecificFetchOptions setIncludeHiddenAssets:1];
    assets = [containerCopy assets];
    array = [MEMORY[0x1E695DF70] array];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __103__PHFetchResult_PHAdoptionUtilities__pl_fetchResultContainingAssetContainer_photoLibrary_includeTrash___block_invoke_2;
    v64[3] = &unk_1E75A5850;
    v43 = array;
    v65 = v43;
    v62 = assets;
    [assets enumerateObjectsUsingBlock:v64];
    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v43];
    [librarySpecificFetchOptions setInternalPredicate:v44];

    v45 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v73 = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v46];

    [librarySpecificFetchOptions setCustomObjectIDSortOrder:v43];
    if (v11)
    {
      [librarySpecificFetchOptions setIncludeAllBurstAssets:1];
    }

    if (trashCopy)
    {
      [librarySpecificFetchOptions setIncludeTrashedAssets:1];
    }

    [librarySpecificFetchOptions setIncludeAssetSourceTypes:7];
    v47 = [PHAsset fetchAssetsWithOptions:librarySpecificFetchOptions];
    if (objc_opt_respondsToSelector())
    {
      uuid = [containerCopy performSelector:sel_transientIdentifier];
    }

    else
    {
      if (!v11)
      {
        v49 = 0;
        goto LABEL_30;
      }

      uuid = [containerCopy uuid];
    }

    v49 = uuid;
LABEL_30:
    canShowComments = [containerCopy canShowComments];
    if (canShowComments)
    {
      v51 = 101;
    }

    else
    {
      v51 = 200;
    }

    v52 = [PHAssetCollection alloc];
    localizedTitle2 = [containerCopy localizedTitle];
    v54 = [(PHAssetCollection *)v52 initTransientWithAssets:0 orFetchResult:v47 title:localizedTitle2 identifier:v49 albumKind:2 subtype:v51];

    [v54 _setCanShowCloudComments:canShowComments];
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
    v71 = containerCopy;
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

  containerIdentifier = [(PHFetchResult *)self containerIdentifier];
  collectionFetchType = [(PHFetchResult *)self collectionFetchType];
  query = [(PHFetchResult *)self query];
  shortDescription = [query shortDescription];
  v12 = [v7 stringByAppendingFormat:@" CID=%@, CFT=%ld query=%@", containerIdentifier, collectionFetchType, shortDescription];

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
  selfCopy = self;
  v5 = [(PHFetchResult *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        localIdentifier = [*(*(&v12 + 1) + 8 * i) localIdentifier];
        [v3 addObject:localIdentifier];
      }

      v6 = [(PHFetchResult *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  fetchedObjectIDs = [(PHFetchResult *)self fetchedObjectIDs];
  if ([fetchedObjectIDs count])
  {
    photoLibrary = [(PHFetchResult *)self photoLibrary];
    photoLibraryForCurrentQueueQoS = [photoLibrary photoLibraryForCurrentQueueQoS];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__PHFetchResult_calculateMediaTypeCounts__block_invoke;
    v11[3] = &unk_1E75AAFA8;
    v12 = fetchedObjectIDs;
    v7 = photoLibraryForCurrentQueueQoS;
    v13 = v7;
    selfCopy = self;
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
  _mediaTypeCounts = [(PHFetchResult *)self _mediaTypeCounts];
  if (!_mediaTypeCounts)
  {
    calculateMediaTypeCounts = [(PHFetchResult *)self calculateMediaTypeCounts];
    v4 = calculateMediaTypeCounts;
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

- (unint64_t)cachedCountOfAssetsWithMediaType:(int64_t)type
{
  _mediaTypeCounts = [(PHFetchResult *)self _mediaTypeCounts];
  v6 = _mediaTypeCounts;
  if (_mediaTypeCounts)
  {
    v7 = 0;
    if (type > 1)
    {
      if (type == 2)
      {
        videosCount = [_mediaTypeCounts videosCount];
        goto LABEL_12;
      }

      if (type == 3)
      {
        videosCount = [_mediaTypeCounts audiosCount];
        goto LABEL_12;
      }
    }

    else if (type)
    {
      if (type == 1)
      {
        videosCount = [_mediaTypeCounts photosCount];
LABEL_12:
        v7 = videosCount;
      }
    }

    else
    {
      v9 = [(PHFetchResult *)self count];
      photosCount = [v6 photosCount];
      videosCount2 = [v6 videosCount];
      v7 = v9 - [v6 audiosCount] - (photosCount + videosCount2);
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)getCountOfCollectionsWithCollectionTypes:(id)types
{
  typesCopy = types;
  if (self->_albumsCount == 0x7FFFFFFFFFFFFFFFLL || self->_sharedAlbumsCount == 0x7FFFFFFFFFFFFFFFLL || self->_foldersCount == 0x7FFFFFFFFFFFFFFFLL)
  {
    objectIDs = [(PHFetchResult *)self objectIDs];
    v6 = [objectIDs count];

    if (v6)
    {
      photoLibrary = [(PHFetchResult *)self photoLibrary];
      photoLibraryForCurrentQueueQoS = [photoLibrary photoLibraryForCurrentQueueQoS];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __58__PHFetchResult_getCountOfCollectionsWithCollectionTypes___block_invoke;
      v10[3] = &unk_1E75AB248;
      v11 = typesCopy;
      selfCopy = self;
      v13 = photoLibraryForCurrentQueueQoS;
      v9 = photoLibraryForCurrentQueueQoS;
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

- (unint64_t)cachedCountOfCollectionsWithCollectionTypes:(id)types
{
  typesCopy = types;
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
  v7 = [typesCopy intersectsSet:v6];

  if (v7)
  {
    v5[2](v5, self->_albumsCount);
  }

  if ([typesCopy containsObject:&unk_1F102DAC0])
  {
    v5[2](v5, self->_sharedAlbumsCount);
  }

  if ([typesCopy containsObject:&unk_1F102DD48])
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
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  [fetchedObjects enumerateObjectsAtIndexes:v9 options:opts usingBlock:v8];
}

- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  v6 = block;
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  [fetchedObjects enumerateObjectsWithOptions:opts usingBlock:v6];
}

- (void)enumerateObjectsUsingBlock:(void *)block
{
  v4 = block;
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  [fetchedObjects enumerateObjectsUsingBlock:v4];
}

- (NSArray)objectsAtIndexes:(NSIndexSet *)indexes
{
  v4 = indexes;
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  v6 = [fetchedObjects objectsAtIndexes:v4];

  return v6;
}

- (id)lastObject
{
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  lastObject = [fetchedObjects lastObject];

  return lastObject;
}

- (NSUInteger)indexOfObject:(id)anObject inRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = anObject;
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  v9 = [fetchedObjects indexOfObject:v7 inRange:{location, length}];

  return v9;
}

- (NSUInteger)indexOfObject:(id)anObject
{
  v4 = anObject;
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  v6 = [fetchedObjects indexOfObject:v4];

  return v6;
}

- (BOOL)containsObject:(id)anObject
{
  v4 = anObject;
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  v6 = [fetchedObjects containsObject:v4];

  return v6;
}

- (id)objectAtIndexedSubscript:(NSUInteger)idx
{
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  v5 = [fetchedObjects objectAtIndex:idx];

  return v5;
}

- (id)objectAtIndex:(NSUInteger)index
{
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  v5 = [fetchedObjects objectAtIndex:index];

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  v9 = [fetchedObjects countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (PHFetchResult)fetchResultWithChangeHandlingValue:(id)value
{
  valueCopy = value;
  v5 = [PHFetchResult alloc];
  query = [(PHFetchResult *)self query];
  photoLibrary = [(PHFetchResult *)self photoLibrary];
  v8 = [(PHFetchResult *)v5 initWithQuery:query library:photoLibrary oids:valueCopy registerIfNeeded:0 usingManagedObjectContext:0];

  return v8;
}

- (unint64_t)possibleChangesForChange:(id)change propertiesFetchResult:(id)result
{
  v118 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  resultCopy = result;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  selfCopy = self;
  if (([(PHFetchResult *)self collectionFetchType]- 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    fetchRequest = [(PHFetchResult *)self fetchRequest];
    entity = [fetchRequest entity];
    if (entity)
    {
      query = [(PHFetchResult *)self query];
      fetchedObjectIDsSet = [(PHFetchResult *)self fetchedObjectIDsSet];
      changedRelationshipsByOID = [changeCopy changedRelationshipsByOID];
      changedAttributesByOID = [changeCopy changedAttributesByOID];
      containerIdentifier = [(PHFetchResult *)self containerIdentifier];
      containerToObjectRelationshipIndexValue = [query containerToObjectRelationshipIndexValue];
      if (!containerIdentifier)
      {
        goto LABEL_14;
      }

      v8 = containerToObjectRelationshipIndexValue;
      if (containerToObjectRelationshipIndexValue)
      {
        updatedObjectIDs = [changeCopy updatedObjectIDs];
        v10 = [updatedObjectIDs containsObject:containerIdentifier];

        if (v10)
        {
          v11 = [changedRelationshipsByOID objectForKeyedSubscript:containerIdentifier];
          unsignedLongLongValue = [v11 unsignedLongLongValue];

          if (([query containerToObjectRelationshipIndexValue] & unsignedLongLongValue) != 0)
          {
            v109[3] |= 7uLL;
          }
        }
      }

      v13 = [changedAttributesByOID objectForKeyedSubscript:containerIdentifier];
      unsignedLongLongValue2 = [v13 unsignedLongLongValue];

      containerSortingAttributesIndexValue = [query containerSortingAttributesIndexValue];
      containerUserQueryIndexValue = [query containerUserQueryIndexValue];
      if ((containerSortingAttributesIndexValue & unsignedLongLongValue2) != 0)
      {
        v109[3] |= 4uLL;
      }

      if ((containerUserQueryIndexValue & unsignedLongLongValue2) != 0)
      {
        v109[3] |= 3uLL;
      }

      if (!v8)
      {
LABEL_14:
        insertedObjectIDs = [changeCopy insertedObjectIDs];
        v18 = _oidsContainEntity(insertedObjectIDs, entity);

        if (v18)
        {
          if (resultCopy)
          {
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            insertedObjectIDs2 = [changeCopy insertedObjectIDs];
            v20 = [insertedObjectIDs2 countByEnumeratingWithState:&v104 objects:v117 count:16];
            if (v20)
            {
              v21 = *v105;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v105 != v21)
                  {
                    objc_enumerationMutation(insertedObjectIDs2);
                  }

                  v23 = *(*(&v104 + 1) + 8 * i);
                  entity2 = [v23 entity];
                  v25 = [entity2 isKindOfEntity:entity];

                  if (v25)
                  {
                    v103 = 0;
                    v26 = [resultCopy evaluateQuery:query withObjectID:v23 outMissingPropertyNames:&v103];
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
                        v114 = query;
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

                v20 = [insertedObjectIDs2 countByEnumeratingWithState:&v104 objects:v117 count:16];
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

        deletedObjectIDs = [changeCopy deletedObjectIDs];
        v32 = _oidsContainEntity(deletedObjectIDs, entity);

        if (v32)
        {
          v109[3] |= 2uLL;
        }
      }

      updatedObjectIDs2 = [changeCopy updatedObjectIDs];
      if (updatedObjectIDs2)
      {
        filteringOids = [query filteringOids];
        updatedObjectIDs3 = [changeCopy updatedObjectIDs];
        v36 = [filteringOids intersectsSet:updatedObjectIDs3];

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
          filteringOids2 = [query filteringOids];
          updatedObjectIDs4 = [changeCopy updatedObjectIDs];
          v95[0] = MEMORY[0x1E69E9820];
          v95[1] = 3221225472;
          v95[2] = __64__PHFetchResult_possibleChangesForChange_propertiesFetchResult___block_invoke;
          v95[3] = &unk_1E75AAF30;
          v98 = v101;
          v99 = buf;
          v96 = query;
          v97 = changedRelationshipsByOID;
          v100 = &v108;
          [filteringOids2 ph_enumerateIntersectionWithSet:updatedObjectIDs4 usingBlock:v95];

          _Block_object_dispose(v101, 8);
          _Block_object_dispose(buf, 8);
        }
      }

      objectToContainerRelationshipIndexValue = [query objectToContainerRelationshipIndexValue];
      filteringAttributesIndexValue = [query filteringAttributesIndexValue];
      filteringRelationshipsIndexValue = [query filteringRelationshipsIndexValue];
      sortingAttributesIndexValue = [query sortingAttributesIndexValue];
      v42 = [changeCopy anyUpdatedObjectsWithChangedAttributes:filteringAttributesIndexValue ofEntity:entity];
      v43 = filteringRelationshipsIndexValue & ~objectToContainerRelationshipIndexValue;
      if ((v42 | [changeCopy anyUpdatedObjectsWithChangedRelationships:v43 ofEntity:entity]))
      {
        if (resultCopy)
        {
          v78 = sortingAttributesIndexValue;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          updatedObjectIDs5 = [changeCopy updatedObjectIDs];
          v45 = [updatedObjectIDs5 countByEnumeratingWithState:&v91 objects:v112 count:16];
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
                objc_enumerationMutation(updatedObjectIDs5);
              }

              v48 = *(*(&v91 + 1) + 8 * j);
              v49 = objc_autoreleasePoolPush();
              entity3 = [v48 entity];
              v51 = [entity3 isKindOfEntity:entity];

              if ((v51 & 1) == 0)
              {
                v59 = 5;
                goto LABEL_71;
              }

              v52 = [changedAttributesByOID objectForKeyedSubscript:v48];
              unsignedLongLongValue3 = [v52 unsignedLongLongValue];

              v54 = [changedRelationshipsByOID objectForKeyedSubscript:v48];
              unsignedLongLongValue4 = [v54 unsignedLongLongValue];

              if (!(unsignedLongLongValue3 & filteringAttributesIndexValue | unsignedLongLongValue4 & v43))
              {
                goto LABEL_67;
              }

              v90 = 0;
              v56 = [resultCopy evaluateQuery:query withObjectID:v48 outMissingPropertyNames:&v90];
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
                  v114 = query;
                  _os_log_impl(&dword_19C86F000, v58, OS_LOG_TYPE_ERROR, "Unable to perform detailed change analysis, falling back to refetch, oid:%@ missing properties:%{public}@ for query:%{public}@", buf, 0x20u);
                }

                v109[3] |= 7uLL;
                v59 = 4;
                goto LABEL_71;
              }

              if ([fetchedObjectIDsSet containsObject:v48])
              {
                if ((v56 & 1) == 0)
                {
                  v109[3] |= 2uLL;
                }

                if ((unsignedLongLongValue3 & v78) == 0)
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
                v62 = [fetchedObjectIDsSet containsObject:v48];
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

            v45 = [updatedObjectIDs5 countByEnumeratingWithState:&v91 objects:v112 count:16];
            if (!v45)
            {
LABEL_75:

              goto LABEL_82;
            }
          }
        }

        updatedObjectIDs6 = [changeCopy updatedObjectIDs];
        v64 = [updatedObjectIDs6 isSubsetOfSet:fetchedObjectIDsSet];

        if (v64)
        {
          v65 = v109;
          v66 = v109[3] | 6;
        }

        else
        {
          updatedObjectIDs7 = [changeCopy updatedObjectIDs];
          v68 = [updatedObjectIDs7 intersectsSet:fetchedObjectIDsSet];

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
      v70 = [(PHFetchResult *)selfCopy _possibleChangesFromDetectionCriteriaForChange:changeCopy];
      v109[3] |= v70;
      v71 = [query possibleChangesForChange:changeCopy];
      v72 = v109[3];
      v6 = v72 | v71;
      v109[3] = v72 | v71;
      if (((v72 | v71) & 2) == 0)
      {
        deletedObjectIDs2 = [changeCopy deletedObjectIDs];
        v74 = [deletedObjectIDs2 intersectsSet:fetchedObjectIDsSet];

        v6 = v109[3];
        if (v74)
        {
          v6 |= 2uLL;
          v109[3] = v6;
        }
      }

      if ((v6 & 8) == 0)
      {
        updatedObjectIDs8 = [changeCopy updatedObjectIDs];
        v76 = [updatedObjectIDs8 intersectsSet:fetchedObjectIDsSet];

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
      query = v28;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = @"non-null";
        if (!fetchRequest)
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

- (unint64_t)_possibleChangesFromDetectionCriteriaForChange:(id)change
{
  changeCopy = change;
  query = [(PHFetchResult *)self query];
  fetchOptions = [query fetchOptions];
  changeDetectionCriteria = [fetchOptions changeDetectionCriteria];
  photoLibrary = [query photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];
  v10 = [changeCopy intersectsWithDetectionCriteria:changeDetectionCriteria managedObjectContext:managedObjectContext];

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

- (void)setRegisteredForChangeNotificationDeltas:(BOOL)deltas
{
  if (self->_registeredForChangeNotificationDeltas != deltas)
  {
    deltasCopy = deltas;
    photoLibrary = [(PHFetchResult *)self photoLibrary];
    v6 = photoLibrary;
    if (deltasCopy)
    {
      [photoLibrary registerFetchResult:self];
    }

    else
    {
      [photoLibrary unregisterFetchResult:self];
    }

    self->_registeredForChangeNotificationDeltas = deltasCopy;
  }
}

- (id)_createFetchedPropertyObjectsWithClass:(Class)class fetchedObjectIDs:(id)ds
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"batchSize";
  v6 = MEMORY[0x1E696AD98];
  dsCopy = ds;
  v8 = [v6 numberWithInteger:{-[objc_class batchSize](class, "batchSize")}];
  v16[0] = v8;
  v15[1] = @"cacheSize";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[objc_class cacheSize](class, "cacheSize")}];
  v15[2] = @"fetchedObjectBatchPropertySetClass";
  v16[1] = v9;
  v16[2] = class;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v11 = [PHBatchFetchingArray alloc];
  photoLibrary = [(PHFetchResult *)self photoLibrary];
  v13 = [(PHBatchFetchingArray *)v11 initWithOIDs:dsCopy options:v10 photoLibrary:photoLibrary];

  return v13;
}

- (BOOL)_canCreateFetchedPropertyObjectsWithClass:(Class)class
{
  fetchedObjectIDs = [(PHFetchResult *)self fetchedObjectIDs];
  v6 = [fetchedObjectIDs count];
  if (v6 == [(PHFetchResult *)self count])
  {
    fetchType = [(PHFetchResult *)self fetchType];
    fetchType2 = [(objc_class *)class fetchType];
    v9 = [fetchType isEqualToString:fetchType2];
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

- (id)fetchPropertiesForPropertySetClass:(Class)class forObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([(PHFetchResult *)self _canCreateFetchedPropertyObjectsWithClass:class])
  {
    fetchedObjectIDs = [(PHFetchResult *)self fetchedObjectIDs];
    v8 = [fetchedObjectIDs objectsAtIndexes:indexesCopy];

    v9 = [(PHFetchResult *)self _createFetchedPropertyObjectsWithClass:class fetchedObjectIDs:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)fetchedPropertiesForPropertySetClass:(Class)class
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__52946;
  v18 = __Block_byref_object_dispose__52947;
  v19 = [(NSDictionary *)self->_fetchedPropertySetsCache objectForKeyedSubscript:?];
  if (!v15[5] && [(PHFetchResult *)self _canCreateFetchedPropertyObjectsWithClass:class])
  {
    fetchedObjectIDs = [(PHFetchResult *)self fetchedObjectIDs];
    isolationQueue = self->_isolationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__PHFetchResult_fetchedPropertiesForPropertySetClass___block_invoke;
    v10[3] = &unk_1E75AAED8;
    v12 = &v14;
    classCopy = class;
    v10[4] = self;
    v11 = fetchedObjectIDs;
    v7 = fetchedObjectIDs;
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

- (id)objectIDAtIndex:(unint64_t)index
{
  fetchedObjectIDs = [(PHFetchResult *)self fetchedObjectIDs];
  v5 = [fetchedObjectIDs objectAtIndex:index];

  return v5;
}

- (NSSet)fetchedObjectIDsSet
{
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  oidsSet = [fetchedObjects oidsSet];

  return oidsSet;
}

- (id)objectIDs
{
  v2 = MEMORY[0x1E695DFB8];
  fetchedObjectIDs = [(PHFetchResult *)self fetchedObjectIDs];
  v4 = [v2 orderedSetWithArray:fetchedObjectIDs];

  return v4;
}

- (id)containerIdentifier
{
  query = [(PHFetchResult *)self query];
  containerIdentifier = [query containerIdentifier];

  return containerIdentifier;
}

- (int64_t)collectionFetchType
{
  query = [(PHFetchResult *)self query];
  collectionFetchType = [query collectionFetchType];

  return collectionFetchType;
}

- (id)fetchedObjectsUsingManagedObjectContext:(id)context
{
  contextCopy = context;
  isolationQueue = self->_isolationQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PHFetchResult_fetchedObjectsUsingManagedObjectContext___block_invoke;
  v10[3] = &unk_1E75AAEB0;
  v10[4] = self;
  v11 = contextCopy;
  v6 = contextCopy;
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
  fetchRequest = [(PHFetchResult *)self fetchRequest];
  sortDescriptors = [fetchRequest sortDescriptors];

  return sortDescriptors;
}

- (id)changeHandlingValueUsingSeedOids:(id)oids withChange:(id)change usingManagedObjectContext:(id)context
{
  contextCopy = context;
  changeCopy = change;
  oidsCopy = oids;
  query = [(PHFetchResult *)self query];
  v12 = [query updatedQueryWithChange:changeCopy];

  v13 = [PHFetchResult alloc];
  photoLibrary = [(PHFetchResult *)self photoLibrary];
  v15 = [(PHFetchResult *)v13 initWithQuery:v12 library:photoLibrary oids:oidsCopy registerIfNeeded:0 usingManagedObjectContext:contextCopy];

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
      selfCopy = self;
      _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Missing required change handling key for fetch result %@", &v8, 0xCu);
    }

    changeHandlingKey = self->_changeHandlingKey;
  }

  emptyFetchResultChangeHandlingKey = [objc_opt_class() emptyFetchResultChangeHandlingKey];

  if (changeHandlingKey == emptyFetchResultChangeHandlingKey)
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_changeHandlingKey;
  }

  return v6;
}

- (void)prefetchThumbnailAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  thumbnailAssets = [(PHFetchResult *)self thumbnailAssets];
  [thumbnailAssets prefetchObjectsAtIndexes:indexesCopy];
}

- (void)prefetchObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  fetchedObjects = [(PHFetchResult *)self fetchedObjects];
  [fetchedObjects prefetchObjectsAtIndexes:indexesCopy];
}

- (id)copyWithOptions:(id)options
{
  optionsCopy = options;
  query = [(PHFetchResult *)self query];
  fetchOptions = [query fetchOptions];
  chunkSizeForFetch = [fetchOptions chunkSizeForFetch];

  fetchOptions2 = [query fetchOptions];
  cacheSizeForFetch = [fetchOptions2 cacheSizeForFetch];

  v10 = [optionsCopy objectForKeyedSubscript:@"chunkSizeForFetch"];
  v11 = [optionsCopy objectForKeyedSubscript:@"cacheSizeForFetch"];
  v12 = [optionsCopy objectForKeyedSubscript:@"invalidateCache"];
  v13 = [optionsCopy objectForKeyedSubscript:@"registerIfNeeded"];

  if (v10 && chunkSizeForFetch != [v10 integerValue] || v11 && cacheSizeForFetch != objc_msgSend(v11, "integerValue") || v12 && (objc_msgSend(v12, "BOOLValue") & 1) != 0)
  {
    v14 = 0;
    if (!query)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = v13 == 0;
    if (!query)
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

  fetchOptions3 = [query fetchOptions];
  if (fetchOptions3)
  {
    fetchOptions4 = [query fetchOptions];
    librarySpecificFetchOptions = [fetchOptions4 copy];
  }

  else
  {
    fetchOptions4 = [(PHFetchResult *)self photoLibrary];
    librarySpecificFetchOptions = [fetchOptions4 librarySpecificFetchOptions];
  }

  v19 = librarySpecificFetchOptions;

  if (v10)
  {
    [v19 setChunkSizeForFetch:{objc_msgSend(v10, "integerValue")}];
  }

  if (v11)
  {
    [v19 setCacheSizeForFetch:{objc_msgSend(v11, "integerValue")}];
  }

  v20 = [query copy];
  [v20 setFetchOptions:v19];
  fetchedObjectIDs = [(PHFetchResult *)self fetchedObjectIDs];
  v29 = v13;
  v30 = v12;
  if (v13)
  {
    bOOLValue = [v13 BOOLValue];
  }

  else
  {
    bOOLValue = [(PHFetchResult *)self isRegisteredForChangeNotificationDeltas];
  }

  v23 = bOOLValue;
  v24 = [PHFetchResult alloc];
  photoLibrary = [(PHFetchResult *)self photoLibrary];
  v18 = [(PHFetchResult *)v24 initWithQuery:v20 library:photoLibrary oids:fetchedObjectIDs registerIfNeeded:v23 usingManagedObjectContext:0];

  if ([fetchedObjectIDs count])
  {
    _mediaTypeCounts = [(PHFetchResult *)self _mediaTypeCounts];
    mediaTypeCounts = v18->_mediaTypeCounts;
    v18->_mediaTypeCounts = _mediaTypeCounts;
  }

  v13 = v29;
  v12 = v30;
LABEL_25:

  return v18;
}

- (PHFetchResult)initWithMediaTypeCounts:(id)counts library:(id)library
{
  countsCopy = counts;
  v7 = [(PHFetchResult *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaTypeCounts, counts);
  }

  return v8;
}

- (PHFetchResult)initWithExistingFetchResult:(id)result filteredObjectIDs:(id)ds
{
  v35 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dsCopy = ds;
  query = [resultCopy query];
  v9 = [query copy];

  if (v9)
  {
    fetchOptions = [v9 fetchOptions];
    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", dsCopy];
    identifier = fetchOptions;
    v13 = dsCopy;
    v14 = v13;
    if (identifier)
    {
      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _appendFetchOptionsPredicate(PHFetchOptions *__strong, NSPredicate *__strong)"}];
      [currentHandler handleFailureInFunction:v30 file:@"PHFetchResult.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"fetchOptions"}];

      if (v14)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _appendFetchOptionsPredicate(PHFetchOptions *__strong, NSPredicate *__strong)"}];
    [currentHandler2 handleFailureInFunction:v32 file:@"PHFetchResult.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];

LABEL_4:
    predicate = [identifier predicate];
    internalPredicate = [identifier internalPredicate];
    v17 = internalPredicate;
    if (predicate)
    {
      v18 = MEMORY[0x1E696AB28];
      v33 = predicate;
      v34 = v14;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:2];
      v20 = [v18 andPredicateWithSubpredicates:v19];
      [identifier setPredicate:v20];
    }

    else
    {
      if (!internalPredicate)
      {
        [identifier setPredicate:v14];
        goto LABEL_11;
      }

      v21 = MEMORY[0x1E696AB28];
      v33 = internalPredicate;
      v34 = v14;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:2];
      v20 = [v21 andPredicateWithSubpredicates:v19];
      [identifier setInternalPredicate:v20];
    }

LABEL_11:
    photoLibrary = [resultCopy photoLibrary];
    v23 = -[PHFetchResult initWithQuery:library:oids:registerIfNeeded:usingManagedObjectContext:](self, "initWithQuery:library:oids:registerIfNeeded:usingManagedObjectContext:", v9, photoLibrary, dsCopy, [resultCopy isRegisteredForChangeNotificationDeltas], 0);

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [resultCopy identifier];
  }

  else
  {
    identifier = 0;
  }

  v24 = [PHManualFetchResult alloc];
  photoLibrary2 = [resultCopy photoLibrary];
  fetchType = [resultCopy fetchType];
  fetchPropertySets = [resultCopy fetchPropertySets];
  v23 = -[PHManualFetchResult initWithOids:photoLibrary:fetchType:fetchPropertySets:identifier:registerIfNeeded:](v24, "initWithOids:photoLibrary:fetchType:fetchPropertySets:identifier:registerIfNeeded:", dsCopy, photoLibrary2, fetchType, fetchPropertySets, identifier, [resultCopy isRegisteredForChangeNotificationDeltas]);

LABEL_14:
  return v23;
}

- (PHFetchResult)initWithQuery:(id)query library:(id)library registerIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  queryCopy = query;
  libraryCopy = library;
  if (queryCopy)
  {
    seedOIDs = [queryCopy seedOIDs];
    v11 = [(PHFetchResult *)self initWithQuery:queryCopy library:libraryCopy oids:seedOIDs registerIfNeeded:neededCopy usingManagedObjectContext:0];
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

- (PHFetchResult)initWithQuery:(id)query library:(id)library oids:(id)oids registerIfNeeded:(BOOL)needed usingManagedObjectContext:(id)context
{
  neededCopy = needed;
  v59 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  libraryCopy = library;
  oidsCopy = oids;
  contextCopy = context;
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

  objc_storeStrong(&v17->_seedOIDs, oids);
  if (!queryCopy)
  {
    [(PHFetchResult *)v17 _handleInitWithInvalidConfigurationDetails:@"nil query" library:libraryCopy];
LABEL_28:
    if (!v17->_fetchError && neededCopy)
    {
      [(PHFetchResult *)v17 updateRegistrationForChangeNotificationDeltas];
    }

    goto LABEL_31;
  }

  v19 = [queryCopy copy];
  query = v17->_query;
  v17->_query = v19;

  fetchType = [queryCopy fetchType];
  v22 = [fetchType copy];
  fetchType = v17->_fetchType;
  v17->_fetchType = v22;

  fetchOptions = [queryCopy fetchOptions];
  fetchPropertySetsAsSet = [fetchOptions fetchPropertySetsAsSet];
  v26 = [fetchPropertySetsAsSet copy];
  fetchPropertySets = v17->_fetchPropertySets;
  v17->_fetchPropertySets = v26;

  fetchRequest = [(PHQuery *)v17->_query fetchRequest];
  if (fetchRequest)
  {
    v29 = [_PHFetchRequestWrapper alloc];
    containerIdentifier = [(PHQuery *)v17->_query containerIdentifier];
    changeHandlingContainerIdentifier = containerIdentifier;
    if (!containerIdentifier)
    {
      changeHandlingContainerIdentifier = [(PHQuery *)v17->_query changeHandlingContainerIdentifier];
    }

    v32 = [(_PHFetchRequestWrapper *)v29 initWithFetchRequest:fetchRequest containerIdentifier:changeHandlingContainerIdentifier fetchPropertySets:v17->_fetchPropertySets];
    v33 = v17->_changeHandlingKey;
    v17->_changeHandlingKey = v32;

    if (!containerIdentifier)
    {
    }

    if (!v17->_changeHandlingKey)
    {
      [(PHFetchResult *)v17 _handleInitWithInvalidConfigurationDetails:@"failed to create _PHFetchRequestWrapper" library:libraryCopy];
    }

LABEL_19:
    if (!v17->_fetchError)
    {
      if (contextCopy)
      {
        managedObjectContextForCurrentQueueQoS = contextCopy;
      }

      else
      {
        photoLibrary = [queryCopy photoLibrary];
        managedObjectContextForCurrentQueueQoS = [photoLibrary managedObjectContextForCurrentQueueQoS];
      }

      fetchOptions2 = [queryCopy fetchOptions];
      shouldPrefetchCount = [fetchOptions2 shouldPrefetchCount];

      if (shouldPrefetchCount)
      {
        v51 = [PHFetchResult fetchObjectCount:v17 inManagedObjectContext:managedObjectContextForCurrentQueueQoS];
        prefetchCount = v17->_prefetchCount;
        v17->_prefetchCount = v51;
      }

      else
      {
        v53 = [(PHFetchResult *)v17 fetchedObjectsUsingManagedObjectContext:managedObjectContextForCurrentQueueQoS];
      }
    }

    goto LABEL_28;
  }

  searchIndexLookupIdentifier = [(PHQuery *)v17->_query searchIndexLookupIdentifier];

  if (!searchIndexLookupIdentifier)
  {
    photoLibrary2 = [(PHFetchResult *)v17 photoLibrary];
    unavailabilityReason = [photoLibrary2 unavailabilityReason];

    if (unavailabilityReason)
    {
      v40 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v55 = 138412546;
        v56 = unavailabilityReason;
        v57 = 2112;
        v58 = v17;
        _os_log_impl(&dword_19C86F000, v40, OS_LOG_TYPE_ERROR, "PHFetchResult init after library became unavailable, setting fetchError to %@\n\tself: %@", &v55, 0x16u);
      }

      objc_storeStrong(&v17->_fetchError, unavailabilityReason);
    }

    else
    {
      [(PHFetchResult *)v17 _handleInitWithInvalidConfigurationDetails:@"query has nil fetch request" library:libraryCopy];
      v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
      fetchError = v17->_fetchError;
      v17->_fetchError = v41;
    }

    v43 = [PHBatchFetchingArray alloc];
    photoLibrary3 = [queryCopy photoLibrary];
    v45 = [(PHBatchFetchingArray *)v43 initWithOIDs:MEMORY[0x1E695E0F0] options:MEMORY[0x1E695E0F8] photoLibrary:photoLibrary3];
    fetchedObjects = v17->_fetchedObjects;
    v17->_fetchedObjects = v45;

    goto LABEL_19;
  }

  searchIndexLookupIdentifier2 = [(PHQuery *)v17->_query searchIndexLookupIdentifier];
  fetchOptions3 = [queryCopy fetchOptions];
  v37 = [PHAsset fetchAssetsForSearchLookupIdentifier:searchIndexLookupIdentifier2 options:fetchOptions3];

LABEL_32:
  return v37;
}

- (void)_handleInitWithInvalidConfigurationDetails:(id)details library:(id)library
{
  v49 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  libraryCopy = library;
  photoLibraryBundle = [libraryCopy photoLibraryBundle];
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
  [photoLibraryBundle getNilPhotoLibraryReasonAndName:v24];
  persistentContainer = [photoLibraryBundle persistentContainer];
  v23 = 0;
  v10 = [persistentContainer sharedPersistentStoreCoordinatorWithError:&v23];
  v11 = v23;

  isSystemPhotoLibrary = [photoLibraryBundle isSystemPhotoLibrary];
  v13 = MEMORY[0x1E696AEC0];
  if (isSystemPhotoLibrary)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(SPL: %@)", v26[5]];
  }

  else
  {
    wellKnownPhotoLibraryIdentifier = [libraryCopy wellKnownPhotoLibraryIdentifier];
    [v13 stringWithFormat:@"(L-%d: %@)", wellKnownPhotoLibraryIdentifier, v26[5]];
  }
  v14 = ;
  v16 = v26[5];
  v26[5] = v14;

  v17 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = v26[5];
    v19 = MEMORY[0x1E69BF220];
    libraryURL = [photoLibraryBundle libraryURL];
    v21 = [v19 descriptionWithFileURL:libraryURL];
    v22 = v32[5];
    *buf = 138544642;
    v38 = detailsCopy;
    v39 = 2114;
    v40 = v18;
    v41 = 2112;
    v42 = v21;
    v43 = 2112;
    v44 = v22;
    v45 = 2112;
    v46 = v11;
    v47 = 2112;
    selfCopy = self;
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

+ (id)_batchFetchingArrayForObjectIDs:(id)ds fetchResult:(id)result
{
  resultCopy = result;
  dsCopy = ds;
  query = [resultCopy query];
  fetchOptions = [query fetchOptions];

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  fetchType = [resultCopy fetchType];
  fetchPropertySets = [resultCopy fetchPropertySets];
  v12 = fetchPropertySets;
  if (fetchType && [fetchPropertySets count])
  {
    v13 = [(objc_class *)[PHPhotoLibrary classForFetchType:?], "propertyFetchHintsForPropertySets:", v12];
  }

  else
  {
    v13 = 2;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  [v9 setObject:v14 forKeyedSubscript:@"propertyHint"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(fetchOptions, "chunkSizeForFetch")}];
  [v9 setObject:v15 forKeyedSubscript:@"batchSize"];

  if ([fetchOptions cacheSizeForFetch] >= 1)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(fetchOptions, "cacheSizeForFetch")}];
    [v9 setObject:v16 forKeyedSubscript:@"cacheSize"];
  }

  query2 = [resultCopy query];
  overrideResultClassWithFetchType = [query2 overrideResultClassWithFetchType];

  if (overrideResultClassWithFetchType)
  {
    [v9 setObject:NSClassFromString(fetchType) forKeyedSubscript:@"fetchedObjectClass"];
  }

  v19 = [PHBatchFetchingArray alloc];
  photoLibrary = [resultCopy photoLibrary];
  v21 = [(PHBatchFetchingArray *)v19 initWithOIDs:dsCopy options:v9 photoLibrary:photoLibrary];

  return v21;
}

+ (id)filteredOIDsFrom:(id)from usingEntityName:(id)name withPhotoLibrary:(id)library
{
  fromCopy = from;
  nameCopy = name;
  allowedEntities = [library allowedEntities];
  v10 = [allowedEntities member:nameCopy];

  if (v10)
  {
    v11 = fromCopy;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

+ (id)cleanedAndSortedOIDsFrom:(id)from usingFetchOptions:(id)options
{
  v38 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  optionsCopy = options;
  v7 = [PHPhotoLibrary uniquedOIDs:fromCopy];
  customObjectIDSortOrder = [optionsCopy customObjectIDSortOrder];
  if (customObjectIDSortOrder)
  {
    v26 = optionsCopy;
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(fromCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = customObjectIDSortOrder;
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

    v27 = fromCopy;

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

    optionsCopy = v26;
    fromCopy = v27;
  }

  else
  {
    v10 = v7;
  }

  v24 = v10;

  return v10;
}

+ (id)postProcessFetchedObjectIDs:(id)ds forFetchResult:(id)result fetchRequest:(id)request
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  resultCopy = result;
  requestCopy = request;
  if (![dsCopy count])
  {
    v15 = dsCopy;
LABEL_19:
    array = [MEMORY[0x1E695DEC8] array];
    goto LABEL_20;
  }

  if ([requestCopy resultType] == 2 && (objc_msgSend(dsCopy, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
  {
    firstObject = [dsCopy firstObject];
    mapping = [firstObject mapping];

    v14 = [mapping indexForKey:@"objectID"];
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = dsCopy;
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
    v15 = dsCopy;
  }

  query = [resultCopy query];
  fetchOptions = [query fetchOptions];
  relatedEntityName = [fetchOptions relatedEntityName];

  if (!relatedEntityName || ([v15 firstObject], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "entity"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "name"), entityName = objc_claimAutoreleasedReturnValue(), v26, v25, !entityName))
  {
    entityName = [requestCopy entityName];
  }

  v28 = [PHFetchResult cleanedAndSortedOIDsFrom:v15 usingFetchOptions:fetchOptions];
  photoLibrary = [query photoLibrary];
  array = [PHFetchResult filteredOIDsFrom:v28 usingEntityName:entityName withPhotoLibrary:photoLibrary];

  if (!array)
  {
    goto LABEL_19;
  }

LABEL_20:

  return array;
}

+ (id)fetchObjectIDs:(id)ds inManagedObjectContext:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  v9 = objc_alloc_init(PHFetchResultInstrumentation);
  v10 = dsCopy;
  if (v9)
  {
    objc_storeStrong(&v9->_fetchResult, ds);
    fetchOptions = [v10 fetchOptions];
    importantFetchName = [fetchOptions importantFetchName];
    importantFetchName = v9->_importantFetchName;
    v9->_importantFetchName = importantFetchName;

    fetchOptions2 = [v10 fetchOptions];
    v9->_suppressSlowFetchReports = [fetchOptions2 suppressSlowFetchReports];

    fetchRequest = [v10 fetchRequest];
    if (kdebug_is_enabled())
    {
      v16 = PLPhotoKitGetLog();
      v17 = os_signpost_id_generate(v16);

      v18 = v16;
      v19 = v18;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        entityName = [fetchRequest entityName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = entityName;
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
  fetchRequest2 = [v10 fetchRequest];
  if (fetchRequest2)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__PHFetchResult_fetchObjectIDs_inManagedObjectContext___block_invoke;
    v30[3] = &unk_1E75AAE68;
    p_buf = &buf;
    v31 = v9;
    v32 = fetchRequest2;
    v33 = contextCopy;
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

  v24 = [self postProcessFetchedObjectIDs:*(*(&buf + 1) + 40) forFetchResult:v10 fetchRequest:fetchRequest2];
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

+ (id)fetchObjectCount:(id)count inManagedObjectContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  countCopy = count;
  contextCopy = context;
  v7 = objc_alloc_init(PHFetchResultInstrumentation);
  v8 = countCopy;
  v9 = v8;
  if (v7)
  {
    fetchRequest = [v8 fetchRequest];
    fetchOptions = [v9 fetchOptions];
    v7->_suppressSlowFetchReports = [fetchOptions suppressSlowFetchReports];

    if (kdebug_is_enabled())
    {
      v12 = PLPhotoKitGetLog();
      v13 = os_signpost_id_generate(v12);

      v14 = v12;
      v15 = v14;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        entityName = [fetchRequest entityName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = entityName;
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
  fetchRequest2 = [v9 fetchRequest];
  if (fetchRequest2)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__PHFetchResult_fetchObjectCount_inManagedObjectContext___block_invoke;
    v26[3] = &unk_1E75AAE68;
    p_buf = &buf;
    v27 = v7;
    v28 = fetchRequest2;
    v29 = contextCopy;
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

+ (id)fetchObjectIDsForCombinableFetchResults:(id)results inManagedObjectContext:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  contextCopy = context;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__52946;
  v40 = __Block_byref_object_dispose__52947;
  v41 = 0;
  firstObject = [resultsCopy firstObject];
  query = [firstObject query];
  photoLibrary = [query photoLibrary];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = resultsCopy;
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

        query2 = [*(*(&v32 + 1) + 8 * i) query];
        [v10 addObject:query2];
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
    v25 = contextCopy;
    v26 = v16;
    v27 = firstObject;
    v28 = query;
    v29 = v11;
    v30 = photoLibrary;
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
      dictionary = [MEMORY[0x1E695DF20] dictionary];
      v20 = v37[5];
      v37[5] = dictionary;
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