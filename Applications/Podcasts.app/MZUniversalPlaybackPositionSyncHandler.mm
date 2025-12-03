@interface MZUniversalPlaybackPositionSyncHandler
- (BOOL)_shouldStop;
- (BOOL)_synchronize:(id *)_synchronize;
- (BOOL)keyValueStoreController:(id)controller transaction:(id)transaction didFailWithError:(id)error;
- (MZUniversalPlaybackPositionSyncHandler)initWithDataSource:(id)source bagContext:(id)context andTask:(id)task;
- (id)_synchronouslyRunKVSTransaction:(id)transaction;
- (id)newKVSGetAllTransactionSinceDomainVersion:(id)version;
- (id)newKVSGetAllTransactionWithMetadataItems:(id)items;
- (id)newKVSPutAllTransactionWithMetadataItems:(id)items;
- (id)newKVSTransactionWithType:(int)type keys:(id)keys;
- (void)_dataSourceCancelTransaction;
- (void)_fillEmptyMetadataIdentifiersIfNeeded;
- (void)_resetState;
- (void)_signalKVSTransactionCompletion:(id)completion;
- (void)_signalKVSTransactionCompletion:(id)completion withError:(id)error;
- (void)cancelWithError:(id)error;
- (void)setCanRequestStoreSignIn:(BOOL)in;
- (void)setNumMetadataItemsFromKVSStorage:(int64_t)storage;
- (void)setNumMetadataItemsToCommitToDataSource:(int64_t)source;
- (void)setNumMetadataItemsToCommitToKVSStorage:(int64_t)storage;
- (void)synchronizeWithCompletionHandler:(id)handler;
- (void)timeout;
@end

@implementation MZUniversalPlaybackPositionSyncHandler

- (MZUniversalPlaybackPositionSyncHandler)initWithDataSource:(id)source bagContext:(id)context andTask:(id)task
{
  sourceCopy = source;
  contextCopy = context;
  taskCopy = task;
  v26.receiver = self;
  v26.super_class = MZUniversalPlaybackPositionSyncHandler;
  v11 = [(MZUniversalPlaybackPositionSyncHandler *)&v26 init];
  v12 = v11;
  if (v11)
  {
    [(MZUniversalPlaybackPositionSyncHandler *)v11 setDataSource:sourceCopy];
    [(MZUniversalPlaybackPositionSyncHandler *)v12 setBagContext:contextCopy];
    v13 = [[MZUppSyncProcessor alloc] initWithStorageProviderDelegate:v12];
    [(MZUniversalPlaybackPositionSyncHandler *)v12 setTransactionProcessor:v13];

    [(MZUniversalPlaybackPositionSyncHandler *)v12 setTask:taskCopy];
    v14 = [MZKeyValueStoreController alloc];
    domain = [contextCopy domain];
    baseURLForGETAll = [contextCopy baseURLForGETAll];
    baseURLForPUTAll = [contextCopy baseURLForPUTAll];
    v18 = [(MZKeyValueStoreController *)v14 initWithDomain:domain baseURLForGETAll:baseURLForGETAll baseURLForPUTAll:baseURLForPUTAll];

    [(MZKeyValueStoreController *)v18 setDelegate:v12];
    [(MZUniversalPlaybackPositionSyncHandler *)v12 setKvsController:v18];
    v19 = dispatch_queue_create("MZUniversalPlaybackPositionSyncHandler.queue", 0);
    queue = v12->_queue;
    v12->_queue = v19;

    v21 = dispatch_queue_create("MZUniversalPlaybackPositionSyncHandler.syncOperationQueue", 0);
    syncOperationQueue = v12->_syncOperationQueue;
    v12->_syncOperationQueue = v21;

    v23 = v12->_syncOperationQueue;
    v24 = dispatch_get_global_queue(-32768, 0);
    dispatch_set_target_queue(v23, v24);
  }

  return v12;
}

- (void)_resetState
{
  [(MZUniversalPlaybackPositionSyncHandler *)self setDataSourceTransactionContext:0];
  [(MZUniversalPlaybackPositionSyncHandler *)self setCurrentKVSTransaction:0];
  v3 = [[MZUppSyncProcessor alloc] initWithStorageProviderDelegate:self];
  [(MZUniversalPlaybackPositionSyncHandler *)self setTransactionProcessor:v3];
}

