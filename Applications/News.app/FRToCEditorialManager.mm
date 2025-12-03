@interface FRToCEditorialManager
- (BOOL)_editorialItemHasBadge:(id)badge;
- (FRToCEditorialManager)init;
- (FRToCEditorialManager)initWithCloudContext:(id)context activityMonitor:(id)monitor editorialItemEntryManager:(id)manager articleEditorialItemDownloader:(id)downloader tagEditorialItemDownloader:(id)itemDownloader editorialConfigurationProvider:(id)provider thumbnailCreator:(id)creator ANFHelper:(id)self0;
- (id)cachedEditorialItems;
- (void)_fetchInterestTokenForArticleID:(id)d completion:(id)completion;
- (void)_fetchTagsAndRefreshEditorialItems;
- (void)_refreshEditorialItemsOrderedWith:(id)with;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
- (void)prewarmWithCompletion:(id)completion;
- (void)processOverrideEditorialItems:(id)items;
- (void)refreshEditorialItems;
- (void)removeBadgeForArticleID:(id)d;
- (void)tappedEditorialItemWithIdentifier:(id)identifier;
@end

@implementation FRToCEditorialManager

- (void)refreshEditorialItems
{
  refreshThrottler = [(FRToCEditorialManager *)self refreshThrottler];
  [refreshThrottler tickle];
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

- (FRToCEditorialManager)initWithCloudContext:(id)context activityMonitor:(id)monitor editorialItemEntryManager:(id)manager articleEditorialItemDownloader:(id)downloader tagEditorialItemDownloader:(id)itemDownloader editorialConfigurationProvider:(id)provider thumbnailCreator:(id)creator ANFHelper:(id)self0
{
  contextCopy = context;
  monitorCopy = monitor;
  managerCopy = manager;
  obj = downloader;
  downloaderCopy = downloader;
  itemDownloaderCopy = itemDownloader;
  itemDownloaderCopy2 = itemDownloader;
  providerCopy = provider;
  creatorCopy = creator;
  helperCopy = helper;
  v34 = contextCopy;
  if (!contextCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FC08();
    if (managerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (managerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FCCC();
  }

LABEL_6:
  if (!downloaderCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FD90();
    if (itemDownloaderCopy2)
    {
      goto LABEL_11;
    }
  }

  else if (itemDownloaderCopy2)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FE54();
  }

LABEL_11:
  if (!providerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FF18();
    if (creatorCopy)
    {
      goto LABEL_16;
    }
  }

  else if (creatorCopy)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006FFDC();
  }

LABEL_16:
  if (!helperCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000700A0();
  }

  v36.receiver = self;
  v36.super_class = FRToCEditorialManager;
  v22 = [(FRToCEditorialManager *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_cloudContext, context);
    objc_storeStrong(&v23->_activityMonitor, monitor);
    [(FRAppActivityMonitor *)v23->_activityMonitor addObserver:v23];
    objc_storeStrong(&v23->_editorialConfigurationProvider, provider);
    objc_storeStrong(&v23->_editorialItemEntryManager, manager);
    objc_storeStrong(&v23->_articleEditorialItemDownloader, obja);
    objc_storeStrong(&v23->_tagEditorialItemDownloader, itemDownloaderCopy);
    objc_storeStrong(&v23->_thumbnailCreator, creator);
    objc_storeStrong(&v23->_ANFHelper, helper);
    v24 = +[NSMutableArray array];
    interestTokens = v23->_interestTokens;
    v23->_interestTokens = v24;

    v26 = [[FCOperationThrottler alloc] initWithDelegate:v23];
    refreshThrottler = v23->_refreshThrottler;
    v23->_refreshThrottler = v26;
  }

  return v23;
}

- (void)processOverrideEditorialItems:(id)items
{
  itemsCopy = items;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = itemsCopy;
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
        identifier = [v11 identifier];
        fc_isValidTagID = [identifier fc_isValidTagID];

        identifier2 = [v11 identifier];
        identifier3 = identifier2;
        if (fc_isValidTagID)
        {
          [v6 addObject:identifier2];
        }

        else
        {
          fc_isValidArticleID = [identifier2 fc_isValidArticleID];

          if (!fc_isValidArticleID)
          {
            continue;
          }

          identifier3 = [v11 identifier];
          [v5 addObject:identifier3];
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
  articleEditorialItemDownloader = [(FRToCEditorialManager *)self articleEditorialItemDownloader];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10003CBA4;
  v30[3] = &unk_1000C4308;
  v32 = v33;
  v19 = v17;
  v31 = v19;
  [articleEditorialItemDownloader downloadEditorialItemWithIDs:v5 completion:v30];

  dispatch_group_enter(v19);
  tagEditorialItemDownloader = [(FRToCEditorialManager *)self tagEditorialItemDownloader];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10003CC40;
  v27[3] = &unk_1000C4308;
  v29 = v33;
  v21 = v19;
  v28 = v21;
  [tagEditorialItemDownloader downloadEditorialItemWithIDs:v6 completion:v27];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003CCDC;
  block[3] = &unk_1000C43D0;
  selfCopy = self;
  v26 = v33;
  v24 = v7;
  v22 = v7;
  dispatch_group_notify(v21, &_dispatch_main_q, block);

  _Block_object_dispose(v33, 8);
}

- (BOOL)_editorialItemHasBadge:(id)badge
{
  badgeCopy = badge;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  attributes = [badgeCopy attributes];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003D5E0;
  v6[3] = &unk_1000C43F8;
  v6[4] = &v7;
  [attributes enumerateObjectsUsingBlock:v6];

  LOBYTE(attributes) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return attributes;
}

- (id)cachedEditorialItems
{
  +[NSThread isMainThread];
  v3 = +[NSMutableArray array];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  editorialItemEntryManager = [(FRToCEditorialManager *)self editorialItemEntryManager];
  orderedEditorialItemIDs = [editorialItemEntryManager orderedEditorialItemIDs];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003D77C;
  v10[3] = &unk_1000C4420;
  v10[4] = self;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [orderedEditorialItemIDs enumerateObjectsUsingBlock:v10];

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
  editorialItemEntryManager = [(FRToCEditorialManager *)self editorialItemEntryManager];
  orderedEditorialItemIDs = [editorialItemEntryManager orderedEditorialItemIDs];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10003DFE8;
  v34[3] = &unk_1000C4448;
  v34[4] = self;
  v8 = v5;
  v35 = v8;
  v9 = v4;
  v36 = v9;
  [orderedEditorialItemIDs enumerateObjectsUsingBlock:v34];

  v10 = dispatch_group_create();
  if ([v8 count])
  {
    dispatch_group_enter(v10);
    objc_initWeak(&location, self);
    cloudContext = [(FRToCEditorialManager *)self cloudContext];
    articleController = [cloudContext articleController];
    allKeys = [v8 allKeys];
    v14 = [articleController headlinesFetchOperationForArticleIDs:allKeys];

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
    cloudContext2 = [(FRToCEditorialManager *)self cloudContext];
    tagController = [cloudContext2 tagController];
    allKeys2 = [v9 allKeys];
    v19 = &_dispatch_main_q;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10003E5C0;
    v23[3] = &unk_1000C4510;
    objc_copyWeak(&v27, &location);
    v24 = v9;
    v25 = v3;
    v26 = v10;
    [tagController fetchTagsForTagIDs:allKeys2 qualityOfService:9 callbackQueue:&_dispatch_main_q completionHandler:v23];

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

- (void)_refreshEditorialItemsOrderedWith:(id)with
{
  withCopy = with;
  v5 = +[NSMutableArray array];
  editorialItemEntryManager = [(FRToCEditorialManager *)self editorialItemEntryManager];
  orderedEditorialItemIDs = [editorialItemEntryManager orderedEditorialItemIDs];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10003EA50;
  v14 = &unk_1000C4538;
  v15 = withCopy;
  v16 = v5;
  v8 = v5;
  v9 = withCopy;
  [orderedEditorialItemIDs enumerateObjectsUsingBlock:&v11];

  v10 = [(FRToCEditorialManager *)self itemChangeDelegate:v11];
  [v10 refreshEditorialItemsWithItems:v8];
}

- (void)removeBadgeForArticleID:(id)d
{
  dCopy = d;
  editorialItemEntryManager = [(FRToCEditorialManager *)self editorialItemEntryManager];
  orderedEditorialItemIDs = [editorialItemEntryManager orderedEditorialItemIDs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003EB78;
  v8[3] = &unk_1000C4358;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [orderedEditorialItemIDs enumerateObjectsUsingBlock:v8];
}

- (void)tappedEditorialItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  val = self;
  editorialItemEntryManager = [(FRToCEditorialManager *)self editorialItemEntryManager];
  editorialItemsByID = [editorialItemEntryManager editorialItemsByID];
  v6 = [editorialItemsByID objectForKey:identifierCopy];

  showBadge = [v6 showBadge];
  documentVersion = [v6 documentVersion];
  v8 = [FREditorialItemEntry alloc];
  editorialItemID = [v6 editorialItemID];
  title = [v6 title];
  subtitle = [v6 subtitle];
  subtitleColorString = [v6 subtitleColorString];
  image = [v6 image];
  actionUrlString = [v6 actionUrlString];
  lastModifiedDate = [v6 lastModifiedDate];
  LOBYTE(v37) = 0;
  v16 = [(FREditorialItemEntry *)v8 initWithEditorialItemID:editorialItemID title:title subtitle:subtitle subtitleColorString:subtitleColorString image:image actionUrlString:actionUrlString lastModifiedDate:lastModifiedDate documentVersion:documentVersion lastSeenDocumentVersion:documentVersion showBadge:v37];

  editorialItemEntryManager2 = [(FRToCEditorialManager *)val editorialItemEntryManager];
  [editorialItemEntryManager2 addEditorialItem:v16];

  if (v16)
  {
    v18 = showBadge;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    editorialItemID2 = [(FREditorialItemEntry *)v16 editorialItemID];
    fc_isValidArticleID = [editorialItemID2 fc_isValidArticleID];

    if (fc_isValidArticleID)
    {
      image2 = [(FREditorialItemEntry *)v16 image];

      if (image2)
      {
        thumbnailCreator = [(FRToCEditorialManager *)val thumbnailCreator];
        image3 = [(FREditorialItemEntry *)v16 image];
        v24 = [thumbnailCreator editorialThumbnailImageWith:image3];
      }

      else
      {
        v24 = 0;
      }

      objc_initWeak(&location, val);
      cloudContext = [(FRToCEditorialManager *)val cloudContext];
      articleController = [cloudContext articleController];
      editorialItemID3 = [(FREditorialItemEntry *)v16 editorialItemID];
      v49 = editorialItemID3;
      v33 = [NSArray arrayWithObjects:&v49 count:1];
      v34 = [articleController headlinesFetchOperationForArticleIDs:v33];

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
      editorialItemID4 = [(FREditorialItemEntry *)v16 editorialItemID];
      fc_isValidTagID = [editorialItemID4 fc_isValidTagID];

      if (fc_isValidTagID)
      {
        objc_initWeak(&location, val);
        cloudContext2 = [(FRToCEditorialManager *)val cloudContext];
        tagController = [cloudContext2 tagController];
        v29 = &_dispatch_main_q;
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_10003F434;
        v41[3] = &unk_1000C45B0;
        objc_copyWeak(&v43, &location);
        v42 = v16;
        [tagController fetchTagForTagID:identifierCopy qualityOfService:25 callbackQueue:&_dispatch_main_q completionHandler:v41];

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)prewarmWithCompletion:(id)completion
{
  completionCopy = completion;
  editorialItemEntryManager = [(FRToCEditorialManager *)self editorialItemEntryManager];
  cachedArticleIDs = [editorialItemEntryManager cachedArticleIDs];

  if ([cachedArticleIDs count])
  {
    objc_initWeak(location, self);
    v5 = dispatch_group_create();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = cachedArticleIDs;
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
    v17 = completionCopy;
    v11 = completionCopy;
    dispatch_group_notify(v5, &_dispatch_main_q, block);

    objc_destroyWeak(location);
  }

  else
  {
    location[1] = _NSConcreteStackBlock;
    location[2] = 3221225472;
    location[3] = sub_10003F954;
    location[4] = &unk_1000C3098;
    v26 = completionCopy;
    if (completionCopy)
    {
      v12 = completionCopy[2];
      v13 = completionCopy;
      v12();
    }
  }
}

- (void)_fetchInterestTokenForArticleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!dCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000701FC();
    if (completionCopy)
    {
      goto LABEL_6;
    }
  }

  else if (completionCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000702C0();
  }

LABEL_6:
  v8 = [FCOfflineArticleFetchOperation alloc];
  cloudContext = [(FRToCEditorialManager *)self cloudContext];
  aNFHelper = [(FRToCEditorialManager *)self ANFHelper];
  v11 = [v8 initWithContext:cloudContext ANFHelper:aNFHelper articleID:dCopy];

  [v11 setQualityOfService:9];
  [v11 setRelativePriority:-1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003FC18;
  v13[3] = &unk_1000C4600;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 setFetchCompletionHandler:v13];
  [FCTaskScheduler scheduleLowPriorityOperation:v11];
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003FCD4;
  v5[3] = &unk_1000C1BD8;
  v5[4] = self;
  completionCopy = completion;
  v4 = completionCopy;
  [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v5];
}

@end