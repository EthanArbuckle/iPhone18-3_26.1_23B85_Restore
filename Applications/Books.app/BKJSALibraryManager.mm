@interface BKJSALibraryManager
- (BKJSALibraryManager)initWithLibraryAssetProvider:(id)a3 presentersProvider:(id)a4 storeController:(id)a5;
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BKLibraryItemStateProvider)libraryItemStateProvider;
- (BKPresentersProvider)presentersProvider;
- (id)_contentDataForContentID:(id)a3 tracker:(id)a4;
- (id)_contentDataForLibraryAsset:(id)a3 contentID:(id)a4 tracker:(id)a5;
- (id)_libraryAssetWithContentID:(id)a3;
- (id)_transactionFromOptionsForShowAsset:(id)a3;
- (id)mostRecentPurchaseDate;
- (int64_t)_contentTypeForContentID:(id)a3 withLibraryAsset:(id)a4;
- (void)_displayStoreConnectionErrorAlert:(BOOL)a3;
- (void)_downloadAssetID:(id)a3 redownloadParameters:(id)a4 isAudiobook:(BOOL)a5 hasRacSupport:(BOOL)a6 tracker:(id)a7 callback:(id)a8;
- (void)_downloadAssetIDs:(id)a3 callback:(id)a4;
- (void)_fetchFinishedLibraryAssetWithAssetID:(id)a3 waitForNewAssetIfNeeded:(BOOL)a4 callback:(id)a5;
- (void)_markAsset:(id)a3 asFinished:(BOOL)a4 completion:(id)a5;
- (void)_openAssetID:(id)a3 options:(id)a4 sampleURL:(id)a5 isSample:(BOOL)a6 tracker:(id)a7 callback:(id)a8;
- (void)_openSample:(id)a3 options:(id)a4 sampleURL:(id)a5 contentData:(id)a6 tracker:(id)a7 callback:(id)a8;
- (void)_previewAssetID:(id)a3 asset:(id)a4 fullScreen:(BOOL)a5 tracker:(id)a6 callback:(id)a7;
- (void)_processAssets:(id)a3 processor:(id)a4 callback:(id)a5;
- (void)_updateAssetIDs:(id)a3 callback:(id)a4;
- (void)addAssetID:(id)a3 toCollectionID:(id)a4 tracker:(id)a5 completionHandler:(id)a6;
- (void)addBookToWantToReadCollection:(id)a3 :(id)a4 :(id)a5;
- (void)cancelDownloadForAssetID:(id)a3 completionHandler:(id)a4;
- (void)cancelDownloadForBook:(id)a3 :(id)a4 :(id)a5;
- (void)downloadAssetIDs:(id)a3 completionHandler:(id)a4;
- (void)downloadBookWithRedownloadParameters:(id)a3 :(BOOL)a4 :(id)a5 :(id)a6 :(BOOL)a7;
- (void)downloadBooks:(id)a3 :(id)a4;
- (void)filterPurchasedBooks:(id)a3 callback:(id)a4;
- (void)getCollectionNameForCollectionID:(id)a3 :(id)a4;
- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)a3;
- (void)getVersion:(id)a3;
- (void)markBookAsFinished:(id)a3 :(BOOL)a4 :(id)a5 :(id)a6;
- (void)openBook:(id)a3 :(id)a4 :(id)a5 :(id)a6;
- (void)openBook:(id)a3 options:(id)a4;
- (void)openSampleBook:(id)a3 downloadSampleURL:(id)a4 options:(id)a5 callback:(id)a6 tracker:(id)a7;
- (void)performAddRequest:(id)a3 completionHandler:(id)a4;
- (void)performRemoveRequest:(id)a3 completionHandler:(id)a4;
- (void)previewAudiobook:(id)a3 :(id)a4 :(id)a5 :(id)a6;
- (void)removeAssetID:(id)a3 fromCollectionID:(id)a4 tracker:(id)a5 completionHandler:(id)a6;
- (void)removeBookFromWantToReadCollection:(id)a3 :(id)a4 :(id)a5;
- (void)setFinishedDateForAssetID:(id)a3 toDate:(id)a4 tracker:(id)a5 callback:(id)a6;
- (void)setFinishedYearForAssetID:(id)a3 toYearOfDate:(id)a4 tracker:(id)a5 callback:(id)a6;
- (void)showCollection:(id)a3 :(id)a4;
- (void)unsetFinishedDateForAssetID:(id)a3 callback:(id)a4;
- (void)updateAssetIDs:(id)a3 completionHandler:(id)a4;
- (void)updateBooks:(id)a3 :(id)a4;
@end

