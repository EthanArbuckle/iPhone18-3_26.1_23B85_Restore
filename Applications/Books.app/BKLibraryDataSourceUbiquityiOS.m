@interface BKLibraryDataSourceUbiquityiOS
+ (id)mapUbiquityMetadataToPlistMetadata:(id)a3;
- (BKAssetCoverImageHelping)coverImageHelper;
- (BKAssetMetadataCaching)assetMetadataCache;
- (BKLibraryDataSourceUbiquityiOS)initWithUbiquityStatusMonitor:(id)a3 assetMetadataCache:(id)a4 coverImageHelper:(id)a5 imageSource:(id)a6;
- (BKLibraryImageSource)imageSource;
- (BKLibraryManager)libraryManager;
- (BOOL)_assetHasChanged:(id)a3 updatedAsset:(id)a4;
- (BOOL)_deleteFromAllDevicesURL:(id)a3;
- (BOOL)_evictFromDeviceURL:(id)a3 assetID:(id)a4;
- (BOOL)_isFileExistsError:(id)a3;
- (BOOL)iq_downloadingAssetID:(id)a3;
- (BOOL)iq_updateThumbnailIfNeededForAssetID:(id)a3;
- (id)_counterpartURLForURL:(id)a3;
- (id)_coverCacheURLsForAssetIDs:(id)a3;
- (id)_persistedInfoURL;
- (id)iq_createTempUbiquityAssetFromMetadataDict:(id)a3;
- (id)iq_createUbiquityAssetFromMetadataDict:(id)a3;
- (id)iq_downloadProgressStatusesWithAssetID:(id)a3 item:(id)a4;
- (id)iq_overallDownloadProgressValueForAssetID:(id)a3;
- (id)p_moveToUbiquityItemAtURL:(id)a3 preferredFileNameWithoutPathExtension:(id)a4;
- (id)plistEntryAsDictionaryFromAssetID:(id)a3 path:(id)a4 needsCoordination:(BOOL)a5;
- (id)udq_reportDownloadProgressIfNeeded:(id)a3;
- (id)umq_metadataDictsFromUbiquityDocumentItems:(id)a3;
- (void)_addAssetsToCoverCacheManager:(id)a3;
- (void)_addLocalAssetsForURLs:(id)a3 completion:(id)a4;
- (void)_addSupplementalContentMetadataFromAsset:(id)a3 toExistingAsset:(id)a4;
- (void)_loadCounterpartInfo;
- (void)_makeBooksUbiquitous:(id)a3 completion:(id)a4;
- (void)_readPersistedInfoFromDisk;
- (void)_removeAssetIDsFromCoverCacheManager:(id)a3;
- (void)_removeCounterpartsForAssetIDs:(id)a3;
- (void)_reportProgressWithItems:(id)a3;
- (void)_requestReOpenWithConflictDictionary:(id)a3 requestOpenAssetIDs:(id)a4;
- (void)_triggerDownload:(id)a3 assetID:(id)a4;
- (void)_unclaimAssetIDs:(id)a3;
- (void)_updateUbiquityAssetID:(id)a3 withMetadata:(id)a4;
- (void)addMetadataQueryHandlingObserver:(id)a3;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)cb_persistInfoToDisk;
- (void)dealloc;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)extractOperationDidFail:(id)a3;
- (void)extractOperationDidFinish:(id)a3;
- (void)fetchAllUbiquitousBooksWithCompletion:(id)a3;
- (void)fetchAssetIDsWithCompletion:(id)a3;
- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4;
- (void)handleFileGenerationChangedNotification:(id)a3;
- (void)iq_addOrUpdateDownloadingAssetID:(id)a3 progressValue:(double)a4;
- (void)iq_clearAllCachesAndPersistentInfoFromDisk;
- (void)iq_clearCachesForAssetIDs:(id)a3;
- (void)iq_populateAssetIDFromURLDictionary;
- (void)iq_purgeUnzippedBooksCacheIfNeededExceptURL:(id)a3;
- (void)iq_removeDownloadingAssetID:(id)a3;
- (void)iq_setUbiquityDocumentMonitoringEnabled:(BOOL)a3;
- (void)iq_updateCachedAssetGeneration:(id)a3 url:(id)a4;
- (void)mq_batchOfItemsDidBecomeAvailable:(id)a3;
- (void)mq_batchOfItemsDidChange:(id)a3;
- (void)mq_itemsDidBecomeAvailable:(id)a3;
- (void)mq_itemsDidBecomeUnavailable:(id)a3;
- (void)mq_itemsDidChange:(id)a3;
- (void)removeMetadataQueryHandlingObserver:(id)a3;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
- (void)ubiquityDocumentsObserver:(id)a3 didLoadWithItems:(id)a4;
- (void)ubiquityDocumentsObserver:(id)a3 itemsDidBecomeAvailable:(id)a4;
- (void)ubiquityDocumentsObserver:(id)a3 itemsDidBecomeUnavailable:(id)a4;
- (void)ubiquityDocumentsObserver:(id)a3 itemsDidChange:(id)a4;
- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)a3 oldIdentity:(id)a4;
- (void)udq_reportUploadProgressIfNeeded:(id)a3 completedAssetIDs:(id)a4 failedAssets:(id)a5;
- (void)updateAsset:(id)a3 userEditedTitle:(id)a4 completion:(id)a5;
@end

@implementation BKLibraryDataSourceUbiquityiOS

- (void)_readPersistedInfoFromDisk
{
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023724;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_sync(ivarQueue, block);
}

- (id)_persistedInfoURL
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:0];

  v4 = [v3 URLByAppendingPathComponent:@"BKLibraryDataSourceUbiquityiOS" isDirectory:0];

  return v4;
}

- (void)_loadCounterpartInfo
{
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000248F0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(ivarQueue, block);
}

