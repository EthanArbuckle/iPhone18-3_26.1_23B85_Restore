@interface FRToCEditorialManager
- (BOOL)_editorialItemHasBadge:(id)a3;
- (FRToCEditorialManager)init;
- (FRToCEditorialManager)initWithCloudContext:(id)a3 activityMonitor:(id)a4 editorialItemEntryManager:(id)a5 articleEditorialItemDownloader:(id)a6 tagEditorialItemDownloader:(id)a7 editorialConfigurationProvider:(id)a8 thumbnailCreator:(id)a9 ANFHelper:(id)a10;
- (id)cachedEditorialItems;
- (void)_fetchInterestTokenForArticleID:(id)a3 completion:(id)a4;
- (void)_fetchTagsAndRefreshEditorialItems;
- (void)_refreshEditorialItemsOrderedWith:(id)a3;
- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4;
- (void)prewarmWithCompletion:(id)a3;
- (void)processOverrideEditorialItems:(id)a3;
- (void)refreshEditorialItems;
- (void)removeBadgeForArticleID:(id)a3;
- (void)tappedEditorialItemWithIdentifier:(id)a3;
@end

@implementation FRToCEditorialManager

- (void)refreshEditorialItems
{
  v2 = [(FRToCEditorialManager *)self refreshThrottler];
  [v2 tickle];
}

- (FRToCEditorialManager)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRToCEditorialManager init]";
    v8 = 2080;
    v9 = "FRToCEditorialManager.m";
    v10 = 1024;
    v11 = 66;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRToCEditorialManager init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRToCEditorialManager)initWithCloudContext:(id)a3 activityMonitor:(id)a4 editorialItemEntryManager:(id)a5 articleEditorialItemDownloader:(id)a6 tagEditorialItemDownloader:(id)a7 editorialConfigurationProvider:(id)a8 thumbnailCreator:(id)a9 ANFHelper:(id)a10
{
  v16 = a3;
  v33 = a4;
  v17 = a5;
  obj = a6;
  v35 = a6;
  v31 = a7;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v34 = v16;
  if (!v16 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FC08();
    if (v17)
    {
      goto LABEL_6;
    }
  }

  else if (v17)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FCCC();
  }

LABEL_6:
  if (!v35 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FD90();
    if (v18)
    {
      goto LABEL_11;
    }
  }

  else if (v18)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FE54();
  }

LABEL_11:
  if (!v19 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FF18();
    if (v20)
    {
      goto LABEL_16;
    }
  }

  else if (v20)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FFDC();
  }

LABEL_16:
  if (!v21 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000700A0();
  }

  v36.receiver = self;
  v36.super_class = FRToCEditorialManager;
  v22 = [(FRToCEditorialManager *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_cloudContext, a3);
    objc_storeStrong(&v23->_activityMonitor, a4);
    [(FRAppActivityMonitor *)v23->_activityMonitor addObserver:v23];
    objc_storeStrong(&v23->_editorialConfigurationProvider, a8);
    objc_storeStrong(&v23->_editorialItemEntryManager, a5);
    objc_storeStrong(&v23->_articleEditorialItemDownloader, obja);
    objc_storeStrong(&v23->_tagEditorialItemDownloader, v31);
    objc_storeStrong(&v23->_thumbnailCreator, a9);
    objc_storeStrong(&v23->_ANFHelper, a10);
    v24 = +[NSMutableArray array];
    interestTokens = v23->_interestTokens;
    v23->_interestTokens = v24;

    v26 = [[FCOperationThrottler alloc] initWithDelegate:v23];
    refreshThrottler = v23->_refreshThrottler;
    v23->_refreshThrottler = v26;
  }

  return v23;
}

- (void)processOverrideEditorialItems:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 fc_isValidTagID];

        v14 = [v11 identifier];
        v15 = v14;
        if (v13)
        {
          [v6 addObject:v14];
        }

        else
        {
          v16 = [v14 fc_isValidArticleID];

          if (!v16)
          {
            continue;
          }

          v15 = [v11 identifier];
          [v5 addObject:v15];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_100009BB8;
  v33[4] = sub_100009F30;
  v34 = +[NSMutableDictionary dictionary];
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = [(FRToCEditorialManager *)self articleEditorialItemDownloader];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10003CBA4;
  v30[3] = &unk_1000C4308;
  v32 = v33;
  v19 = v17;
  v31 = v19;
  [v18 downloadEditorialItemWithIDs:v5 completion:v30];

  dispatch_group_enter(v19);
  v20 = [(FRToCEditorialManager *)self tagEditorialItemDownloader];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10003CC40;
  v27[3] = &unk_1000C4308;
  v29 = v33;
  v21 = v19;
  v28 = v21;
  [v20 downloadEditorialItemWithIDs:v6 completion:v27];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CCDC;
  block[3] = &unk_1000C43D0;
  v25 = self;
  v26 = v33;
  v24 = v7;
  v22 = v7;
  dispatch_group_notify(v21, &_dispatch_main_q, block);

  _Block_object_dispose(v33, 8);
}

