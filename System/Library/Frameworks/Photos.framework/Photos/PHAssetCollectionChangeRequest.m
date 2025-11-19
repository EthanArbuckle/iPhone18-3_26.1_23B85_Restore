@interface PHAssetCollectionChangeRequest
+ (PHAssetCollectionChangeRequest)creationRequestForAssetCollectionWithTitle:(NSString *)title;
+ (id)_changeRequestForAssetCollection:(id)a3 optionalAssets:(id)a4;
+ (id)creationRequestForAssetCollectionCopyFromAssetCollection:(id)a3;
+ (id)validateAssetCollectionTitle:(id)a3 error:(id *)a4;
+ (void)_deleteAssetCollections:(id)a3 withOperation:(int64_t)a4 topLevelSelector:(SEL)a5;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)customSortAscending;
- (BOOL)isPinned;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (NSString)description;
- (NSString)title;
- (PHAssetCollectionChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHAssetCollectionChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHObjectPlaceholder)placeholderForCreatedAssetCollection;
- (id)_assetIDsAndUUIDsFromAssets:(id)a3;
- (id)_mutableAssetsObjectIDsAndUUIDs;
- (id)_mutableCustomKeyAssetObjectIDsAndUUIDs;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (unsigned)customSortKey;
- (void)_prepareAssetIDsIfNeeded;
- (void)_prepareCustomKeyAssetIDIfNeeded;
- (void)_prepareWithFetchResult:(id)a3;
- (void)addAsset:(id)a3;
- (void)addAssets:(id)assets;
- (void)appendAssets:(id)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)insertAsset:(id)a3 inAssetsAtIndex:(unint64_t)a4;
- (void)insertAssets:(id)assets atIndexes:(NSIndexSet *)indexes;
- (void)moveAssetsAtIndexes:(NSIndexSet *)fromIndexes toIndex:(NSUInteger)toIndex;
- (void)removeAsset:(id)a3;
- (void)removeAssetFromAssetsAtIndex:(unint64_t)a3;
- (void)removeAssets:(id)assets;
- (void)removeAssetsAtIndexes:(NSIndexSet *)indexes;
- (void)replaceAssetInAssetsAtIndex:(unint64_t)a3 withAsset:(id)a4;
- (void)replaceAssetsAtIndexes:(NSIndexSet *)indexes withAssets:(id)assets;
- (void)setCustomKeyAsset:(id)a3;
- (void)setCustomSortAscending:(BOOL)a3;
- (void)setCustomSortKey:(unsigned int)a3;
- (void)setIsPinned:(BOOL)a3;
- (void)setTitle:(NSString *)title;
@end

