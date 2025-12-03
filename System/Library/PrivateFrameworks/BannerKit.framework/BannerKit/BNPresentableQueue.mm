@interface BNPresentableQueue
+ (void)initialize;
- (BNPresentableQueueDelegate)delegate;
- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason;
- (id)_pullPresentablesPassingTest:(id)test;
- (id)peekPresentable;
- (id)pullPresentablesWithIdentification:(id)identification;
- (void)enqueuePresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info;
@end

@implementation BNPresentableQueue

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    BNRegisterBannerKitLogging();
  }
}

- (void)enqueuePresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  infoCopy = info;
  if (presentableCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_postingContextQueue)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      postingContextQueue = selfCopy->_postingContextQueue;
      selfCopy->_postingContextQueue = v11;
    }

    v13 = [[BNPostingContext alloc] initWithPresentable:presentableCopy presentationOptions:options userInfo:infoCopy];
    v14 = BNLogPending;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      penderIdentifier = selfCopy->_penderIdentifier;
      pendingIdentifier = [(BNPostingContext *)v13 pendingIdentifier];
      v17 = BNEffectivePresentableDescription(presentableCopy);
      v21 = 138543874;
      v22 = penderIdentifier;
      v23 = 2114;
      v24 = pendingIdentifier;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&dword_1C42DC000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Pending presentable: (%{public}@) %{public}@", &v21, 0x20u);
    }

    [(NSMutableArray *)selfCopy->_postingContextQueue addObject:v13];
    v18 = BNLogPending;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = selfCopy->_penderIdentifier;
      v20 = [(NSMutableArray *)selfCopy->_postingContextQueue bs_map:&__block_literal_global_1];
      v21 = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = v20;
      _os_log_impl(&dword_1C42DC000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@) Currently pended presentables: %{public}@", &v21, 0x16u);
    }

    objc_sync_exit(selfCopy);
  }
}

id __62__BNPresentableQueue_enqueuePresentable_withOptions_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v3 pendingIdentifier];
  v5 = [v3 presentable];

  v6 = BNEffectivePresentableDescription(v5);
  v7 = [v2 stringWithFormat:@"(%@) %@", v4, v6];

  return v7;
}

- (id)peekPresentable
{
  v36 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  firstObject = [(NSMutableArray *)selfCopy->_postingContextQueue firstObject];
  if (firstObject)
  {
    v5 = [(NSMapTable *)selfCopy->_postingContextsToDequeuePromises objectForKey:firstObject];
    if (v5)
    {
      v6 = BNLogPending;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        penderIdentifier = selfCopy->_penderIdentifier;
        pendingIdentifier = [firstObject pendingIdentifier];
        presentable = [firstObject presentable];
        v10 = BNEffectivePresentableDescription(presentable);
        *buf = 138543874;
        v31 = penderIdentifier;
        v32 = 2114;
        v33 = pendingIdentifier;
        v34 = 2114;
        v35 = v10;
        _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) Have existing dequeue promise for presentable: (%{public}@) %{public}@", buf, 0x20u);
      }
    }

    else
    {
      objc_initWeak(&location, selfCopy);
      v13 = [BNPendingDequeuePromise alloc];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __37__BNPresentableQueue_peekPresentable__block_invoke;
      v26 = &unk_1E81E4708;
      objc_copyWeak(v28, &location);
      v28[1] = a2;
      v27 = selfCopy;
      v5 = [(BNPendingDequeuePromise *)v13 initWithPostingContext:firstObject dequeueBlock:&v23];
      if (!selfCopy->_postingContextsToDequeuePromises)
      {
        v14 = objc_alloc(MEMORY[0x1E696AD18]);
        v15 = [v14 initWithKeyOptions:517 valueOptions:0 capacity:{0, v23, v24, v25, v26}];
        postingContextsToDequeuePromises = selfCopy->_postingContextsToDequeuePromises;
        selfCopy->_postingContextsToDequeuePromises = v15;
      }

      v17 = BNLogPending;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = selfCopy->_penderIdentifier;
        pendingIdentifier2 = [firstObject pendingIdentifier];
        presentable2 = [firstObject presentable];
        v21 = BNEffectivePresentableDescription(presentable2);
        *buf = 138543874;
        v31 = v18;
        v32 = 2114;
        v33 = pendingIdentifier2;
        v34 = 2114;
        v35 = v21;
        _os_log_impl(&dword_1C42DC000, v17, OS_LOG_TYPE_DEFAULT, "(%{public}@) Adding new dequeue promise for presentable: (%{public}@) %{public}@", buf, 0x20u);
      }

      [(NSMapTable *)selfCopy->_postingContextsToDequeuePromises setObject:v5 forKey:firstObject];
      objc_destroyWeak(v28);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v11 = BNLogPending;
    if (os_log_type_enabled(BNLogPending, OS_LOG_TYPE_DEFAULT))
    {
      v12 = selfCopy->_penderIdentifier;
      *buf = 138543362;
      v31 = v12;
      _os_log_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) No pending presentables", buf, 0xCu);
    }

    v5 = 0;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