- (void)_dataSourceCancelTransaction
{
  [(MZUniversalPlaybackPositionSyncHandler *)self _resetState];
  dataSource = [(MZUniversalPlaybackPositionSyncHandler *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    dataSourceTransactionContext = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
    [dataSource cancelUniversalPlaybackPositionTransaction:dataSourceTransactionContext];
  }
}

- (BOOL)_synchronize:(id *)_synchronize
{
  v153 = 0;
  v154 = &v153;
  v155 = 0x2020000000;
  v156 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096408;
  block[3] = &unk_1004D9068;
  block[4] = self;
  block[5] = &v153;
  dispatch_sync(queue, block);
  if ((v154[3] & 1) == 0)
  {
    [(MZUniversalPlaybackPositionSyncHandler *)self _fillEmptyMetadataIdentifiersIfNeeded];
    kdebug_trace();
    v7 = _MTLogCategoryUPPSync();
    _synchronizeCopy = _synchronize;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Beginning synchronization", buf, 2u);
    }

    v8 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Begin STEP 0. Gather local items to sync from data source.", buf, 2u);
    }

    v9 = _MTLogCategoryCloudSync();
    spid = os_signpost_id_generate(v9);

    v10 = _MTLogCategoryUPPSync();
    v11 = v10;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "UPP.Sync.Step.0.Begin", "", buf, 2u);
    }

    task = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    metrics = [task metrics];
    [metrics setLatestUPPSubtask:1];

    objc_initWeak(&location, self);
    dataSource = [(MZUniversalPlaybackPositionSyncHandler *)self dataSource];
    v149[0] = _NSConcreteStackBlock;
    v149[1] = 3221225472;
    v149[2] = sub_100096454;
    v149[3] = &unk_1004DA1F8;
    objc_copyWeak(&v150, &location);
    v15 = [dataSource beginTransactionWithItemsToSyncEnumerationBlock:v149];
    [(MZUniversalPlaybackPositionSyncHandler *)self setDataSourceTransactionContext:v15];

    transactionProcessor = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    metadataItemsFromDataSource = [transactionProcessor metadataItemsFromDataSource];
    v18 = [metadataItemsFromDataSource count];
    task2 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    metrics2 = [task2 metrics];
    [metrics2 setNumMetadataItemsFromDataSource:v18];

    dataSourceTransactionContext = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
    LOBYTE(task2) = dataSourceTransactionContext == 0;

    if (task2)
    {
      goto LABEL_13;
    }

    if ([(MZUniversalPlaybackPositionSyncHandler *)self _shouldStop])
    {
      [(MZUniversalPlaybackPositionSyncHandler *)self _dataSourceCancelTransaction];
LABEL_13:
      v6 = 0;
LABEL_76:
      objc_destroyWeak(&v150);
      objc_destroyWeak(&location);
      goto LABEL_77;
    }

    v22 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      transactionProcessor2 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      metadataItemsFromDataSource2 = [transactionProcessor2 metadataItemsFromDataSource];
      allKeys = [metadataItemsFromDataSource2 allKeys];
      v26 = [allKeys count];
      transactionProcessor3 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      metadataItemsFromDataSource3 = [transactionProcessor3 metadataItemsFromDataSource];
      allKeys2 = [metadataItemsFromDataSource3 allKeys];
      *buf = 67240450;
      *v158 = v26;
      *&v158[4] = 2114;
      *&v158[6] = allKeys2;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Gathered local %{public}d items to sync from dataSource: %{public}@", buf, 0x12u);
    }

    v30 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      dataSourceTransactionContext2 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
      *buf = 138543362;
      *v158 = dataSourceTransactionContext2;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "dataSource transaction context = %{public}@", buf, 0xCu);
    }

    kdebug_trace();
    v32 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Finish STEP 0.", buf, 2u);
    }

    v33 = _MTLogCategoryUPPSync();
    v34 = v33;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, spid, "UPP.Sync.Step.0.End", "", buf, 2u);
    }

    v35 = _MTLogCategoryCloudSync();
    v36 = os_signpost_id_generate(v35);

    v37 = _MTLogCategoryUPPSync();
    v38 = v37;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_BEGIN, v36, "UPP.Sync.Step.1.Begin", "", buf, 2u);
    }

    kdebug_trace();
    v39 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Begin STEP 1. Perform iTMS-kvs getAll to update new items.", buf, 2u);
    }

    task3 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    metrics3 = [task3 metrics];
    [metrics3 setLatestUPPSubtask:2];

    v42 = +[NSMutableArray array];
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    transactionProcessor4 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    metadataItemsFromDataSource4 = [transactionProcessor4 metadataItemsFromDataSource];
    allValues = [metadataItemsFromDataSource4 allValues];

    v46 = [allValues countByEnumeratingWithState:&v145 objects:v159 count:16];
    if (v46)
    {
      v47 = *v146;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v146 != v47)
          {
            objc_enumerationMutation(allValues);
          }

          v49 = *(*(&v145 + 1) + 8 * i);
          if ([v49 isNew])
          {
            [v42 addObject:v49];
          }
        }

        v46 = [allValues countByEnumeratingWithState:&v145 objects:v159 count:16];
      }

      while (v46);
    }

    if ([v42 count])
    {
      v50 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSGetAllTransactionWithMetadataItems:v42];
      [(MZUniversalPlaybackPositionSyncHandler *)self setCurrentKVSTransaction:v50];

      if ([(MZUniversalPlaybackPositionSyncHandler *)self _shouldStop])
      {
LABEL_60:
        [(MZUniversalPlaybackPositionSyncHandler *)self _dataSourceCancelTransaction];
        v6 = 0;
LABEL_75:

        goto LABEL_76;
      }

      v51 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [v42 count];
        *buf = 67240450;
        *v158 = v52;
        *&v158[4] = 2112;
        *&v158[6] = v42;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Requesting remote items for %{public}d new Items: %{pubic}@", buf, 0x12u);
      }

      currentKVSTransaction = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
      v54 = [(MZUniversalPlaybackPositionSyncHandler *)self _synchronouslyRunKVSTransaction:currentKVSTransaction];

      if (v54)
      {
        if (!_synchronizeCopy)
        {
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      if ([(MZUniversalPlaybackPositionSyncHandler *)self _shouldStop])
      {
        goto LABEL_73;
      }

      transactionProcessor5 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      [transactionProcessor5 mergeMetadataItemsFromGetResponse];
    }

    kdebug_trace();
    v56 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Finish STEP 1.", buf, 2u);
    }

    v57 = _MTLogCategoryUPPSync();
    v58 = v57;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_INTERVAL_END, v36, "UPP.Sync.Step.1.End", "", buf, 2u);
    }

    v59 = _MTLogCategoryCloudSync();
    v60 = os_signpost_id_generate(v59);

    v61 = _MTLogCategoryUPPSync();
    v62 = v61;
    if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, OS_SIGNPOST_INTERVAL_BEGIN, v60, "UPP.Sync.Step.2.Begin", "", buf, 2u);
    }

    kdebug_trace();
    v63 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Begin STEP 2.1. Perform iTMS-kvs getAll for remote changes.", buf, 2u);
    }

    v64 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "      Start newKVSGetAllTransactionSinceDomainVersion...", buf, 2u);
    }

    task4 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    metrics4 = [task4 metrics];
    [metrics4 setLatestUPPSubtask:3];

    dataSourceTransactionContext3 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
    lastSyncedDomainVersion = [dataSourceTransactionContext3 lastSyncedDomainVersion];
    v69 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSGetAllTransactionSinceDomainVersion:lastSyncedDomainVersion];
    [(MZUniversalPlaybackPositionSyncHandler *)self setCurrentKVSTransaction:v69];

    if ([(MZUniversalPlaybackPositionSyncHandler *)self _shouldStop])
    {
      goto LABEL_60;
    }

    v70 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "      Finish newKVSGetAllTransactionSinceDomainVersion.", buf, 2u);
    }

    v71 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      currentKVSTransaction2 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
      sinceDomainVersion = [currentKVSTransaction2 sinceDomainVersion];
      *buf = 138543362;
      *v158 = sinceDomainVersion;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Requesting remote items from server -since domain-version = %{public}@", buf, 0xCu);
    }

    v74 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "      Start _synchronouslyRunKVSTransaction...", buf, 2u);
    }

    currentKVSTransaction3 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
    v54 = [(MZUniversalPlaybackPositionSyncHandler *)self _synchronouslyRunKVSTransaction:currentKVSTransaction3];

    v76 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "      Finish _synchronouslyRunKVSTransaction.", buf, 2u);
    }

    if (v54)
    {
      if (!_synchronizeCopy)
      {
LABEL_73:
        [(MZUniversalPlaybackPositionSyncHandler *)self _dataSourceCancelTransaction];
        v6 = 0;
LABEL_74:

        goto LABEL_75;
      }

LABEL_71:
      v77 = v54;
      *_synchronizeCopy = v54;
      goto LABEL_73;
    }

    if ([(MZUniversalPlaybackPositionSyncHandler *)self _shouldStop])
    {
      goto LABEL_73;
    }

    v79 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Finish STEP 2.1.", buf, 2u);
    }

    v80 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Begin STEP 2.2. Merge local and remote deltas.", buf, 2u);
    }

    task5 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    metrics5 = [task5 metrics];
    [metrics5 setLatestUPPSubtask:4];

    transactionProcessor6 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    [transactionProcessor6 mergeMetadataItemsFromGetResponse];

    kdebug_trace();
    v84 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "Finish STEP 2.2.", buf, 2u);
    }

    v85 = _MTLogCategoryUPPSync();
    v86 = v85;
    if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v86, OS_SIGNPOST_INTERVAL_END, v60, "UPP.Sync.Step.2.End", "", buf, 2u);
    }

    v87 = _MTLogCategoryCloudSync();
    v88 = os_signpost_id_generate(v87);

    v89 = _MTLogCategoryUPPSync();
    v90 = v89;
    if (v88 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v90, OS_SIGNPOST_INTERVAL_BEGIN, v88, "UPP.Sync.Step.3.Begin", "", buf, 2u);
    }

    kdebug_trace();
    v91 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Begin STEP 3. Push changes to server.", buf, 2u);
    }

    task6 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    metrics6 = [task6 metrics];
    [metrics6 setLatestUPPSubtask:5];

    transactionProcessor7 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    metadataItemsToCommitToKVSStorage = [transactionProcessor7 metadataItemsToCommitToKVSStorage];
    v96 = [metadataItemsToCommitToKVSStorage count];

    if (v96)
    {
      v97 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        transactionProcessor8 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
        metadataItemsToCommitToKVSStorage2 = [transactionProcessor8 metadataItemsToCommitToKVSStorage];
        allKeys3 = [metadataItemsToCommitToKVSStorage2 allKeys];
        *buf = 138543362;
        *v158 = allKeys3;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Sending merged items to server: %{public}@", buf, 0xCu);
      }

      transactionProcessor9 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      metadataItemsToCommitToKVSStorage3 = [transactionProcessor9 metadataItemsToCommitToKVSStorage];
      allValues2 = [metadataItemsToCommitToKVSStorage3 allValues];
      v104 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSPutAllTransactionWithMetadataItems:allValues2];
      [(MZUniversalPlaybackPositionSyncHandler *)self setCurrentKVSTransaction:v104];

      currentKVSTransaction4 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
      v106 = [(MZUniversalPlaybackPositionSyncHandler *)self _synchronouslyRunKVSTransaction:currentKVSTransaction4];

      if (v106)
      {
        if (_synchronizeCopy)
        {
          v107 = v106;
          *_synchronizeCopy = v106;
        }

        goto LABEL_99;
      }

      if ([(MZUniversalPlaybackPositionSyncHandler *)self _shouldStop])
      {
LABEL_99:
        [(MZUniversalPlaybackPositionSyncHandler *)self _dataSourceCancelTransaction];
        v6 = 0;
LABEL_124:

        goto LABEL_74;
      }
    }

    transactionProcessor10 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    responseDomainVersion = [transactionProcessor10 responseDomainVersion];
    v110 = responseDomainVersion == 0;

    if (v110)
    {
      v111 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "[StoreBookkeeper] ERROR: expected to get a domainVersion in server response", buf, 2u);
      }

      dataSourceTransactionContext4 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
      lastSyncedDomainVersion2 = [dataSourceTransactionContext4 lastSyncedDomainVersion];
      transactionProcessor11 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      [transactionProcessor11 setResponseDomainVersion:lastSyncedDomainVersion2];
    }

    kdebug_trace();
    v115 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "Finish STEP 3.", buf, 2u);
    }

    v116 = _MTLogCategoryUPPSync();
    v117 = v116;
    if (v88 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v116))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v117, OS_SIGNPOST_INTERVAL_END, v88, "UPP.Sync.Step.3.End", "", buf, 2u);
    }

    v118 = _MTLogCategoryCloudSync();
    v119 = os_signpost_id_generate(v118);

    v120 = _MTLogCategoryUPPSync();
    v121 = v120;
    if (v119 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v121, OS_SIGNPOST_INTERVAL_BEGIN, v119, "UPP.Sync.Step.4.Begin", "", buf, 2u);
    }

    kdebug_trace();
    v122 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "Begin STEP 4. Commit changes to data source.", buf, 2u);
    }

    v123 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      transactionProcessor12 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      responseDomainVersion2 = [transactionProcessor12 responseDomainVersion];
      transactionProcessor13 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      metadataItemsToCommitToDataSource = [transactionProcessor13 metadataItemsToCommitToDataSource];
      *buf = 138543618;
      *v158 = responseDomainVersion2;
      *&v158[8] = 2114;
      *&v158[10] = metadataItemsToCommitToDataSource;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "Committing merged items with domainRevision: %{public}@ to local database: %{public}@", buf, 0x16u);
    }

    task7 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    metrics7 = [task7 metrics];
    [metrics7 setLatestUPPSubtask:6];

    transactionProcessor14 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    metadataItemsToCommitToDataSource2 = [transactionProcessor14 metadataItemsToCommitToDataSource];
    objectEnumerator = [metadataItemsToCommitToDataSource2 objectEnumerator];

    dataSource2 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSource];
    dataSourceTransactionContext5 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
    transactionProcessor15 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    responseDomainVersion3 = [transactionProcessor15 responseDomainVersion];
    v143[0] = _NSConcreteStackBlock;
    v143[1] = 3221225472;
    v143[2] = sub_1000965A8;
    v143[3] = &unk_1004DA220;
    v106 = objectEnumerator;
    v144 = v106;
    [dataSource2 commitUniversalPlaybackPositionTransaction:dataSourceTransactionContext5 domainVersion:responseDomainVersion3 metadataEnumerationBlock:v143];

    [(MZUniversalPlaybackPositionSyncHandler *)self _resetState];
    v137 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Finished synchronization", buf, 2u);
    }

    kdebug_trace();
    v138 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "Finish STEP 4.", buf, 2u);
    }

    v139 = _MTLogCategoryUPPSync();
    v140 = v139;
    if (v119 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, OS_SIGNPOST_INTERVAL_END, v119, "UPP.Sync.Step.4.End", "", buf, 2u);
    }

    v6 = 1;
    goto LABEL_124;
  }

  v6 = 1;
