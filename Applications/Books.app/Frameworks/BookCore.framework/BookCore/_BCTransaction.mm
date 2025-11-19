@interface _BCTransaction
- (BCSceneControlling)destinationSceneController;
- (BCSceneControlling)originatingSceneController;
- (BCSceneControlling)targetSceneController;
- (BCTransactionQueue)queue;
- (BOOL)sq_isFinal;
- (BOOL)waitForCompletionWithTimeout:(double)a3;
- (NSString)debugDescription;
- (NSString)description;
- (_BCTransaction)init;
- (id)sq_commitsToProcess;
- (id)sq_rollbacksToProcess;
- (id)sq_whenCancelledBlocks;
- (id)sq_whenCompletedBlocks;
- (void)commit:(id)a3 rollback:(id)a4;
- (void)finalize;
- (void)requireTargetSceneController:(id)a3;
- (void)setContext:(id)a3;
- (void)whenCancelled:(id)a3;
- (void)whenCompleted:(id)a3;
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
    v6 = [v5 UUIDString];
    guid = v2->_guid;
    v2->_guid = v6;

    v8 = objc_opt_new();
    pending = v2->_pending;
    v2->_pending = v8;

    v10 = objc_opt_new();
    rollbacks = v2->_rollbacks;
    v2->_rollbacks = v10;
  }

  return v2;
}

- (void)commit:(id)a3 rollback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_queue);
  v9 = [WeakRetained sync];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_133D9C;
  v17 = &unk_2CDD30;
  v21 = &v22;
  v18 = self;
  v10 = v6;
  v19 = v10;
  v11 = v7;
  v20 = v11;
  dispatch_sync(v9, &v14);

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

- (void)whenCancelled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_queue);
    v6 = [WeakRetained sync];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_133FBC;
    v12 = &unk_2C8488;
    v13 = self;
    v14 = v4;
    dispatch_sync(v6, &v9);

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

- (void)whenCompleted:(id)a3
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_queue);
    v6 = [WeakRetained sync];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1341B4;
    v12 = &unk_2C8488;
    v13 = self;
    v14 = v4;
    dispatch_sync(v6, &v9);

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
  v4 = [WeakRetained sync];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_134450;
  v7[3] = &unk_2CA7A8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

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
        v10 = [v9 commit];

        if (v10)
        {
          v11 = [v9 commit];
          v12 = objc_retainBlock(v11);
          [v3 addObject:v12];
        }

        v13 = [v9 rollback];

        if (v13)
        {
          v14 = [(_BCTransaction *)self rollbacks];
          v15 = [v9 rollback];
          v16 = objc_retainBlock(v15);
          [v14 addObject:v16];
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
  v3 = [(_BCTransaction *)self rollbacks];
  v4 = [v3 copy];
  v5 = [v4 bu_reversedArray];

  v6 = [(_BCTransaction *)self rollbacks];
  [v6 removeAllObjects];

  return v5;
}

- (BOOL)sq_isFinal
{
  if ((self->_flags & 1) == 0)
  {
    return 0;
  }

  v4 = [(_BCTransaction *)self pending];
  if ([v4 count])
  {
    v2 = 0;
  }

  else
  {
    v5 = [(_BCTransaction *)self whenCompletedBlocks];
    v2 = [v5 count] == 0;
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

- (BOOL)waitForCompletionWithTimeout:(double)a3
{
  v5 = +[NSThread isMainThread];
  if ((v5 & 1) == 0)
  {
    sub_1EAE70(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if (a3 <= 0.0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_queue);
  v14 = 0;
  v15 = CFAbsoluteTimeGetCurrent() + a3;
  do
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v16 = [WeakRetained sync];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_134A54;
    v22[3] = &unk_2CA7A8;
    v22[4] = self;
    v22[5] = &v23;
    dispatch_sync(v16, v22);

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

- (void)setContext:(id)a3
{
  v5 = a3;
  p_context = &self->_context;
  if (self->_context != v5)
  {
    objc_storeStrong(p_context, a3);
    WeakRetained = objc_loadWeakRetained(&self->_queue);
    [WeakRetained _cancelTransactionsConflictedByTransaction:self];

    v8 = objc_loadWeakRetained(&self->_queue);
    [v8 _process];
  }

  _objc_release_x1(p_context);
}

- (BCSceneControlling)targetSceneController
{
  v2 = [(_BCTransaction *)self targetSceneDescriptor];
  v3 = BUProtocolCast();

  return v3;
}

- (void)requireTargetSceneController:(id)a3
{
  v4 = a3;
  v5 = [(_BCTransaction *)self targetSceneController];

  if (!v5)
  {
    v8 = [(_BCTransaction *)self targetSceneDescriptor];
    v6 = BUProtocolCast();

    if (v6)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_134D14;
      v10[3] = &unk_2CDD58;
      v10[4] = self;
      v11 = v4;
      [v6 provideSceneController:v10];

      goto LABEL_7;
    }

    v9 = objc_retainBlock(v4);
    v7 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }

    goto LABEL_4;
  }

  v6 = objc_retainBlock(v4);
  if (v6)
  {
    v7 = [(_BCTransaction *)self targetSceneController];
    (v6)[2](v6, v7);
LABEL_4:
  }

LABEL_7:
}

- (BCSceneControlling)destinationSceneController
{
  v3 = [(_BCTransaction *)self targetSceneController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_BCTransaction *)self originatingSceneController];
  }

  v6 = v5;

  return v6;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(_BCTransaction *)self guid];
  v5 = [(_BCTransaction *)self name];
  v6 = [NSString stringWithFormat:@"<%@: %p guid:%@ name:%@>", v3, self, v4, v5];

  return v6;
}

- (NSString)debugDescription
{
  v3 = [(_BCTransaction *)self guid];
  v4 = [(_BCTransaction *)self name];
  v5 = [NSString stringWithFormat:@"tx:%@, name:%@", v3, v4];

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