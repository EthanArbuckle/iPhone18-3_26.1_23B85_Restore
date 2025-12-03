@interface BKLibraryDataSourceUbiquityiOS
+ (id)mapUbiquityMetadataToPlistMetadata:(id)metadata;
- (BKAssetCoverImageHelping)coverImageHelper;
- (BKAssetMetadataCaching)assetMetadataCache;
- (BKLibraryDataSourceUbiquityiOS)initWithUbiquityStatusMonitor:(id)monitor assetMetadataCache:(id)cache coverImageHelper:(id)helper imageSource:(id)source;
- (BKLibraryImageSource)imageSource;
- (BKLibraryManager)libraryManager;
- (BOOL)_assetHasChanged:(id)changed updatedAsset:(id)asset;
- (BOOL)_deleteFromAllDevicesURL:(id)l;
- (BOOL)_evictFromDeviceURL:(id)l assetID:(id)d;
- (BOOL)_isFileExistsError:(id)error;
- (BOOL)iq_downloadingAssetID:(id)d;
- (BOOL)iq_updateThumbnailIfNeededForAssetID:(id)d;
- (id)_counterpartURLForURL:(id)l;
- (id)_coverCacheURLsForAssetIDs:(id)ds;
- (id)_persistedInfoURL;
- (id)iq_createTempUbiquityAssetFromMetadataDict:(id)dict;
- (id)iq_createUbiquityAssetFromMetadataDict:(id)dict;
- (id)iq_downloadProgressStatusesWithAssetID:(id)d item:(id)item;
- (id)iq_overallDownloadProgressValueForAssetID:(id)d;
- (id)p_moveToUbiquityItemAtURL:(id)l preferredFileNameWithoutPathExtension:(id)extension;
- (id)plistEntryAsDictionaryFromAssetID:(id)d path:(id)path needsCoordination:(BOOL)coordination;
- (id)udq_reportDownloadProgressIfNeeded:(id)needed;
- (id)umq_metadataDictsFromUbiquityDocumentItems:(id)items;
- (void)_addAssetsToCoverCacheManager:(id)manager;
- (void)_addLocalAssetsForURLs:(id)ls completion:(id)completion;
- (void)_addSupplementalContentMetadataFromAsset:(id)asset toExistingAsset:(id)existingAsset;
- (void)_loadCounterpartInfo;
- (void)_makeBooksUbiquitous:(id)ubiquitous completion:(id)completion;
- (void)_readPersistedInfoFromDisk;
- (void)_removeAssetIDsFromCoverCacheManager:(id)manager;
- (void)_removeCounterpartsForAssetIDs:(id)ds;
- (void)_reportProgressWithItems:(id)items;
- (void)_requestReOpenWithConflictDictionary:(id)dictionary requestOpenAssetIDs:(id)ds;
- (void)_triggerDownload:(id)download assetID:(id)d;
- (void)_unclaimAssetIDs:(id)ds;
- (void)_updateUbiquityAssetID:(id)d withMetadata:(id)metadata;
- (void)addMetadataQueryHandlingObserver:(id)observer;
- (void)assetForLibraryAsset:(id)asset completion:(id)completion;
- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion;
- (void)cb_persistInfoToDisk;
- (void)dealloc;
- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion;
- (void)extractOperationDidFail:(id)fail;
- (void)extractOperationDidFinish:(id)finish;
- (void)fetchAllUbiquitousBooksWithCompletion:(id)completion;
- (void)fetchAssetIDsWithCompletion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion;
- (void)handleFileGenerationChangedNotification:(id)notification;
- (void)iq_addOrUpdateDownloadingAssetID:(id)d progressValue:(double)value;
- (void)iq_clearAllCachesAndPersistentInfoFromDisk;
- (void)iq_clearCachesForAssetIDs:(id)ds;
- (void)iq_populateAssetIDFromURLDictionary;
- (void)iq_purgeUnzippedBooksCacheIfNeededExceptURL:(id)l;
- (void)iq_removeDownloadingAssetID:(id)d;
- (void)iq_setUbiquityDocumentMonitoringEnabled:(BOOL)enabled;
- (void)iq_updateCachedAssetGeneration:(id)generation url:(id)url;
- (void)mq_batchOfItemsDidBecomeAvailable:(id)available;
- (void)mq_batchOfItemsDidChange:(id)change;
- (void)mq_itemsDidBecomeAvailable:(id)available;
- (void)mq_itemsDidBecomeUnavailable:(id)unavailable;
- (void)mq_itemsDidChange:(id)change;
- (void)removeMetadataQueryHandlingObserver:(id)observer;
- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion;
- (void)ubiquityDocumentsObserver:(id)observer didLoadWithItems:(id)items;
- (void)ubiquityDocumentsObserver:(id)observer itemsDidBecomeAvailable:(id)available;
- (void)ubiquityDocumentsObserver:(id)observer itemsDidBecomeUnavailable:(id)unavailable;
- (void)ubiquityDocumentsObserver:(id)observer itemsDidChange:(id)change;
- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)identity oldIdentity:(id)oldIdentity;
- (void)udq_reportUploadProgressIfNeeded:(id)needed completedAssetIDs:(id)ds failedAssets:(id)assets;
- (void)updateAsset:(id)asset userEditedTitle:(id)title completion:(id)completion;
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

