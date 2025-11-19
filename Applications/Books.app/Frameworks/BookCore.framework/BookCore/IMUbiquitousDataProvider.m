@interface IMUbiquitousDataProvider
+ (BOOL)ubiquityDebug;
+ (id)managedObjectModelBundle;
+ (id)managedObjectModelName;
+ (void)deleteCloudDataWithCompletion:(id)a3;
+ (void)initialize;
- (BOOL)saveManagedObjectContext:(id)a3;
- (IMUbiquitousDataProvider)init;
- (IMUbiquitousDataProvider)initWithPersistentStoreURL:(id)a3;
- (id)metadataObjectForKey:(id)a3;
- (id)newManagedObjectContext;
- (id)newManagedObjectContextWithClass:(Class)a3 concurrencyType:(unint64_t)a4;
- (void)applicationDidBecomeActive:(id)a3;
- (void)cacheMetadataDictionary;
- (void)loadBringUpPersistentStore;
- (void)loadCoreData;
- (void)loadLocalPersistentStoreWithCompletionBlock:(id)a3;
- (void)loadManagedObjectModel;
- (void)loadPersistentStoreCoordinator;
- (void)removePersistentStores;
- (void)setMetadataObject:(id)a3 forKey:(id)a4;
@end

@implementation IMUbiquitousDataProvider

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_create("com.apple.itunesmobile.ubiquity", 0);
    qword_342200 = v2;

    _objc_release_x1(v2);
  }
}

- (IMUbiquitousDataProvider)init
{
  v6.receiver = self;
  v6.super_class = IMUbiquitousDataProvider;
  v2 = [(IMUbiquitousDataProvider *)&v6 init];
  if (v2)
  {
    v3 = [[IMUbiquitousPersistentStoreLoader alloc] initWithIdentifier:@"local"];
    localPersistentStoreLoader = v2->_localPersistentStoreLoader;
    v2->_localPersistentStoreLoader = v3;
  }

  __dmb(0xBu);
  return v2;
}

- (IMUbiquitousDataProvider)initWithPersistentStoreURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMUbiquitousDataProvider;
  v5 = [(IMUbiquitousDataProvider *)&v9 init];
  if (v5)
  {
    v6 = [[IMUbiquitousPersistentStoreLoader alloc] initWithPersistentStoreURL:v4];
    localPersistentStoreLoader = v5->_localPersistentStoreLoader;
    v5->_localPersistentStoreLoader = v6;
  }

  return v5;
}

+ (BOOL)ubiquityDebug
{
  if ((byte_342209 & 1) == 0)
  {
    v2 = +[NSProcessInfo processInfo];
    v3 = [v2 environment];
    v4 = [v3 valueForKey:@"kIMUbiquitousDataProviderDebug"];

    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 valueForKey:@"kIMUbiquitousDataProviderDebug"];

    byte_342208 = [v4 isEqualToString:@"YES"];
    v7 = [v6 isEqualToString:@"YES"];
    byte_342208 |= v7;
    byte_342209 = 1;
  }

  return byte_342208;
}

- (BOOL)saveManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(IMUbiquitousDataProvider *)self currentPersistentStore];
  if ([(IMUbiquitousDataProvider *)self metadataDictionaryDirty])
  {
    v6 = [(IMUbiquitousDataProvider *)self metadataDictionary];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 persistentStoreCoordinator];
      v9 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        v11 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
        v12 = [v11 metadataForPersistentStore:v5];
        v13 = [v12 mutableCopy];

        v14 = [(IMUbiquitousDataProvider *)self metadataDictionary];
        v15 = [v14 copy];

        [v13 setObject:v15 forKey:@"BKDatabase-Metadata"];
        v16 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
        [v16 setMetadata:v13 forPersistentStore:v5];

        [(IMUbiquitousDataProvider *)self setMetadataDictionaryDirty:0];
      }
    }
  }

  if (![v4 hasChanges])
  {
    v18 = 0;
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v23 = 0;
  v17 = [v4 save:&v23];
  v18 = v23;
  if ((v17 & 1) == 0)
  {
    v20 = BCIMLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v25 = "[IMUbiquitousDataProvider saveManagedObjectContext:]";
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Database/BCUbiquitousDataProvider.m";
      v28 = 1024;
      v29 = 140;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v21 = BCIMLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "@Failed to save syncMOC with error: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v19 = 1;
LABEL_15:

  return v19;
}

- (id)newManagedObjectContextWithClass:(Class)a3 concurrencyType:(unint64_t)a4
{
  [(IMUbiquitousDataProvider *)self loadCoreData];
  v7 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
  v8 = [[a3 alloc] initWithConcurrencyType:a4];
  if ([v8 concurrencyType])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_5899C;
    v10[3] = &unk_2C7BE8;
    v11 = v8;
    v12 = v7;
    [v11 performBlock:v10];

    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [v8 setPersistentStoreCoordinator:v7];
    [v8 setUndoManager:0];
    [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1E6460();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1E650C();
  }

LABEL_9:

  return v8;
}

- (id)newManagedObjectContext
{
  v3 = objc_opt_class();

  return [(IMUbiquitousDataProvider *)self newManagedObjectContextWithClass:v3];
}

- (void)loadCoreData
{
  onceToken = self->_onceToken;
  p_onceToken = &self->_onceToken;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_58AC0;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (onceToken != -1)
  {
    dispatch_once(p_onceToken, block);
  }
}

- (void)setMetadataObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(IMUbiquitousDataProvider *)v8 currentPersistentStore];
    if (v9)
    {
      v10 = [(IMUbiquitousDataProvider *)v8 persistentStoreCoordinator];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_58C2C;
      v11[3] = &unk_2C89F8;
      v11[4] = v8;
      v12 = v6;
      v13 = v7;
      [v10 performBlockAndWait:v11];
    }

    objc_sync_exit(v8);
  }
}