LABEL_77:
  _Block_object_dispose(&v153, 8);
  return v6;
}

- (void)_fillEmptyMetadataIdentifiersIfNeeded
{
  v2 = +[MTDB sharedInstance];
  importContext = [v2 importContext];

  [NSPredicate predicateForNilValueOrEmptyStringForKey:kEpisodeMetadataIdentifier];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009668C;
  v6[3] = &unk_1004D8798;
  v8 = v7 = importContext;
  v4 = v8;
  v5 = importContext;
  [v5 performBlockAndWaitWithSave:v6];
}

- (BOOL)_shouldStop
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100096A58;
  v5[3] = &unk_1004D9068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCanRequestStoreSignIn:(BOOL)in
{
  inCopy = in;
  self->_canRequestStoreSignIn = in;
  kvsController = [(MZUniversalPlaybackPositionSyncHandler *)self kvsController];
  [kvsController setCanRequestStoreSignIn:inCopy];
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  [(MZUniversalPlaybackPositionSyncHandler *)self setCanceled:1];
  kvsController = [(MZUniversalPlaybackPositionSyncHandler *)self kvsController];
  if ([kvsController isIdle])
  {
    currentKVSTransaction = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];

    if (!currentKVSTransaction)
    {
      goto LABEL_7;
    }

    if (!errorCopy)
    {
      currentKVSTransaction2 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
      errorCopy = [MZKeyValueStoreError transactionCancelledErrorWithTransaction:currentKVSTransaction2 underlyingError:0];
    }

    kvsController = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
    [(MZUniversalPlaybackPositionSyncHandler *)self _signalKVSTransactionCompletion:kvsController withError:errorCopy];
  }