- (BKLibraryDataSourceUbiquityiOS)initWithUbiquityStatusMonitor:(id)monitor assetMetadataCache:(id)cache coverImageHelper:(id)helper imageSource:(id)source
{
  monitorCopy = monitor;
  cacheCopy = cache;
  helperCopy = helper;
  sourceCopy = source;
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
    objc_storeWeak(&v16->_imageSource, sourceCopy);
    if (!monitorCopy)
    {
      sub_10078E3E4();
    }

    objc_storeStrong(&v16->_ubiquityStatusMonitor, monitor);
    [monitorCopy addObserver:v16];
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

    objc_storeWeak(&v16->_assetMetadataCache, cacheCopy);
    objc_storeWeak(&v16->_coverImageHelper, helperCopy);
    v62 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    lastObject = [v62 lastObject];

    v64 = [lastObject stringByAppendingPathComponent:@"BKLibraryDataSourceUbiquityiOS"];

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

- (void)addMetadataQueryHandlingObserver:(id)observer
{
  observerCopy = observer;
  completionHandlerQueue = self->_completionHandlerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D6FF0;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(completionHandlerQueue, v7);
}

- (void)removeMetadataQueryHandlingObserver:(id)observer
{
  observerCopy = observer;
  completionHandlerQueue = self->_completionHandlerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7094;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(completionHandlerQueue, v7);
}

- (void)fetchAssetIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  kdebug_trace();
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7170;
  v7[3] = &unk_100A03788;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(ivarQueue, v7);
}

- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  kdebug_trace();
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D741C;
  block[3] = &unk_100A049A0;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(ivarQueue, block);
}

- (void)bookCoverForLibraryAssetProperties:(id)properties size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  propertiesCopy = properties;
  kdebug_trace();
  v11 = [propertiesCopy objectForKey:@"assetID"];
  v12 = [propertiesCopy objectForKey:@"title"];

  ivarQueue = self->_ivarQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D78DC;
  v17[3] = &unk_100A06D50;
  v18 = v11;
  selfCopy = self;
  v22 = width;
  v23 = height;
  v20 = v12;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = v12;
  v16 = v11;
  dispatch_async(ivarQueue, v17);
}

- (void)deleteAssets:(id)assets exhaustive:(BOOL)exhaustive completion:(id)completion
{
  exhaustiveCopy = exhaustive;
  assetsCopy = assets;
  completionCopy = completion;
  v10 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v22 = [assetsCopy count];
    v23 = 1024;
    v24 = exhaustiveCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "deleteAssets: count: %ld exhaustive: %d", buf, 0x12u);
  }

  v11 = [assetsCopy valueForKey:@"assetID"];
  bu_arrayByRemovingNSNulls = [v11 bu_arrayByRemovingNSNulls];

  workQueue = self->_workQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D7EBC;
  v16[3] = &unk_100A057C8;
  v17 = bu_arrayByRemovingNSNulls;
  selfCopy = self;
  v20 = exhaustiveCopy;
  v19 = completionCopy;
  v14 = completionCopy;
  v15 = bu_arrayByRemovingNSNulls;
  dispatch_async(workQueue, v16);
}

- (void)resolveLibraryAsset:(id)asset options:(id)options completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  kdebug_trace();
  assetID = [assetCopy assetID];
  title = [assetCopy title];

  if ([assetID length])
  {
    ivarQueue = self->_ivarQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000D8474;
    v15[3] = &unk_100A04FE8;
    v15[4] = self;
    v16 = assetID;
    v17 = title;
    v18 = completionCopy;
    dispatch_async(ivarQueue, v15);
  }

  else
  {
    v12 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10078E4C8();
    }

    v13 = objc_retainBlock(completionCopy);
    if (v13)
    {
      v14 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
      v13[2](v13, 0, 1, v14);
    }
  }
}

- (void)assetForLibraryAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  assetID = [asset assetID];
  if ([assetID length])
  {
    ivarQueue = self->_ivarQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D924C;
    block[3] = &unk_100A049A0;
    block[4] = self;
    v13 = assetID;
    v14 = completionCopy;
    dispatch_async(ivarQueue, block);
  }

  else
  {
    v9 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10078E6DC();
    }

    v10 = objc_retainBlock(completionCopy);
    if (v10)
    {
      v11 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorInvalidAssetError userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)updateAsset:(id)asset userEditedTitle:(id)title completion:(id)completion
{
  titleCopy = title;
  assetID = [asset assetID];
  if ([assetID length])
  {
    ivarQueue = self->_ivarQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D9674;
    block[3] = &unk_100A03A30;
    block[4] = self;
    v12 = assetID;
    v13 = titleCopy;
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

- (void)ubiquityStatusChangedToAvailableWithNewIdentity:(id)identity oldIdentity:(id)oldIdentity
{
  identityCopy = identity;
  oldIdentityCopy = oldIdentity;
  v8 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = identityCopy;
    v13 = 2114;
    v14 = oldIdentityCopy;
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

- (void)ubiquityDocumentsObserver:(id)observer didLoadWithItems:(id)items
{
  itemsCopy = items;
  kdebug_trace();
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D9CC0;
  v8[3] = &unk_100A03440;
  v9 = itemsCopy;
  selfCopy = self;
  v7 = itemsCopy;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)observer itemsDidBecomeAvailable:(id)available
{
  availableCopy = available;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DA2F8;
  v8[3] = &unk_100A03440;
  v9 = availableCopy;
  selfCopy = self;
  v7 = availableCopy;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)observer itemsDidBecomeUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DA444;
  v8[3] = &unk_100A03440;
  v9 = unavailableCopy;
  selfCopy = self;
  v7 = unavailableCopy;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (void)ubiquityDocumentsObserver:(id)observer itemsDidChange:(id)change
{
  changeCopy = change;
  processMetadataQueryQueue = self->_processMetadataQueryQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DA5B0;
  v8[3] = &unk_100A03440;
  v9 = changeCopy;
  selfCopy = self;
  v7 = changeCopy;
  dispatch_async(processMetadataQueryQueue, v8);
}

- (id)umq_metadataDictsFromUbiquityDocumentItems:(id)items
{
  itemsCopy = items;
  v19 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = itemsCopy;
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

          contentChangedDate = [v9 contentChangedDate];
          [v12 setObject:contentChangedDate forKeyedSubscript:@"contentChangedDate"];

          contentFileSize = [v9 contentFileSize];
          [v12 setObject:contentFileSize forKeyedSubscript:@"contentFileSize"];

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

- (void)mq_itemsDidBecomeAvailable:(id)available
{
  availableCopy = available;
  v4 = [availableCopy count];
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

      v10 = [availableCopy subarrayWithRange:{v6, v9}];
      [(BKLibraryDataSourceUbiquityiOS *)self mq_batchOfItemsDidBecomeAvailable:v10];

      v6 += 64;
      v7 = v8;
    }

    while (v6 < v5);
  }
}

- (void)mq_batchOfItemsDidBecomeAvailable:(id)available
{
  availableCopy = available;
  kdebug_trace();
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [availableCopy count];
    v7 = [availableCopy valueForKey:@"url"];
    bu_prettyDescription = [v7 bu_prettyDescription];
    *buf = 134218242;
    v14 = v6;
    v15 = 2112;
    v16 = bu_prettyDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidBecomeAvailable: count:%ld itemURLs:(%@)", buf, 0x16u);
  }

  [(BKLibraryDataSourceUbiquityiOS *)self _reportProgressWithItems:availableCopy];
  processUbiquityMetadataQueue = self->_processUbiquityMetadataQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DAAF0;
  v11[3] = &unk_100A03440;
  v11[4] = self;
  v12 = availableCopy;
  v10 = availableCopy;
  dispatch_async(processUbiquityMetadataQueue, v11);
}

- (void)mq_itemsDidBecomeUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = unavailableCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "mq_itemsDidBecomeUnavailable: %@", buf, 0xCu);
  }

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [unavailableCopy count]);
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB260;
  block[3] = &unk_100A03A30;
  v8 = unavailableCopy;
  v15 = v8;
  selfCopy = self;
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
    selfCopy2 = self;
    dispatch_async(completionHandlerQueue, v11);
  }
}

