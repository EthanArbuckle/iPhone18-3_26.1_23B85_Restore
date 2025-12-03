@interface FRArticleEditorialItemDownloader
- (FRArticleEditorialItemDownloader)initWithArticleController:(id)controller dataProviderFactory:(id)factory articleEditorialItemProvider:(id)provider editorialItemEntryManager:(id)manager thumbnailCreator:(id)creator editorialItemCreator:(id)itemCreator;
- (void)downloadArticleWithArticleID:(id)d editorialItemFromCache:(id)cache completion:(id)completion;
- (void)downloadEditorialItemWithIDs:(id)ds completion:(id)completion;
- (void)loadArticleMetadataWithHeadline:(id)headline editorialItemFromCache:(id)cache content:(id)content articleModifiedDate:(id)date completion:(id)completion;
@end

@implementation FRArticleEditorialItemDownloader

- (FRArticleEditorialItemDownloader)initWithArticleController:(id)controller dataProviderFactory:(id)factory articleEditorialItemProvider:(id)provider editorialItemEntryManager:(id)manager thumbnailCreator:(id)creator editorialItemCreator:(id)itemCreator
{
  controllerCopy = controller;
  factoryCopy = factory;
  providerCopy = provider;
  managerCopy = manager;
  creatorCopy = creator;
  itemCreatorCopy = itemCreator;
  itemCreatorCopy2 = itemCreator;
  if (!factoryCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000711EC();
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
    sub_1000712B0();
  }

LABEL_6:
  if (!providerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071374();
    if (creatorCopy)
    {
      goto LABEL_11;
    }
  }

  else if (creatorCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071438();
  }

LABEL_11:
  if (!itemCreatorCopy2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000714FC();
  }

  v26.receiver = self;
  v26.super_class = FRArticleEditorialItemDownloader;
  v19 = [(FRArticleEditorialItemDownloader *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_articleController, controller);
    objc_storeStrong(&v20->_flintDataProviderFactory, factory);
    objc_storeStrong(&v20->_articleEditorialItemProvider, provider);
    objc_storeStrong(&v20->_editorialItemEntryManager, manager);
    objc_storeStrong(&v20->_thumbnailCreator, obj);
    objc_storeStrong(&v20->_editorialItemCreator, itemCreatorCopy);
  }

  return v20;
}

- (void)downloadEditorialItemWithIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v20 = dsCopy;
  if ([dsCopy count])
  {
    v19 = completionCopy;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = sub_100009BF8;
    v32[4] = sub_100009F50;
    v33 = +[NSMutableDictionary dictionary];
    v8 = dispatch_group_create();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = dsCopy;
    v9 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v9)
    {
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          editorialItemEntryManager = [(FRArticleEditorialItemDownloader *)self editorialItemEntryManager];
          editorialItemsByID = [editorialItemEntryManager editorialItemsByID];
          v15 = [editorialItemsByID objectForKey:v12];

          dispatch_group_enter(v8);
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_10004CECC;
          v25[3] = &unk_1000C50D8;
          v27 = v32;
          v26 = v8;
          [(FRArticleEditorialItemDownloader *)self downloadArticleWithArticleID:v12 editorialItemFromCache:v15 completion:v25];
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v39 count:16];
      }

      while (v9);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CFF8;
    block[3] = &unk_1000C4790;
    v23 = v19;
    v24 = v32;
    v16 = v19;
    dispatch_group_notify(v8, &_dispatch_main_q, block);

    _Block_object_dispose(v32, 8);
  }

  else
  {
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_10004CEAC;
    v37 = &unk_1000C3098;
    v38 = completionCopy;
    if (completionCopy)
    {
      v17 = completionCopy[2];
      v18 = completionCopy;
      v17();
    }
  }
}

- (void)downloadArticleWithArticleID:(id)d editorialItemFromCache:(id)cache completion:(id)completion
{
  dCopy = d;
  cacheCopy = cache;
  completionCopy = completion;
  articleController = [(FRArticleEditorialItemDownloader *)self articleController];
  v12 = [articleController articleWithID:dCopy forceArticleUpdate:1 qualityOfService:25 relativePriority:1];

  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004D1EC;
  v17[3] = &unk_1000C5150;
  objc_copyWeak(&v22, &location);
  v13 = v12;
  v18 = v13;
  v14 = completionCopy;
  v21 = v14;
  v15 = cacheCopy;
  v19 = v15;
  v16 = dCopy;
  v20 = v16;
  [v13 performBlockWhenContentIsLoaded:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)loadArticleMetadataWithHeadline:(id)headline editorialItemFromCache:(id)cache content:(id)content articleModifiedDate:(id)date completion:(id)completion
{
  cacheCopy = cache;
  dateCopy = date;
  completionCopy = completion;
  contentCopy = content;
  headlineCopy = headline;
  articleID = [headlineCopy articleID];
  v18 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = articleID;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ToC Editorial Manager: Download flint data initiated for articleID: %{public}@", buf, 0xCu);
  }

  flintDataProviderFactory = [(FRArticleEditorialItemDownloader *)self flintDataProviderFactory];
  anfContent = [contentCopy anfContent];

  v21 = [flintDataProviderFactory flintDataProviderForANFContent:anfContent headline:headlineCopy];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10004D924;
  v28[3] = &unk_1000C51F0;
  v28[4] = self;
  v29 = articleID;
  v30 = cacheCopy;
  v31 = dateCopy;
  v32 = v21;
  v33 = completionCopy;
  v22 = v21;
  v23 = dateCopy;
  v24 = cacheCopy;
  v25 = completionCopy;
  v26 = articleID;
  v27 = [v22 loadContextWithCompletionBlock:v28];
}

@end