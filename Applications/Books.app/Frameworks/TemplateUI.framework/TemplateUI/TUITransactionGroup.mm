@interface TUITransactionGroup
- (BOOL)cancelSynchronousAndSuspendUpdatesUnlessFinalized;
- (BOOL)containsTransaction:(id)transaction;
- (TUITransactionGroup)initWithFeedId:(id)id transactions:(id)transactions options:(id)options flags:(unint64_t)flags;
- (id)description;
- (void)_invokeCompletions;
- (void)_invokeHandlersForUpdatesApplied;
- (void)addCompletion:(id)completion;
- (void)addHandlerForUpdatesApplied:(id)applied;
- (void)addNotifyWhenAppliedDeferral;
- (void)appendUpdateBlock:(id)block;
- (void)applyNonVisualUpdates;
- (void)applyUpdates;
- (void)computeFinalUpdatesWithBlock:(id)block;
- (void)dealloc;
- (void)removeNotifyWhenAppliedDeferral;
- (void)waitForFinalizing;
@end

@implementation TUITransactionGroup

- (TUITransactionGroup)initWithFeedId:(id)id transactions:(id)transactions options:(id)options flags:(unint64_t)flags
{
  transactionsCopy = transactions;
  optionsCopy = options;
  v39.receiver = self;
  v39.super_class = TUITransactionGroup;
  v12 = [(TUITransactionGroup *)&v39 init];
  v13 = v12;
  if (v12)
  {
    v12->_feedId.uniqueIdentifier = id.var0;
    v14 = dispatch_queue_create("TUITransactionGroup", 0);
    computeUpdateQueue = v13->_computeUpdateQueue;
    v13->_computeUpdateQueue = v14;

    v34 = optionsCopy;
    v16 = [optionsCopy copy];
    options = v13->_options;
    v13->_options = v16;

    v18 = [transactionsCopy copy];
    sortedTransactions = v13->_sortedTransactions;
    v13->_sortedTransactions = v18;

    v20 = [NSHashTable hashTableWithOptions:512];
    transactions = v13->_transactions;
    v13->_transactions = v20;

    v13->_flags = flags;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = transactionsCopy;
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v36;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          [(NSHashTable *)v13->_transactions addObject:v28];
          if (v25)
          {
            creationDate = [v28 creationDate];
            v30 = [(NSDate *)v25 compare:creationDate];

            if (v30 != &dword_0 + 1)
            {
              continue;
            }
          }

          creationDate2 = [v28 creationDate];

          v25 = creationDate2;
        }

        v24 = [v22 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
    }

    [(TUITransactionGroup *)v13 addNotifyWhenAppliedDeferral];
    v13->_l_isCompleted = 0;
    v13->_stateLock._os_unfair_lock_opaque = 0;
    date = v13->_date;
    v13->_date = v25;

    optionsCopy = v34;
  }

  return v13;
}

- (void)dealloc
{
  os_unfair_lock_lock_with_options();
  l_isCompleted = self->_l_isCompleted;
  os_unfair_lock_unlock(&self->_stateLock);
  if (!l_isCompleted)
  {
    v4 = TUITransactionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1994D4();
    }

    [(TUITransactionGroup *)self removeNotifyWhenAppliedDeferral];
  }

  v5.receiver = self;
  v5.super_class = TUITransactionGroup;
  [(TUITransactionGroup *)&v5 dealloc];
}

- (id)description
{
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_sortedTransactions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"id=%lu", [*(*(&v17 + 1) + 8 * i) identifier]);
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  options = self->_options;
  flags = self->_flags;
  v14 = [v3 componentsJoinedByString:{@", "}];
  v15 = [NSString stringWithFormat:@"<%@ %p options=%@ flags=%lu, txs=[%@]>", v11, self, options, flags, v14];

  return v15;
}

- (BOOL)containsTransaction:(id)transaction
{
  if (transaction)
  {
    return [(NSHashTable *)self->_transactions containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)appendUpdateBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    updateBlocks = self->_updateBlocks;
    v10 = blockCopy;
    if (!updateBlocks)
    {
      v6 = objc_opt_new();
      v7 = self->_updateBlocks;
      self->_updateBlocks = v6;

      updateBlocks = self->_updateBlocks;
    }

    v8 = [v10 copy];
    v9 = objc_retainBlock(v8);
    [(NSMutableArray *)updateBlocks addObject:v9];

    blockCopy = v10;
  }
}

- (void)addHandlerForUpdatesApplied:(id)applied
{
  appliedCopy = applied;
  if (appliedCopy)
  {
    handlersForUpdatesApplied = self->_handlersForUpdatesApplied;
    v10 = appliedCopy;
    if (!handlersForUpdatesApplied)
    {
      v6 = objc_opt_new();
      v7 = self->_handlersForUpdatesApplied;
      self->_handlersForUpdatesApplied = v6;

      handlersForUpdatesApplied = self->_handlersForUpdatesApplied;
    }

    v8 = [v10 copy];
    v9 = objc_retainBlock(v8);
    [(NSMutableArray *)handlersForUpdatesApplied addObject:v9];

    appliedCopy = v10;
  }
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    completionBlocks = self->_completionBlocks;
    v10 = completionCopy;
    if (!completionBlocks)
    {
      v6 = objc_opt_new();
      v7 = self->_completionBlocks;
      self->_completionBlocks = v6;

      completionBlocks = self->_completionBlocks;
    }

    v8 = [v10 copy];
    v9 = objc_retainBlock(v8);
    [(NSMutableArray *)completionBlocks addObject:v9];

    completionCopy = v10;
  }
}

- (void)computeFinalUpdatesWithBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1549C;
  v12 = sub_154AC;
  v13 = 0;
  computeUpdateQueue = self->_computeUpdateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_154B4;
  v7[3] = &unk_25DE80;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(computeUpdateQueue, v7);
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v6 = v9[5];
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }

  _Block_object_dispose(&v8, 8);
}

- (BOOL)cancelSynchronousAndSuspendUpdatesUnlessFinalized
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  computeUpdateQueue = self->_computeUpdateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_155D4;
  v5[3] = &unk_25DE80;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(computeUpdateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)waitForFinalizing
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1549C;
  v9 = sub_154AC;
  v10 = 0;
  computeUpdateQueue = self->_computeUpdateQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1573C;
  v4[3] = &unk_25DE80;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(computeUpdateQueue, v4);
  v3 = v6[5];
  if (v3)
  {
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  }

  _Block_object_dispose(&v5, 8);
}

- (void)_invokeHandlersForUpdatesApplied
{
  v3 = TUITransactionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    v16 = uniqueIdentifier;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[fid:%lu] invokeHandlersForUpdatesApplied for %@", buf, 0x16u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_handlersForUpdatesApplied;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_handlersForUpdatesApplied removeAllObjects];
}

- (void)_invokeCompletions
{
  v3 = TUITransactionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    v16 = uniqueIdentifier;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[fid:%lu] invokeCompletions for %@", buf, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  self->_l_isCompleted = 1;
  os_unfair_lock_unlock(&self->_stateLock);
  [(TUITransactionGroup *)self removeNotifyWhenAppliedDeferral];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_completionBlocks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
}

- (void)applyUpdates
{
  v3 = TUITransactionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_19954C();
  }

  v4 = TUITransactionLog();
  v5 = os_signpost_id_generate(v4);

  v6 = TUITransactionLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "TUITransaction.applyUpdates", "", buf, 2u);
  }

  v8 = dispatch_group_create();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_15DA0;
  v21[3] = &unk_25DCA0;
  v21[4] = self;
  v9 = [[_TUITransactionGroupCompletionToken alloc] initWithGroup:v8];
  v22 = v9;
  v10 = objc_retainBlock(v21);
  if ([(TUITransactionOptions *)self->_options animate])
  {
    timingProvider = [(TUITransactionOptions *)self->_options timingProvider];
    v12 = [_TUIAnimationState alloc];
    [(TUITransactionOptions *)self->_options duration];
    v13 = [(_TUIAnimationState *)v12 initWithDuration:timingProvider timingParameters:?];
    [_TUIAnimationState pushState:v13];
    v14 = [UIViewPropertyAnimator alloc];
    [(TUITransactionOptions *)self->_options duration];
    if (timingProvider)
    {
      v15 = [v14 initWithDuration:timingProvider timingParameters:?];
      [v15 addAnimations:v10];
    }

    else
    {
      v15 = [v14 initWithDuration:0 curve:v10 animations:?];
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_15EB8;
    v19[3] = &unk_25DEA8;
    v20 = v9;
    [v15 addCompletion:v19];
    [v15 startAnimation];
    +[_TUIAnimationState popState];
  }

  else
  {
    [UIView performWithoutAnimation:v10];
  }

  v16 = TUITransactionLog();
  v17 = v16;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_END, v5, "TUITransaction.applyUpdates", "", buf, 2u);
  }

  [(TUITransactionGroup *)self _invokeHandlersForUpdatesApplied];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_15EC0;
  v18[3] = &unk_25DED0;
  v18[4] = self;
  v18[5] = v5;
  TUIDispatchGroupNotifyViaRunloopIfMain(v8, &_dispatch_main_q, v18);
}

- (void)applyNonVisualUpdates
{
  v3 = TUITransactionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_199628();
  }

  v4 = dispatch_group_create();
  v5 = [[_TUITransactionGroupCompletionToken alloc] initWithGroup:v4];
  v6 = [(NSMutableArray *)self->_updateBlocks copy];
  [(NSMutableArray *)self->_updateBlocks removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11) + 16))();
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(TUITransactionGroup *)self _invokeHandlersForUpdatesApplied];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_16154;
  v12[3] = &unk_25DE30;
  v12[4] = self;
  TUIDispatchGroupNotifyViaRunloopIfMain(v4, &_dispatch_main_q, v12);
}

- (void)addNotifyWhenAppliedDeferral
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_transactions;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) addNotifyWhenAppliedDeferral];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)removeNotifyWhenAppliedDeferral
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_transactions;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) removeNotifyWhenAppliedDeferral];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end