- (BOOL)_editorialItemHasBadge:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [v3 attributes];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003D5E0;
  v6[3] = &unk_1000C43F8;
  v6[4] = &v7;
  [v4 enumerateObjectsUsingBlock:v6];

  LOBYTE(v4) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)cachedEditorialItems
{
  +[NSThread isMainThread];
  v3 = +[NSMutableArray array];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [(FRToCEditorialManager *)self editorialItemEntryManager];
  v5 = [v4 orderedEditorialItemIDs];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003D77C;
  v10[3] = &unk_1000C4420;
  v10[4] = self;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [v5 enumerateObjectsUsingBlock:v10];

  if (*(v14 + 24) == 1)
  {
    [(FRToCEditorialManager *)self _fetchTagsAndRefreshEditorialItems];
  }

  v7 = v11;
  v8 = v6;

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)_fetchTagsAndRefreshEditorialItems
{
  +[NSThread isMainThread];
  v3 = +[NSMutableDictionary dictionary];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(FRToCEditorialManager *)self editorialItemEntryManager];
  v7 = [v6 orderedEditorialItemIDs];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10003DFE8;
  v34[3] = &unk_1000C4448;
  v34[4] = self;
  v8 = v5;
  v35 = v8;
  v9 = v4;
  v36 = v9;
  [v7 enumerateObjectsUsingBlock:v34];

  v10 = dispatch_group_create();
  if ([v8 count])
  {
    dispatch_group_enter(v10);
    objc_initWeak(&location, self);
    v11 = [(FRToCEditorialManager *)self cloudContext];
    v12 = [v11 articleController];
    v13 = [v8 allKeys];
    v14 = [v12 headlinesFetchOperationForArticleIDs:v13];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10003E0E8;
    v28[3] = &unk_1000C44C0;
    objc_copyWeak(&v32, &location);
    v29 = v10;
    v30 = v8;
    v31 = v3;
    [v14 setFetchCompletionBlock:v28];
    v15 = +[NSOperationQueue fc_sharedConcurrentQueue];
    [v15 addOperation:v14];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  if ([v9 count])
  {
    dispatch_group_enter(v10);
    objc_initWeak(&location, self);
    v16 = [(FRToCEditorialManager *)self cloudContext];
    v17 = [v16 tagController];
    v18 = [v9 allKeys];
    v19 = &_dispatch_main_q;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10003E5C0;
    v23[3] = &unk_1000C4510;
    objc_copyWeak(&v27, &location);
    v24 = v9;
    v25 = v3;
    v26 = v10;
    [v17 fetchTagsForTagIDs:v18 qualityOfService:9 callbackQueue:&_dispatch_main_q completionHandler:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E934;
  block[3] = &unk_1000C1920;
  block[4] = self;
  v22 = v3;
  v20 = v3;
  dispatch_group_notify(v10, &_dispatch_main_q, block);
}

- (void)_refreshEditorialItemsOrderedWith:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(FRToCEditorialManager *)self editorialItemEntryManager];
  v7 = [v6 orderedEditorialItemIDs];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10003EA50;
  v14 = &unk_1000C4538;
  v15 = v4;
  v16 = v5;
  v8 = v5;
  v9 = v4;
  [v7 enumerateObjectsUsingBlock:&v11];

  v10 = [(FRToCEditorialManager *)self itemChangeDelegate:v11];
  [v10 refreshEditorialItemsWithItems:v8];
}

