@interface AEEpubInfoSource
+ (id)sharedInstance;
- (AEEpubInfoSource)initWithIdentifier:(id)a3;
- (NSPersistentContainer)persistentContainer;
- (id)bookInfoForDatabaseKey:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5;
- (id)bookInfoForURL:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5 needsCoordination:(BOOL)a6 updateDate:(id)a7;
- (id)databaseKeyFromLibraryManagerInfo:(id)a3 forAssetAtURL:(id)a4;
- (id)existingBookInfoForDatabaseKey:(id)a3 fromManagedObjectContext:(id)a4;
- (id)existingBookInfoForURL:(id)a3 fromManagedObjectContext:(id)a4;
- (id)existingBookInfoWithPredicate:(id)a3 fromManagedObjectContext:(id)a4;
- (id)metadataForKey:(id)a3 forURL:(id)a4 needsCoordination:(BOOL)a5;
- (id)newManagedObjectContextWithPrivateQueueConcurrency;
- (id)persistentStoreDirectory;
- (id)persistentStoreFileName;
- (int)parseBook:(id)a3;
- (void)_mocDidSaveNotification:(id)a3;
- (void)_resetBookInfo:(id)a3;
- (void)dealloc;
- (void)performBackgroundTaskAndWait:(id)a3;
- (void)performMainQueueTaskWithNewContext:(id)a3;
- (void)performMainQueueTaskWithNewContextAndWait:(id)a3;
- (void)readableBookInfoForDatabaseKey_sync:(id)a3 block:(id)a4;
- (void)recreatePersistentStoreDirectory;
- (void)resetBookForDatabaseKey:(id)a3;
- (void)resetBookForURL:(id)a3;
- (void)setMetadata:(id)a3 forKey:(id)a4 forURL:(id)a5;
- (void)setPropertiesOfBook:(id)a3 withPlistEntry:(id)a4;
- (void)updateCachedURLFrom:(id)a3 to:(id)a4;
- (void)writableBookInfoForDatabaseKey_sync:(id)a3 block:(id)a4;
@end

@implementation AEEpubInfoSource

+ (id)sharedInstance
{
  pthread_once(&stru_22BFF8, sub_DA904);
  v2 = qword_22D0F8;

  return v2;
}

- (AEEpubInfoSource)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AEEpubInfoSource *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.iBooks.AEEpubInfoSource.metadata", v9);
    metadataQueue = v5->_metadataQueue;
    v5->_metadataQueue = v10;

    v12 = [(AEEpubInfoSource *)v5 persistentContainer];
    v13 = [v12 newBackgroundContext];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_D7460;
    v19[3] = &unk_1E2BD0;
    v14 = v13;
    v20 = v14;
    [(AEBookManagedObjectContext *)v14 performBlockAndWait:v19];
    privateMoc = v5->_privateMoc;
    v5->_privateMoc = v14;
    v16 = v14;

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v5 selector:"_mocDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:0];
  }

  return v5;
}

- (void)dealloc
{
  privateMoc = self->_privateMoc;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_D7544;
  v5[3] = &unk_1E2BD0;
  v5[4] = self;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v5];
  v4.receiver = self;
  v4.super_class = AEEpubInfoSource;
  [(AEEpubInfoSource *)&v4 dealloc];
}

- (void)_mocDidSaveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  privateMoc = self->_privateMoc;
  if (privateMoc != v5)
  {
    v7 = [(AEBookManagedObjectContext *)privateMoc persistentStoreCoordinator];
    v8 = [(AEBookManagedObjectContext *)v5 persistentStoreCoordinator];

    if (v7 == v8)
    {
      v9 = self->_privateMoc;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_D7644;
      v10[3] = &unk_1E3F50;
      v10[4] = self;
      v11 = v4;
      [(AEBookManagedObjectContext *)v9 performBlockAndWait:v10];
    }
  }
}

- (id)persistentStoreDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = [v3 stringByAppendingPathComponent:@"AEEpubInfoSource"];

  return v4;
}