@implementation BKJSALibraryManager

- (BKJSALibraryManager)initWithLibraryAssetProvider:(id)a3 presentersProvider:(id)a4 storeController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = BKJSALibraryManager;
  v11 = [(BKJSALibraryManager *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_libraryAssetProvider, v8);
    objc_storeWeak(&v12->_presentersProvider, v9);
    objc_storeStrong(&v12->_storeController, a5);
    if (!v12->_storeController)
    {
      v13 = JSALog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_100791578(v13);
      }
    }

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("BKJSALibraryManager.queue", v14);
    queue = v12->_queue;
    v12->_queue = v15;
  }

  return v12;
}

- (void)downloadAssetIDs:(id)a3 completionHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015EFA8;
  v7[3] = &unk_100A07A98;
  v8 = a4;
  v6 = v8;
  [(BKJSALibraryManager *)self _downloadAssetIDs:a3 callback:v7];
}

- (void)cancelDownloadForAssetID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKJSALibraryManager *)self libraryAssetProvider];
  v16 = v6;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015F12C;
  v12[3] = &unk_100A08C60;
  v14 = self;
  v15 = v7;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  [v8 fetchLibraryAssetsFromAssetIDs:v9 handler:v12];
}

- (void)updateAssetIDs:(id)a3 completionHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015F2DC;
  v7[3] = &unk_100A07A98;
  v8 = a4;
  v6 = v8;
  [(BKJSALibraryManager *)self _updateAssetIDs:a3 callback:v7];
}

- (void)addAssetID:(id)a3 toCollectionID:(id)a4 tracker:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[BSUIAssetActionModifyRequest alloc] initWithStoreID:v13 collectionID:v12 tracker:v11];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015F434;
  v16[3] = &unk_100A08C88;
  v17 = v10;
  v15 = v10;
  [(BKJSALibraryManager *)self performAddRequest:v14 completionHandler:v16];
}

- (void)performAddRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 storeID];
  v9 = [v7 collectionID];
  v10 = [v7 tracker];

  v11 = [[BKCollectionControllerMemberManagingAddRequest alloc] initWithStoreID:v8 collectionID:v9 forceToTop:0];
  v12 = [(BKJSALibraryManager *)self libraryAssetProvider];
  v13 = [v12 collectionController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10015F5F8;
  v15[3] = &unk_100A08CB0;
  v15[4] = self;
  v15[5] = v8;
  v15[6] = v10;
  v15[7] = v9;
  v16 = v6;
  v14 = v6;
  [v13 performAddRequest:v11 completion:v15];
}

- (void)removeAssetID:(id)a3 fromCollectionID:(id)a4 tracker:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[BSUIAssetActionModifyRequest alloc] initWithStoreID:v13 collectionID:v12 tracker:v11];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015F938;
  v16[3] = &unk_100A08C88;
  v17 = v10;
  v15 = v10;
  [(BKJSALibraryManager *)self performRemoveRequest:v14 completionHandler:v16];
}

