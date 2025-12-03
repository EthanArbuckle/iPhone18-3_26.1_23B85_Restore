@interface BKJSALibraryManager
- (BKJSALibraryManager)initWithLibraryAssetProvider:(id)provider presentersProvider:(id)presentersProvider storeController:(id)controller;
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BKLibraryItemStateProvider)libraryItemStateProvider;
- (BKPresentersProvider)presentersProvider;
- (id)_contentDataForContentID:(id)d tracker:(id)tracker;
- (id)_contentDataForLibraryAsset:(id)asset contentID:(id)d tracker:(id)tracker;
- (id)_libraryAssetWithContentID:(id)d;
- (id)_transactionFromOptionsForShowAsset:(id)asset;
- (id)mostRecentPurchaseDate;
- (int64_t)_contentTypeForContentID:(id)d withLibraryAsset:(id)asset;
- (void)_displayStoreConnectionErrorAlert:(BOOL)alert;
- (void)_downloadAssetID:(id)d redownloadParameters:(id)parameters isAudiobook:(BOOL)audiobook hasRacSupport:(BOOL)support tracker:(id)tracker callback:(id)callback;
- (void)_downloadAssetIDs:(id)ds callback:(id)callback;
- (void)_fetchFinishedLibraryAssetWithAssetID:(id)d waitForNewAssetIfNeeded:(BOOL)needed callback:(id)callback;
- (void)_markAsset:(id)asset asFinished:(BOOL)finished completion:(id)completion;
- (void)_openAssetID:(id)d options:(id)options sampleURL:(id)l isSample:(BOOL)sample tracker:(id)tracker callback:(id)callback;
- (void)_openSample:(id)sample options:(id)options sampleURL:(id)l contentData:(id)data tracker:(id)tracker callback:(id)callback;
- (void)_previewAssetID:(id)d asset:(id)asset fullScreen:(BOOL)screen tracker:(id)tracker callback:(id)callback;
- (void)_processAssets:(id)assets processor:(id)processor callback:(id)callback;
- (void)_updateAssetIDs:(id)ds callback:(id)callback;
- (void)addAssetID:(id)d toCollectionID:(id)iD tracker:(id)tracker completionHandler:(id)handler;
- (void)addBookToWantToReadCollection:(id)collection :(id)a4 :(id)a5;
- (void)cancelDownloadForAssetID:(id)d completionHandler:(id)handler;
- (void)cancelDownloadForBook:(id)book :(id)a4 :(id)a5;
- (void)downloadAssetIDs:(id)ds completionHandler:(id)handler;
- (void)downloadBookWithRedownloadParameters:(id)parameters :(BOOL)a4 :(id)a5 :(id)a6 :(BOOL)a7;
- (void)downloadBooks:(id)books :(id)a4;
- (void)filterPurchasedBooks:(id)books callback:(id)callback;
- (void)getCollectionNameForCollectionID:(id)d :(id)a4;
- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)completion;
- (void)getVersion:(id)version;
- (void)markBookAsFinished:(id)finished :(BOOL)a4 :(id)a5 :(id)a6;
- (void)openBook:(id)book :(id)a4 :(id)a5 :(id)a6;
- (void)openBook:(id)book options:(id)options;
- (void)openSampleBook:(id)book downloadSampleURL:(id)l options:(id)options callback:(id)callback tracker:(id)tracker;
- (void)performAddRequest:(id)request completionHandler:(id)handler;
- (void)performRemoveRequest:(id)request completionHandler:(id)handler;
- (void)previewAudiobook:(id)audiobook :(id)a4 :(id)a5 :(id)a6;
- (void)removeAssetID:(id)d fromCollectionID:(id)iD tracker:(id)tracker completionHandler:(id)handler;
- (void)removeBookFromWantToReadCollection:(id)collection :(id)a4 :(id)a5;
- (void)setFinishedDateForAssetID:(id)d toDate:(id)date tracker:(id)tracker callback:(id)callback;
- (void)setFinishedYearForAssetID:(id)d toYearOfDate:(id)date tracker:(id)tracker callback:(id)callback;
- (void)showCollection:(id)collection :(id)a4;
- (void)unsetFinishedDateForAssetID:(id)d callback:(id)callback;
- (void)updateAssetIDs:(id)ds completionHandler:(id)handler;
- (void)updateBooks:(id)books :(id)a4;
@end

