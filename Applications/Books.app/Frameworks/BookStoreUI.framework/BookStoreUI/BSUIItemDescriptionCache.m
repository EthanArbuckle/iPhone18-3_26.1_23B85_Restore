@interface BSUIItemDescriptionCache
+ (BSUIItemDescriptionCache)sharedInstance;
+ (id)_persistentStoreDirectoryWithSubfolder:(id)a3;
+ (void)_recreatePersistentStoreDirectoryWithSubfolder:(id)a3;
- (BOOL)q_evictCacheEntriesFromDatabase;
- (BSUIItemDescriptionCache)initWithMaxItemCount:(unint64_t)a3 subfolder:(id)a4;
- (id)_managedObjectModel;
- (id)_persistentStoreCoordinator;
- (id)itemDescriptionsFromIdentifiers:(id)a3;
- (id)q_itemDescriptionFromCachedItemDescription:(id)a3 moc:(id)a4;
- (id)q_updateDatabaseWithNewProfiles:(id)a3 expirationDate:(id)a4 moc:(id)a5;
- (id)sq_fetchCachedItemDescriptionsForIdentifiers:(id)a3 moc:(id)a4;
- (id)sq_fetchItemDescriptionsForIdentifiers:(id)a3 moc:(id)a4;
- (id)sq_queueCacheRequestForIdentifier:(id)a3;
- (id)sq_queueNetworkRequestForIdentifier:(id)a3;
- (void)_fetchItemDescriptionFromCacheForIdentifier:(id)a3 completion:(id)a4;
- (void)_fetchWithCompletion:(id)a3;
- (void)_flush;
- (void)q_populateCachedDescription:(id)a3 productProfile:(id)a4 expirationDate:(id)a5;
- (void)sampleDownloadURLForAssetID:(id)a3 completion:(id)a4;
- (void)updateWithProfileDictionaries:(id)a3 expirationDate:(id)a4 requestedIdentifiers:(id)a5;
- (void)updateWithProfiles:(id)a3 expirationDate:(id)a4 requestedIdentifiers:(id)a5;
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

- (BSUIItemDescriptionCache)initWithMaxItemCount:(unint64_t)a3 subfolder:(id)a4
{
  v7 = a4;
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

    v16->_maxItemCount = a3;
    objc_storeStrong(&v16->_testSubfolder, a4);
    v19 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    moc = v16->_moc;
    v16->_moc = v19;

    v21 = v16->_moc;
    v22 = [(BSUIItemDescriptionCache *)v16 _persistentStoreCoordinator];
    [(NSManagedObjectContext *)v21 setPersistentStoreCoordinator:v22];

    [(NSManagedObjectContext *)v16->_moc setUndoManager:0];
  }

  return v8;
}

- (void)updateWithProfileDictionaries:(id)a3 expirationDate:(id)a4 requestedIdentifiers:(id)a5
{
  v7 = a3;
  v20 = a4;
  v8 = a5;
  v9 = objc_alloc_init(NSMutableDictionary);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v7;
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

  [(BSUIItemDescriptionCache *)self updateWithProfiles:v9 expirationDate:v20 requestedIdentifiers:v8];
}

- (void)updateWithProfiles:(id)a3 expirationDate:(id)a4 requestedIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(BSUIItemDescriptionCache *)self moc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2FDC4;
  v15[3] = &unk_388098;
  v15[4] = self;
  v16 = v8;
  v18 = v17 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v18;
  v13 = v9;
  v14 = v8;
  [v12 performBlockAndWait:v15];
}

- (void)_flush
{
  v2 = [(BSUIItemDescriptionCache *)self moc];
  [v2 performBlockAndWait:&stru_3880B8];
}

- (void)_fetchItemDescriptionFromCacheForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSUIItemDescriptionCache *)self moc];
  v9 = [(BSUIItemDescriptionCache *)self moc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_301B8;
  v13[3] = &unk_3880E0;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  [v9 performBlock:v13];
}

