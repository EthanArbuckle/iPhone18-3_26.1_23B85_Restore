@interface BKLibraryProvider
+ (id)continueReadingAssetsProvider:(unint64_t)provider;
+ (id)endOfBookTopPicksProvider:(id)provider :(unint64_t)a4;
+ (id)localStoreAssetsLibraryProvider:(unint64_t)provider;
+ (id)mySamplesLibraryProvider:(unint64_t)provider;
+ (id)previouslyReadAssetsProvider;
+ (id)recentAudiobookAssetProvider:(unint64_t)provider;
+ (id)recentAudiobookAssetProviderForCarplay;
+ (id)recentLibraryAssetsProvider:(unint64_t)provider;
+ (id)recentlyEngagedAssetsProvider:(unint64_t)provider;
+ (id)searchLibraryProvider:(id)provider :(unint64_t)a4;
+ (id)storeAssetProvider:(unint64_t)provider;
+ (id)wantToReadLibraryProvider:(unint64_t)provider;
- (BKLibraryProvider)initWithFetchRequest:(id)request name:(id)name;
- (BKLibraryProvider)initWithFetchRequest:(id)request name:(id)name moc:(id)moc;
- (BKLibraryProviderDelegate)delegate;
- (BOOL)isContentLoaded;
- (BSUIDynamicArray)dynamicArray;
- (id)_assetDictionariesForDynamicArrayWithFetchRequest:(id)request isInitialFetch:(BOOL)fetch matchedAssets:(id)assets;
- (id)assetsFromFetchRequestResults:(id)results;
- (id)dictionariesFromAssets:(id)assets limit:(unint64_t)limit;
- (id)fetchedContent;
- (void)_commonInitWithFetchRequest:(id)request name:(id)name moc:(id)moc;
- (void)_mocDidChangeNotification:(id)notification;
- (void)_refreshObjectsIfNeeded;
- (void)configureDynamicArray;
- (void)configureFetchedResultsControllerWithFetchRequest:(id)request;
- (void)configureMOC:(id)c;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)dealloc;
@end

@implementation BKLibraryProvider

+ (id)wantToReadLibraryProvider:(unint64_t)provider
{
  v5 = [NSFetchRequest alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithEntityName:v7];

  [v8 setReturnsObjectsAsFaults:0];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:0];
  v19[0] = v9;
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:0];
  v19[1] = v10;
  v11 = [NSArray arrayWithObjects:v19 count:2];
  [v8 setSortDescriptors:v11];

  v12 = [BKLibraryManager predicateForCollectionMembersInCollectionID:kBKCollectionDefaultIDWantToRead hideUnownedItems:0];
  v18[0] = v12;
  v13 = +[BKLibraryManager predicateForExcludingCollectionMembersWithContainerLibraryAssets];
  v18[1] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:2];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];
  [v8 setPredicate:v15];

  if (provider)
  {
    [v8 setFetchLimit:provider];
  }

  v16 = [[self alloc] initWithFetchRequest:v8 name:@"want-to-read"];

  return v16;
}

+ (id)mySamplesLibraryProvider:(unint64_t)provider
{
  v5 = [NSFetchRequest alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithEntityName:v7];

  [v8 setReturnsObjectsAsFaults:0];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:0];
  v19[0] = v9;
  v10 = [NSSortDescriptor sortDescriptorWithKey:@"assetID" ascending:0];
  v19[1] = v10;
  v11 = [NSArray arrayWithObjects:v19 count:2];
  [v8 setSortDescriptors:v11];

  v12 = [BKLibraryManager predicateForCollectionMembersInCollectionID:kBKCollectionDefaultIDSamples hideUnownedItems:0];
  v18[0] = v12;
  v13 = +[BKLibraryManager predicateForExcludingCollectionMembersWithContainerLibraryAssets];
  v18[1] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:2];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];
  [v8 setPredicate:v15];

  if (provider)
  {
    [v8 setFetchLimit:provider];
  }

  v16 = [[self alloc] initWithFetchRequest:v8 name:@"my-samples"];

  return v16;
}

