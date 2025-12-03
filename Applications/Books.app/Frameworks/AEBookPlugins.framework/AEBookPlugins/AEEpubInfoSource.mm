@interface AEEpubInfoSource
+ (id)sharedInstance;
- (AEEpubInfoSource)initWithIdentifier:(id)identifier;
- (NSPersistentContainer)persistentContainer;
- (id)bookInfoForDatabaseKey:(id)key fromManagedObjectContext:(id)context error:(id *)error;
- (id)bookInfoForURL:(id)l fromManagedObjectContext:(id)context error:(id *)error needsCoordination:(BOOL)coordination updateDate:(id)date;
- (id)databaseKeyFromLibraryManagerInfo:(id)info forAssetAtURL:(id)l;
- (id)existingBookInfoForDatabaseKey:(id)key fromManagedObjectContext:(id)context;
- (id)existingBookInfoForURL:(id)l fromManagedObjectContext:(id)context;
- (id)existingBookInfoWithPredicate:(id)predicate fromManagedObjectContext:(id)context;
- (id)metadataForKey:(id)key forURL:(id)l needsCoordination:(BOOL)coordination;
- (id)newManagedObjectContextWithPrivateQueueConcurrency;
- (id)persistentStoreDirectory;
- (id)persistentStoreFileName;
- (int)parseBook:(id)book;
- (void)_mocDidSaveNotification:(id)notification;
- (void)_resetBookInfo:(id)info;
- (void)dealloc;
- (void)performBackgroundTaskAndWait:(id)wait;
- (void)performMainQueueTaskWithNewContext:(id)context;
- (void)performMainQueueTaskWithNewContextAndWait:(id)wait;
- (void)readableBookInfoForDatabaseKey_sync:(id)key_sync block:(id)block;
- (void)recreatePersistentStoreDirectory;
- (void)resetBookForDatabaseKey:(id)key;
- (void)resetBookForURL:(id)l;
- (void)setMetadata:(id)metadata forKey:(id)key forURL:(id)l;
- (void)setPropertiesOfBook:(id)book withPlistEntry:(id)entry;
- (void)updateCachedURLFrom:(id)from to:(id)to;
- (void)writableBookInfoForDatabaseKey_sync:(id)key_sync block:(id)block;
@end

@implementation AEEpubInfoSource

+ (id)sharedInstance
{
  pthread_once(&stru_22BFF8, sub_DA904);
  v2 = qword_22D0F8;

  return v2;
}

- (AEEpubInfoSource)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(AEEpubInfoSource *)self init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.iBooks.AEEpubInfoSource.metadata", v9);
    metadataQueue = v5->_metadataQueue;
    v5->_metadataQueue = v10;

    persistentContainer = [(AEEpubInfoSource *)v5 persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_D7460;
    v19[3] = &unk_1E2BD0;
    v14 = newBackgroundContext;
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

- (void)_mocDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  privateMoc = self->_privateMoc;
  if (privateMoc != object)
  {
    persistentStoreCoordinator = [(AEBookManagedObjectContext *)privateMoc persistentStoreCoordinator];
    persistentStoreCoordinator2 = [(AEBookManagedObjectContext *)object persistentStoreCoordinator];

    if (persistentStoreCoordinator == persistentStoreCoordinator2)
    {
      v9 = self->_privateMoc;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_D7644;
      v10[3] = &unk_1E3F50;
      v10[4] = self;
      v11 = notificationCopy;
      [(AEBookManagedObjectContext *)v9 performBlockAndWait:v10];
    }
  }
}

- (id)persistentStoreDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"AEEpubInfoSource"];

  return v4;
}