- (BKLibraryDataSourceUbiquityiOS)initWithUbiquityStatusMonitor:(id)a3 assetMetadataCache:(id)a4 coverImageHelper:(id)a5 imageSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  kdebug_trace();
  v15 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "initWithUbiquityStatusMonitor", buf, 2u);
  }

  v77.receiver = self;
  v77.super_class = BKLibraryDataSourceUbiquityiOS;
  v16 = [(BKLibraryDataSourceUbiquityiOS *)&v77 init];
  if (v16)
  {
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.ibooks.datasource.ubiquity.ivarQueue", v17);
    ivarQueue = v16->_ivarQueue;
    v16->_ivarQueue = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.ibooks.datasource.ubiquity.uploadDownloadQueue", v20);
    uploadDownloadQueue = v16->_uploadDownloadQueue;
    v16->_uploadDownloadQueue = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.ibooks.datasource.ubiquity.workQueue", v23);
    workQueue = v16->_workQueue;
    v16->_workQueue = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("com.apple.ibooks.datasource.ubiquity.updateAssetMetadataQueue", v26);
    updateAssetMetadataQueue = v16->_updateAssetMetadataQueue;
    v16->_updateAssetMetadataQueue = v27;

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create("com.apple.ibooks.datasource.ubiquity.persistToDiskQueue", v29);
    persistToDiskQueue = v16->_persistToDiskQueue;
    v16->_persistToDiskQueue = v30;

    v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v33 = dispatch_queue_create("com.apple.ibooks.datasource.ubiquity.processMetadataQueryQueue", v32);
    processMetadataQueryQueue = v16->_processMetadataQueryQueue;
    v16->_processMetadataQueryQueue = v33;

    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_create("com.apple.ibooks.datasource.ubiquity.processUbiquityMetadataQueue", v35);
    processUbiquityMetadataQueue = v16->_processUbiquityMetadataQueue;
    v16->_processUbiquityMetadataQueue = v36;

    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create("com.apple.ibooks.datasource.ubiquity.completionHandlerQueue", v38);
    completionHandlerQueue = v16->_completionHandlerQueue;
    v16->_completionHandlerQueue = v39;

    v41 = objc_opt_new();
    uncompressQueue = v16->_uncompressQueue;
    v16->_uncompressQueue = v41;

    [(NSOperationQueue *)v16->_uncompressQueue setMaxConcurrentOperationCount:1];
    objc_storeWeak(&v16->_imageSource, v14);
    if (!v11)
    {
      sub_10078E3E4();
    }

    objc_storeStrong(&v16->_ubiquityStatusMonitor, a3);
    [v11 addObserver:v16];
    v43 = +[NSUserDefaults standardUserDefaults];
    v16->_skipThumbnailGeneration = [v43 BOOLForKey:@"BKSkipUbiquityThumbnailing"];

    v44 = objc_opt_new();
    iq_urlFromAssetID = v16->_iq_urlFromAssetID;
    v16->_iq_urlFromAssetID = v44;

    v46 = objc_opt_new();
    iq_counterpartURLFromAssetID = v16->_iq_counterpartURLFromAssetID;
    v16->_iq_counterpartURLFromAssetID = v46;

    v48 = objc_opt_new();
    iq_assetIDFromURL = v16->_iq_assetIDFromURL;
    v16->_iq_assetIDFromURL = v48;

    v50 = objc_opt_new();
    iq_assetFromAssetID = v16->_iq_assetFromAssetID;
    v16->_iq_assetFromAssetID = v50;

    v52 = objc_opt_new();
    iq_insertionDateFromAssetID = v16->_iq_insertionDateFromAssetID;
    v16->_iq_insertionDateFromAssetID = v52;

    v54 = objc_opt_new();
    iq_uploadingAssetIDs = v16->_iq_uploadingAssetIDs;
    v16->_iq_uploadingAssetIDs = v54;

    v56 = objc_opt_new();
    iq_downloadingProgressFromAssetID = v16->_iq_downloadingProgressFromAssetID;
    v16->_iq_downloadingProgressFromAssetID = v56;

    v58 = objc_opt_new();
    iq_downloadingAssetIDsFromParentAssetID = v16->_iq_downloadingAssetIDsFromParentAssetID;
    v16->_iq_downloadingAssetIDsFromParentAssetID = v58;

    v60 = [NSHashTable hashTableWithOptions:517];
    cq_metadataQueryHandlingObservers = v16->_cq_metadataQueryHandlingObservers;
    v16->_cq_metadataQueryHandlingObservers = v60;

    objc_storeWeak(&v16->_assetMetadataCache, v12);
    objc_storeWeak(&v16->_coverImageHelper, v13);
    v62 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v63 = [v62 lastObject];

    v64 = [v63 stringByAppendingPathComponent:@"BKLibraryDataSourceUbiquityiOS"];

    v65 = [v64 stringByAppendingPathComponent:@"unzipped-books"];

    v66 = [NSURL fileURLWithPath:v65];
    unzippedCounterpartCacheURL = v16->_unzippedCounterpartCacheURL;
    v16->_unzippedCounterpartCacheURL = v66;

    v68 = +[NSFileManager defaultManager];
    if (([v68 fileExistsAtPath:v65] & 1) == 0)
    {
      v16->_emptyCacheDirectory = 1;
      [v68 createDirectoryAtPath:v65 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v69 = [BUCoalescingCallBlock alloc];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000D6DF0;
    v75[3] = &unk_100A06CB0;
    v70 = v16;
    v76 = v70;
    v71 = [v69 initWithNotifyBlock:v75 blockDescription:@"BKLibraryDataSourceUbiquityiOS"];
    v72 = v70[25];
    v70[25] = v71;

    [v70[25] setCoalescingDelay:0.5];
    v73 = +[NSNotificationCenter defaultCenter];
    [v73 addObserver:v70 selector:"handleFileGenerationChangedNotification:" name:BCUbiqityFileGenerationDidChangeNotification object:0];

    [v70 _readPersistedInfoFromDisk];
    [v70 _loadCounterpartInfo];
  }

  kdebug_trace();

  return v16;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(IMUbiquityDocumentsObserver *)self->_ubiquityDocumentsObserver tearDownQuery];
  ubiquityDocumentsObserver = self->_ubiquityDocumentsObserver;
  self->_ubiquityDocumentsObserver = 0;

  v5.receiver = self;
  v5.super_class = BKLibraryDataSourceUbiquityiOS;
  [(BKLibraryDataSourceUbiquityiOS *)&v5 dealloc];
}

- (void)addMetadataQueryHandlingObserver:(id)a3
{
  v4 = a3;
  completionHandlerQueue = self->_completionHandlerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D6FF0;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(completionHandlerQueue, v7);
}

- (void)removeMetadataQueryHandlingObserver:(id)a3
{
  v4 = a3;
  completionHandlerQueue = self->_completionHandlerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7094;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(completionHandlerQueue, v7);
}

- (void)fetchAssetIDsWithCompletion:(id)a3
{
  v4 = a3;
  kdebug_trace();
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7170;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(ivarQueue, v7);
}

- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D741C;
  block[3] = &unk_100A049A0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(ivarQueue, block);
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  kdebug_trace();
  v11 = [v10 objectForKey:@"assetID"];
  v12 = [v10 objectForKey:@"title"];

  ivarQueue = self->_ivarQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D78DC;
  v17[3] = &unk_100A06D50;
  v18 = v11;
  v19 = self;
  v22 = width;
  v23 = height;
  v20 = v12;
  v21 = v9;
  v14 = v9;
  v15 = v12;
  v16 = v11;
  dispatch_async(ivarQueue, v17);
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v22 = [v8 count];
    v23 = 1024;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "deleteAssets: count: %ld exhaustive: %d", buf, 0x12u);
  }

  v11 = [v8 valueForKey:@"assetID"];
  v12 = [v11 bu_arrayByRemovingNSNulls];

  workQueue = self->_workQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D7EBC;
  v16[3] = &unk_100A057C8;
  v17 = v12;
  v18 = self;
  v20 = v6;
  v19 = v9;
  v14 = v9;
  v15 = v12;
  dispatch_async(workQueue, v16);
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  kdebug_trace();
  v9 = [v8 assetID];
  v10 = [v8 title];

  if ([v9 length])
  {
    ivarQueue = self->_ivarQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000D8474;
    v15[3] = &unk_100A04FE8;
    v15[4] = self;
    v16 = v9;
    v17 = v10;
    v18 = v7;
    dispatch_async(ivarQueue, v15);
  }

  else
  {
    v12 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10078E4C8();
    }

    v13 = objc_retainBlock(v7);
    if (v13)
    {
      v14 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
      v13[2](v13, 0, 1, v14);
    }
  }
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 assetID];
  if ([v7 length])
  {
    ivarQueue = self->_ivarQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D924C;
    block[3] = &unk_100A049A0;
    block[4] = self;
    v13 = v7;
    v14 = v6;
    dispatch_async(ivarQueue, block);
  }

  else
  {
    v9 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10078E6DC();
    }

    v10 = objc_retainBlock(v6);
    if (v10)
    {
      v11 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)updateAsset:(id)a3 userEditedTitle:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = [a3 assetID];
  if ([v8 length])
  {
    ivarQueue = self->_ivarQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D9674;
    block[3] = &unk_100A03A30;
    block[4] = self;
    v12 = v8;
    v13 = v7;
    dispatch_async(ivarQueue, block);
  }

  else
  {
    v10 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10078E788();
    }
  }
}

- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)a3 oldIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ubiquityStatusChangedToAvailableWithNewIdentity: %{public}@ oldIdentity: %{public}@", buf, 0x16u);
  }

  completionHandlerQueue = self->_completionHandlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D99B0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(completionHandlerQueue, block);
}

- (void)ubiquityDocumentsObserver:(id)a3 didLoadWithItems:(id)a4
{
  v5 = a4;
  kdebug_trace();
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D9CC0;
  v8[3] = &unk_100A03440;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)a3 itemsDidBecomeAvailable:(id)a4
{
  v5 = a4;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DA2F8;
  v8[3] = &unk_100A03440;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)a3 itemsDidBecomeUnavailable:(id)a4
{
  v5 = a4;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DA444;
  v8[3] = &unk_100A03440;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)a3 itemsDidChange:(id)a4
{
  v5 = a4;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DA5B0;
  v8[3] = &unk_100A03440;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (id)umq_metadataDictsFromUbiquityDocumentItems:(id)a3
{
  v3 = a3;
  v19 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    v7 = BCMetadataXattrAssetID;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 url];
        v11 = [BCUbiquityMetadataHelper ubiquityMetadataForURL:v10 options:-262145 needsCoordination:1];
        v12 = [v11 mutableCopy];

        v13 = [v12 objectForKeyedSubscript:v7];
        v14 = v13;
        if (v12 && [v13 length])
        {
          v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isLocal]);
          [v12 setObject:v15 forKeyedSubscript:@"isLocal"];

          v16 = [v9 contentChangedDate];
          [v12 setObject:v16 forKeyedSubscript:@"contentChangedDate"];

          v17 = [v9 contentFileSize];
          [v12 setObject:v17 forKeyedSubscript:@"contentFileSize"];

          [v12 setObject:v10 forKeyedSubscript:@"itemURL"];
          [v19 addObject:v12];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  return v19;
}

- (void)mq_itemsDidBecomeAvailable:(id)a3
{
  v11 = a3;
  v4 = [v11 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = v4;
    do
    {
      v8 = v7 - 64;
      if (v7 >= 0x40)
      {
        v9 = 64;
      }

      else
      {
        v9 = v7;
      }

      v10 = [v11 subarrayWithRange:{v6, v9}];
      [(BKLibraryDataSourceUbiquityiOS *)self mq_batchOfItemsDidBecomeAvailable:v10];

      v6 += 64;
      v7 = v8;
    }

    while (v6 < v5);
  }
}

- (void)mq_batchOfItemsDidBecomeAvailable:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    v7 = [v4 valueForKey:@"url"];
    v8 = [v7 bu_prettyDescription];
    *buf = 134218242;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidBecomeAvailable: count:%ld itemURLs:(%@)", buf, 0x16u);
  }

  [(BKLibraryDataSourceUbiquityiOS *)self _reportProgressWithItems:v4];
  processUbiquityMetadataQueue = self->_processUbiquityMetadataQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DAAF0;
  v11[3] = &unk_100A03440;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  dispatch_async(processUbiquityMetadataQueue, v11);
}

- (void)mq_itemsDidBecomeUnavailable:(id)a3
{
  v4 = a3;
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "mq_itemsDidBecomeUnavailable: %@", buf, 0xCu);
  }

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB260;
  block[3] = &unk_100A03A30;
  v8 = v4;
  v15 = v8;
  v16 = self;
  v9 = v6;
  v17 = v9;
  dispatch_sync(ivarQueue, block);
  if ([v9 count])
  {
    completionHandlerQueue = self->_completionHandlerQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000DB40C;
    v11[3] = &unk_100A03440;
    v12 = v9;
    v13 = self;
    dispatch_async(completionHandlerQueue, v11);
  }
}

- (void)mq_itemsDidChange:(id)a3
{
  v4 = a3;
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    v7 = [v4 valueForKey:@"url"];
    v8 = [v7 bu_prettyDescription];
    v16 = 134218242;
    v17 = v6;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "mq_itemsDidChange: count: %lu, items:%@", &v16, 0x16u);
  }

  v9 = [v4 count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = v9;
    do
    {
      v13 = v12 - 64;
      if (v12 >= 0x40)
      {
        v14 = 64;
      }

      else
      {
        v14 = v12;
      }

      v15 = [v4 subarrayWithRange:{v11, v14}];
      [(BKLibraryDataSourceUbiquityiOS *)self mq_batchOfItemsDidChange:v15];

      v11 += 64;
      v12 = v13;
    }

    while (v11 < v10);
  }
}

- (void)mq_batchOfItemsDidChange:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 valueForKey:@"url"];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: %@", buf, 0xCu);
  }

  [(BKLibraryDataSourceUbiquityiOS *)self _reportProgressWithItems:v4];
  processUbiquityMetadataQueue = self->_processUbiquityMetadataQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DB788;
  v9[3] = &unk_100A03440;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(processUbiquityMetadataQueue, v9);
}

- (BOOL)_assetHasChanged:(id)a3 updatedAsset:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 generation] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v6 generation];
    v7 = v8 > [v5 generation];
  }

  return v7;
}

- (void)_requestReOpenWithConflictDictionary:(id)a3 requestOpenAssetIDs:(id)a4
{
  v5 = a3;
  v6 = a4;
  +[BKAppDelegate sceneManager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DCDEC;
  v11 = block[3] = &unk_100A03A30;
  v12 = v6;
  v13 = v5;
  v7 = v5;
  v8 = v6;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_reportProgressWithItems:(id)a3
{
  v4 = a3;
  kdebug_trace();
  uploadDownloadQueue = self->_uploadDownloadQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DCF00;
  v7[3] = &unk_100A03440;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(uploadDownloadQueue, v7);
}

- (BOOL)iq_downloadingAssetID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_iq_downloadingProgressFromAssetID objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)iq_addOrUpdateDownloadingAssetID:(id)a3 progressValue:(double)a4
{
  v11 = a3;
  v6 = [NSNumber numberWithDouble:a4];
  [(NSMutableDictionary *)self->_iq_downloadingProgressFromAssetID setObject:v6 forKeyedSubscript:v11];

  v7 = [(NSMutableDictionary *)self->_iq_assetFromAssetID objectForKeyedSubscript:v11];
  v8 = [v7 storePlaylistID];

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID objectForKeyedSubscript:v8];
    if (!v9)
    {
      iq_downloadingAssetIDsFromParentAssetID = self->_iq_downloadingAssetIDsFromParentAssetID;
      v9 = objc_opt_new();
      [(NSMutableDictionary *)iq_downloadingAssetIDsFromParentAssetID setObject:v9 forKeyedSubscript:v8];
    }

    [v9 addObject:v11];
  }
}

- (void)iq_removeDownloadingAssetID:(id)a3
{
  v8 = a3;
  [(NSMutableDictionary *)self->_iq_downloadingProgressFromAssetID removeObjectForKey:v8];
  v4 = [(NSMutableDictionary *)self->_iq_assetFromAssetID objectForKeyedSubscript:v8];
  v5 = [v4 storePlaylistID];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      [v6 removeObject:v8];
      if (![v7 count])
      {
        [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID removeObjectForKey:v5];
      }
    }
  }
}

