@interface PHPhotoLibraryManager
+ (BOOL)_createClientPhotoLibraryBundleURL:(id)a3 error:(id *)a4;
- (BOOL)deletePhotoLibraryWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5;
- (PHPhotoLibraryManager)init;
- (id)_findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)a3 error:(id *)a4;
- (id)_optionsDictionaryFromCreateOptions:(id)a3 name:(id)a4;
- (id)_optionsDictionaryFromOpenOptions:(id)a3;
- (id)attributesForLibraryWithIdentifier:(id)a3 error:(id *)a4;
- (id)createPhotoLibraryWithName:(id)a3 options:(id)a4 error:(id *)a5;
- (id)createPhotoLibraryWithURL:(id)a3 options:(id)a4 error:(id *)a5;
- (id)findPhotoLibrariesInDomain:(int64_t)a3 error:(id *)a4;
- (id)openPhotoLibraryWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5;
- (id)openPhotoLibraryWithURL:(id)a3 options:(id)a4 error:(id *)a5;
- (void)openPhotoLibraryWithIdentifier:(id)a3 options:(id)a4 handler:(id)a5;
@end

@implementation PHPhotoLibraryManager

- (BOOL)deletePhotoLibraryWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5
{
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  +[PHPhotoLibrary enableMultiLibraryMode];
  v8 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v7;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "Delete library request initiated for library %@", buf, 0xCu);
  }

  v9 = [(__CFString *)v7 librarySearchCriteria];
  v29 = 0;
  v10 = [(PHPhotoLibraryManager *)self _findPhotoLibraryIdentifiersMatchingSearchCriteria:v9 error:&v29];
  v11 = v29;
  v12 = v11;
  if (!v10)
  {
    v19 = PHPublicErrorFromError(v11);
    v20 = 0;
    goto LABEL_12;
  }

  v13 = [v10 firstObject];
  if (!v13)
  {
    v21 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A278];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find photo library with identifier %@", v7];
    v37[0] = v15;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v22 = [v21 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3201 userInfo:v18];
LABEL_10:
    v19 = v22;
    v20 = 0;
    goto LABEL_11;
  }

  v14 = [(PHPhotoLibraryManager *)self assetsdClient];
  v15 = [v14 libraryManagementClient];

  v16 = [v13 libraryURL];
  v28 = 0;
  v17 = [v15 closeAndDeletePhotoLibraryAtURL:v16 error:&v28];
  v18 = v28;

  if ((v17 & 1) == 0)
  {
    v22 = PHPublicErrorFromError(v18);
    goto LABEL_10;
  }

  v19 = 0;
  v20 = 1;
LABEL_11:

LABEL_12:
  v23 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = @"failed";
    if (v20)
    {
      v24 = @"succeeded";
    }

    *buf = 138543874;
    v31 = v24;
    v25 = &stru_1F0FC60C8;
    v32 = 2112;
    v33 = v7;
    if (!v20)
    {
      v25 = v19;
    }

    v34 = 2112;
    v35 = v25;
    _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Delete library request %{public}@ for library %@ %@", buf, 0x20u);
  }

  if (a5)
  {
    v26 = v19;
    *a5 = v19;
  }

  return v20;
}

- (id)attributesForLibraryWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  +[PHPhotoLibrary enableMultiLibraryMode];
  v7 = [v6 pl_libraryIdentifier];
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [v6 librarySearchCriteria];
  v21 = 0;
  v9 = [(PHPhotoLibraryManager *)self _findPhotoLibraryIdentifiersMatchingSearchCriteria:v8 error:&v21];
  v10 = v21;
  v11 = v10;
  if (v9)
  {
    v7 = [v9 firstObject];
  }

  else
  {
    v12 = PHPublicErrorFromError(v10);
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }

    v7 = 0;
  }

  if (v7)
  {
LABEL_8:
    v13 = objc_alloc(MEMORY[0x1E69BF2A0]);
    v14 = [v7 libraryURL];
    v15 = [v13 initWithLibraryURL:v14];

    v16 = [MEMORY[0x1E69BE2C0] settingsWithPathManager:v15];
    v17 = [[PHPhotoLibraryAttributes alloc] initWithLibraryIdentifier:v7 cplSettings:v16];
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3201 userInfo:0];
    v15 = v19;
    if (a4)
    {
      v20 = v19;
      v7 = 0;
      v17 = 0;
      *a4 = v15;
    }

    else
    {
      v7 = 0;
      v17 = 0;
    }
  }

  return v17;
}

