@interface PHPhotoLibraryManager
+ (BOOL)_createClientPhotoLibraryBundleURL:(id)l error:(id *)error;
- (BOOL)deletePhotoLibraryWithIdentifier:(id)identifier options:(id)options error:(id *)error;
- (PHPhotoLibraryManager)init;
- (id)_findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)criteria error:(id *)error;
- (id)_optionsDictionaryFromCreateOptions:(id)options name:(id)name;
- (id)_optionsDictionaryFromOpenOptions:(id)options;
- (id)attributesForLibraryWithIdentifier:(id)identifier error:(id *)error;
- (id)createPhotoLibraryWithName:(id)name options:(id)options error:(id *)error;
- (id)createPhotoLibraryWithURL:(id)l options:(id)options error:(id *)error;
- (id)findPhotoLibrariesInDomain:(int64_t)domain error:(id *)error;
- (id)openPhotoLibraryWithIdentifier:(id)identifier options:(id)options error:(id *)error;
- (id)openPhotoLibraryWithURL:(id)l options:(id)options error:(id *)error;
- (void)openPhotoLibraryWithIdentifier:(id)identifier options:(id)options handler:(id)handler;
@end

@implementation PHPhotoLibraryManager

- (BOOL)deletePhotoLibraryWithIdentifier:(id)identifier options:(id)options error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  +[PHPhotoLibrary enableMultiLibraryMode];
  v8 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = identifierCopy;
    _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "Delete library request initiated for library %@", buf, 0xCu);
  }

  librarySearchCriteria = [(__CFString *)identifierCopy librarySearchCriteria];
  v29 = 0;
  v10 = [(PHPhotoLibraryManager *)self _findPhotoLibraryIdentifiersMatchingSearchCriteria:librarySearchCriteria error:&v29];
  v11 = v29;
  v12 = v11;
  if (!v10)
  {
    v19 = PHPublicErrorFromError(v11);
    v20 = 0;
    goto LABEL_12;
  }

  firstObject = [v10 firstObject];
  if (!firstObject)
  {
    v21 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A278];
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find photo library with identifier %@", identifierCopy];
    v37[0] = identifierCopy;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v22 = [v21 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3201 userInfo:v18];
LABEL_10:
    v19 = v22;
    v20 = 0;
    goto LABEL_11;
  }

  assetsdClient = [(PHPhotoLibraryManager *)self assetsdClient];
  identifierCopy = [assetsdClient libraryManagementClient];

  libraryURL = [firstObject libraryURL];
  v28 = 0;
  v17 = [identifierCopy closeAndDeletePhotoLibraryAtURL:libraryURL error:&v28];
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
    v33 = identifierCopy;
    if (!v20)
    {
      v25 = v19;
    }

    v34 = 2112;
    v35 = v25;
    _os_log_impl(&dword_19C86F000, v23, OS_LOG_TYPE_ERROR, "Delete library request %{public}@ for library %@ %@", buf, 0x20u);
  }

  if (error)
  {
    v26 = v19;
    *error = v19;
  }

  return v20;
}

- (id)attributesForLibraryWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  +[PHPhotoLibrary enableMultiLibraryMode];
  pl_libraryIdentifier = [identifierCopy pl_libraryIdentifier];
  if (pl_libraryIdentifier)
  {
    goto LABEL_8;
  }

  librarySearchCriteria = [identifierCopy librarySearchCriteria];
  v21 = 0;
  v9 = [(PHPhotoLibraryManager *)self _findPhotoLibraryIdentifiersMatchingSearchCriteria:librarySearchCriteria error:&v21];
  v10 = v21;
  v11 = v10;
  if (v9)
  {
    pl_libraryIdentifier = [v9 firstObject];
  }

  else
  {
    v12 = PHPublicErrorFromError(v10);
    if (error)
    {
      v12 = v12;
      *error = v12;
    }

    pl_libraryIdentifier = 0;
  }

  if (pl_libraryIdentifier)
  {
LABEL_8:
    v13 = objc_alloc(MEMORY[0x1E69BF2A0]);
    libraryURL = [pl_libraryIdentifier libraryURL];
    v15 = [v13 initWithLibraryURL:libraryURL];

    v16 = [MEMORY[0x1E69BE2C0] settingsWithPathManager:v15];
    v17 = [[PHPhotoLibraryAttributes alloc] initWithLibraryIdentifier:pl_libraryIdentifier cplSettings:v16];
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3201 userInfo:0];
    v15 = v19;
    if (error)
    {
      v20 = v19;
      pl_libraryIdentifier = 0;
      v17 = 0;
      *error = v15;
    }

    else
    {
      pl_libraryIdentifier = 0;
      v17 = 0;
    }
  }

  return v17;
}