- (void)performRemoveRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 storeID];
  v9 = [v7 collectionID];
  v10 = [v7 tracker];

  v11 = [[BKCollectionControllerMemberManagingRemoveRequest alloc] initWithStoreID:v8 collectionID:v9];
  v12 = [(BKJSALibraryManager *)self libraryAssetProvider];
  v13 = [v12 collectionController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10015FAF8;
  v15[3] = &unk_100A08CB0;
  v15[4] = self;
  v15[5] = v8;
  v15[6] = v10;
  v15[7] = v9;
  v16 = v6;
  v14 = v6;
  [v13 performRemoveRequest:v11 completion:v15];
}

- (void)_fetchFinishedLibraryAssetWithAssetID:(id)a3 waitForNewAssetIfNeeded:(BOOL)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a5;
  +[BKLibraryManager defaultManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10015FDE8;
  v14 = v13[3] = &unk_100A08CD8;
  v15 = v8;
  v18 = a4;
  v16 = self;
  v17 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v14;
  [v12 performBlockOnWorkerQueue:v13];
}

- (void)setFinishedDateForAssetID:(id)a3 toDate:(id)a4 tracker:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10016013C;
  v17[3] = &unk_100A08D00;
  v21 = v10;
  v22 = a6;
  v18 = v11;
  v19 = v12;
  v20 = self;
  v13 = v10;
  v14 = v12;
  v15 = v22;
  v16 = v11;
  [(BKJSALibraryManager *)self _fetchFinishedLibraryAssetWithAssetID:v13 waitForNewAssetIfNeeded:1 callback:v17];
}

- (void)setFinishedYearForAssetID:(id)a3 toYearOfDate:(id)a4 tracker:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (_os_feature_enabled_impl())
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001604FC;
    v18[3] = &unk_100A08D00;
    v19 = v11;
    v23 = v13;
    v20 = v12;
    v21 = self;
    v22 = v10;
    [(BKJSALibraryManager *)self _fetchFinishedLibraryAssetWithAssetID:v22 waitForNewAssetIfNeeded:1 callback:v18];

    v14 = v19;
  }

  else
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Set finished year feature is not enabled";
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [NSError errorWithDomain:@"BKJSALibraryManager" code:-1 userInfo:v15];

    v16 = objc_retainBlock(v13);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, v14);
    }
  }
}

- (void)unsetFinishedDateForAssetID:(id)a3 callback:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016077C;
  v7[3] = &unk_100A08D28;
  v8 = a4;
  v6 = v8;
  [(BKJSALibraryManager *)self _fetchFinishedLibraryAssetWithAssetID:a3 waitForNewAssetIfNeeded:1 callback:v7];
}

- (void)getVersion:(id)a3
{
  v3 = a3;
  v4 = +[JSABridge sharedInstance];
  v6 = &off_100A43D18;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 enqueueValueCall:v3 arguments:v5 file:@"BKJSALibraryManager.m" line:304];
}

- (id)mostRecentPurchaseDate
{
  v2 = +[BKLibraryManager defaultManager];
  v3 = [v2 mostRecentPurchaseDate];

  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MRP: JS get mrp = %@", &v6, 0xCu);
  }

  return v3;
}

- (void)openBook:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[BKJSALibraryManager openBook:options:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", &v9, 0x16u);
  }

  [(BKJSALibraryManager *)self _openAssetID:v6 options:v7 sampleURL:0 isSample:0 tracker:0 callback:&stru_100A08D48];
}

- (void)openBook:(id)a3 :(id)a4 :(id)a5 :(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = JSALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[BKJSALibraryManager openBook::::]";
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100160C54;
  v17[3] = &unk_100A034F8;
  v18 = v10;
  v19 = v11;
  v15 = v11;
  v16 = v10;
  [(BKJSALibraryManager *)self _openAssetID:v16 options:v13 sampleURL:0 isSample:0 tracker:v12 callback:v17];
}

- (void)downloadBooks:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 componentsJoinedByString:{@", "}];
    *buf = 136446466;
    v14 = "[BKJSALibraryManager downloadBooks::]";
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s assetIDs=[%@]", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100160F50;
  v11[3] = &unk_100A075B0;
  v12 = v7;
  v10 = v7;
  [(BKJSALibraryManager *)self _downloadAssetIDs:v6 callback:v11];
}

