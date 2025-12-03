@interface TUITransactionCoordinator
- (BOOL)_lq_applyTransaction:(id)transaction group:(id)group transactions:(id)transactions categories:(id)categories;
- (BOOL)finalizeSyncTransaction:(id)transaction;
- (TUITransactionCoordinator)initWithFeedId:(id)id layoutQueueContext:(id)context delegate:(id)delegate;
- (TUITransactionCoordinatorDelegate)delegate;
- (id)_aq_instanceForTransaction:(id)transaction;
- (id)_instanceForTransaction:(id)transaction;
- (id)lq_nextTransactionGroup;
- (void)_addTransactionAndProcess:(id)process;
- (void)_appendTransactions:(id)transactions forPredecessorsFromMap:(id)map forTransaction:(id)transaction;
- (void)_applyQueuedTransactionGroupsCheckForSync:(BOOL)sync;
- (void)_lq_processPendingTransactions;
- (void)_queueTransactionGroup:(id)group;
- (void)_removeInstanceForTransaction:(id)transaction;
- (void)performUpdateForTransactionGroup:(id)group;
- (void)resumeUpdates;
- (void)scheduleLayoutUpdateWithTransaction:(id)transaction block:(id)block;
- (void)scheduleSyncTransaction:(id)transaction;
- (void)updatePerformanceIdentifier:(id)identifier;
- (void)waitForSyncTransaction:(id)transaction completion:(id)completion;
@end

@implementation TUITransactionCoordinator

- (TUITransactionCoordinator)initWithFeedId:(id)id layoutQueueContext:(id)context delegate:(id)delegate
{
  contextCopy = context;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = TUITransactionCoordinator;
  v11 = [(TUITransactionCoordinator *)&v24 init];
  v12 = v11;
  if (v11)
  {
    v11->_feedId.uniqueIdentifier = id.var0;
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("TUITransactionCoordinator.accessQueue", v13);
    accessQueue = v12->_accessQueue;
    v12->_accessQueue = v14;

    objc_storeStrong(&v12->_queueContext, context);
    v16 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
    transactionInstances = v12->_transactionInstances;
    v12->_transactionInstances = v16;

    v18 = [NSHashTable hashTableWithOptions:512];
    pendingTransactions = v12->_pendingTransactions;
    v12->_pendingTransactions = v18;

    v20 = objc_opt_new();
    queuedTransactions = v12->_queuedTransactions;
    v12->_queuedTransactions = v20;

    v22 = +[NSUserDefaults standardUserDefaults];
    v12->_catchUncommittedTransactions = [v22 BOOLForKey:@"TUICatchUncommitTransactions"];
  }

  return v12;
}

