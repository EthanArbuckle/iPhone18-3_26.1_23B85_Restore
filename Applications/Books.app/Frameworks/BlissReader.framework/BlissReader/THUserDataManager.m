@interface THUserDataManager
+ (id)managedObjectModel;
- (THUserDataManager)initWithBookDescription:(id)a3;
- (id)metadataObjectForKey:(id)a3;
- (id)newManagedObjectContext;
- (void)dealloc;
- (void)logError:(id)a3;
- (void)p_cacheMetadataDictionary;
- (void)save:(id)a3;
- (void)setMetadataObject:(id)a3 forKey:(id)a4;
@end

@implementation THUserDataManager

+ (id)managedObjectModel
{
  v2 = [[NSBundle bundleForClass:?]ofType:"pathForResource:ofType:", @"UserDataManager", @"mom"];
  if (!v2)
  {
    [NSException raise:@"[THUserDataManager managedObjectModel]" format:@"[[NSBundle bundleForClass:[THUserDataManager class]] pathForResource:@UserDataManager ofType:@mom] failed"];
  }

  v3 = [[NSManagedObjectModel alloc] initWithContentsOfURL:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", v2)}];
  if (!v3)
  {
    [NSException raise:@"[THUserDataManager managedObjectModel]" format:@"NSManagedObjectModel failed"];
  }

  return v3;
}

- (void)logError:(id)a3
{
  if (a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (THUserDataManager)initWithBookDescription:(id)a3
{
  v9.receiver = self;
  v9.super_class = THUserDataManager;
  v4 = [(THUserDataManager *)&v9 init];
  if (v4)
  {
    +[THApplicationDelegate ensureContextDirectoryExists:](THApplicationDelegate, "ensureContextDirectoryExists:", [a3 asset]);
    v4->mPSC = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:{objc_msgSend(objc_opt_class(), "managedObjectModel")}];
    v5 = [a3 userDataPath];
    mPSC = v4->mPSC;
    if (!mPSC)
    {
      [NSException raise:@"[THUserDataManager init]" format:@"NSPersistentStoreCoordinator failed"];
      mPSC = v4->mPSC;
    }

    v8 = 0;
    if (!-[NSPersistentStoreCoordinator addPersistentStoreWithType:configuration:URL:options:error:](mPSC, "addPersistentStoreWithType:configuration:URL:options:error:", NSSQLiteStoreType, 0, +[NSURL fileURLWithPath:isDirectory:](NSURL, "fileURLWithPath:isDirectory:", v5, 0), [objc_opt_class() persistentStoreCoordinatorOptions], &v8))
    {
      if (v8)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v5, 0];
      v8 = 0;
      if (!-[NSPersistentStoreCoordinator addPersistentStoreWithType:configuration:URL:options:error:](v4->mPSC, "addPersistentStoreWithType:configuration:URL:options:error:", NSSQLiteStoreType, 0, +[NSURL fileURLWithPath:isDirectory:](NSURL, "fileURLWithPath:isDirectory:", v5, 0), [objc_opt_class() persistentStoreCoordinatorOptions], &v8))
      {
        [(THUserDataManager *)v4 logError:v8];
        +[NSException raise:format:](NSException, "raise:format:", @"[THUserDataManager init]", @"Error adding Store to PSC: %@", [v8 localizedDescription]);
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  self->mPersistentStore = 0;

  self->mPSC = 0;
  self->mMetadataDictionary = 0;
  v3.receiver = self;
  v3.super_class = THUserDataManager;
  [(THUserDataManager *)&v3 dealloc];
}

- (id)newManagedObjectContext
{
  if (!self->mPSC)
  {
    return 0;
  }

  v3 = [[NSManagedObjectContext alloc] initWithConcurrencyType:0];
  [v3 setPersistentStoreCoordinator:self->mPSC];
  [v3 setUndoManager:0];
  return v3;
}

- (void)save:(id)a3
{
  v9 = 0;
  p_mPSC = &self->mPSC;
  mPSC = self->mPSC;
  v6 = p_mPSC[1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_92464;
  v8[3] = &unk_45AE58;
  v8[4] = self;
  v8[5] = v6;
  [(NSPersistentStoreCoordinator *)mPSC performBlockAndWait:v8];
  if (([a3 save:&v9] & 1) == 0)
  {
    [(THUserDataManager *)self logError:v9];
  }
}

- (void)p_cacheMetadataDictionary
{
  if (!self->mMetadataDictionary)
  {
    v3 = [(NSDictionary *)[(NSPersistentStoreCoordinator *)self->mPSC metadataForPersistentStore:self->mPersistentStore] objectForKey:@"THUserData-Metadata"];
    if (v3)
    {
      v4 = [v3 mutableCopy];
    }

    else
    {
      v4 = objc_alloc_init(NSMutableDictionary);
    }

    self->mMetadataDictionary = v4;
    self->mMetadataDictionaryDirty = 0;
  }
}

- (void)setMetadataObject:(id)a3 forKey:(id)a4
{
  if (self->mPersistentStore)
  {
    mPSC = self->mPSC;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_925E8;
    v5[3] = &unk_45AF70;
    v5[4] = self;
    v5[5] = a3;
    v5[6] = a4;
    [(NSPersistentStoreCoordinator *)mPSC performBlockAndWait:v5];
  }
}

- (id)metadataObjectForKey:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_92740;
  v12 = sub_92750;
  v13 = 0;
  if (self->mPersistentStore)
  {
    mPSC = self->mPSC;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_9275C;
    v7[3] = &unk_45C220;
    v7[5] = a3;
    v7[6] = &v8;
    v7[4] = self;
    [(NSPersistentStoreCoordinator *)mPSC performBlockAndWait:v7];
    v4 = v9[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  return v5;
}

@end