@interface PHAssetCollectionChangeRequest
+ (PHAssetCollectionChangeRequest)creationRequestForAssetCollectionWithTitle:(NSString *)title;
+ (id)_changeRequestForAssetCollection:(id)collection optionalAssets:(id)assets;
+ (id)creationRequestForAssetCollectionCopyFromAssetCollection:(id)collection;
+ (id)validateAssetCollectionTitle:(id)title error:(id *)error;
+ (void)_deleteAssetCollections:(id)collections withOperation:(int64_t)operation topLevelSelector:(SEL)selector;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)customSortAscending;
- (BOOL)isPinned;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (NSString)description;
- (NSString)title;
- (PHAssetCollectionChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHAssetCollectionChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHObjectPlaceholder)placeholderForCreatedAssetCollection;
- (id)_assetIDsAndUUIDsFromAssets:(id)assets;
- (id)_mutableAssetsObjectIDsAndUUIDs;
- (id)_mutableCustomKeyAssetObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (unsigned)customSortKey;
- (void)_prepareAssetIDsIfNeeded;
- (void)_prepareCustomKeyAssetIDIfNeeded;
- (void)_prepareWithFetchResult:(id)result;
- (void)addAsset:(id)asset;
- (void)addAssets:(id)assets;
- (void)appendAssets:(id)assets;
- (void)encodeToXPCDict:(id)dict;
- (void)insertAsset:(id)asset inAssetsAtIndex:(unint64_t)index;
- (void)insertAssets:(id)assets atIndexes:(NSIndexSet *)indexes;
- (void)moveAssetsAtIndexes:(NSIndexSet *)fromIndexes toIndex:(NSUInteger)toIndex;
- (void)removeAsset:(id)asset;
- (void)removeAssetFromAssetsAtIndex:(unint64_t)index;
- (void)removeAssets:(id)assets;
- (void)removeAssetsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceAssetInAssetsAtIndex:(unint64_t)index withAsset:(id)asset;
- (void)replaceAssetsAtIndexes:(NSIndexSet *)indexes withAssets:(id)assets;
- (void)setCustomKeyAsset:(id)asset;
- (void)setCustomSortAscending:(BOOL)ascending;
- (void)setCustomSortKey:(unsigned int)key;
- (void)setIsPinned:(BOOL)pinned;
- (void)setTitle:(NSString *)title;
@end