+ (id)localStoreAssetsLibraryProvider:(unint64_t)provider
{
  v5 = [NSFetchRequest alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithEntityName:v7];

  [v8 setReturnsObjectsAsFaults:0];
  v9 = [[NSSortDescriptor alloc] initWithKey:@"storeID" ascending:0];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  [v8 setSortDescriptors:v10];

  v11 = +[BKLibraryManager predicateForLocalOrDownloadingStoreAssets];
  [v8 setPredicate:v11];

  if (provider)
  {
    [v8 setFetchLimit:provider];
  }

  v12 = [[self alloc] initWithFetchRequest:v8 name:@"local-store-assets"];

  return v12;
}

+ (id)searchLibraryProvider:(id)provider :(unint64_t)a4
{
  providerCopy = provider;
  v6 = [[BKLibrarySearchProvider alloc] initWithFetchRequest:0 name:@"search" searchTerm:providerCopy limit:a4];

  return v6;
}

+ (id)recentLibraryAssetsProvider:(unint64_t)provider
{
  v5 = [NSFetchRequest alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithEntityName:v7];

  [v8 setReturnsObjectsAsFaults:0];
  v9 = [NSSortDescriptor sortDescriptorWithKey:@"lastOpenDate" ascending:0];
  v15 = v9;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  [v8 setSortDescriptors:v10];

  v11 = +[BKLibraryManager predicateForAllOwnedBooks];
  [v8 setPredicate:v11];

  if (provider <= 1)
  {
    providerCopy = 1;
  }

  else
  {
    providerCopy = provider;
  }

  [v8 setFetchLimit:providerCopy];
  v13 = [[self alloc] initWithFetchRequest:v8 name:@"recents"];

  return v13;
}

+ (id)recentlyEngagedAssetsProvider:(unint64_t)provider
{
  v5 = +[BKLibraryManager fetchRequestForRecentlyEngaged];
  [v5 setReturnsObjectsAsFaults:0];
  if (provider <= 1)
  {
    providerCopy = 1;
  }

  else
  {
    providerCopy = provider;
  }

  [v5 setFetchLimit:providerCopy];
  v7 = [[self alloc] initWithFetchRequest:v5 name:@"recents"];

  return v7;
}

+ (id)recentAudiobookAssetProvider:(unint64_t)provider
{
  v5 = [NSFetchRequest alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithEntityName:v7];

  [v8 setReturnsObjectsAsFaults:0];
  v9 = [NSSortDescriptor sortDescriptorWithKey:@"lastOpenDate" ascending:0];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  [v8 setSortDescriptors:v10];

  v11 = +[BKLibraryManager predicateForAllOwnedAudiobooks];
  [v8 setPredicate:v11];

  if (provider)
  {
    [v8 setFetchLimit:provider];
  }

  v12 = [[self alloc] initWithFetchRequest:v8 name:@"recent-audiobooks"];

  return v12;
}

+ (id)recentAudiobookAssetProviderForCarplay
{
  v3 = [NSFetchRequest alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithEntityName:v5];

  [v6 setReturnsObjectsAsFaults:0];
  v7 = [NSSortDescriptor sortDescriptorWithKey:@"lastOpenDate" ascending:0];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  [v6 setSortDescriptors:v8];

  v9 = +[BKLibraryManager predicateForAllOwnedAudiobooks];
  [v6 setPredicate:v9];

  v10 = [[self alloc] initWithFetchRequest:v6 name:@"recent-audiobooks-carplay"];

  return v10;
}

+ (id)continueReadingAssetsProvider:(unint64_t)provider
{
  v5 = +[BKLibraryManager fetchRequestForContinueReading];
  [v5 setReturnsObjectsAsFaults:0];
  if (provider)
  {
    [v5 setFetchLimit:provider];
  }

  v6 = [[self alloc] initWithFetchRequest:v5 name:@"continueReading"];
  [v6 setDynamicArray:0];

  return v6;
}

+ (id)previouslyReadAssetsProvider
{
  v3 = +[BKLibraryManager fetchRequestForPreviouslyRead];
  [v3 setReturnsObjectsAsFaults:0];
  v4 = [[self alloc] initWithFetchRequest:v3 name:@"previouslyRead"];

  return v4;
}