void __37__BNPresentableQueue_peekPresentable__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained[2] objectForKey:v3], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [*(v5 + 8) firstObject];

    if (v7 != v3)
    {
      __37__BNPresentableQueue_peekPresentable__block_invoke_cold_1(a1, v5, (v5 + 8), v3);
    }

    v8 = BNLogPending;
    if (os_log_type_enabled(BNLogPending, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v5 + 32);
      v10 = v8;
      v11 = [v3 pendingIdentifier];
      v12 = [v3 presentable];
      v13 = BNEffectivePresentableDescription(v12);
      v22 = 138543874;
      v23 = v9;
      v24 = 2114;
      v25 = v11;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_1C42DC000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@) Dequeueing presentable: (%{public}@) %{public}@", &v22, 0x20u);
    }

    [*(v5 + 8) removeObjectAtIndex:0];
    [*(v5 + 16) removeObjectForKey:v3];
    v14 = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v3 pendingIdentifier];
      [v14 presentableQueue:v5 didDequeuePresentableWithPendingIdentifier:v15];
    }
  }

  else
  {
    v16 = BNLogPending;
    if (os_log_type_enabled(BNLogPending, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v5 + 32);
      v18 = v16;
      v19 = [v3 pendingIdentifier];
      v20 = [v3 presentable];
      v21 = BNEffectivePresentableDescription(v20);
      v22 = 138543874;
      v23 = v17;
      v24 = 2114;
      v25 = v19;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_1C42DC000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@) Not dequeueing presentable because promise for posting context already removed: (%{public}@) %{public}@", &v22, 0x20u);
    }

    [*(v5 + 8) removeObject:v3];
  }
}

- (id)_pullPresentablesPassingTest:(id)test
{
  v45 = *MEMORY[0x1E69E9840];
  testCopy = test;
  if (testCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = [(NSMutableArray *)selfCopy->_postingContextQueue copy];
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v44 count:16];
    v30 = WeakRetained;
    v10 = 0;
    if (v8)
    {
      v32 = *v35;
      *&v9 = 138543874;
      v29 = v9;
      obj = v7;
      do
      {
        v33 = v8;
        for (i = 0; i != v33; ++i)
        {
          if (*v35 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          presentable = [v12 presentable];
          if (testCopy[2](testCopy, presentable))
          {
            v14 = BNLogPending;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = selfCopy;
              penderIdentifier = selfCopy->_penderIdentifier;
              pendingIdentifier = [v12 pendingIdentifier];
              v18 = BNEffectivePresentableDescription(presentable);
              *buf = v29;
              v39 = penderIdentifier;
              v40 = 2114;
              v41 = pendingIdentifier;
              v42 = 2114;
              v43 = v18;
              _os_log_impl(&dword_1C42DC000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Pulling presentable: (%{public}@) %{public}@", buf, 0x20u);

              selfCopy = v15;
              WeakRetained = v30;
            }

            [(NSMutableArray *)selfCopy->_postingContextQueue removeObject:v12];
            [(NSMapTable *)selfCopy->_postingContextsToDequeuePromises removeObjectForKey:v12];
            v19 = v10;
            if (!v10)
            {
              v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v10 = v19;
            [v19 addObject:presentable];
            if (objc_opt_respondsToSelector())
            {
              pendingIdentifier2 = [v12 pendingIdentifier];
              [WeakRetained presentableQueue:selfCopy didDequeuePresentableWithPendingIdentifier:pendingIdentifier2];
            }
          }
        }

        v7 = obj;
        v8 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v8);
    }

    v21 = BNLogPending;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = selfCopy;
      v23 = selfCopy->_penderIdentifier;
      v24 = v22;
      v25 = [(NSMutableArray *)v22->_postingContextQueue bs_map:&__block_literal_global_19];
      *buf = 138543618;
      v39 = v23;
      v40 = 2114;
      v41 = v25;
      _os_log_impl(&dword_1C42DC000, v21, OS_LOG_TYPE_DEFAULT, "(%{public}@) Currently pended presentables: %{public}@", buf, 0x16u);

      selfCopy = v24;
      WeakRetained = v30;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v26 = v10;
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  v27 = v26;

  return v26;
}

id __51__BNPresentableQueue__pullPresentablesPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v3 pendingIdentifier];
  v5 = [v3 presentable];

  v6 = BNEffectivePresentableDescription(v5);
  v7 = [v2 stringWithFormat:@"(%@) %@", v4, v6];

  return v7;
}

- (id)pullPresentablesWithIdentification:(id)identification
{
  identificationCopy = identification;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__BNPresentableQueue_pullPresentablesWithIdentification___block_invoke;
  v8[3] = &unk_1E81E4730;
  v9 = identificationCopy;
  v5 = identificationCopy;
  v6 = [(BNPresentableQueue *)self _pullPresentablesPassingTest:v8];

  return v6;
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
  if (v9 && ![(BNSuspensionController *)self->_suspensionController isSuspended])
  {
    v10 = self->_suspensionController;
    self->_suspensionController = 0;
  }

  return v9;
}

- (BNPresentableQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __37__BNPresentableQueue_peekPresentable__block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"BNPresentableQueue.m" lineNumber:90 description:{@"Dequeueing posting context '%@' is not at the front of the queue: %@", *(a2 + 32), a4, *a3}];
}

@end