@implementation PHAssetCollectionChangeRequest

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = PHAssetCollectionChangeRequest;
  v3 = [(PHAssetCollectionChangeRequest *)&v8 description];
  title = [(PHAssetCollectionChangeRequest *)self title];
  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
  v6 = [v3 stringByAppendingFormat:@" title=%@ hasAssetChanges=%d", title, mutableObjectIDsAndUUIDs != 0];

  return v6;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  managedObjectContext = [objectCopy managedObjectContext];
  v52[1] = 0;
  v11 = PLSafeEntityForNameInManagedObjectContext();
  v12 = 0;

  if (v11)
  {
    entity = [objectCopy entity];
    v14 = [entity isKindOfEntity:v11];

    if (!v14)
    {
LABEL_26:
      v34 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A578];
      customKeyAssetHelper = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid album type"];
      v60 = customKeyAssetHelper;
      v36 = MEMORY[0x1E695DF20];
      v37 = &v60;
      v38 = &v59;
LABEL_27:
      v19 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
      v39 = [v34 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v19];

      v16 = 0;
      goto LABEL_28;
    }

    kindValue = [objectCopy kindValue];
    if (kindValue > 1504)
    {
      if (kindValue != 1508 && kindValue != 1505)
      {
        goto LABEL_26;
      }
    }

    else if (kindValue != 2 && kindValue != 1000)
    {
      goto LABEL_26;
    }

    if ([objectCopy isCloudSharedAlbum] && !-[PHChangeRequest isClientEntitled](self, "isClientEntitled"))
    {
      v34 = MEMORY[0x1E696ABC0];
      v61 = *MEMORY[0x1E696A578];
      customKeyAssetHelper = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot modify iCloud Shared Streams"];
      v62[0] = customKeyAssetHelper;
      v36 = MEMORY[0x1E695DF20];
      v37 = v62;
      v38 = &v61;
      goto LABEL_27;
    }

    helper = [(PHChangeRequest *)self helper];
    v52[0] = v12;
    v18 = [helper applyMutationsToManagedObject:objectCopy error:v52];
    v19 = v52[0];

    if (!v18)
    {
      v16 = 0;
LABEL_30:
      v12 = v19;
      if (!error)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v20 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      isMutated = [(PHChangeRequest *)self isMutated];
      helper2 = [(PHChangeRequest *)self helper];
      mutations = [helper2 mutations];
      isCloudSharedAlbum = [objectCopy conformsToProtocol:&unk_1F10A4398];
      if (isCloudSharedAlbum)
      {
        isCloudSharedAlbum = [objectCopy isCloudSharedAlbum];
      }

      *buf = 67109634;
      v54 = isMutated;
      v55 = 2112;
      v56 = mutations;
      v57 = 1024;
      v58 = isCloudSharedAlbum;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update %d", buf, 0x18u);
    }

    v49 = libraryCopy;

    if ([(PHChangeRequest *)self isMutated])
    {
      helper3 = [(PHChangeRequest *)self helper];
      mutations2 = [helper3 mutations];
      v27 = [mutations2 objectForKey:@"title"];

      if (v27)
      {
        if ([objectCopy conformsToProtocol:&unk_1F10A4398])
        {
          if ([objectCopy isCloudSharedAlbum])
          {
            v28 = MEMORY[0x1E69BE6A8];
            pathManager = [libraryCopy pathManager];
            libraryURL = [pathManager libraryURL];
            LODWORD(v28) = [v28 sharedStreamsEnabledForPhotoLibraryURL:libraryURL];

            if (v28)
            {
              [MEMORY[0x1E69BE6A8] updateCloudSharedAlbumMetadataOnServer:objectCopy];
            }
          }
        }
      }
    }

    assetsHelper = [(PHAssetCollectionChangeRequest *)self assetsHelper];
    mutableObjectIDsAndUUIDs = [assetsHelper mutableObjectIDsAndUUIDs];
    v33 = 0x1E69BE000uLL;
    if (mutableObjectIDsAndUUIDs)
    {
    }

    else
    {
      mutableAppendedObjectIDsAndUUIDs = [assetsHelper mutableAppendedObjectIDsAndUUIDs];

      if (!mutableAppendedObjectIDsAndUUIDs)
      {

LABEL_45:
        customKeyAssetHelper = [(PHAssetCollectionChangeRequest *)self customKeyAssetHelper];
        mutableObjectIDsAndUUIDs2 = [customKeyAssetHelper mutableObjectIDsAndUUIDs];

        if (!mutableObjectIDsAndUUIDs2)
        {
          v16 = 1;
          libraryCopy = v49;
          goto LABEL_29;
        }

        [customKeyAssetHelper setAllowsInsert:1];
        entityName = [*(v33 + 1344) entityName];
        [customKeyAssetHelper setDestinationEntityName:entityName];

        v50 = v19;
        v16 = [customKeyAssetHelper applyMutationsToManagedObjectToOneRelationship:objectCopy error:&v50];
        v39 = v50;
        libraryCopy = v49;
LABEL_28:

        v19 = v39;
LABEL_29:

        goto LABEL_30;
      }
    }

    v43 = objectCopy;
    [assetsHelper setAllowsInsert:{objc_msgSend(v43, "canPerformEditOperation:", 4)}];
    [assetsHelper setAllowsMove:{objc_msgSend(v43, "canPerformEditOperation:", 16)}];
    [assetsHelper setAllowsRemove:{objc_msgSend(v43, "canPerformEditOperation:", 2)}];
    entityName2 = [MEMORY[0x1E69BE540] entityName];
    [assetsHelper setDestinationEntityName:entityName2];

    [assetsHelper setIsDestinationObjectValid:&__block_literal_global_27119];
    if ([v43 conformsToProtocol:&unk_1F10A4490])
    {
      [v43 userEditableAssets];
    }

    else
    {
      [v43 mutableAssets];
    }
    v45 = ;
    v51 = v19;
    v46 = [assetsHelper applyMutationsToManagedObject:v43 orderedMutableChildren:v45 error:&v51];
    v12 = v51;

    if (!v46)
    {
      v16 = 0;
      libraryCopy = v49;
      if (!error)
      {
        goto LABEL_33;
      }

LABEL_31:
      if ((v16 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v19 = v12;
    v33 = 0x1E69BE000;
    goto LABEL_45;
  }

  if (error)
  {
LABEL_32:
    v40 = v12;
    v16 = 0;
    *error = v12;
    goto LABEL_33;
  }

  v16 = 0;
LABEL_33:

  return v16;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  helper = [(PHChangeRequest *)self helper];
  v27 = 0;
  v11 = [helper allowMutationToManagedObject:objectCopy propertyKey:keyCopy error:&v27];
  v12 = v27;

  if (!v11)
  {
    goto LABEL_11;
  }

  if (![keyCopy isEqualToString:@"title"])
  {
    if (![keyCopy isEqualToString:@"customKeyAsset"])
    {
      v19 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property %@", keyCopy];
      v29 = keyCopy;
      v18 = 1;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v22 = [v19 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v21];

      v12 = v22;
      goto LABEL_14;
    }

    if ([objectCopy kindValue] != 2)
    {
      v13 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", keyCopy];
      v31 = keyCopy2;
      v15 = MEMORY[0x1E695DF20];
      v16 = &v31;
      v17 = &v30;
      goto LABEL_10;
    }

LABEL_7:
    v18 = 1;
    goto LABEL_14;
  }

  if ([objectCopy canPerformEditOperation:64])
  {
    goto LABEL_7;
  }

  v13 = MEMORY[0x1E696ABC0];
  v32 = *MEMORY[0x1E696A578];
  keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", keyCopy];
  v33[0] = keyCopy2;
  v15 = MEMORY[0x1E695DF20];
  v16 = v33;
  v17 = &v32;
LABEL_10:
  v23 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
  v24 = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v23];

  v12 = v24;
LABEL_11:
  if (error)
  {
    v25 = v12;
    v18 = 0;
    *error = v12;
  }

  else
  {
    v18 = 0;
  }

LABEL_14:

  return v18;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  helper = [(PHChangeRequest *)self helper];
  v24 = 0;
  entityName = [MEMORY[0x1E69BE458] entityName];
  v23 = 0;
  v9 = [helper getCloudGUIDIfReserved:&v24 entityName:entityName photoLibrary:libraryCopy error:&v23];
  v10 = v24;
  v11 = v23;

  if (v9)
  {
    v12 = [MEMORY[0x1E69BE458] insertNewAlbumIntoLibrary:libraryCopy];
    if (v12)
    {
      v13 = v12;
      uuid = [(PHChangeRequest *)self uuid];
      [v13 setUuid:uuid];

      if (v10)
      {
        [v13 setCloudGUID:v10];
      }

      v9 = 1;
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create asset collection"];
      v26[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v18 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v17];

      v9 = 0;
      v13 = 0;
      v11 = v18;
    }
  }

  else
  {
    v13 = 0;
  }

  helper2 = [(PHChangeRequest *)self helper];
  clientBundleIdentifier = [helper2 clientBundleIdentifier];

  if (v9)
  {
    if ([clientBundleIdentifier length])
    {
      [v13 setImportedByBundleIdentifier:clientBundleIdentifier];
    }
  }

  else if (error)
  {
    v21 = v11;
    *error = v11;
  }

  return v13;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  title = [(PHAssetCollectionChangeRequest *)self title];
  v10 = 0;
  v6 = [objc_opt_class() validateAssetCollectionTitle:title error:&v10];
  v7 = v10;

  if (error && !v6)
  {
    v8 = v7;
    *error = v7;
  }

  return v6 != 0;
}