+ (id)storeAssetProvider:(unint64_t)provider
{
  v5 = [NSFetchRequest alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithEntityName:v7];

  [v8 setReturnsObjectsAsFaults:0];
  v9 = [NSSortDescriptor sortDescriptorWithKey:@"lastOpenDate" ascending:0];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v14 count:1];
  [v8 setSortDescriptors:v10];

  v11 = +[BKLibraryManager predicateForPurchasedLibraryAssets];
  [v8 setPredicate:v11];

  if (provider)
  {
    [v8 setFetchLimit:provider];
  }

  v12 = [[self alloc] initWithFetchRequest:v8 name:@"store-assets"];

  return v12;
}

+ (id)endOfBookTopPicksProvider:(id)provider :(unint64_t)a4
{
  providerCopy = provider;
  objc_opt_class();
  v7 = +[BCRCDataContainer defaultContainer];
  configs = [v7 configs];
  v9 = [configs objectForKeyedSubscript:@"readingNow"];
  v10 = BUDynamicCast();

  if (v10)
  {
    objc_opt_class();
    v11 = [v10 objectForKeyedSubscript:@"endOfBookFinishedPercentage"];
    v12 = BUDynamicCast();

    integerValue = [v12 integerValue];
    if (v12)
    {
      v14 = integerValue < 1;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = 0.6;
    }

    else
    {
      v16 = 100;
      if (integerValue < 0x64)
      {
        v16 = integerValue;
      }

      v15 = v16;
      if (integerValue >= 2)
      {
        do
        {
          v15 = v15 / 10.0;
        }

        while (v15 > 1.0);
      }
    }
  }

  else
  {
    v15 = 0.6;
  }

  v17 = [NSFetchRequest alloc];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [v17 initWithEntityName:v19];

  [v20 setReturnsObjectsAsFaults:0];
  v21 = [NSSortDescriptor sortDescriptorWithKey:@"bookHighWaterMarkProgress" ascending:0];
  v32 = v21;
  v22 = [NSArray arrayWithObjects:&v32 count:1];
  [v20 setSortDescriptors:v22];

  v23 = +[BKLibraryManager predicateForPurchasedLibraryAssets];
  v24 = [BKLibraryManager predicateForContentWithHighWaterMarkOrReadingProgressValue:v15, v23];
  v31[1] = v24;
  v25 = [NSArray arrayWithObjects:v31 count:2];
  v26 = [v25 mutableCopy];

  v27 = [BKLibraryManager predicateForLastOpenedDateAfter:providerCopy];
  if (v27)
  {
    [v26 addObject:v27];
  }

  v28 = [NSCompoundPredicate andPredicateWithSubpredicates:v26];
  [v20 setPredicate:v28];

  if (a4)
  {
    [v20 setFetchLimit:a4];
  }

  v29 = [[self alloc] initWithFetchRequest:v20 name:@"eob-top-picks"];

  return v29;
}

- (BKLibraryProvider)initWithFetchRequest:(id)request name:(id)name moc:(id)moc
{
  requestCopy = request;
  nameCopy = name;
  mocCopy = moc;
  v14.receiver = self;
  v14.super_class = BKLibraryProvider;
  v11 = [(BKLibraryProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(BKLibraryProvider *)v11 _commonInitWithFetchRequest:requestCopy name:nameCopy moc:mocCopy];
  }

  return v12;
}

- (BKLibraryProvider)initWithFetchRequest:(id)request name:(id)name
{
  requestCopy = request;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = BKLibraryProvider;
  v8 = [(BKLibraryProvider *)&v12 init];
  if (v8)
  {
    v9 = +[_BKLibraryProviderContext sharedInstance];
    v10 = [v9 moc];
    [(BKLibraryProvider *)v8 _commonInitWithFetchRequest:requestCopy name:nameCopy moc:v10];
  }

  return v8;
}