@implementation BKJSALibraryManager

- (BKJSALibraryManager)initWithLibraryAssetProvider:(id)provider presentersProvider:(id)presentersProvider storeController:(id)controller
{
  providerCopy = provider;
  presentersProviderCopy = presentersProvider;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = BKJSALibraryManager;
  v11 = [(BKJSALibraryManager *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_libraryAssetProvider, providerCopy);
    objc_storeWeak(&v12->_presentersProvider, presentersProviderCopy);
    objc_storeStrong(&v12->_storeController, controller);
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

- (void)downloadAssetIDs:(id)ds completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015EFA8;
  v7[3] = &unk_100A07A98;
  handlerCopy = handler;
  v6 = handlerCopy;
  [(BKJSALibraryManager *)self _downloadAssetIDs:ds callback:v7];
}

- (void)cancelDownloadForAssetID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  libraryAssetProvider = [(BKJSALibraryManager *)self libraryAssetProvider];
  v16 = dCopy;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015F12C;
  v12[3] = &unk_100A08C60;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = dCopy;
  v10 = handlerCopy;
  v11 = dCopy;
  [libraryAssetProvider fetchLibraryAssetsFromAssetIDs:v9 handler:v12];
}

- (void)updateAssetIDs:(id)ds completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015F2DC;
  v7[3] = &unk_100A07A98;
  handlerCopy = handler;
  v6 = handlerCopy;
  [(BKJSALibraryManager *)self _updateAssetIDs:ds callback:v7];
}

- (void)addAssetID:(id)d toCollectionID:(id)iD tracker:(id)tracker completionHandler:(id)handler
{
  handlerCopy = handler;
  trackerCopy = tracker;
  iDCopy = iD;
  dCopy = d;
  v14 = [[BSUIAssetActionModifyRequest alloc] initWithStoreID:dCopy collectionID:iDCopy tracker:trackerCopy];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015F434;
  v16[3] = &unk_100A08C88;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(BKJSALibraryManager *)self performAddRequest:v14 completionHandler:v16];
}

- (void)performAddRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  storeID = [requestCopy storeID];
  collectionID = [requestCopy collectionID];
  tracker = [requestCopy tracker];

  v11 = [[BKCollectionControllerMemberManagingAddRequest alloc] initWithStoreID:storeID collectionID:collectionID forceToTop:0];
  libraryAssetProvider = [(BKJSALibraryManager *)self libraryAssetProvider];
  collectionController = [libraryAssetProvider collectionController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10015F5F8;
  v15[3] = &unk_100A08CB0;
  v15[4] = self;
  v15[5] = storeID;
  v15[6] = tracker;
  v15[7] = collectionID;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [collectionController performAddRequest:v11 completion:v15];
}

- (void)removeAssetID:(id)d fromCollectionID:(id)iD tracker:(id)tracker completionHandler:(id)handler
{
  handlerCopy = handler;
  trackerCopy = tracker;
  iDCopy = iD;
  dCopy = d;
  v14 = [[BSUIAssetActionModifyRequest alloc] initWithStoreID:dCopy collectionID:iDCopy tracker:trackerCopy];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10015F938;
  v16[3] = &unk_100A08C88;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(BKJSALibraryManager *)self performRemoveRequest:v14 completionHandler:v16];
}