- (id)_aq_instanceForTransaction:(id)transaction
{
  transactionCopy = transaction;
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = [(NSMapTable *)self->_transactionInstances objectForKey:transactionCopy];
  if (!v5)
  {
    v5 = [[_TUITransactionInstance alloc] initWithTransaction:transactionCopy];
    [(NSMapTable *)self->_transactionInstances setObject:v5 forKey:transactionCopy];
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_42FDC;
    v14[3] = &unk_25DF18;
    objc_copyWeak(&v16, &location);
    v6 = transactionCopy;
    v15 = v6;
    if (([v6 isCommittedAndIfNotNotifyWithBlock:v14] & 1) == 0 && self->_catchUncommittedTransactions && _TUIDeviceHasInternalInstall())
    {
      v7 = +[NSThread callStackSymbols];
      v8 = dispatch_time(0, 200000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_4302C;
      block[3] = &unk_25DCA0;
      v12 = v6;
      v13 = v7;
      v9 = v7;
      dispatch_after(v8, &_dispatch_main_q, block);
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)_addTransactionAndProcess:(id)process
{
  processCopy = process;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_43254;
  block[3] = &unk_25ED40;
  v11 = &v12;
  block[4] = self;
  v6 = processCopy;
  v10 = v6;
  dispatch_sync(accessQueue, block);
  if (*(v13 + 24) == 1)
  {
    activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_432BC;
    v8[3] = &unk_25DE30;
    v8[4] = self;
    dispatch_async(activeQueue, v8);
  }

  _Block_object_dispose(&v12, 8);
}

- (id)_instanceForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_433D4;
  v16 = sub_433E4;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_433EC;
  block[3] = &unk_25ED40;
  v10 = transactionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = transactionCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_removeInstanceForTransaction:(id)transaction
{
  transactionCopy = transaction;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_434D4;
  v7[3] = &unk_25DCA0;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)scheduleSyncTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [transactionCopy tx];
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [v5 setFlags:{objc_msgSend(v5, "flags") | 1}];
  [(TUIWorkQueueContext *)self->_queueContext setSynchronousTransactionInProgress:1];
  if (transactionCopy)
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_436F0;
    block[3] = &unk_25E7C0;
    block[4] = self;
    v14 = v5;
    v7 = transactionCopy;
    v15 = v7;
    dispatch_sync(accessQueue, block);
    v8 = TUITransactionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v17 = uniqueIdentifier;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[fid:%lu] TUITransactionCoordinator: scheduling _lq_processPendingTransactions from scheduleSyncTransaction for %@", buf, 0x16u);
    }

    syncWorkQueue = [(TUIWorkQueueContext *)self->_queueContext syncWorkQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_43900;
    v12[3] = &unk_25DE30;
    v12[4] = self;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v12);
    dispatch_async(syncWorkQueue, v11);
  }
}

- (void)waitForSyncTransaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  v7 = [transaction tx];
  syncWorkQueue = [(TUIWorkQueueContext *)self->_queueContext syncWorkQueue];
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &stru_25EE38);
  dispatch_async(syncWorkQueue, v9);

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_43A28;
  v13[3] = &unk_25DE58;
  v14 = completionCopy;
  queueContext = self->_queueContext;
  v11 = completionCopy;
  activeCallbackQueue = [(TUIWorkQueueContext *)queueContext activeCallbackQueue];
  [v7 addSubTransactionCompletion:v13 queue:activeCallbackQueue];
}

- (BOOL)finalizeSyncTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [transactionCopy tx];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_433D4;
  v42 = sub_433E4;
  v43 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_43F58;
  block[3] = &unk_25DC78;
  block[4] = self;
  v7 = v5;
  v36 = v7;
  v37 = &v38;
  dispatch_sync(accessQueue, block);
  cancelSynchronousAndSuspendUpdatesUnlessFinalized = [v39[5] cancelSynchronousAndSuspendUpdatesUnlessFinalized];
  if (cancelSynchronousAndSuspendUpdatesUnlessFinalized)
  {
    v9 = TUITransactionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v45 = uniqueIdentifier;
      v46 = 2114;
      v47 = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "[fid:%lu] sync transaction cancelled %{public}@", buf, 0x16u);
    }

    options = [v7 options];
    flags = [options flags];

    if ((flags & 2) != 0)
    {
      options2 = [v7 options];
      v14 = [options2 mutableCopy];

      [v14 duration];
      [v14 setDuration:{fmin(v15, 0.1)}];
      v16 = [[TUITransactionGroup alloc] initWithFeedId:self->_feedId.uniqueIdentifier transactions:0 options:v14 flags:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained transactionCoordinator:self timeoutForSynchronousTransactionGroup:v16];

      v18 = self->_accessQueue;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_4405C;
      v32[3] = &unk_25EE60;
      v33 = v16;
      v34 = &v38;
      v32[4] = self;
      v19 = v16;
      dispatch_sync(v18, v32);
    }

    [v39[5] resumeSuspendedUpdates];
  }

  else if (v39[5])
  {
    v20 = TUITransactionLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = self->_feedId.uniqueIdentifier;
      v22 = v39[5];
      *buf = 134218498;
      v45 = v21;
      v46 = 2114;
      v47 = v7;
      v48 = 2114;
      v49 = v22;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "[fid:%lu] waiting for sync transaction group (for tx = %{public}@) to finilize: %{public}@", buf, 0x20u);
    }

    [v39[5] waitForFinalizing];
  }

  else
  {
    v23 = TUITransactionLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = self->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v45 = v24;
      v46 = 2114;
      v47 = v7;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "[fid:%lu] sync transaction group (for tx = %{public}@) already cleared (and queued)", buf, 0x16u);
    }
  }

  [(TUITransactionCoordinator *)self _applyQueuedTransactionGroupsCheckForSync:1];
  v25 = self->_accessQueue;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_440D8;
  v31[3] = &unk_25DE30;
  v31[4] = self;
  dispatch_sync(v25, v31);
  v26 = TUITransactionLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    v45 = v27;
    v46 = 2112;
    v47 = transactionCopy;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "[fid:%lu] TUITransactionCoordinator: scheduling _lq_processPendingTransactions from finalizeSyncTransaction for %@", buf, 0x16u);
  }

  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_44108;
  v30[3] = &unk_25DE30;
  v30[4] = self;
  dispatch_async(activeQueue, v30);

  _Block_object_dispose(&v38, 8);
  return cancelSynchronousAndSuspendUpdatesUnlessFinalized ^ 1;
}

