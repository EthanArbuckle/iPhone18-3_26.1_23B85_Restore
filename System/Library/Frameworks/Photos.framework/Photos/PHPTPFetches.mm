@interface PHPTPFetches
+ (id)fetchAssetIdsToExcludeFromPTPInContext:(id)context isCloudPhotoLibraryEnabled:(BOOL)enabled;
+ (id)fetchObjectIDsForAssetsExposedToPTPFromObjectIDs:(id)ds inLibrary:(id)library;
+ (id)fetchObjectIDsForAssetsExposedToPTPFromObjectIDs:(id)ds inLibrary:(id)library isCloudPhotoLibraryEnabled:(BOOL)enabled;
+ (id)predicateForAssetsExposedByPHPTPExcludingObjectIDs:(id)ds;
@end

@implementation PHPTPFetches

+ (id)fetchObjectIDsForAssetsExposedToPTPFromObjectIDs:(id)ds inLibrary:(id)library isCloudPhotoLibraryEnabled:(BOOL)enabled
{
  dsCopy = ds;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPTPFetches.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary != nil"}];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__31662;
  v25 = __Block_byref_object_dispose__31663;
  v26 = 0;
  managedObjectContext = [libraryCopy managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __102__PHPTPFetches_fetchObjectIDsForAssetsExposedToPTPFromObjectIDs_inLibrary_isCloudPhotoLibraryEnabled___block_invoke;
  v16[3] = &unk_1E75A8418;
  selfCopy = self;
  v12 = managedObjectContext;
  enabledCopy = enabled;
  v17 = v12;
  v18 = &v21;
  [v12 performBlockAndWait:v16];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __102__PHPTPFetches_fetchObjectIDsForAssetsExposedToPTPFromObjectIDs_inLibrary_isCloudPhotoLibraryEnabled___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 48) fetchAssetIdsToExcludeFromPTPInContext:*(a1 + 32) isCloudPhotoLibraryEnabled:*(a1 + 56)];
  v4 = [*(a1 + 48) predicateForAssetsExposedByPHPTPExcludingObjectIDs:v3];
  v5 = MEMORY[0x1E69BE428];
  v6 = [MEMORY[0x1E69BE540] entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  [v7 setPredicate:v4];
  [v7 setResultType:1];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v19[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v7 setSortDescriptors:v9];

  v10 = *(a1 + 32);
  v16 = 0;
  v11 = [v10 executeFetchRequest:v7 error:&v16];
  v12 = v16;
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v15 = PLPTPGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_ERROR, "Error fetching assets from the database: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v2);
}

+ (id)predicateForAssetsExposedByPHPTPExcludingObjectIDs:(id)ds
{
  v25[4] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v3 = MEMORY[0x1E696AB28];
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"visibilityState", 0];
  v23[0] = v20;
  v19 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForUserLibrary"), 0}];
  v23[1] = v19;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v5 = [v3 andPredicateWithSubpredicates:v4];
  v24[0] = v5;
  v6 = [MEMORY[0x1E69BE540] predicateForAvalancheKindAssetsWithKind:1];
  v24[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v8 = [v3 orPredicateWithSubpredicates:v7];
  v25[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"trashedState", 0];
  v25[1] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != 0", @"complete"];
  v25[2] = v10;
  v11 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForSuppressPtpInfo"), 0}];
  v25[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v13 = [v3 andPredicateWithSubpredicates:v12];

  if ([dsCopy count])
  {
    v14 = MEMORY[0x1E696AB28];
    v22[0] = v13;
    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT self IN %@", dsCopy];
    v22[1] = dsCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v17 = [v14 andPredicateWithSubpredicates:v16];

    v13 = v17;
  }

  return v13;
}

+ (id)fetchAssetIdsToExcludeFromPTPInContext:(id)context isCloudPhotoLibraryEnabled:(BOOL)enabled
{
  v37[1] = *MEMORY[0x1E69E9840];
  if (enabled)
  {
    v4 = MEMORY[0x1E69BE428];
    v5 = MEMORY[0x1E69BE4D0];
    contextCopy = context;
    entityName = [v5 entityName];
    v8 = [v4 fetchRequestWithEntityName:entityName];

    v37[0] = @"asset";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    [v8 setPropertiesToGroupBy:v9];

    v36 = @"asset";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    [v8 setPropertiesToFetch:v10];

    [v8 setResultType:2];
    v35 = @"asset";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [v8 setRelationshipKeyPathsForPrefetching:v11];

    [v8 setPl_importantFetchName:@"fetchAllObjectIDsForAssetsExposedToPTP"];
    v12 = MEMORY[0x1E696AB28];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"dataStoreClassID", 0];
    v34[0] = v13;
    v14 = MEMORY[0x1E696AE18];
    originalCPLResourceTypesForMaster = [MEMORY[0x1E69BE4D0] originalCPLResourceTypesForMaster];
    v16 = [v14 predicateWithFormat:@"%K IN %@", @"dataStoreSubtype", originalCPLResourceTypesForMaster];
    v34[1] = v16;
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"version", 0];
    v34[2] = v17;
    0xFFFFFFFFLL = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K <= %d", @"localAvailability", 0xFFFFFFFFLL];
    v34[3] = 0xFFFFFFFFLL;
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"cloudLocalState", &unk_1F102E168];
    v34[4] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
    v21 = [v12 andPredicateWithSubpredicates:v20];

    [v8 setPredicate:v21];
    v31 = 0;
    v22 = [contextCopy executeFetchRequest:v8 error:&v31];

    v23 = v31;
    if (v22)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __82__PHPTPFetches_fetchAssetIdsToExcludeFromPTPInContext_isCloudPhotoLibraryEnabled___block_invoke;
      v29[3] = &unk_1E75A83F0;
      v30 = @"asset";
      v24 = [v22 _pl_map:v29];
      v25 = v30;
    }

    else
    {
      v25 = PLPTPGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v23;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Error fetching assets from the database: %@", buf, 0xCu);
      }

      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  v27 = v26;

  return v26;
}

+ (id)fetchObjectIDsForAssetsExposedToPTPFromObjectIDs:(id)ds inLibrary:(id)library
{
  libraryCopy = library;
  dsCopy = ds;
  v8 = [self fetchObjectIDsForAssetsExposedToPTPFromObjectIDs:dsCopy inLibrary:libraryCopy isCloudPhotoLibraryEnabled:{objc_msgSend(libraryCopy, "isCloudPhotoLibraryEnabled")}];

  return v8;
}

@end