@interface PHCollectionList
+ (PHCollectionList)transientCollectionListWithCollections:(NSArray *)collections title:(NSString *)title;
+ (PHCollectionList)transientCollectionListWithCollectionsFetchResult:(PHFetchResult *)fetchResult title:(NSString *)title;
+ (PHFetchResult)fetchCollectionListsContainingCollection:(PHCollection *)collection options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchCollectionListsWithLocalIdentifiers:(NSArray *)identifiers options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchCollectionListsWithType:(PHCollectionListType)collectionListType subtype:(PHCollectionListSubtype)subtype options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchMomentListsWithSubtype:(PHCollectionListSubtype)momentListSubtype containingMoment:(PHAssetCollection *)moment options:(PHFetchOptions *)options;
+ (PHFetchResult)fetchMomentListsWithSubtype:(PHCollectionListSubtype)momentListSubtype options:(PHFetchOptions *)options;
+ (id)entityKeyMap;
+ (id)fetchCollectionListsForReferences:(id)a3 photoLibrary:(id)a4;
+ (id)fetchPredicateFromComparisonPredicate:(id)a3 options:(id)a4;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)transientCollectionListWithCollections:(id)a3 title:(id)a4 identifier:(id)a5;
+ (id)transientCollectionListWithCollections:(id)a3 title:(id)a4 identifier:(id)a5 photoLibrary:(id)a6;
+ (id)transientCollectionListWithCollectionsFetchResult:(id)a3 title:(id)a4 identifier:(id)a5;
- (BOOL)canPerformEditOperation:(int64_t)a3;
- (BOOL)hasLocationInfo;
- (PHCollectionList)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)description;
- (id)effectiveCustomSortDescriptors;
- (id)initTransientWithCollections:(id)a3 orQuery:(id)a4 title:(id)a5 identifier:(id)a6 photoLibrary:(id)a7;
- (id)localizedTitle;
- (id)pl_assetContainerList;
@end

@implementation PHCollectionList

- (id)description
{
  v6.receiver = self;
  v6.super_class = PHCollectionList;
  v3 = [(PHCollection *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" collectionListType=%ld/%ld", -[PHCollectionList collectionListType](self, "collectionListType"), -[PHCollectionList collectionListSubtype](self, "collectionListSubtype")];

  return v4;
}

- (id)initTransientWithCollections:(id)a3 orQuery:(id)a4 title:(id)a5 identifier:(id)a6 photoLibrary:(id)a7
{
  v35[12] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    v35[0] = @"PHAssetCollection";
    v35[1] = @"PHAlbum";
    v35[2] = @"PHCloudSharedAlbum";
    v35[3] = @"PHSmartAlbum";
    v35[4] = @"PHCollectionList";
    v35[5] = @"PHCollection";
    v35[6] = @"PHMoment";
    v35[7] = @"PHMomentList";
    v35[8] = @"PHImportSession";
    v35[9] = @"PHProject";
    v35[10] = @"PHPhotosHighlight";
    v35[11] = @"PHCollectionShare";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:12];
    v18 = [v13 fetchType];
    v19 = [v17 containsObject:v18];

    if ((v19 & 1) == 0)
    {
      v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"The fetch result returned an unexpected fetch type" userInfo:0];
      objc_exception_throw(v34);
    }
  }

  v20 = [MEMORY[0x1E695DF90] dictionary];
  [v20 setObject:&unk_1F102C590 forKeyedSubscript:@"identifier"];
  v21 = [MEMORY[0x1E696AFB0] UUID];
  v22 = [v21 UUIDString];
  [v20 setObject:v22 forKeyedSubscript:@"uuid"];

  if (!v16)
  {
    v23 = [v13 fetchOptions];
    v24 = [v12 firstObject];
    v16 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:v23 object:v24];
  }

  v25 = [(PHCollectionList *)self initWithFetchDictionary:v20 propertyHint:2 photoLibrary:v16];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_localizedTitle, a5);
    v27 = [v13 copy];
    query = v26->_query;
    v26->_query = v27;

    v29 = [v12 copy];
    collections = v26->_collections;
    v26->_collections = v29;

    v31 = [v15 copy];
    transientIdentifier = v26->_transientIdentifier;
    v26->_transientIdentifier = v31;
  }

  return v26;
}