LABEL_7:
  kvsController2 = [(MZUniversalPlaybackPositionSyncHandler *)self kvsController];
  if (errorCopy)
  {
    [kvsController2 cancelAllTransactionsCancelCode:{objc_msgSend(errorCopy, "code")}];
  }

  else
  {
    [kvsController2 cancelAllTransactions];
  }
}

- (void)timeout
{
  currentKVSTransaction = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
  v3 = [MZKeyValueStoreError transactionTimeoutErrorWithTransaction:currentKVSTransaction underlyingError:0];
  [(MZUniversalPlaybackPositionSyncHandler *)self cancelWithError:v3];
}

- (void)synchronizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096E20;
  block[3] = &unk_1004D9068;
  block[4] = self;
  block[5] = v11;
  dispatch_sync(queue, block);
  syncOperationQueue = self->_syncOperationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100096E54;
  v8[3] = &unk_1004D8520;
  v8[4] = self;
  v7 = handlerCopy;
  v9 = v7;
  dispatch_async(syncOperationQueue, v8);
  kdebug_trace();

  _Block_object_dispose(v11, 8);
}

- (id)newKVSTransactionWithType:(int)type keys:(id)keys
{
  v4 = *&type;
  kvsController = self->_kvsController;
  keysCopy = keys;
  defaultDomain = [(MZKeyValueStoreController *)kvsController defaultDomain];
  v9 = self->_kvsController;
  if (v4 == 1)
  {
    [(MZKeyValueStoreController *)v9 defaultGetURL];
  }

  else
  {
    [(MZKeyValueStoreController *)v9 defaultSetURL];
  }
  v10 = ;
  v11 = [[MZKeyValueStoreTransaction alloc] initWithType:v4 domain:defaultDomain URL:v10 keys:keysCopy];

  transactionProcessor = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
  [(MZKeyValueStoreTransaction *)v11 setProcessor:transactionProcessor];

  v13 = [[NSConditionLock alloc] initWithCondition:0];
  [(MZKeyValueStoreTransaction *)v11 setUserInfoValue:v13 forKey:@"completionConditionLock"];

  return v11;
}

