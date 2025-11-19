@interface MZUniversalPlaybackPositionSyncHandler
- (BOOL)_shouldStop;
- (BOOL)_synchronize:(id *)a3;
- (BOOL)keyValueStoreController:(id)a3 transaction:(id)a4 didFailWithError:(id)a5;
- (MZUniversalPlaybackPositionSyncHandler)initWithDataSource:(id)a3 bagContext:(id)a4 andTask:(id)a5;
- (id)_synchronouslyRunKVSTransaction:(id)a3;
- (id)newKVSGetAllTransactionSinceDomainVersion:(id)a3;
- (id)newKVSGetAllTransactionWithMetadataItems:(id)a3;
- (id)newKVSPutAllTransactionWithMetadataItems:(id)a3;
- (id)newKVSTransactionWithType:(int)a3 keys:(id)a4;
- (void)_dataSourceCancelTransaction;
- (void)_fillEmptyMetadataIdentifiersIfNeeded;
- (void)_resetState;
- (void)_signalKVSTransactionCompletion:(id)a3;
- (void)_signalKVSTransactionCompletion:(id)a3 withError:(id)a4;
- (void)cancelWithError:(id)a3;
- (void)setCanRequestStoreSignIn:(BOOL)a3;
- (void)setNumMetadataItemsFromKVSStorage:(int64_t)a3;
- (void)setNumMetadataItemsToCommitToDataSource:(int64_t)a3;
- (void)setNumMetadataItemsToCommitToKVSStorage:(int64_t)a3;
- (void)synchronizeWithCompletionHandler:(id)a3;
- (void)timeout;
@end

@implementation MZUniversalPlaybackPositionSyncHandler

- (MZUniversalPlaybackPositionSyncHandler)initWithDataSource:(id)a3 bagContext:(id)a4 andTask:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = MZUniversalPlaybackPositionSyncHandler;
  v11 = [(MZUniversalPlaybackPositionSyncHandler *)&v26 init];
  v12 = v11;
  if (v11)
  {
    [(MZUniversalPlaybackPositionSyncHandler *)v11 setDataSource:v8];
    [(MZUniversalPlaybackPositionSyncHandler *)v12 setBagContext:v9];
    v13 = [[MZUppSyncProcessor alloc] initWithStorageProviderDelegate:v12];
    [(MZUniversalPlaybackPositionSyncHandler *)v12 setTransactionProcessor:v13];

    [(MZUniversalPlaybackPositionSyncHandler *)v12 setTask:v10];
    v14 = [MZKeyValueStoreController alloc];
    v15 = [v9 domain];
    v16 = [v9 baseURLForGETAll];
    v17 = [v9 baseURLForPUTAll];
    v18 = [(MZKeyValueStoreController *)v14 initWithDomain:v15 baseURLForGETAll:v16 baseURLForPUTAll:v17];

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
  v4 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
    [v4 cancelUniversalPlaybackPositionTransaction:v3];
  }
}

