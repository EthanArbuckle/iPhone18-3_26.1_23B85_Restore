@interface BNPresentableQueue
+ (void)initialize;
- (BNPresentableQueueDelegate)delegate;
- (BOOL)setSuspended:(BOOL)a3 forReason:(id)a4;
- (id)_pullPresentablesPassingTest:(id)a3;
- (id)peekPresentable;
- (id)pullPresentablesWithIdentification:(id)a3;
- (void)enqueuePresentable:(id)a3 withOptions:(unint64_t)a4 userInfo:(id)a5;
@end

@implementation BNPresentableQueue

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BNRegisterBannerKitLogging();
  }
}

- (void)enqueuePresentable:(id)a3 withOptions:(unint64_t)a4 userInfo:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = self;
    objc_sync_enter(v10);
    if (!v10->_postingContextQueue)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      postingContextQueue = v10->_postingContextQueue;
      v10->_postingContextQueue = v11;
    }

    v13 = [[BNPostingContext alloc] initWithPresentable:v8 presentationOptions:a4 userInfo:v9];
    v14 = BNLogPending;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      penderIdentifier = v10->_penderIdentifier;
      v16 = [(BNPostingContext *)v13 pendingIdentifier];
      v17 = BNEffectivePresentableDescription(v8);
      v21 = 138543874;
      v22 = penderIdentifier;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&dword_1C42DC000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Pending presentable: (%{public}@) %{public}@", &v21, 0x20u);
    }

    [(NSMutableArray *)v10->_postingContextQueue addObject:v13];
    v18 = BNLogPending;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v10->_penderIdentifier;
      v20 = [(NSMutableArray *)v10->_postingContextQueue bs_map:&__block_literal_global_1];
      v21 = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = v20;
      _os_log_impl(&dword_1C42DC000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@) Currently pended presentables: %{public}@", &v21, 0x16u);
    }

    objc_sync_exit(v10);
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
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)v3->_postingContextQueue firstObject];
  if (v4)
  {
    v5 = [(NSMapTable *)v3->_postingContextsToDequeuePromises objectForKey:v4];
    if (v5)
    {
      v6 = BNLogPending;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        penderIdentifier = v3->_penderIdentifier;
        v8 = [v4 pendingIdentifier];
        v9 = [v4 presentable];
        v10 = BNEffectivePresentableDescription(v9);
        *buf = 138543874;
        v31 = penderIdentifier;
        v32 = 2114;
        v33 = v8;
        v34 = 2114;
        v35 = v10;
        _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) Have existing dequeue promise for presentable: (%{public}@) %{public}@", buf, 0x20u);
      }
    }

    else
    {
      objc_initWeak(&location, v3);
      v13 = [BNPendingDequeuePromise alloc];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __37__BNPresentableQueue_peekPresentable__block_invoke;
      v26 = &unk_1E81E4708;
      objc_copyWeak(v28, &location);
      v28[1] = a2;
      v27 = v3;
      v5 = [(BNPendingDequeuePromise *)v13 initWithPostingContext:v4 dequeueBlock:&v23];
      if (!v3->_postingContextsToDequeuePromises)
      {
        v14 = objc_alloc(MEMORY[0x1E696AD18]);
        v15 = [v14 initWithKeyOptions:517 valueOptions:0 capacity:{0, v23, v24, v25, v26}];
        postingContextsToDequeuePromises = v3->_postingContextsToDequeuePromises;
        v3->_postingContextsToDequeuePromises = v15;
      }

      v17 = BNLogPending;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v3->_penderIdentifier;
        v19 = [v4 pendingIdentifier];
        v20 = [v4 presentable];
        v21 = BNEffectivePresentableDescription(v20);
        *buf = 138543874;
        v31 = v18;
        v32 = 2114;
        v33 = v19;
        v34 = 2114;
        v35 = v21;
        _os_log_impl(&dword_1C42DC000, v17, OS_LOG_TYPE_DEFAULT, "(%{public}@) Adding new dequeue promise for presentable: (%{public}@) %{public}@", buf, 0x20u);
      }

      [(NSMapTable *)v3->_postingContextsToDequeuePromises setObject:v5 forKey:v4];
      objc_destroyWeak(v28);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v11 = BNLogPending;
    if (os_log_type_enabled(BNLogPending, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v3->_penderIdentifier;
      *buf = 138543362;
      v31 = v12;
      _os_log_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) No pending presentables", buf, 0xCu);
    }

    v5 = 0;
  }

  objc_sync_exit(v3);

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

- (id)_pullPresentablesPassingTest:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    WeakRetained = objc_loadWeakRetained(&v5->_delegate);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = [(NSMutableArray *)v5->_postingContextQueue copy];
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
          v13 = [v12 presentable];
          if (v4[2](v4, v13))
          {
            v14 = BNLogPending;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v5;
              penderIdentifier = v5->_penderIdentifier;
              v17 = [v12 pendingIdentifier];
              v18 = BNEffectivePresentableDescription(v13);
              *buf = v29;
              v39 = penderIdentifier;
              v40 = 2114;
              v41 = v17;
              v42 = 2114;
              v43 = v18;
              _os_log_impl(&dword_1C42DC000, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Pulling presentable: (%{public}@) %{public}@", buf, 0x20u);

              v5 = v15;
              WeakRetained = v30;
            }

            [(NSMutableArray *)v5->_postingContextQueue removeObject:v12];
            [(NSMapTable *)v5->_postingContextsToDequeuePromises removeObjectForKey:v12];
            v19 = v10;
            if (!v10)
            {
              v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v10 = v19;
            [v19 addObject:v13];
            if (objc_opt_respondsToSelector())
            {
              v20 = [v12 pendingIdentifier];
              [WeakRetained presentableQueue:v5 didDequeuePresentableWithPendingIdentifier:v20];
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
      v22 = v5;
      v23 = v5->_penderIdentifier;
      v24 = v22;
      v25 = [(NSMutableArray *)v22->_postingContextQueue bs_map:&__block_literal_global_19];
      *buf = 138543618;
      v39 = v23;
      v40 = 2114;
      v41 = v25;
      _os_log_impl(&dword_1C42DC000, v21, OS_LOG_TYPE_DEFAULT, "(%{public}@) Currently pended presentables: %{public}@", buf, 0x16u);

      v5 = v24;
      WeakRetained = v30;
    }

    objc_sync_exit(v5);
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

- (id)pullPresentablesWithIdentification:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__BNPresentableQueue_pullPresentablesWithIdentification___block_invoke;
  v8[3] = &unk_1E81E4730;
  v9 = v4;
  v5 = v4;
  v6 = [(BNPresentableQueue *)self _pullPresentablesPassingTest:v8];

  return v6;
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