- (id)sq_fetchCachedItemDescriptionsForIdentifiers:(id)a3 moc:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"BSUICachedItemDescription"];
  v9 = [NSPredicate predicateWithFormat:@"%K in %@ AND %K != NULL", @"storeID", v6, @"fileSize"];
  [v8 setPredicate:v9];

  v32 = 0;
  v10 = [v7 executeFetchRequest:v8 error:&v32];
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
    [v7 save:&v27];
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

- (id)sq_fetchItemDescriptionsForIdentifiers:(id)a3 moc:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSUIItemDescriptionCache *)self sq_fetchCachedItemDescriptionsForIdentifiers:v6 moc:v7];
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

- (id)sq_queueCacheRequestForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMapTable *)self->_futuresByIdentifier objectForKey:v4];
    if (!v5)
    {
      v5 = objc_alloc_init(BCMutableFutureValue);
      [(NSMapTable *)self->_futuresByIdentifier setObject:v5 forKey:v4];
    }

    if (([(NSMutableArray *)self->_identifiersQueuedForCache containsObject:v4]& 1) == 0)
    {
      [(NSMutableArray *)self->_identifiersQueuedForCache addObject:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sq_queueNetworkRequestForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMapTable *)self->_futuresByIdentifier objectForKey:v4];
    if (!v5)
    {
      v5 = objc_alloc_init(BCMutableFutureValue);
      [(NSMapTable *)self->_futuresByIdentifier setObject:v5 forKey:v4];
    }

    if (([(NSMutableArray *)self->_identifiersQueuedForNetwork containsObject:v4]& 1) == 0)
    {
      [(NSMutableArray *)self->_identifiersQueuedForNetwork addObject:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_fetchWithCompletion:(id)a3
{
  v4 = a3;
  [(BSUIItemDescriptionCache *)self moc];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_30B0C;
  v7[3] = &unk_3878F0;
  v8 = v7[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [v6 performBlock:v7];
}

- (id)itemDescriptionsFromIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v6 = [(BSUIItemDescriptionCache *)self moc];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_31204;
  v15 = &unk_388178;
  v7 = v4;
  v16 = v7;
  v17 = self;
  v8 = v5;
  v18 = v8;
  v19 = &v20;
  [v6 performBlockAndWait:&v12];

  if (*(v21 + 24) == 1)
  {
    [(BUCoalescingCallBlock *)self->_coalescingFetch signalWithCompletion:&stru_388198, v12, v13, v14, v15, v16, v17];
  }

  v9 = v18;
  v10 = v8;

  _Block_object_dispose(&v20, 8);

  return v10;
}

- (void)sampleDownloadURLForAssetID:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_30830;
  v19 = sub_30840;
  v7 = +[BSUIItemDescriptionCache sharedInstance];
  v21 = v5;
  v8 = [NSArray arrayWithObjects:&v21 count:1];
  v9 = [v7 itemDescriptionsFromIdentifiers:v8];
  v20 = [v9 objectForKey:v5];

  v10 = v16[5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_3153C;
  v12[3] = &unk_3881C0;
  v11 = v6;
  v13 = v11;
  v14 = &v15;
  [v10 get:v12];

  _Block_object_dispose(&v15, 8);
}

+ (id)_persistentStoreDirectoryWithSubfolder:(id)a3
{
  v3 = a3;
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v5 = [v4 lastObject];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringByAppendingPathComponent:v7];

  if ([v3 length])
  {
    v9 = [v8 stringByAppendingPathComponent:v3];

    v8 = v9;
  }

  return v8;
}

+ (void)_recreatePersistentStoreDirectoryWithSubfolder:(id)a3
{
  v6 = [a1 _persistentStoreDirectoryWithSubfolder:a3];
  v3 = [NSURL fileURLWithPath:v6 isDirectory:1];
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 relativePath];
  [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];
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
    v5 = [(BSUIItemDescriptionCache *)self _managedObjectModel];
    v6 = [v4 initWithManagedObjectModel:v5];
    v7 = self->_psc;
    self->_psc = v6;

    v28[0] = NSInferMappingModelAutomaticallyOption;
    v28[1] = NSMigratePersistentStoresAutomaticallyOption;
    v29[0] = &__kCFBooleanTrue;
    v29[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v9 = objc_opt_class();
    v10 = [(BSUIItemDescriptionCache *)self testSubfolder];
    v11 = [v9 _persistentStoreDirectoryWithSubfolder:v10];

    v12 = [objc_opt_class() _persistentStoreFileName];
    v13 = objc_opt_class();
    v14 = [(BSUIItemDescriptionCache *)self testSubfolder];
    [v13 _recreatePersistentStoreDirectoryWithSubfolder:v14];

    v15 = [v11 stringByAppendingPathComponent:v12];
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
      v22 = [(BSUIItemDescriptionCache *)self testSubfolder];
      [v21 _recreatePersistentStoreDirectoryWithSubfolder:v22];

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

- (void)q_populateCachedDescription:(id)a3 productProfile:(id)a4 expirationDate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 adamId];
  [v7 setStoreID:v10];

  v29 = 1.5;
  v11 = [v8 artworkURLTemplateAspect:&v29];
  [v7 setArtworkURLTemplate:v11];

  v12 = [NSNumber numberWithDouble:v29];
  [v7 setArtworkAspect:v12];

  v13 = [v8 standardNotes];
  if (v13)
  {
    [v7 setRawNotes:v13];
  }

  else
  {
    v14 = [v8 standardDescription];
    [v7 setRawNotes:v14];
  }

  v15 = [v8 title];
  [v7 setTitle:v15];

  v16 = [v8 author];
  [v7 setAuthor:v16];

  [v8 averageRating];
  v17 = [NSNumber numberWithDouble:?];
  [v7 setAverageRating:v17];

  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 ratingCount]);
  [v7 setRatingCount:v18];

  [v7 setExpirationDate:v9];
  v19 = +[NSDate date];
  [v7 setLastAccessDate:v19];

  v20 = [v8 productURL];
  v21 = [v20 absoluteString];
  [v7 setProductURL:v21];

  v22 = [v8 priceString];
  [v7 setPriceString:v22];

  v23 = [v8 actionTextWithType:1];
  [v7 setActionString:v23];

  v24 = [v8 buyParameters];
  [v7 setBuyParameters:v24];

  v25 = [v8 bookSampleDownloadURL];
  v26 = [v25 absoluteString];
  [v7 setSampleDownloadURL:v26];

  v27 = [v8 kind];
  [v7 setKind:v27];

  v28 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 fileSize]);
  [v7 setFileSize:v28];
}