- (id)effectiveCustomSortDescriptors
{
  v3 = [(PHCollection *)self customSortKey];
  if (v3)
  {
    v4 = [MEMORY[0x1E69BE558] sortDescriptorsForAlbumsInFolderWithSortKey:v3 ascending:{-[PHCollection customSortAscending](self, "customSortAscending")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasLocationInfo
{
  v3 = [(PHCollectionList *)self localizedLocationNames];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PHCollectionList;
    v4 = [(PHCollection *)&v6 hasLocationInfo];
  }

  return v4;
}

- (BOOL)canPerformEditOperation:(int64_t)a3
{
  plAlbumKind = self->_plAlbumKind;
  if (plAlbumKind <= 3998)
  {
    if (plAlbumKind == 3998)
    {
      LOBYTE(v4) = a3 == 5;
      return v4 & 1;
    }

LABEL_8:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  if (plAlbumKind == 4000)
  {
    LOBYTE(v4) = 1;
    return v4 & 1;
  }

  if (plAlbumKind != 3999)
  {
    goto LABEL_8;
  }

  v4 = 0x3Au >> a3;
  if (a3 >= 6)
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (id)localizedTitle
{
  v3 = self->_localizedTitle;
  if (!v3)
  {
    v4 = MEMORY[0x1E69BE458];
    plAlbumKind = self->_plAlbumKind;
    v6 = [(PHObject *)self photoLibrary];
    v3 = [v4 localizedTitleForAlbumKind:plAlbumKind cplEnabled:{objc_msgSend(v6, "isCloudPhotoLibraryEnabled")}];
  }

  return v3;
}

- (PHCollectionList)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v25.receiver = self;
  v25.super_class = PHCollectionList;
  v9 = [(PHCollection *)&v25 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  v10 = v9;
  if (v9)
  {
    v9->_estimatedChildCollectionCount = 0x7FFFFFFFFFFFFFFFLL;
    v11 = [v8 objectForKeyedSubscript:@"kind"];
    v10->_plAlbumKind = [v11 shortValue];

    v12 = [v8 objectForKeyedSubscript:@"cloudGUID"];
    cloudGUID = v10->_cloudGUID;
    v10->_cloudGUID = v12;

    v14 = v10->_plAlbumKind - 3998;
    if (v14 > 8)
    {
      v16 = 100;
      v15 = 2;
    }

    else
    {
      v15 = qword_19CB29628[v14];
      v16 = *&asc_19CB29670[8 * v14];
    }

    v10->_collectionListType = v15;
    v10->_collectionListSubtype = v16;
    v17 = [v8 objectForKeyedSubscript:@"title"];
    localizedTitle = v10->_localizedTitle;
    v10->_localizedTitle = v17;

    localizedLocationNames = v10->_localizedLocationNames;
    v10->_localizedLocationNames = MEMORY[0x1E695E0F0];

    v20 = [v8 objectForKeyedSubscript:@"lastModifiedDate"];
    modificationDate = v10->_modificationDate;
    v10->_modificationDate = v20;

    v22 = [v8 objectForKeyedSubscript:@"parentFolder"];
    parentFolderObjectID = v10->_parentFolderObjectID;
    v10->_parentFolderObjectID = v22;
  }

  return v10;
}

+ (id)transientCollectionListWithCollectionsFetchResult:(id)a3 title:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [PHCollectionList alloc];
  v11 = [v9 query];
  v12 = [v9 photoLibrary];

  v13 = [(PHCollectionList *)v10 initTransientWithCollections:0 orQuery:v11 title:v8 identifier:v7 photoLibrary:v12];

  return v13;
}

+ (id)transientCollectionListWithCollections:(id)a3 title:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PHCollectionList alloc] initTransientWithCollections:v9 orQuery:0 title:v8 identifier:v7 photoLibrary:0];

  return v10;
}

+ (PHCollectionList)transientCollectionListWithCollectionsFetchResult:(PHFetchResult *)fetchResult title:(NSString *)title
{
  v5 = fetchResult;
  v6 = title;
  v7 = [(PHFetchResult *)v5 query];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(PHFetchResult *)v5 fetchedObjects];
  }

  v9 = [PHCollectionList alloc];
  v10 = [(PHFetchResult *)v5 photoLibrary];
  v11 = [(PHCollectionList *)v9 initTransientWithCollections:v8 orQuery:v7 title:v6 identifier:0 photoLibrary:v10];

  return v11;
}