- (void)mq_itemsDidChange:(id)change
{
  changeCopy = change;
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [changeCopy count];
    v7 = [changeCopy valueForKey:@"url"];
    bu_prettyDescription = [v7 bu_prettyDescription];
    v16 = 134218242;
    v17 = v6;
    v18 = 2112;
    v19 = bu_prettyDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "mq_itemsDidChange: count: %lu, items:%@", &v16, 0x16u);
  }

  v9 = [changeCopy count];
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

      v15 = [changeCopy subarrayWithRange:{v11, v14}];
      [(BKLibraryDataSourceUbiquityiOS *)self mq_batchOfItemsDidChange:v15];

      v11 += 64;
      v12 = v13;
    }

    while (v11 < v10);
  }
}

- (void)mq_batchOfItemsDidChange:(id)change
{
  changeCopy = change;
  kdebug_trace();
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [changeCopy valueForKey:@"url"];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: %@", buf, 0xCu);
  }

  [(BKLibraryDataSourceUbiquityiOS *)self _reportProgressWithItems:changeCopy];
  processUbiquityMetadataQueue = self->_processUbiquityMetadataQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DB788;
  v9[3] = &unk_100A03440;
  v9[4] = self;
  v10 = changeCopy;
  v8 = changeCopy;
  dispatch_async(processUbiquityMetadataQueue, v9);
}

- (BOOL)_assetHasChanged:(id)changed updatedAsset:(id)asset
{
  changedCopy = changed;
  assetCopy = asset;
  if ([assetCopy generation] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    generation = [assetCopy generation];
    v7 = generation > [changedCopy generation];
  }

  return v7;
}

- (void)_requestReOpenWithConflictDictionary:(id)dictionary requestOpenAssetIDs:(id)ds
{
  dictionaryCopy = dictionary;
  dsCopy = ds;
  +[BKAppDelegate sceneManager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DCDEC;
  v11 = block[3] = &unk_100A03A30;
  v12 = dsCopy;
  v13 = dictionaryCopy;
  v7 = dictionaryCopy;
  v8 = dsCopy;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_reportProgressWithItems:(id)items
{
  itemsCopy = items;
  kdebug_trace();
  uploadDownloadQueue = self->_uploadDownloadQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DCF00;
  v7[3] = &unk_100A03440;
  v8 = itemsCopy;
  selfCopy = self;
  v6 = itemsCopy;
  dispatch_async(uploadDownloadQueue, v7);
}

- (BOOL)iq_downloadingAssetID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_iq_downloadingProgressFromAssetID objectForKeyedSubscript:d];
  v4 = v3 != 0;

  return v4;
}

- (void)iq_addOrUpdateDownloadingAssetID:(id)d progressValue:(double)value
{
  dCopy = d;
  v6 = [NSNumber numberWithDouble:value];
  [(NSMutableDictionary *)self->_iq_downloadingProgressFromAssetID setObject:v6 forKeyedSubscript:dCopy];

  v7 = [(NSMutableDictionary *)self->_iq_assetFromAssetID objectForKeyedSubscript:dCopy];
  storePlaylistID = [v7 storePlaylistID];

  if (storePlaylistID)
  {
    v9 = [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID objectForKeyedSubscript:storePlaylistID];
    if (!v9)
    {
      iq_downloadingAssetIDsFromParentAssetID = self->_iq_downloadingAssetIDsFromParentAssetID;
      v9 = objc_opt_new();
      [(NSMutableDictionary *)iq_downloadingAssetIDsFromParentAssetID setObject:v9 forKeyedSubscript:storePlaylistID];
    }

    [v9 addObject:dCopy];
  }
}