- (BOOL)_synchronize:(id *)a3
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
    v141 = a3;
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

    v12 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    v13 = [v12 metrics];
    [v13 setLatestUPPSubtask:1];

    objc_initWeak(&location, self);
    v14 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSource];
    v149[0] = _NSConcreteStackBlock;
    v149[1] = 3221225472;
    v149[2] = sub_100096454;
    v149[3] = &unk_1004DA1F8;
    objc_copyWeak(&v150, &location);
    v15 = [v14 beginTransactionWithItemsToSyncEnumerationBlock:v149];
    [(MZUniversalPlaybackPositionSyncHandler *)self setDataSourceTransactionContext:v15];

    v16 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    v17 = [v16 metadataItemsFromDataSource];
    v18 = [v17 count];
    v19 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    v20 = [v19 metrics];
    [v20 setNumMetadataItemsFromDataSource:v18];

    v21 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
    LOBYTE(v19) = v21 == 0;

    if (v19)
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
      v23 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      v24 = [v23 metadataItemsFromDataSource];
      v25 = [v24 allKeys];
      v26 = [v25 count];
      v27 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      v28 = [v27 metadataItemsFromDataSource];
      v29 = [v28 allKeys];
      *buf = 67240450;
      *v158 = v26;
      *&v158[4] = 2114;
      *&v158[6] = v29;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Gathered local %{public}d items to sync from dataSource: %{public}@", buf, 0x12u);
    }

    v30 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
      *buf = 138543362;
      *v158 = v31;
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

    v40 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    v41 = [v40 metrics];
    [v41 setLatestUPPSubtask:2];

    v42 = +[NSMutableArray array];
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v43 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    v44 = [v43 metadataItemsFromDataSource];
    v45 = [v44 allValues];

    v46 = [v45 countByEnumeratingWithState:&v145 objects:v159 count:16];
    if (v46)
    {
      v47 = *v146;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v146 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = *(*(&v145 + 1) + 8 * i);
          if ([v49 isNew])
          {
            [v42 addObject:v49];
          }
        }

        v46 = [v45 countByEnumeratingWithState:&v145 objects:v159 count:16];
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

      v53 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
      v54 = [(MZUniversalPlaybackPositionSyncHandler *)self _synchronouslyRunKVSTransaction:v53];

      if (v54)
      {
        if (!v141)
        {
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      if ([(MZUniversalPlaybackPositionSyncHandler *)self _shouldStop])
      {
        goto LABEL_73;
      }

      v55 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      [v55 mergeMetadataItemsFromGetResponse];
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

    v65 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    v66 = [v65 metrics];
    [v66 setLatestUPPSubtask:3];

    v67 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
    v68 = [v67 lastSyncedDomainVersion];
    v69 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSGetAllTransactionSinceDomainVersion:v68];
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
      v72 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
      v73 = [v72 sinceDomainVersion];
      *buf = 138543362;
      *v158 = v73;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Requesting remote items from server -since domain-version = %{public}@", buf, 0xCu);
    }

    v74 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "      Start _synchronouslyRunKVSTransaction...", buf, 2u);
    }

    v75 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
    v54 = [(MZUniversalPlaybackPositionSyncHandler *)self _synchronouslyRunKVSTransaction:v75];

    v76 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "      Finish _synchronouslyRunKVSTransaction.", buf, 2u);
    }

    if (v54)
    {
      if (!v141)
      {
LABEL_73:
        [(MZUniversalPlaybackPositionSyncHandler *)self _dataSourceCancelTransaction];
        v6 = 0;
LABEL_74:

        goto LABEL_75;
      }

LABEL_71:
      v77 = v54;
      *v141 = v54;
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

    v81 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    v82 = [v81 metrics];
    [v82 setLatestUPPSubtask:4];

    v83 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    [v83 mergeMetadataItemsFromGetResponse];

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

    v92 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    v93 = [v92 metrics];
    [v93 setLatestUPPSubtask:5];

    v94 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    v95 = [v94 metadataItemsToCommitToKVSStorage];
    v96 = [v95 count];

    if (v96)
    {
      v97 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        v98 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
        v99 = [v98 metadataItemsToCommitToKVSStorage];
        v100 = [v99 allKeys];
        *buf = 138543362;
        *v158 = v100;
        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "Sending merged items to server: %{public}@", buf, 0xCu);
      }

      v101 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      v102 = [v101 metadataItemsToCommitToKVSStorage];
      v103 = [v102 allValues];
      v104 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSPutAllTransactionWithMetadataItems:v103];
      [(MZUniversalPlaybackPositionSyncHandler *)self setCurrentKVSTransaction:v104];

      v105 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
      v106 = [(MZUniversalPlaybackPositionSyncHandler *)self _synchronouslyRunKVSTransaction:v105];

      if (v106)
      {
        if (v141)
        {
          v107 = v106;
          *v141 = v106;
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

    v108 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    v109 = [v108 responseDomainVersion];
    v110 = v109 == 0;

    if (v110)
    {
      v111 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "[StoreBookkeeper] ERROR: expected to get a domainVersion in server response", buf, 2u);
      }

      v112 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
      v113 = [v112 lastSyncedDomainVersion];
      v114 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      [v114 setResponseDomainVersion:v113];
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
      v124 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      v125 = [v124 responseDomainVersion];
      v126 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
      v127 = [v126 metadataItemsToCommitToDataSource];
      *buf = 138543618;
      *v158 = v125;
      *&v158[8] = 2114;
      *&v158[10] = v127;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "Committing merged items with domainRevision: %{public}@ to local database: %{public}@", buf, 0x16u);
    }

    v128 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
    v129 = [v128 metrics];
    [v129 setLatestUPPSubtask:6];

    v130 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    v131 = [v130 metadataItemsToCommitToDataSource];
    v132 = [v131 objectEnumerator];

    v133 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSource];
    v134 = [(MZUniversalPlaybackPositionSyncHandler *)self dataSourceTransactionContext];
    v135 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
    v136 = [v135 responseDomainVersion];
    v143[0] = _NSConcreteStackBlock;
    v143[1] = 3221225472;
    v143[2] = sub_1000965A8;
    v143[3] = &unk_1004DA220;
    v106 = v132;
    v144 = v106;
    [v133 commitUniversalPlaybackPositionTransaction:v134 domainVersion:v136 metadataEnumerationBlock:v143];

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
  v3 = [v2 importContext];

  [NSPredicate predicateForNilValueOrEmptyStringForKey:kEpisodeMetadataIdentifier];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009668C;
  v6[3] = &unk_1004D8798;
  v8 = v7 = v3;
  v4 = v8;
  v5 = v3;
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

