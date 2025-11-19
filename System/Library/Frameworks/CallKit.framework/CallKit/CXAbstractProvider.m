@interface CXAbstractProvider
- (CXAbstractProvider)init;
- (CXAbstractProviderDelegate)delegate;
- (CXActionDelegateInternal)internalActionDelegate;
- (NSArray)pendingTransactions;
- (id)_pendingActionWithUUID:(id)a3;
- (void)_performDelegateCallback:(id)a3;
- (void)_syncSetDelegate:(id)a3 queue:(id)a4;
- (void)_updatePendingTransactions;
- (void)actionCompleted:(id)a3;
- (void)handleConnectionInterruptionForProvider:(id)a3;
- (void)invalidate;
- (void)performDelegateCallback:(id)a3;
- (void)provider:(id)a3 commitTransaction:(id)a4;
- (void)provider:(id)a3 handleTimeoutForAction:(id)a4;
- (void)sendDidBeginForProvider:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
@end

@implementation CXAbstractProvider

- (CXAbstractProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CXActionDelegateInternal)internalActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalActionDelegate);

  return WeakRetained;
}

- (void)_updatePendingTransactions
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(CXAbstractProvider *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CXAbstractProvider *)self mutablePendingTransactions];
  v5 = [v4 copy];

  v6 = [(CXAbstractProvider *)self mutablePendingTransactions];
  [v6 removeAllObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v18;
    *&v9 = 138412290;
    v16 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 isComplete])
        {
          v14 = CXDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = v13;
            _os_log_impl(&dword_1B47F3000, v14, OS_LOG_TYPE_DEFAULT, "Removing transaction from list of pending transactions because it is now complete: %@", buf, 0xCu);
          }
        }

        else
        {
          v14 = [(CXAbstractProvider *)self mutablePendingTransactions];
          [v14 addObject:v13];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (CXAbstractProvider)init
{
  v9.receiver = self;
  v9.super_class = CXAbstractProvider;
  v2 = [(CXAbstractProvider *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.callkit.callprovider", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    mutablePendingTransactions = v2->_mutablePendingTransactions;
    v2->_mutablePendingTransactions = v6;
  }

  return v2;
}

- (void)actionCompleted:(id)a3
{
  v4 = a3;
  v5 = [(CXAbstractProvider *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CXAbstractProvider_actionCompleted___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __38__CXAbstractProvider_actionCompleted___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v16 = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Provider %@ was notified that action %@ completed", &v16, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) UUID];
  v7 = [v5 _pendingActionWithUUID:v6];

  if (v7 && ([v7 isComplete] & 1) == 0)
  {
    [*(a1 + 40) updateCopy:v7 withZone:0];
    v12 = [*(a1 + 32) internalActionDelegate];
    v13 = [v12 hostProtocolDelegate];
    v14 = [v7 copy];
    [v13 actionCompleted:v14 completionHandler:&__block_literal_global_2];

    [*(a1 + 32) _updatePendingTransactions];
  }

  else
  {
    v8 = CXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) UUID];
      v10 = [v9 UUIDString];
      v11 = [*(a1 + 32) mutablePendingTransactions];
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] No incomplete pending action could be found with UUID %@. All pending transactions: %@", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXAbstractProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CXAbstractProvider_setDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __40__CXAbstractProvider_setDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];
  }

  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (void)_syncSetDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXAbstractProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CXAbstractProvider__syncSetDelegate_queue___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

uint64_t __45__CXAbstractProvider__syncSetDelegate_queue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];
  }

  v3 = *(a1 + 32);

  return [v3 setDelegateQueue:v2];
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "Asked to invalidate provider %@ (this is a no-op)", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (NSArray)pendingTransactions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(CXAbstractProvider *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CXAbstractProvider_pendingTransactions__block_invoke;
  v6[3] = &unk_1E7C06E28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __41__CXAbstractProvider_pendingTransactions__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v6 = [*(a1 + 32) mutablePendingTransactions];
  v3 = [v2 initWithArray:v6 copyItems:1];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_pendingActionWithUUID:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CXAbstractProvider *)self queue];
  dispatch_assert_queue_V2(v5);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CXAbstractProvider *)self mutablePendingTransactions];
  v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v22 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [v9 actions];
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v24;
LABEL_8:
          v15 = 0;
          v16 = v13;
          while (1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v13 = *(*(&v23 + 1) + 8 * v15);

            v17 = [v13 UUID];
            v18 = [v17 isEqual:v4];

            if (v18)
            {
              break;
            }

            ++v15;
            v16 = v13;
            if (v12 == v15)
            {
              v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_15;
            }
          }

          if (v13)
          {
            goto LABEL_20;
          }
        }

        else
        {
LABEL_15:
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v13 = 0;
LABEL_20:

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)performDelegateCallback:(id)a3
{
  v4 = a3;
  v5 = [(CXAbstractProvider *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CXAbstractProvider_performDelegateCallback___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_performDelegateCallback:(id)a3
{
  v4 = a3;
  v5 = [(CXAbstractProvider *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CXAbstractProvider *)self delegateQueue];
  v7 = v6;
  if (v6)
  {
    dispatch_async(v6, v4);
  }

  else
  {
    v8 = CXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to perform a delegate callback but no delegate queue exists", v9, 2u);
    }
  }
}

- (void)sendDidBeginForProvider:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CXAbstractProvider_sendDidBeginForProvider___block_invoke;
  v6[3] = &unk_1E7C06BE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CXAbstractProvider *)self performDelegateCallback:v6];
}

