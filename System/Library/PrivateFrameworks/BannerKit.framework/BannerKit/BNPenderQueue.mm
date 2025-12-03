@interface BNPenderQueue
- (BOOL)isSuspended;
- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason;
- (BOOL)setSuspended:(BOOL)suspended forRequesterWithIdentifier:(id)identifier reason:(id)reason;
- (NSSet)activeSuspensionReasons;
- (id)_penderForRequesterWithIdentifier:(id)identifier creatingIfNecessary:(BOOL)necessary;
- (id)peekPresentable;
- (id)pullPresentablesWithIdentification:(id)identification;
- (void)enqueuePresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info;
- (void)presentableQueue:(id)queue didDequeuePresentableWithPendingIdentifier:(id)identifier;
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = selfCopy->_penderQueue;
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

          pender = [*(*(&v11 + 1) + 8 * i) pender];
          isSuspended = [pender isSuspended];

          if ((isSuspended & 1) == 0)
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

    objc_sync_exit(selfCopy);
  }

  return v3;
}

- (id)peekPresentable
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = selfCopy->_penderQueue;
  peekPresentable = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (peekPresentable)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != peekPresentable; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        pender = [*(*(&v9 + 1) + 8 * i) pender];
        if (([pender isSuspended] & 1) == 0)
        {
          peekPresentable = [pender peekPresentable];

          goto LABEL_11;
        }
      }

      peekPresentable = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (peekPresentable)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);

  return peekPresentable;
}

- (BOOL)setSuspended:(BOOL)suspended forRequesterWithIdentifier:(id)identifier reason:(id)reason
{
  suspendedCopy = suspended;
  identifierCopy = identifier;
  reasonCopy = reason;
  v10 = [identifierCopy length];
  LOBYTE(v11) = 0;
  if (reasonCopy && v10)
  {
    v12 = [(BNPenderQueue *)self _penderForRequesterWithIdentifier:identifierCopy creatingIfNecessary:1];
    v11 = [v12 setSuspended:suspendedCopy forReason:reasonCopy];
    if (v11)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      suspendedPenders = selfCopy->_suspendedPenders;
      if (suspendedCopy)
      {
        if (!suspendedPenders)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v16 = selfCopy->_suspendedPenders;
          selfCopy->_suspendedPenders = v15;

          suspendedPenders = selfCopy->_suspendedPenders;
        }

        [(NSMutableSet *)suspendedPenders addObject:v12];
      }

      else
      {
        [(NSMutableSet *)suspendedPenders removeObject:v12];
      }

      objc_sync_exit(selfCopy);
    }
  }

  return v11;
}

- (void)enqueuePresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info
{
  v23[1] = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  infoCopy = info;
  v10 = infoCopy;
  if (presentableCopy)
  {
    requesterIdentifier = [presentableCopy requesterIdentifier];
    v12 = [(BNPenderQueue *)self _penderForRequesterWithIdentifier:requesterIdentifier creatingIfNecessary:1];

    if (v12)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v14 = [[BNPenderQueueEntry alloc] initWithPender:v12];
      penderQueue = selfCopy->_penderQueue;
      if (!penderQueue)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v17 = selfCopy->_penderQueue;
        selfCopy->_penderQueue = v16;

        penderQueue = selfCopy->_penderQueue;
      }

      [(NSMutableArray *)penderQueue addObject:v14];
      if (v10)
      {
        v18 = [v10 mutableCopy];
        entryIdentifier = [(BNPenderQueueEntry *)v14 entryIdentifier];
        [v18 setObject:entryIdentifier forKey:@"BNPresentableQueueUserInfoUniquePendingIdentifierKey"];
      }

      else
      {
        v22 = @"BNPresentableQueueUserInfoUniquePendingIdentifierKey";
        entryIdentifier2 = [(BNPenderQueueEntry *)v14 entryIdentifier];
        v23[0] = entryIdentifier2;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      }

      [v12 enqueuePresentable:presentableCopy withOptions:options userInfo:v18];

      objc_sync_exit(selfCopy);
    }

    else
    {
      v20 = BNLogPending;
      if (os_log_type_enabled(BNLogPending, OS_LOG_TYPE_ERROR))
      {
        [BNPenderQueue enqueuePresentable:v20 withOptions:presentableCopy userInfo:?];
      }

      v18 = v10;
    }
  }

  else
  {
    v18 = infoCopy;
  }
}