- (void)setCanRequestStoreSignIn:(BOOL)a3
{
  v3 = a3;
  self->_canRequestStoreSignIn = a3;
  v4 = [(MZUniversalPlaybackPositionSyncHandler *)self kvsController];
  [v4 setCanRequestStoreSignIn:v3];
}

- (void)cancelWithError:(id)a3
{
  v8 = a3;
  [(MZUniversalPlaybackPositionSyncHandler *)self setCanceled:1];
  v4 = [(MZUniversalPlaybackPositionSyncHandler *)self kvsController];
  if ([v4 isIdle])
  {
    v5 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];

    if (!v5)
    {
      goto LABEL_7;
    }

    if (!v8)
    {
      v6 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
      v8 = [MZKeyValueStoreError transactionCancelledErrorWithTransaction:v6 underlyingError:0];
    }

    v4 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
    [(MZUniversalPlaybackPositionSyncHandler *)self _signalKVSTransactionCompletion:v4 withError:v8];
  }

LABEL_7:
  v7 = [(MZUniversalPlaybackPositionSyncHandler *)self kvsController];
  if (v8)
  {
    [v7 cancelAllTransactionsCancelCode:{objc_msgSend(v8, "code")}];
  }

  else
  {
    [v7 cancelAllTransactions];
  }
}

- (void)timeout
{
  v4 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
  v3 = [MZKeyValueStoreError transactionTimeoutErrorWithTransaction:v4 underlyingError:0];
  [(MZUniversalPlaybackPositionSyncHandler *)self cancelWithError:v3];
}

- (void)synchronizeWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v9 = v7;
  dispatch_async(syncOperationQueue, v8);
  kdebug_trace();

  _Block_object_dispose(v11, 8);
}

- (id)newKVSTransactionWithType:(int)a3 keys:(id)a4
{
  v4 = *&a3;
  kvsController = self->_kvsController;
  v7 = a4;
  v8 = [(MZKeyValueStoreController *)kvsController defaultDomain];
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
  v11 = [[MZKeyValueStoreTransaction alloc] initWithType:v4 domain:v8 URL:v10 keys:v7];

  v12 = [(MZUniversalPlaybackPositionSyncHandler *)self transactionProcessor];
  [(MZKeyValueStoreTransaction *)v11 setProcessor:v12];

  v13 = [[NSConditionLock alloc] initWithCondition:0];
  [(MZKeyValueStoreTransaction *)v11 setUserInfoValue:v13 forKey:@"completionConditionLock"];

  return v11;
}

- (id)newKVSPutAllTransactionWithMetadataItems:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    v5 = 0;
    goto LABEL_29;
  }

  v23 = self;
  v5 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
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
        v15 = [v11 itemIdentifier];
        [v5 addObject:v15];

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

  self = v23;