- (id)metadataObjectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_58DE8;
  v16 = sub_58DF8;
  v17 = 0;
  v5 = [(IMUbiquitousDataProvider *)self currentPersistentStore];
  if (v5)
  {
    v6 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_58E00;
    v9[3] = &unk_2C95A0;
    v9[4] = self;
    v11 = &v12;
    v10 = v4;
    [v6 performBlockAndWait:v9];
  }

  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)applicationDidBecomeActive:(id)a3
{
  if ([(IMUbiquitousDataProvider *)self isReady])
  {

    [(IMUbiquitousDataProvider *)self updateCurrentPersistentStore];
  }
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[IMUbiquitousPersistentStoreLoader databaseFolderURL];
  v5 = +[NSFileManager defaultManager];
  v8 = 0;
  [v5 removeItemAtURL:v4 error:&v8];
  v6 = v8;

  v7 = objc_retainBlock(v3);
  if (v7)
  {
    v7[2](v7, v6 == 0, v6);
  }
}

- (void)loadManagedObjectModel
{
  v3 = [(IMUbiquitousDataProvider *)self managedObjectModel];

  if (!v3)
  {
    v4 = objc_opt_class();
    v9 = [v4 managedObjectModelName];
    v5 = [v4 managedObjectModelBundle];
    v6 = [v5 pathForResource:v9 ofType:@"momd"];

    v7 = [NSURL fileURLWithPath:v6];
    v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v7];
    [(IMUbiquitousDataProvider *)self setManagedObjectModel:v8];
  }
}

- (void)loadPersistentStoreCoordinator
{
  v3 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];

  if (!v3)
  {
    v4 = [NSPersistentStoreCoordinator alloc];
    v5 = [(IMUbiquitousDataProvider *)self managedObjectModel];
    v6 = [v4 initWithManagedObjectModel:v5];

    [(IMUbiquitousDataProvider *)self setPersistentStoreCoordinator:v6];
  }
}

- (void)loadLocalPersistentStoreWithCompletionBlock:(id)a3
{
  v8 = a3;
  v4 = [(IMUbiquitousDataProvider *)self localPersistentStoreLoader];
  v5 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
  v6 = [v4 addPersistentStoreToPersistentStoreCoordinator:v5];
  [(IMUbiquitousDataProvider *)self setCurrentPersistentStore:v6];

  [(IMUbiquitousDataProvider *)self setCurrentPersistentStoreType:1];
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8);
    v7 = v8;
  }
}

- (void)loadBringUpPersistentStore
{
  if (![(IMUbiquitousDataProvider *)self currentPersistentStoreType])
  {
    v3 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_59270;
    v4[3] = &unk_2C7D40;
    v4[4] = self;
    [v3 performBlockAndWait:v4];
  }
}

- (void)removePersistentStores
{
  v3 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
  v4 = [v3 persistentStores];
  v5 = [v4 copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
        v15 = 0;
        v13 = [v12 removePersistentStore:v11 error:&v15];
        v14 = v15;

        if ((v13 & 1) == 0)
        {
          [NSException raise:NSGenericException format:@"%@ Could not remove local Persistent Store: %@\nError: %@", objc_opt_class(), v11, v14];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(IMUbiquitousDataProvider *)self setCurrentPersistentStore:0];
}

- (void)cacheMetadataDictionary
{
  v3 = [(IMUbiquitousDataProvider *)self metadataDictionary];

  if (!v3)
  {
    v10 = [(IMUbiquitousDataProvider *)self currentPersistentStore];
    v4 = [(IMUbiquitousDataProvider *)self persistentStoreCoordinator];
    v5 = [v4 metadataForPersistentStore:v10];

    v6 = [v5 objectForKey:@"BKDatabase-Metadata"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 mutableCopy];
    }

    else
    {
      v8 = +[NSMutableDictionary dictionary];
    }

    v9 = v8;
    [(IMUbiquitousDataProvider *)self setMetadataDictionary:v8];

    [(IMUbiquitousDataProvider *)self setMetadataDictionaryDirty:0];
  }
}

+ (id)managedObjectModelName
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSGenericException format:@"%@ is an abstract class, %@ should be implemented by a concrete subclass", a1, v3];

  return 0;
}

+ (id)managedObjectModelBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

@end