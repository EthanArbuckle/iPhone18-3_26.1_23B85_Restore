@interface MTCoreSpotlightController
- (BOOL)hasBeenIndexed;
- (MTCoreSpotlightController)init;
- (MTCoreSpotlightController)initWithAnnotator:(id)annotator;
- (id)savedPartialUploadStateIndexPath;
- (void)_didCompleteBatchProcessingBatchGenerator:(id)generator state:(int64_t)state error:(id)error;
- (void)_onIndexingQueueHandleNextBatchOrUpdateRequest;
- (void)_onIndexingQueuePerformUpdateRequest:(id)request;
- (void)_onQueueCancelCurrentReindexAll;
- (void)_onQueuePerformCompletionsForGenerator:(id)generator error:(id)error;
- (void)_onQueueStartProcessNextBatchInGenerator:(id)generator searchableIndex:(id)index;
- (void)_performDeferredIndexAll;
- (void)_podcastArtworkDidChangeNotification:(id)notification;
- (void)_prepareToHandleNextBatchWithReadyBlock:(id)block;
- (void)_startProcessNextBatchInGenerator:(id)generator searchableIndex:(id)index;
- (void)clearHasBeenIndexed;
- (void)clearPartialUploadState;
- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers;
- (void)indexAllDataWithSearchableIndex:(id)index completionHandler:(id)handler;
- (void)libraryDidChange:(id)change;
- (void)markHasBeenIndexed;
- (void)savePartialUploadStateIndexPath:(id)path;
- (void)scheduleIndexAllIfNecessary;
- (void)searchableIndex:(id)index indexSearchableItems:(id)items completionHandler:(id)handler;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)updateSearchableIndexWithReason:(id)reason searchableIndex:(id)index entityLoadingBlock:(id)block completion:(id)completion;
- (void)updateStationsWithUUIDs:(id)ds;
@end

@implementation MTCoreSpotlightController

- (MTCoreSpotlightController)init
{
  v3 = objc_opt_new();
  v4 = [(MTCoreSpotlightController *)self initWithAnnotator:v3];

  return v4;
}

- (void)updateStationsWithUUIDs:(id)ds
{
  dsCopy = ds;
  allObjects = [dsCopy allObjects];
  v6 = [allObjects componentsJoinedByString:{@", "}];
  v7 = [NSString stringWithFormat:@"Update Stations (%@)", v6];

  searchableIndex = [(MTCoreSpotlightController *)self searchableIndex];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AF844;
  v10[3] = &unk_1004DAD00;
  v11 = dsCopy;
  v9 = dsCopy;
  [(MTCoreSpotlightController *)self updateSearchableIndexWithReason:v7 searchableIndex:searchableIndex entityLoadingBlock:v10 completion:0];
}

- (void)scheduleIndexAllIfNecessary
{
  objc_initWeak(&location, self);
  if (![(MTCoreSpotlightController *)self hasBeenIndexed])
  {
    v3 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Indexing] *** deferring initial indexAll until sync/feedUpdates are idle", buf, 2u);
    }

    [(MTCoreSpotlightController *)self setHasDeferredIndexAll:1];
    v4 = +[MTFeedUpdateIdleCoordinator sharedInstance];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000AFA5C;
    v5[3] = &unk_1004D9E80;
    objc_copyWeak(&v6, &location);
    [v4 scheduleFeedUpdateIdleBlock:v5];

    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&location);
}

- (void)_performDeferredIndexAll
{
  if ([(MTCoreSpotlightController *)self hasDeferredIndexAll])
  {
    v3 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Indexing] *** performing initial indexAll", v5, 2u);
    }

    [(MTCoreSpotlightController *)self setHasDeferredIndexAll:0];
    searchableIndex = [(MTCoreSpotlightController *)self searchableIndex];
    [(MTCoreSpotlightController *)self indexAllDataWithSearchableIndex:searchableIndex completionHandler:0];
  }
}

- (void)indexAllDataWithSearchableIndex:(id)index completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = handlerCopy;
  }

  else
  {
    v6 = &stru_1004DAD20;
  }

  indexingQueue = [(MTCoreSpotlightController *)self indexingQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000AFC94;
  v9[3] = &unk_1004D8520;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(indexingQueue, v9);
}

