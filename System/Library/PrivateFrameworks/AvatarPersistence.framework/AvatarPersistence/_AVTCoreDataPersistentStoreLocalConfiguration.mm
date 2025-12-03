@interface _AVTCoreDataPersistentStoreLocalConfiguration
+ (id)createStoreDescriptionWithDatabaseLocation:(id)location logger:(id)logger;
+ (id)sideDatabaseFolderForStoreLocation:(id)location;
- (BOOL)contentExists;
- (BOOL)copyStorageAside:(id *)aside;
- (BOOL)createDatabaseDirectoryIfNeeded:(id *)needed usingFileManager:(id)manager;
- (BOOL)setupIfNeeded:(id *)needed;
- (BOOL)tearDownAndEraseAllContent:(id *)content;
- (_AVTCoreDataPersistentStoreLocalConfiguration)initWithStoreLocation:(id)location copiedAside:(BOOL)aside environment:(id)environment;
- (id)copiedAsideMigratableSource;
- (id)createManagedObjectContext;
- (id)createStoreServerWithError:(id *)error;
- (id)migratableSources;
- (void)updateBackupInclusionStatusOnQueue:(id)queue completionHandler:(id)handler;
@end

@implementation _AVTCoreDataPersistentStoreLocalConfiguration

- (_AVTCoreDataPersistentStoreLocalConfiguration)initWithStoreLocation:(id)location copiedAside:(BOOL)aside environment:(id)environment
{
  locationCopy = location;
  environmentCopy = environment;
  v29.receiver = self;
  v29.super_class = _AVTCoreDataPersistentStoreLocalConfiguration;
  v11 = [(_AVTCoreDataPersistentStoreLocalConfiguration *)&v29 init];
  if (v11)
  {
    logger = [environmentCopy logger];
    logger = v11->_logger;
    v11->_logger = logger;

    objc_storeStrong(&v11->_storeLocation, location);
    v14 = objc_opt_class();
    v15 = v14;
    if (aside)
    {
      v16 = [v14 sideDatabaseFolderForStoreLocation:locationCopy];
      folderLocation = v11->_folderLocation;
      v11->_folderLocation = v16;
    }

    else
    {
      folderLocation = [(_AVTCoreDataPersistentStoreLocalConfiguration *)v11 storeLocation];
      v18 = [v15 databaseFolderForStoreLocation:folderLocation];
      v19 = v11->_folderLocation;
      v11->_folderLocation = v18;
    }

    v20 = [objc_opt_class() databaseLocationForFolderLocation:v11->_folderLocation];
    databaseLocation = v11->_databaseLocation;
    v11->_databaseLocation = v20;

    v22 = objc_alloc(MEMORY[0x277CBE4D8]);
    v23 = +[AVTCoreDataPersistentStoreConfiguration createModel];
    v24 = [v22 initWithManagedObjectModel:v23];
    coordinator = v11->_coordinator;
    v11->_coordinator = v24;

    v26 = [objc_opt_class() createStoreDescriptionWithDatabaseLocation:v11->_databaseLocation logger:v11->_logger];
    storeDescription = v11->_storeDescription;
    v11->_storeDescription = v26;

    if (!aside && +[AVTCoreDataCloudKitMirroringConfiguration cloudKitMirroringEnabled])
    {
      [(AVTUILogger *)v11->_logger logSyncEnabled];
      [AVTCoreDataCloudKitMirroringConfiguration configureStoreDescriptionForMirroring:v11->_storeDescription logger:v11->_logger];
    }

    objc_storeStrong(&v11->_environment, environment);
  }

  return v11;
}

+ (id)createStoreDescriptionWithDatabaseLocation:(id)location logger:(id)logger
{
  v4 = MEMORY[0x277CBE4E0];
  locationCopy = location;
  v6 = objc_alloc_init(v4);
  [v6 setType:*MEMORY[0x277CBE2E8]];
  [v6 setURL:locationCopy];

  [v6 setShouldAddStoreAsynchronously:0];
  v7 = MEMORY[0x277CBEC38];
  [v6 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE268]];
  [v6 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
  [v6 setOption:v7 forKey:*MEMORY[0x277CBE210]];

  return v6;
}

+ (id)sideDatabaseFolderForStoreLocation:(id)location
{
  v3 = [self databaseFolderForStoreLocation:location];
  v4 = [v3 URLByAppendingPathExtension:@"movedaside"];

  return v4;
}

- (id)migratableSources
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [AVTArchiverBasedStoreMigratableSource alloc];
  storeLocation = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self storeLocation];
  environment = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self environment];
  v6 = [(AVTArchiverBasedStoreMigratableSource *)v3 initWithStoreLocation:storeLocation environment:environment];
  v11[0] = v6;
  copiedAsideMigratableSource = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self copiedAsideMigratableSource];
  v11[1] = copiedAsideMigratableSource;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)copiedAsideMigratableSource
{
  v3 = [_AVTCoreDataPersistentStoreLocalConfiguration alloc];
  storeLocation = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self storeLocation];
  environment = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self environment];
  v6 = [(_AVTCoreDataPersistentStoreLocalConfiguration *)v3 initWithStoreLocation:storeLocation copiedAside:1 environment:environment];

  v7 = [AVTSideCoreDataStoreMigratableSource alloc];
  environment2 = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self environment];
  v9 = [(AVTSideCoreDataStoreMigratableSource *)v7 initWithConfiguration:v6 environment:environment2];

  return v9;
}

- (BOOL)createDatabaseDirectoryIfNeeded:(id *)needed usingFileManager:(id)manager
{
  managerCopy = manager;
  folderLocation = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self folderLocation];
  path = [folderLocation path];
  v9 = [managerCopy fileExistsAtPath:path];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = [managerCopy createDirectoryAtURL:folderLocation withIntermediateDirectories:1 attributes:0 error:needed];
  }

  return v10;
}