- (id)createPhotoLibraryWithURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHPhotoLibraryManager.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v11 = [v9 lastPathComponent];
  v12 = [v11 stringByDeletingPathExtension];

  if (v10)
  {
    v13 = [v10 copy];
  }

  else
  {
    v13 = +[PHPhotoLibraryCreationOptions creationOptionsForUserLibrary];
  }

  v14 = v13;
  [v13 setLibraryURL:v9];
  v15 = [(PHPhotoLibraryManager *)self createPhotoLibraryWithName:v12 options:v14 error:a5];

  return v15;
}

- (id)createPhotoLibraryWithName:(id)a3 options:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PHPhotoLibraryManager.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  +[PHPhotoLibrary enableMultiLibraryMode];
  v11 = [v10 libraryURL];

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [v10 libraryURL];
    LODWORD(v12) = [v12 _createClientPhotoLibraryBundleURL:v13 error:a5];

    if (!v12)
    {
      v20 = 0;
      goto LABEL_15;
    }
  }

  v14 = [(PHPhotoLibraryManager *)self _optionsDictionaryFromCreateOptions:v10 name:v9];
  v15 = [(PHPhotoLibraryManager *)self assetsdClient];
  v16 = [v15 libraryManagementClient];

  v30 = 0;
  v17 = [v16 createManagedPhotoLibraryWithOptions:v14 error:&v30];
  v18 = v30;
  v19 = v18;
  if (v17)
  {
    v20 = [[PHPhotoLibrary alloc] initWithPhotoLibraryURL:v17];
    v29 = 0;
    v21 = [(PHPhotoLibrary *)v20 openAndWaitWithUpgrade:0 error:&v29];
    v22 = v29;
    v23 = v22;
    if (!v21)
    {
      if (a5)
      {
        v24 = v22;
        *a5 = v23;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v25 = PHPublicErrorFromError(v18);
    v23 = v25;
    if (!a5)
    {
LABEL_13:
      v20 = 0;
      goto LABEL_14;
    }

    v26 = v25;
    v20 = 0;
    *a5 = v23;
  }

LABEL_14:

LABEL_15:

  return v20;
}

- (id)_optionsDictionaryFromCreateOptions:(id)a3 name:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [v6 internalCreateOptions];
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69BEC98]];

  if (v10)
  {
    v28 = @"PHPhotoLibraryCreateOptions";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    v29[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    v13 = [PHPhotoLibrary plLibraryOptionsFromPHOptions:v12 createOptions:0];
    v14 = *MEMORY[0x1E69BEC60];
    v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69BEC60]];
    [v9 setObject:v15 forKeyedSubscript:v14];
  }

  v16 = [v6 libraryURL];

  if (v16)
  {
    v17 = [v6 libraryURL];
    [v9 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69BEC70]];
  }

  v18 = [v6 userDescription];

  if (v18)
  {
    v19 = [v6 userDescription];
    [v9 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69BEC80]];
  }

  if ([v6 domain])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "domain")}];
    [v9 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69BEC88]];
  }

  v21 = [v6 containerIdentifier];

  if (v21)
  {
    v22 = [v6 containerIdentifier];
    [v9 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69BEC78]];
  }

  v23 = [v6 identifierUUID];

  if (v23)
  {
    v24 = [v6 identifierUUID];
    [v9 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69BEC90]];
  }

  v25 = [(PHPhotoLibraryManager *)self internalTestOptions];

  if (v25)
  {
    v26 = [(PHPhotoLibraryManager *)self internalTestOptions];
    [v9 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69BECA0]];
  }

  return v9;
}

- (void)openPhotoLibraryWithIdentifier:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PHPhotoLibraryManager_openPhotoLibraryWithIdentifier_options_handler___block_invoke;
  v15[3] = &unk_1E75AA9D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

void __72__PHPhotoLibraryManager_openPhotoLibraryWithIdentifier_options_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  v5 = [v2 openPhotoLibraryWithIdentifier:v3 options:v4 error:&v7];
  v6 = v7;
  (*(a1[7] + 16))();
}

