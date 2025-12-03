@interface CXTransactionManager
- (CXTransactionManager)initWithQueue:(id)queue;
- (CXTransactionManagerDelegate)delegate;
- (id)description;
- (void)_setUpTimeoutForActionIfNecessary:(id)necessary callSource:(id)source;
- (void)_timeoutReachedForAction:(id)action callSource:(id)source;
- (void)addOutstandingTransactionGroup:(id)group;
- (void)failOutstandingActionsForCallWithUUID:(id)d;
- (void)failOutstandingActionsForChannelWithUUID:(id)d;
- (void)updateWithCompletedAction:(id)action;
@end

@implementation CXTransactionManager

- (CXTransactionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CXTransactionManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CXTransactionManager;
  v6 = [(CXTransactionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [MEMORY[0x1E695DFA8] set];
    outstandingTransactionGroups = v7->_outstandingTransactionGroups;
    v7->_outstandingTransactionGroups = v8;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  outstandingTransactionGroups = [(CXTransactionManager *)self outstandingTransactionGroups];
  v6 = [v3 stringWithFormat:@"<%@ %p outstandingTransactionGroups=%@>", v4, self, outstandingTransactionGroups];

  return v6;
}

- (void)addOutstandingTransactionGroup:(id)group
{
  v32 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  queue = [(CXTransactionManager *)self queue];
  dispatch_assert_queue_barrier(queue);

  outstandingTransactionGroups = [(CXTransactionManager *)self outstandingTransactionGroups];
  [outstandingTransactionGroups addObject:groupCopy];

  date = [MEMORY[0x1E695DF00] date];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = groupCopy;
  obj = [groupCopy callSources];
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v20 transactionForCallSource:v9];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        actions = [v10 actions];
        v12 = [actions countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(actions);
              }

              v16 = *(*(&v22 + 1) + 8 * j);
              [v16 setCommitDate:date];
              [(CXTransactionManager *)self _setUpTimeoutForActionIfNecessary:v16 callSource:v9];
            }

            v13 = [actions countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v13);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)updateWithCompletedAction:(id)action
{
  v40 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  queue = [(CXTransactionManager *)self queue];
  dispatch_assert_queue_barrier(queue);

  v6 = CXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = actionCopy;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "completedAction: %@", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  selfCopy = self;
  obj = [(CXTransactionManager *)self outstandingTransactionGroups];
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v25 = *v33;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v27 = v8;
        allActions = [v8 allActions];
        v10 = [allActions countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
LABEL_10:
          v13 = 0;
          while (1)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(allActions);
            }

            v14 = *(*(&v28 + 1) + 8 * v13);
            uUID = [v14 UUID];
            uUID2 = [actionCopy UUID];
            v17 = [uUID isEqual:uUID2];

            if (v17)
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [allActions countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v11)
              {
                goto LABEL_10;
              }

              goto LABEL_16;
            }
          }

          [actionCopy updateCopy:v14 withZone:0];
          v18 = v27;

          if (!v18)
          {
            continue;
          }

          if ([v18 isComplete])
          {
            outstandingTransactionGroups = [(CXTransactionManager *)selfCopy outstandingTransactionGroups];
            [outstandingTransactionGroups removeObject:v18];

            delegate = [(CXTransactionManager *)selfCopy delegate];
            [delegate transactionManager:selfCopy transactionGroupCompleted:v18];
            goto LABEL_25;
          }

          goto LABEL_26;
        }

LABEL_16:
      }

      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  delegate = CXDefaultLog();
  if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
  {
    outstandingTransactionGroups2 = [(CXTransactionManager *)selfCopy outstandingTransactionGroups];
    *buf = 138412290;
    v39 = outstandingTransactionGroups2;
    _os_log_impl(&dword_1B47F3000, delegate, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find transaction group with completed action. All transactions groups: %@", buf, 0xCu);
  }

  v18 = 0;
LABEL_25:

LABEL_26:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)failOutstandingActionsForCallWithUUID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  queue = [(CXTransactionManager *)self queue];
  dispatch_assert_queue_barrier(queue);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  outstandingTransactionGroups = [(CXTransactionManager *)self outstandingTransactionGroups];
  v7 = [outstandingTransactionGroups copy];

  obj = v7;
  v23 = [v7 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v8;
        v9 = *(*(&v29 + 1) + 8 * v8);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        allActions = [v9 allActions];
        v11 = [allActions countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(allActions);
              }

              v15 = *(*(&v25 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
                callUUID = [v16 callUUID];
                v18 = [callUUID isEqual:dCopy];

                if (v18)
                {
                  v19 = CXDefaultLog();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v34 = v16;
                    _os_log_impl(&dword_1B47F3000, v19, OS_LOG_TYPE_DEFAULT, "Failing action by system request: %@", buf, 0xCu);
                  }

                  [v16 updateAsFailedWithReason:3];
                  [(CXTransactionManager *)self updateWithCompletedAction:v16];
                }
              }
            }

            v12 = [allActions countByEnumeratingWithState:&v25 objects:v35 count:16];
          }

          while (v12);
        }

        v8 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v23);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)failOutstandingActionsForChannelWithUUID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  queue = [(CXTransactionManager *)self queue];
  dispatch_assert_queue_barrier(queue);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  outstandingTransactionGroups = [(CXTransactionManager *)self outstandingTransactionGroups];
  v7 = [outstandingTransactionGroups copy];

  obj = v7;
  v23 = [v7 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v8;
        v9 = *(*(&v29 + 1) + 8 * v8);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        allActions = [v9 allActions];
        v11 = [allActions countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(allActions);
              }

              v15 = *(*(&v25 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
                channelUUID = [v16 channelUUID];
                v18 = [channelUUID isEqual:dCopy];

                if (v18)
                {
                  v19 = CXDefaultLog();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v34 = v16;
                    _os_log_impl(&dword_1B47F3000, v19, OS_LOG_TYPE_DEFAULT, "Failing action by system request: %@", buf, 0xCu);
                  }

                  [v16 updateAsFailedWithReason:3];
                  [(CXTransactionManager *)self updateWithCompletedAction:v16];
                }
              }
            }

            v12 = [allActions countByEnumeratingWithState:&v25 objects:v35 count:16];
          }

          while (v12);
        }

        v8 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v23);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_setUpTimeoutForActionIfNecessary:(id)necessary callSource:(id)source
{
  necessaryCopy = necessary;
  sourceCopy = source;
  if ([necessaryCopy shouldTimeout])
  {
    [objc_opt_class() timeout];
    v9 = dispatch_time(0, (v8 * 1000000000.0));
    queue = [(CXTransactionManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__CXTransactionManager__setUpTimeoutForActionIfNecessary_callSource___block_invoke;
    block[3] = &unk_1E7C06C80;
    block[4] = self;
    v13 = necessaryCopy;
    v14 = sourceCopy;
    v11 = dispatch_block_create(DISPATCH_BLOCK_BARRIER, block);
    dispatch_after(v9, queue, v11);
  }
}

- (void)_timeoutReachedForAction:(id)action callSource:(id)source
{
  v15 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  sourceCopy = source;
  if (([actionCopy isComplete] & 1) == 0)
  {
    v8 = CXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = actionCopy;
      v13 = 2112;
      v14 = sourceCopy;
      _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Timeout reached for incomplete action %@ and call source %@", &v11, 0x16u);
    }

    [actionCopy updateAsFailedWithReason:2];
    delegate = [(CXTransactionManager *)self delegate];
    [delegate transactionManager:self actionTimedOut:actionCopy forCallSource:sourceCopy];

    [(CXTransactionManager *)self updateWithCompletedAction:actionCopy];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end