- (void)scheduleLayoutUpdateWithTransaction:(id)transaction block:(id)block
{
  transactionCopy = transaction;
  blockCopy = block;
  v8 = [transactionCopy tx];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4435C;
  block[3] = &unk_25EE88;
  block[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = blockCopy;
  v20 = v11;
  v21 = &v22;
  v12 = transactionCopy;
  v19 = v12;
  dispatch_sync(accessQueue, block);
  if (*(v23 + 24) == 1)
  {
    v13 = TUITransactionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v27 = uniqueIdentifier;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[fid:%lu] TUITransactionCoordinator: scheduling _lq_processPendingTransactions from scheduleLayoutUpdateWithTransaction for %@", buf, 0x16u);
    }

    activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_444D8;
    v16[3] = &unk_25DE30;
    v16[4] = self;
    dispatch_async(activeQueue, v16);
  }

  _Block_object_dispose(&v22, 8);
}

- (id)lq_nextTransactionGroup
{
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  v129 = 0;
  v130 = &v129;
  v131 = 0x3032000000;
  v132 = sub_433D4;
  v133 = sub_433E4;
  v134 = 0;
  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = sub_433D4;
  v127 = sub_433E4;
  v128 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_45250;
  block[3] = &unk_25EEB0;
  block[5] = &v129;
  block[4] = self;
  block[6] = &v123;
  block[7] = &v119;
  dispatch_sync(accessQueue, block);
  if (v124[5])
  {
    v4 = dispatch_semaphore_create(0);
    v5 = v124[5];
    v116[0] = _NSConcreteStackBlock;
    v116[1] = 3221225472;
    v116[2] = sub_45388;
    v116[3] = &unk_25DE30;
    v6 = v4;
    v117 = v6;
    if (([v5 isCommittedAndIfNotNotifyWithBlock:v116] & 1) == 0)
    {
      v7 = TUITransactionLog();
      v8 = os_signpost_id_generate(v7);

      v9 = TUITransactionLog();
      v10 = v9;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "WaitForSyncTransactionToCommit", "", buf, 2u);
      }

      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      v11 = TUITransactionLog();
      v12 = v11;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_END, v8, "WaitForSyncTransactionToCommit", "", buf, 2u);
      }
    }

    v13 = TUITransactionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_199A9C();
    }
  }

  v85 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
  v86 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
  v14 = [v130[5] copy];
  v76 = [v130[5] copy];
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v130[5];
  v81 = [obj countByEnumeratingWithState:&v112 objects:v146 count:16];
  if (v81)
  {
    v79 = *v113;
    do
    {
      for (i = 0; i != v81; i = i + 1)
      {
        if (*v113 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v112 + 1) + 8 * i);
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        predecessors = [v15 predecessors];
        v17 = [predecessors countByEnumeratingWithState:&v108 objects:v145 count:16];
        if (v17)
        {
          v18 = 0;
          v19 = *v109;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v109 != v19)
              {
                objc_enumerationMutation(predecessors);
              }

              v21 = *(*(&v108 + 1) + 8 * j);
              if ([v14 containsObject:v21])
              {
                if (!v18)
                {
                  v18 = [NSHashTable hashTableWithOptions:512];
                }

                [v18 addObject:v21];
                v22 = [v86 objectForKey:v21];
                if (!v22)
                {
                  v22 = [NSHashTable hashTableWithOptions:512];
                  [v86 setObject:v22 forKey:v21];
                }

                [v22 addObject:v15];
              }
            }

            v17 = [predecessors countByEnumeratingWithState:&v108 objects:v145 count:16];
          }

          while (v17);

          if (v18)
          {
            [v76 removeObject:v15];
            [v85 setObject:v18 forKey:v15];
          }
        }

        else
        {

          v18 = 0;
        }
      }

      v81 = [obj countByEnumeratingWithState:&v112 objects:v146 count:16];
    }

    while (v81);
  }

  v80 = objc_opt_new();
  v23 = v124;
  if (*(v120 + 24) == 1 && v124[5])
  {
    [(TUITransactionCoordinator *)self _appendTransactions:v80 forPredecessorsFromMap:v85 forTransaction:?];
    obja = [v124[5] options];
    v23 = v124;
  }

  else
  {
    obja = 0;
  }

  if (v23[5])
  {
    v24 = 1;
    goto LABEL_89;
  }

  allObjects = [v76 allObjects];
  v26 = [allObjects sortedArrayUsingSelector:"compareIdentifier:"];

  if (*(v120 + 24) == 1)
  {
    v27 = [v26 indexesOfObjectsPassingTest:&stru_25EEF0];
    v28 = [v26 objectsAtIndexes:v27];

    v29 = v28;
  }

  else
  {
    v29 = v26;
  }

  v74 = v29;
  firstObject = [v29 firstObject];
  v82 = objc_opt_new();
  if (firstObject)
  {
    [v82 addObject:firstObject];
    options = [firstObject options];

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v31 = v74;
    v32 = [v31 countByEnumeratingWithState:&v104 objects:v144 count:16];
    if (!v32)
    {
      goto LABEL_59;
    }

    v33 = *v105;
    while (1)
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v105 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v104 + 1) + 8 * k);
        if (v35 != firstObject)
        {
          options2 = [*(*(&v104 + 1) + 8 * k) options];
          v37 = options2;
          if (options == options2)
          {

LABEL_56:
            [v82 addObject:v35];
            continue;
          }

          options3 = [v35 options];
          v39 = [options isCompatibleWithOptions:options3];

          if (v39)
          {
            goto LABEL_56;
          }
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v104 objects:v144 count:16];
      if (!v32)
      {
LABEL_59:

        goto LABEL_73;
      }
    }
  }

  options = obja;
