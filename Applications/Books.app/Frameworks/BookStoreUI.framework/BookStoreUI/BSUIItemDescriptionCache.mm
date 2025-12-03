@interface BSUIItemDescriptionCache
+ (BSUIItemDescriptionCache)sharedInstance;
+ (id)_persistentStoreDirectoryWithSubfolder:(id)subfolder;
+ (void)_recreatePersistentStoreDirectoryWithSubfolder:(id)subfolder;
- (BOOL)q_evictCacheEntriesFromDatabase;
- (BSUIItemDescriptionCache)initWithMaxItemCount:(unint64_t)count subfolder:(id)subfolder;
- (id)_managedObjectModel;
- (id)_persistentStoreCoordinator;
- (id)itemDescriptionsFromIdentifiers:(id)identifiers;
- (id)q_itemDescriptionFromCachedItemDescription:(id)description moc:(id)moc;
- (id)q_updateDatabaseWithNewProfiles:(id)profiles expirationDate:(id)date moc:(id)moc;
- (id)sq_fetchCachedItemDescriptionsForIdentifiers:(id)identifiers moc:(id)moc;
- (id)sq_fetchItemDescriptionsForIdentifiers:(id)identifiers moc:(id)moc;
- (id)sq_queueCacheRequestForIdentifier:(id)identifier;
- (id)sq_queueNetworkRequestForIdentifier:(id)identifier;
- (void)_fetchItemDescriptionFromCacheForIdentifier:(id)identifier completion:(id)completion;
- (void)_fetchWithCompletion:(id)completion;
- (void)_flush;
- (void)q_populateCachedDescription:(id)description productProfile:(id)profile expirationDate:(id)date;
- (void)sampleDownloadURLForAssetID:(id)d completion:(id)completion;
- (void)updateWithProfileDictionaries:(id)dictionaries expirationDate:(id)date requestedIdentifiers:(id)identifiers;
- (void)updateWithProfiles:(id)profiles expirationDate:(id)date requestedIdentifiers:(id)identifiers;
@end

@implementation BSUIItemDescriptionCache

+ (BSUIItemDescriptionCache)sharedInstance
{
  if (qword_3CA7E0 != -1)
  {
    sub_2BD9CC();
  }

  v3 = qword_3CA7D8;

  return v3;
}

- (BSUIItemDescriptionCache)initWithMaxItemCount:(unint64_t)count subfolder:(id)subfolder
{
  subfolderCopy = subfolder;
  v26.receiver = self;
  v26.super_class = BSUIItemDescriptionCache;
  v8 = [(BSUIItemDescriptionCache *)&v26 init];
  if (v8)
  {
    v9 = objc_opt_new();
    identifiersQueuedForNetwork = v8->_identifiersQueuedForNetwork;
    v8->_identifiersQueuedForNetwork = v9;

    v11 = objc_opt_new();
    identifiersQueuedForCache = v8->_identifiersQueuedForCache;
    v8->_identifiersQueuedForCache = v11;

    v13 = +[NSMapTable strongToWeakObjectsMapTable];
    futuresByIdentifier = v8->_futuresByIdentifier;
    v8->_futuresByIdentifier = v13;

    v15 = [BUCoalescingCallBlock alloc];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_2FB08;
    v24[3] = &unk_388020;
    v16 = v8;
    v25 = v16;
    v17 = [v15 initWithNotifyBlock:v24 blockDescription:@"BSUIItemDescriptionCache"];
    coalescingFetch = v16->_coalescingFetch;
    v16->_coalescingFetch = v17;

    v16->_maxItemCount = count;
    objc_storeStrong(&v16->_testSubfolder, subfolder);
    v19 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    moc = v16->_moc;
    v16->_moc = v19;

    v21 = v16->_moc;
    _persistentStoreCoordinator = [(BSUIItemDescriptionCache *)v16 _persistentStoreCoordinator];
    [(NSManagedObjectContext *)v21 setPersistentStoreCoordinator:_persistentStoreCoordinator];

    [(NSManagedObjectContext *)v16->_moc setUndoManager:0];
  }

  return v8;
}