- (void)recreatePersistentStoreDirectory
{
  persistentStoreDirectory = [(AEEpubInfoSource *)self persistentStoreDirectory];
  v2 = [NSURL fileURLWithPath:persistentStoreDirectory isDirectory:1];
  v3 = +[NSFileManager defaultManager];
  relativePath = [v2 relativePath];
  [v3 createDirectoryAtPath:relativePath withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)persistentStoreFileName
{
  persistentStoreFileName = self->_persistentStoreFileName;
  if (!persistentStoreFileName)
  {
    identifier = self->_identifier;
    v5 = +[UIDevice currentDevice];
    systemVersion = [v5 systemVersion];
    v7 = [NSString stringWithFormat:@"%@-%@-%@.sqlite", identifier, @"v20250715", systemVersion];
    v8 = self->_persistentStoreFileName;
    self->_persistentStoreFileName = v7;

    persistentStoreFileName = self->_persistentStoreFileName;
  }

  return persistentStoreFileName;
}

- (NSPersistentContainer)persistentContainer
{
  persistentStoreDirectory = [(AEEpubInfoSource *)self persistentStoreDirectory];
  persistentStoreFileName = [(AEEpubInfoSource *)self persistentStoreFileName];
  [(AEEpubInfoSource *)self recreatePersistentStoreDirectory];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_persistentContainer)
  {
    v6 = AEBundle();
    v7 = [v6 URLForResource:@"AEBookInfo" withExtension:@"momd"];
    v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v7];
    v9 = [NSPersistentContainer persistentContainerWithName:@"AEBookInfo" managedObjectModel:v8];
    v23 = v8;
    persistentContainer = selfCopy->_persistentContainer;
    selfCopy->_persistentContainer = v9;

    v11 = [persistentStoreDirectory stringByAppendingPathComponent:persistentStoreFileName];
    v12 = [NSURL fileURLWithPath:v11 isDirectory:0];
    v13 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v12];
    [v13 setOption:NSFileProtectionNone forKey:NSPersistentStoreFileProtectionKey];
    v32 = v13;
    v14 = [NSArray arrayWithObjects:&v32 count:1];
    [(NSPersistentContainer *)selfCopy->_persistentContainer setPersistentStoreDescriptions:v14];
    v22 = v6;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    persistentStoreCoordinator = [(NSPersistentContainer *)selfCopy->_persistentContainer persistentStoreCoordinator];
    v16 = selfCopy->_persistentContainer;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_D7B70;
    v25[3] = &unk_1E54E8;
    v17 = persistentStoreCoordinator;
    v26 = v17;
    v27 = &v28;
    [(NSPersistentContainer *)v16 loadPersistentStoresWithCompletionHandler:v25];
    if (*(v29 + 24) == 1)
    {
      v18 = selfCopy->_persistentContainer;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_D7DF4;
      v24[3] = &unk_1E5510;
      v24[4] = &v28;
      [(NSPersistentContainer *)v18 loadPersistentStoresWithCompletionHandler:v24, v22, v8];
    }

    _Block_object_dispose(&v28, 8);
  }

  objc_sync_exit(selfCopy);

  v19 = selfCopy->_persistentContainer;
  v20 = v19;

  return v19;
}

- (id)newManagedObjectContextWithPrivateQueueConcurrency
{
  persistentContainer = [(AEEpubInfoSource *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_D800C;
  v6[3] = &unk_1E2BD0;
  v4 = newBackgroundContext;
  v7 = v4;
  [v4 performBlockAndWait:v6];

  return v4;
}

- (void)performBackgroundTaskAndWait:(id)wait
{
  waitCopy = wait;
  if (waitCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_D810C;
    v6[3] = &unk_1E3258;
    newManagedObjectContextWithPrivateQueueConcurrency = [(AEEpubInfoSource *)self newManagedObjectContextWithPrivateQueueConcurrency];
    v8 = waitCopy;
    v5 = newManagedObjectContextWithPrivateQueueConcurrency;
    [v5 performBlockAndWait:v6];
  }
}

- (void)performMainQueueTaskWithNewContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    persistentContainer = [(AEEpubInfoSource *)self persistentContainer];
    persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_D8220;
    v9[3] = &unk_1E5538;
    v10 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
    v11 = persistentStoreCoordinator;
    v12 = contextCopy;
    v7 = persistentStoreCoordinator;
    v8 = v10;
    [v8 performBlock:v9];
  }
}

- (void)performMainQueueTaskWithNewContextAndWait:(id)wait
{
  waitCopy = wait;
  if (waitCopy)
  {
    persistentContainer = [(AEEpubInfoSource *)self persistentContainer];
    persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_D8388;
    v9[3] = &unk_1E5538;
    v10 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
    v11 = persistentStoreCoordinator;
    v12 = waitCopy;
    v7 = persistentStoreCoordinator;
    v8 = v10;
    [v8 performBlockAndWait:v9];
  }
}

- (id)databaseKeyFromLibraryManagerInfo:(id)info forAssetAtURL:(id)l
{
  infoCopy = info;
  path = [l path];
  v7 = [IMLibraryPlist assetIDFromPlistEntry:infoCopy forAssetAtPath:path];

  return v7;
}