LABEL_73:
  while (1)
  {
    firstObject2 = [v82 firstObject];

    if (!firstObject2)
    {
      break;
    }

    [v80 addObject:firstObject2];
    [v82 removeObjectAtIndex:0];
    v40 = [v86 objectForKey:firstObject2];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v41 = v40;
    v42 = [v41 countByEnumeratingWithState:&v100 objects:v143 count:16];
    if (v42)
    {
      v43 = *v101;
      do
      {
        for (m = 0; m != v42; m = m + 1)
        {
          if (*v101 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v100 + 1) + 8 * m);
          v46 = [v85 objectForKey:v45];
          if ([v46 containsObject:firstObject2])
          {
            options4 = [v45 options];
            v48 = [options isCompatibleWithOptions:options4];

            if (v48)
            {
              [v46 removeObject:firstObject2];
              if (![v46 count])
              {
                [v82 addObject:v45];
              }
            }
          }
        }

        v42 = [v41 countByEnumeratingWithState:&v100 objects:v143 count:16];
      }

      while (v42);
    }

    firstObject = firstObject2;
  }

  v50 = v124[5];
  v24 = v50 != 0;
  if (v50)
  {
    v24 = 1;
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v51 = v80;
    v52 = [v51 countByEnumeratingWithState:&v96 objects:v142 count:16];
    if (v52)
    {
      v53 = *v97;
      while (2)
      {
        for (n = 0; n != v52; n = n + 1)
        {
          if (*v97 != v53)
          {
            objc_enumerationMutation(v51);
          }

          if ([*(*(&v96 + 1) + 8 * n) flags])
          {
            v24 = 1;
            goto LABEL_87;
          }
        }

        v52 = [v51 countByEnumeratingWithState:&v96 objects:v142 count:16];
        if (v52)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v24 = 0;
    }

LABEL_87:
  }

  obja = options;
LABEL_89:
  if ([v80 count])
  {
    v55 = [[TUITransactionGroup alloc] initWithFeedId:self->_feedId.uniqueIdentifier transactions:v80 options:obja flags:v24];
    if (v55)
    {
      v56 = TUITransactionLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        sub_199B14();
      }

LABEL_104:

      goto LABEL_106;
    }
  }

  v57 = TUITransactionLog();
  v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);

  if (v58)
  {
    v56 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v59 = v130[5];
    v60 = [v59 countByEnumeratingWithState:&v92 objects:v141 count:16];
    if (v60)
    {
      v61 = *v93;
      do
      {
        for (ii = 0; ii != v60; ii = ii + 1)
        {
          if (*v93 != v61)
          {
            objc_enumerationMutation(v59);
          }

          v63 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"id=%lu", [*(*(&v92 + 1) + 8 * ii) identifier]);
          [v56 addObject:v63];
        }

        v60 = [v59 countByEnumeratingWithState:&v92 objects:v141 count:16];
      }

      while (v60);
    }

    v64 = TUITransactionLog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      v72 = v124[5];
      v73 = [v56 componentsJoinedByString:@", "];
      *buf = 134218498;
      v136 = uniqueIdentifier;
      v137 = 2114;
      v138 = v72;
      v139 = 2114;
      v140 = v73;
      _os_log_debug_impl(&dword_0, v64, OS_LOG_TYPE_DEBUG, "[fid:%lu] couldn't establish next transaction group; syncTx = %{public}@, pendingTransaction = [%{public}@]", buf, 0x20u);
    }

    v55 = 0;
    goto LABEL_104;
  }

  v55 = 0;