- (void)updateWithProfileDictionaries:(id)dictionaries expirationDate:(id)date requestedIdentifiers:(id)identifiers
{
  dictionariesCopy = dictionaries;
  dateCopy = date;
  identifiersCopy = identifiers;
  v9 = objc_alloc_init(NSMutableDictionary);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = dictionariesCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = [AEUserPublishingProductProfile alloc];
        v17 = [v10 objectForKeyedSubscript:v15];
        v18 = [v16 initWithProfileDictionary:v17];

        if (v18)
        {
          [v9 setObject:v18 forKeyedSubscript:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [(BSUIItemDescriptionCache *)self updateWithProfiles:v9 expirationDate:dateCopy requestedIdentifiers:identifiersCopy];
}

- (void)updateWithProfiles:(id)profiles expirationDate:(id)date requestedIdentifiers:(id)identifiers
{
  profilesCopy = profiles;
  dateCopy = date;
  identifiersCopy = identifiers;
  [(BSUIItemDescriptionCache *)self moc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2FDC4;
  v15[3] = &unk_388098;
  v15[4] = self;
  v16 = profilesCopy;
  v18 = v17 = dateCopy;
  v19 = identifiersCopy;
  v11 = identifiersCopy;
  v12 = v18;
  v13 = dateCopy;
  v14 = profilesCopy;
  [v12 performBlockAndWait:v15];
}

- (void)_flush
{
  v2 = [(BSUIItemDescriptionCache *)self moc];
  [v2 performBlockAndWait:&stru_3880B8];
}

- (void)_fetchItemDescriptionFromCacheForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = [(BSUIItemDescriptionCache *)self moc];
  v9 = [(BSUIItemDescriptionCache *)self moc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_301B8;
  v13[3] = &unk_3880E0;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = v8;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  v12 = identifierCopy;
  [v9 performBlock:v13];
}

- (id)sq_fetchCachedItemDescriptionsForIdentifiers:(id)identifiers moc:(id)moc
{
  identifiersCopy = identifiers;
  mocCopy = moc;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BSUICachedItemDescription"];
  v9 = [NSPredicate predicateWithFormat:@"%K in %@ AND %K != NULL", @"storeID", identifiersCopy, @"fileSize"];
  [v8 setPredicate:v9];

  v32 = 0;
  v10 = [mocCopy executeFetchRequest:v8 error:&v32];
  v11 = v32;
  if (v11)
  {
    v12 = BCIMLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v35 = "[BSUIItemDescriptionCache sq_fetchCachedItemDescriptionsForIdentifiers:moc:]";
      v36 = 2080;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookStoreUI/BookStoreUI/Cache/BSUIItemDescriptionCache.m";
      v38 = 1024;
      v39 = 161;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v13 = BCIMLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v35 = v14;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "@%@: %@", buf, 0x16u);
    }
  }

  v15 = +[NSDate date];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v28 + 1) + 8 * i) setLastAccessDate:v15];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v18);
  }

  if ([v16 count])
  {

    v27 = 0;
    [mocCopy save:&v27];
    v11 = v27;
    if (v11)
    {
      v21 = BCIMLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v35 = "[BSUIItemDescriptionCache sq_fetchCachedItemDescriptionsForIdentifiers:moc:]";
        v36 = 2080;
        v37 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookStoreUI/BookStoreUI/Cache/BSUIItemDescriptionCache.m";
        v38 = 1024;
        v39 = 179;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v22 = BCIMLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = NSStringFromSelector(a2);
        *buf = 138412546;
        v35 = v23;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "@%@: %@", buf, 0x16u);
      }
    }

    v24 = [v16 valueForKey:@"storeID"];
    v25 = [NSDictionary dictionaryWithObjects:v16 forKeys:v24];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)sq_fetchItemDescriptionsForIdentifiers:(id)identifiers moc:(id)moc
{
  identifiersCopy = identifiers;
  mocCopy = moc;
  v8 = [(BSUIItemDescriptionCache *)self sq_fetchCachedItemDescriptionsForIdentifiers:identifiersCopy moc:mocCopy];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_30830;
  v16 = sub_30840;
  v17 = +[NSMutableDictionary dictionary];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_30848;
  v11[3] = &unk_388108;
  v11[4] = self;
  v11[5] = &v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)sq_queueCacheRequestForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(NSMapTable *)self->_futuresByIdentifier objectForKey:identifierCopy];
    if (!v5)
    {
      v5 = objc_alloc_init(BCMutableFutureValue);
      [(NSMapTable *)self->_futuresByIdentifier setObject:v5 forKey:identifierCopy];
    }

    if (([(NSMutableArray *)self->_identifiersQueuedForCache containsObject:identifierCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_identifiersQueuedForCache addObject:identifierCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sq_queueNetworkRequestForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(NSMapTable *)self->_futuresByIdentifier objectForKey:identifierCopy];
    if (!v5)
    {
      v5 = objc_alloc_init(BCMutableFutureValue);
      [(NSMapTable *)self->_futuresByIdentifier setObject:v5 forKey:identifierCopy];
    }

    if (([(NSMutableArray *)self->_identifiersQueuedForNetwork containsObject:identifierCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_identifiersQueuedForNetwork addObject:identifierCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_fetchWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BSUIItemDescriptionCache *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_30B0C;
  v7[3] = &unk_3878F0;
  v8 = v7[4] = self;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [v6 performBlock:v7];
}

- (id)itemDescriptionsFromIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v6 = [(BSUIItemDescriptionCache *)self moc];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_31204;
  v15 = &unk_388178;
  v7 = identifiersCopy;
  v16 = v7;
  selfCopy = self;
  v8 = v5;
  v18 = v8;
  v19 = &v20;
  [v6 performBlockAndWait:&v12];

  if (*(v21 + 24) == 1)
  {
    [(BUCoalescingCallBlock *)self->_coalescingFetch signalWithCompletion:&stru_388198, v12, v13, v14, v15, v16, selfCopy];
  }

  v9 = v18;
  v10 = v8;

  _Block_object_dispose(&v20, 8);

  return v10;
}

- (void)sampleDownloadURLForAssetID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_30830;
  v19 = sub_30840;
  v7 = +[BSUIItemDescriptionCache sharedInstance];
  v21 = dCopy;
  v8 = [NSArray arrayWithObjects:&v21 count:1];
  v9 = [v7 itemDescriptionsFromIdentifiers:v8];
  v20 = [v9 objectForKey:dCopy];

  v10 = v16[5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_3153C;
  v12[3] = &unk_3881C0;
  v11 = completionCopy;
  v13 = v11;
  v14 = &v15;
  [v10 get:v12];

  _Block_object_dispose(&v15, 8);
}

+ (id)_persistentStoreDirectoryWithSubfolder:(id)subfolder
{
  subfolderCopy = subfolder;
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v4 lastObject];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [lastObject stringByAppendingPathComponent:v7];

  if ([subfolderCopy length])
  {
    v9 = [v8 stringByAppendingPathComponent:subfolderCopy];

    v8 = v9;
  }

  return v8;
}

+ (void)_recreatePersistentStoreDirectoryWithSubfolder:(id)subfolder
{
  v6 = [self _persistentStoreDirectoryWithSubfolder:subfolder];
  v3 = [NSURL fileURLWithPath:v6 isDirectory:1];
  v4 = +[NSFileManager defaultManager];
  relativePath = [v3 relativePath];
  [v4 createDirectoryAtPath:relativePath withIntermediateDirectories:1 attributes:0 error:0];
}

- (id)_managedObjectModel
{
  model = self->_model;
  if (!model)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 pathForResource:v6 ofType:@"momd"];

    v8 = [NSURL fileURLWithPath:v7 isDirectory:1];
    v9 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v8];
    v10 = self->_model;
    self->_model = v9;

    model = self->_model;
  }

  return model;
}