- (void)removeAssets:(id)assets
{
  v4 = [(PHAssetCollectionChangeRequest *)self _assetIDsAndUUIDsFromAssets:assets];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableAssetsObjectIDsAndUUIDs = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [_mutableAssetsObjectIDsAndUUIDs removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)appendAssets:(id)assets
{
  v4 = [(PHAssetCollectionChangeRequest *)self _assetIDsAndUUIDsFromAssets:assets];
  if (v4)
  {
    v8 = v4;
    mutableAppendedObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableAppendedObjectIDsAndUUIDs];

    if (!mutableAppendedObjectIDsAndUUIDs)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(PHRelationshipChangeRequestHelper *)self->_assetsHelper setMutableAppendedObjectIDsAndUUIDs:array];
    }

    [(PHChangeRequest *)self didMutate];
    mutableAppendedObjectIDsAndUUIDs2 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableAppendedObjectIDsAndUUIDs];
    [mutableAppendedObjectIDsAndUUIDs2 addObjectsFromArray:v8];

    v4 = v8;
  }
}

- (void)addAssets:(id)assets
{
  v4 = [(PHAssetCollectionChangeRequest *)self _assetIDsAndUUIDsFromAssets:assets];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequest *)self didMutate];
    _mutableAssetsObjectIDsAndUUIDs = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [_mutableAssetsObjectIDsAndUUIDs addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (id)_assetIDsAndUUIDsFromAssets:(id)assets
{
  v17 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [assetsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    array = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v10 = PLObjectIDOrUUIDFromPHObject(v9);
        [array addObject:v10];
      }

      v5 = [assetsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (void)removeAsset:(id)asset
{
  v8 = *MEMORY[0x1E69E9840];
  if (asset)
  {
    assetCopy = asset;
    v4 = MEMORY[0x1E695DEC8];
    assetCopy2 = asset;
    v6 = [v4 arrayWithObjects:&assetCopy count:1];

    [(PHAssetCollectionChangeRequest *)self removeAssets:v6, assetCopy, v8];
  }
}

- (void)addAsset:(id)asset
{
  v8 = *MEMORY[0x1E69E9840];
  if (asset)
  {
    assetCopy = asset;
    v4 = MEMORY[0x1E695DEC8];
    assetCopy2 = asset;
    v6 = [v4 arrayWithObjects:&assetCopy count:1];

    [(PHAssetCollectionChangeRequest *)self addAssets:v6, assetCopy, v8];
  }
}

- (void)moveAssetsAtIndexes:(NSIndexSet *)fromIndexes toIndex:(NSUInteger)toIndex
{
  v10 = fromIndexes;
  if ([(NSIndexSet *)v10 count])
  {
    [(PHChangeRequest *)self didMutate];
    _mutableAssetsObjectIDsAndUUIDs = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    v7 = [_mutableAssetsObjectIDsAndUUIDs objectsAtIndexes:v10];
    [_mutableAssetsObjectIDsAndUUIDs removeObjectsAtIndexes:v10];
    v8 = [(NSIndexSet *)v10 count];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{toIndex, v8}];
    [_mutableAssetsObjectIDsAndUUIDs insertObjects:v7 atIndexes:v9];
  }
}

- (void)replaceAssetsAtIndexes:(NSIndexSet *)indexes withAssets:(id)assets
{
  v8 = indexes;
  v6 = [(PHAssetCollectionChangeRequest *)self _assetIDsAndUUIDsFromAssets:assets];
  if (v6)
  {
    _mutableAssetsObjectIDsAndUUIDs = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [_mutableAssetsObjectIDsAndUUIDs replaceObjectsAtIndexes:v8 withObjects:v6];
  }
}

- (void)replaceAssetInAssetsAtIndex:(unint64_t)index withAsset:(id)asset
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (asset)
  {
    v6 = MEMORY[0x1E696AC90];
    assetCopy = asset;
    v8 = [v6 indexSetWithIndex:index];
    v10[0] = assetCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

    [(PHAssetCollectionChangeRequest *)self replaceAssetsAtIndexes:v8 withAssets:v9];
  }
}

- (void)removeAssetsAtIndexes:(NSIndexSet *)indexes
{
  v5 = indexes;
  if ([(NSIndexSet *)v5 count])
  {
    [(PHChangeRequest *)self didMutate];
    _mutableAssetsObjectIDsAndUUIDs = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [_mutableAssetsObjectIDsAndUUIDs removeObjectsAtIndexes:v5];
  }
}

- (void)insertAssets:(id)assets atIndexes:(NSIndexSet *)indexes
{
  v8 = indexes;
  v6 = [(PHAssetCollectionChangeRequest *)self _assetIDsAndUUIDsFromAssets:assets];
  if (v6)
  {
    _mutableAssetsObjectIDsAndUUIDs = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [_mutableAssetsObjectIDsAndUUIDs insertObjects:v6 atIndexes:v8];

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)removeAssetFromAssetsAtIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:?];
    [(PHAssetCollectionChangeRequest *)self removeAssetsAtIndexes:v5];
  }
}

