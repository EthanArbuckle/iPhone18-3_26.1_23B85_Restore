@interface IMCoreDataSource
+ (id)persistentStoreName;
- (IMCoreDataSource)initWithPersistentStoreURL:(id)a3;
- (id)bundleForManagedObjectModel;
- (id)copyMaxSortValue:(id)a3 forEntityName:(id)a4;
- (id)copyNextSortValue:(id)a3 forKey:(id)a4 forEntityName:(id)a5;
- (id)generationValue:(id)a3;
- (id)metadataObjectForKey:(id)a3;
- (id)newManagedObjectContext;
- (id)newManagedObjectContextWithClass:(Class)a3;
- (id)newPrivateQueueManagedObjectContextWithClass:(Class)a3;
- (void)_loadPersistentStoreAndRetryIfNeeded:(BOOL)a3;
- (void)cacheMetadataDictionary;
- (void)incrementGeneration:(id)a3;
- (void)loadCoreData;
- (void)loadCoreDataPersistentStoreInitializedHandler:(id)a3 migrationHandler:(id)a4;
- (void)loadManagedObjectModel;
- (void)loadPersistentStoreCoordinator;
- (void)saveManagedObjectContext:(id)a3;
- (void)saveMetaData;
- (void)setMetadataObject:(id)a3 forKey:(id)a4;
@end

@implementation IMCoreDataSource

- (IMCoreDataSource)initWithPersistentStoreURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMCoreDataSource;
  v6 = [(IMCoreDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentStoreURL, a3);
  }

  return v7;
}

