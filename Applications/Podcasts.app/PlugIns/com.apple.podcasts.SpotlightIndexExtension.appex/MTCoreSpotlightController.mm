@interface MTCoreSpotlightController
- (BOOL)hasBeenIndexed;
- (MTCoreSpotlightController)init;
- (MTCoreSpotlightController)initWithAnnotator:(id)a3;
- (id)savedPartialUploadStateIndexPath;
- (void)_didCompleteBatchProcessingBatchGenerator:(id)a3 state:(int64_t)a4 error:(id)a5;
- (void)_onIndexingQueueHandleNextBatchOrUpdateRequest;
- (void)_onIndexingQueuePerformUpdateRequest:(id)a3;
- (void)_onQueueCancelCurrentReindexAll;
- (void)_onQueuePerformCompletionsForGenerator:(id)a3 error:(id)a4;
- (void)_onQueueStartProcessNextBatchInGenerator:(id)a3 searchableIndex:(id)a4;
- (void)_prepareToHandleNextBatchWithReadyBlock:(id)a3;
- (void)_startProcessNextBatchInGenerator:(id)a3 searchableIndex:(id)a4;
- (void)clearHasBeenIndexed;
- (void)clearPartialUploadState;
- (void)deleteSearchableItemsWithIdentifiers:(id)a3;
- (void)indexAllDataWithSearchableIndex:(id)a3 completionHandler:(id)a4;
- (void)libraryDidChange:(id)a3;
- (void)markHasBeenIndexed;
- (void)savePartialUploadStateIndexPath:(id)a3;
- (void)searchableIndex:(id)a3 indexSearchableItems:(id)a4 completionHandler:(id)a5;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
- (void)updateSearchableIndexWithReason:(id)a3 searchableIndex:(id)a4 entityLoadingBlock:(id)a5 completion:(id)a6;
- (void)updateStationsWithUUIDs:(id)a3;
@end

@implementation MTCoreSpotlightController

- (void)updateStationsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [v4 allObjects];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [NSString stringWithFormat:@"Update Stations (%@)", v6];

  v8 = [(MTCoreSpotlightController *)self searchableIndex];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004C38;
  v10[3] = &unk_1000146A8;
  v11 = v4;
  v9 = v4;
  [(MTCoreSpotlightController *)self updateSearchableIndexWithReason:v7 searchableIndex:v8 entityLoadingBlock:v10 completion:0];
}

- (void)indexAllDataWithSearchableIndex:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1000146E8;
  }

  v7 = [(MTCoreSpotlightController *)self indexingQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004DD8;
  v9[3] = &unk_100014710;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

- (void)updateSearchableIndexWithReason:(id)a3 searchableIndex:(id)a4 entityLoadingBlock:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MTCoreSpotlightController *)self indexingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000515C;
  block[3] = &unk_100014738;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)_onQueueCancelCurrentReindexAll
{
  v3 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];

  if (v3)
  {
    v4 = _MTLogCategorySpotlight();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Indexing] *** canceling current indexAll [%@] ***", &v8, 0xCu);
    }

    v6 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];
    [v6 cancel];

    v7 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];
    [(MTCoreSpotlightController *)self _onQueuePerformCompletionsForGenerator:v7 error:0];

    [(MTCoreSpotlightController *)self setIndexAllBatchGenerator:0];
    [(MTCoreSpotlightController *)self setHasIndexingOperationInProgress:0];
  }
}

- (void)_onQueuePerformCompletionsForGenerator:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 indexAllCompletions];
  v8 = [v7 copy];

  v9 = [v6 indexAllCompletions];

  [v9 removeAllObjects];
  v10 = dispatch_get_global_queue(0, 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000054E0;
  v13[3] = &unk_100014788;
  v14 = v8;
  v15 = v5;
  v11 = v5;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_onIndexingQueueHandleNextBatchOrUpdateRequest
{
  if (![(MTCoreSpotlightController *)self hasIndexingOperationInProgress])
  {
    v6 = [(NSMutableArray *)self->_updateIndexRequests firstObject];
    if (v6)
    {
      [(NSMutableArray *)self->_updateIndexRequests removeObjectAtIndex:0];
      [(MTCoreSpotlightController *)self _onIndexingQueuePerformUpdateRequest:v6];
    }

    else
    {
      v3 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];

      if (v3)
      {
        [(MTCoreSpotlightController *)self setHasIndexingOperationInProgress:1];
        v4 = [(MTCoreSpotlightController *)self indexAllBatchGenerator];
        v5 = [(MTCoreSpotlightController *)self searchableIndex];
        [(MTCoreSpotlightController *)self _onQueueStartProcessNextBatchInGenerator:v4 searchableIndex:v5];
      }
    }
  }
}

