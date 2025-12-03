@interface _BCTransaction
- (BCSceneControlling)destinationSceneController;
- (BCSceneControlling)originatingSceneController;
- (BCSceneControlling)targetSceneController;
- (BCTransactionQueue)queue;
- (BOOL)sq_isFinal;
- (BOOL)waitForCompletionWithTimeout:(double)timeout;
- (NSString)debugDescription;
- (NSString)description;
- (_BCTransaction)init;
- (id)sq_commitsToProcess;
- (id)sq_rollbacksToProcess;
- (id)sq_whenCancelledBlocks;
- (id)sq_whenCompletedBlocks;
- (void)commit:(id)commit rollback:(id)rollback;
- (void)finalize;
- (void)requireTargetSceneController:(id)controller;
- (void)setContext:(id)context;
- (void)whenCancelled:(id)cancelled;
- (void)whenCompleted:(id)completed;
@end

@implementation _BCTransaction

- (_BCTransaction)init
{
  v13.receiver = self;
  v13.super_class = _BCTransaction;
  v2 = [(_BCTransaction *)&v13 init];
  if (v2)
  {
    v3 = +[_BCTransactionContextUnintializedSentinel sharedInstance];
    context = v2->_context;
    v2->_context = v3;

    v5 = +[NSUUID UUID];
    uUIDString = [v5 UUIDString];
    guid = v2->_guid;
    v2->_guid = uUIDString;

    v8 = objc_opt_new();
    pending = v2->_pending;
    v2->_pending = v8;

    v10 = objc_opt_new();
    rollbacks = v2->_rollbacks;
    v2->_rollbacks = v10;
  }

  return v2;
}

- (void)commit:(id)commit rollback:(id)rollback
{
  commitCopy = commit;
  rollbackCopy = rollback;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_queue);
  sync = [WeakRetained sync];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_133D9C;
  v17 = &unk_2CDD30;
  v21 = &v22;
  selfCopy = self;
  v10 = commitCopy;
  v19 = v10;
  v11 = rollbackCopy;
  v20 = v11;
  dispatch_sync(sync, &v14);

  if (*(v23 + 24) == 1)
  {
    v12 = BCTransactionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(_BCTransaction *)self debugDescription:v14];
      *buf = 138543362;
      v27 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "commit transaction: %{public}@", buf, 0xCu);
    }

    [WeakRetained _processTransaction:self];
  }

  _Block_object_dispose(&v22, 8);
}

- (void)whenCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (cancelledCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_queue);
    sync = [WeakRetained sync];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_133FBC;
    v12 = &unk_2C8488;
    selfCopy = self;
    v14 = cancelledCopy;
    dispatch_sync(sync, &v9);

    v7 = BCTransactionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(_BCTransaction *)self debugDescription:v9];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Adding whenCancelled block to transaction: %{public}@", buf, 0xCu);
    }

    [WeakRetained _processTransaction:self];
  }
}

- (void)whenCompleted:(id)completed
{
  completedCopy = completed;
  if (completedCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_queue);
    sync = [WeakRetained sync];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1341B4;
    v12 = &unk_2C8488;
    selfCopy = self;
    v14 = completedCopy;
    dispatch_sync(sync, &v9);

    v7 = BCTransactionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(_BCTransaction *)self debugDescription:v9];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Adding whenCompleted block to transaction: %{public}@", buf, 0xCu);
    }

    [WeakRetained _processTransaction:self];
  }
}

- (void)finalize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_queue);
  sync = [WeakRetained sync];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_134450;
  v7[3] = &unk_2CA7A8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(sync, v7);

  if (*(v9 + 24) == 1)
  {
    v5 = BCTransactionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(_BCTransaction *)self debugDescription];
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Finalized transaction: %{public}@", buf, 0xCu);
    }

    [WeakRetained _processTransaction:self];
  }

  _Block_object_dispose(&v8, 8);
}

- (id)sq_commitsToProcess
{
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_pending;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        commit = [v9 commit];

        if (commit)
        {
          commit2 = [v9 commit];
          v12 = objc_retainBlock(commit2);
          [v3 addObject:v12];
        }

        rollback = [v9 rollback];

        if (rollback)
        {
          rollbacks = [(_BCTransaction *)self rollbacks];
          rollback2 = [v9 rollback];
          v16 = objc_retainBlock(rollback2);
          [rollbacks addObject:v16];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_pending removeAllObjects];
  if (self->_whenCompletedBlocks && (self->_flags & 1) != 0)
  {
    [v3 addObjectsFromArray:?];
    [(NSMutableArray *)self->_whenCompletedBlocks removeAllObjects];
  }

  return v3;
}

- (id)sq_rollbacksToProcess
{
  rollbacks = [(_BCTransaction *)self rollbacks];
  v4 = [rollbacks copy];
  bu_reversedArray = [v4 bu_reversedArray];

  rollbacks2 = [(_BCTransaction *)self rollbacks];
  [rollbacks2 removeAllObjects];

  return bu_reversedArray;
}

