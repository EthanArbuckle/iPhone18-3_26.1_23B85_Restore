@interface CNContactPosterDataPersistentStoreManager
+ (BOOL)_checkProductionReadyTagForDatabaseAtURL:(id)a3;
+ (BOOL)createStoreDirectoryIfNeededAt:(id)a3 error:(id *)a4;
+ (BOOL)createStoreDirectoryIfNeededAtDefaultLocation:(id *)a3;
+ (BOOL)moveAsideIfUntaggedDevelopmentDB:(id)a3;
+ (BOOL)performLightweightMigrationIfNeededError:(id *)a3;
+ (BOOL)performLightweightMigrationIfNeededWithStoreLocation:(id)a3 error:(id *)a4;
+ (OS_os_log)os_log;
+ (id)_cloudKitOptionsWorkingAroundModuleFailures;
+ (id)_modelVersionChecksumForDatabaseAtURL:(id)a3;
+ (id)createModel;
+ (id)currentManagedObjectModel;
+ (id)defaultDatabaseFileURL;
+ (id)defaultStoreLocation;
+ (id)inMemoryStoreManager;
+ (id)sharedPersistentContainerForModel:(id)a3 storeLocation:(id)a4;
+ (id)sharedPersistentContainerForStoreLocation:(id)a3;
+ (id)storeFileURLForLocation:(id)a3;
+ (void)tagDatabaseAsSafeForProductionInContainer:(id)a3;
- (BOOL)createStoreDirectoryIfNeeded:(id *)a3;
- (BOOL)performWorkWithManagedObjectContext:(id)a3 error:(id *)a4;
- (CNContactPosterDataPersistentStoreManager)init;
- (CNContactPosterDataPersistentStoreManager)initWithStoreLocation:(id)a3;
- (CNContactPosterDataPersistentStoreManager)initWithStoreLocation:(id)a3 container:(id)a4;
- (id)createManagedObjectContext;
- (id)persistentStoreCoordinator;
- (id)storeDescription;
- (void)setupIfNeeded;
@end

@implementation CNContactPosterDataPersistentStoreManager

- (id)persistentStoreCoordinator
{
  v2 = [(CNContactPosterDataPersistentStoreManager *)self container];
  v3 = [v2 persistentStoreCoordinator];

  return v3;
}

- (id)createManagedObjectContext
{
  v2 = [(CNContactPosterDataPersistentStoreManager *)self container];
  v3 = [v2 newBackgroundContext];

  return v3;
}

+ (OS_os_log)os_log
{
  if (os_log_cn_once_token_1 != -1)
  {
    +[CNContactPosterDataPersistentStoreManager os_log];
  }

  v3 = os_log_cn_once_object_1;

  return v3;
}

uint64_t __51__CNContactPosterDataPersistentStoreManager_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNContactMetadata");
  v1 = os_log_cn_once_object_1;
  os_log_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)currentManagedObjectModel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CNContactPosterDataPersistentStoreManager_currentManagedObjectModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (currentManagedObjectModel_cn_once_token_2 != -1)
  {
    dispatch_once(&currentManagedObjectModel_cn_once_token_2, block);
  }

  v2 = currentManagedObjectModel_cn_once_object_2;

  return v2;
}

uint64_t __70__CNContactPosterDataPersistentStoreManager_currentManagedObjectModel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) createModel];
  v2 = currentManagedObjectModel_cn_once_object_2;
  currentManagedObjectModel_cn_once_object_2 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)createModel
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"CNContactMetadata" withExtension:@"momd"];

  if (!v4)
  {
    v5 = [a1 os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CNContactPosterDataPersistentStoreManager *)v5 createModel:v6];
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v4];

  return v13;
}

+ (id)inMemoryStoreManager
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/dev/null"];
  v4 = [v2 initWithStoreLocation:v3];

  return v4;
}

+ (id)sharedPersistentContainerForModel:(id)a3 storeLocation:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D688];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithName:@"CNContactMetadata" managedObjectModel:v7];

  v9 = [objc_opt_class() storeFileURLForLocation:v6];

  v10 = [MEMORY[0x1E695D6C8] persistentStoreDescriptionWithURL:v9];
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v10 setOption:v12 forKey:*MEMORY[0x1E695D3D8]];

  v13 = MEMORY[0x1E695E118];
  [v10 setOption:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695D318]];
  [v10 setOption:v13 forKey:*MEMORY[0x1E695D380]];
  [v10 setOption:v13 forKey:*MEMORY[0x1E695D3C0]];
  v16 = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v8 setPersistentStoreDescriptions:v14];

  return v8;
}

