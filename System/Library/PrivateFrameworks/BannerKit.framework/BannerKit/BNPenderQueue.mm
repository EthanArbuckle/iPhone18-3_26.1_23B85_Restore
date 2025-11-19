@interface BNPenderQueue
- (BOOL)isSuspended;
- (BOOL)setSuspended:(BOOL)a3 forReason:(id)a4;
- (BOOL)setSuspended:(BOOL)a3 forRequesterWithIdentifier:(id)a4 reason:(id)a5;
- (NSSet)activeSuspensionReasons;
- (id)_penderForRequesterWithIdentifier:(id)a3 creatingIfNecessary:(BOOL)a4;
- (id)peekPresentable;
- (id)pullPresentablesWithIdentification:(id)a3;
- (void)enqueuePresentable:(id)a3 withOptions:(unint64_t)a4 userInfo:(id)a5;
- (void)presentableQueue:(id)a3 didDequeuePresentableWithPendingIdentifier:(id)a4;
@end

@implementation BNPenderQueue

- (BOOL)isSuspended
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(BNSuspensionController *)self->_suspensionController isSuspended])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = self;
    objc_sync_enter(v4);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4->_penderQueue;
    v3 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) pender];
          v9 = [v8 isSuspended];

          if ((v9 & 1) == 0)
          {
            LOBYTE(v3) = 0;
            goto LABEL_13;
          }
        }

        v3 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }

      LOBYTE(v3) = 1;
    }

LABEL_13:

    objc_sync_exit(v4);
  }

  return v3;
}

- (id)peekPresentable
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2->_penderQueue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) pender];
        if (([v7 isSuspended] & 1) == 0)
        {
          v4 = [v7 peekPresentable];

          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v2);

  return v4;
}

- (BOOL)setSuspended:(BOOL)a3 forRequesterWithIdentifier:(id)a4 reason:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 length];
  LOBYTE(v11) = 0;
  if (v9 && v10)
  {
    v12 = [(BNPenderQueue *)self _penderForRequesterWithIdentifier:v8 creatingIfNecessary:1];
    v11 = [v12 setSuspended:v6 forReason:v9];
    if (v11)
    {
      v13 = self;
      objc_sync_enter(v13);
      suspendedPenders = v13->_suspendedPenders;
      if (v6)
      {
        if (!suspendedPenders)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v16 = v13->_suspendedPenders;
          v13->_suspendedPenders = v15;

          suspendedPenders = v13->_suspendedPenders;
        }

        [(NSMutableSet *)suspendedPenders addObject:v12];
      }

      else
      {
        [(NSMutableSet *)suspendedPenders removeObject:v12];
      }

      objc_sync_exit(v13);
    }
  }

  return v11;
}

- (void)enqueuePresentable:(id)a3 withOptions:(unint64_t)a4 userInfo:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 requesterIdentifier];
    v12 = [(BNPenderQueue *)self _penderForRequesterWithIdentifier:v11 creatingIfNecessary:1];

    if (v12)
    {
      v13 = self;
      objc_sync_enter(v13);
      v14 = [[BNPenderQueueEntry alloc] initWithPender:v12];
      penderQueue = v13->_penderQueue;
      if (!penderQueue)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v17 = v13->_penderQueue;
        v13->_penderQueue = v16;

        penderQueue = v13->_penderQueue;
      }

      [(NSMutableArray *)penderQueue addObject:v14];
      if (v10)
      {
        v18 = [v10 mutableCopy];
        v19 = [(BNPenderQueueEntry *)v14 entryIdentifier];
        [v18 setObject:v19 forKey:@"BNPresentableQueueUserInfoUniquePendingIdentifierKey"];
      }

      else
      {
        v22 = @"BNPresentableQueueUserInfoUniquePendingIdentifierKey";
        v21 = [(BNPenderQueueEntry *)v14 entryIdentifier];
        v23[0] = v21;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      }

      [v12 enqueuePresentable:v8 withOptions:a4 userInfo:v18];

      objc_sync_exit(v13);
    }

    else
    {
      v20 = BNLogPending;
      if (os_log_type_enabled(BNLogPending, OS_LOG_TYPE_ERROR))
      {
        [BNPenderQueue enqueuePresentable:v20 withOptions:v8 userInfo:?];
      }

      v18 = v10;
    }
  }

  else
  {
    v18 = v9;
  }
}

- (id)pullPresentablesWithIdentification:(id)a3
{
  v4 = a3;
  v5 = [v4 requesterIdentifier];
  v6 = [(BNPenderQueue *)self _penderForRequesterWithIdentifier:v5 creatingIfNecessary:0];
  v7 = [v6 pullPresentablesWithIdentification:v4];

  return v7;
}

