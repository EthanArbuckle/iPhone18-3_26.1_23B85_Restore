@interface IMCoreDataSource
+ (id)persistentStoreName;
- (IMCoreDataSource)initWithPersistentStoreURL:(id)l;
- (id)bundleForManagedObjectModel;
- (id)copyMaxSortValue:(id)value forEntityName:(id)name;
- (id)copyNextSortValue:(id)value forKey:(id)key forEntityName:(id)name;
- (id)generationValue:(id)value;
- (id)metadataObjectForKey:(id)key;
- (id)newManagedObjectContext;
- (id)newManagedObjectContextWithClass:(Class)class;
- (id)newPrivateQueueManagedObjectContextWithClass:(Class)class;
- (void)_loadPersistentStoreAndRetryIfNeeded:(BOOL)needed;
- (void)cacheMetadataDictionary;
- (void)incrementGeneration:(id)generation;
- (void)loadCoreData;
- (void)loadCoreDataPersistentStoreInitializedHandler:(id)handler migrationHandler:(id)migrationHandler;
- (void)loadManagedObjectModel;
- (void)loadPersistentStoreCoordinator;
- (void)saveManagedObjectContext:(id)context;
- (void)saveMetaData;
- (void)setMetadataObject:(id)object forKey:(id)key;
@end

@implementation IMCoreDataSource

- (IMCoreDataSource)initWithPersistentStoreURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = IMCoreDataSource;
  v6 = [(IMCoreDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentStoreURL, l);
  }

  return v7;
}

+ (id)persistentStoreName
{
  v2 = objc_opt_class();
  managedObjectModelName = [v2 managedObjectModelName];
  persistentStoreVersion = [v2 persistentStoreVersion];
  v5 = managedObjectModelName;
  if ([persistentStoreVersion length])
  {
    v5 = [managedObjectModelName stringByAppendingFormat:@"-%@", persistentStoreVersion];
  }

  persistentStoreNameSeed = [v2 persistentStoreNameSeed];
  if ([persistentStoreNameSeed length])
  {
    v7 = [v5 stringByAppendingFormat:@"-%@", persistentStoreNameSeed];

    v5 = v7;
  }

  persistentStoreExtension = [v2 persistentStoreExtension];
  if (persistentStoreExtension)
  {
    v9 = [v5 stringByAppendingPathExtension:persistentStoreExtension];

    v5 = v9;
  }

  v10 = v5;

  return v5;
}

- (void)loadCoreData
{
  [(IMCoreDataSource *)self loadManagedObjectModel];
  [(IMCoreDataSource *)self loadPersistentStoreCoordinator];

  [(IMCoreDataSource *)self loadPersistentStore];
}

- (void)loadCoreDataPersistentStoreInitializedHandler:(id)handler migrationHandler:(id)migrationHandler
{
  migrationHandlerCopy = migrationHandler;
  [(IMCoreDataSource *)self setPersistentStoreInitializedHandler:handler];
  [(IMCoreDataSource *)self setMigrationHandler:migrationHandlerCopy];

  [(IMCoreDataSource *)self loadManagedObjectModel];
  [(IMCoreDataSource *)self loadPersistentStoreCoordinator];

  [(IMCoreDataSource *)self loadPersistentStore];
}

- (id)newManagedObjectContext
{
  v3 = objc_opt_class();

  return [(IMCoreDataSource *)self newManagedObjectContextWithClass:v3];
}