- (void)downloadBookWithRedownloadParameters:(id)a3 :(BOOL)a4 :(id)a5 :(id)a6 :(BOOL)a7
{
  v7 = a7;
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [BLUtilities storeIDFromBuyParameters:v12];
  v16 = [v15 stringValue];

  v17 = JSALog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v22 = "[BKJSALibraryManager downloadBookWithRedownloadParameters:::::]";
    v23 = 2112;
    v24 = v16;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v7;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@ isAudiobook=%{BOOL}d, hasRacSupport=%{BOOL}d, params=%@", buf, 0x2Cu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001612B4;
  v19[3] = &unk_100A038D0;
  v20 = v13;
  v18 = v13;
  [(BKJSALibraryManager *)self _downloadAssetID:v16 redownloadParameters:v12 isAudiobook:v10 hasRacSupport:v7 tracker:v14 callback:v19];
}

- (void)cancelDownloadForBook:(id)a3 :(id)a4 :(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[BKJSALibraryManager cancelDownloadForBook:::]";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001614E0;
  v12[3] = &unk_100A034F8;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(BKJSALibraryManager *)self cancelDownloadForAssetID:v11 completionHandler:v12];
}

- (void)updateBooks:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 componentsJoinedByString:{@", "}];
    *buf = 136446466;
    v14 = "[BKJSALibraryManager updateBooks::]";
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s assetIDs=[%@]", buf, 0x16u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100161814;
  v11[3] = &unk_100A075B0;
  v12 = v7;
  v10 = v7;
  [(BKJSALibraryManager *)self _updateAssetIDs:v6 callback:v11];
}

- (void)addBookToWantToReadCollection:(id)a3 :(id)a4 :(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = JSALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "[BKJSALibraryManager addBookToWantToReadCollection:::]";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v12 = kBKCollectionDefaultIDWantToRead;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100161B20;
  v14[3] = &unk_100A03520;
  v15 = v9;
  v13 = v9;
  [(BKJSALibraryManager *)self addAssetID:v8 toCollectionID:v12 tracker:v10 completionHandler:v14];
}

- (void)removeBookFromWantToReadCollection:(id)a3 :(id)a4 :(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = JSALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "[BKJSALibraryManager removeBookFromWantToReadCollection:::]";
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v12 = kBKCollectionDefaultIDWantToRead;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100161DE0;
  v14[3] = &unk_100A03520;
  v15 = v9;
  v13 = v9;
  [(BKJSALibraryManager *)self removeAssetID:v8 fromCollectionID:v12 tracker:v10 completionHandler:v14];
}

- (void)showCollection:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[BKJSALibraryManager showCollection::]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s collectionID=%@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162054;
  block[3] = &unk_100A03A30;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)openSampleBook:(id)a3 downloadSampleURL:(id)a4 options:(id)a5 callback:(id)a6 tracker:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = JSALog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v25 = "[BKJSALibraryManager openSampleBook:downloadSampleURL:options:callback:tracker:]";
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s url=%@", buf, 0x16u);
  }

  if ([v13 length])
  {
    v18 = [NSURL URLWithString:v13];
  }

  else
  {
    v18 = 0;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100162394;
  v21[3] = &unk_100A034F8;
  v22 = v12;
  v23 = v15;
  v19 = v15;
  v20 = v12;
  [(BKJSALibraryManager *)self _openAssetID:v20 options:v14 sampleURL:v18 isSample:1 tracker:v16 callback:v21];
}