- (void)removeBadgeForArticleID:(id)a3
{
  v4 = a3;
  v5 = [(FRToCEditorialManager *)self editorialItemEntryManager];
  v6 = [v5 orderedEditorialItemIDs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003EB78;
  v8[3] = &unk_1000C4358;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (void)tappedEditorialItemWithIdentifier:(id)a3
{
  v40 = a3;
  val = self;
  v4 = [(FRToCEditorialManager *)self editorialItemEntryManager];
  v5 = [v4 editorialItemsByID];
  v6 = [v5 objectForKey:v40];

  v7 = [v6 showBadge];
  v39 = [v6 documentVersion];
  v8 = [FREditorialItemEntry alloc];
  v9 = [v6 editorialItemID];
  v10 = [v6 title];
  v11 = [v6 subtitle];
  v12 = [v6 subtitleColorString];
  v13 = [v6 image];
  v14 = [v6 actionUrlString];
  v15 = [v6 lastModifiedDate];
  LOBYTE(v37) = 0;
  v16 = [(FREditorialItemEntry *)v8 initWithEditorialItemID:v9 title:v10 subtitle:v11 subtitleColorString:v12 image:v13 actionUrlString:v14 lastModifiedDate:v15 documentVersion:v39 lastSeenDocumentVersion:v39 showBadge:v37];

  v17 = [(FRToCEditorialManager *)val editorialItemEntryManager];
  [v17 addEditorialItem:v16];

  if (v16)
  {
    v18 = v7;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    v19 = [(FREditorialItemEntry *)v16 editorialItemID];
    v20 = [v19 fc_isValidArticleID];

    if (v20)
    {
      v21 = [(FREditorialItemEntry *)v16 image];

      if (v21)
      {
        v22 = [(FRToCEditorialManager *)val thumbnailCreator];
        v23 = [(FREditorialItemEntry *)v16 image];
        v24 = [v22 editorialThumbnailImageWith:v23];
      }

      else
      {
        v24 = 0;
      }

      objc_initWeak(&location, val);
      v30 = [(FRToCEditorialManager *)val cloudContext];
      v31 = [v30 articleController];
      v32 = [(FREditorialItemEntry *)v16 editorialItemID];
      v49 = v32;
      v33 = [NSArray arrayWithObjects:&v49 count:1];
      v34 = [v31 headlinesFetchOperationForArticleIDs:v33];

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10003F130;
      v44[3] = &unk_1000C4560;
      objc_copyWeak(&v47, &location);
      v45 = v16;
      v35 = v24;
      v46 = v35;
      [v34 setFetchCompletionBlock:v44];
      v36 = +[NSOperationQueue fc_sharedConcurrentQueue];
      [v36 addOperation:v34];

      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
    }

    else
    {
      v25 = [(FREditorialItemEntry *)v16 editorialItemID];
      v26 = [v25 fc_isValidTagID];

      if (v26)
      {
        objc_initWeak(&location, val);
        v27 = [(FRToCEditorialManager *)val cloudContext];
        v28 = [v27 tagController];
        v29 = &_dispatch_main_q;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10003F434;
        v41[3] = &unk_1000C45B0;
        objc_copyWeak(&v43, &location);
        v42 = v16;
        [v28 fetchTagForTagID:v40 qualityOfService:25 callbackQueue:&_dispatch_main_q completionHandler:v41];

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)prewarmWithCompletion:(id)a3
{
  v14 = a3;
  v4 = [(FRToCEditorialManager *)self editorialItemEntryManager];
  v15 = [v4 cachedArticleIDs];

  if ([v15 count])
  {
    objc_initWeak(location, self);
    v5 = dispatch_group_create();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v15;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          dispatch_group_enter(v5);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10003F96C;
          v18[3] = &unk_1000C45D8;
          objc_copyWeak(&v20, location);
          v19 = v5;
          [(FRToCEditorialManager *)self _fetchInterestTokenForArticleID:v10 completion:v18];

          objc_destroyWeak(&v20);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003FA88;
    block[3] = &unk_1000C3098;
    v17 = v14;
    v11 = v14;
    dispatch_group_notify(v5, &_dispatch_main_q, block);

    objc_destroyWeak(location);
  }

  else
  {
    location[1] = _NSConcreteStackBlock;
    location[2] = 3221225472;
    location[3] = sub_10003F954;
    location[4] = &unk_1000C3098;
    v26 = v14;
    if (v14)
    {
      v12 = v14[2];
      v13 = v14;
      v12();
    }
  }
}

- (void)_fetchInterestTokenForArticleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000701FC();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000702C0();
  }

LABEL_6:
  v8 = [FCOfflineArticleFetchOperation alloc];
  v9 = [(FRToCEditorialManager *)self cloudContext];
  v10 = [(FRToCEditorialManager *)self ANFHelper];
  v11 = [v8 initWithContext:v9 ANFHelper:v10 articleID:v6];

  [v11 setQualityOfService:9];
  [v11 setRelativePriority:-1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003FC18;
  v13[3] = &unk_1000C4600;
  v14 = v7;
  v12 = v7;
  [v11 setFetchCompletionHandler:v13];
  [FCTaskScheduler scheduleLowPriorityOperation:v11];
}

- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003FCD4;
  v5[3] = &unk_1000C1BD8;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v5];
}

@end