- (NSSet)activeSuspensionReasons
{
  v20 = *MEMORY[0x1E69E9840];
  if (![(BNPenderQueue *)self isSuspended])
  {
    goto LABEL_15;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([(BNSuspensionController *)self->_suspensionController isSuspended])
  {
    v5 = [(BNSuspensionController *)self->_suspensionController activeSuspensionReasons];
    [v4 unionSet:v5];
  }

  else
  {
    v6 = self;
    objc_sync_enter(v6);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6->_penderQueue;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v15 + 1) + 8 * v10) pender];
          if (([v11 isSuspended] & 1) == 0)
          {
            v13 = [MEMORY[0x1E696AAA8] currentHandler];
            [v13 handleFailureInMethod:a2 object:v6 file:@"BNPenderQueue.m" lineNumber:126 description:{@"We claim to be suspended, but the suspension controller isn't suspended, and a queued pender isn't either"}];
          }

          v12 = [v11 activeSuspensionReasons];
          [v4 unionSet:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    objc_sync_exit(v6);
  }

  if (!v4)
  {
LABEL_15:
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v4;
}

- (BOOL)setSuspended:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6 && v4 && !self->_suspensionController)
  {
    v7 = objc_alloc_init(BNSuspensionController);
    suspensionController = self->_suspensionController;
    self->_suspensionController = v7;

    [(BNSuspensionController *)self->_suspensionController setIdentifier:self->_penderIdentifier];
  }

  v9 = [(BNSuspensionController *)self->_suspensionController setSuspended:v4 forReason:v6];

  return v9;
}

- (void)presentableQueue:(id)a3 didDequeuePresentableWithPendingIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  penderQueue = v9->_penderQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__BNPenderQueue_presentableQueue_didDequeuePresentableWithPendingIdentifier___block_invoke;
  v13[3] = &unk_1E81E5048;
  v11 = v8;
  v14 = v11;
  v12 = v7;
  v15 = v12;
  v16 = v9;
  v17 = &v19;
  v18 = a2;
  [(NSMutableArray *)penderQueue enumerateObjectsUsingBlock:v13];
  [(NSMutableArray *)v9->_penderQueue removeObjectAtIndex:v20[3]];

  _Block_object_dispose(&v19, 8);
  objc_sync_exit(v9);
}

void __77__BNPenderQueue_presentableQueue_didDequeuePresentableWithPendingIdentifier___block_invoke(uint64_t *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 entryIdentifier];
  v8 = [v7 isEqual:a1[4]];

  v9 = v12;
  if (v8)
  {
    v10 = [v12 pender];
    v11 = a1[5];

    if (v10 != v11)
    {
      __77__BNPenderQueue_presentableQueue_didDequeuePresentableWithPendingIdentifier___block_invoke_cold_1(a1, a1 + 4, a1 + 5, v12);
    }

    *(*(a1[7] + 8) + 24) = a3;
    *a4 = 1;
    v9 = v12;
  }
}

- (id)_penderForRequesterWithIdentifier:(id)a3 creatingIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    v7 = self;
    objc_sync_enter(v7);
    penderQueue = v7->_penderQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__BNPenderQueue__penderForRequesterWithIdentifier_creatingIfNecessary___block_invoke;
    v21[3] = &unk_1E81E5070;
    v9 = v6;
    v22 = v9;
    v10 = [(NSMutableArray *)penderQueue bs_firstObjectPassingTest:v21];
    v11 = [v10 pender];

    if (!v11)
    {
      v12 = [(NSMutableSet *)v7->_suspendedPenders allObjects];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __71__BNPenderQueue__penderForRequesterWithIdentifier_creatingIfNecessary___block_invoke_2;
      v19 = &unk_1E81E5098;
      v13 = v9;
      v20 = v13;
      v11 = [v12 bs_firstObjectPassingTest:&v16];

      if (!v11 && v4)
      {
        v11 = objc_alloc_init(BNPresentableQueue);
        [(BNPresentableQueue *)v11 setPenderIdentifier:v13, v16, v17, v18, v19];
        [(BNPresentableQueue *)v11 setDelegate:v7];
      }
    }

    objc_sync_exit(v7);
  }

  else
  {
    v14 = BNLogPending;
    if (os_log_type_enabled(BNLogPending, OS_LOG_TYPE_ERROR))
    {
      [BNPenderQueue _penderForRequesterWithIdentifier:v14 creatingIfNecessary:?];
    }

    v11 = 0;
  }

  return v11;
}

uint64_t __71__BNPenderQueue__penderForRequesterWithIdentifier_creatingIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pender];
  v4 = [v3 penderIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __71__BNPenderQueue__penderForRequesterWithIdentifier_creatingIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 penderIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)enqueuePresentable:(uint64_t)a1 withOptions:(void *)a2 userInfo:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = BNEffectivePresentableDescription(a3);
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1C42DC000, v5, OS_LOG_TYPE_ERROR, "(%{public}@) Failed to obtain pender for presentable: %{public}@", &v7, 0x16u);
}

void __77__BNPenderQueue_presentableQueue_didDequeuePresentableWithPendingIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = *a3;
  v12 = [a4 pender];
  [v13 handleFailureInMethod:v8 object:v9 file:@"BNPenderQueue.m" lineNumber:152 description:{@"PendingID matches, but pender does not: pendingID: %@; expected pender: %@; found pender: %@", v10, v11, v12}];
}

- (void)_penderForRequesterWithIdentifier:(uint64_t)a1 creatingIfNecessary:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1C42DC000, a2, OS_LOG_TYPE_ERROR, "(%{public}@) Pender request missing requesterID", &v3, 0xCu);
}

@end