+ (id)storeFileURLForLocation:(id)a3
{
  v3 = a3;
  v4 = [@"CNContactMetadata" stringByAppendingString:@".db"];
  v5 = [v3 URLByAppendingPathComponent:v4];

  return v5;
}

+ (id)defaultDatabaseFileURL
{
  v3 = [a1 defaultStoreLocation];
  v4 = [a1 storeFileURLForLocation:v3];

  return v4;
}

+ (id)defaultStoreLocation
{
  v2 = [MEMORY[0x1E6996700] sharedInstance];
  v3 = [v2 libraryFolderURL];

  v4 = [v3 URLByAppendingPathComponent:@"ContactsMetadata" isDirectory:1];

  return v4;
}

+ (id)sharedPersistentContainerForStoreLocation:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [objc_opt_class() currentManagedObjectModel];
  v6 = [v4 sharedPersistentContainerForModel:v5 storeLocation:v3];

  return v6;
}

- (CNContactPosterDataPersistentStoreManager)init
{
  v3 = [objc_opt_class() defaultStoreLocation];
  v4 = [(CNContactPosterDataPersistentStoreManager *)self initWithStoreLocation:v3];

  return v4;
}

- (CNContactPosterDataPersistentStoreManager)initWithStoreLocation:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/dev/null"];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [objc_opt_class() sharedPersistentContainerForStoreLocation:v4];
  }

  else
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __67__CNContactPosterDataPersistentStoreManager_initWithStoreLocation___block_invoke;
    v13 = &unk_1E74121B8;
    v14 = self;
    v15 = v4;
    if (initWithStoreLocation__cn_once_token_4 != -1)
    {
      dispatch_once(&initWithStoreLocation__cn_once_token_4, &v10);
    }

    v7 = initWithStoreLocation__cn_once_object_4;
  }

  v8 = [(CNContactPosterDataPersistentStoreManager *)self initWithStoreLocation:v4 container:v7, v10, v11, v12, v13];

  return v8;
}

uint64_t __67__CNContactPosterDataPersistentStoreManager_initWithStoreLocation___block_invoke(uint64_t a1)
{
  v1 = [objc_opt_class() sharedPersistentContainerForStoreLocation:*(a1 + 40)];
  v2 = initWithStoreLocation__cn_once_object_4;
  initWithStoreLocation__cn_once_object_4 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (CNContactPosterDataPersistentStoreManager)initWithStoreLocation:(id)a3 container:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactPosterDataPersistentStoreManager;
  v9 = [(CNContactPosterDataPersistentStoreManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeLocation, a3);
    objc_storeStrong(&v10->_container, a4);
    [(CNContactPosterDataPersistentStoreManager *)v10 setupIfNeeded];
    v11 = v10;
  }

  return v10;
}

- (BOOL)performWorkWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactPosterDataPersistentStoreManager *)self persistentStoreCoordinator];
  v8 = [v7 persistentStores];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(CNContactPosterDataPersistentStoreManager *)self createManagedObjectContext];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87__CNContactPosterDataPersistentStoreManager_performWorkWithManagedObjectContext_error___block_invoke;
    v14[3] = &unk_1E7412558;
    v15 = v10;
    v16 = v6;
    v11 = v10;
    [v11 performBlockAndWait:v14];
  }

  else
  {
    v12 = [(CNContactPosterDataPersistentStoreManager *)self loadPersistentStoresError];
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }
  }

  return v9 != 0;
}

- (void)setupIfNeeded
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Failed to setup store: %@", v4, v5, v6, v7, v8);
}

void __58__CNContactPosterDataPersistentStoreManager_setupIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    [WeakRetained setLoadPersistentStoresError:v6];
    v9 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __58__CNContactPosterDataPersistentStoreManager_setupIfNeeded__block_invoke_cold_1(v6);
    }
  }

  else
  {
    v9 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_INFO, "Loaded container with description: %@", &v10, 0xCu);
    }
  }
}

- (id)storeDescription
{
  v2 = [(CNContactPosterDataPersistentStoreManager *)self container];
  v3 = [v2 persistentStoreDescriptions];
  v4 = [v3 firstObject];

  return v4;
}

- (BOOL)createStoreDirectoryIfNeeded:(id *)a3
{
  v5 = objc_opt_class();
  v6 = [(CNContactPosterDataPersistentStoreManager *)self storeLocation];
  LOBYTE(a3) = [v5 createStoreDirectoryIfNeededAt:v6 error:a3];

  return a3;
}

+ (BOOL)createStoreDirectoryIfNeededAtDefaultLocation:(id *)a3
{
  v5 = [a1 defaultStoreLocation];
  LOBYTE(a3) = [a1 createStoreDirectoryIfNeededAt:v5 error:a3];

  return a3;
}