@implementation PHAssetCollectionChangeRequest

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = PHAssetCollectionChangeRequest;
  v3 = [(PHAssetCollectionChangeRequest *)&v8 description];
  v4 = [(PHAssetCollectionChangeRequest *)self title];
  v5 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];
  v6 = [v3 stringByAppendingFormat:@" title=%@ hasAssetChanges=%d", v4, v5 != 0];

  return v6;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v62[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 managedObjectContext];
  v52[1] = 0;
  v11 = PLSafeEntityForNameInManagedObjectContext();
  v12 = 0;

  if (v11)
  {
    v13 = [v8 entity];
    v14 = [v13 isKindOfEntity:v11];

    if (!v14)
    {
LABEL_26:
      v34 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A578];
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid album type"];
      v60 = v35;
      v36 = MEMORY[0x1E695DF20];
      v37 = &v60;
      v38 = &v59;
LABEL_27:
      v19 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
      v39 = [v34 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v19];

      v16 = 0;
      goto LABEL_28;
    }

    v15 = [v8 kindValue];
    if (v15 > 1504)
    {
      if (v15 != 1508 && v15 != 1505)
      {
        goto LABEL_26;
      }
    }

    else if (v15 != 2 && v15 != 1000)
    {
      goto LABEL_26;
    }

    if ([v8 isCloudSharedAlbum] && !-[PHChangeRequest isClientEntitled](self, "isClientEntitled"))
    {
      v34 = MEMORY[0x1E696ABC0];
      v61 = *MEMORY[0x1E696A578];
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot modify iCloud Shared Streams"];
      v62[0] = v35;
      v36 = MEMORY[0x1E695DF20];
      v37 = v62;
      v38 = &v61;
      goto LABEL_27;
    }

    v17 = [(PHChangeRequest *)self helper];
    v52[0] = v12;
    v18 = [v17 applyMutationsToManagedObject:v8 error:v52];
    v19 = v52[0];

    if (!v18)
    {
      v16 = 0;
LABEL_30:
      v12 = v19;
      if (!a5)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v20 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(PHChangeRequest *)self isMutated];
      v22 = [(PHChangeRequest *)self helper];
      v23 = [v22 mutations];
      v24 = [v8 conformsToProtocol:&unk_1F10A4398];
      if (v24)
      {
        v24 = [v8 isCloudSharedAlbum];
      }

      *buf = 67109634;
      v54 = v21;
      v55 = 2112;
      v56 = v23;
      v57 = 1024;
      v58 = v24;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update %d", buf, 0x18u);
    }

    v49 = v9;

    if ([(PHChangeRequest *)self isMutated])
    {
      v25 = [(PHChangeRequest *)self helper];
      v26 = [v25 mutations];
      v27 = [v26 objectForKey:@"title"];

      if (v27)
      {
        if ([v8 conformsToProtocol:&unk_1F10A4398])
        {
          if ([v8 isCloudSharedAlbum])
          {
            v28 = MEMORY[0x1E69BE6A8];
            v29 = [v9 pathManager];
            v30 = [v29 libraryURL];
            LODWORD(v28) = [v28 sharedStreamsEnabledForPhotoLibraryURL:v30];

            if (v28)
            {
              [MEMORY[0x1E69BE6A8] updateCloudSharedAlbumMetadataOnServer:v8];
            }
          }
        }
      }
    }

    v31 = [(PHAssetCollectionChangeRequest *)self assetsHelper];
    v32 = [v31 mutableObjectIDsAndUUIDs];
    v33 = 0x1E69BE000uLL;
    if (v32)
    {
    }

    else
    {
      v42 = [v31 mutableAppendedObjectIDsAndUUIDs];

      if (!v42)
      {

LABEL_45:
        v35 = [(PHAssetCollectionChangeRequest *)self customKeyAssetHelper];
        v47 = [v35 mutableObjectIDsAndUUIDs];

        if (!v47)
        {
          v16 = 1;
          v9 = v49;
          goto LABEL_29;
        }

        [v35 setAllowsInsert:1];
        v48 = [*(v33 + 1344) entityName];
        [v35 setDestinationEntityName:v48];

        v50 = v19;
        v16 = [v35 applyMutationsToManagedObjectToOneRelationship:v8 error:&v50];
        v39 = v50;
        v9 = v49;
LABEL_28:

        v19 = v39;
LABEL_29:

        goto LABEL_30;
      }
    }

    v43 = v8;
    [v31 setAllowsInsert:{objc_msgSend(v43, "canPerformEditOperation:", 4)}];
    [v31 setAllowsMove:{objc_msgSend(v43, "canPerformEditOperation:", 16)}];
    [v31 setAllowsRemove:{objc_msgSend(v43, "canPerformEditOperation:", 2)}];
    v44 = [MEMORY[0x1E69BE540] entityName];
    [v31 setDestinationEntityName:v44];

    [v31 setIsDestinationObjectValid:&__block_literal_global_27119];
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
    v46 = [v31 applyMutationsToManagedObject:v43 orderedMutableChildren:v45 error:&v51];
    v12 = v51;

    if (!v46)
    {
      v16 = 0;
      v9 = v49;
      if (!a5)
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

  if (a5)
  {
LABEL_32:
    v40 = v12;
    v16 = 0;
    *a5 = v12;
    goto LABEL_33;
  }

  v16 = 0;
LABEL_33:

  return v16;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PHChangeRequest *)self helper];
  v27 = 0;
  v11 = [v10 allowMutationToManagedObject:v8 propertyKey:v9 error:&v27];
  v12 = v27;

  if (!v11)
  {
    goto LABEL_11;
  }

  if (![v9 isEqualToString:@"title"])
  {
    if (![v9 isEqualToString:@"customKeyAsset"])
    {
      v19 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property %@", v9];
      v29 = v20;
      v18 = 1;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v22 = [v19 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v21];

      v12 = v22;
      goto LABEL_14;
    }

    if ([v8 kindValue] != 2)
    {
      v13 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", v9];
      v31 = v14;
      v15 = MEMORY[0x1E695DF20];
      v16 = &v31;
      v17 = &v30;
      goto LABEL_10;
    }

LABEL_7:
    v18 = 1;
    goto LABEL_14;
  }

  if ([v8 canPerformEditOperation:64])
  {
    goto LABEL_7;
  }

  v13 = MEMORY[0x1E696ABC0];
  v32 = *MEMORY[0x1E696A578];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", v9];
  v33[0] = v14;
  v15 = MEMORY[0x1E695DF20];
  v16 = v33;
  v17 = &v32;