- (id)_persistentStoreCoordinator
{
  psc = self->_psc;
  if (!psc)
  {
    v4 = [NSPersistentStoreCoordinator alloc];
    _managedObjectModel = [(BSUIItemDescriptionCache *)self _managedObjectModel];
    v6 = [v4 initWithManagedObjectModel:_managedObjectModel];
    v7 = self->_psc;
    self->_psc = v6;

    v28[0] = NSInferMappingModelAutomaticallyOption;
    v28[1] = NSMigratePersistentStoresAutomaticallyOption;
    v29[0] = &__kCFBooleanTrue;
    v29[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v9 = objc_opt_class();
    testSubfolder = [(BSUIItemDescriptionCache *)self testSubfolder];
    v11 = [v9 _persistentStoreDirectoryWithSubfolder:testSubfolder];

    _persistentStoreFileName = [objc_opt_class() _persistentStoreFileName];
    v13 = objc_opt_class();
    testSubfolder2 = [(BSUIItemDescriptionCache *)self testSubfolder];
    [v13 _recreatePersistentStoreDirectoryWithSubfolder:testSubfolder2];

    v15 = [v11 stringByAppendingPathComponent:_persistentStoreFileName];
    v16 = [NSURL fileURLWithPath:v15 isDirectory:0];
    v17 = self->_psc;
    v27 = 0;
    v18 = [(NSPersistentStoreCoordinator *)v17 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v16 options:v8 error:&v27];
    v19 = v27;
    if (!v18)
    {
      v20 = +[NSFileManager defaultManager];
      [v20 removeItemAtPath:v11 error:0];

      v21 = objc_opt_class();
      testSubfolder3 = [(BSUIItemDescriptionCache *)self testSubfolder];
      [v21 _recreatePersistentStoreDirectoryWithSubfolder:testSubfolder3];

      v23 = self->_psc;
      v26 = v19;
      v18 = [(NSPersistentStoreCoordinator *)v23 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v16 options:v8 error:&v26];
      v24 = v26;

      v19 = v24;
    }

    psc = self->_psc;
  }

  return psc;
}

- (void)q_populateCachedDescription:(id)description productProfile:(id)profile expirationDate:(id)date
{
  descriptionCopy = description;
  profileCopy = profile;
  dateCopy = date;
  adamId = [profileCopy adamId];
  [descriptionCopy setStoreID:adamId];

  v29 = 1.5;
  v11 = [profileCopy artworkURLTemplateAspect:&v29];
  [descriptionCopy setArtworkURLTemplate:v11];

  v12 = [NSNumber numberWithDouble:v29];
  [descriptionCopy setArtworkAspect:v12];

  standardNotes = [profileCopy standardNotes];
  if (standardNotes)
  {
    [descriptionCopy setRawNotes:standardNotes];
  }

  else
  {
    standardDescription = [profileCopy standardDescription];
    [descriptionCopy setRawNotes:standardDescription];
  }

  title = [profileCopy title];
  [descriptionCopy setTitle:title];

  author = [profileCopy author];
  [descriptionCopy setAuthor:author];

  [profileCopy averageRating];
  v17 = [NSNumber numberWithDouble:?];
  [descriptionCopy setAverageRating:v17];

  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [profileCopy ratingCount]);
  [descriptionCopy setRatingCount:v18];

  [descriptionCopy setExpirationDate:dateCopy];
  v19 = +[NSDate date];
  [descriptionCopy setLastAccessDate:v19];

  productURL = [profileCopy productURL];
  absoluteString = [productURL absoluteString];
  [descriptionCopy setProductURL:absoluteString];

  priceString = [profileCopy priceString];
  [descriptionCopy setPriceString:priceString];

  v23 = [profileCopy actionTextWithType:1];
  [descriptionCopy setActionString:v23];

  buyParameters = [profileCopy buyParameters];
  [descriptionCopy setBuyParameters:buyParameters];

  bookSampleDownloadURL = [profileCopy bookSampleDownloadURL];
  absoluteString2 = [bookSampleDownloadURL absoluteString];
  [descriptionCopy setSampleDownloadURL:absoluteString2];

  kind = [profileCopy kind];
  [descriptionCopy setKind:kind];

  v28 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [profileCopy fileSize]);
  [descriptionCopy setFileSize:v28];
}

