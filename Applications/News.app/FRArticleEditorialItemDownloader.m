@interface FRArticleEditorialItemDownloader
- (FRArticleEditorialItemDownloader)initWithArticleController:(id)a3 dataProviderFactory:(id)a4 articleEditorialItemProvider:(id)a5 editorialItemEntryManager:(id)a6 thumbnailCreator:(id)a7 editorialItemCreator:(id)a8;
- (void)downloadArticleWithArticleID:(id)a3 editorialItemFromCache:(id)a4 completion:(id)a5;
- (void)downloadEditorialItemWithIDs:(id)a3 completion:(id)a4;
- (void)loadArticleMetadataWithHeadline:(id)a3 editorialItemFromCache:(id)a4 content:(id)a5 articleModifiedDate:(id)a6 completion:(id)a7;
@end

@implementation FRArticleEditorialItemDownloader

- (FRArticleEditorialItemDownloader)initWithArticleController:(id)a3 dataProviderFactory:(id)a4 articleEditorialItemProvider:(id)a5 editorialItemEntryManager:(id)a6 thumbnailCreator:(id)a7 editorialItemCreator:(id)a8
{
  v25 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23 = a8;
  v18 = a8;
  if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000711EC();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000712B0();
  }

LABEL_6:
  if (!v15 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071374();
    if (v17)
    {
      goto LABEL_11;
    }
  }

  else if (v17)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100071438();
  }

LABEL_11:
  if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000714FC();
  }

  v26.receiver = self;
  v26.super_class = FRArticleEditorialItemDownloader;
  v19 = [(FRArticleEditorialItemDownloader *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_articleController, a3);
    objc_storeStrong(&v20->_flintDataProviderFactory, a4);
    objc_storeStrong(&v20->_articleEditorialItemProvider, a5);
    objc_storeStrong(&v20->_editorialItemEntryManager, a6);
    objc_storeStrong(&v20->_thumbnailCreator, obj);
    objc_storeStrong(&v20->_editorialItemCreator, v23);
  }

  return v20;
}

- (void)downloadEditorialItemWithIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = v6;
  if ([v6 count])
  {
    v19 = v7;
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
    obj = v6;
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
          v13 = [(FRArticleEditorialItemDownloader *)self editorialItemEntryManager];
          v14 = [v13 editorialItemsByID];
          v15 = [v14 objectForKey:v12];

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
    v38 = v7;
    if (v7)
    {
      v17 = v7[2];
      v18 = v7;
      v17();
    }
  }
}

- (void)downloadArticleWithArticleID:(id)a3 editorialItemFromCache:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FRArticleEditorialItemDownloader *)self articleController];
  v12 = [v11 articleWithID:v8 forceArticleUpdate:1 qualityOfService:25 relativePriority:1];

  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004D1EC;
  v17[3] = &unk_1000C5150;
  objc_copyWeak(&v22, &location);
  v13 = v12;
  v18 = v13;
  v14 = v10;
  v21 = v14;
  v15 = v9;
  v19 = v15;
  v16 = v8;
  v20 = v16;
  [v13 performBlockWhenContentIsLoaded:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)loadArticleMetadataWithHeadline:(id)a3 editorialItemFromCache:(id)a4 content:(id)a5 articleModifiedDate:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = a5;
  v16 = a3;
  v17 = [v16 articleID];
  v18 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ToC Editorial Manager: Download flint data initiated for articleID: %{public}@", buf, 0xCu);
  }

  v19 = [(FRArticleEditorialItemDownloader *)self flintDataProviderFactory];
  v20 = [v15 anfContent];

  v21 = [v19 flintDataProviderForANFContent:v20 headline:v16];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10004D924;
  v28[3] = &unk_1000C51F0;
  v28[4] = self;
  v29 = v17;
  v30 = v12;
  v31 = v13;
  v32 = v21;
  v33 = v14;
  v22 = v21;
  v23 = v13;
  v24 = v12;
  v25 = v14;
  v26 = v17;
  v27 = [v22 loadContextWithCompletionBlock:v28];
}

@end