- (void)iq_removeDownloadingAssetID:(id)d
{
  dCopy = d;
  [(NSMutableDictionary *)self->_iq_downloadingProgressFromAssetID removeObjectForKey:dCopy];
  v4 = [(NSMutableDictionary *)self->_iq_assetFromAssetID objectForKeyedSubscript:dCopy];
  storePlaylistID = [v4 storePlaylistID];

  if (storePlaylistID)
  {
    v6 = [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID objectForKeyedSubscript:storePlaylistID];
    v7 = v6;
    if (v6)
    {
      [v6 removeObject:dCopy];
      if (![v7 count])
      {
        [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID removeObjectForKey:storePlaylistID];
      }
    }
  }
}

- (id)iq_overallDownloadProgressValueForAssetID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_iq_downloadingProgressFromAssetID objectForKeyedSubscript:dCopy];
  if (!v5)
  {
    v6 = [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID objectForKeyedSubscript:dCopy];
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

- (id)iq_downloadProgressStatusesWithAssetID:(id)d item:(id)item
{
  dCopy = d;
  itemCopy = item;
  isDownloading = [itemCopy isDownloading];
  isLocal = [itemCopy isLocal];
  v42 = itemCopy;
  downloadingPercent = [itemCopy downloadingPercent];
  [downloadingPercent floatValue];
  v12 = (v11 / 100.0);

  v13 = 7;
  if (isLocal)
  {
    v13 = 5;
  }

  v14 = 1.0;
  if (!isLocal)
  {
    v14 = v12;
  }

  if (isDownloading)
  {
    v15 = 4;
  }

  else
  {
    v15 = v13;
  }

  if (!isDownloading)
  {
    v12 = v14;
  }

  [(BKLibraryDataSourceUbiquityiOS *)self iq_addOrUpdateDownloadingAssetID:dCopy progressValue:v12];
  v16 = [[NSMutableSet alloc] initWithCapacity:2];
  v17 = [[BKLibraryDownloadStatus alloc] initWithAssetID:dCopy state:v15 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:v12];
  [v16 addObject:v17];
  v43 = dCopy;
  v18 = [(NSMutableDictionary *)self->_iq_assetFromAssetID objectForKeyedSubscript:dCopy];
  storePlaylistID = [v18 storePlaylistID];

  v40 = storePlaylistID;
  if (storePlaylistID)
  {
    v20 = [(BKLibraryDataSourceUbiquityiOS *)self iq_overallDownloadProgressValueForAssetID:storePlaylistID, storePlaylistID];
    [v20 floatValue];
    v22 = v21;

    selfCopy2 = self;
    v24 = [(NSMutableDictionary *)self->_iq_downloadingAssetIDsFromParentAssetID objectForKeyedSubscript:storePlaylistID];
    if ([v24 count] > 1)
    {
      v15 = 4;
    }

    v25 = [[BKLibraryDownloadStatus alloc] initWithAssetID:storePlaylistID supplementalContentState:v15 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:v22];

    [v16 addObject:v25];
    v41 = v25;
  }

  else
  {
    v41 = v17;
    selfCopy2 = self;
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
        assetID = [v33 assetID];
        [v34 setAssetIdentifier:assetID];

        [v33 progressValue];
        v36 = [NSNumber numberWithDouble:?];
        [v34 setProgress:v36];

        v37 = +[NSNotificationCenter defaultCenter];
        v48 = v31;
        v49 = v34;
        v38 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        [v37 postNotificationName:v30 object:selfCopy2 userInfo:v38];
      }

      v28 = [v26 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v28);
  }

  return v26;
}