- (id)iq_overallDownloadProgressValueForAssetID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_iq_downloadingProgressFromAssetID objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID objectForKeyedSubscript:v4];
    if ([v6 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        v11 = 0.0;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = [(NSMutableDictionary *)self->_iq_downloadingProgressFromAssetID objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i), v17];
            v14 = v13;
            if (v13)
            {
              [v13 floatValue];
              v11 = v11 + v15;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = 0.0;
      }

      v5 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v11 / [v7 count]);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)iq_downloadProgressStatusesWithAssetID:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 isDownloading];
  v9 = [v7 isLocal];
  v42 = v7;
  v10 = [v7 downloadingPercent];
  [v10 floatValue];
  v12 = (v11 / 100.0);

  v13 = 7;
  if (v9)
  {
    v13 = 5;
  }

  v14 = 1.0;
  if (!v9)
  {
    v14 = v12;
  }

  if (v8)
  {
    v15 = 4;
  }

  else
  {
    v15 = v13;
  }

  if (!v8)
  {
    v12 = v14;
  }

  [(BKLibraryDataSourceUbiquityiOS *)self iq_addOrUpdateDownloadingAssetID:v6 progressValue:v12];
  v16 = [[NSMutableSet alloc] initWithCapacity:2];
  v17 = [[BKLibraryDownloadStatus alloc] initWithAssetID:v6 state:v15 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:v12];
  [v16 addObject:v17];
  v43 = v6;
  v18 = [(NSMutableDictionary *)self->_iq_assetFromAssetID objectForKeyedSubscript:v6];
  v19 = [v18 storePlaylistID];

  v40 = v19;
  if (v19)
  {
    v20 = [(BKLibraryDataSourceUbiquityiOS *)self iq_overallDownloadProgressValueForAssetID:v19, v19];
    [v20 floatValue];
    v22 = v21;

    v23 = self;
    v24 = [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID objectForKeyedSubscript:v19];
    if ([v24 count] > 1)
    {
      v15 = 4;
    }

    v25 = [[BKLibraryDownloadStatus alloc] initWithAssetID:v19 supplementalContentState:v15 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:v22];

    [v16 addObject:v25];
    v41 = v25;
  }

  else
  {
    v41 = v17;
    v23 = self;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = v16;
  v27 = [v26 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    v30 = BSUIUbiquityDownloadStatusNotification;
    v31 = BSUIUbiquityDownloadProgressKey;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v44 + 1) + 8 * i);
        v34 = objc_alloc_init(BSUIUbiquityDownloadProgress);
        v35 = [v33 assetID];
        [v34 setAssetIdentifier:v35];

        [v33 progressValue];
        v36 = [NSNumber numberWithDouble:?];
        [v34 setProgress:v36];

        v37 = +[NSNotificationCenter defaultCenter];
        v48 = v31;
        v49 = v34;
        v38 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        [v37 postNotificationName:v30 object:v23 userInfo:v38];
      }

      v28 = [v26 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v28);
  }

  return v26;
}

- (id)udq_reportDownloadProgressIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100027354;
  v34 = sub_1000275F0;
  v35 = 0;
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DDDE8;
  block[3] = &unk_100A04950;
  v29 = &v30;
  block[4] = self;
  v7 = v5;
  v28 = v7;
  dispatch_sync(ivarQueue, block);
  if ([v31[5] length])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_100027354;
    v25 = sub_1000275F0;
    v26 = 0;
    if ([v4 isDownloading])
    {
      v8 = [v4 downloadingPercent];
      if (v8)
      {
        v9 = self->_ivarQueue;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000DDE38;
        v17[3] = &unk_100A06E18;
        v19 = &v21;
        v17[4] = self;
        v20 = &v30;
        v18 = v4;
        dispatch_sync(v9, v17);
      }
    }

    else
    {
      v11 = self->_ivarQueue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000DDE94;
      v13[3] = &unk_100A06E40;
      v13[4] = self;
      v15 = &v30;
      v14 = v4;
      v16 = &v21;
      dispatch_sync(v11, v13);
    }

    v10 = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v30, 8);

  return v10;
}

- (void)udq_reportUploadProgressIfNeeded:(id)a3 completedAssetIDs:(id)a4 failedAssets:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 url];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100027354;
  v64 = sub_1000275F0;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE6F4;
  block[3] = &unk_100A06E68;
  v54 = &v60;
  block[4] = self;
  v13 = v11;
  v53 = v13;
  v55 = &v56;
  dispatch_sync(ivarQueue, block);
  if ([v61[5] length])
  {
    v14 = [v8 uploadingError];
    v15 = [v8 isUploading];
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (v16 == 1)
    {
      if ((v57[3] & 1) == 0)
      {
        v17 = [v8 uploadingPercent];
        v18 = v17;
        if (v17)
        {
          workQueue = self->_workQueue;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1000DE75C;
          v48[3] = &unk_100A05B18;
          v50 = self;
          v51 = &v60;
          v49 = v17;
          dispatch_async(workQueue, v48);
        }

        v20 = self->_ivarQueue;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1000DE8A8;
        v47[3] = &unk_100A037D8;
        v47[4] = self;
        v47[5] = &v60;
        dispatch_sync(v20, v47);
      }
    }

    else
    {
      v21 = [v8 isUploaded];
      if (v14)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v23 = BKLibraryDataSourceUbiquityLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v61[5];
          *buf = 141558786;
          *&buf[4] = 1752392040;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          *&buf[22] = 2160;
          v67 = 1752392040;
          LOWORD(v68) = 2112;
          *(&v68 + 2) = v13;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "udq_reportUploadProgressIfNeeded: Item is now local. assetID: %{mask.hash}@ url: %{mask.hash}@", buf, 0x2Au);
        }

        if (*(v57 + 24) == 1)
        {
          v25 = self->_workQueue;
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_1000DEA44;
          v42[3] = &unk_100A04950;
          v44 = &v60;
          v42[4] = self;
          v43 = v13;
          dispatch_async(v25, v42);
          v26 = self->_ivarQueue;
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1000DEBFC;
          v41[3] = &unk_100A037D8;
          v41[4] = self;
          v41[5] = &v60;
          dispatch_sync(v26, v41);
          [v9 addObject:v61[5]];
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v67 = sub_100027354;
          *&v68 = sub_1000275F0;
          *(&v68 + 1) = 0;
          v33 = self->_ivarQueue;
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_1000DEC5C;
          v36[3] = &unk_100A06E90;
          v36[4] = self;
          v39 = &v60;
          v37 = v13;
          v40 = buf;
          v38 = v8;
          dispatch_sync(v33, v36);
          if (*(*&buf[8] + 40))
          {
            v34 = self->_workQueue;
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_1000DED90;
            v35[3] = &unk_100A037D8;
            v35[4] = self;
            v35[5] = buf;
            dispatch_async(v34, v35);
          }

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        v27 = BKLibraryDataSourceUbiquityLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10078E874();
        }

        v28 = [v8 unresolvedConflict];
        v29 = v28;
        if (v28 && [v28 BOOLValue])
        {
          v30 = BKLibraryDataSourceUbiquityLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10078E8F0();
          }
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v67 = sub_100027354;
        *&v68 = sub_1000275F0;
        *(&v68 + 1) = 0;
        v31 = self->_ivarQueue;
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_1000DE8BC;
        v46[3] = &unk_100A04BD8;
        v46[4] = self;
        v46[5] = buf;
        v46[6] = &v60;
        dispatch_sync(v31, v46);
        if (*(*&buf[8] + 40) && [v14 code] == 4354)
        {
          [v10 addObject:*(*&buf[8] + 40)];
          v32 = self->_workQueue;
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_1000DE918;
          v45[3] = &unk_100A036C0;
          v45[4] = self;
          v45[5] = &v60;
          dispatch_async(v32, v45);
        }

        _Block_object_dispose(buf, 8);
      }
    }
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
}