- (void)_onIndexingQueuePerformUpdateRequest:(id)a3
{
  v4 = a3;
  [(MTCoreSpotlightController *)self setHasIndexingOperationInProgress:1];
  v5 = [v4 searchableIndex];
  v6 = +[MTDB sharedInstance];
  v7 = [v6 privateQueueContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100005788;
  v11[3] = &unk_100014868;
  v12 = v4;
  v13 = v7;
  v14 = self;
  v15 = v5;
  v8 = v5;
  v9 = v7;
  v10 = v4;
  [v9 performBlock:v11];
}

- (void)_prepareToHandleNextBatchWithReadyBlock:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)_onQueueStartProcessNextBatchInGenerator:(id)a3 searchableIndex:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005C84;
  v7[3] = &unk_100014890;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(MTCoreSpotlightController *)v8 _prepareToHandleNextBatchWithReadyBlock:v7];
}

- (void)_startProcessNextBatchInGenerator:(id)a3 searchableIndex:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005D50;
  v7[3] = &unk_100014908;
  v7[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  [v6 collectNextBatch:v7];
}

- (void)_didCompleteBatchProcessingBatchGenerator:(id)a3 state:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 4 && !v9)
  {
    [(MTCoreSpotlightController *)self markHasBeenIndexed];
    [(MTCoreSpotlightController *)self clearPartialUploadState];
  }

  v11 = [(MTCoreSpotlightController *)self indexingQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000061EC;
  v14[3] = &unk_100014930;
  v15 = v8;
  v16 = self;
  v17 = v10;
  v18 = a4;
  v12 = v10;
  v13 = v8;
  dispatch_async(v11, v14);
}

- (MTCoreSpotlightController)init
{
  v3 = objc_opt_new();
  v4 = [(MTCoreSpotlightController *)self initWithAnnotator:v3];

  return v4;
}

- (MTCoreSpotlightController)initWithAnnotator:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = MTCoreSpotlightController;
  v6 = [(MTCoreSpotlightController *)&v16 init];
  if (v6)
  {
    v7 = +[MTDB sharedInstance];
    [v7 addChangeNotifier:v6];

    objc_storeStrong(&v6->_annotator, a3);
    v8 = +[NSMutableArray array];
    updateIndexRequests = v6->_updateIndexRequests;
    v6->_updateIndexRequests = v8;

    v10 = dispatch_queue_create("com.podcasts.CoreSpotlightIndexingQueue", 0);
    indexingQueue = v6->_indexingQueue;
    v6->_indexingQueue = v10;

    v12 = [CSSearchableIndex alloc];
    v13 = [v12 initWithName:@"Podcasts" bundleIdentifier:kMTApplicationBundleIdentifier];
    searchableIndex = v6->_searchableIndex;
    v6->_searchableIndex = v13;

    [(CSSearchableIndex *)v6->_searchableIndex setIndexDelegate:v6];
  }

  return v6;
}

- (void)searchableIndex:(id)a3 indexSearchableItems:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_100014950;
  }

  if ([v8 count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000065AC;
    v11[3] = &unk_1000149A0;
    v12 = v7;
    v13 = v8;
    v14 = v10;
    [v12 indexSearchableItems:v13 completionHandler:v11];
  }

  else
  {
    v10->invoke(v10, 0);
  }
}

- (void)deleteSearchableItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(MTCoreSpotlightController *)self searchableIndex];
    v6 = [v4 allObjects];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100006740;
    v7[3] = &unk_1000149C8;
    v7[4] = self;
    v8 = v4;
    [v5 deleteSearchableItemsWithIdentifiers:v6 completionHandler:v7];
  }
}

- (void)libraryDidChange:(id)a3
{
  v4 = a3;
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
    v7 = [v4 hasInsertsForEntityNames:v6];

    if (v7)
    {
      *buf = 0;
      v15 = buf;
      v16 = 0x3032000000;
      v17 = sub_1000069D8;
      v18 = sub_1000069E8;
      v8 = +[MTDB sharedInstance];
      v19 = [v8 importContext];

      v9 = *(v15 + 5);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000069F0;
      v10[3] = &unk_100014658;
      v12 = self;
      v13 = buf;
      v11 = v4;
      [v9 performBlock:v10];

      _Block_object_dispose(buf, 8);
    }
  }
}

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTCoreSpotlightController *)self indexingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006DD0;
  block[3] = &unk_100014A18;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(-32768, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006FDC;
  v15[3] = &unk_100014A90;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
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

- (void)savePartialUploadStateIndexPath:(id)a3
{
  v3 = a3;
  v4 = [MTCoreSpotlightUtil objectTypeForIndexPath:v3];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [NSNumber numberWithUnsignedInteger:v4];
  [v5 setObject:v6 forKey:@"kMTCoreSpotlightGlobalReindex_ObjectType"];

  v7 = [MTCoreSpotlightUtil batchForIndexPath:v3];
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [NSNumber numberWithUnsignedInteger:v7];
  [v8 setObject:v9 forKey:@"MTCoreSpotlightGlobalReindex_BatchNumber"];

  v10 = [MTCoreSpotlightUtil indexInBatchForIndexPath:v3];
  v12 = +[NSUserDefaults standardUserDefaults];
  v11 = [NSNumber numberWithUnsignedInteger:v10];
  [v12 setObject:v11 forKey:@"MTCoreSpotlightGlobalReindex_IndexInBatch"];
}

@end