- (void)updateSearchableIndexWithReason:(id)reason searchableIndex:(id)index entityLoadingBlock:(id)block completion:(id)completion
{
  reasonCopy = reason;
  indexCopy = index;
  blockCopy = block;
  completionCopy = completion;
  indexingQueue = [(MTCoreSpotlightController *)self indexingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B0018;
  block[3] = &unk_1004DAD48;
  block[4] = self;
  v20 = reasonCopy;
  v21 = indexCopy;
  v22 = blockCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = indexCopy;
  v17 = blockCopy;
  v18 = reasonCopy;
  dispatch_async(indexingQueue, block);
}

- (void)_onQueueCancelCurrentReindexAll
{
  indexAllBatchGenerator = [(MTCoreSpotlightController *)self indexAllBatchGenerator];

  if (indexAllBatchGenerator)
  {
    v4 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      indexAllBatchGenerator2 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];
      v8 = 138412290;
      v9 = indexAllBatchGenerator2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Indexing] *** canceling current indexAll [%@] ***", &v8, 0xCu);
    }

    indexAllBatchGenerator3 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];
    [indexAllBatchGenerator3 cancel];

    indexAllBatchGenerator4 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];
    [(MTCoreSpotlightController *)self _onQueuePerformCompletionsForGenerator:indexAllBatchGenerator4 error:0];

    [(MTCoreSpotlightController *)self setIndexAllBatchGenerator:0];
    [(MTCoreSpotlightController *)self setHasIndexingOperationInProgress:0];
  }
}

- (void)_onQueuePerformCompletionsForGenerator:(id)generator error:(id)error
{
  errorCopy = error;
  generatorCopy = generator;
  indexAllCompletions = [generatorCopy indexAllCompletions];
  v8 = [indexAllCompletions copy];

  indexAllCompletions2 = [generatorCopy indexAllCompletions];

  [indexAllCompletions2 removeAllObjects];
  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B039C;
  v13[3] = &unk_1004D8798;
  v14 = v8;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_onIndexingQueueHandleNextBatchOrUpdateRequest
{
  if (![(MTCoreSpotlightController *)self hasIndexingOperationInProgress])
  {
    firstObject = [(NSMutableArray *)self->_updateIndexRequests firstObject];
    if (firstObject)
    {
      [(NSMutableArray *)self->_updateIndexRequests removeObjectAtIndex:0];
      [(MTCoreSpotlightController *)self _onIndexingQueuePerformUpdateRequest:firstObject];
    }

    else
    {
      indexAllBatchGenerator = [(MTCoreSpotlightController *)self indexAllBatchGenerator];

      if (indexAllBatchGenerator)
      {
        [(MTCoreSpotlightController *)self setHasIndexingOperationInProgress:1];
        indexAllBatchGenerator2 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];
        searchableIndex = [(MTCoreSpotlightController *)self searchableIndex];
        [(MTCoreSpotlightController *)self _onQueueStartProcessNextBatchInGenerator:indexAllBatchGenerator2 searchableIndex:searchableIndex];
      }
    }
  }
}

- (void)_onIndexingQueuePerformUpdateRequest:(id)request
{
  requestCopy = request;
  [(MTCoreSpotlightController *)self setHasIndexingOperationInProgress:1];
  searchableIndex = [requestCopy searchableIndex];
  v6 = +[MTDB sharedInstance];
  privateQueueContext = [v6 privateQueueContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B0644;
  v11[3] = &unk_1004D8DA8;
  v12 = requestCopy;
  v13 = privateQueueContext;
  selfCopy = self;
  v15 = searchableIndex;
  v8 = searchableIndex;
  v9 = privateQueueContext;
  v10 = requestCopy;
  [v9 performBlock:v11];
}

- (void)_prepareToHandleNextBatchWithReadyBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block);
  }
}