- (BOOL)iq_updateThumbnailIfNeededForAssetID:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4)
  {
    v5 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 141558274;
      v9 = 1752392040;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iq_updateThumbnailIfNeededForAssetID: Refreshing imageCache. assetID: %{mask.hash}@", &v8, 0x16u);
    }

    v6 = +[BCCacheManager defaultCacheManager];
    [v6 incrementVersionForIdentifier:v3];
  }

  return v4 != 0;
}

- (id)_counterpartURLForURL:(id)a3
{
  v4 = [a3 path];
  v5 = [v4 lastPathComponent];

  if ([v5 length])
  {
    v6 = [(BKLibraryDataSourceUbiquityiOS *)self unzippedCounterpartCacheURL];
    v7 = [v6 URLByAppendingPathComponent:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removeCounterpartsForAssetIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DF244;
  block[3] = &unk_100A03A30;
  v7 = v4;
  v26 = v7;
  v27 = self;
  v8 = v5;
  v28 = v8;
  dispatch_sync(ivarQueue, block);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v22;
    *&v11 = 138412290;
    v19 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        v16 = +[NSFileManager defaultManager];
        v20 = 0;
        [v16 removeItemAtURL:v15 error:&v20];
        v17 = v20;

        if (v17)
        {
          v18 = BKLibraryDataSourceUbiquityLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v30 = v17;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "_removeCounterpartForAssetID: removeItemAtURL failed. error: %@", buf, 0xCu);
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v12);
  }
}

- (void)iq_purgeUnzippedBooksCacheIfNeededExceptURL:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v34 = self;
  v6 = [(BKLibraryDataSourceUbiquityiOS *)self unzippedCounterpartCacheURL];
  v7 = [v6 path];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v5;
  v33 = v7;
  v8 = [v5 enumeratorAtPath:v7];
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v32 = v4;
    v11 = 0;
    v12 = *v42;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [v33 stringByAppendingPathComponent:*(*(&v41 + 1) + 8 * i)];
        v15 = [v35 attributesOfItemAtPath:v14 error:0];
        v16 = [v15 objectForKeyedSubscript:NSFileSize];
        v17 = [v16 longValue];

        v11 += v17;
        if (v11 > 0x3200000)
        {

          v8 = [v32 lastPathComponent];
          v18 = [(BKLibraryDataSourceUbiquityiOS *)v34 unzippedCounterpartCacheURL];
          v40 = 0;
          v19 = [v35 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:0 options:0 error:&v40];
          v31 = v40;

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v37;
            v24 = BCMetadataXattrAssetID;
            do
            {
              for (j = 0; j != v22; j = j + 1)
              {
                if (*v37 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = *(*(&v36 + 1) + 8 * j);
                v27 = [v26 path];
                v28 = [v27 lastPathComponent];
                v29 = [v28 isEqualToString:v8];

                if ((v29 & 1) == 0)
                {
                  v30 = [v26 bu_extendedAttributeNamed:v24 iCloudSyncable:1];
                  if ([v30 length])
                  {
                    [(NSMutableDictionary *)v34->_iq_counterpartURLFromAssetID setObject:0 forKeyedSubscript:v30];
                  }

                  [v35 removeItemAtURL:v26 error:0];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v22);
          }

          goto LABEL_22;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_22:
    v4 = v32;
  }
}

- (id)iq_createUbiquityAssetFromMetadataDict:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:BCMetadataXattrAssetID];
  v6 = [v4 objectForKeyedSubscript:@"itemURL"];
  if (v6 && [v5 length])
  {
    v7 = [v4 objectForKeyedSubscript:@"isLocal"];
    v20 = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"contentChangedDate"];
    v9 = [v4 objectForKeyedSubscript:@"contentFileSize"];
    v21 = [v9 longLongValue];

    [(NSMutableDictionary *)self->_iq_urlFromAssetID setObject:v6 forKeyedSubscript:v5];
    [(NSMutableDictionary *)self->_iq_assetIDFromURL setObject:v5 forKeyedSubscript:v6];
    v10 = [(NSMutableDictionary *)self->_iq_insertionDateFromAssetID objectForKeyedSubscript:v5];

    if (!v10)
    {
      v11 = +[NSDate date];
      [(NSMutableDictionary *)self->_iq_insertionDateFromAssetID setObject:v11 forKeyedSubscript:v5];
    }

    v12 = [(BKLibraryDataSourceUbiquityiOS *)self iq_downloadingAssetID:v5];
    v13 = [(NSMutableDictionary *)self->_iq_insertionDateFromAssetID objectForKeyedSubscript:v5];
    objc_opt_class();
    v14 = [v4 objectForKeyedSubscript:@"contentChangedDate"];
    v15 = BUDynamicCast();

    v16 = [(BKLibraryDataSourceUbiquityiOS *)self identifier];
    v17 = [BKUbiquityAsset newAssetFromMetadata:v4 url:v6 downloaded:v20 downloading:v12 filesize:0x7FFFFFFFFFFFFFFFLL dataSourceIdentifier:v16 insertionDate:v13 updateDate:v15];

    v18 = [(NSMutableDictionary *)self->_iq_counterpartURLFromAssetID objectForKeyedSubscript:v5];
    if (v18)
    {
      [v17 setUrl:v18];
    }

    if (v8)
    {
      [v17 setUpdateDate:v8];
    }

    if (v21 != -1)
    {
      [v17 setFileSize:?];
    }

    [(NSMutableDictionary *)self->_iq_assetFromAssetID setObject:v17 forKeyedSubscript:v5];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)iq_createTempUbiquityAssetFromMetadataDict:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:BCMetadataXattrAssetID];
  v6 = [v4 objectForKeyedSubscript:@"itemURL"];
  if (v6 && [v5 length])
  {
    v7 = [v4 objectForKeyedSubscript:@"isLocal"];
    v21 = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"contentChangedDate"];
    v9 = [v4 objectForKeyedSubscript:@"contentFileSize"];
    v22 = [v9 longLongValue];

    v10 = [(NSMutableDictionary *)self->_iq_insertionDateFromAssetID objectForKeyedSubscript:v5];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = +[NSDate date];
    }

    v14 = v12;

    v15 = [(BKLibraryDataSourceUbiquityiOS *)self iq_downloadingAssetID:v5];
    objc_opt_class();
    v16 = [v4 objectForKeyedSubscript:@"contentChangedDate"];
    v17 = BUDynamicCast();

    v18 = [(BKLibraryDataSourceUbiquityiOS *)self identifier];
    v13 = [BKUbiquityAsset newAssetFromMetadata:v4 url:v6 downloaded:v21 downloading:v15 filesize:0x7FFFFFFFFFFFFFFFLL dataSourceIdentifier:v18 insertionDate:v14 updateDate:v17];

    v19 = [(NSMutableDictionary *)self->_iq_counterpartURLFromAssetID objectForKeyedSubscript:v5];
    if (v19)
    {
      [v13 setUrl:v19];
    }

    if (v8)
    {
      [v13 setUpdateDate:v8];
    }

    if (v22 != -1)
    {
      [v13 setFileSize:?];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)iq_clearCachesForAssetIDs:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_iq_urlFromAssetID objectForKeyedSubscript:v9];
        [(NSMutableDictionary *)self->_iq_urlFromAssetID setObject:0 forKeyedSubscript:v9];
        if (v10)
        {
          [(NSMutableDictionary *)self->_iq_assetIDFromURL setObject:0 forKeyedSubscript:v10];
        }

        [(NSMutableDictionary *)self->_iq_assetFromAssetID setObject:0 forKeyedSubscript:v9];
        [(NSMutableDictionary *)self->_iq_insertionDateFromAssetID setObject:0 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    [(BKLibraryDataSourceUbiquityiOS *)self p_schedulePersistInfoToDisk];
  }
}