LABEL_106:
  v65 = self->_accessQueue;
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_453B8;
  v87[3] = &unk_25EF18;
  v88 = v80;
  selfCopy = self;
  v91 = v24;
  v66 = v55;
  v90 = v66;
  v67 = v80;
  dispatch_sync(v65, v87);
  v68 = v90;
  v69 = v66;

  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v123, 8);

  _Block_object_dispose(&v129, 8);

  return v69;
}

- (void)_appendTransactions:(id)transactions forPredecessorsFromMap:(id)map forTransaction:(id)transaction
{
  transactionsCopy = transactions;
  mapCopy = map;
  transactionCopy = transaction;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [mapCopy objectForKey:{transactionCopy, 0}];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(TUITransactionCoordinator *)self _appendTransactions:transactionsCopy forPredecessorsFromMap:mapCopy forTransaction:*(*(&v16 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

  [transactionsCopy addObject:transactionCopy];
}

- (void)_lq_processPendingTransactions
{
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  while ([(NSHashTable *)self->_pendingTransactions count])
  {
    performanceIdentifier = self->_performanceIdentifier;
    if (performanceIdentifier)
    {
      [(NSNumber *)performanceIdentifier unsignedIntegerValue];
      kdebug_trace();
    }

    lq_nextTransactionGroup = [(TUITransactionCoordinator *)self lq_nextTransactionGroup];
    v6 = self->_performanceIdentifier;
    if (v6)
    {
      [(NSNumber *)v6 unsignedIntegerValue];
      kdebug_trace();
    }

    if (!lq_nextTransactionGroup)
    {
      break;
    }

    v7 = self->_performanceIdentifier;
    if (v7)
    {
      [(NSNumber *)v7 unsignedIntegerValue];
      kdebug_trace();
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 transactionCoordinator:self performUpdateForTransactionGroup:lq_nextTransactionGroup];
    }

    else
    {
      [(TUITransactionCoordinator *)self performUpdateForTransactionGroup:lq_nextTransactionGroup];
    }

    v11 = self->_performanceIdentifier;
    if (v11)
    {
      [(NSNumber *)v11 unsignedIntegerValue];
      kdebug_trace();
    }
  }
}

- (void)performUpdateForTransactionGroup:(id)group
{
  groupCopy = group;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transactionCoordinator:self willBeginUpdateWithTransactionGroup:groupCopy];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  sortedTransactions = [groupCopy sortedTransactions];
  v9 = [sortedTransactions countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v37;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(sortedTransactions);
        }

        v11 |= [(TUITransactionCoordinator *)self _lq_applyTransaction:*(*(&v36 + 1) + 8 * i) group:groupCopy transactions:v5 categories:v6];
      }

      v10 = [sortedTransactions countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  [groupCopy setCategories:v6];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_45B28;
  v34[3] = &unk_25DE30;
  v14 = v5;
  v35 = v14;
  v15 = objc_retainBlock(v34);
  if (v11)
  {
    [groupCopy addCompletion:v15];
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 transactionCoordinator:self updateWithTransactionGroup:groupCopy];

    [(TUITransactionCoordinator *)self _queueTransactionGroup:groupCopy];
  }

  else
  {
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_45C14;
    block[3] = &unk_25DCA0;
    v18 = groupCopy;
    v32 = v18;
    selfCopy = self;
    dispatch_sync(accessQueue, block);
    [v18 computeFinalUpdatesWithBlock:&stru_25EF38];
    [v18 addCompletion:v15];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_45C34;
    v29[3] = &unk_25DE30;
    v30 = v18;
    TUIDispatchAsyncViaRunLoop(v29);
  }

  v19 = objc_loadWeakRetained(&self->_delegate);
  [v19 transactionCoordinator:self didEndUpdateWithTransactionGroup:groupCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = v14;
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v25 + 1) + 8 * j) removeSubTransactionCompletionDeferral];
      }

      v22 = [v20 countByEnumeratingWithState:&v25 objects:v40 count:16];
    }

    while (v22);
  }
}