- (void)previewAudiobook:(id)a3 :(id)a4 :(id)a5 :(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = JSALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[BKJSALibraryManager previewAudiobook::::]";
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v15 = [v13 objectForKeyedSubscript:@"storeAsset"];
  v16 = [BCMAssetWrapper assetWithData:v15];
  objc_opt_class();
  v17 = [v13 objectForKeyedSubscript:@"fullScreen"];

  v18 = BUDynamicCast();
  v19 = [v18 BOOLValue];

  v20 = [(BKJSALibraryManager *)self libraryAssetProvider];
  v21 = [v20 collectionController];
  v22 = kBKCollectionDefaultIDSamples;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001627A8;
  v27[3] = &unk_100A08D98;
  v27[4] = self;
  v28 = v10;
  v29 = v12;
  v30 = v16;
  v32 = v19;
  v31 = v11;
  v23 = v11;
  v24 = v16;
  v25 = v12;
  v26 = v10;
  [v21 addStoreID:v26 toCollectionID:v22 forceToTop:0 completion:v27];
}

- (void)markBookAsFinished:(id)a3 :(BOOL)a4 :(id)a5 :(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = JSALog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v23 = "[BKJSALibraryManager markBookAsFinished::::]";
    v24 = 2112;
    v25 = v10;
    v26 = 1024;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s adamID=%@, isFinished=%{BOOL}d", buf, 0x1Cu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100162D7C;
  v17[3] = &unk_100A08DC0;
  v17[4] = self;
  v18 = v10;
  v21 = v8;
  v19 = v12;
  v20 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  [(BKJSALibraryManager *)self _markAsset:v16 asFinished:v8 completion:v17];
}

- (void)_displayStoreConnectionErrorAlert:(BOOL)a3
{
  v3 = a3;
  if (+[NSThread isMainThread])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    if (v3)
    {
      v6 = @"Apple Books couldn’t connect to the Book Store. Check your Internet connection, then try again.";
    }

    else
    {
      v6 = @"Apple Books couldn’t connect to iCloud. Check your Internet connection, then try again.";
    }

    v14 = [v4 localizedStringForKey:v6 value:&stru_100A30A68 table:0];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Couldn’t Connect" value:&stru_100A30A68 table:0];

    v9 = [UIAlertController alertControllerWithTitle:v8 message:v14 preferredStyle:1];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
    v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
    [v9 addAction:v12];

    v13 = +[BKAppDelegate currentSceneController];
    [v13 presentViewController:v9 animated:1 completion:0];
  }
}

- (void)_openAssetID:(id)a3 options:(id)a4 sampleURL:(id)a5 isSample:(BOOL)a6 tracker:(id)a7 callback:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [(BKJSALibraryManager *)self libraryAssetProvider];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100163310;
  v25[3] = &unk_100A08E80;
  v25[4] = self;
  v26 = v15;
  v31 = a6;
  v27 = v14;
  v28 = v17;
  v29 = v16;
  v30 = v18;
  v20 = v16;
  v21 = v17;
  v22 = v14;
  v23 = v15;
  v24 = v18;
  [v19 fetchLibraryAssetFromAssetID:v22 handler:v25];
}

- (void)_openSample:(id)a3 options:(id)a4 sampleURL:(id)a5 contentData:(id)a6 tracker:(id)a7 callback:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100163C64;
  v31[3] = &unk_100A08EA8;
  v31[4] = self;
  v20 = v17;
  v32 = v20;
  v21 = v18;
  v33 = v21;
  v22 = v19;
  v36 = v22;
  v23 = v15;
  v34 = v23;
  v24 = v14;
  v35 = v24;
  v25 = objc_retainBlock(v31);
  v26 = v25;
  if (v16)
  {
    (v25[2])(v25, v16);
  }

  else
  {
    v27 = +[BSUIItemDescriptionCache sharedInstance];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100164490;
    v28[3] = &unk_100A08ED0;
    v29 = v26;
    v30 = v22;
    [v27 sampleDownloadURLForAssetID:v24 completion:v28];
  }
}