- (void)_unclaimAssetIDs:(id)a3
{
  v4 = a3;
  ivarQueue = self->_ivarQueue;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000DFDBC;
  v11 = &unk_100A03440;
  v12 = self;
  v13 = v4;
  v6 = v4;
  dispatch_sync(ivarQueue, &v8);
  [(BKLibraryDataSourceUbiquityiOS *)self _removeCounterpartsForAssetIDs:v6, v8, v9, v10, v11, v12];
  [(BKLibraryDataSourceUbiquityiOS *)self _removeAssetIDsFromCoverCacheManager:v6];
  v7 = [(BKLibraryDataSourceUbiquityiOS *)self libraryManager];
  [v7 libraryDataSource:self removedAssetsWithAssetIDs:v6 orTemporaryAssetIDs:0];
}

- (BOOL)_deleteFromAllDevicesURL:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (v3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100027354;
    v15 = sub_1000275F0;
    v16 = 0;
    v9[5] = &v11;
    v10 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000DFFF4;
    v9[3] = &unk_100A06DF0;
    v9[4] = &v17;
    [NSURL coordinateWritingItemAtURL:v3 options:1 error:&v10 byAccessor:v9];
    v4 = v10;
    if (v4 || v12[5])
    {
      v5 = BKLibraryDataSourceUbiquityLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = v12[5];
        *buf = 141558786;
        v22 = 1752392040;
        v23 = 2112;
        v24 = v3;
        v25 = 2112;
        v26 = v4;
        v27 = 2112;
        v28 = v8;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "_deleteFromAllDevicesURL: removeItemAtURL failed. url: %{mask.hash}@ coordinateError: %@ removeError: %@", buf, 0x2Au);
      }
    }

    _Block_object_dispose(&v11, 8);

    v6 = *(v18 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v6 & 1;
}

- (BOOL)_evictFromDeviceURL:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[NSFileManager defaultManager];
    v18 = 0;
    v9 = [v8 evictUbiquitousItemAtURL:v6 error:&v18];
    v10 = v18;

    if (v9)
    {
      v11 = [[BKLibraryDownloadStatus alloc] initWithAssetID:v7 state:0 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:0.0];
      v12 = +[NSNotificationCenter defaultCenter];
      v13 = BKLibraryDownloadStatusNotification;
      v20 = BKLibraryDownloadStatusKey;
      v14 = [NSSet setWithObject:v11];
      v21 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [v12 postNotificationName:v13 object:self userInfo:v15];

      v19 = v7;
      v16 = [NSArray arrayWithObjects:&v19 count:1];
      [(BKLibraryDataSourceUbiquityiOS *)self _removeCounterpartsForAssetIDs:v16];
    }

    else
    {
      v11 = BKLibraryDataSourceUbiquityLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10078EA10();
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)_triggerDownload:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BKLibraryDataSourceUbiquityLog();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      v24 = 1752392040;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_triggerDownload: url: %{mask.hash}@", buf, 0x16u);
    }

    if (v7)
    {
      v10 = [[BKLibraryDownloadStatus alloc] initWithAssetID:v7 state:2 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:0.0];
      v11 = +[NSNotificationCenter defaultCenter];
      v12 = BKLibraryDownloadStatusNotification;
      v21 = BKLibraryDownloadStatusKey;
      v13 = [NSSet setWithObject:v10];
      v22 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      [v11 postNotificationName:v12 object:self userInfo:v14];
    }

    else
    {
      v10 = BKLibraryDataSourceUbiquityLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10078EA88();
      }
    }

    v9 = [NSFileAccessIntent readingIntentWithURL:v6 options:0];
    v15 = objc_opt_new();
    v20 = v9;
    v16 = [NSArray arrayWithObjects:&v20 count:1];
    v17 = objc_opt_new();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E05DC;
    v18[3] = &unk_100A04A50;
    v19 = v6;
    [v15 coordinateAccessWithIntents:v16 queue:v17 byAccessor:v18];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10078EAF8();
  }
}

- (void)iq_setUbiquityDocumentMonitoringEnabled:(BOOL)a3
{
  if (a3 && (-[BKLibraryDataSourceUbiquityiOS ubiquityStatusMonitor](self, "ubiquityStatusMonitor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isICloudDriveEnabled], v4, v5))
  {
    v6 = [(BKLibraryDataSourceUbiquityiOS *)self ubiquityDocumentsObserver];

    v7 = BKLibraryDataSourceUbiquityLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iq_setUbiquityDocumentMonitoringEnabled: Restarting query.", buf, 2u);
      }

      v9 = [(BKLibraryDataSourceUbiquityiOS *)self ubiquityDocumentsObserver];
      [v9 restartQuery];
    }

    else
    {
      if (v8)
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iq_setUbiquityDocumentMonitoringEnabled: Creating new observer.", v16, 2u);
      }

      v12 = [IMUbiquityDocumentsObserver alloc];
      v13 = [(BKLibraryDataSourceUbiquityiOS *)self ubiquityStatusMonitor];
      v14 = [v12 initWithDelegate:self ubquityStatusMonitor:v13 directoriesSubpath:0];
      [(BKLibraryDataSourceUbiquityiOS *)self setUbiquityDocumentsObserver:v14];
    }
  }

  else
  {
    v10 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "iq_setUbiquityDocumentMonitoringEnabled: Shutting down observer.", v15, 2u);
    }

    v11 = [(BKLibraryDataSourceUbiquityiOS *)self ubiquityDocumentsObserver];
    [v11 tearDownQuery];

    [(BKLibraryDataSourceUbiquityiOS *)self setUbiquityDocumentsObserver:0];
  }
}

- (void)iq_clearAllCachesAndPersistentInfoFromDisk
{
  [(NSMutableDictionary *)self->_iq_urlFromAssetID removeAllObjects];
  [(NSMutableDictionary *)self->_iq_assetFromAssetID removeAllObjects];
  [(NSMutableDictionary *)self->_iq_assetIDFromURL removeAllObjects];
  [(NSMutableDictionary *)self->_iq_insertionDateFromAssetID removeAllObjects];
  v4 = +[NSFileManager defaultManager];
  v3 = [(BKLibraryDataSourceUbiquityiOS *)self _persistedInfoURL];
  [v4 removeItemAtURL:v3 error:0];
}

- (void)cb_persistInfoToDisk
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_100027354;
  v7[4] = sub_1000275F0;
  v8 = 0;
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E0A4C;
  block[3] = &unk_100A037D8;
  block[4] = self;
  block[5] = v7;
  dispatch_sync(ivarQueue, block);
  persistToDiskQueue = self->_persistToDiskQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E0C0C;
  v5[3] = &unk_100A036C0;
  v5[4] = self;
  v5[5] = v7;
  dispatch_async(persistToDiskQueue, v5);
  _Block_object_dispose(v7, 8);
}