- (id)q_updateDatabaseWithNewProfiles:(id)profiles expirationDate:(id)date moc:(id)moc
{
  profilesCopy = profiles;
  dateCopy = date;
  mocCopy = moc;
  v36 = objc_opt_new();
  v10 = +[NSDate date];
  v11 = dateCopy;
  [v10 timeIntervalSinceDate:v11];
  v13 = v11;
  if (fabs(v12) < 30.0)
  {
    v13 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
  }

  if (!v13 || [v13 compare:v10] == &dword_0 + 1)
  {
    v14 = v13;
    v32 = v10;
    v33 = v11;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v34 = profilesCopy;
    v15 = profilesCopy;
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          objc_opt_class();
          v21 = [v15 objectForKeyedSubscript:v20];
          v22 = BUDynamicCast();

          v23 = [BSUICachedItemDescription alloc];
          v24 = [NSEntityDescription entityForName:@"BSUICachedItemDescription" inManagedObjectContext:mocCopy];
          v25 = [(BSUICachedItemDescription *)v23 initWithEntity:v24 insertIntoManagedObjectContext:mocCopy];

          [(BSUIItemDescriptionCache *)self q_populateCachedDescription:v25 productProfile:v22 expirationDate:v14];
          [v36 setObject:v25 forKeyedSubscript:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v17);
    }

    v11 = v33;
    profilesCopy = v34;
    v10 = v32;
    v13 = v14;
  }

  if ([v36 count])
  {
    v37 = 0;
    [mocCopy save:&v37];
    v26 = v37;
    if (v26)
    {
      v27 = BCIMLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v43 = "[BSUIItemDescriptionCache q_updateDatabaseWithNewProfiles:expirationDate:moc:]";
        v44 = 2080;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookStoreUI/BookStoreUI/Cache/BSUIItemDescriptionCache.m";
        v46 = 1024;
        v47 = 481;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v28 = BCIMLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = NSStringFromSelector(a2);
        *buf = 138412546;
        v43 = v29;
        v44 = 2112;
        v45 = v26;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "@%@: %@", buf, 0x16u);
      }
    }
  }

  [(BSUIItemDescriptionCache *)self q_evictCacheEntriesFromDatabase];

  return v36;
}