- (id)pullPresentablesWithIdentification:(id)identification
{
  identificationCopy = identification;
  requesterIdentifier = [identificationCopy requesterIdentifier];
  v6 = [(BNPenderQueue *)self _penderForRequesterWithIdentifier:requesterIdentifier creatingIfNecessary:0];
  v7 = [v6 pullPresentablesWithIdentification:identificationCopy];

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
    activeSuspensionReasons = [(BNSuspensionController *)self->_suspensionController activeSuspensionReasons];
    [v4 unionSet:activeSuspensionReasons];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = selfCopy->_penderQueue;
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

          pender = [*(*(&v15 + 1) + 8 * v10) pender];
          if (([pender isSuspended] & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"BNPenderQueue.m" lineNumber:126 description:{@"We claim to be suspended, but the suspension controller isn't suspended, and a queued pender isn't either"}];
          }

          activeSuspensionReasons2 = [pender activeSuspensionReasons];
          [v4 unionSet:activeSuspensionReasons2];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    objc_sync_exit(selfCopy);
  }

  if (!v4)
  {
LABEL_15:
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v4;
}

- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason
{
  suspendedCopy = suspended;
  reasonCopy = reason;
  if (reasonCopy && suspendedCopy && !self->_suspensionController)
  {
    v7 = objc_alloc_init(BNSuspensionController);
    suspensionController = self->_suspensionController;
    self->_suspensionController = v7;

    [(BNSuspensionController *)self->_suspensionController setIdentifier:self->_penderIdentifier];
  }

  v9 = [(BNSuspensionController *)self->_suspensionController setSuspended:suspendedCopy forReason:reasonCopy];

  return v9;
}

- (void)presentableQueue:(id)queue didDequeuePresentableWithPendingIdentifier:(id)identifier
{
  queueCopy = queue;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  penderQueue = selfCopy->_penderQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__BNPenderQueue_presentableQueue_didDequeuePresentableWithPendingIdentifier___block_invoke;
  v13[3] = &unk_1E81E5048;
  v11 = identifierCopy;
  v14 = v11;
  v12 = queueCopy;
  v15 = v12;
  v16 = selfCopy;
  v17 = &v19;
  v18 = a2;
  [(NSMutableArray *)penderQueue enumerateObjectsUsingBlock:v13];
  [(NSMutableArray *)selfCopy->_penderQueue removeObjectAtIndex:v20[3]];

  _Block_object_dispose(&v19, 8);
  objc_sync_exit(selfCopy);
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

- (id)_penderForRequesterWithIdentifier:(id)identifier creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    penderQueue = selfCopy->_penderQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__BNPenderQueue__penderForRequesterWithIdentifier_creatingIfNecessary___block_invoke;
    v21[3] = &unk_1E81E5070;
    v9 = identifierCopy;
    v22 = v9;
    v10 = [(NSMutableArray *)penderQueue bs_firstObjectPassingTest:v21];
    pender = [v10 pender];

    if (!pender)
    {
      allObjects = [(NSMutableSet *)selfCopy->_suspendedPenders allObjects];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __71__BNPenderQueue__penderForRequesterWithIdentifier_creatingIfNecessary___block_invoke_2;
      v19 = &unk_1E81E5098;
      v13 = v9;
      v20 = v13;
      pender = [allObjects bs_firstObjectPassingTest:&v16];

      if (!pender && necessaryCopy)
      {
        pender = objc_alloc_init(BNPresentableQueue);
        [(BNPresentableQueue *)pender setPenderIdentifier:v13, v16, v17, v18, v19];
        [(BNPresentableQueue *)pender setDelegate:selfCopy];
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v14 = BNLogPending;
    if (os_log_type_enabled(BNLogPending, OS_LOG_TYPE_ERROR))
    {
      [BNPenderQueue _penderForRequesterWithIdentifier:v14 creatingIfNecessary:?];
    }

    pender = 0;
  }

  return pender;
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