- (id)existingBookInfoWithPredicate:(id)predicate fromManagedObjectContext:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_D85D0;
  v19 = sub_D85E0;
  v20 = 0;
  if (predicateCopy && (privateMoc = self->_privateMoc, v12[0] = _NSConcreteStackBlock, v12[1] = 3221225472, v12[2] = sub_D85E8, v12[3] = &unk_1E5560, v12[4] = self, v13 = predicateCopy, v14 = &v15, [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v12], v13, (v9 = v16[5]) != 0))
  {
    v10 = [contextCopy existingObjectWithID:v9 error:0];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)existingBookInfoForURL:(id)l fromManagedObjectContext:(id)context
{
  contextCopy = context;
  path = [l path];
  v8 = [NSPredicate predicateWithFormat:@"bookBundlePath ==[n] %@", path];

  v9 = [(AEEpubInfoSource *)self existingBookInfoWithPredicate:v8 fromManagedObjectContext:contextCopy];

  return v9;
}

- (void)readableBookInfoForDatabaseKey_sync:(id)key_sync block:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D87D8;
  v8[3] = &unk_1E5588;
  key_syncCopy = key_sync;
  blockCopy = block;
  v6 = blockCopy;
  v7 = key_syncCopy;
  [(AEEpubInfoSource *)self performBackgroundTaskAndWait:v8];
}

- (void)writableBookInfoForDatabaseKey_sync:(id)key_sync block:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D8964;
  v8[3] = &unk_1E5588;
  key_syncCopy = key_sync;
  blockCopy = block;
  v6 = blockCopy;
  v7 = key_syncCopy;
  [(AEEpubInfoSource *)self performBackgroundTaskAndWait:v8];
}

- (id)existingBookInfoForDatabaseKey:(id)key fromManagedObjectContext:(id)context
{
  contextCopy = context;
  v7 = [NSPredicate predicateWithFormat:@"databaseKey ==[n] %@", key];
  v8 = [(AEEpubInfoSource *)self existingBookInfoWithPredicate:v7 fromManagedObjectContext:contextCopy];

  return v8;
}

- (void)setPropertiesOfBook:(id)book withPlistEntry:(id)entry
{
  if (entry)
  {
    entryCopy = entry;
    bookCopy = book;
    v15 = [IMLibraryPlist titleFromPlistEntry:entryCopy];
    v7 = [IMLibraryPlist storeIdFromPlistEntry:entryCopy];
    [bookCopy setStoreId:v7];

    v8 = [IMLibraryPlist uniqueIdFromPlistEntry:entryCopy];
    [bookCopy setBookUniqueId:v8];

    v9 = [IMLibraryPlist temporaryItemIdentifierFromPlistEntry:entryCopy];
    [bookCopy setTemporaryItemIdentifier:v9];

    v10 = [IMLibraryPlist authorFromPlistEntry:entryCopy];
    [bookCopy setBookAuthor:v10];

    v11 = [IMLibraryPlist sortAuthorFromPlistEntry:entryCopy];
    [bookCopy setSortAuthor:v11];

    [bookCopy setBookTitle:v15];
    [bookCopy setSortTitle:v15];
    v12 = [IMLibraryPlist genreFromPlistEntry:entryCopy];
    [bookCopy setGenre:v12];

    v13 = [IMLibraryPlist isSampleFromPlistEntry:entryCopy];
    [bookCopy setSampleContent:v13];

    v14 = [IMLibraryPlist bookEpubIdFromPlistEntry:entryCopy];

    [bookCopy setBookEpubId:v14];
  }
}

- (id)bookInfoForDatabaseKey:(id)key fromManagedObjectContext:(id)context error:(id *)error
{
  keyCopy = key;
  contextCopy = context;
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
  selfCopy = self;
  v10 = keyCopy;
  v19 = v10;
  v20 = &v22;
  v21 = privateMoc == contextCopy;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:&v14];
  v11 = v23[5];
  if (v11)
  {
    selfCopy = [(AEBookManagedObjectContext *)contextCopy existingObjectWithID:v11 error:0, v14, v15, v16, v17, selfCopy];
  }

  else
  {
    selfCopy = 0;
  }

  _Block_object_dispose(&v22, 8);

  return selfCopy;
}

- (id)bookInfoForURL:(id)l fromManagedObjectContext:(id)context error:(id *)error needsCoordination:(BOOL)coordination updateDate:(id)date
{
  lCopy = l;
  contextCopy = context;
  dateCopy = date;
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
  v14 = contextCopy;
  v15 = privateMoc == contextCopy;
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
  v17 = lCopy;
  coordinationCopy = coordination;
  v31 = v17;
  v33 = &v43;
  v34 = &v39;
  errorCopy = error;
  v18 = dateCopy;
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

  if (error)
  {
    v22 = v44[5];
    if (v22)
    {
      objc_storeStrong(error, v22);
    }
  }

  v23 = v32;
  v24 = v20;

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);

  return v24;
}

