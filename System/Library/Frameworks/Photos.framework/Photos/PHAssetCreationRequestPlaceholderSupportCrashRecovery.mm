@interface PHAssetCreationRequestPlaceholderSupportCrashRecovery
+ (void)restartPendingPlaceholderDownloadsForLibrary:(id)library;
@end

@implementation PHAssetCreationRequestPlaceholderSupportCrashRecovery

+ (void)restartPendingPlaceholderDownloadsForLibrary:(id)library
{
  libraryCopy = library;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7051;
  v24 = __Block_byref_object_dispose__7052;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__7051;
  v18[4] = __Block_byref_object_dispose__7052;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__7051;
  v16[4] = __Block_byref_object_dispose__7052;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__PHAssetCreationRequestPlaceholderSupportCrashRecovery_restartPendingPlaceholderDownloadsForLibrary___block_invoke;
  v11[3] = &unk_1E75A9D28;
  v4 = libraryCopy;
  v12 = v4;
  v13 = v18;
  v14 = v16;
  v15 = &v20;
  [v4 performBlockAndWait:v11];
  v5 = v21[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__PHAssetCreationRequestPlaceholderSupportCrashRecovery_restartPendingPlaceholderDownloadsForLibrary___block_invoke_163;
  v7[3] = &unk_1E75A4708;
  v9 = v18;
  v10 = v16;
  v6 = v4;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);

  _Block_object_dispose(&v20, 8);
}

void __102__PHAssetCreationRequestPlaceholderSupportCrashRecovery_restartPendingPlaceholderDownloadsForLibrary___block_invoke(uint64_t a1)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [MEMORY[0x1E69BE540] entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AB28];
  v6 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForPlaceholderAsset"), 1}];
  v53[0] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil && %K != nil && %K != nil", @"master", @"additionalAttributes.sourceAssetForDuplicationIdentifier", @"additionalAttributes.sourceAssetForDuplicationScopeIdentifier"];
  v53[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v9 = [v5 andPredicateWithSubpredicates:v8];

  [v4 setPredicate:v9];
  [v4 setFetchBatchSize:100];
  [v4 setReturnsObjectsAsFaults:0];
  v10 = [*(a1 + 32) managedObjectContext];
  v49 = 0;
  v11 = [v10 executeFetchRequest:v4 error:&v49];
  v12 = v49;

  if (!v11)
  {
    v15 = PLPhotoKitGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v52 = v12;
    v38 = "Failed to execute placeholder assets fetch: %@";
    v39 = v15;
    v40 = 12;
LABEL_23:
    _os_log_impl(&dword_19C86F000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
    goto LABEL_24;
  }

  v13 = [v11 count];
  v14 = PLPhotoKitGetLog();
  v15 = v14;
  if (!v13)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v38 = "Placeholder asset fetch returned no results";
    v39 = v15;
    v40 = 2;
    goto LABEL_23;
  }

  v41 = v12;
  v43 = v9;
  v44 = v4;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v11 count];
    *buf = 134217984;
    v52 = v16;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "Found %lu placeholder assets that need to be recreated", buf, 0xCu);
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v42 = v11;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v45 + 1) + 8 * i);
        v26 = [v25 fetchSourceAssetForDuplicationIfExists];
        if (v26 && ([MEMORY[0x1E69BE540] shouldPerformServerCopyOnPlaceholderAsset:v25 photoLibrary:*(a1 + 32)] & 1) == 0)
        {
          v27 = [v25 uuid];
          [v19 addObject:v27];

          v28 = [v26 uuid];
          [v17 addObject:v28];

          v29 = [v26 momentShare];

          if (v29)
          {
            v30 = &unk_1F102C560;
          }

          else
          {
            v30 = &unk_1F102C578;
          }

          [v18 addObject:v30];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v22);
  }

  v31 = *(*(a1 + 40) + 8);
  v32 = *(v31 + 40);
  *(v31 + 40) = v17;
  v15 = v17;

  v33 = *(*(a1 + 48) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v18;
  v35 = v18;

  v36 = *(*(a1 + 56) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v19;

  v9 = v43;
  v4 = v44;
  v12 = v41;
  v11 = v42;
LABEL_24:
}

void __102__PHAssetCreationRequestPlaceholderSupportCrashRecovery_restartPendingPlaceholderDownloadsForLibrary___block_invoke_163(uint64_t *a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(*(a1[5] + 8) + 40) objectAtIndexedSubscript:a3];
  v7 = [*(*(a1[6] + 8) + 40) objectAtIndexedSubscript:a3];
  v8 = [v7 integerValue];

  v9 = objc_autoreleasePoolPush();
  v10 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEFAULT, "Requesting download for source asset %@ in order to finish creating placeholder asset %@", buf, 0x16u);
  }

  v11 = [MEMORY[0x1E69BE268] defaultManager];
  v12 = a1[4];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102__PHAssetCreationRequestPlaceholderSupportCrashRecovery_restartPendingPlaceholderDownloadsForLibrary___block_invoke_164;
  v15[3] = &unk_1E75A46E0;
  v13 = v6;
  v16 = v13;
  v14 = v5;
  v17 = v14;
  v19 = v8;
  v18 = a1[4];
  [v11 requestRequiredResourcesForManagedAssetObjectUUID:v13 library:v12 completionHandler:v15];

  objc_autoreleasePoolPop(v9);
}

void __102__PHAssetCreationRequestPlaceholderSupportCrashRecovery_restartPendingPlaceholderDownloadsForLibrary___block_invoke_164(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19C86F000, v2, OS_LOG_TYPE_DEFAULT, "Download finished for source asset %@, going to call _updateManagedAssetAfterResourceDownload: for placeholder asset %@", &v12, 0x16u);
  }

  v5 = [PHAssetCreationRequestPlaceholderSupport alloc];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(a1 + 40)];
  v7 = [(PHAssetCreationRequestPlaceholderSupport *)v5 initForNewObjectWithUUID:v6];

  v8 = [(PHObject *)PHAsset localIdentifierWithUUID:*(a1 + 32)];
  [v7 _setDuplicateAssetIdentifier:v8];

  [v7 _setDuplicateAssetPhotoLibraryType:*(a1 + 56)];
  v9 = [*(a1 + 48) libraryServicesManager];
  v10 = [v9 databaseContext];
  v11 = [v10 newShortLivedLibraryWithName:"+[PHAssetCreationRequestPlaceholderSupportCrashRecovery restartPendingPlaceholderDownloadsForLibrary:]_block_invoke"];

  [v7 _updateManagedAssetAfterResourceDownload:v11];
}

@end