- (void)performRemoveRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  storeID = [requestCopy storeID];
  collectionID = [requestCopy collectionID];
  tracker = [requestCopy tracker];

  v11 = [[BKCollectionControllerMemberManagingRemoveRequest alloc] initWithStoreID:storeID collectionID:collectionID];
  libraryAssetProvider = [(BKJSALibraryManager *)self libraryAssetProvider];
  collectionController = [libraryAssetProvider collectionController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10015FAF8;
  v15[3] = &unk_100A08CB0;
  v15[4] = self;
  v15[5] = storeID;
  v15[6] = tracker;
  v15[7] = collectionID;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [collectionController performRemoveRequest:v11 completion:v15];
}

- (void)_fetchFinishedLibraryAssetWithAssetID:(id)d waitForNewAssetIfNeeded:(BOOL)needed callback:(id)callback
{
  dCopy = d;
  callbackCopy = callback;
  +[BKLibraryManager defaultManager];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10015FDE8;
  v14 = v13[3] = &unk_100A08CD8;
  v15 = dCopy;
  neededCopy = needed;
  selfCopy = self;
  v17 = callbackCopy;
  v10 = callbackCopy;
  v11 = dCopy;
  v12 = v14;
  [v12 performBlockOnWorkerQueue:v13];
}

- (void)setFinishedDateForAssetID:(id)d toDate:(id)date tracker:(id)tracker callback:(id)callback
{
  dCopy = d;
  dateCopy = date;
  trackerCopy = tracker;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10016013C;
  v17[3] = &unk_100A08D00;
  v21 = dCopy;
  callbackCopy = callback;
  v18 = dateCopy;
  v19 = trackerCopy;
  selfCopy = self;
  v13 = dCopy;
  v14 = trackerCopy;
  v15 = callbackCopy;
  v16 = dateCopy;
  [(BKJSALibraryManager *)self _fetchFinishedLibraryAssetWithAssetID:v13 waitForNewAssetIfNeeded:1 callback:v17];
}

- (void)setFinishedYearForAssetID:(id)d toYearOfDate:(id)date tracker:(id)tracker callback:(id)callback
{
  dCopy = d;
  dateCopy = date;
  trackerCopy = tracker;
  callbackCopy = callback;
  if (_os_feature_enabled_impl())
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001604FC;
    v18[3] = &unk_100A08D00;
    v19 = dateCopy;
    v23 = callbackCopy;
    v20 = trackerCopy;
    selfCopy = self;
    v22 = dCopy;
    [(BKJSALibraryManager *)self _fetchFinishedLibraryAssetWithAssetID:v22 waitForNewAssetIfNeeded:1 callback:v18];

    v14 = v19;
  }

  else
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Set finished year feature is not enabled";
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [NSError errorWithDomain:@"BKJSALibraryManager" code:-1 userInfo:v15];

    v16 = objc_retainBlock(callbackCopy);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0, v14);
    }
  }
}

- (void)unsetFinishedDateForAssetID:(id)d callback:(id)callback
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016077C;
  v7[3] = &unk_100A08D28;
  callbackCopy = callback;
  v6 = callbackCopy;
  [(BKJSALibraryManager *)self _fetchFinishedLibraryAssetWithAssetID:d waitForNewAssetIfNeeded:1 callback:v7];
}

- (void)getVersion:(id)version
{
  versionCopy = version;
  v4 = +[JSABridge sharedInstance];
  v6 = &off_100A43D18;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 enqueueValueCall:versionCopy arguments:v5 file:@"BKJSALibraryManager.m" line:304];
}

- (id)mostRecentPurchaseDate
{
  v2 = +[BKLibraryManager defaultManager];
  mostRecentPurchaseDate = [v2 mostRecentPurchaseDate];

  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = mostRecentPurchaseDate;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MRP: JS get mrp = %@", &v6, 0xCu);
  }

  return mostRecentPurchaseDate;
}