- (int)parseBook:(id)book
{
  bookCopy = book;
  objectID = [bookCopy objectID];
  isTemporaryID = [objectID isTemporaryID];

  if (!isTemporaryID)
  {
    goto LABEL_6;
  }

  managedObjectContext = [bookCopy managedObjectContext];
  if (managedObjectContext != self->_privateMoc)
  {
    managedObjectContext2 = [bookCopy managedObjectContext];
    hasChanges = [managedObjectContext2 hasChanges];

    if (!hasChanges)
    {
      goto LABEL_6;
    }

    managedObjectContext = [bookCopy managedObjectContext];
    [(AEBookManagedObjectContext *)managedObjectContext save:0];
  }

LABEL_6:
  privateMoc = self->_privateMoc;
  managedObjectContext3 = [bookCopy managedObjectContext];

  managedObjectContext4 = [bookCopy managedObjectContext];
  v13 = self->_privateMoc;

  objectID2 = [bookCopy objectID];
  v15 = objectID2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (objectID2)
  {
    v16 = privateMoc == managedObjectContext3;
    v17 = self->_privateMoc;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_D99E0;
    v20[3] = &unk_1E5600;
    v20[4] = self;
    v21 = objectID2;
    v22 = &v25;
    v23 = managedObjectContext4 != v13;
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

- (void)updateCachedURLFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  privateMoc = self->_privateMoc;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_D9BA0;
  v11[3] = &unk_1E4240;
  v11[4] = self;
  v12 = fromCopy;
  v13 = toCopy;
  v9 = toCopy;
  v10 = fromCopy;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v11];
}

- (void)resetBookForURL:(id)l
{
  lCopy = l;
  privateMoc = self->_privateMoc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D9D08;
  v7[3] = &unk_1E3F50;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v7];
}

- (void)resetBookForDatabaseKey:(id)key
{
  keyCopy = key;
  privateMoc = self->_privateMoc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D9E08;
  v7[3] = &unk_1E3F50;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v7];
}

- (void)_resetBookInfo:(id)info
{
  infoCopy = info;
  privateMoc = self->_privateMoc;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D9F08;
  v7[3] = &unk_1E3F50;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  [(AEBookManagedObjectContext *)privateMoc performBlockAndWait:v7];
}

- (id)metadataForKey:(id)key forURL:(id)l needsCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  keyCopy = key;
  lCopy = l;
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
  if (![keyCopy isEqualToString:AEHelperStringMetadataAssetIDKey])
  {
    if (![keyCopy isEqualToString:AEHelperStringMetadataPageProgressionKey])
    {
      goto LABEL_9;
    }

    v12 = +[AEAssetEngine libraryMgr];
    v11 = [v12 pageProgressionDirectionForAssetAtURLOnMainThread:lCopy];

    if ([v11 length])
    {
      goto LABEL_6;
    }

LABEL_7:

    v15 = +[AEAssetEngine libraryMgr];
    v16 = [v15 metadataForAssetAtURL:lCopy needsCoordination:coordinationCopy];

    metadataQueue = self->_metadataQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DA2D0;
    block[3] = &unk_1E5628;
    block[4] = self;
    v27 = keyCopy;
    v28 = v16;
    v29 = lCopy;
    v30 = &v36;
    v31 = &v32;
    v11 = v16;
    dispatch_sync(metadataQueue, block);

    goto LABEL_8;
  }

  v10 = +[AEAssetEngine libraryMgr];
  v11 = [v10 assetIDForAssetAtURLOnMainThread:lCopy];

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
    v22 = lCopy;
    v25 = coordinationCopy;
    v23 = keyCopy;
    v24 = &v36;
    [(AEEpubInfoSource *)self performBackgroundTaskAndWait:v21];

    objc_autoreleasePoolPop(v18);
  }

  v19 = v37[5];
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v19;
}

- (void)setMetadata:(id)metadata forKey:(id)key forURL:(id)l
{
  metadataCopy = metadata;
  lCopy = l;
  if ([key isEqualToString:AEHelperStringMetadataTitleKey])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_DA80C;
    v10[3] = &unk_1E5678;
    v10[4] = self;
    v11 = lCopy;
    v12 = metadataCopy;
    [(AEEpubInfoSource *)self performBackgroundTaskAndWait:v10];
  }
}

@end