void __46__CXAbstractProvider_sendDidBeginForProvider___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 providerDidBegin:*(a1 + 40)];
  }
}

- (void)handleConnectionInterruptionForProvider:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CXAbstractProvider_handleConnectionInterruptionForProvider___block_invoke;
  v6[3] = &unk_1E7C06BE0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CXAbstractProvider *)self performDelegateCallback:v6];
}

void __62__CXAbstractProvider_handleConnectionInterruptionForProvider___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerDidReset:*(a1 + 40)];

  v3 = [*(a1 + 32) connectionInterruptionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) connectionInterruptionHandler];
    v4[2]();
  }
}

- (void)provider:(id)a3 commitTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXAbstractProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CXAbstractProvider_provider_commitTransaction___block_invoke;
  block[3] = &unk_1E7C06C80;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __49__CXAbstractProvider_provider_commitTransaction___block_invoke(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Received request to commit transaction %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a1[4] actions];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v16 + 1) + 8 * v8++) setDelegate:a1[5]];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v9 = [a1[5] mutablePendingTransactions];
  v10 = [a1[4] copy];
  [v9 addObject:v10];

  v11 = a1[5];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__CXAbstractProvider_provider_commitTransaction___block_invoke_7;
  v13[3] = &unk_1E7C06C80;
  v13[4] = v11;
  v14 = a1[6];
  v15 = a1[4];
  [v11 _performDelegateCallback:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __49__CXAbstractProvider_provider_commitTransaction___block_invoke_7(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v2 provider:*(a1 + 40) executeTransaction:*(a1 + 48)])
  {
    v3 = CXDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "Delegate indicated that the transaction was executed", buf, 2u);
    }
  }

  else
  {
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Delegate did not execute transaction. Performing actions individually", buf, 2u);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [*(a1 + 48) actions];
    v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = CXDefaultLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v18 = v9;
            _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "Asking delegate to perform action %@", buf, 0xCu);
          }

          v11 = [*(a1 + 32) internalActionDelegate];
          [v11 performAction:v9];
        }

        v6 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 handleTimeoutForAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXAbstractProvider *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CXAbstractProvider_provider_handleTimeoutForAction___block_invoke;
  block[3] = &unk_1E7C06C80;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __54__CXAbstractProvider_provider_handleTimeoutForAction___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Notified that action timed out: %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) UUID];
  v6 = [v4 _pendingActionWithUUID:v5];
  [v6 updateAsFailedWithReason:2];

  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CXAbstractProvider_provider_handleTimeoutForAction___block_invoke_10;
  v9[3] = &unk_1E7C06C80;
  v9[4] = v7;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  [v7 _performDelegateCallback:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __54__CXAbstractProvider_provider_handleTimeoutForAction___block_invoke_10(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = CXDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1B47F3000, v3, OS_LOG_TYPE_DEFAULT, "Notifying delegate that action timed out: %@", &v6, 0xCu);
    }

    [v2 provider:*(a1 + 48) timedOutPerformingAction:*(a1 + 40)];
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end