- (BOOL)sq_isFinal
{
  if ((self->_flags & 1) == 0)
  {
    return 0;
  }

  pending = [(_BCTransaction *)self pending];
  if ([pending count])
  {
    v2 = 0;
  }

  else
  {
    whenCompletedBlocks = [(_BCTransaction *)self whenCompletedBlocks];
    v2 = [whenCompletedBlocks count] == 0;
  }

  return v2;
}

- (id)sq_whenCancelledBlocks
{
  if ((self->_flags & 2) != 0)
  {
    v2 = [(NSMutableArray *)self->_whenCancelledBlocks copy];
    [(NSMutableArray *)self->_whenCancelledBlocks removeAllObjects];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)sq_whenCompletedBlocks
{
  if ((self->_flags & 1) != 0 && (-[_BCTransaction pending](self, "pending"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, !v4))
  {
    v5 = [(NSMutableArray *)self->_whenCompletedBlocks copy];
    [(NSMutableArray *)self->_whenCompletedBlocks removeAllObjects];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)waitForCompletionWithTimeout:(double)timeout
{
  v5 = +[NSThread isMainThread];
  if ((v5 & 1) == 0)
  {
    sub_1EAE70(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if (timeout <= 0.0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_queue);
  v14 = 0;
  v15 = CFAbsoluteTimeGetCurrent() + timeout;
  do
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    sync = [WeakRetained sync];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_134A54;
    v22[3] = &unk_2CA7A8;
    v22[4] = self;
    v22[5] = &v23;
    dispatch_sync(sync, v22);

    if (v24[3])
    {
      v17 = 0;
      v14 = 1;
      goto LABEL_14;
    }

    v18 = v15 - CFAbsoluteTimeGetCurrent();
    if (v18 <= 0.0)
    {
      goto LABEL_12;
    }

    if (CFRunLoopRunInMode(kCFRunLoopDefaultMode, v18, 1u) == kCFRunLoopRunTimedOut)
    {
      v19 = BCTransactionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [(_BCTransaction *)self debugDescription];
        sub_1EAEAC(v20, buf, &v28, v19);
      }

LABEL_12:
      v17 = 0;
      goto LABEL_14;
    }

    v17 = 1;
LABEL_14:
    _Block_object_dispose(&v23, 8);
  }

  while ((v17 & 1) != 0);

  return v14;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  p_context = &self->_context;
  if (self->_context != contextCopy)
  {
    objc_storeStrong(p_context, context);
    WeakRetained = objc_loadWeakRetained(&self->_queue);
    [WeakRetained _cancelTransactionsConflictedByTransaction:self];

    v8 = objc_loadWeakRetained(&self->_queue);
    [v8 _process];
  }

  _objc_release_x1(p_context);
}

- (BCSceneControlling)targetSceneController
{
  targetSceneDescriptor = [(_BCTransaction *)self targetSceneDescriptor];
  v3 = BUProtocolCast();

  return v3;
}

- (void)requireTargetSceneController:(id)controller
{
  controllerCopy = controller;
  targetSceneController = [(_BCTransaction *)self targetSceneController];

  if (!targetSceneController)
  {
    targetSceneDescriptor = [(_BCTransaction *)self targetSceneDescriptor];
    v6 = BUProtocolCast();

    if (v6)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_134D14;
      v10[3] = &unk_2CDD58;
      v10[4] = self;
      v11 = controllerCopy;
      [v6 provideSceneController:v10];

      goto LABEL_7;
    }

    v9 = objc_retainBlock(controllerCopy);
    targetSceneController2 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }

    goto LABEL_4;
  }

  v6 = objc_retainBlock(controllerCopy);
  if (v6)
  {
    targetSceneController2 = [(_BCTransaction *)self targetSceneController];
    (v6)[2](v6, targetSceneController2);
LABEL_4:
  }

LABEL_7:
}

- (BCSceneControlling)destinationSceneController
{
  targetSceneController = [(_BCTransaction *)self targetSceneController];
  v4 = targetSceneController;
  if (targetSceneController)
  {
    originatingSceneController = targetSceneController;
  }

  else
  {
    originatingSceneController = [(_BCTransaction *)self originatingSceneController];
  }

  v6 = originatingSceneController;

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  guid = [(_BCTransaction *)self guid];
  name = [(_BCTransaction *)self name];
  v6 = [NSString stringWithFormat:@"<%@: %p guid:%@ name:%@>", v3, self, guid, name];

  return v6;
}

- (NSString)debugDescription
{
  guid = [(_BCTransaction *)self guid];
  name = [(_BCTransaction *)self name];
  v5 = [NSString stringWithFormat:@"tx:%@, name:%@", guid, name];

  return v5;
}

- (BCSceneControlling)originatingSceneController
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingSceneController);

  return WeakRetained;
}

- (BCTransactionQueue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

@end