- (id)q_updateDatabaseWithNewProfiles:(id)a3 expirationDate:(id)a4 moc:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v36 = objc_opt_new();
  v10 = +[NSDate date];
  v11 = v8;
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
    v34 = v7;
    v15 = v7;
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
          v24 = [NSEntityDescription entityForName:@"BSUICachedItemDescription" inManagedObjectContext:v9];
          v25 = [(BSUICachedItemDescription *)v23 initWithEntity:v24 insertIntoManagedObjectContext:v9];

          [(BSUIItemDescriptionCache *)self q_populateCachedDescription:v25 productProfile:v22 expirationDate:v14];
          [v36 setObject:v25 forKeyedSubscript:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v17);
    }

    v11 = v33;
    v7 = v34;
    v10 = v32;
    v13 = v14;
  }

  if ([v36 count])
  {
    v37 = 0;
    [v9 save:&v37];
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
    v26 = [(BSUIItemDescriptionCache *)self maxItemCount];
    if (v26 >= [v21 count])
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
        v27 = [v21 objectAtIndexedSubscript:v26];
        [v4 deleteObject:v27];

        ++v26;
      }

      while (v26 < [v21 count]);
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

- (id)q_itemDescriptionFromCachedItemDescription:(id)a3 moc:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [BSUIItemDescription alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_328E0;
  v14[3] = &unk_388210;
  v15 = v7;
  v16 = v6;
  v17 = a2;
  v9 = v6;
  v10 = v7;
  v11 = [BCLazyValue objectAsyncProducer:v14];
  v12 = [(BSUIItemDescription *)v8 initWithCachedItemDescription:v9 lazyNotes:v11];

  return v12;
}

@end