- (void)insertAsset:(id)asset inAssetsAtIndex:(unint64_t)index
{
  v11 = *MEMORY[0x1E69E9840];
  if (asset)
  {
    assetCopy = asset;
    v6 = MEMORY[0x1E695DEC8];
    assetCopy2 = asset;
    v8 = [v6 arrayWithObjects:&assetCopy count:1];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{index, assetCopy, v11}];

    [(PHAssetCollectionChangeRequest *)self insertAssets:v8 atIndexes:v9];
  }
}

- (id)_mutableAssetsObjectIDsAndUUIDs
{
  [(PHAssetCollectionChangeRequest *)self _prepareAssetIDsIfNeeded];
  assetsHelper = self->_assetsHelper;

  return [(PHRelationshipChangeRequestHelper *)assetsHelper mutableObjectIDsAndUUIDs];
}

- (void)_prepareAssetIDsIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    originalAssetCollection = self->_originalAssetCollection;
    if (originalAssetCollection)
    {
      v5 = [PHQuery queryForAssetsInAssetCollection:originalAssetCollection options:0];
      executeQuery = [v5 executeQuery];
      [(PHAssetCollectionChangeRequest *)self _prepareWithFetchResult:executeQuery];
    }

    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];

    if (!originalObjectIDs2)
    {
      [(PHRelationshipChangeRequestHelper *)self->_assetsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    assetsHelper = self->_assetsHelper;
    originalObjectIDs3 = [(PHRelationshipChangeRequestHelper *)assetsHelper originalObjectIDs];
    v10 = [originalObjectIDs3 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)assetsHelper setMutableObjectIDsAndUUIDs:v10];
  }
}