- (void)openBook:(id)book options:(id)options
{
  bookCopy = book;
  optionsCopy = options;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[BKJSALibraryManager openBook:options:]";
    v11 = 2112;
    v12 = bookCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", &v9, 0x16u);
  }

  [(BKJSALibraryManager *)self _openAssetID:bookCopy options:optionsCopy sampleURL:0 isSample:0 tracker:0 callback:&stru_100A08D48];
}

- (void)openBook:(id)book :(id)a4 :(id)a5 :(id)a6
{
  bookCopy = book;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = JSALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[BKJSALibraryManager openBook::::]";
    v22 = 2112;
    v23 = bookCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100160C54;
  v17[3] = &unk_100A034F8;
  v18 = bookCopy;
  v19 = v11;
  v15 = v11;
  v16 = bookCopy;
  [(BKJSALibraryManager *)self _openAssetID:v16 options:v13 sampleURL:0 isSample:0 tracker:v12 callback:v17];
}

- (void)downloadBooks:(id)books :(id)a4
{
  booksCopy = books;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [booksCopy componentsJoinedByString:{@", "}];
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
  [(BKJSALibraryManager *)self _downloadAssetIDs:booksCopy callback:v11];
}

- (void)downloadBookWithRedownloadParameters:(id)parameters :(BOOL)a4 :(id)a5 :(id)a6 :(BOOL)a7
{
  v7 = a7;
  v10 = a4;
  parametersCopy = parameters;
  v13 = a5;
  v14 = a6;
  v15 = [BLUtilities storeIDFromBuyParameters:parametersCopy];
  stringValue = [v15 stringValue];

  v17 = JSALog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136447234;
    v22 = "[BKJSALibraryManager downloadBookWithRedownloadParameters:::::]";
    v23 = 2112;
    v24 = stringValue;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v7;
    v29 = 2112;
    v30 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@ isAudiobook=%{BOOL}d, hasRacSupport=%{BOOL}d, params=%@", buf, 0x2Cu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001612B4;
  v19[3] = &unk_100A038D0;
  v20 = v13;
  v18 = v13;
  [(BKJSALibraryManager *)self _downloadAssetID:stringValue redownloadParameters:parametersCopy isAudiobook:v10 hasRacSupport:v7 tracker:v14 callback:v19];
}

- (void)cancelDownloadForBook:(id)book :(id)a4 :(id)a5
{
  bookCopy = book;
  v8 = a5;
  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[BKJSALibraryManager cancelDownloadForBook:::]";
    v17 = 2112;
    v18 = bookCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001614E0;
  v12[3] = &unk_100A034F8;
  v13 = bookCopy;
  v14 = v8;
  v10 = v8;
  v11 = bookCopy;
  [(BKJSALibraryManager *)self cancelDownloadForAssetID:v11 completionHandler:v12];
}

- (void)updateBooks:(id)books :(id)a4
{
  booksCopy = books;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [booksCopy componentsJoinedByString:{@", "}];
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
  [(BKJSALibraryManager *)self _updateAssetIDs:booksCopy callback:v11];
}

- (void)addBookToWantToReadCollection:(id)collection :(id)a4 :(id)a5
{
  collectionCopy = collection;
  v9 = a4;
  v10 = a5;
  v11 = JSALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "[BKJSALibraryManager addBookToWantToReadCollection:::]";
    v18 = 2112;
    v19 = collectionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v12 = kBKCollectionDefaultIDWantToRead;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100161B20;
  v14[3] = &unk_100A03520;
  v15 = v9;
  v13 = v9;
  [(BKJSALibraryManager *)self addAssetID:collectionCopy toCollectionID:v12 tracker:v10 completionHandler:v14];
}