- (id)createPhotoLibraryWithURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPhotoLibraryManager.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  if (optionsCopy)
  {
    v13 = [optionsCopy copy];
  }

  else
  {
    v13 = +[PHPhotoLibraryCreationOptions creationOptionsForUserLibrary];
  }

  v14 = v13;
  [v13 setLibraryURL:lCopy];
  v15 = [(PHPhotoLibraryManager *)self createPhotoLibraryWithName:stringByDeletingPathExtension options:v14 error:error];

  return v15;
}

- (id)createPhotoLibraryWithName:(id)name options:(id)options error:(id *)error
{
  nameCopy = name;
  optionsCopy = options;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPhotoLibraryManager.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  +[PHPhotoLibrary enableMultiLibraryMode];
  libraryURL = [optionsCopy libraryURL];

  if (libraryURL)
  {
    v12 = objc_opt_class();
    libraryURL2 = [optionsCopy libraryURL];
    LODWORD(v12) = [v12 _createClientPhotoLibraryBundleURL:libraryURL2 error:error];

    if (!v12)
    {
      v20 = 0;
      goto LABEL_15;
    }
  }

  v14 = [(PHPhotoLibraryManager *)self _optionsDictionaryFromCreateOptions:optionsCopy name:nameCopy];
  assetsdClient = [(PHPhotoLibraryManager *)self assetsdClient];
  libraryManagementClient = [assetsdClient libraryManagementClient];

  v30 = 0;
  v17 = [libraryManagementClient createManagedPhotoLibraryWithOptions:v14 error:&v30];
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
      if (error)
      {
        v24 = v22;
        *error = v23;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v25 = PHPublicErrorFromError(v18);
    v23 = v25;
    if (!error)
    {
LABEL_13:
      v20 = 0;
      goto LABEL_14;
    }

    v26 = v25;
    v20 = 0;
    *error = v23;
  }

LABEL_14:

LABEL_15:

  return v20;
}

- (id)_optionsDictionaryFromCreateOptions:(id)options name:(id)name
{
  v29[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = MEMORY[0x1E695DF90];
  nameCopy = name;
  v9 = objc_alloc_init(v7);
  internalCreateOptions = [optionsCopy internalCreateOptions];
  [v9 setObject:nameCopy forKeyedSubscript:*MEMORY[0x1E69BEC98]];

  if (internalCreateOptions)
  {
    v28 = @"PHPhotoLibraryCreateOptions";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:internalCreateOptions];
    v29[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    v13 = [PHPhotoLibrary plLibraryOptionsFromPHOptions:v12 createOptions:0];
    v14 = *MEMORY[0x1E69BEC60];
    v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69BEC60]];
    [v9 setObject:v15 forKeyedSubscript:v14];
  }

  libraryURL = [optionsCopy libraryURL];

  if (libraryURL)
  {
    libraryURL2 = [optionsCopy libraryURL];
    [v9 setObject:libraryURL2 forKeyedSubscript:*MEMORY[0x1E69BEC70]];
  }

  userDescription = [optionsCopy userDescription];

  if (userDescription)
  {
    userDescription2 = [optionsCopy userDescription];
    [v9 setObject:userDescription2 forKeyedSubscript:*MEMORY[0x1E69BEC80]];
  }

  if ([optionsCopy domain])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(optionsCopy, "domain")}];
    [v9 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69BEC88]];
  }

  containerIdentifier = [optionsCopy containerIdentifier];

  if (containerIdentifier)
  {
    containerIdentifier2 = [optionsCopy containerIdentifier];
    [v9 setObject:containerIdentifier2 forKeyedSubscript:*MEMORY[0x1E69BEC78]];
  }

  identifierUUID = [optionsCopy identifierUUID];

  if (identifierUUID)
  {
    identifierUUID2 = [optionsCopy identifierUUID];
    [v9 setObject:identifierUUID2 forKeyedSubscript:*MEMORY[0x1E69BEC90]];
  }

  internalTestOptions = [(PHPhotoLibraryManager *)self internalTestOptions];

  if (internalTestOptions)
  {
    internalTestOptions2 = [(PHPhotoLibraryManager *)self internalTestOptions];
    [v9 setObject:internalTestOptions2 forKeyedSubscript:*MEMORY[0x1E69BECA0]];
  }

  return v9;
}