- (void)_prepareWithFetchResult:(id)result
{
  resultCopy = result;
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    assetsHelper = self->_assetsHelper;
    fetchedObjectIDs = [resultCopy fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)assetsHelper setOriginalObjectIDs:fetchedObjectIDs];
  }
}

- (void)setCustomKeyAsset:(id)asset
{
  assetCopy = asset;
  v4 = PLObjectIDOrUUIDFromPHObject(assetCopy);
  if (v4)
  {
    if (self->_originalAssetCollection || (-[PHChangeRequest helper](self, "helper"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isNewRequest], v5, v6))
    {
      [(PHChangeRequest *)self didMutate];
      _mutableAssetsObjectIDsAndUUIDs = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
      if (([_mutableAssetsObjectIDsAndUUIDs containsObject:v4] & 1) == 0)
      {
        [(PHAssetCollectionChangeRequest *)self addAsset:assetCopy];
      }

      _mutableCustomKeyAssetObjectIDsAndUUIDs = [(PHAssetCollectionChangeRequest *)self _mutableCustomKeyAssetObjectIDsAndUUIDs];
      [_mutableCustomKeyAssetObjectIDsAndUUIDs removeAllObjects];

      _mutableCustomKeyAssetObjectIDsAndUUIDs2 = [(PHAssetCollectionChangeRequest *)self _mutableCustomKeyAssetObjectIDsAndUUIDs];
      [_mutableCustomKeyAssetObjectIDsAndUUIDs2 addObject:v4];
    }
  }
}