LABEL_10:
  v23 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
  v24 = [v13 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v23];

  v12 = v24;
LABEL_11:
  if (a5)
  {
    v25 = v12;
    v18 = 0;
    *a5 = v12;
  }

  else
  {
    v18 = 0;
  }

LABEL_14:

  return v18;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHChangeRequest *)self helper];
  v24 = 0;
  v8 = [MEMORY[0x1E69BE458] entityName];
  v23 = 0;
  v9 = [v7 getCloudGUIDIfReserved:&v24 entityName:v8 photoLibrary:v6 error:&v23];
  v10 = v24;
  v11 = v23;

  if (v9)
  {
    v12 = [MEMORY[0x1E69BE458] insertNewAlbumIntoLibrary:v6];
    if (v12)
    {
      v13 = v12;
      v14 = [(PHChangeRequest *)self uuid];
      [v13 setUuid:v14];

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

  v19 = [(PHChangeRequest *)self helper];
  v20 = [v19 clientBundleIdentifier];

  if (v9)
  {
    if ([v20 length])
    {
      [v13 setImportedByBundleIdentifier:v20];
    }
  }

  else if (a4)
  {
    v21 = v11;
    *a4 = v11;
  }

  return v13;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v5 = [(PHAssetCollectionChangeRequest *)self title];
  v10 = 0;
  v6 = [objc_opt_class() validateAssetCollectionTitle:v5 error:&v10];
  v7 = v10;

  if (a4 && !v6)
  {
    v8 = v7;
    *a4 = v7;
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
    v5 = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)appendAssets:(id)a3
{
  v4 = [(PHAssetCollectionChangeRequest *)self _assetIDsAndUUIDsFromAssets:a3];
  if (v4)
  {
    v8 = v4;
    v5 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableAppendedObjectIDsAndUUIDs];

    if (!v5)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      [(PHRelationshipChangeRequestHelper *)self->_assetsHelper setMutableAppendedObjectIDsAndUUIDs:v6];
    }

    [(PHChangeRequest *)self didMutate];
    v7 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableAppendedObjectIDsAndUUIDs];
    [v7 addObjectsFromArray:v8];

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
    v5 = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (id)_assetIDsAndUUIDsFromAssets:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (!v6)
        {
          v6 = [MEMORY[0x1E695DF70] array];
        }

        v10 = PLObjectIDOrUUIDFromPHObject(v9);
        [v6 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeAsset:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(PHAssetCollectionChangeRequest *)self removeAssets:v6, v7, v8];
  }
}

- (void)addAsset:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(PHAssetCollectionChangeRequest *)self addAssets:v6, v7, v8];
  }
}

- (void)moveAssetsAtIndexes:(NSIndexSet *)fromIndexes toIndex:(NSUInteger)toIndex
{
  v10 = fromIndexes;
  if ([(NSIndexSet *)v10 count])
  {
    [(PHChangeRequest *)self didMutate];
    v6 = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    v7 = [v6 objectsAtIndexes:v10];
    [v6 removeObjectsAtIndexes:v10];
    v8 = [(NSIndexSet *)v10 count];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{toIndex, v8}];
    [v6 insertObjects:v7 atIndexes:v9];
  }
}

- (void)replaceAssetsAtIndexes:(NSIndexSet *)indexes withAssets:(id)assets
{
  v8 = indexes;
  v6 = [(PHAssetCollectionChangeRequest *)self _assetIDsAndUUIDsFromAssets:assets];
  if (v6)
  {
    v7 = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [v7 replaceObjectsAtIndexes:v8 withObjects:v6];
  }
}