- (id)udq_reportDownloadProgressIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [neededCopy url];
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
    if ([neededCopy isDownloading])
    {
      downloadingPercent = [neededCopy downloadingPercent];
      if (downloadingPercent)
      {
        v9 = self->_ivarQueue;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000DDE38;
        v17[3] = &unk_100A06E18;
        v19 = &v21;
        v17[4] = self;
        v20 = &v30;
        v18 = neededCopy;
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
      v14 = neededCopy;
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

- (void)udq_reportUploadProgressIfNeeded:(id)needed completedAssetIDs:(id)ds failedAssets:(id)assets
{
  neededCopy = needed;
  dsCopy = ds;
  assetsCopy = assets;
  v11 = [neededCopy url];
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
    uploadingError = [neededCopy uploadingError];
    isUploading = [neededCopy isUploading];
    if (uploadingError)
    {
      v16 = 0;
    }

    else
    {
      v16 = isUploading;
    }

    if (v16 == 1)
    {
      if ((v57[3] & 1) == 0)
      {
        uploadingPercent = [neededCopy uploadingPercent];
        v18 = uploadingPercent;
        if (uploadingPercent)
        {
          workQueue = self->_workQueue;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1000DE75C;
          v48[3] = &unk_100A05B18;
          selfCopy = self;
          v51 = &v60;
          v49 = uploadingPercent;
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
      isUploaded = [neededCopy isUploaded];
      if (uploadingError)
      {
        v22 = isUploaded;
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
          [dsCopy addObject:v61[5]];
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
          v38 = neededCopy;
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

        unresolvedConflict = [neededCopy unresolvedConflict];
        v29 = unresolvedConflict;
        if (unresolvedConflict && [unresolvedConflict BOOLValue])
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
        if (*(*&buf[8] + 40) && [uploadingError code] == 4354)
        {
          [assetsCopy addObject:*(*&buf[8] + 40)];
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

- (BOOL)iq_updateThumbnailIfNeededForAssetID:(id)d
{
  dCopy = d;
  v4 = [dCopy length];
  if (v4)
  {
    v5 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 141558274;
      v9 = 1752392040;
      v10 = 2112;
      v11 = dCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "iq_updateThumbnailIfNeededForAssetID: Refreshing imageCache. assetID: %{mask.hash}@", &v8, 0x16u);
    }

    v6 = +[BCCacheManager defaultCacheManager];
    [v6 incrementVersionForIdentifier:dCopy];
  }

  return v4 != 0;
}

- (id)_counterpartURLForURL:(id)l
{
  path = [l path];
  lastPathComponent = [path lastPathComponent];

  if ([lastPathComponent length])
  {
    unzippedCounterpartCacheURL = [(BKLibraryDataSourceUbiquityiOS *)self unzippedCounterpartCacheURL];
    v7 = [unzippedCounterpartCacheURL URLByAppendingPathComponent:lastPathComponent];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_removeCounterpartsForAssetIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DF244;
  block[3] = &unk_100A03A30;
  v7 = dsCopy;
  v26 = v7;
  selfCopy = self;
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

- (void)iq_purgeUnzippedBooksCacheIfNeededExceptURL:(id)l
{
  lCopy = l;
  v5 = +[NSFileManager defaultManager];
  selfCopy = self;
  unzippedCounterpartCacheURL = [(BKLibraryDataSourceUbiquityiOS *)self unzippedCounterpartCacheURL];
  path = [unzippedCounterpartCacheURL path];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v5;
  v33 = path;
  lastPathComponent = [v5 enumeratorAtPath:path];
  v9 = [lastPathComponent countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v32 = lCopy;
    v11 = 0;
    v12 = *v42;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(lastPathComponent);
        }

        v14 = [v33 stringByAppendingPathComponent:*(*(&v41 + 1) + 8 * i)];
        v15 = [v35 attributesOfItemAtPath:v14 error:0];
        v16 = [v15 objectForKeyedSubscript:NSFileSize];
        longValue = [v16 longValue];

        v11 += longValue;
        if (v11 > 0x3200000)
        {

          lastPathComponent = [v32 lastPathComponent];
          unzippedCounterpartCacheURL2 = [(BKLibraryDataSourceUbiquityiOS *)selfCopy unzippedCounterpartCacheURL];
          v40 = 0;
          v19 = [v35 contentsOfDirectoryAtURL:unzippedCounterpartCacheURL2 includingPropertiesForKeys:0 options:0 error:&v40];
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
                path2 = [v26 path];
                lastPathComponent2 = [path2 lastPathComponent];
                v29 = [lastPathComponent2 isEqualToString:lastPathComponent];

                if ((v29 & 1) == 0)
                {
                  v30 = [v26 bu_extendedAttributeNamed:v24 iCloudSyncable:1];
                  if ([v30 length])
                  {
                    [(NSMutableDictionary *)selfCopy->_iq_counterpartURLFromAssetID setObject:0 forKeyedSubscript:v30];
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

      v10 = [lastPathComponent countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_22:
    lCopy = v32;
  }
}

- (id)iq_createUbiquityAssetFromMetadataDict:(id)dict
{
  dictCopy = dict;
  v5 = [dictCopy objectForKeyedSubscript:BCMetadataXattrAssetID];
  v6 = [dictCopy objectForKeyedSubscript:@"itemURL"];
  if (v6 && [v5 length])
  {
    v7 = [dictCopy objectForKeyedSubscript:@"isLocal"];
    bOOLValue = [v7 BOOLValue];

    v8 = [dictCopy objectForKeyedSubscript:@"contentChangedDate"];
    v9 = [dictCopy objectForKeyedSubscript:@"contentFileSize"];
    longLongValue = [v9 longLongValue];

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
    v14 = [dictCopy objectForKeyedSubscript:@"contentChangedDate"];
    v15 = BUDynamicCast();

    identifier = [(BKLibraryDataSourceUbiquityiOS *)self identifier];
    v17 = [BKUbiquityAsset newAssetFromMetadata:dictCopy url:v6 downloaded:bOOLValue downloading:v12 filesize:0x7FFFFFFFFFFFFFFFLL dataSourceIdentifier:identifier insertionDate:v13 updateDate:v15];

    v18 = [(NSMutableDictionary *)self->_iq_counterpartURLFromAssetID objectForKeyedSubscript:v5];
    if (v18)
    {
      [v17 setUrl:v18];
    }

    if (v8)
    {
      [v17 setUpdateDate:v8];
    }

    if (longLongValue != -1)
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

- (id)iq_createTempUbiquityAssetFromMetadataDict:(id)dict
{
  dictCopy = dict;
  v5 = [dictCopy objectForKeyedSubscript:BCMetadataXattrAssetID];
  v6 = [dictCopy objectForKeyedSubscript:@"itemURL"];
  if (v6 && [v5 length])
  {
    v7 = [dictCopy objectForKeyedSubscript:@"isLocal"];
    bOOLValue = [v7 BOOLValue];

    v8 = [dictCopy objectForKeyedSubscript:@"contentChangedDate"];
    v9 = [dictCopy objectForKeyedSubscript:@"contentFileSize"];
    longLongValue = [v9 longLongValue];

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
    v16 = [dictCopy objectForKeyedSubscript:@"contentChangedDate"];
    v17 = BUDynamicCast();

    identifier = [(BKLibraryDataSourceUbiquityiOS *)self identifier];
    v13 = [BKUbiquityAsset newAssetFromMetadata:dictCopy url:v6 downloaded:bOOLValue downloading:v15 filesize:0x7FFFFFFFFFFFFFFFLL dataSourceIdentifier:identifier insertionDate:v14 updateDate:v17];

    v19 = [(NSMutableDictionary *)self->_iq_counterpartURLFromAssetID objectForKeyedSubscript:v5];
    if (v19)
    {
      [v13 setUrl:v19];
    }

    if (v8)
    {
      [v13 setUpdateDate:v8];
    }

    if (longLongValue != -1)
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

- (void)iq_clearCachesForAssetIDs:(id)ds
{
  dsCopy = ds;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(dsCopy);
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

      v6 = [dsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([dsCopy count])
  {
    [(BKLibraryDataSourceUbiquityiOS *)self p_schedulePersistInfoToDisk];
  }
}

- (void)_unclaimAssetIDs:(id)ds
{
  dsCopy = ds;
  ivarQueue = self->_ivarQueue;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000DFDBC;
  v11 = &unk_100A03440;
  selfCopy = self;
  v13 = dsCopy;
  v6 = dsCopy;
  dispatch_sync(ivarQueue, &v8);
  [(BKLibraryDataSourceUbiquityiOS *)self _removeCounterpartsForAssetIDs:v6, v8, v9, v10, v11, selfCopy];
  [(BKLibraryDataSourceUbiquityiOS *)self _removeAssetIDsFromCoverCacheManager:v6];
  libraryManager = [(BKLibraryDataSourceUbiquityiOS *)self libraryManager];
  [libraryManager libraryDataSource:self removedAssetsWithAssetIDs:v6 orTemporaryAssetIDs:0];
}

- (BOOL)_deleteFromAllDevicesURL:(id)l
{
  lCopy = l;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (lCopy)
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
    [NSURL coordinateWritingItemAtURL:lCopy options:1 error:&v10 byAccessor:v9];
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
        v24 = lCopy;
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

- (BOOL)_evictFromDeviceURL:(id)l assetID:(id)d
{
  lCopy = l;
  dCopy = d;
  if (lCopy)
  {
    v8 = +[NSFileManager defaultManager];
    v18 = 0;
    v9 = [v8 evictUbiquitousItemAtURL:lCopy error:&v18];
    v10 = v18;

    if (v9)
    {
      v11 = [[BKLibraryDownloadStatus alloc] initWithAssetID:dCopy state:0 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:0.0];
      v12 = +[NSNotificationCenter defaultCenter];
      v13 = BKLibraryDownloadStatusNotification;
      v20 = BKLibraryDownloadStatusKey;
      v14 = [NSSet setWithObject:v11];
      v21 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [v12 postNotificationName:v13 object:self userInfo:v15];

      v19 = dCopy;
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

- (void)_triggerDownload:(id)download assetID:(id)d
{
  downloadCopy = download;
  dCopy = d;
  v8 = BKLibraryDataSourceUbiquityLog();
  v9 = v8;
  if (downloadCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      v24 = 1752392040;
      v25 = 2112;
      v26 = downloadCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_triggerDownload: url: %{mask.hash}@", buf, 0x16u);
    }

    if (dCopy)
    {
      v10 = [[BKLibraryDownloadStatus alloc] initWithAssetID:dCopy state:2 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:0.0];
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

    v9 = [NSFileAccessIntent readingIntentWithURL:downloadCopy options:0];
    v15 = objc_opt_new();
    v20 = v9;
    v16 = [NSArray arrayWithObjects:&v20 count:1];
    v17 = objc_opt_new();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E05DC;
    v18[3] = &unk_100A04A50;
    v19 = downloadCopy;
    [v15 coordinateAccessWithIntents:v16 queue:v17 byAccessor:v18];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10078EAF8();
  }
}

- (void)iq_setUbiquityDocumentMonitoringEnabled:(BOOL)enabled
{
  if (enabled && (-[BKLibraryDataSourceUbiquityiOS ubiquityStatusMonitor](self, "ubiquityStatusMonitor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isICloudDriveEnabled], v4, v5))
  {
    ubiquityDocumentsObserver = [(BKLibraryDataSourceUbiquityiOS *)self ubiquityDocumentsObserver];

    v7 = BKLibraryDataSourceUbiquityLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (ubiquityDocumentsObserver)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iq_setUbiquityDocumentMonitoringEnabled: Restarting query.", buf, 2u);
      }

      ubiquityDocumentsObserver2 = [(BKLibraryDataSourceUbiquityiOS *)self ubiquityDocumentsObserver];
      [ubiquityDocumentsObserver2 restartQuery];
    }

    else
    {
      if (v8)
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "iq_setUbiquityDocumentMonitoringEnabled: Creating new observer.", v16, 2u);
      }

      v12 = [IMUbiquityDocumentsObserver alloc];
      ubiquityStatusMonitor = [(BKLibraryDataSourceUbiquityiOS *)self ubiquityStatusMonitor];
      v14 = [v12 initWithDelegate:self ubquityStatusMonitor:ubiquityStatusMonitor directoriesSubpath:0];
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

    ubiquityDocumentsObserver3 = [(BKLibraryDataSourceUbiquityiOS *)self ubiquityDocumentsObserver];
    [ubiquityDocumentsObserver3 tearDownQuery];

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
  _persistedInfoURL = [(BKLibraryDataSourceUbiquityiOS *)self _persistedInfoURL];
  [v4 removeItemAtURL:_persistedInfoURL error:0];
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

- (void)_addLocalAssetsForURLs:(id)ls completion:(id)completion
{
  lsCopy = ls;
  completionCopy = completion;
  processUbiquityMetadataQueue = self->_processUbiquityMetadataQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E0E04;
  block[3] = &unk_100A049A0;
  v12 = lsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = lsCopy;
  dispatch_async(processUbiquityMetadataQueue, block);
}

- (void)handleFileGenerationChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleFileGenerationChangedNotification: %@", buf, 0xCu);
  }

  objc_opt_class();
  userInfo = [notificationCopy userInfo];
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

- (void)iq_updateCachedAssetGeneration:(id)generation url:(id)url
{
  generationCopy = generation;
  v7 = [(NSMutableDictionary *)self->_iq_assetIDFromURL objectForKeyedSubscript:url];
  v8 = [(NSMutableDictionary *)self->_iq_assetFromAssetID objectForKeyedSubscript:v7];
  if (v8)
  {
    [v8 setGeneration:{objc_msgSend(generationCopy, "longLongValue")}];
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

- (void)_updateUbiquityAssetID:(id)d withMetadata:(id)metadata
{
  dCopy = d;
  metadataCopy = metadata;
  if ([metadataCopy count])
  {
    updateAssetMetadataQueue = self->_updateAssetMetadataQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E1734;
    block[3] = &unk_100A03A30;
    v10 = metadataCopy;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(updateAssetMetadataQueue, block);
  }
}

- (void)_addAssetsToCoverCacheManager:(id)manager
{
  bu_arrayByRemovingNSNulls = [manager bu_arrayByRemovingNSNulls];
  v7 = [bu_arrayByRemovingNSNulls valueForKey:@"assetID"];

  v5 = [(BKLibraryDataSourceUbiquityiOS *)self _coverCacheURLsForAssetIDs:v7];
  if ([v5 count])
  {
    v6 = +[BCCacheManager defaultCacheManager];
    [v6 addURLs:v5 priority:3 quality:202 expiresAfter:0];
  }
}

- (void)_removeAssetIDsFromCoverCacheManager:(id)manager
{
  v6 = [(BKLibraryDataSourceUbiquityiOS *)self _coverCacheURLsForAssetIDs:manager];
  if ([v6 count])
  {
    v3 = +[BCCacheManager defaultCacheManager];
    [v3 removeURLs:v6 priority:3 quality:206];
    allKeys = [v6 allKeys];
    v5 = [NSSet setWithArray:allKeys];
    [v3 incrementVersionForIdentifiers:v5];
  }
}

- (id)_coverCacheURLsForAssetIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dsCopy;
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

- (void)fetchAllUbiquitousBooksWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E1BBC;
  v4[3] = &unk_100A05E68;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(BKLibraryDataSourceUbiquityiOS *)selfCopy fetchAssetIDsWithCompletion:v4];
}

- (void)_makeBooksUbiquitous:(id)ubiquitous completion:(id)completion
{
  ubiquitousCopy = ubiquitous;
  completionCopy = completion;
  v8 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [ubiquitousCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_makeBooksUbiquitous: count: %ld", buf, 0xCu);
  }

  if ([ubiquitousCopy count])
  {
    libraryManager = [(BKLibraryDataSourceUbiquityiOS *)self libraryManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E1E60;
    v12[3] = &unk_100A04C28;
    v12[4] = self;
    v13 = ubiquitousCopy;
    v14 = completionCopy;
    [libraryManager performBackgroundReadOnlyBlock:v12];
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)_addSupplementalContentMetadataFromAsset:(id)asset toExistingAsset:(id)existingAsset
{
  assetCopy = asset;
  existingAssetCopy = existingAsset;
  if (existingAssetCopy && [assetCopy isSupplementalContent])
  {
    assetID = [existingAssetCopy assetID];
    storeID = [existingAssetCopy storeID];
    if ([storeID length])
    {
      storePlaylistID = [existingAssetCopy storePlaylistID];
      if ([storePlaylistID length])
      {
        isSupplementalContent = [existingAssetCopy isSupplementalContent];

        if (isSupplementalContent)
        {
          storeID2 = [assetCopy storeID];
          if (![storeID2 length])
          {
LABEL_17:

            goto LABEL_18;
          }

          storePlaylistID2 = [assetCopy storePlaylistID];
          v13 = [storePlaylistID2 length];

          if (v13)
          {
            storePlaylistID3 = [existingAssetCopy storePlaylistID];
            storePlaylistID4 = [assetCopy storePlaylistID];
            v16 = [storePlaylistID3 isEqual:storePlaylistID4];

            if ((v16 & 1) == 0)
            {
              v20 = BKLibraryBookImportLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                storePlaylistID5 = [existingAssetCopy storePlaylistID];
                storePlaylistID6 = [assetCopy storePlaylistID];
                v30 = 141559298;
                v31 = 1752392040;
                v32 = 2112;
                v33 = assetID;
                v34 = 2160;
                v35 = 1752392040;
                v36 = 2112;
                v37 = storePlaylistID5;
                v38 = 2160;
                v39 = 1752392040;
                v40 = 2112;
                v41 = storePlaylistID6;
                v23 = "_addSupplementalContentMetadata: Will repair asset %{mask.hash}@ for different storePlaylistID (old=%{mask.hash}@, new=%{mask.hash}@)";
                goto LABEL_22;
              }

LABEL_16:

              storePlaylistID7 = [assetCopy storePlaylistID];
              storeID3 = [assetCopy storeID];
              [existingAssetCopy setSupplementalContent:1 playlistID:storePlaylistID7 storeID:storeID3];

              storeID2 = +[BKUbiquityMetadataHelper sharedInstance];
              isSupplementalContent2 = [assetCopy isSupplementalContent];
              storePlaylistID8 = [assetCopy storePlaylistID];
              storeID4 = [assetCopy storeID];
              v29 = [existingAssetCopy url];
              [storeID2 setUbiquityMetadataIsSupplemental:isSupplementalContent2 playlistID:storePlaylistID8 storeID:storeID4 forURL:v29];

              goto LABEL_17;
            }

            storeID5 = [existingAssetCopy storeID];
            storeID6 = [assetCopy storeID];
            v19 = [storeID5 isEqual:storeID6];

            if ((v19 & 1) == 0)
            {
              v20 = BKLibraryBookImportLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                storePlaylistID5 = [existingAssetCopy storeID];
                storePlaylistID6 = [assetCopy storeID];
                v30 = 141559298;
                v31 = 1752392040;
                v32 = 2112;
                v33 = assetID;
                v34 = 2160;
                v35 = 1752392040;
                v36 = 2112;
                v37 = storePlaylistID5;
                v38 = 2160;
                v39 = 1752392040;
                v40 = 2112;
                v41 = storePlaylistID6;
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
          v33 = assetID;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_addSupplementalContentMetadata: Will repair asset %{mask.hash}@ for missing supplemental content properties", &v30, 0x16u);
        }

        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

LABEL_19:
}

- (id)p_moveToUbiquityItemAtURL:(id)l preferredFileNameWithoutPathExtension:(id)extension
{
  lCopy = l;
  extensionCopy = extension;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100027354;
  v21 = sub_1000275F0;
  v22 = 0;
  workQueue = [(BKLibraryDataSourceUbiquityiOS *)self workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E3234;
  v13[3] = &unk_100A05548;
  v13[4] = self;
  v14 = lCopy;
  v15 = extensionCopy;
  v16 = &v17;
  v9 = extensionCopy;
  v10 = lCopy;
  dispatch_sync(workQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)_isFileExistsError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];

  if (domain == NSCocoaErrorDomain)
  {
    userInfo = [errorCopy userInfo];
    v7 = [userInfo objectForKey:NSUnderlyingErrorKey];

    domain2 = [v7 domain];
    v5 = domain2 == NSPOSIXErrorDomain && [v7 code] == 17;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)plistEntryAsDictionaryFromAssetID:(id)d path:(id)path needsCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  dCopy = d;
  pathCopy = path;
  if ([dCopy length])
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
    v16 = dCopy;
    dispatch_sync(ivarQueue, block);
    v11 = v19[5];
    if (v11)
    {
      v12 = [BCUbiquityMetadataHelper ubiquityMetadataForURL:v11 options:-262145 needsCoordination:coordinationCopy];
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

+ (id)mapUbiquityMetadataToPlistMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([metadataCopy count])
  {
    v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [metadataCopy count]);
    objc_opt_class();
    v5 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrAssetID];
    v6 = BUDynamicCast();

    if ([v6 length])
    {
      v7 = +[IMLibraryPlist keyNameForUniqueId];
      [v4 setObject:v6 forKey:v7];
    }

    objc_opt_class();
    v8 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrTitle];
    v9 = BUDynamicCast();

    if ([v9 length])
    {
      v10 = +[IMLibraryPlist keyNameForTitle];
      [v4 setObject:v9 forKey:v10];
    }

    objc_opt_class();
    v11 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrSortTitle];
    v12 = BUDynamicCast();

    if ([v12 length])
    {
      v13 = +[IMLibraryPlist keyNameForSortTitle];
      [v4 setObject:v12 forKey:v13];
    }

    objc_opt_class();
    v14 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrAuthor];
    v15 = BUDynamicCast();

    v16 = [BKLibraryAsset actualAuthorFromMetedata:v15];

    if ([v16 length])
    {
      v17 = +[IMLibraryPlist keyNameForAuthor];
      [v4 setObject:v16 forKey:v17];
    }

    v68 = v16;
    objc_opt_class();
    v18 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrSortAuthor];
    v19 = BUDynamicCast();

    if ([v19 length])
    {
      v20 = +[IMLibraryPlist keyNameForSortAuthor];
      [v4 setObject:v19 forKey:v20];
    }

    objc_opt_class();
    v21 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrGenre];
    v22 = BUDynamicCast();

    v23 = v22;
    if ([v22 length])
    {
      v24 = +[IMLibraryPlist keyNameForGenre];
      [v4 setObject:v23 forKey:v24];
    }

    v66 = v23;
    objc_opt_class();
    v25 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrComments];
    v26 = BUDynamicCast();

    v27 = v26;
    if ([v26 length])
    {
      v28 = +[IMLibraryPlist keyNameForComments];
      [v4 setObject:v27 forKey:v28];
    }

    v65 = v27;
    objc_opt_class();
    v29 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrBookDescription];
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
    v33 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrYear];
    v34 = BUDynamicCast();

    if ([v34 length])
    {
      v35 = +[IMLibraryPlist keyNameForYear];
      [v4 setObject:v34 forKey:v35];
    }

    v63 = v34;
    objc_opt_class();
    v36 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrExplicit];
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
    v40 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrLastOpened];
    v41 = BUDynamicCast();

    if (v41)
    {
      v42 = +[IMLibraryPlist keyNameForLastOpened];
      [v4 setObject:v41 forKey:v42];
    }

    v69 = v12;
    objc_opt_class();
    v43 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrFirstOpened];
    v44 = BUDynamicCast();

    if (v44)
    {
      v45 = +[IMLibraryPlist keyNameForFirstOpened];
      [v4 setObject:v44 forKey:v45];
    }

    v67 = v19;
    objc_opt_class();
    v46 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrRating];
    v47 = BUDynamicCast();

    if (v47)
    {
      v48 = +[IMLibraryPlist keyNameForRating];
      [v4 setObject:v47 forKey:v48];
    }

    objc_opt_class();
    v49 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrGeneration];
    v50 = BUDynamicCast();

    if (v50)
    {
      v51 = +[IMLibraryPlist keyNameForGeneration];
      [v4 setObject:v50 forKey:v51];
    }

    objc_opt_class();
    v52 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrIsSupplementalContent];
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
    v56 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrStoreID];
    v57 = BUDynamicCast();

    if ([v57 length])
    {
      v58 = +[IMLibraryPlist keyNameForStoreId];
      [v4 setObject:v57 forKey:v58];
    }

    objc_opt_class();
    v59 = [metadataCopy objectForKeyedSubscript:BCMetadataXattrStorePlaylistID];
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

- (void)extractOperationDidFinish:(id)finish
{
  userContext = [finish userContext];
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E4584;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = userContext;
  v6 = userContext;
  dispatch_async(ivarQueue, v7);
}

- (void)extractOperationDidFail:(id)fail
{
  failCopy = fail;
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E48B4;
  v7[3] = &unk_100A03440;
  v8 = failCopy;
  selfCopy = self;
  v6 = failCopy;
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