- (id)newPrivateQueueManagedObjectContextWithClass:(Class)class
{
  v4 = [[class alloc] initWithConcurrencyType:1];
  persistentStoreCoordinator = [(IMCoreDataSource *)self persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v4 setUndoManager:0];
  [v4 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  return v4;
}

- (id)newManagedObjectContextWithClass:(Class)class
{
  v4 = [[class alloc] initWithConcurrencyType:0];
  persistentStoreCoordinator = [(IMCoreDataSource *)self persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v4 setUndoManager:0];
  [v4 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  return v4;
}

- (void)saveMetaData
{
  if ([(IMCoreDataSource *)self metadataDictionaryDirty])
  {
    metadataDictionary = [(IMCoreDataSource *)self metadataDictionary];

    if (metadataDictionary)
    {
      v11[0] = NSMigratePersistentStoresAutomaticallyOption;
      v11[1] = NSInferMappingModelAutomaticallyOption;
      v12[0] = &__kCFBooleanTrue;
      v12[1] = &__kCFBooleanTrue;
      v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
      persistentStoreCoordinator = [(IMCoreDataSource *)self persistentStoreCoordinator];
      persistentStore = [(IMCoreDataSource *)self persistentStore];
      v7 = [persistentStoreCoordinator metadataForPersistentStore:persistentStore];
      v8 = [v7 mutableCopy];

      metadataDictionary2 = [(IMCoreDataSource *)self metadataDictionary];
      v10 = [metadataDictionary2 copy];
      [v8 setObject:v10 forKey:@"BKDatabase-Metadata"];

      [NSPersistentStoreCoordinator setMetadata:v8 forPersistentStoreOfType:NSSQLiteStoreType URL:self->_persistentStoreURL options:v4 error:0];
      [(IMCoreDataSource *)self setMetadataDictionaryDirty:0];
    }
  }
}

- (void)saveManagedObjectContext:(id)context
{
  contextCopy = context;
  [(IMCoreDataSource *)self saveMetaData];
  if ([contextCopy hasChanges])
  {
    v9 = 0;
    v5 = [contextCopy save:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = BCIMLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v11 = "[IMCoreDataSource saveManagedObjectContext:]";
        v12 = 2080;
        v13 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Database/BCCoreDataSource.m";
        v14 = 1024;
        v15 = 155;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v8 = BCIMLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "@Failed to save MOC with error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (id)bundleForManagedObjectModel
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (void)loadManagedObjectModel
{
  managedObjectModel = [(IMCoreDataSource *)self managedObjectModel];

  if (!managedObjectModel)
  {
    managedObjectModelName = [objc_opt_class() managedObjectModelName];
    bundleForManagedObjectModel = [(IMCoreDataSource *)self bundleForManagedObjectModel];
    v6 = [bundleForManagedObjectModel pathForResource:managedObjectModelName ofType:@"momd"];
    if (!v6)
    {
      v23 = bundleForManagedObjectModel;
      v24 = managedObjectModelName;
      resourceURL = [bundleForManagedObjectModel resourceURL];
      v8 = +[NSFileManager defaultManager];
      v30 = NSURLNameKey;
      v9 = [NSArray arrayWithObjects:&v30 count:1];
      v22 = resourceURL;
      v10 = [v8 contentsOfDirectoryAtURL:resourceURL includingPropertiesForKeys:v9 options:1 error:0];

      v11 = objc_alloc_init(NSMutableArray);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v25 + 1) + 8 * i);
            pathExtension = [v17 pathExtension];
            v19 = [pathExtension hasPrefix:@"mom"];

            if (v19)
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v14);
      }

      bundleForManagedObjectModel = v23;
      managedObjectModelName = v24;
      v6 = 0;
    }

    v20 = [NSURL fileURLWithPath:v6];
    v21 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v20];
    [(IMCoreDataSource *)self setManagedObjectModel:v21];
  }
}

- (void)loadPersistentStoreCoordinator
{
  persistentStoreCoordinator = [(IMCoreDataSource *)self persistentStoreCoordinator];

  if (!persistentStoreCoordinator)
  {
    v4 = [NSPersistentStoreCoordinator alloc];
    managedObjectModel = [(IMCoreDataSource *)self managedObjectModel];
    v6 = [v4 initWithManagedObjectModel:managedObjectModel];

    [(IMCoreDataSource *)self setPersistentStoreCoordinator:v6];
  }
}

- (void)_loadPersistentStoreAndRetryIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v44[0] = NSMigratePersistentStoresAutomaticallyOption;
  v44[1] = NSInferMappingModelAutomaticallyOption;
  v45[0] = &__kCFBooleanFalse;
  v45[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  persistentStoreURL = [(IMCoreDataSource *)self persistentStoreURL];
  v7 = NSSQLiteStoreType;
  persistentStoreCoordinator = [(IMCoreDataSource *)self persistentStoreCoordinator];
  v35 = 0;
  v31 = persistentStoreURL;
  v32 = v7;
  v9 = [persistentStoreCoordinator addPersistentStoreWithType:v7 configuration:0 URL:persistentStoreURL options:v5 error:&v35];
  v10 = v35;

  if (v9)
  {
    v11 = v9;
    v12 = v5;
    v13 = v10;
LABEL_7:
    [(IMCoreDataSource *)self setPersistentStore:v11];
    persistentStoreInitializedHandler = [(IMCoreDataSource *)self persistentStoreInitializedHandler];
    v21 = persistentStoreInitializedHandler;
    if (persistentStoreInitializedHandler)
    {
      (*(persistentStoreInitializedHandler + 16))(persistentStoreInitializedHandler);
    }

    v16 = v31;
    v17 = v32;
    if (!v9)
    {
      migrationHandler = [(IMCoreDataSource *)self migrationHandler];
      v23 = migrationHandler;
      if (migrationHandler)
      {
        (*(migrationHandler + 16))(migrationHandler);
      }
    }

    [(IMCoreDataSource *)self setPersistentStoreInitializedHandler:0];
    [(IMCoreDataSource *)self setMigrationHandler:0];

    goto LABEL_14;
  }

  v30 = neededCopy;
  if ([v10 code] == &loc_20BD4 || objc_msgSend(v10, "code") == &loc_20B84)
  {
    v42[0] = NSMigratePersistentStoresAutomaticallyOption;
    v42[1] = NSInferMappingModelAutomaticallyOption;
    v43[0] = &__kCFBooleanTrue;
    v43[1] = &__kCFBooleanTrue;
    v14 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

    persistentStoreCoordinator2 = [(IMCoreDataSource *)self persistentStoreCoordinator];
    v34 = v10;
    v16 = v31;
    v17 = v32;
    v18 = v14;
    v11 = [persistentStoreCoordinator2 addPersistentStoreWithType:v32 configuration:0 URL:v31 options:v14 error:&v34];
    v19 = v34;

    if (v11)
    {
      [(IMCoreDataSource *)self setPersistentStore:v11];
      v12 = v18;
      v13 = v19;
      goto LABEL_7;
    }

    v10 = v19;
    v12 = v18;
  }

  else
  {
    v12 = v5;
    v16 = v31;
    v17 = v32;
  }

  v24 = BCIMLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v37 = "[IMCoreDataSource _loadPersistentStoreAndRetryIfNeeded:]";
    v38 = 2080;
    v39 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Database/BCCoreDataSource.m";
    v40 = 1024;
    v41 = 250;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
  }

  v25 = BCIMLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v37 = v16;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "@Failed to add persistentStore {%@} error {%@}", buf, 0x16u);
  }

  if (v30)
  {
    persistentStoreCoordinator3 = [(IMCoreDataSource *)self persistentStoreCoordinator];
    v33 = v10;
    v27 = [persistentStoreCoordinator3 bkspi_destroyPersistentStoreAtURL:v16 withType:v17 error:&v33];
    v13 = v33;

    if (v27)
    {
      [(IMCoreDataSource *)self _loadPersistentStoreAndRetryIfNeeded:0];
    }

    else
    {
      v28 = BCIMLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v37 = "[IMCoreDataSource _loadPersistentStoreAndRetryIfNeeded:]";
        v38 = 2080;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Database/BCCoreDataSource.m";
        v40 = 1024;
        v41 = 260;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v29 = BCIMLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v37 = v16;
        v38 = 2112;
        v39 = v13;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "@Failed to destroy persistent store at URL {%@} error {%@}", buf, 0x16u);
      }

      [(IMCoreDataSource *)self setPersistentStoreInitializedHandler:0];
      [(IMCoreDataSource *)self setMigrationHandler:0];
    }
  }

  else
  {
    [(IMCoreDataSource *)self setPersistentStoreInitializedHandler:0];
    [(IMCoreDataSource *)self setMigrationHandler:0];
    v13 = v10;
  }

LABEL_14:
}