LABEL_29:
  v21 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSTransactionWithType:2 keys:v5];

  return v21;
}

- (id)newKVSGetAllTransactionWithMetadataItems:(id)a3
{
  v4 = [a3 valueForKey:@"itemIdentifier"];
  v5 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSTransactionWithType:1 keys:v4];

  return v5;
}

- (id)newKVSGetAllTransactionSinceDomainVersion:(id)a3
{
  v4 = @"0";
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [(MZUniversalPlaybackPositionSyncHandler *)self newKVSTransactionWithType:1 keys:0];
  [v6 setSinceDomainVersion:v5];

  return v6;
}

- (id)_synchronouslyRunKVSTransaction:(id)a3
{
  v4 = a3;
  v5 = [(MZUniversalPlaybackPositionSyncHandler *)self kvsController];
  [v5 scheduleTransaction:v4];

  v6 = [v4 userInfoValueForKey:@"completionConditionLock"];

  v7 = [NSDate dateWithTimeIntervalSinceNow:10.0];
  v8 = [v6 lockWhenCondition:1 beforeDate:v7];

  if (v8)
  {
    [v6 unlock];
  }

  else
  {
    v9 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
    v10 = [MZKeyValueStoreError transactionTimeoutErrorWithTransaction:v9 underlyingError:0];
    [(MZUniversalPlaybackPositionSyncHandler *)self setFatalSyncError:v10];
  }

  v11 = [(MZUniversalPlaybackPositionSyncHandler *)self fatalSyncError];

  return v11;
}

- (void)_signalKVSTransactionCompletion:(id)a3
{
  v3 = [a3 userInfoValueForKey:@"completionConditionLock"];
  [v3 lock];
  [v3 unlockWithCondition:1];
}

- (void)_signalKVSTransactionCompletion:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    if (v6)
    {
      v10 = _MTLogCategoryUPPSync();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "transaction is being canceled.  error = %{public}@", &v12, 0xCu);
      }
    }

    [(MZUniversalPlaybackPositionSyncHandler *)self setFatalSyncError:v6];
    v11 = [(MZUniversalPlaybackPositionSyncHandler *)self currentKVSTransaction];
    [(MZUniversalPlaybackPositionSyncHandler *)self _signalKVSTransactionCompletion:v11];
  }
}

- (BOOL)keyValueStoreController:(id)a3 transaction:(id)a4 didFailWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isAccountsChangedError])
  {
    v11 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 sinceDomainVersion];
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Detected account change.  Getting remote items since version 0 instead of %{public}@\n", &v16, 0xCu);
    }

    [v9 setSinceDomainVersion:@"0"];
    goto LABEL_8;
  }

  if ([v10 isAuthenticationError] && !-[MZUniversalPlaybackPositionSyncHandler canRequestStoreSignIn](self, "canRequestStoreSignIn"))
  {
    v14 = _MTLogCategoryUPPSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Detected authentication error (%{public}@) -- Bailing out", &v16, 0xCu);
    }

    [v8 resolveError:v10 transaction:v9 resolution:2];
    goto LABEL_12;
  }

  if (([v10 isRecoverableError] & 1) == 0)
  {
LABEL_12:
    [(MZUniversalPlaybackPositionSyncHandler *)self _signalKVSTransactionCompletion:v9 withError:v10];
    v13 = 1;
    goto LABEL_13;
  }

LABEL_8:
  v13 = 0;
LABEL_13:

  return v13;
}

- (void)setNumMetadataItemsFromKVSStorage:(int64_t)a3
{
  v5 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
  v4 = [v5 metrics];
  [v4 setNumMetadataItemsFromKVSStorage:a3];
}

- (void)setNumMetadataItemsToCommitToDataSource:(int64_t)a3
{
  v5 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
  v4 = [v5 metrics];
  [v4 setNumMetadataItemsToCommitToDataSource:a3];
}

- (void)setNumMetadataItemsToCommitToKVSStorage:(int64_t)a3
{
  v5 = [(MZUniversalPlaybackPositionSyncHandler *)self task];
  v4 = [v5 metrics];
  [v4 setNumMetadataItemsToCommitToKVSStorage:a3];
}

@end