- (BOOL)setupIfNeeded:(id *)needed
{
  coordinator = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self coordinator];
  persistentStores = [coordinator persistentStores];
  v7 = [persistentStores count];

  v8 = 1;
  if (!v7)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 1;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__7;
    v28 = __Block_byref_object_dispose__7;
    v29 = 0;
    logger = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self logger];
    folderLocation = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self folderLocation];
    path = [folderLocation path];
    [logger logReadingBackendAtPath:path];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = (v25 + 5);
    obj = v25[5];
    LOBYTE(path) = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self createDatabaseDirectoryIfNeeded:&obj usingFileManager:defaultManager];
    objc_storeStrong(v13, obj);
    *(v31 + 24) = path;
    if (path)
    {
      logger2 = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self logger];
      coordinator2 = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self coordinator];
      storeDescription = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self storeDescription];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __63___AVTCoreDataPersistentStoreLocalConfiguration_setupIfNeeded___block_invoke;
      v19[3] = &unk_278CFAEE0;
      v21 = &v30;
      v22 = &v24;
      v17 = logger2;
      v20 = v17;
      [coordinator2 addPersistentStoreWithDescription:storeDescription completionHandler:v19];

      v8 = *(v31 + 24);
      if (needed && (v31[3] & 1) == 0)
      {
        *needed = v25[5];
      }
    }

    else
    {
      v8 = 0;
      if (needed)
      {
        *needed = v25[5];
      }
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  return v8;
}

- (id)createManagedObjectContext
{
  v3 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  coordinator = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self coordinator];
  [v3 setPersistentStoreCoordinator:coordinator];

  [v3 setTransactionAuthor:@"AvatarUIClient"];

  return v3;
}

- (id)createStoreServerWithError:(id *)error
{
  v18[5] = *MEMORY[0x277D85DE8];
  v5 = +[AVTCoreDataPersistentStoreConfiguration currentManagedObjectModel];
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:error];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
    if ([(_AVTCoreDataPersistentStoreLocalConfiguration *)self createDatabaseDirectoryIfNeeded:error usingFileManager:v7])
    {
      v8 = *MEMORY[0x277CBE340];
      v17[0] = *MEMORY[0x277CBE328];
      v17[1] = v8;
      v18[0] = MEMORY[0x277CBEC38];
      v18[1] = @"com.apple.avatar.service";
      v9 = *MEMORY[0x277CBE240];
      v17[2] = *MEMORY[0x277CBE268];
      v17[3] = v9;
      v10 = *MEMORY[0x277CCA1A0];
      v18[2] = MEMORY[0x277CBEC38];
      v18[3] = v10;
      v17[4] = *MEMORY[0x277CBE210];
      v18[4] = MEMORY[0x277CBEC38];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
      v12 = objc_alloc(MEMORY[0x277CBE510]);
      databaseLocation = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self databaseLocation];
      v14 = [v12 initForStoreWithURL:databaseLocation usingModel:v5 options:v11 policy:0];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)tearDownAndEraseAllContent:(id *)content
{
  v39 = *MEMORY[0x277D85DE8];
  logger = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self logger];
  folderLocation = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self folderLocation];
  path = [folderLocation path];
  [logger logTearingDownCoreDataStack:path];

  coordinator = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self coordinator];
  persistentStores = [coordinator persistentStores];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = persistentStores;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v35;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v34 + 1) + 8 * v15);
        coordinator2 = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self coordinator];
        v33 = v16;
        v19 = [coordinator2 removePersistentStore:v17 error:&v33];
        v13 = v33;

        if (!v19)
        {
          logger2 = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self logger];
          v21 = [v13 description];
          [logger2 logErrorTearingDownCoreDataStack:v21];

          if (content)
          {
            v22 = v13;
            v23 = 0;
            *content = v13;
          }

          else
          {
            v23 = 0;
          }

          goto LABEL_19;
        }

        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

  v24 = v13;

  v25 = objc_alloc_init(MEMORY[0x277CCAA00]);
  folderLocation2 = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self folderLocation];
  v32 = v13;
  v23 = [v25 removeItemAtURL:folderLocation2 error:&v32];
  v13 = v32;

  if ((v23 & 1) == 0)
  {
    if (content)
    {
      v27 = v13;
      *content = v13;
    }

    logger3 = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self logger];
    v29 = [v13 description];
    [logger3 logErrorRemovingStoreFolder:v29];
  }

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)copyStorageAside:(id *)aside
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = 0;
  logger = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self logger];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66___AVTCoreDataPersistentStoreLocalConfiguration_copyStorageAside___block_invoke;
  v8[3] = &unk_278CFAF08;
  v8[4] = self;
  v8[5] = &v15;
  v8[6] = &v9;
  [logger copyingStorageAside:v8];

  v6 = *(v16 + 24);
  if (aside && (v16[3] & 1) == 0)
  {
    *aside = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

- (BOOL)contentExists
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  databaseLocation = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self databaseLocation];
  path = [databaseLocation path];
  v6 = [v3 fileExistsAtPath:path];

  return v6;
}

- (void)updateBackupInclusionStatusOnQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  logger = [(_AVTCoreDataPersistentStoreLocalConfiguration *)self logger];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __102___AVTCoreDataPersistentStoreLocalConfiguration_updateBackupInclusionStatusOnQueue_completionHandler___block_invoke;
  v11[3] = &unk_278CFAF80;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = queueCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  [AVTCoreDataCloudKitMirroringConfiguration deviceConfigurationSupportsCloudKitMirroringWithLogger:logger completionHandler:v11];
}

@end