- (id)copyMaxSortValue:(id)value forEntityName:(id)name
{
  nameCopy = name;
  valueCopy = value;
  v7 = [NSPredicate predicateWithValue:1];
  v8 = [valueCopy entity:nameCopy withPredicate:v7 sortBy:@"sortKey" ascending:0 fetchLimit:1];

  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    v10 = [v9 valueForKey:@"sortKey"];
  }

  else
  {
    v10 = [[NSNumber alloc] initWithLongLong:0];
  }

  return v10;
}

- (id)copyNextSortValue:(id)value forKey:(id)key forEntityName:(id)name
{
  valueCopy = value;
  keyCopy = key;
  nameCopy = name;
  persistentStoreCoordinator = [(IMCoreDataSource *)self persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  lastObject = [persistentStores lastObject];

  if (lastObject)
  {
    v14 = [(IMCoreDataSource *)self metadataObjectForKey:keyCopy];
    if (!v14)
    {
      v15 = [(IMCoreDataSource *)self copyMaxSortValue:valueCopy forEntityName:nameCopy];
      v16 = [NSNumber alloc];
      longLongValue = [v15 longLongValue];
      v14 = [v16 initWithLongLong:&longLongValue[kIMCoreDataSourceSortOrderInitialGap]];
    }

    v18 = [NSNumber alloc];
    longLongValue2 = [v14 longLongValue];
    v20 = [v18 initWithLongLong:&longLongValue2[kIMCoreDataSourceSortOrderInitialGap]];
    [(IMCoreDataSource *)self setMetadataObject:v20 forKey:keyCopy];
  }

  else
  {
    v20 = [(IMCoreDataSource *)self copyMaxSortValue:valueCopy forEntityName:nameCopy];
    v21 = [NSNumber alloc];
    longLongValue3 = [v20 longLongValue];
    v14 = [v21 initWithLongLong:&longLongValue3[kIMCoreDataSourceSortOrderInitialGap]];
  }

  return v14;
}

- (void)setMetadataObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  persistentStore = [(IMCoreDataSource *)selfCopy persistentStore];
  if (persistentStore)
  {
    persistentStoreCoordinator = [(IMCoreDataSource *)selfCopy persistentStoreCoordinator];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_3D1E4;
    v11[3] = &unk_2C89F8;
    v11[4] = selfCopy;
    v12 = objectCopy;
    v13 = keyCopy;
    [persistentStoreCoordinator performBlockAndWait:v11];
  }

  objc_sync_exit(selfCopy);
}

- (id)metadataObjectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_3D3A0;
  v16 = sub_3D3B0;
  v17 = 0;
  persistentStore = [(IMCoreDataSource *)self persistentStore];
  if (persistentStore)
  {
    persistentStoreCoordinator = [(IMCoreDataSource *)self persistentStoreCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_3D3B8;
    v9[3] = &unk_2C95A0;
    v9[4] = self;
    v11 = &v12;
    v10 = keyCopy;
    [persistentStoreCoordinator performBlockAndWait:v9];
  }

  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)cacheMetadataDictionary
{
  metadataDictionary = [(IMCoreDataSource *)self metadataDictionary];

  if (!metadataDictionary)
  {
    persistentStore = [(IMCoreDataSource *)self persistentStore];
    persistentStoreCoordinator = [(IMCoreDataSource *)self persistentStoreCoordinator];
    v5 = [persistentStoreCoordinator metadataForPersistentStore:persistentStore];

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
    [(IMCoreDataSource *)self setMetadataDictionary:v8];

    [(IMCoreDataSource *)self setMetadataDictionaryDirty:0];
  }
}

- (id)generationValue:(id)value
{
  v3 = [(IMCoreDataSource *)self metadataObjectForKey:value];
  if (!v3)
  {
    v3 = [[NSNumber alloc] initWithUnsignedLongLong:0];
  }

  return v3;
}

- (void)incrementGeneration:(id)generation
{
  generationCopy = generation;
  v6 = [(IMCoreDataSource *)self generationValue:generationCopy];
  v5 = [[NSNumber alloc] initWithUnsignedLongLong:{objc_msgSend(v6, "unsignedLongLongValue") + 1}];
  [(IMCoreDataSource *)self setGenerationValue:v5 forKey:generationCopy];
}

@end