- (void)replaceAssetInAssetsAtIndex:(unint64_t)a3 withAsset:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = MEMORY[0x1E696AC90];
    v7 = a4;
    v8 = [v6 indexSetWithIndex:a3];
    v10[0] = v7;
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
    v4 = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [v4 removeObjectsAtIndexes:v5];
  }
}

- (void)insertAssets:(id)assets atIndexes:(NSIndexSet *)indexes
{
  v8 = indexes;
  v6 = [(PHAssetCollectionChangeRequest *)self _assetIDsAndUUIDsFromAssets:assets];
  if (v6)
  {
    v7 = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
    [v7 insertObjects:v6 atIndexes:v8];

    [(PHChangeRequest *)self didMutate];
  }
}

- (void)removeAssetFromAssetsAtIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:?];
    [(PHAssetCollectionChangeRequest *)self removeAssetsAtIndexes:v5];
  }
}

- (void)insertAsset:(id)a3 inAssetsAtIndex:(unint64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a3;
    v8 = [v6 arrayWithObjects:&v10 count:1];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{a4, v10, v11}];

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
  v3 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];

  if (!v3)
  {
    originalAssetCollection = self->_originalAssetCollection;
    if (originalAssetCollection)
    {
      v5 = [PHQuery queryForAssetsInAssetCollection:originalAssetCollection options:0];
      v6 = [v5 executeQuery];
      [(PHAssetCollectionChangeRequest *)self _prepareWithFetchResult:v6];
    }

    v7 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];

    if (!v7)
    {
      [(PHRelationshipChangeRequestHelper *)self->_assetsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }
  }

  v8 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper mutableObjectIDsAndUUIDs];

  if (!v8)
  {
    assetsHelper = self->_assetsHelper;
    v11 = [(PHRelationshipChangeRequestHelper *)assetsHelper originalObjectIDs];
    v10 = [v11 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)assetsHelper setMutableObjectIDsAndUUIDs:v10];
  }
}

- (void)_prepareWithFetchResult:(id)a3
{
  v7 = a3;
  +[PHPhotoLibrary assertTransaction];
  v4 = [(PHRelationshipChangeRequestHelper *)self->_assetsHelper originalObjectIDs];

  if (!v4)
  {
    assetsHelper = self->_assetsHelper;
    v6 = [v7 fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)assetsHelper setOriginalObjectIDs:v6];
  }
}

- (void)setCustomKeyAsset:(id)a3
{
  v10 = a3;
  v4 = PLObjectIDOrUUIDFromPHObject(v10);
  if (v4)
  {
    if (self->_originalAssetCollection || (-[PHChangeRequest helper](self, "helper"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isNewRequest], v5, v6))
    {
      [(PHChangeRequest *)self didMutate];
      v7 = [(PHAssetCollectionChangeRequest *)self _mutableAssetsObjectIDsAndUUIDs];
      if (([v7 containsObject:v4] & 1) == 0)
      {
        [(PHAssetCollectionChangeRequest *)self addAsset:v10];
      }

      v8 = [(PHAssetCollectionChangeRequest *)self _mutableCustomKeyAssetObjectIDsAndUUIDs];
      [v8 removeAllObjects];

      v9 = [(PHAssetCollectionChangeRequest *)self _mutableCustomKeyAssetObjectIDsAndUUIDs];
      [v9 addObject:v4];
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
  v3 = [(PHRelationshipChangeRequestHelper *)self->_customKeyAssetHelper originalObjectIDs];

  if (!v3)
  {
    [(PHRelationshipChangeRequestHelper *)self->_customKeyAssetHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v4 = [(PHRelationshipChangeRequestHelper *)self->_customKeyAssetHelper mutableObjectIDsAndUUIDs];

  if (!v4)
  {
    customKeyAssetHelper = self->_customKeyAssetHelper;
    v7 = [(PHRelationshipChangeRequestHelper *)customKeyAssetHelper originalObjectIDs];
    v6 = [v7 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)customKeyAssetHelper setMutableObjectIDsAndUUIDs:v6];
  }
}

- (void)setIsPinned:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"isPinned"];
}

- (BOOL)isPinned
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"isPinned"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setTitle:(NSString *)title
{
  v10 = title;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"title"];
  }

  else
  {
    [v6 removeObjectForKey:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"title"];
  }
}

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"title"];

  return v5;
}

- (void)setCustomSortAscending:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"customSortAscending"];
}