+ (BOOL)createStoreDirectoryIfNeededAt:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 path];
  v7 = [v6 isEqual:@"/dev/null"];

  if ((v7 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v5 path];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v19 = 0;
      v13 = [v9 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v19];
      v12 = v19;
      if ((v13 & 1) == 0)
      {
        v16 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[CNContactPosterDataPersistentStoreManager createStoreDirectoryIfNeededAt:error:];
        }

        v17 = v12;
        v14 = v17;
        if (a4)
        {
          v18 = v17;
          v8 = 0;
          *a4 = v14;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_7;
      }
    }

    v14 = v12;
    v8 = 1;
LABEL_7:

    goto LABEL_8;
  }

  v8 = 1;
LABEL_8:

  return v8;
}

+ (id)_modelVersionChecksumForDatabaseAtURL:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695D4A8];
  v22 = 0;
  v5 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v4 URL:a3 options:0 error:&v22];
  v6 = v22;
  if (v6)
  {
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v6;
      _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_INFO, "Couldn't fetch metadata for the store, error: %{public}@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E695D638];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v23 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v7 = [v9 mergedModelFromBundles:v11 forStoreMetadata:v5];

    if (v7)
    {
      v12 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v7];
      v13 = [v12 managedObjectModel];
      v8 = [v13 versionChecksum];
    }

    else
    {
      v12 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CNContactPosterDataPersistentStoreManager *)v12 _modelVersionChecksumForDatabaseAtURL:v14, v15, v16, v17, v18, v19, v20];
      }

      v8 = 0;
    }
  }

  return v8;
}

+ (BOOL)_checkProductionReadyTagForDatabaseAtURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = *MEMORY[0x1E695D4A8];
    v13 = 0;
    v8 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v7 URL:v3 options:0 error:&v13];
    v9 = v13;
    if (v9)
    {
      v10 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[CNContactPosterDataPersistentStoreManager _checkProductionReadyTagForDatabaseAtURL:];
      }

      v11 = 0;
    }

    else
    {
      v10 = [v8 objectForKeyedSubscript:@"ReadyToSyncToProduction"];
      v11 = v10 != 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (void)tagDatabaseAsSafeForProductionInContainer:(id)a3
{
  v3 = a3;
  v4 = [v3 persistentStoreCoordinator];
  v5 = [v4 persistentStores];
  v6 = [v5 firstObject];

  v7 = [v4 metadataForPersistentStore:v6];
  v8 = [v7 objectForKeyedSubscript:@"ReadyToSyncToProduction"];

  if (!v8)
  {
    v9 = [v7 mutableCopy];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ReadyToSyncToProduction"];
    [v4 setMetadata:v9 forPersistentStore:v6];
    v10 = [v3 newBackgroundContext];
    v13 = 0;
    [v10 save:&v13];
    v11 = v13;

    if (v11)
    {
      v12 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CNContactPosterDataPersistentStoreManager tagDatabaseAsSafeForProductionInContainer:];
      }
    }
  }
}

+ (BOOL)moveAsideIfUntaggedDevelopmentDB:(id)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 storeFileURLForLocation:v4];
  v6 = [a1 _modelVersionChecksumForDatabaseAtURL:v5];
  v7 = [a1 _checkProductionReadyTagForDatabaseAtURL:v5];
  v8 = [v6 isEqualToString:@"s0gVhK2s5lpxmERmPBpAlmfbylLFcshT5vOSp2oGqUc="] ^ 1 | v7;
  if ((v8 & 1) == 0)
  {
    v9 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_DEFAULT, "Moving aside development poster DB", buf, 2u);
    }

    v10 = [v4 URLByAppendingPathComponent:@"moved_aside_development_PosterData.db"];
    v11 = objc_alloc_init(MEMORY[0x1E695D6C0]);
    v12 = *MEMORY[0x1E695D4A8];
    v20 = 0;
    [v11 replacePersistentStoreAtURL:v10 destinationOptions:0 withPersistentStoreFromURL:v5 sourceOptions:0 storeType:v12 error:&v20];
    v13 = v20;
    if (v13)
    {
      v14 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[CNContactPosterDataPersistentStoreManager moveAsideIfUntaggedDevelopmentDB:];
      }
    }

    v22 = *MEMORY[0x1E695D400];
    v23[0] = MEMORY[0x1E695E118];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v19 = 0;
    [v11 destroyPersistentStoreAtURL:v5 withType:v12 options:v15 error:&v19];
    v16 = v19;

    if (v16)
    {
      v17 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[CNContactPosterDataPersistentStoreManager moveAsideIfUntaggedDevelopmentDB:];
      }
    }
  }

  return (v8 & 1) == 0;
}