- (void)recreatePersistentStoreDirectory
{
  v5 = [(AEEpubInfoSource *)self persistentStoreDirectory];
  v2 = [NSURL fileURLWithPath:v5 isDirectory:1];
  v3 = +[NSFileManager defaultManager];
  v4 = [v2 relativePath];
  [v3 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)persistentStoreFileName
{
  persistentStoreFileName = self->_persistentStoreFileName;
  if (!persistentStoreFileName)
  {
    identifier = self->_identifier;
    v5 = +[UIDevice currentDevice];
    v6 = [v5 systemVersion];
    v7 = [NSString stringWithFormat:@"%@-%@-%@.sqlite", identifier, @"v20250715", v6];
    v8 = self->_persistentStoreFileName;
    self->_persistentStoreFileName = v7;

    persistentStoreFileName = self->_persistentStoreFileName;
  }

  return persistentStoreFileName;
}

- (NSPersistentContainer)persistentContainer
{
  v3 = [(AEEpubInfoSource *)self persistentStoreDirectory];
  v4 = [(AEEpubInfoSource *)self persistentStoreFileName];
  [(AEEpubInfoSource *)self recreatePersistentStoreDirectory];
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_persistentContainer)
  {
    v6 = AEBundle();
    v7 = [v6 URLForResource:@"AEBookInfo" withExtension:@"momd"];
    v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v7];
    v9 = [NSPersistentContainer persistentContainerWithName:@"AEBookInfo" managedObjectModel:v8];
    v23 = v8;
    persistentContainer = v5->_persistentContainer;
    v5->_persistentContainer = v9;

    v11 = [v3 stringByAppendingPathComponent:v4];
    v12 = [NSURL fileURLWithPath:v11 isDirectory:0];
    v13 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v12];
    [v13 setOption:NSFileProtectionNone forKey:NSPersistentStoreFileProtectionKey];
    v32 = v13;
    v14 = [NSArray arrayWithObjects:&v32 count:1];
    [(NSPersistentContainer *)v5->_persistentContainer setPersistentStoreDescriptions:v14];
    v22 = v6;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v15 = [(NSPersistentContainer *)v5->_persistentContainer persistentStoreCoordinator];
    v16 = v5->_persistentContainer;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_D7B70;
    v25[3] = &unk_1E54E8;
    v17 = v15;
    v26 = v17;
    v27 = &v28;
    [(NSPersistentContainer *)v16 loadPersistentStoresWithCompletionHandler:v25];
    if (*(v29 + 24) == 1)
    {
      v18 = v5->_persistentContainer;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_D7DF4;
      v24[3] = &unk_1E5510;
      v24[4] = &v28;
      [(NSPersistentContainer *)v18 loadPersistentStoresWithCompletionHandler:v24, v22, v8];
    }

    _Block_object_dispose(&v28, 8);
  }

  objc_sync_exit(v5);

  v19 = v5->_persistentContainer;
  v20 = v19;

  return v19;
}

- (id)newManagedObjectContextWithPrivateQueueConcurrency
{
  v2 = [(AEEpubInfoSource *)self persistentContainer];
  v3 = [v2 newBackgroundContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_D800C;
  v6[3] = &unk_1E2BD0;
  v4 = v3;
  v7 = v4;
  [v4 performBlockAndWait:v6];

  return v4;
}

- (void)performBackgroundTaskAndWait:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_D810C;
    v6[3] = &unk_1E3258;
    v7 = [(AEEpubInfoSource *)self newManagedObjectContextWithPrivateQueueConcurrency];
    v8 = v4;
    v5 = v7;
    [v5 performBlockAndWait:v6];
  }
}

- (void)performMainQueueTaskWithNewContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AEEpubInfoSource *)self persistentContainer];
    v6 = [v5 persistentStoreCoordinator];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_D8220;
    v9[3] = &unk_1E5538;
    v10 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
    v11 = v6;
    v12 = v4;
    v7 = v6;
    v8 = v10;
    [v8 performBlock:v9];
  }
}

- (void)performMainQueueTaskWithNewContextAndWait:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AEEpubInfoSource *)self persistentContainer];
    v6 = [v5 persistentStoreCoordinator];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_D8388;
    v9[3] = &unk_1E5538;
    v10 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
    v11 = v6;
    v12 = v4;
    v7 = v6;
    v8 = v10;
    [v8 performBlockAndWait:v9];
  }
}

- (id)databaseKeyFromLibraryManagerInfo:(id)a3 forAssetAtURL:(id)a4
{
  v5 = a3;
  v6 = [a4 path];
  v7 = [IMLibraryPlist assetIDFromPlistEntry:v5 forAssetAtPath:v6];

  return v7;
}