- (BOOL)q_evictCacheEntriesFromDatabase
{
  v4 = [(BSUIItemDescriptionCache *)self moc];
  v5 = +[NSDate date];
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"BSUICachedItemDescription"];
  v7 = [NSPredicate predicateWithFormat:@"%K < %@", @"expirationDate", v5];
  [v6 setPredicate:v7];

  [v6 setReturnsObjectsAsFaults:1];
  v40 = 0;
  v8 = [v4 executeFetchRequest:v6 error:&v40];
  v9 = v40;
  aSelector = a2;
  v33 = v8;
  if (v9)
  {
    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v44 = "[BSUIItemDescriptionCache q_evictCacheEntriesFromDatabase]";
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookStoreUI/BookStoreUI/Cache/BSUIItemDescriptionCache.m";
      v47 = 1024;
      v48 = 509;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v11 = BCIMLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      v44 = v12;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "@%@: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = v8;
    v14 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
    v13 = v14 != 0;
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v11);
          }

          [v4 deleteObject:*(*(&v36 + 1) + 8 * i)];
        }

        v15 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v15);
      v13 = 1;
    }
  }

  v18 = [NSFetchRequest fetchRequestWithEntityName:@"BSUICachedItemDescription"];
  v19 = [NSSortDescriptor sortDescriptorWithKey:@"lastAccessDate" ascending:0];
  v41 = v19;
  v20 = [NSArray arrayWithObjects:&v41 count:1];
  [v18 setSortDescriptors:v20];

  [v18 setReturnsObjectsAsFaults:1];
  v35 = 0;
  v21 = [v4 executeFetchRequest:v18 error:&v35];
  v22 = v35;
  if (v22)
  {
    v23 = BCIMLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v44 = "[BSUIItemDescriptionCache q_evictCacheEntriesFromDatabase]";
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookStoreUI/BookStoreUI/Cache/BSUIItemDescriptionCache.m";
      v47 = 1024;
      v48 = 529;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v24 = BCIMLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = NSStringFromSelector(aSelector);
      *buf = 138412546;
      v44 = v25;
      v45 = 2112;
      v46 = v22;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "@%@: %@", buf, 0x16u);
    }

    if ((v13 & 1) == 0)
    {
      LOBYTE(v13) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    maxItemCount = [(BSUIItemDescriptionCache *)self maxItemCount];
    if (maxItemCount >= [v21 count])
    {
      if (!v13)
      {
        v22 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      do
      {
        v27 = [v21 objectAtIndexedSubscript:maxItemCount];
        [v4 deleteObject:v27];

        ++maxItemCount;
      }

      while (maxItemCount < [v21 count]);
    }
  }

  v34 = 0;
  [v4 save:&v34];
  v22 = v34;
  if (v22)
  {
    v28 = BCIMLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v44 = "[BSUIItemDescriptionCache q_evictCacheEntriesFromDatabase]";
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookStoreUI/BookStoreUI/Cache/BSUIItemDescriptionCache.m";
      v47 = 1024;
      v48 = 549;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v29 = BCIMLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = NSStringFromSelector(aSelector);
      *buf = 138412546;
      v44 = v30;
      v45 = 2112;
      v46 = v22;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "@%@: %@", buf, 0x16u);
    }
  }

  LOBYTE(v13) = 1;
LABEL_33:

  return v13;
}

- (id)q_itemDescriptionFromCachedItemDescription:(id)description moc:(id)moc
{
  descriptionCopy = description;
  mocCopy = moc;
  v8 = [BSUIItemDescription alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_328E0;
  v14[3] = &unk_388210;
  v15 = mocCopy;
  v16 = descriptionCopy;
  v17 = a2;
  v9 = descriptionCopy;
  v10 = mocCopy;
  v11 = [BCLazyValue objectAsyncProducer:v14];
  v12 = [(BSUIItemDescription *)v8 initWithCachedItemDescription:v9 lazyNotes:v11];

  return v12;
}

@end