- (void)openPhotoLibraryWithIdentifier:(id)identifier options:(id)options handler:(id)handler
{
  identifierCopy = identifier;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PHPhotoLibraryManager_openPhotoLibraryWithIdentifier_options_handler___block_invoke;
  v15[3] = &unk_1E75AA9D8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = identifierCopy;
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

- (id)openPhotoLibraryWithIdentifier:(id)identifier options:(id)options error:(id *)error
{
  optionsCopy = options;
  librarySearchCriteria = [identifier librarySearchCriteria];
  v25 = 0;
  v10 = [(PHPhotoLibraryManager *)self _findPhotoLibraryIdentifiersMatchingSearchCriteria:librarySearchCriteria error:&v25];
  v11 = v25;
  v12 = v11;
  if (v10)
  {
    firstObject = [v10 firstObject];
    libraryURL = [firstObject libraryURL];

    if (libraryURL)
    {
      v24 = 0;
      v15 = [(PHPhotoLibraryManager *)self openPhotoLibraryWithURL:libraryURL options:optionsCopy error:&v24];
      v16 = v24;
      v17 = v16;
      if (!v15 && error)
      {
        v18 = v16;
        *error = v17;
      }
    }

    else
    {
      v21 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3201 userInfo:0];
      v17 = v21;
      if (error)
      {
        v22 = v21;
        v15 = 0;
        *error = v17;
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
    libraryURL = v19;
    if (error)
    {
      v20 = v19;
      v15 = 0;
      *error = libraryURL;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)openPhotoLibraryWithURL:(id)l options:(id)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  +[PHPhotoLibrary enableMultiLibraryMode];
  v10 = [[PHPhotoLibrary alloc] initWithPhotoLibraryURL:lCopy];

  if (v10)
  {
    v11 = [(PHPhotoLibraryManager *)self _optionsDictionaryFromOpenOptions:optionsCopy];
    v16 = 0;
    v12 = -[PHPhotoLibrary openAndWaitWithUpgrade:options:error:](v10, "openAndWaitWithUpgrade:options:error:", [optionsCopy allowsUpgrade], v11, &v16);
    v13 = v16;
    if (!v12)
    {

      if (error)
      {
        v14 = v13;
        v10 = 0;
        *error = v13;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (id)_optionsDictionaryFromOpenOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([optionsCopy internalCreateOptions])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "internalCreateOptions")}];
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69BEC60]];
  }

  if ([optionsCopy internalUpgradeOptions])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(optionsCopy, "internalUpgradeOptions")}];
    [v5 setObject:v7 forKeyedSubscript:@"PHPhotoLibraryUpgradeOptions"];
  }

  libraryURL = [optionsCopy libraryURL];

  if (libraryURL)
  {
    libraryURL2 = [optionsCopy libraryURL];
    [v5 setObject:libraryURL2 forKeyedSubscript:*MEMORY[0x1E69BEC70]];
  }

  internalTestOptions = [(PHPhotoLibraryManager *)self internalTestOptions];

  if (internalTestOptions)
  {
    internalTestOptions2 = [(PHPhotoLibraryManager *)self internalTestOptions];
    [v5 setObject:internalTestOptions2 forKeyedSubscript:*MEMORY[0x1E69BECA0]];
  }

  return v5;
}

- (id)findPhotoLibrariesInDomain:(int64_t)domain error:(id *)error
{
  v7 = objc_alloc_init(MEMORY[0x1E69BE6A0]);
  [v7 setDomain:domain];
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
    if (error)
    {
      v12 = v12;
      *error = v12;
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

- (id)_findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)criteria error:(id *)error
{
  criteriaCopy = criteria;
  assetsdClient = [(PHPhotoLibraryManager *)self assetsdClient];
  libraryManagementClient = [assetsdClient libraryManagementClient];

  internalTestOptions = [(PHPhotoLibraryManager *)self internalTestOptions];

  if (internalTestOptions)
  {
    internalTestOptions2 = [(PHPhotoLibraryManager *)self internalTestOptions];
    [criteriaCopy setInternalTestOptions:internalTestOptions2];
  }

  v11 = [libraryManagementClient findPhotoLibraryIdentifiersMatchingSearchCriteria:criteriaCopy error:error];

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

+ (BOOL)_createClientPhotoLibraryBundleURL:(id)l error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = objc_alloc_init(MEMORY[0x1E696AC08]);
  path = [lCopy path];
  v8 = [v6 fileExistsAtPath:path];

  if (v8)
  {
    v9 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A998];
    v22[0] = lCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v11 = [v9 errorWithDomain:@"PHPhotosErrorDomain" code:3107 userInfo:v10];
  }

  else
  {
    v20 = 0;
    v12 = 1;
    v13 = [v6 createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:&v20];
    v11 = v20;
    if (v13)
    {
      goto LABEL_9;
    }

    v10 = PLUnderlyingErrorThatHasDomainAndCode();
    if (v10)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      path2 = [lCopy path];
      stringByDeletingLastPathComponent = [path2 stringByDeletingLastPathComponent];
      [v14 setObject:stringByDeletingLastPathComponent forKeyedSubscript:*MEMORY[0x1E696A368]];

      [v14 setObject:@"You do not have permission to write to the selected folder" forKeyedSubscript:*MEMORY[0x1E696A588]];
      [v14 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v17 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:5404 userInfo:v14];

      v11 = v17;
    }
  }

  if (error)
  {
    v18 = v11;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

@end