- (id)existingBookInfoWithPredicate:(id)a3 fromManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_D85D0;
  v19 = sub_D85E0;
  v20 = 0;
  if (v6 && (privateMoc = self->_privateMoc, v12[0] = _NSConcreteStackBlock, v12[1] = 3221225472, v12[2] = sub_D85E8, v12[3] = &unk_1E5560, v12[4] = self, v13 = v6, v14 = &v15, [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v12], v13, (v9 = v16[5]) != 0))
  {
    v10 = [v7 existingObjectWithID:v9 error:0];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)existingBookInfoForURL:(id)a3 fromManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [a3 path];
  v8 = [NSPredicate predicateWithFormat:@"bookBundlePath ==[n] %@", v7];

  v9 = [(AEEpubInfoSource *)self existingBookInfoWithPredicate:v8 fromManagedObjectContext:v6];

  return v9;
}

- (void)readableBookInfoForDatabaseKey_sync:(id)a3 block:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D87D8;
  v8[3] = &unk_1E5588;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(AEEpubInfoSource *)self performBackgroundTaskAndWait:v8];
}

- (void)writableBookInfoForDatabaseKey_sync:(id)a3 block:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D8964;
  v8[3] = &unk_1E5588;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(AEEpubInfoSource *)self performBackgroundTaskAndWait:v8];
}

- (id)existingBookInfoForDatabaseKey:(id)a3 fromManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [NSPredicate predicateWithFormat:@"databaseKey ==[n] %@", a3];
  v8 = [(AEEpubInfoSource *)self existingBookInfoWithPredicate:v7 fromManagedObjectContext:v6];

  return v8;
}

- (void)setPropertiesOfBook:(id)a3 withPlistEntry:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v15 = [IMLibraryPlist titleFromPlistEntry:v5];
    v7 = [IMLibraryPlist storeIdFromPlistEntry:v5];
    [v6 setStoreId:v7];

    v8 = [IMLibraryPlist uniqueIdFromPlistEntry:v5];
    [v6 setBookUniqueId:v8];

    v9 = [IMLibraryPlist temporaryItemIdentifierFromPlistEntry:v5];
    [v6 setTemporaryItemIdentifier:v9];

    v10 = [IMLibraryPlist authorFromPlistEntry:v5];
    [v6 setBookAuthor:v10];

    v11 = [IMLibraryPlist sortAuthorFromPlistEntry:v5];
    [v6 setSortAuthor:v11];

    [v6 setBookTitle:v15];
    [v6 setSortTitle:v15];
    v12 = [IMLibraryPlist genreFromPlistEntry:v5];
    [v6 setGenre:v12];

    v13 = [IMLibraryPlist isSampleFromPlistEntry:v5];
    [v6 setSampleContent:v13];

    v14 = [IMLibraryPlist bookEpubIdFromPlistEntry:v5];

    [v6 setBookEpubId:v14];
  }
}

- (id)bookInfoForDatabaseKey:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_D85D0;
  v26 = sub_D85E0;
  v27 = 0;
  privateMoc = self->_privateMoc;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_D8E34;
  v17 = &unk_1E55B0;
  v18 = self;
  v10 = v7;
  v19 = v10;
  v20 = &v22;
  v21 = privateMoc == v8;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:&v14];
  v11 = v23[5];
  if (v11)
  {
    v12 = [(AEBookManagedObjectContext *)v8 existingObjectWithID:v11 error:0, v14, v15, v16, v17, v18];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v12;
}

- (id)bookInfoForURL:(id)a3 fromManagedObjectContext:(id)a4 error:(id *)a5 needsCoordination:(BOOL)a6 updateDate:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_D85D0;
  v53 = sub_D85E0;
  v54 = 0;
  privateMoc = self->_privateMoc;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_D85D0;
  v47 = sub_D85E0;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v14 = v11;
  v15 = privateMoc == v11;
  if (v15)
  {
    v16 = privateMoc;
  }

  else
  {
    dispatch_suspend(self->_metadataQueue);
    v16 = self->_privateMoc;
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_D9260;
  v30[3] = &unk_1E55D8;
  v30[4] = self;
  v17 = v10;
  v37 = a6;
  v31 = v17;
  v33 = &v43;
  v34 = &v39;
  v36 = a5;
  v18 = v12;
  v32 = v18;
  v35 = &v49;
  v38 = v15;
  [(AEBookManagedObjectContext *)v16 performBlockAndWait:v30];
  if (privateMoc != v14)
  {
    dispatch_resume(self->_metadataQueue);
  }

  v19 = v50[5];
  if (v19)
  {
    v20 = [(AEBookManagedObjectContext *)v14 existingObjectWithID:v19 error:0];
  }

  else
  {
    v20 = 0;
  }

  if ((v40[3] & 1) == 0 && [v20 hasDuplicatedDocument])
  {
    metadataQueue = self->_metadataQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_D9778;
    block[3] = &unk_1E2BD0;
    v29 = v20;
    dispatch_async(metadataQueue, block);
  }

  if (a5)
  {
    v22 = v44[5];
    if (v22)
    {
      objc_storeStrong(a5, v22);
    }
  }

  v23 = v32;
  v24 = v20;

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);

  return v24;
}