- (id)newKVSPutAllTransactionWithMetadataItems:(id)items
{
  itemsCopy = items;
  if (![itemsCopy count])
  {
    v5 = 0;
    goto LABEL_29;
  }

  selfCopy = self;
  v5 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = v7;
  v9 = *v25;
  do
  {
    v10 = 0;
    do
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      if ([v11 isNew])
      {
        [v11 bookmarkTime];
      }

      [v11 bookmarkTime];
      if (v12 > 0.0 || ([v11 hasBeenPlayed] & 1) != 0 || objc_msgSend(v11, "playCount") || (objc_msgSend(v11, "lastDatePlayed"), v13 > 0.0) || (objc_msgSend(v11, "lastUserMarkedAsPlayedDate"), v14 > 0.0) || objc_msgSend(v11, "playStateManuallySet"))
      {
        itemIdentifier = [v11 itemIdentifier];
        [v5 addObject:itemIdentifier];

        v16 = _MTLogCategoryUPPSync();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 138543362;
        v29 = v11;
        v17 = v16;
        v18 = "Adding UPP sync item...%{public}@";
        goto LABEL_17;
      }

      if ([v11 isNew] && (objc_msgSend(v11, "bookmarkTime"), v19 <= 0.0))
      {
        v16 = _MTLogCategoryUPPSync();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v11;
          v17 = v16;
          v18 = "Skipping UPP sync item...%{public}@";
          goto LABEL_17;
        }
      }

      else
      {
        v16 = _MTLogCategoryUPPSync();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v11;
          v17 = v16;
          v18 = "Preventing UPP sync item...%{public}@";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
        }
      }