- (void)iq_populateAssetIDFromURLDictionary
{
  iq_urlFromAssetID = self->_iq_urlFromAssetID;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E0D2C;
  v3[3] = &unk_100A06ED8;
  v3[4] = self;
  [(NSMutableDictionary *)iq_urlFromAssetID enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_addLocalAssetsForURLs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  processUbiquityMetadataQueue = self->_processUbiquityMetadataQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E0E04;
  block[3] = &unk_100A049A0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(processUbiquityMetadataQueue, block);
}

- (void)handleFileGenerationChangedNotification:(id)a3
{
  v4 = a3;
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleFileGenerationChangedNotification: %@", buf, 0xCu);
  }

  objc_opt_class();
  v6 = [v4 userInfo];
  v7 = BUDynamicCast();

  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:BCUbiqityFileChangedKeyURL];
  v9 = BUDynamicCast();

  objc_opt_class();
  v10 = [v7 objectForKeyedSubscript:BCUbiqityFileChangedKeyGeneration];
  v11 = BUDynamicCast();

  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E14B4;
  block[3] = &unk_100A03A30;
  block[4] = self;
  v16 = v11;
  v17 = v9;
  v13 = v9;
  v14 = v11;
  dispatch_sync(ivarQueue, block);
}

- (void)iq_updateCachedAssetGeneration:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_iq_assetIDFromURL objectForKeyedSubscript:a4];
  v8 = [(NSMutableDictionary *)self->_iq_assetFromAssetID objectForKeyedSubscript:v7];
  if (v8)
  {
    [v8 setGeneration:{objc_msgSend(v6, "longLongValue")}];
    [(BKLibraryDataSourceUbiquityiOS *)self p_schedulePersistInfoToDisk];
    completionHandlerQueue = self->_completionHandlerQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E15C4;
    v10[3] = &unk_100A03440;
    v10[4] = self;
    v11 = v8;
    dispatch_async(completionHandlerQueue, v10);
  }
}

- (void)_updateUbiquityAssetID:(id)a3 withMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    updateAssetMetadataQueue = self->_updateAssetMetadataQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E1734;
    block[3] = &unk_100A03A30;
    v10 = v7;
    v11 = self;
    v12 = v6;
    dispatch_async(updateAssetMetadataQueue, block);
  }
}

- (void)_addAssetsToCoverCacheManager:(id)a3
{
  v4 = [a3 bu_arrayByRemovingNSNulls];
  v7 = [v4 valueForKey:@"assetID"];

  v5 = [(BKLibraryDataSourceUbiquityiOS *)self _coverCacheURLsForAssetIDs:v7];
  if ([v5 count])
  {
    v6 = +[BCCacheManager defaultCacheManager];
    [v6 addURLs:v5 priority:3 quality:202 expiresAfter:0];
  }
}

- (void)_removeAssetIDsFromCoverCacheManager:(id)a3
{
  v6 = [(BKLibraryDataSourceUbiquityiOS *)self _coverCacheURLsForAssetIDs:a3];
  if ([v6 count])
  {
    v3 = +[BCCacheManager defaultCacheManager];
    [v3 removeURLs:v6 priority:3 quality:206];
    v4 = [v6 allKeys];
    v5 = [NSSet setWithArray:v4];
    [v3 incrementVersionForIdentifiers:v5];
  }
}

- (id)_coverCacheURLsForAssetIDs:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [BKCoverCacheURLSchemeHandler urlStringForAssetID:v10 dataSourceID:@"com.apple.ibooks.datasource.ubiquity", v14];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)fetchAllUbiquitousBooksWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E1BBC;
  v4[3] = &unk_100A05E68;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BKLibraryDataSourceUbiquityiOS *)v5 fetchAssetIDsWithCompletion:v4];
}

- (void)_makeBooksUbiquitous:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [v6 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_makeBooksUbiquitous: count: %ld", buf, 0xCu);
  }

  if ([v6 count])
  {
    v9 = [(BKLibraryDataSourceUbiquityiOS *)self libraryManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E1E60;
    v12[3] = &unk_100A04C28;
    v12[4] = self;
    v13 = v6;
    v14 = v7;
    [v9 performBackgroundReadOnlyBlock:v12];
  }

  else
  {
    v10 = objc_retainBlock(v7);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)_addSupplementalContentMetadataFromAsset:(id)a3 toExistingAsset:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6 && [v5 isSupplementalContent])
  {
    v7 = [v6 assetID];
    v8 = [v6 storeID];
    if ([v8 length])
    {
      v9 = [v6 storePlaylistID];
      if ([v9 length])
      {
        v10 = [v6 isSupplementalContent];

        if (v10)
        {
          v11 = [v5 storeID];
          if (![v11 length])
          {
LABEL_17:

            goto LABEL_18;
          }

          v12 = [v5 storePlaylistID];
          v13 = [v12 length];

          if (v13)
          {
            v14 = [v6 storePlaylistID];
            v15 = [v5 storePlaylistID];
            v16 = [v14 isEqual:v15];

            if ((v16 & 1) == 0)
            {
              v20 = BKLibraryBookImportLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = [v6 storePlaylistID];
                v22 = [v5 storePlaylistID];
                v30 = 141559298;
                v31 = 1752392040;
                v32 = 2112;
                v33 = v7;
                v34 = 2160;
                v35 = 1752392040;
                v36 = 2112;
                v37 = v21;
                v38 = 2160;
                v39 = 1752392040;
                v40 = 2112;
                v41 = v22;
                v23 = "_addSupplementalContentMetadata: Will repair asset %{mask.hash}@ for different storePlaylistID (old=%{mask.hash}@, new=%{mask.hash}@)";
                goto LABEL_22;
              }

LABEL_16:

              v24 = [v5 storePlaylistID];
              v25 = [v5 storeID];
              [v6 setSupplementalContent:1 playlistID:v24 storeID:v25];

              v11 = +[BKUbiquityMetadataHelper sharedInstance];
              v26 = [v5 isSupplementalContent];
              v27 = [v5 storePlaylistID];
              v28 = [v5 storeID];
              v29 = [v6 url];
              [v11 setUbiquityMetadataIsSupplemental:v26 playlistID:v27 storeID:v28 forURL:v29];

              goto LABEL_17;
            }

            v17 = [v6 storeID];
            v18 = [v5 storeID];
            v19 = [v17 isEqual:v18];

            if ((v19 & 1) == 0)
            {
              v20 = BKLibraryBookImportLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = [v6 storeID];
                v22 = [v5 storeID];
                v30 = 141559298;
                v31 = 1752392040;
                v32 = 2112;
                v33 = v7;
                v34 = 2160;
                v35 = 1752392040;
                v36 = 2112;
                v37 = v21;
                v38 = 2160;
                v39 = 1752392040;
                v40 = 2112;
                v41 = v22;
                v23 = "_addSupplementalContentMetadata: Will repair asset %{mask.hash}@ for different storeID (old=%{mask.hash}@, new=%{mask.hash}@";
LABEL_22:
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v23, &v30, 0x3Eu);

                goto LABEL_16;
              }

              goto LABEL_16;
            }
          }

LABEL_18:

          goto LABEL_19;
        }

LABEL_14:
        v20 = BKLibraryBookImportLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 141558274;
          v31 = 1752392040;
          v32 = 2112;
          v33 = v7;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_addSupplementalContentMetadata: Will repair asset %{mask.hash}@ for missing supplemental content properties", &v30, 0x16u);
        }

        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

LABEL_19:
}