- (void)_onQueueStartProcessNextBatchInGenerator:(id)generator searchableIndex:(id)index
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0B40;
  v7[3] = &unk_1004D94C8;
  selfCopy = self;
  generatorCopy = generator;
  indexCopy = index;
  v5 = indexCopy;
  v6 = generatorCopy;
  [(MTCoreSpotlightController *)selfCopy _prepareToHandleNextBatchWithReadyBlock:v7];
}

- (void)_startProcessNextBatchInGenerator:(id)generator searchableIndex:(id)index
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0C0C;
  v7[3] = &unk_1004DAE50;
  v7[4] = self;
  generatorCopy = generator;
  indexCopy = index;
  v5 = indexCopy;
  v6 = generatorCopy;
  [v6 collectNextBatch:v7];
}

- (void)_didCompleteBatchProcessingBatchGenerator:(id)generator state:(int64_t)state error:(id)error
{
  generatorCopy = generator;
  errorCopy = error;
  v10 = errorCopy;
  if (state == 4 && !errorCopy)
  {
    [(MTCoreSpotlightController *)self markHasBeenIndexed];
    [(MTCoreSpotlightController *)self clearPartialUploadState];
  }

  indexingQueue = [(MTCoreSpotlightController *)self indexingQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000B10A8;
  v14[3] = &unk_1004DAE78;
  v15 = generatorCopy;
  selfCopy = self;
  v17 = v10;
  stateCopy = state;
  v12 = v10;
  v13 = generatorCopy;
  dispatch_async(indexingQueue, v14);
}

- (MTCoreSpotlightController)initWithAnnotator:(id)annotator
{
  annotatorCopy = annotator;
  v17.receiver = self;
  v17.super_class = MTCoreSpotlightController;
  v6 = [(MTCoreSpotlightController *)&v17 init];
  if (v6)
  {
    v7 = +[MTDB sharedInstance];
    [v7 addChangeNotifier:v6];

    objc_storeStrong(&v6->_annotator, annotator);
    v8 = +[NSMutableArray array];
    updateIndexRequests = v6->_updateIndexRequests;
    v6->_updateIndexRequests = v8;

    v10 = dispatch_queue_create("com.podcasts.CoreSpotlightIndexingQueue", 0);
    indexingQueue = v6->_indexingQueue;
    v6->_indexingQueue = v10;

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v6 selector:"_podcastArtworkDidChangeNotification:" name:kMTImageDownloaderArtworkDidLoadNotification object:0];

    v13 = [CSSearchableIndex alloc];
    v14 = [v13 initWithName:@"Podcasts" bundleIdentifier:kMTApplicationBundleIdentifier];
    searchableIndex = v6->_searchableIndex;
    v6->_searchableIndex = v14;

    [(CSSearchableIndex *)v6->_searchableIndex setIndexDelegate:v6];
  }

  return v6;
}

- (void)_podcastArtworkDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = _MTLogCategorySpotlight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got podcast artwork change notification", buf, 2u);
  }

  v6 = MTImageDownloaderArtworkDidLoadCacheKeys();

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B14B8;
  v13[3] = &unk_1004DAEC8;
  v14 = dispatch_group_create();
  v7 = v14;
  [v6 enumerateObjectsUsingBlock:v13];
  v8 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1588;
  block[3] = &unk_1004D8798;
  v11 = v6;
  selfCopy = self;
  v9 = v6;
  dispatch_group_notify(v7, v8, block);
}

- (void)searchableIndex:(id)index indexSearchableItems:(id)items completionHandler:(id)handler
{
  indexCopy = index;
  itemsCopy = items;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = handlerCopy;
  }

  else
  {
    v10 = &stru_1004DAF10;
  }

  if ([itemsCopy count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B19E4;
    v11[3] = &unk_1004DAF60;
    v12 = indexCopy;
    v13 = itemsCopy;
    v14 = v10;
    [v12 indexSearchableItems:v13 completionHandler:v11];
  }

  else
  {
    v10->invoke(v10, 0);
  }
}

- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    searchableIndex = [(MTCoreSpotlightController *)self searchableIndex];
    allObjects = [identifiersCopy allObjects];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B1B78;
    v7[3] = &unk_1004DAF88;
    v7[4] = self;
    v8 = identifiersCopy;
    [searchableIndex deleteSearchableItemsWithIdentifiers:allObjects completionHandler:v7];
  }
}