- (void)_commonInitWithFetchRequest:(id)request name:(id)name moc:(id)moc
{
  mocCopy = moc;
  requestCopy = request;
  v9 = [name copy];
  name = self->_name;
  self->_name = v9;

  v11 = objc_opt_new();
  objectsToRefresh = self->_objectsToRefresh;
  self->_objectsToRefresh = v11;

  [(BKLibraryProvider *)self configureMOC:mocCopy];
  [(BKLibraryProvider *)self configureDynamicArray];
  [(BKLibraryProvider *)self configureFetchedResultsControllerWithFetchRequest:requestCopy];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSManagedObjectContextObjectsDidChangeNotification object:self->_moc];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NSManagedObjectContextDidMergeChangesObjectIDsNotification object:self->_moc];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];

  v6.receiver = self;
  v6.super_class = BKLibraryProvider;
  [(BKLibraryProvider *)&v6 dealloc];
}

- (void)configureMOC:(id)c
{
  objc_storeStrong(&self->_moc, c);
  cCopy = c;
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_mocDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:self->_moc];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_mocDidChangeNotification:" name:NSManagedObjectContextObjectsDidChangeNotification object:self->_moc];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_mocDidMergeNotification:" name:NSManagedObjectContextDidMergeChangesObjectIDsNotification object:self->_moc];
}

- (void)configureFetchedResultsControllerWithFetchRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v5 = sub_1000F24B4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10078EFC8(self, v5);
    }

    moc = self->_moc;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F3DB8;
    v9[3] = &unk_100A03440;
    v9[4] = self;
    v10 = requestCopy;
    [(NSManagedObjectContext *)moc performBlock:v9];
  }

  else
  {
    v7 = self->_moc;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F3FC0;
    v8[3] = &unk_100A033C8;
    v8[4] = self;
    [(NSManagedObjectContext *)v7 performBlock:v8];
  }
}

- (void)configureDynamicArray
{
  v3 = [BSUIDynamicArray alloc];
  v9[0] = @"uniqueId";
  v9[1] = @"updateType";
  v10[0] = BSUIAssetKeyAssetID;
  v10[1] = @"move";
  v9[2] = @"debugName";
  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = @"unknown";
  }

  v5 = [@"BKLibraryProvider." stringByAppendingString:name];
  v10[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = [v3 initWithArray:&__NSArray0__struct options:v6];
  dynamicArray = self->_dynamicArray;
  self->_dynamicArray = v7;
}

- (BSUIDynamicArray)dynamicArray
{
  v2 = self->_dynamicArray;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"BCRecentBooksForceEmpty"];

  if (v4)
  {
    v5 = [BSUIDynamicArray alloc];
    v9[0] = @"uniqueId";
    v9[1] = @"updateType";
    v10[0] = BSUIAssetKeyAssetID;
    v10[1] = @"move";
    v9[2] = @"debugName";
    v10[2] = @"BKLibraryProvider.recentBooks.fake";
    v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
    v7 = [v5 initWithArray:&__NSArray0__struct options:v6];

    v2 = v7;
  }

  return v2;
}

- (BOOL)isContentLoaded
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(BKLibraryProvider *)self moc];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F4380;
  v5[3] = &unk_100A036C0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (id)fetchedContent
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100027374;
  v11 = sub_100027600;
  v12 = 0;
  v3 = [(BKLibraryProvider *)self moc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F4508;
  v6[3] = &unk_100A037D8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)assetsFromFetchRequestResults:(id)results
{
  resultsCopy = results;
  v4 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = resultsCopy;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          asset = [v9 asset];
          v11 = BUDynamicCast();
        }

        else
        {
          v11 = BUDynamicCast();
        }

        v12 = [[BSUIAsset alloc] initWithLibraryAsset:v11];
        [v4 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)dictionariesFromAssets:(id)assets limit:(unint64_t)limit
{
  assetsCopy = assets;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [assetsCopy count]);
  +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [assetsCopy count]);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F486C;
  v13 = v12[3] = &unk_100A07168;
  v8 = v7;
  v14 = v8;
  selfCopy = self;
  limitCopy = limit;
  v9 = v13;
  [assetsCopy enumerateObjectsUsingBlock:v12];

  v10 = v8;
  return v8;
}