- (BOOL)customSortAscending
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"customSortAscending"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setCustomSortKey:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"customSortKey"];
}

- (unsigned)customSortKey
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"customSortKey"];

  LODWORD(v3) = [v5 intValue];
  return v3;
}

- (PHObjectPlaceholder)placeholderForCreatedAssetCollection
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)encodeToXPCDict:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];

  v6 = [(PHAssetCollectionChangeRequest *)self assetsHelper];
  [v6 encodeToXPCDict:v4];

  v7 = [(PHAssetCollectionChangeRequest *)self customKeyAssetHelper];
  [v7 encodeToXPCDict:v4];
}

- (PHAssetCollectionChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PHAssetCollectionChangeRequest;
  v11 = [(PHChangeRequest *)&v19 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"assets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      assetsHelper = v11->_assetsHelper;
      v11->_assetsHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customKeyAsset" xpcDict:v8 changeRequestHelper:v11->super._helper];
      customKeyAssetHelper = v11->_customKeyAssetHelper;
      v11->_customKeyAssetHelper = v16;
    }
  }

  return v11;
}

- (PHAssetCollectionChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PHAssetCollectionChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
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

+ (void)_deleteAssetCollections:(id)a3 withOperation:(int64_t)a4 topLevelSelector:(SEL)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [PHObject assertAllObjects:v7 forSelector:a5 areOfType:objc_opt_class()];
  +[PHPhotoLibrary assertTransaction];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
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

        v13 = [(PHTrashableObjectDeleteRequest *)PHCollectionDeleteRequest deleteRequestForObject:*(*(&v14 + 1) + 8 * v12++) operation:a4, v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

+ (id)creationRequestForAssetCollectionCopyFromAssetCollection:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 assetCollectionType] == 1)
  {
    v5 = [v4 photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    v7 = [PHAsset fetchAssetsInAssetCollection:v4 options:v6];
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
    v8 = [v4 photoLibrary];
    v9 = [v8 photoLibrary];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __91__PHAssetCollectionChangeRequest_creationRequestForAssetCollectionCopyFromAssetCollection___block_invoke;
    v20 = &unk_1E75A79C0;
    v10 = v4;
    v21 = v10;
    v22 = &v34;
    v23 = &v30;
    v24 = &v26;
    p_buf = &buf;
    [v9 performBlockAndWait:&v17];

    v11 = [v10 title];
    v12 = [a1 creationRequestForAssetCollectionWithTitle:v11];

    [v12 addAssets:v7];
    [v12 setCustomSortKey:*(v35 + 6)];
    [v12 setCustomSortAscending:*(v31 + 6) != 0];
    [v12 setIsPinned:*(v27 + 24)];
    if (*(*(&buf + 1) + 40))
    {
      v38 = *(*(&buf + 1) + 40);
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v14 = [PHAsset fetchAssetsWithLocalIdentifiers:v13 options:v6];

      v15 = [v14 firstObject];
      [v12 setCustomKeyAsset:v15];
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Asset collection type is not an user album: %@", &buf, 0xCu);
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

+ (id)validateAssetCollectionTitle:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696AB08];
  v6 = a3;
  v7 = [v5 whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if ([v8 length])
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v9 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Empty title unsupported"];
    v8 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v9 = v9;
    *a4 = v9;
  }

LABEL_7:

  return v8;
}

+ (PHAssetCollectionChangeRequest)creationRequestForAssetCollectionWithTitle:(NSString *)title
{
  v3 = title;
  v4 = [[PHAssetCollectionChangeRequest alloc] initForNewObject];
  [v4 setTitle:v3];

  return v4;
}

+ (id)_changeRequestForAssetCollection:(id)a3 optionalAssets:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isTransient])
  {
    v7 = 0;
  }

  else
  {
    v8 = [PHAssetCollectionChangeRequest alloc];
    v9 = [v5 uuid];
    v10 = [v5 objectID];
    v7 = [(PHAssetCollectionChangeRequest *)v8 initWithUUID:v9 objectID:v10];

    [(PHAssetCollectionChangeRequest *)v7 _setOriginalAssetCollection:v5];
    if (v6)
    {
      [(PHAssetCollectionChangeRequest *)v7 _prepareWithFetchResult:v6];
    }
  }

  return v7;
}

@end