+ (id)persistentStoreName
{
  v2 = objc_opt_class();
  v3 = [v2 managedObjectModelName];
  v4 = [v2 persistentStoreVersion];
  v5 = v3;
  if ([v4 length])
  {
    v5 = [v3 stringByAppendingFormat:@"-%@", v4];
  }

  v6 = [v2 persistentStoreNameSeed];
  if ([v6 length])
  {
    v7 = [v5 stringByAppendingFormat:@"-%@", v6];

    v5 = v7;
  }

  v8 = [v2 persistentStoreExtension];
  if (v8)
  {
    v9 = [v5 stringByAppendingPathExtension:v8];

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

- (void)loadCoreDataPersistentStoreInitializedHandler:(id)a3 migrationHandler:(id)a4
{
  v6 = a4;
  [(IMCoreDataSource *)self setPersistentStoreInitializedHandler:a3];
  [(IMCoreDataSource *)self setMigrationHandler:v6];

  [(IMCoreDataSource *)self loadManagedObjectModel];
  [(IMCoreDataSource *)self loadPersistentStoreCoordinator];

  [(IMCoreDataSource *)self loadPersistentStore];
}

- (id)newManagedObjectContext
{
  v3 = objc_opt_class();

  return [(IMCoreDataSource *)self newManagedObjectContextWithClass:v3];
}

- (id)newPrivateQueueManagedObjectContextWithClass:(Class)a3
{
  v4 = [[a3 alloc] initWithConcurrencyType:1];
  v5 = [(IMCoreDataSource *)self persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:v5];

  [v4 setUndoManager:0];
  [v4 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  return v4;
}

- (id)newManagedObjectContextWithClass:(Class)a3
{
  v4 = [[a3 alloc] initWithConcurrencyType:0];
  v5 = [(IMCoreDataSource *)self persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:v5];

  [v4 setUndoManager:0];
  [v4 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  return v4;
}

- (void)saveMetaData
{
  if ([(IMCoreDataSource *)self metadataDictionaryDirty])
  {
    v3 = [(IMCoreDataSource *)self metadataDictionary];

    if (v3)
    {
      v11[0] = NSMigratePersistentStoresAutomaticallyOption;
      v11[1] = NSInferMappingModelAutomaticallyOption;
      v12[0] = &__kCFBooleanTrue;
      v12[1] = &__kCFBooleanTrue;
      v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
      v5 = [(IMCoreDataSource *)self persistentStoreCoordinator];
      v6 = [(IMCoreDataSource *)self persistentStore];
      v7 = [v5 metadataForPersistentStore:v6];
      v8 = [v7 mutableCopy];

      v9 = [(IMCoreDataSource *)self metadataDictionary];
      v10 = [v9 copy];
      [v8 setObject:v10 forKey:@"BKDatabase-Metadata"];

      [NSPersistentStoreCoordinator setMetadata:v8 forPersistentStoreOfType:NSSQLiteStoreType URL:self->_persistentStoreURL options:v4 error:0];
      [(IMCoreDataSource *)self setMetadataDictionaryDirty:0];
    }
  }
}

- (void)saveManagedObjectContext:(id)a3
{
  v4 = a3;
  [(IMCoreDataSource *)self saveMetaData];
  if ([v4 hasChanges])
  {
    v9 = 0;
    v5 = [v4 save:&v9];
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
  v3 = [(IMCoreDataSource *)self managedObjectModel];

  if (!v3)
  {
    v4 = [objc_opt_class() managedObjectModelName];
    v5 = [(IMCoreDataSource *)self bundleForManagedObjectModel];
    v6 = [v5 pathForResource:v4 ofType:@"momd"];
    if (!v6)
    {
      v23 = v5;
      v24 = v4;
      v7 = [v5 resourceURL];
      v8 = +[NSFileManager defaultManager];
      v30 = NSURLNameKey;
      v9 = [NSArray arrayWithObjects:&v30 count:1];
      v22 = v7;
      v10 = [v8 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v9 options:1 error:0];

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
            v18 = [v17 pathExtension];
            v19 = [v18 hasPrefix:@"mom"];

            if (v19)
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v14);
      }

      v5 = v23;
      v4 = v24;
      v6 = 0;
    }

    v20 = [NSURL fileURLWithPath:v6];
    v21 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v20];
    [(IMCoreDataSource *)self setManagedObjectModel:v21];
  }
}

- (void)loadPersistentStoreCoordinator
{
  v3 = [(IMCoreDataSource *)self persistentStoreCoordinator];

  if (!v3)
  {
    v4 = [NSPersistentStoreCoordinator alloc];
    v5 = [(IMCoreDataSource *)self managedObjectModel];
    v6 = [v4 initWithManagedObjectModel:v5];

    [(IMCoreDataSource *)self setPersistentStoreCoordinator:v6];
  }
}

- (void)_loadPersistentStoreAndRetryIfNeeded:(BOOL)a3
{
  v3 = a3;
  v44[0] = NSMigratePersistentStoresAutomaticallyOption;
  v44[1] = NSInferMappingModelAutomaticallyOption;
  v45[0] = &__kCFBooleanFalse;
  v45[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  v6 = [(IMCoreDataSource *)self persistentStoreURL];
  v7 = NSSQLiteStoreType;
  v8 = [(IMCoreDataSource *)self persistentStoreCoordinator];
  v35 = 0;
  v31 = v6;
  v32 = v7;
  v9 = [v8 addPersistentStoreWithType:v7 configuration:0 URL:v6 options:v5 error:&v35];
  v10 = v35;

  if (v9)
  {
    v11 = v9;
    v12 = v5;
    v13 = v10;
LABEL_7:
    [(IMCoreDataSource *)self setPersistentStore:v11];
    v20 = [(IMCoreDataSource *)self persistentStoreInitializedHandler];
    v21 = v20;
    if (v20)
    {
      (*(v20 + 16))(v20);
    }

    v16 = v31;
    v17 = v32;
    if (!v9)
    {
      v22 = [(IMCoreDataSource *)self migrationHandler];
      v23 = v22;
      if (v22)
      {
        (*(v22 + 16))(v22);
      }
    }

    [(IMCoreDataSource *)self setPersistentStoreInitializedHandler:0];
    [(IMCoreDataSource *)self setMigrationHandler:0];

    goto LABEL_14;
  }

  v30 = v3;
  if ([v10 code] == &loc_20BD4 || objc_msgSend(v10, "code") == &loc_20B84)
  {
    v42[0] = NSMigratePersistentStoresAutomaticallyOption;
    v42[1] = NSInferMappingModelAutomaticallyOption;
    v43[0] = &__kCFBooleanTrue;
    v43[1] = &__kCFBooleanTrue;
    v14 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];

    v15 = [(IMCoreDataSource *)self persistentStoreCoordinator];
    v34 = v10;
    v16 = v31;
    v17 = v32;
    v18 = v14;
    v11 = [v15 addPersistentStoreWithType:v32 configuration:0 URL:v31 options:v14 error:&v34];
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
    v26 = [(IMCoreDataSource *)self persistentStoreCoordinator];
    v33 = v10;
    v27 = [v26 bkspi_destroyPersistentStoreAtURL:v16 withType:v17 error:&v33];
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

- (id)copyMaxSortValue:(id)a3 forEntityName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSPredicate predicateWithValue:1];
  v8 = [v6 entity:v5 withPredicate:v7 sortBy:@"sortKey" ascending:0 fetchLimit:1];

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

- (id)copyNextSortValue:(id)a3 forKey:(id)a4 forEntityName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMCoreDataSource *)self persistentStoreCoordinator];
  v12 = [v11 persistentStores];
  v13 = [v12 lastObject];

  if (v13)
  {
    v14 = [(IMCoreDataSource *)self metadataObjectForKey:v9];
    if (!v14)
    {
      v15 = [(IMCoreDataSource *)self copyMaxSortValue:v8 forEntityName:v10];
      v16 = [NSNumber alloc];
      v17 = [v15 longLongValue];
      v14 = [v16 initWithLongLong:&v17[kIMCoreDataSourceSortOrderInitialGap]];
    }

    v18 = [NSNumber alloc];
    v19 = [v14 longLongValue];
    v20 = [v18 initWithLongLong:&v19[kIMCoreDataSourceSortOrderInitialGap]];
    [(IMCoreDataSource *)self setMetadataObject:v20 forKey:v9];
  }

  else
  {
    v20 = [(IMCoreDataSource *)self copyMaxSortValue:v8 forEntityName:v10];
    v21 = [NSNumber alloc];
    v22 = [v20 longLongValue];
    v14 = [v21 initWithLongLong:&v22[kIMCoreDataSourceSortOrderInitialGap]];
  }

  return v14;
}