+ (BOOL)performLightweightMigrationIfNeededError:(id *)a3
{
  v5 = [objc_opt_class() defaultStoreLocation];
  LOBYTE(a3) = [a1 performLightweightMigrationIfNeededWithStoreLocation:v5 error:a3];

  return a3;
}

+ (BOOL)performLightweightMigrationIfNeededWithStoreLocation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 storeFileURLForLocation:v6];
  v8 = *MEMORY[0x1E695D4A8];
  v31 = 0;
  v9 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v8 URL:v7 options:0 error:&v31];
  v10 = v31;
  if (!(*(*MEMORY[0x1E6996548] + 16))())
  {
    if ([a1 moveAsideIfUntaggedDevelopmentDB:v6])
    {
      v14 = [a1 sharedPersistentContainerForStoreLocation:v6];

      v30 = 0;
      v15 = [v14 load:&v30];
      v10 = v30;
      if (v15)
      {
        [a1 tagDatabaseAsSafeForProductionInContainer:v14];
        v16 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [CNContactPosterDataPersistentStoreManager performLightweightMigrationIfNeededWithStoreLocation:v16 error:?];
        }
      }

      else
      {
        v23 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [CNContactPosterDataPersistentStoreManager performLightweightMigrationIfNeededWithStoreLocation:v10 error:?];
        }

        if (a4)
        {
          v24 = v10;
          *a4 = v10;
        }
      }

      goto LABEL_20;
    }

    v17 = [objc_opt_class() currentManagedObjectModel];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 isConfiguration:0 compatibleWithStoreMetadata:v9];
      v20 = objc_opt_class();
      if (!v19)
      {
        v21 = [v20 sharedPersistentContainerForModel:v18 storeLocation:v6];

        v28 = 0;
        v13 = [v21 load:&v28];
        v10 = v28;
        if (v13)
        {
          [a1 tagDatabaseAsSafeForProductionInContainer:v21];
        }

        else
        {
          v26 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [CNContactPosterDataPersistentStoreManager performLightweightMigrationIfNeededWithStoreLocation:v10 error:?];
          }

          if (a4)
          {
            v27 = v10;
            *a4 = v10;
          }
        }

        goto LABEL_25;
      }

      v21 = [v20 os_log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "Did not perform migration, existing model is already compatible with store metadata";
LABEL_23:
        _os_log_impl(&dword_1954A0000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
      }
    }

    else
    {
      v21 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "Did not perform migration, no existing managed object model found";
        goto LABEL_23;
      }
    }

    v13 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v11 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CNContactPosterDataPersistentStoreManager performLightweightMigrationIfNeededWithStoreLocation:v10 error:?];
  }

  if (!a4)
  {
LABEL_20:
    v13 = 0;
    goto LABEL_26;
  }

  v12 = v10;
  v13 = 0;
  *a4 = v10;
LABEL_26:

  return v13;
}

+ (id)_cloudKitOptionsWorkingAroundModuleFailures
{
  v2 = [objc_alloc(MEMORY[0x1E695D680]) initWithContainerIdentifier:@"com.apple.contacts.posters"];
  [v2 setApsConnectionMachServiceName:@"com.apple.aps.contacts.postersyncd"];
  [v2 setUseDeviceToDeviceEncryption:1];
  [v2 setCkAssetThresholdBytes:&unk_1F0986FA0];
  [v2 setContainerOptions:0];
  v3 = objc_alloc_init(MEMORY[0x1E695B8B0]);
  [v3 setUseZoneWidePCS:1];
  [v2 setContainerOptions:v3];

  return v2;
}

void __58__CNContactPosterDataPersistentStoreManager_setupIfNeeded__block_invoke_cold_1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Failed to load persistent stores: %@", v4, v5, v6, v7, v8);
}

+ (void)performLightweightMigrationIfNeededWithStoreLocation:(void *)a1 error:.cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Did not perform migration, failed to load persistent stores: %@", v4, v5, v6, v7, v8);
}

+ (void)performLightweightMigrationIfNeededWithStoreLocation:(void *)a1 error:.cold.2(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Failed to load persistent stores in a new empty database: %@", v4, v5, v6, v7, v8);
}

+ (void)performLightweightMigrationIfNeededWithStoreLocation:(void *)a1 error:.cold.4(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1954A0000, v2, v3, "Did not perform migration, no store metadata found, %@", v4, v5, v6, v7, v8);
}

@end