+ (PHCollectionList)transientCollectionListWithCollections:(NSArray *)collections title:(NSString *)title
{
  v5 = title;
  v6 = collections;
  v7 = [[PHCollectionList alloc] initTransientWithCollections:v6 orQuery:0 title:v5 identifier:0 photoLibrary:0];

  return v7;
}

+ (id)transientCollectionListWithCollections:(id)a3 title:(id)a4 identifier:(id)a5 photoLibrary:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[PHCollectionList alloc] initTransientWithCollections:v12 orQuery:0 title:v11 identifier:v10 photoLibrary:v9];

  return v13;
}

+ (id)fetchPredicateFromComparisonPredicate:(id)a3 options:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___PHCollectionList;
  v4 = objc_msgSendSuper2(&v6, sel_fetchPredicateFromComparisonPredicate_options_, a3, a4);

  return v4;
}

+ (PHFetchResult)fetchMomentListsWithSubtype:(PHCollectionListSubtype)momentListSubtype options:(PHFetchOptions *)options
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PHCollectionList_fetchMomentListsWithSubtype_options___block_invoke;
  v6[3] = &__block_descriptor_40_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v6[4] = momentListSubtype;
  v4 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v6];

  return v4;
}

id __56__PHCollectionList_fetchMomentListsWithSubtype_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForMomentListsWithSubType:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchMomentListsWithSubtype:(PHCollectionListSubtype)momentListSubtype containingMoment:(PHAssetCollection *)moment options:(PHFetchOptions *)options
{
  v5 = moment;
  if (moment)
  {
    v7 = options;
    v8 = [PHQuery queryForMomentListsWithSubType:momentListSubtype containingMoment:v5];
    [v8 setFetchOptions:v7];

    v5 = [v8 executeQuery];
  }

  return v5;
}

id __62__PHCollectionList_fetchRootProjectCollectionListWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForRootProjectCollectionListWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __60__PHCollectionList_fetchRootAlbumCollectionListWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForRootAlbumCollectionListWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchCollectionListsWithType:(PHCollectionListType)collectionListType subtype:(PHCollectionListSubtype)subtype options:(PHFetchOptions *)options
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PHCollectionList_fetchCollectionListsWithType_subtype_options___block_invoke;
  v7[3] = &__block_descriptor_48_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v7[4] = collectionListType;
  v7[5] = subtype;
  v5 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v7];

  return v5;
}

id __65__PHCollectionList_fetchCollectionListsWithType_subtype_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForCollectionListsWithType:*(a1 + 32) subtype:*(a1 + 40) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (PHFetchResult)fetchCollectionListsWithLocalIdentifiers:(NSArray *)identifiers options:(PHFetchOptions *)options
{
  v5 = identifiers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__PHCollectionList_fetchCollectionListsWithLocalIdentifiers_options___block_invoke;
  v9[3] = &unk_1E75AB0E0;
  v10 = v5;
  v6 = v5;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:options fetchBlock:v9];

  return v7;
}

id __69__PHCollectionList_fetchCollectionListsWithLocalIdentifiers_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v5 = [PHObject identifierCodeFromLocalIdentifier:v4];

    v6 = [PHPhotoLibrary collectionListTypeForIdentifierCode:v5];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 2;
  }

  v8 = [PHQuery queryForCollectionListsWithType:v7 localIdentifiers:*(a1 + 32) options:v3];
  v9 = [v8 executeQuery];

  return v9;
}