- (void)removeBookFromWantToReadCollection:(id)collection :(id)a4 :(id)a5
{
  collectionCopy = collection;
  v9 = a4;
  v10 = a5;
  v11 = JSALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v17 = "[BKJSALibraryManager removeBookFromWantToReadCollection:::]";
    v18 = 2112;
    v19 = collectionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v12 = kBKCollectionDefaultIDWantToRead;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100161DE0;
  v14[3] = &unk_100A03520;
  v15 = v9;
  v13 = v9;
  [(BKJSALibraryManager *)self removeAssetID:collectionCopy fromCollectionID:v12 tracker:v10 completionHandler:v14];
}

- (void)showCollection:(id)collection :(id)a4
{
  collectionCopy = collection;
  v7 = a4;
  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v15 = "[BKJSALibraryManager showCollection::]";
    v16 = 2112;
    v17 = collectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s collectionID=%@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100162054;
  block[3] = &unk_100A03A30;
  block[4] = self;
  v12 = collectionCopy;
  v13 = v7;
  v9 = v7;
  v10 = collectionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)openSampleBook:(id)book downloadSampleURL:(id)l options:(id)options callback:(id)callback tracker:(id)tracker
{
  bookCopy = book;
  lCopy = l;
  optionsCopy = options;
  callbackCopy = callback;
  trackerCopy = tracker;
  v17 = JSALog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v25 = "[BKJSALibraryManager openSampleBook:downloadSampleURL:options:callback:tracker:]";
    v26 = 2112;
    v27 = lCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s url=%@", buf, 0x16u);
  }

  if ([lCopy length])
  {
    v18 = [NSURL URLWithString:lCopy];
  }

  else
  {
    v18 = 0;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100162394;
  v21[3] = &unk_100A034F8;
  v22 = bookCopy;
  v23 = callbackCopy;
  v19 = callbackCopy;
  v20 = bookCopy;
  [(BKJSALibraryManager *)self _openAssetID:v20 options:optionsCopy sampleURL:v18 isSample:1 tracker:trackerCopy callback:v21];
}

- (void)previewAudiobook:(id)audiobook :(id)a4 :(id)a5 :(id)a6
{
  audiobookCopy = audiobook;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = JSALog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v34 = "[BKJSALibraryManager previewAudiobook::::]";
    v35 = 2112;
    v36 = audiobookCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  v15 = [v13 objectForKeyedSubscript:@"storeAsset"];
  v16 = [BCMAssetWrapper assetWithData:v15];
  objc_opt_class();
  v17 = [v13 objectForKeyedSubscript:@"fullScreen"];

  v18 = BUDynamicCast();
  bOOLValue = [v18 BOOLValue];

  libraryAssetProvider = [(BKJSALibraryManager *)self libraryAssetProvider];
  collectionController = [libraryAssetProvider collectionController];
  v22 = kBKCollectionDefaultIDSamples;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001627A8;
  v27[3] = &unk_100A08D98;
  v27[4] = self;
  v28 = audiobookCopy;
  v29 = v12;
  v30 = v16;
  v32 = bOOLValue;
  v31 = v11;
  v23 = v11;
  v24 = v16;
  v25 = v12;
  v26 = audiobookCopy;
  [collectionController addStoreID:v26 toCollectionID:v22 forceToTop:0 completion:v27];
}

- (void)markBookAsFinished:(id)finished :(BOOL)a4 :(id)a5 :(id)a6
{
  v8 = a4;
  finishedCopy = finished;
  v11 = a5;
  v12 = a6;
  v13 = JSALog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v23 = "[BKJSALibraryManager markBookAsFinished::::]";
    v24 = 2112;
    v25 = finishedCopy;
    v26 = 1024;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s adamID=%@, isFinished=%{BOOL}d", buf, 0x1Cu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100162D7C;
  v17[3] = &unk_100A08DC0;
  v17[4] = self;
  v18 = finishedCopy;
  v21 = v8;
  v19 = v12;
  v20 = v11;
  v14 = v11;
  v15 = v12;
  v16 = finishedCopy;
  [(BKJSALibraryManager *)self _markAsset:v16 asFinished:v8 completion:v17];
}