- (void)controllerWillChangeContent:(id)content
{
  contentCopy = content;
  fetchedResultsController = [(BKLibraryProvider *)self fetchedResultsController];

  if (fetchedResultsController == contentCopy)
  {
    v6 = [TUIIndexMapper alloc];
    fetchedObjects = [contentCopy fetchedObjects];
    v8 = [v6 initWithCount:{objc_msgSend(fetchedObjects, "count")}];
    [(BKLibraryProvider *)self setPendingUpdates:v8];

    v9 = sub_1000F24B4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10078F24C(self, contentCopy);
    }
  }
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  controllerCopy = controller;
  fetchedResultsController = [(BKLibraryProvider *)self fetchedResultsController];

  if (fetchedResultsController == controllerCopy)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        pendingUpdates = [(BKLibraryProvider *)self pendingUpdates];
        [pendingUpdates moveFromIndex:objc_msgSend(pathCopy toIndex:{"row"), objc_msgSend(indexPathCopy, "row")}];
        goto LABEL_14;
      }

      if (type == 4)
      {
        pendingUpdates = [(BKLibraryProvider *)self pendingUpdates];
        [pendingUpdates updateAtIndex:{objc_msgSend(pathCopy, "row")}];
        goto LABEL_14;
      }
    }

    else
    {
      if (type == 1)
      {
        pendingUpdates = [(BKLibraryProvider *)self pendingUpdates];
        [pendingUpdates insertAtIndex:{objc_msgSend(indexPathCopy, "row")}];
        goto LABEL_14;
      }

      if (type == 2)
      {
        pendingUpdates = [(BKLibraryProvider *)self pendingUpdates];
        [pendingUpdates deleteAtIndex:{objc_msgSend(pathCopy, "row")}];
LABEL_14:

        goto LABEL_15;
      }
    }

    v16 = sub_1000F24B4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10078F328(self);
    }
  }

LABEL_15:
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  fetchedResultsController = [(BKLibraryProvider *)self fetchedResultsController];

  if (fetchedResultsController == contentCopy)
  {
    pendingUpdates = [(BKLibraryProvider *)self pendingUpdates];
    [(BKLibraryProvider *)self setPendingUpdates:0];
    v7 = [(BKLibraryProvider *)self moc];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F4CB0;
    v9[3] = &unk_100A03A30;
    v9[4] = self;
    v10 = contentCopy;
    v11 = pendingUpdates;
    v8 = pendingUpdates;
    [v7 performBlockAndWait:v9];
  }
}

- (void)_mocDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  fetchedResultsController = [(BKLibraryProvider *)self fetchedResultsController];
  fetchRequest = [fetchedResultsController fetchRequest];
  entity = [fetchRequest entity];

  name = [entity name];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [name isEqualToString:v10];

  if (v11)
  {
    v12 = [(BKLibraryProvider *)self moc];
    v13 = [NSEntityDescription entityForName:@"BKLibraryAsset" inManagedObjectContext:v12];

    userInfo = [notificationCopy userInfo];
    v15 = [userInfo objectForKeyedSubscript:NSRefreshedObjectsKey];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000F5514;
    v17[3] = &unk_100A07208;
    v18 = v13;
    selfCopy = self;
    v16 = v13;
    [v15 enumerateObjectsUsingBlock:v17];
  }
}

- (void)_refreshObjectsIfNeeded
{
  if ([(NSMutableSet *)self->_objectsToRefresh count])
  {
    fetchedResultsController = [(BKLibraryProvider *)self fetchedResultsController];
    fetchedObjects = [fetchedResultsController fetchedObjects];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000F5664;
    v5[3] = &unk_100A07230;
    v5[4] = self;
    [fetchedObjects enumerateObjectsUsingBlock:v5];

    [(NSMutableSet *)self->_objectsToRefresh removeAllObjects];
  }
}

- (id)_assetDictionariesForDynamicArrayWithFetchRequest:(id)request isInitialFetch:(BOOL)fetch matchedAssets:(id)assets
{
  assetsCopy = assets;
  v8 = -[BKLibraryProvider dictionariesFromAssets:limit:](self, "dictionariesFromAssets:limit:", assetsCopy, [request fetchLimit]);

  return v8;
}

- (BKLibraryProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end