+ (PHFetchResult)fetchCollectionListsContainingCollection:(PHCollection *)collection options:(PHFetchOptions *)options
{
  v5 = collection;
  v6 = options;
  if (v5 && ([(PHObject *)v5 objectID], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [PHQuery queryForCollectionListContainingCollection:v5 options:v6];
    v9 = [v8 executeQuery];
  }

  else
  {
    v8 = [(PHObject *)v5 photoLibrary];
    v9 = [PHManualFetchResult emptyFetchResultWithPhotoLibrary:v8];
  }

  v10 = v9;

  return v10;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_7957;

  return v2;
}

void __32__PHCollectionList_entityKeyMap__block_invoke()
{
  v19[7] = *MEMORY[0x1E69E9840];
  v0 = [PHEntityKeyMap alloc];
  v17 = @"uuid";
  v18[0] = @"uuid";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v19[0] = v1;
  v18[1] = @"title";
  v16[0] = @"localizedTitle";
  v16[1] = @"title";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v19[1] = v2;
  v18[2] = @"startDate";
  v15 = @"startDate";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v19[2] = v3;
  v18[3] = @"endDate";
  v14 = @"endDate";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v19[3] = v4;
  v18[4] = @"customSortAscending";
  v13 = @"customSortAscending";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v19[4] = v5;
  v18[5] = @"customSortKey";
  v12 = @"customSortKey";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v19[5] = v6;
  v18[6] = @"lastModifiedDate";
  v11 = @"modificationDate";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v19[6] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];
  v9 = [(PHEntityKeyMap *)v0 initWithPropertyKeysByEntityKey:v8];
  v10 = entityKeyMap_pl_once_object_15_7957;
  entityKeyMap_pl_once_object_15_7957 = v9;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PHCollectionList_propertiesToFetchWithHint___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (propertiesToFetchWithHint__onceToken_7984 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_7984, block);
  }

  v3 = propertiesToFetchWithHint__array_7985;

  return v3;
}

void __46__PHCollectionList_propertiesToFetchWithHint___block_invoke()
{
  v4[11] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v0 setName:@"objectID"];
  v1 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v0 setExpression:v1];

  [v0 setExpressionResultType:2000];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"cloudGUID";
  v4[3] = @"cachedCount";
  v4[4] = @"kind";
  v4[5] = @"title";
  v4[6] = @"customSortAscending";
  v4[7] = @"customSortKey";
  v4[8] = @"parentFolder";
  v4[9] = @"trashedState";
  v4[10] = @"lastModifiedDate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:11];
  v3 = propertiesToFetchWithHint__array_7985;
  propertiesToFetchWithHint__array_7985 = v2;
}

- (id)pl_assetContainerList
{
  v17 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PHAdoptionUtilities.m" lineNumber:187 description:@"This is only callable on the main thread"];
  }

  if ([(PHCollectionList *)self collectionListType]== PHCollectionListTypeMomentList || [(PHCollectionList *)self collectionListType]== PHCollectionListTypeFolder)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(PHObject *)self photoLibrary];
    v6 = [v5 mainQueueConcurrencyPhotoLibrary];
    v7 = [v6 managedObjectContext];

    v8 = [(PHObject *)self objectID];
    v14 = 0;
    v9 = [v7 existingObjectWithID:v8 error:&v14];
    v10 = v14;

    if (!v9 && v10)
    {
      v11 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEFAULT, "Failed to fetch moment: %@", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchCollectionListsForReferences:(id)a3 photoLibrary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PHCollectionList fetchType];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PHCollectionList_PHObjectReference__fetchCollectionListsForReferences_photoLibrary___block_invoke;
  v11[3] = &unk_1E75A8B48;
  v12 = v5;
  v8 = v5;
  v9 = PHCollectionReferenceFetchCollectionsForReferences(v6, v8, v7, v11);

  return v9;
}

id __86__PHCollectionList_PHObjectReference__fetchCollectionListsForReferences_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 librarySpecificFetchOptions];
  [v4 setIncludeTrashedAssets:1];
  v5 = [PHCollectionList fetchCollectionListsWithLocalIdentifiers:v3 options:v4];

  return v5;
}

@end