- (void)_queueTransactionGroup:(id)group
{
  groupCopy = group;
  v5 = TUITransactionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    *&buf[4] = uniqueIdentifier;
    *&buf[12] = 2114;
    *&buf[14] = groupCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[fid:%lu] enqueue group %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v23 = 0;
  flags = [groupCopy flags];
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_45ED0;
  block[3] = &unk_25EE60;
  block[4] = self;
  v17 = buf;
  v9 = groupCopy;
  v16 = v9;
  dispatch_sync(accessQueue, block);
  if (*(*&buf[8] + 24) == 1)
  {
    v10 = TUITransactionLog();
    v11 = flags & 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = self->_feedId.uniqueIdentifier;
      *v18 = 134218240;
      v19 = v12;
      v20 = 2048;
      v21 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "[fid:%lu] scheduling applyQueueTransactions checkSync:%lu", v18, 0x16u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_45F60;
    v13[3] = &unk_25EF60;
    v13[4] = self;
    v14 = v11;
    TUIDispatchAsyncViaRunLoop(v13);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_applyQueuedTransactionGroupsCheckForSync:(BOOL)sync
{
  syncCopy = sync;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_pauseUpdateCount)
  {
    v5 = !syncCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v16 = TUITransactionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      pauseUpdateCount = self->_pauseUpdateCount;
      *v30 = 134218240;
      *&v30[4] = uniqueIdentifier;
      *&v30[12] = 2048;
      *&v30[14] = pauseUpdateCount;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "[fid:%lu] deferring dequeue (paused = %lu)", v30, 0x16u);
    }
  }

  else
  {
    *v30 = 0;
    *&v30[8] = v30;
    *&v30[16] = 0x3032000000;
    v31 = sub_433D4;
    v32 = sub_433E4;
    v33 = objc_opt_new();
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_46298;
    block[3] = &unk_25EFC8;
    v24 = syncCopy;
    block[4] = self;
    block[5] = v30;
    dispatch_sync(accessQueue, block);
    if (![*(*&v30[8] + 40) count])
    {
      v7 = TUITransactionLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = self->_feedId.uniqueIdentifier;
        v9 = self->_pauseUpdateCount;
        *buf = 134218240;
        v27 = v8;
        v28 = 2048;
        v29 = v9;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[fid:%lu] nothing to dequeue (paused = %lu)", buf, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = *(*&v30[8] + 40);
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v13)
    {
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if (v11)
          {
            [WeakRetained transactionCoordinator:self applyUpdatesFromTransactionGroup:*(*(&v19 + 1) + 8 * i)];
          }

          else
          {
            [*(*(&v19 + 1) + 8 * i) applyUpdates];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v13);
    }

    _Block_object_dispose(v30, 8);
  }
}