- (void)setMetadataObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(IMCoreDataSource *)v8 persistentStore];
  if (v9)
  {
    v10 = [(IMCoreDataSource *)v8 persistentStoreCoordinator];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_3D1E4;
    v11[3] = &unk_2C89F8;
    v11[4] = v8;
    v12 = v6;
    v13 = v7;
    [v10 performBlockAndWait:v11];
  }

  objc_sync_exit(v8);
}

- (id)metadataObjectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_3D3A0;
  v16 = sub_3D3B0;
  v17 = 0;
  v5 = [(IMCoreDataSource *)self persistentStore];
  if (v5)
  {
    v6 = [(IMCoreDataSource *)self persistentStoreCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_3D3B8;
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

- (void)cacheMetadataDictionary
{
  v3 = [(IMCoreDataSource *)self metadataDictionary];

  if (!v3)
  {
    v10 = [(IMCoreDataSource *)self persistentStore];
    v4 = [(IMCoreDataSource *)self persistentStoreCoordinator];
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
    [(IMCoreDataSource *)self setMetadataDictionary:v8];

    [(IMCoreDataSource *)self setMetadataDictionaryDirty:0];
  }
}

- (id)generationValue:(id)a3
{
  v3 = [(IMCoreDataSource *)self metadataObjectForKey:a3];
  if (!v3)
  {
    v3 = [[NSNumber alloc] initWithUnsignedLongLong:0];
  }

  return v3;
}

- (void)incrementGeneration:(id)a3
{
  v4 = a3;
  v6 = [(IMCoreDataSource *)self generationValue:v4];
  v5 = [[NSNumber alloc] initWithUnsignedLongLong:{objc_msgSend(v6, "unsignedLongLongValue") + 1}];
  [(IMCoreDataSource *)self setGenerationValue:v5 forKey:v4];
}

@end