- (id)_mutableCustomKeyAssetObjectIDsAndUUIDs
{
  [(PHAssetCollectionChangeRequest *)self _prepareCustomKeyAssetIDIfNeeded];
  customKeyAssetHelper = self->_customKeyAssetHelper;

  return [(PHRelationshipChangeRequestHelper *)customKeyAssetHelper mutableObjectIDsAndUUIDs];
}

- (void)_prepareCustomKeyAssetIDIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_customKeyAssetHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    [(PHRelationshipChangeRequestHelper *)self->_customKeyAssetHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_customKeyAssetHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    customKeyAssetHelper = self->_customKeyAssetHelper;
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)customKeyAssetHelper originalObjectIDs];
    v6 = [originalObjectIDs2 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)customKeyAssetHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (void)setIsPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:pinnedCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"isPinned"];
}

- (BOOL)isPinned
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"isPinned"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setTitle:(NSString *)title
{
  v10 = title;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (v10)
  {
    [mutations setObject:v10 forKeyedSubscript:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"title"];
  }

  else
  {
    [mutations removeObjectForKey:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"title"];

  return v5;
}

- (void)setCustomSortAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:ascendingCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"customSortAscending"];
}

- (BOOL)customSortAscending
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"customSortAscending"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setCustomSortKey:(unsigned int)key
{
  v3 = *&key;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"customSortKey"];
}

- (unsigned)customSortKey
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"customSortKey"];

  LODWORD(helper) = [v5 intValue];
  return helper;
}

- (PHObjectPlaceholder)placeholderForCreatedAssetCollection
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  assetsHelper = [(PHAssetCollectionChangeRequest *)self assetsHelper];
  [assetsHelper encodeToXPCDict:dictCopy];

  customKeyAssetHelper = [(PHAssetCollectionChangeRequest *)self customKeyAssetHelper];
  [customKeyAssetHelper encodeToXPCDict:dictCopy];
}

- (PHAssetCollectionChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v19.receiver = self;
  v19.super_class = PHAssetCollectionChangeRequest;
  v11 = [(PHChangeRequest *)&v19 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"assets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      assetsHelper = v11->_assetsHelper;
      v11->_assetsHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customKeyAsset" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      customKeyAssetHelper = v11->_customKeyAssetHelper;
      v11->_customKeyAssetHelper = v16;
    }
  }

  return v11;
}

- (PHAssetCollectionChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = PHAssetCollectionChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"assets" changeRequestHelper:v8->super._helper];
    assetsHelper = v8->_assetsHelper;
    v8->_assetsHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customKeyAsset" changeRequestHelper:v8->super._helper];
    customKeyAssetHelper = v8->_customKeyAssetHelper;
    v8->_customKeyAssetHelper = v13;
  }

  return v8;
}

- (id)initForNewObject
{
  v10.receiver = self;
  v10.super_class = PHAssetCollectionChangeRequest;
  v2 = [(PHChangeRequest *)&v10 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"assets" changeRequestHelper:v2->super._helper];
    assetsHelper = v2->_assetsHelper;
    v2->_assetsHelper = v5;

    v7 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customKeyAsset" changeRequestHelper:v2->super._helper];
    customKeyAssetHelper = v2->_customKeyAssetHelper;
    v2->_customKeyAssetHelper = v7;
  }

  return v2;
}