- (void)_previewAssetID:(id)a3 asset:(id)a4 fullScreen:(BOOL)a5 tracker:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = JSALog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v30 = "[BKJSALibraryManager _previewAssetID:asset:fullScreen:tracker:callback:]";
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v17 = [(BKJSALibraryManager *)self libraryAssetProvider];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001646DC;
  v22[3] = &unk_100A08F70;
  objc_copyWeak(&v27, buf);
  v18 = v12;
  v23 = v18;
  v19 = v14;
  v24 = v19;
  v20 = v15;
  v26 = v20;
  v21 = v13;
  v25 = v21;
  v28 = a5;
  [v17 fetchLibraryAssetFromAssetID:v18 handler:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (void)_markAsset:(id)a3 asFinished:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100164E08;
    v11[3] = &unk_100A03490;
    v12 = v7;
    v14 = a4;
    v13 = v8;
    dispatch_async(&_dispatch_main_q, v11);

    v9 = v12;
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Asset ID required. Cannot mark as finished";
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [NSError errorWithDomain:@"BKJSALibraryManager" code:-1 userInfo:v10];

    if (v8)
    {
      (*(v8 + 2))(v8, v9);
    }
  }
}

- (void)_downloadAssetID:(id)a3 redownloadParameters:(id)a4 isAudiobook:(BOOL)a5 hasRacSupport:(BOOL)a6 tracker:(id)a7 callback:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = [(BKJSALibraryManager *)self libraryItemStateProvider];
  [v18 updateStateToPurchasingForIdentifier:v14];

  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100165268;
  v24[3] = &unk_100A08FE8;
  v19 = v15;
  v25 = v19;
  v20 = v14;
  v26 = v20;
  v30 = a5;
  v21 = v16;
  v27 = v21;
  v31 = a6;
  objc_copyWeak(&v29, &location);
  v22 = v17;
  v28 = v22;
  v23 = objc_retainBlock(v24);
  (v23[2])();

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_downloadAssetIDs:(id)a3 callback:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100165630;
  v9[3] = &unk_100A09038;
  v9[4] = self;
  v6 = a4;
  v7 = a3;
  v8 = objc_retainBlock(v9);
  [(BKJSALibraryManager *)self _processAssets:v7 processor:v8 callback:v6];
}

- (void)_updateAssetIDs:(id)a3 callback:(id)a4
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10016591C;
  v12 = &unk_100A090B0;
  v13 = self;
  v14 = a3;
  v6 = v14;
  v7 = a4;
  v8 = objc_retainBlock(&v9);
  [(BKJSALibraryManager *)self _processAssets:v6 processor:v8 callback:v7, v9, v10, v11, v12, v13];
}

- (void)_processAssets:(id)a3 processor:(id)a4 callback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BKJSALibraryManager *)self libraryAssetProvider];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100165D50;
  v15[3] = &unk_100A09100;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  [v11 fetchLibraryAssetsFromAssetIDs:v13 handler:v15];
}

- (void)getCollectionNameForCollectionID:(id)a3 :(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isObject])
  {
    v7 = [BCCollection titleForDefaultCollectionID:v5];
    if (!v7)
    {
      v8 = +[BKLibraryManager defaultManager];
      v9 = [v8 collectionController];
      v10 = +[BKLibraryManager defaultManager];
      v11 = [v10 uiChildContext];
      v12 = [v9 mutableCollectionWithCollectionID:v5 inManagedObjectContext:v11 error:0];

      v7 = [v12 localizedTitle];
    }

    v13 = +[JSABridge sharedInstance];
    v14 = v13;
    if (v7)
    {
      v16 = v7;
      v15 = [NSArray arrayWithObjects:&v16 count:1];
      [v14 enqueueValueCall:v6 arguments:v15 file:@"BKJSALibraryManager.m" line:968];
    }

    else
    {
      [v13 enqueueValueCall:v6 arguments:0 file:@"BKJSALibraryManager.m" line:968];
    }
  }
}

- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKJSALibraryManager *)self storeController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001661B4;
  v7[3] = &unk_100A09128;
  v8 = v4;
  v6 = v4;
  [v5 getStoreIDsWithAvailableUpdatesWithCompletion:v7];
}