- (BOOL)_lq_applyTransaction:(id)transaction group:(id)group transactions:(id)transactions categories:(id)categories
{
  transactionCopy = transaction;
  groupCopy = group;
  transactionsCopy = transactions;
  categoriesCopy = categories;
  allCategories = [transactionCopy allCategories];
  [categoriesCopy addObjectsFromArray:allCategories];

  [transactionCopy addCompletionDeferral];
  [transactionsCopy addObject:transactionCopy];
  v15 = [(TUITransactionCoordinator *)self _instanceForTransaction:transactionCopy];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_433D4;
  v39 = sub_433E4;
  v40 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_46790;
  block[3] = &unk_25EFF0;
  v34 = &v35;
  v17 = v15;
  v33 = v17;
  dispatch_sync(accessQueue, block);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v36[5];
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v41 count:16];
  v27 = v17;
  selfCopy = self;
  v21 = categoriesCopy;
  v22 = transactionsCopy;
  v23 = 0;
  if (v19)
  {
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v18);
        }

        v23 |= (*(*(*(&v28 + 1) + 8 * v25) + 16))();
        v25 = v25 + 1;
      }

      while (v19 != v25);
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v41 count:16];
    }

    while (v19);
  }

  [(TUITransactionCoordinator *)selfCopy _removeInstanceForTransaction:transactionCopy];
  _Block_object_dispose(&v35, 8);

  return v23 & 1;
}

- (void)resumeUpdates
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  pauseUpdateCount = self->_pauseUpdateCount;
  if (pauseUpdateCount)
  {
    v4 = pauseUpdateCount - 1;
    self->_pauseUpdateCount = v4;
    if (!v4)
    {

      [(TUITransactionCoordinator *)self _applyQueuedTransactionGroups];
    }
  }
}

- (void)updatePerformanceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_46928;
  v7[3] = &unk_25DCA0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(activeQueue, v7);
}

- (TUITransactionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end