LABEL_18:

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v20 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    v8 = v20;
  }

  while (v20);
LABEL_27:

  self = selfCopy;
LABEL_29:
  v21 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSTransactionWithType:2 keys:v5];

  return v21;
}

- (id)newKVSGetAllTransactionWithMetadataItems:(id)items
{
  v4 = [items valueForKey:@"itemIdentifier"];
  v5 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSTransactionWithType:1 keys:v4];

  return v5;
}

- (id)newKVSGetAllTransactionSinceDomainVersion:(id)version
{
  versionCopy = @"0";
  if (version)
  {
    versionCopy = version;
  }

  v5 = versionCopy;
  v6 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSTransactionWithType:1 keys:0];
  [v6 setSinceDomainVersion:v5];

  return v6;
}

- (id)_synchronouslyRunKVSTransaction:(id)transaction
{
  transactionCopy = transaction;
  kvsController = [(MZUniversalPlaybackPositionSyncHandler *)self kvsController];
  [kvsController scheduleTransaction:transactionCopy];

  v6 = [transactionCopy userInfoValueForKey:@"completionConditionLock"];

  v7 = [NSDate dateWithTimeIntervalSinceNow:10.0];
  v8 = [v6 lockWhenCondition:1 beforeDate:v7];

  if (v8)
  {
    [v6 unlock];
  }

  else
  {
    currentKVSTransaction = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
    v10 = [MZKeyValueStoreError transactionTimeoutErrorWithTransaction:currentKVSTransaction underlyingError:0];
    [(MZUniversalPlaybackPositionSyncHandler *)self setFatalSyncError:v10];
  }

  fatalSyncError = [(MZUniversalPlaybackPositionSyncHandler *)self fatalSyncError];

  return fatalSyncError;
}