- (void)filterPurchasedBooks:(id)a3 callback:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isArray])
  {
    v7 = [v5 toArray];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = [NSMutableSet setWithArray:v7];
  v9 = +[BKLibraryManager defaultManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001663C0;
  v12[3] = &unk_100A037B0;
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  [v9 assetIDsOfPurchasedStoreAssets:v12];
}

- (id)_transactionFromOptionsForShowAsset:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100027460;
  v15 = sub_100027668;
  v16 = [(BKJSALibraryManager *)self _transactionFromOptions:v4];
  if (!v12[5])
  {
    if (+[NSThread isMainThread])
    {
      v5 = +[BKAppDelegate currentSceneController];
      v6 = [v5 newShowAssetTransaction];
      v7 = v12[5];
      v12[5] = v6;
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100166684;
      block[3] = &unk_100A03CF0;
      block[4] = &v11;
      dispatch_sync(&_dispatch_main_q, block);
    }
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (int64_t)_contentTypeForContentID:(id)a3 withLibraryAsset:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v4 = [a4 contentType];

  return [BAUtilities contentTypeFromAssetType:v4];
}

- (id)_contentDataForContentID:(id)a3 tracker:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKJSALibraryManager *)self _libraryAssetWithContentID:v7];
  v9 = [(BKJSALibraryManager *)self _contentDataForLibraryAsset:v8 contentID:v7 tracker:v6];

  return v9;
}

- (id)_contentDataForLibraryAsset:(id)a3 contentID:(id)a4 tracker:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [v8 assetID];
    v13 = [v11 contentPrivateIDForContentID:v12];
    v30 = [v11 contentUserIDForContentID:v12];

    v29 = [(BKJSALibraryManager *)self _contentTypeForContentID:v12 withLibraryAsset:v8];
    if ([v8 isOwned])
    {
      v14 = [v8 storeID];
      v15 = [v14 length];
      v16 = 1;
      if (!v15)
      {
        v16 = 2;
      }

      v28 = v16;
    }

    else
    {
      v28 = 0;
    }

    v31 = v9;
    v18 = +[BAEventReporter sharedReporter];
    v27 = [v18 seriesTypeForContentID:v12];

    if ([v8 isAudiobook])
    {
      v19 = [v8 hasRACSupport];
      if ([v19 BOOLValue])
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = [BAContentData alloc];
    v22 = [v8 contentType];
    if (v22 == 3)
    {
      v23 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 pageCount]);
    }

    else
    {
      v23 = 0;
    }

    v24 = [v8 supplementalContentAssets];
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 count]);
    v17 = [v21 initWithContentID:v12 contentType:v29 contentPrivateID:v13 contentUserID:v30 contentAcquisitionType:v28 contentSubType:0 contentLength:v23 supplementalContentCount:v25 seriesType:v27 productionType:v20 isUnified:0 contentKind:0];

    if (v22 == 3)
    {
    }

    v9 = v31;
  }

  else
  {
    v12 = [v10 contentPrivateIDForContentID:v9];
    v13 = [v11 contentUserIDForContentID:v9];

    v17 = [[BAContentData alloc] initWithContentID:v9 contentType:0 contentPrivateID:v12 contentUserID:v13 contentAcquisitionType:0 contentSubType:0 contentLength:0 supplementalContentCount:0 seriesType:0 productionType:0 isUnified:0 contentKind:0];
  }

  return v17;
}

- (id)_libraryAssetWithContentID:(id)a3
{
  v3 = a3;
  v4 = +[BKAppDelegate delegate];
  v5 = [v4 libraryAssetProvider];

  v6 = [v5 libraryAssetOnMainQueueWithAssetID:v3];

  return v6;
}

- (BKLibraryAssetProvider)libraryAssetProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryAssetProvider);

  return WeakRetained;
}

- (BKLibraryItemStateProvider)libraryItemStateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryItemStateProvider);

  return WeakRetained;
}

- (BKPresentersProvider)presentersProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_presentersProvider);

  return WeakRetained;
}

@end