+ (void)_deleteAssetCollections:(id)collections withOperation:(int64_t)operation topLevelSelector:(SEL)selector
{
  v19 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  [PHObject assertAllObjects:collectionsCopy forSelector:selector areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = collectionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(PHTrashableObjectDeleteRequest *)PHCollectionDeleteRequest deleteRequestForObject:*(*(&v14 + 1) + 8 * v12++) operation:operation, v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

+ (id)creationRequestForAssetCollectionCopyFromAssetCollection:(id)collection
{
  v44 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if ([collectionCopy assetCollectionType] == 1)
  {
    photoLibrary = [collectionCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v7 = [PHAsset fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__27418;
    v42 = __Block_byref_object_dispose__27419;
    v43 = 0;
    photoLibrary2 = [collectionCopy photoLibrary];
    v8PhotoLibrary = [photoLibrary2 photoLibrary];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __91__PHAssetCollectionChangeRequest_creationRequestForAssetCollectionCopyFromAssetCollection___block_invoke;
    v20 = &unk_1E75A79C0;
    v10 = collectionCopy;
    v21 = v10;
    v22 = &v34;
    v23 = &v30;
    v24 = &v26;
    p_buf = &buf;
    [v8PhotoLibrary performBlockAndWait:&v17];

    title = [v10 title];
    v12 = [self creationRequestForAssetCollectionWithTitle:title];

    [v12 addAssets:v7];
    [v12 setCustomSortKey:*(v35 + 6)];
    [v12 setCustomSortAscending:*(v31 + 6) != 0];
    [v12 setIsPinned:*(v27 + 24)];
    if (*(*(&buf + 1) + 40))
    {
      v38 = *(*(&buf + 1) + 40);
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v14 = [PHAsset fetchAssetsWithLocalIdentifiers:v13 options:librarySpecificFetchOptions];

      firstObject = [v14 firstObject];
      [v12 setCustomKeyAsset:firstObject];
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    librarySpecificFetchOptions = PLPhotoKitGetLog();
    if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = collectionCopy;
      _os_log_impl(&dword_19C86F000, librarySpecificFetchOptions, OS_LOG_TYPE_ERROR, "Asset collection type is not an user album: %@", &buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

void __91__PHAssetCollectionChangeRequest_creationRequestForAssetCollectionCopyFromAssetCollection___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69BE458];
  v3 = [*(a1 + 32) objectID];
  v4 = [*(a1 + 32) photoLibrary];
  v5 = [v4 photoLibrary];
  v11 = [v2 albumWithObjectID:v3 inLibrary:v5];

  *(*(*(a1 + 40) + 8) + 24) = [v11 customSortKey];
  *(*(*(a1 + 48) + 8) + 24) = [v11 customSortAscending];
  *(*(*(a1 + 56) + 8) + 24) = [v11 isPinned];
  v6 = [v11 customKeyAsset];

  if (v6)
  {
    v7 = [v11 customKeyAsset];
    v8 = [v7 uuid];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

+ (id)validateAssetCollectionTitle:(id)title error:(id *)error
{
  v5 = MEMORY[0x1E696AB08];
  titleCopy = title;
  whitespaceAndNewlineCharacterSet = [v5 whitespaceAndNewlineCharacterSet];
  v8 = [titleCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v8 length])
  {
    v9 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v9 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Empty title unsupported"];
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v9 = v9;
    *error = v9;
  }

LABEL_7:

  return v8;
}

+ (PHAssetCollectionChangeRequest)creationRequestForAssetCollectionWithTitle:(NSString *)title
{
  v3 = title;
  initForNewObject = [[PHAssetCollectionChangeRequest alloc] initForNewObject];
  [initForNewObject setTitle:v3];

  return initForNewObject;
}

+ (id)_changeRequestForAssetCollection:(id)collection optionalAssets:(id)assets
{
  collectionCopy = collection;
  assetsCopy = assets;
  if ([collectionCopy isTransient])
  {
    v7 = 0;
  }

  else
  {
    v8 = [PHAssetCollectionChangeRequest alloc];
    uuid = [collectionCopy uuid];
    objectID = [collectionCopy objectID];
    v7 = [(PHAssetCollectionChangeRequest *)v8 initWithUUID:uuid objectID:objectID];

    [(PHAssetCollectionChangeRequest *)v7 _setOriginalAssetCollection:collectionCopy];
    if (assetsCopy)
    {
      [(PHAssetCollectionChangeRequest *)v7 _prepareWithFetchResult:assetsCopy];
    }
  }

  return v7;
}

@end