- (void)_displayStoreConnectionErrorAlert:(BOOL)alert
{
  alertCopy = alert;
  if (+[NSThread isMainThread])
  {
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    if (alertCopy)
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

- (void)_openAssetID:(id)d options:(id)options sampleURL:(id)l isSample:(BOOL)sample tracker:(id)tracker callback:(id)callback
{
  dCopy = d;
  optionsCopy = options;
  lCopy = l;
  trackerCopy = tracker;
  callbackCopy = callback;
  libraryAssetProvider = [(BKJSALibraryManager *)self libraryAssetProvider];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100163310;
  v25[3] = &unk_100A08E80;
  v25[4] = self;
  v26 = optionsCopy;
  sampleCopy = sample;
  v27 = dCopy;
  v28 = trackerCopy;
  v29 = lCopy;
  v30 = callbackCopy;
  v20 = lCopy;
  v21 = trackerCopy;
  v22 = dCopy;
  v23 = optionsCopy;
  v24 = callbackCopy;
  [libraryAssetProvider fetchLibraryAssetFromAssetID:v22 handler:v25];
}

- (void)_openSample:(id)sample options:(id)options sampleURL:(id)l contentData:(id)data tracker:(id)tracker callback:(id)callback
{
  sampleCopy = sample;
  optionsCopy = options;
  lCopy = l;
  dataCopy = data;
  trackerCopy = tracker;
  callbackCopy = callback;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100163C64;
  v31[3] = &unk_100A08EA8;
  v31[4] = self;
  v20 = dataCopy;
  v32 = v20;
  v21 = trackerCopy;
  v33 = v21;
  v22 = callbackCopy;
  v36 = v22;
  v23 = optionsCopy;
  v34 = v23;
  v24 = sampleCopy;
  v35 = v24;
  v25 = objc_retainBlock(v31);
  v26 = v25;
  if (lCopy)
  {
    (v25[2])(v25, lCopy);
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

- (void)_previewAssetID:(id)d asset:(id)asset fullScreen:(BOOL)screen tracker:(id)tracker callback:(id)callback
{
  dCopy = d;
  assetCopy = asset;
  trackerCopy = tracker;
  callbackCopy = callback;
  v16 = JSALog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v30 = "[BKJSALibraryManager _previewAssetID:asset:fullScreen:tracker:callback:]";
    v31 = 2112;
    v32 = dCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s assetID=%@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  libraryAssetProvider = [(BKJSALibraryManager *)self libraryAssetProvider];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001646DC;
  v22[3] = &unk_100A08F70;
  objc_copyWeak(&v27, buf);
  v18 = dCopy;
  v23 = v18;
  v19 = trackerCopy;
  v24 = v19;
  v20 = callbackCopy;
  v26 = v20;
  v21 = assetCopy;
  v25 = v21;
  screenCopy = screen;
  [libraryAssetProvider fetchLibraryAssetFromAssetID:v18 handler:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (void)_markAsset:(id)asset asFinished:(BOOL)finished completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  if (assetCopy)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100164E08;
    v11[3] = &unk_100A03490;
    v12 = assetCopy;
    finishedCopy = finished;
    v13 = completionCopy;
    dispatch_async(&_dispatch_main_q, v11);

    v9 = v12;
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"Asset ID required. Cannot mark as finished";
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [NSError errorWithDomain:@"BKJSALibraryManager" code:-1 userInfo:v10];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v9);
    }
  }
}

- (void)_downloadAssetID:(id)d redownloadParameters:(id)parameters isAudiobook:(BOOL)audiobook hasRacSupport:(BOOL)support tracker:(id)tracker callback:(id)callback
{
  dCopy = d;
  parametersCopy = parameters;
  trackerCopy = tracker;
  callbackCopy = callback;
  libraryItemStateProvider = [(BKJSALibraryManager *)self libraryItemStateProvider];
  [libraryItemStateProvider updateStateToPurchasingForIdentifier:dCopy];

  objc_initWeak(&location, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100165268;
  v24[3] = &unk_100A08FE8;
  v19 = parametersCopy;
  v25 = v19;
  v20 = dCopy;
  v26 = v20;
  audiobookCopy = audiobook;
  v21 = trackerCopy;
  v27 = v21;
  supportCopy = support;
  objc_copyWeak(&v29, &location);
  v22 = callbackCopy;
  v28 = v22;
  v23 = objc_retainBlock(v24);
  (v23[2])();

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_downloadAssetIDs:(id)ds callback:(id)callback
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100165630;
  v9[3] = &unk_100A09038;
  v9[4] = self;
  callbackCopy = callback;
  dsCopy = ds;
  v8 = objc_retainBlock(v9);
  [(BKJSALibraryManager *)self _processAssets:dsCopy processor:v8 callback:callbackCopy];
}

- (void)_updateAssetIDs:(id)ds callback:(id)callback
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10016591C;
  v12 = &unk_100A090B0;
  selfCopy = self;
  dsCopy = ds;
  v6 = dsCopy;
  callbackCopy = callback;
  v8 = objc_retainBlock(&v9);
  [(BKJSALibraryManager *)self _processAssets:v6 processor:v8 callback:callbackCopy, v9, v10, v11, v12, selfCopy];
}

- (void)_processAssets:(id)assets processor:(id)processor callback:(id)callback
{
  assetsCopy = assets;
  processorCopy = processor;
  callbackCopy = callback;
  libraryAssetProvider = [(BKJSALibraryManager *)self libraryAssetProvider];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100165D50;
  v15[3] = &unk_100A09100;
  v16 = assetsCopy;
  selfCopy = self;
  v18 = callbackCopy;
  v19 = processorCopy;
  v12 = processorCopy;
  v13 = assetsCopy;
  v14 = callbackCopy;
  [libraryAssetProvider fetchLibraryAssetsFromAssetIDs:v13 handler:v15];
}

- (void)getCollectionNameForCollectionID:(id)d :(id)a4
{
  dCopy = d;
  v6 = a4;
  if ([v6 isObject])
  {
    localizedTitle = [BCCollection titleForDefaultCollectionID:dCopy];
    if (!localizedTitle)
    {
      v8 = +[BKLibraryManager defaultManager];
      collectionController = [v8 collectionController];
      v10 = +[BKLibraryManager defaultManager];
      uiChildContext = [v10 uiChildContext];
      v12 = [collectionController mutableCollectionWithCollectionID:dCopy inManagedObjectContext:uiChildContext error:0];

      localizedTitle = [v12 localizedTitle];
    }

    v13 = +[JSABridge sharedInstance];
    v14 = v13;
    if (localizedTitle)
    {
      v16 = localizedTitle;
      v15 = [NSArray arrayWithObjects:&v16 count:1];
      [v14 enqueueValueCall:v6 arguments:v15 file:@"BKJSALibraryManager.m" line:968];
    }

    else
    {
      [v13 enqueueValueCall:v6 arguments:0 file:@"BKJSALibraryManager.m" line:968];
    }
  }
}

- (void)getStoreIDsWithAvailableUpdatesWithCompletion:(id)completion
{
  completionCopy = completion;
  storeController = [(BKJSALibraryManager *)self storeController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001661B4;
  v7[3] = &unk_100A09128;
  v8 = completionCopy;
  v6 = completionCopy;
  [storeController getStoreIDsWithAvailableUpdatesWithCompletion:v7];
}

- (void)filterPurchasedBooks:(id)books callback:(id)callback
{
  booksCopy = books;
  callbackCopy = callback;
  if ([booksCopy isArray])
  {
    toArray = [booksCopy toArray];
  }

  else
  {
    toArray = &__NSArray0__struct;
  }

  v8 = [NSMutableSet setWithArray:toArray];
  v9 = +[BKLibraryManager defaultManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001663C0;
  v12[3] = &unk_100A037B0;
  v13 = v8;
  v14 = callbackCopy;
  v10 = callbackCopy;
  v11 = v8;
  [v9 assetIDsOfPurchasedStoreAssets:v12];
}

- (id)_transactionFromOptionsForShowAsset:(id)asset
{
  assetCopy = asset;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100027460;
  v15 = sub_100027668;
  v16 = [(BKJSALibraryManager *)self _transactionFromOptions:assetCopy];
  if (!v12[5])
  {
    if (+[NSThread isMainThread])
    {
      v5 = +[BKAppDelegate currentSceneController];
      newShowAssetTransaction = [v5 newShowAssetTransaction];
      v7 = v12[5];
      v12[5] = newShowAssetTransaction;
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

- (int64_t)_contentTypeForContentID:(id)d withLibraryAsset:(id)asset
{
  if (!asset)
  {
    return 0;
  }

  contentType = [asset contentType];

  return [BAUtilities contentTypeFromAssetType:contentType];
}

- (id)_contentDataForContentID:(id)d tracker:(id)tracker
{
  trackerCopy = tracker;
  dCopy = d;
  v8 = [(BKJSALibraryManager *)self _libraryAssetWithContentID:dCopy];
  v9 = [(BKJSALibraryManager *)self _contentDataForLibraryAsset:v8 contentID:dCopy tracker:trackerCopy];

  return v9;
}

- (id)_contentDataForLibraryAsset:(id)asset contentID:(id)d tracker:(id)tracker
{
  assetCopy = asset;
  dCopy = d;
  trackerCopy = tracker;
  v11 = trackerCopy;
  if (assetCopy)
  {
    assetID = [assetCopy assetID];
    v13 = [v11 contentPrivateIDForContentID:assetID];
    v30 = [v11 contentUserIDForContentID:assetID];

    v29 = [(BKJSALibraryManager *)self _contentTypeForContentID:assetID withLibraryAsset:assetCopy];
    if ([assetCopy isOwned])
    {
      storeID = [assetCopy storeID];
      v15 = [storeID length];
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

    v31 = dCopy;
    v18 = +[BAEventReporter sharedReporter];
    v27 = [v18 seriesTypeForContentID:assetID];

    if ([assetCopy isAudiobook])
    {
      hasRACSupport = [assetCopy hasRACSupport];
      if ([hasRACSupport BOOLValue])
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
    contentType = [assetCopy contentType];
    if (contentType == 3)
    {
      v23 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [assetCopy pageCount]);
    }

    else
    {
      v23 = 0;
    }

    supplementalContentAssets = [assetCopy supplementalContentAssets];
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [supplementalContentAssets count]);
    v17 = [v21 initWithContentID:assetID contentType:v29 contentPrivateID:v13 contentUserID:v30 contentAcquisitionType:v28 contentSubType:0 contentLength:v23 supplementalContentCount:v25 seriesType:v27 productionType:v20 isUnified:0 contentKind:0];

    if (contentType == 3)
    {
    }

    dCopy = v31;
  }

  else
  {
    assetID = [trackerCopy contentPrivateIDForContentID:dCopy];
    v13 = [v11 contentUserIDForContentID:dCopy];

    v17 = [[BAContentData alloc] initWithContentID:dCopy contentType:0 contentPrivateID:assetID contentUserID:v13 contentAcquisitionType:0 contentSubType:0 contentLength:0 supplementalContentCount:0 seriesType:0 productionType:0 isUnified:0 contentKind:0];
  }

  return v17;
}

- (id)_libraryAssetWithContentID:(id)d
{
  dCopy = d;
  v4 = +[BKAppDelegate delegate];
  libraryAssetProvider = [v4 libraryAssetProvider];

  v6 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetID:dCopy];

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