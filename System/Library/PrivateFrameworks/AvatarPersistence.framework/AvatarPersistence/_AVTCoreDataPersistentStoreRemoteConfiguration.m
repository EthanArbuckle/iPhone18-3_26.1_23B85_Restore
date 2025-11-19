@interface _AVTCoreDataPersistentStoreRemoteConfiguration
+ (id)createContainerForRemoteConfiguration;
- (BOOL)setupIfNeeded:(id *)a3;
- (_AVTCoreDataPersistentStoreRemoteConfiguration)initWithDaemonClient:(id)a3 environment:(id)a4;
- (id)createManagedObjectContext;
- (id)persistentStoreCoordinator;
- (id)storeDescription;
@end

@implementation _AVTCoreDataPersistentStoreRemoteConfiguration

- (_AVTCoreDataPersistentStoreRemoteConfiguration)initWithDaemonClient:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _AVTCoreDataPersistentStoreRemoteConfiguration;
  v9 = [(_AVTCoreDataPersistentStoreRemoteConfiguration *)&v15 init];
  if (v9)
  {
    v10 = [v8 logger];
    logger = v9->_logger;
    v9->_logger = v10;

    objc_storeStrong(&v9->_daemonClient, a3);
    v12 = [objc_opt_class() createContainerForRemoteConfiguration];
    container = v9->_container;
    v9->_container = v12;
  }

  return v9;
}

+ (id)createContainerForRemoteConfiguration
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = +[AVTCoreDataPersistentStoreConfiguration currentManagedObjectModel];
  v3 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"AVTCoreDataContainer" managedObjectModel:v2];
  v4 = objc_alloc_init(MEMORY[0x277CBE4E0]);
  [v4 setType:*MEMORY[0x277CBE348]];
  [v4 setOption:@"com.apple.avatar.service" forKey:*MEMORY[0x277CBE340]];
  v5 = MEMORY[0x277CBEC38];
  [v4 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE328]];
  [v4 setShouldAddStoreAsynchronously:0];
  [v4 setOption:v5 forKey:*MEMORY[0x277CBE268]];
  [v4 setOption:v5 forKey:*MEMORY[0x277CBE338]];
  [v4 setOption:v5 forKey:*MEMORY[0x277CBE210]];
  v9[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v3 setPersistentStoreDescriptions:v6];

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)setupIfNeeded:(id *)a3
{
  v5 = [(_AVTCoreDataPersistentStoreRemoteConfiguration *)self container];
  v6 = [v5 persistentStoreCoordinator];
  v7 = [v6 persistentStores];
  v8 = [v7 count];

  v9 = 1;
  if (!v8)
  {
    v10 = [(_AVTCoreDataPersistentStoreRemoteConfiguration *)self daemonClient];
    [v10 checkIn];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__7;
    v18 = __Block_byref_object_dispose__7;
    v19 = 0;
    v11 = [(_AVTCoreDataPersistentStoreRemoteConfiguration *)self container];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64___AVTCoreDataPersistentStoreRemoteConfiguration_setupIfNeeded___block_invoke;
    v13[3] = &unk_278CFAEB8;
    v13[4] = &v14;
    v13[5] = &v20;
    [v11 loadPersistentStoresWithCompletionHandler:v13];

    v9 = *(v21 + 24);
    if (a3 && (v21[3] & 1) == 0)
    {
      *a3 = v15[5];
    }

    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  return v9;
}

- (id)createManagedObjectContext
{
  v2 = [(_AVTCoreDataPersistentStoreRemoteConfiguration *)self container];
  v3 = [v2 newBackgroundContext];

  [v3 setTransactionAuthor:@"AvatarUIClient"];

  return v3;
}

- (id)persistentStoreCoordinator
{
  v2 = [(_AVTCoreDataPersistentStoreRemoteConfiguration *)self container];
  v3 = [v2 persistentStoreCoordinator];

  return v3;
}

- (id)storeDescription
{
  v2 = [(_AVTCoreDataPersistentStoreRemoteConfiguration *)self container];
  v3 = [v2 persistentStoreDescriptions];
  v4 = [v3 firstObject];

  return v4;
}

@end