- (void)_signalKVSTransactionCompletion:(id)completion
{
  v3 = [completion userInfoValueForKey:@"completionConditionLock"];
  [v3 lock];
  [v3 unlockWithCondition:1];
}

- (void)_signalKVSTransactionCompletion:(id)completion withError:(id)error
{
  errorCopy = error;
  completionCopy = completion;
  currentKVSTransaction = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
  v9 = [completionCopy isEqual:currentKVSTransaction];

  if (v9)
  {
    if (errorCopy)
    {
      v10 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = errorCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "transaction is being canceled.  error = %{public}@", &v12, 0xCu);
      }
    }

    [(MZUniversalPlaybackPositionSyncHandler *)self setFatalSyncError:errorCopy];
    currentKVSTransaction2 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
    [(MZUniversalPlaybackPositionSyncHandler *)self _signalKVSTransactionCompletion:currentKVSTransaction2];
  }
}

- (BOOL)keyValueStoreController:(id)controller transaction:(id)transaction didFailWithError:(id)error
{
  controllerCopy = controller;
  transactionCopy = transaction;
  errorCopy = error;
  if ([errorCopy isAccountsChangedError])
  {
    v11 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sinceDomainVersion = [transactionCopy sinceDomainVersion];
      v16 = 138543362;
      v17 = sinceDomainVersion;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Detected account change.  Getting remote items since version 0 instead of %{public}@\n", &v16, 0xCu);
    }

    [transactionCopy setSinceDomainVersion:@"0"];
    goto LABEL_8;
  }

  if ([errorCopy isAuthenticationError] && !-[MZUniversalPlaybackPositionSyncHandler canRequestStoreSignIn](self, "canRequestStoreSignIn"))
  {
    v14 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = errorCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Detected authentication error (%{public}@) -- Bailing out", &v16, 0xCu);
    }

    [controllerCopy resolveError:errorCopy transaction:transactionCopy resolution:2];
    goto LABEL_12;
  }

  if (([errorCopy isRecoverableError] & 1) == 0)
  {
LABEL_12:
    [(MZUniversalPlaybackPositionSyncHandler *)self _signalKVSTransactionCompletion:transactionCopy withError:errorCopy];
    v13 = 1;
    goto LABEL_13;
  }

LABEL_8:
  v13 = 0;
LABEL_13:

  return v13;
}

- (void)setNumMetadataItemsFromKVSStorage:(int64_t)storage
{
  task = [(MZUniversalPlaybackPositionSyncHandler *)self task];
  metrics = [task metrics];
  [metrics setNumMetadataItemsFromKVSStorage:storage];
}

- (void)setNumMetadataItemsToCommitToDataSource:(int64_t)source
{
  task = [(MZUniversalPlaybackPositionSyncHandler *)self task];
  metrics = [task metrics];
  [metrics setNumMetadataItemsToCommitToDataSource:source];
}

- (void)setNumMetadataItemsToCommitToKVSStorage:(int64_t)storage
{
  task = [(MZUniversalPlaybackPositionSyncHandler *)self task];
  metrics = [task metrics];
  [metrics setNumMetadataItemsToCommitToKVSStorage:storage];
}

@end