- (void)libraryDidChange:(id)change
{
  changeCopy = change;
  if ([(MTCoreSpotlightController *)self hasDeferredIndexAll])
  {
    v5 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dropping index update request (context:didInsertObjects:) since we haven't yet received the initial indexAllData", buf, 2u);
    }
  }

  else
  {
    v20[0] = kMTPodcastEntityName;
    v20[1] = kMTEpisodeEntityName;
    v20[2] = kMTPlaylistEntityName;
    v6 = [NSArray arrayWithObjects:v20 count:3];
    v7 = [changeCopy hasInsertsForEntityNames:v6];

    if (v7)
    {
      *buf = 0;
      v15 = buf;
      v16 = 0x3032000000;
      v17 = sub_100008A1C;
      v18 = sub_10003B4E4;
      v8 = +[MTDB sharedInstance];
      importContext = [v8 importContext];

      v9 = *(v15 + 5);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000B1E10;
      v10[3] = &unk_1004D92B0;
      selfCopy = self;
      v13 = buf;
      v11 = changeCopy;
      [v9 performBlock:v10];

      _Block_object_dispose(buf, 8);
    }
  }
}

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  indexCopy = index;
  handlerCopy = handler;
  indexingQueue = [(MTCoreSpotlightController *)self indexingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B21F0;
  block[3] = &unk_1004DABC8;
  block[4] = self;
  v12 = indexCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = indexCopy;
  dispatch_async(indexingQueue, block);
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  indexCopy = index;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v11 = dispatch_get_global_queue(-32768, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B23FC;
  v15[3] = &unk_1004D8770;
  v16 = identifiersCopy;
  selfCopy = self;
  v18 = indexCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = indexCopy;
  v14 = identifiersCopy;
  dispatch_async(v11, v15);
}

- (BOOL)hasBeenIndexed
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"MTCoreSpotlightDataHasBeenIndexed_v3"];

  return v3;
}

- (void)markHasBeenIndexed
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"MTCoreSpotlightDataHasBeenIndexed_v3"];
}

- (void)clearHasBeenIndexed
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"MTCoreSpotlightDataHasBeenIndexed_v3"];
}

- (void)clearPartialUploadState
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:@"MTCoreSpotlightGlobalReindex_BatchNumber"];

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:@"kMTCoreSpotlightGlobalReindex_ObjectType"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObjectForKey:@"MTCoreSpotlightGlobalReindex_IndexInBatch"];
}

- (id)savedPartialUploadStateIndexPath
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"MTCoreSpotlightGlobalReindex_BatchNumber"];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"kMTCoreSpotlightGlobalReindex_ObjectType"];

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"MTCoreSpotlightGlobalReindex_IndexInBatch"];

  if (v3)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = +[MTCoreSpotlightUtil indexPathForObjectType:batch:indexInBatch:](MTCoreSpotlightUtil, "indexPathForObjectType:batch:indexInBatch:", [v5 unsignedIntegerValue], objc_msgSend(v3, "unsignedIntegerValue"), objc_msgSend(v7, "unsignedIntegerValue"));
  }

  return v10;
}

- (void)savePartialUploadStateIndexPath:(id)path
{
  pathCopy = path;
  v4 = [MTCoreSpotlightUtil objectTypeForIndexPath:pathCopy];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [NSNumber numberWithUnsignedInteger:v4];
  [v5 setObject:v6 forKey:@"kMTCoreSpotlightGlobalReindex_ObjectType"];

  v7 = [MTCoreSpotlightUtil batchForIndexPath:pathCopy];
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [NSNumber numberWithUnsignedInteger:v7];
  [v8 setObject:v9 forKey:@"MTCoreSpotlightGlobalReindex_BatchNumber"];

  v10 = [MTCoreSpotlightUtil indexInBatchForIndexPath:pathCopy];
  v12 = +[NSUserDefaults standardUserDefaults];
  v11 = [NSNumber numberWithUnsignedInteger:v10];
  [v12 setObject:v11 forKey:@"MTCoreSpotlightGlobalReindex_IndexInBatch"];
}

@end