- (id)p_moveToUbiquityItemAtURL:(id)a3 preferredFileNameWithoutPathExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100027354;
  v21 = sub_1000275F0;
  v22 = 0;
  v8 = [(BKLibraryDataSourceUbiquityiOS *)self workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E3234;
  v13[3] = &unk_100A05548;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)_isFileExistsError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];

  if (v4 == NSCocoaErrorDomain)
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKey:NSUnderlyingErrorKey];

    v8 = [v7 domain];
    v5 = v8 == NSPOSIXErrorDomain && [v7 code] == 17;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)plistEntryAsDictionaryFromAssetID:(id)a3 path:(id)a4 needsCoordination:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100027354;
    v22 = sub_1000275F0;
    v23 = 0;
    ivarQueue = self->_ivarQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E3B88;
    block[3] = &unk_100A04950;
    v17 = &v18;
    block[4] = self;
    v16 = v8;
    dispatch_sync(ivarQueue, block);
    v11 = v19[5];
    if (v11)
    {
      v12 = [BCUbiquityMetadataHelper ubiquityMetadataForURL:v11 options:-262145 needsCoordination:v5];
      v13 = [objc_opt_class() mapUbiquityMetadataToPlistMetadata:v12];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)mapUbiquityMetadataToPlistMetadata:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
    objc_opt_class();
    v5 = [v3 objectForKeyedSubscript:BCMetadataXattrAssetID];
    v6 = BUDynamicCast();

    if ([v6 length])
    {
      v7 = +[IMLibraryPlist keyNameForUniqueId];
      [v4 setObject:v6 forKey:v7];
    }

    objc_opt_class();
    v8 = [v3 objectForKeyedSubscript:BCMetadataXattrTitle];
    v9 = BUDynamicCast();

    if ([v9 length])
    {
      v10 = +[IMLibraryPlist keyNameForTitle];
      [v4 setObject:v9 forKey:v10];
    }

    objc_opt_class();
    v11 = [v3 objectForKeyedSubscript:BCMetadataXattrSortTitle];
    v12 = BUDynamicCast();

    if ([v12 length])
    {
      v13 = +[IMLibraryPlist keyNameForSortTitle];
      [v4 setObject:v12 forKey:v13];
    }

    objc_opt_class();
    v14 = [v3 objectForKeyedSubscript:BCMetadataXattrAuthor];
    v15 = BUDynamicCast();

    v16 = [BKLibraryAsset actualAuthorFromMetedata:v15];

    if ([v16 length])
    {
      v17 = +[IMLibraryPlist keyNameForAuthor];
      [v4 setObject:v16 forKey:v17];
    }

    v68 = v16;
    objc_opt_class();
    v18 = [v3 objectForKeyedSubscript:BCMetadataXattrSortAuthor];
    v19 = BUDynamicCast();

    if ([v19 length])
    {
      v20 = +[IMLibraryPlist keyNameForSortAuthor];
      [v4 setObject:v19 forKey:v20];
    }

    objc_opt_class();
    v21 = [v3 objectForKeyedSubscript:BCMetadataXattrGenre];
    v22 = BUDynamicCast();

    v23 = v22;
    if ([v22 length])
    {
      v24 = +[IMLibraryPlist keyNameForGenre];
      [v4 setObject:v23 forKey:v24];
    }

    v66 = v23;
    objc_opt_class();
    v25 = [v3 objectForKeyedSubscript:BCMetadataXattrComments];
    v26 = BUDynamicCast();

    v27 = v26;
    if ([v26 length])
    {
      v28 = +[IMLibraryPlist keyNameForComments];
      [v4 setObject:v27 forKey:v28];
    }

    v65 = v27;
    objc_opt_class();
    v29 = [v3 objectForKeyedSubscript:BCMetadataXattrBookDescription];
    v30 = BUDynamicCast();

    v31 = v30;
    if ([v30 length])
    {
      v32 = +[IMLibraryPlist keyNameForBookDescription];
      [v4 setObject:v31 forKey:v32];
    }

    v64 = v31;
    v71 = v6;
    objc_opt_class();
    v33 = [v3 objectForKeyedSubscript:BCMetadataXattrYear];
    v34 = BUDynamicCast();

    if ([v34 length])
    {
      v35 = +[IMLibraryPlist keyNameForYear];
      [v4 setObject:v34 forKey:v35];
    }

    v63 = v34;
    objc_opt_class();
    v36 = [v3 objectForKeyedSubscript:BCMetadataXattrExplicit];
    v37 = BUDynamicCast();

    v72 = v37;
    if (v37)
    {
      v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v37 BOOLValue]);
      if (v38)
      {
        v39 = +[IMLibraryPlist keyNameForExplicitContent];
        [v4 setObject:v38 forKey:v39];
      }
    }

    v70 = v9;
    objc_opt_class();
    v40 = [v3 objectForKeyedSubscript:BCMetadataXattrLastOpened];
    v41 = BUDynamicCast();

    if (v41)
    {
      v42 = +[IMLibraryPlist keyNameForLastOpened];
      [v4 setObject:v41 forKey:v42];
    }

    v69 = v12;
    objc_opt_class();
    v43 = [v3 objectForKeyedSubscript:BCMetadataXattrFirstOpened];
    v44 = BUDynamicCast();

    if (v44)
    {
      v45 = +[IMLibraryPlist keyNameForFirstOpened];
      [v4 setObject:v44 forKey:v45];
    }

    v67 = v19;
    objc_opt_class();
    v46 = [v3 objectForKeyedSubscript:BCMetadataXattrRating];
    v47 = BUDynamicCast();

    if (v47)
    {
      v48 = +[IMLibraryPlist keyNameForRating];
      [v4 setObject:v47 forKey:v48];
    }

    objc_opt_class();
    v49 = [v3 objectForKeyedSubscript:BCMetadataXattrGeneration];
    v50 = BUDynamicCast();

    if (v50)
    {
      v51 = +[IMLibraryPlist keyNameForGeneration];
      [v4 setObject:v50 forKey:v51];
    }

    objc_opt_class();
    v52 = [v3 objectForKeyedSubscript:BCMetadataXattrIsSupplementalContent];
    v53 = BUDynamicCast();

    if (v53)
    {
      v54 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v72 BOOLValue]);
      if (v54)
      {
        v55 = +[IMLibraryPlist keyNameForIsSupplementalContent];
        [v4 setObject:v54 forKey:v55];
      }
    }

    objc_opt_class();
    v56 = [v3 objectForKeyedSubscript:BCMetadataXattrStoreID];
    v57 = BUDynamicCast();

    if ([v57 length])
    {
      v58 = +[IMLibraryPlist keyNameForStoreId];
      [v4 setObject:v57 forKey:v58];
    }

    objc_opt_class();
    v59 = [v3 objectForKeyedSubscript:BCMetadataXattrStorePlaylistID];
    v60 = BUDynamicCast();

    if ([v60 length])
    {
      v61 = +[IMLibraryPlist keyNameForStorePlaylistId];
      [v4 setObject:v60 forKey:v61];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)extractOperationDidFinish:(id)a3
{
  v4 = [a3 userContext];
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E4584;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(ivarQueue, v7);
}

- (void)extractOperationDidFail:(id)a3
{
  v4 = a3;
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E48B4;
  v7[3] = &unk_100A03440;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(ivarQueue, v7);
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

- (BKAssetMetadataCaching)assetMetadataCache
{
  WeakRetained = objc_loadWeakRetained(&self->_assetMetadataCache);

  return WeakRetained;
}

- (BKAssetCoverImageHelping)coverImageHelper
{
  WeakRetained = objc_loadWeakRetained(&self->_coverImageHelper);

  return WeakRetained;
}

- (BKLibraryImageSource)imageSource
{
  WeakRetained = objc_loadWeakRetained(&self->_imageSource);

  return WeakRetained;
}

@end