- (int)parseBook:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v6 = [v5 isTemporaryID];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v4 managedObjectContext];
  if (v7 != self->_privateMoc)
  {
    v8 = [v4 managedObjectContext];
    v9 = [v8 hasChanges];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = [v4 managedObjectContext];
    [(AEBookManagedObjectContext *)v7 save:0];
  }

LABEL_6:
  privateMoc = self->_privateMoc;
  v11 = [v4 managedObjectContext];

  v12 = [v4 managedObjectContext];
  v13 = self->_privateMoc;

  v14 = [v4 objectID];
  v15 = v14;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (v14)
  {
    v16 = privateMoc == v11;
    v17 = self->_privateMoc;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_D99E0;
    v20[3] = &unk_1E5600;
    v20[4] = self;
    v21 = v14;
    v22 = &v25;
    v23 = v12 != v13;
    v24 = v16;
    [(AEBookManagedObjectContext *)v17 performBlockAndWait:v20];

    v18 = *(v26 + 6);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v25, 8);

  return v18;
}

- (void)updateCachedURLFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  privateMoc = self->_privateMoc;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_D9BA0;
  v11[3] = &unk_1E4240;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v11];
}

- (void)resetBookForURL:(id)a3
{
  v4 = a3;
  privateMoc = self->_privateMoc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D9D08;
  v7[3] = &unk_1E3F50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v7];
}

- (void)resetBookForDatabaseKey:(id)a3
{
  v4 = a3;
  privateMoc = self->_privateMoc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D9E08;
  v7[3] = &unk_1E3F50;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v7];
}

- (void)_resetBookInfo:(id)a3
{
  v4 = a3;
  privateMoc = self->_privateMoc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D9F08;
  v7[3] = &unk_1E3F50;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v7];
}

- (id)metadataForKey:(id)a3 forURL:(id)a4 needsCoordination:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_D85D0;
  v40 = sub_D85E0;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  if (![v8 isEqualToString:AEHelperStringMetadataAssetIDKey])
  {
    if (![v8 isEqualToString:AEHelperStringMetadataPageProgressionKey])
    {
      goto LABEL_9;
    }

    v12 = +[AEAssetEngine libraryMgr];
    v11 = [v12 pageProgressionDirectionForAssetAtURLOnMainThread:v9];

    if ([v11 length])
    {
      goto LABEL_6;
    }

LABEL_7:

    v15 = +[AEAssetEngine libraryMgr];
    v16 = [v15 metadataForAssetAtURL:v9 needsCoordination:v5];

    metadataQueue = self->_metadataQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DA2D0;
    block[3] = &unk_1E5628;
    block[4] = self;
    v27 = v8;
    v28 = v16;
    v29 = v9;
    v30 = &v36;
    v31 = &v32;
    v11 = v16;
    dispatch_sync(metadataQueue, block);

    goto LABEL_8;
  }

  v10 = +[AEAssetEngine libraryMgr];
  v11 = [v10 assetIDForAssetAtURLOnMainThread:v9];

  if (![v11 length])
  {
    goto LABEL_7;
  }

LABEL_6:
  v13 = [v11 copy];
  v14 = v37[5];
  v37[5] = v13;

  *(v33 + 24) = 0;
LABEL_8:

LABEL_9:
  if (*(v33 + 24) == 1)
  {
    v18 = objc_autoreleasePoolPush();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_DA48C;
    v21[3] = &unk_1E5650;
    v21[4] = self;
    v22 = v9;
    v25 = v5;
    v23 = v8;
    v24 = &v36;
    [(AEEpubInfoSource *)self performBackgroundTaskAndWait:v21];

    objc_autoreleasePoolPop(v18);
  }

  v19 = v37[5];
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v19;
}

- (void)setMetadata:(id)a3 forKey:(id)a4 forURL:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([a4 isEqualToString:AEHelperStringMetadataTitleKey])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_DA80C;
    v10[3] = &unk_1E5678;
    v10[4] = self;
    v11 = v9;
    v12 = v8;
    [(AEEpubInfoSource *)self performBackgroundTaskAndWait:v10];
  }
}

@end