- (id)openPhotoLibraryWithIdentifier:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 librarySearchCriteria];
  v25 = 0;
  v10 = [(PHPhotoLibraryManager *)self _findPhotoLibraryIdentifiersMatchingSearchCriteria:v9 error:&v25];
  v11 = v25;
  v12 = v11;
  if (v10)
  {
    v13 = [v10 firstObject];
    v14 = [v13 libraryURL];

    if (v14)
    {
      v24 = 0;
      v15 = [(PHPhotoLibraryManager *)self openPhotoLibraryWithURL:v14 options:v8 error:&v24];
      v16 = v24;
      v17 = v16;
      if (!v15 && a5)
      {
        v18 = v16;
        *a5 = v17;
      }
    }

    else
    {
      v21 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3201 userInfo:0];
      v17 = v21;
      if (a5)
      {
        v22 = v21;
        v15 = 0;
        *a5 = v17;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v19 = PHPublicErrorFromError(v11);
    v14 = v19;
    if (a5)
    {
      v20 = v19;
      v15 = 0;
      *a5 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)openPhotoLibraryWithURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  +[PHPhotoLibrary enableMultiLibraryMode];
  v10 = [[PHPhotoLibrary alloc] initWithPhotoLibraryURL:v9];

  if (v10)
  {
    v11 = [(PHPhotoLibraryManager *)self _optionsDictionaryFromOpenOptions:v8];
    v16 = 0;
    v12 = -[PHPhotoLibrary openAndWaitWithUpgrade:options:error:](v10, "openAndWaitWithUpgrade:options:error:", [v8 allowsUpgrade], v11, &v16);
    v13 = v16;
    if (!v12)
    {

      if (a5)
      {
        v14 = v13;
        v10 = 0;
        *a5 = v13;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (id)_optionsDictionaryFromOpenOptions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v4 internalCreateOptions])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "internalCreateOptions")}];
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69BEC60]];
  }

  if ([v4 internalUpgradeOptions])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "internalUpgradeOptions")}];
    [v5 setObject:v7 forKeyedSubscript:@"PHPhotoLibraryUpgradeOptions"];
  }

  v8 = [v4 libraryURL];

  if (v8)
  {
    v9 = [v4 libraryURL];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69BEC70]];
  }

  v10 = [(PHPhotoLibraryManager *)self internalTestOptions];

  if (v10)
  {
    v11 = [(PHPhotoLibraryManager *)self internalTestOptions];
    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69BECA0]];
  }

  return v5;
}

- (id)findPhotoLibrariesInDomain:(int64_t)a3 error:(id *)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E69BE6A0]);
  [v7 setDomain:a3];
  v14 = 0;
  v8 = [(PHPhotoLibraryManager *)self _findPhotoLibraryIdentifiersMatchingSearchCriteria:v7 error:&v14];
  v9 = v14;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 _pl_map:&__block_literal_global_42624];
  }

  else
  {
    v12 = PHPublicErrorFromError(v9);
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }

    v11 = 0;
  }

  return v11;
}

PHPhotoLibraryIdentifier *__58__PHPhotoLibraryManager_findPhotoLibrariesInDomain_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PHPhotoLibraryIdentifier alloc] initWithPLLibraryIdentifier:v2];

  return v3;
}

- (id)_findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHPhotoLibraryManager *)self assetsdClient];
  v8 = [v7 libraryManagementClient];

  v9 = [(PHPhotoLibraryManager *)self internalTestOptions];

  if (v9)
  {
    v10 = [(PHPhotoLibraryManager *)self internalTestOptions];
    [v6 setInternalTestOptions:v10];
  }

  v11 = [v8 findPhotoLibraryIdentifiersMatchingSearchCriteria:v6 error:a4];

  return v11;
}

- (PHPhotoLibraryManager)init
{
  v11.receiver = self;
  v11.super_class = PHPhotoLibraryManager;
  v2 = [(PHPhotoLibraryManager *)&v11 init];
  if (v2)
  {
    v3 = objc_initWeak(&location, v2);

    v4 = objc_alloc(MEMORY[0x1E69BF270]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__PHPhotoLibraryManager_init__block_invoke;
    v8[3] = &unk_1E75A9848;
    objc_copyWeak(&v9, &location);
    v5 = [v4 initWithBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    lazyAssetsdClient = v2->_lazyAssetsdClient;
    v2->_lazyAssetsdClient = v5;
  }

  return v2;
}

id __29__PHPhotoLibraryManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newAssetsdClient];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)_createClientPhotoLibraryBundleURL:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A998];
    v22[0] = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v11 = [v9 errorWithDomain:@"PHPhotosErrorDomain" code:3107 userInfo:v10];
  }

  else
  {
    v20 = 0;
    v12 = 1;
    v13 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v20];
    v11 = v20;
    if (v13)
    {
      goto LABEL_9;
    }

    v10 = PLUnderlyingErrorThatHasDomainAndCode();
    if (v10)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = [v5 path];
      v16 = [v15 stringByDeletingLastPathComponent];
      [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A368]];

      [v14 setObject:@"You do not have permission to write to the selected folder" forKeyedSubscript:*MEMORY[0x1E696A588]];
      [v14 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v17 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:5404 userInfo:v14];

      v11 = v17;
    }
  }

  if (a4)
  {
    v18 = v11;
    v12 = 0;
    *a4 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

@end