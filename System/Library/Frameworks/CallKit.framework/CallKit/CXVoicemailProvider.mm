@interface CXVoicemailProvider
- (CXVoicemailProvider)init;
- (CXVoicemailProviderDelegate)delegate;
- (CXVoicemailProviderHostProtocol)voicemailProviderHostDelegate;
- (NSArray)pendingTransactions;
- (id)pendingVoicemailActionsOfClass:(Class)class withVoicemailUUID:(id)d;
- (void)commitTransaction:(id)transaction;
- (void)handleActionTimeout:(id)timeout;
- (void)invalidate;
- (void)performAction:(id)action;
- (void)reportNewVoicemailWithUpdate:(id)update;
- (void)reportNewVoicemailsWithUpdates:(id)updates;
- (void)reportVoicemailRemovedWithUUID:(id)d;
- (void)reportVoicemailUpdated:(id)updated;
- (void)reportVoicemailsRemovedWithUUIDs:(id)ds;
- (void)reportVoicemailsUpdated:(id)updated;
- (void)setDelegate:(id)delegate queue:(id)queue;
@end

@implementation CXVoicemailProvider

- (CXVoicemailProvider)init
{
  v6.receiver = self;
  v6.super_class = CXVoicemailProvider;
  v2 = [(CXVoicemailProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CXAbstractProvider);
    abstractProvider = v2->_abstractProvider;
    v2->_abstractProvider = v3;

    [(CXAbstractProvider *)v2->_abstractProvider setInternalActionDelegate:v2];
  }

  return v2;
}

- (CXVoicemailProviderDelegate)delegate
{
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  delegate = [abstractProvider delegate];

  if ([delegate conformsToProtocol:&unk_1F2CB9AA0])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (CXVoicemailProviderHostProtocol)voicemailProviderHostDelegate
{
  hostProtocolDelegate = [(CXVoicemailProvider *)self hostProtocolDelegate];
  if ([hostProtocolDelegate conformsToProtocol:&unk_1F2CB05D0])
  {
    v3 = hostProtocolDelegate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)pendingVoicemailActionsOfClass:(Class)class withVoicemailUUID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  array = [MEMORY[0x1E695DF70] array];
  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(CXVoicemailProvider *)self pendingTransactions];
    v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          actions = [v9 actions];
          v11 = [actions countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                  objc_enumerationMutation(actions);
                }

                v15 = *(*(&v25 + 1) + 8 * i);
                if (objc_opt_isKindOfClass())
                {
                  voicemailUUID = [v15 voicemailUUID];
                  v17 = [voicemailUUID isEqual:dCopy];

                  if (v17)
                  {
                    [array addObject:v15];
                  }
                }
              }

              v12 = [actions countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v12);
          }

          v8 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v23);
    }
  }

  v18 = [array copy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)reportNewVoicemailWithUpdate:(id)update
{
  v9 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v4 = MEMORY[0x1E695DEC8];
  updateCopy2 = update;
  v6 = [v4 arrayWithObjects:&updateCopy count:1];

  [(CXVoicemailProvider *)self reportNewVoicemailsWithUpdates:v6, updateCopy, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportNewVoicemailsWithUpdates:(id)updates
{
  updatesCopy = updates;
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CXVoicemailProvider_reportNewVoicemailsWithUpdates___block_invoke;
  v8[3] = &unk_1E7C06BE0;
  v8[4] = self;
  v9 = updatesCopy;
  v7 = updatesCopy;
  dispatch_async(queue, v8);
}

void __54__CXVoicemailProvider_reportNewVoicemailsWithUpdates___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) voicemailProviderHostDelegate];
  [v2 reportNewVoicemailsWithUpdates:*(a1 + 40)];
}

- (void)reportVoicemailUpdated:(id)updated
{
  v9 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v4 = MEMORY[0x1E695DEC8];
  updatedCopy2 = updated;
  v6 = [v4 arrayWithObjects:&updatedCopy count:1];

  [(CXVoicemailProvider *)self reportVoicemailsUpdated:v6, updatedCopy, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportVoicemailsUpdated:(id)updated
{
  updatedCopy = updated;
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CXVoicemailProvider_reportVoicemailsUpdated___block_invoke;
  v8[3] = &unk_1E7C06BE0;
  v8[4] = self;
  v9 = updatedCopy;
  v7 = updatedCopy;
  dispatch_async(queue, v8);
}

void __47__CXVoicemailProvider_reportVoicemailsUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) voicemailProviderHostDelegate];
  [v2 reportVoicemailsUpdated:*(a1 + 40)];
}

- (void)reportVoicemailRemovedWithUUID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v4 = MEMORY[0x1E695DEC8];
  dCopy2 = d;
  v6 = [v4 arrayWithObjects:&dCopy count:1];

  [(CXVoicemailProvider *)self reportVoicemailsRemovedWithUUIDs:v6, dCopy, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportVoicemailsRemovedWithUUIDs:(id)ds
{
  dsCopy = ds;
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CXVoicemailProvider_reportVoicemailsRemovedWithUUIDs___block_invoke;
  v8[3] = &unk_1E7C06BE0;
  v8[4] = self;
  v9 = dsCopy;
  v7 = dsCopy;
  dispatch_async(queue, v8);
}

void __56__CXVoicemailProvider_reportVoicemailsRemovedWithUUIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) voicemailProviderHostDelegate];
  [v2 reportVoicemailsRemovedWithUUIDs:*(a1 + 40)];
}

- (void)performAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  delegateQueue = [abstractProvider delegateQueue];
  dispatch_assert_queue_V2(delegateQueue);

  delegate = [(CXVoicemailProvider *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = actionCopy;
    if (objc_opt_respondsToSelector())
    {
      [delegate provider:self performSetPlayedVoicemailAction:v8];
      goto LABEL_20;
    }

    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(sel_provider_performSetPlayedVoicemailAction_);
      v12 = 138412290;
      v13 = v10;
LABEL_18:
      _os_log_impl(&dword_1B47F3000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Delegate does not respond to %@. Action will not be performed", &v12, 0xCu);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = actionCopy;
    if (objc_opt_respondsToSelector())
    {
      [delegate provider:self performSetTrashedVoicemailAction:v8];
      goto LABEL_20;
    }

    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(sel_provider_performSetTrashedVoicemailAction_);
      v12 = 138412290;
      v13 = v10;
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = actionCopy;
    if (objc_opt_respondsToSelector())
    {
      [delegate provider:self performRemoveVoicemailAction:v8];
      goto LABEL_20;
    }

    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(sel_provider_performRemoveVoicemailAction_);
      v12 = 138412290;
      v13 = v10;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(CXProvider *)actionCopy performAction:v8];
  }

LABEL_20:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  [abstractProvider setDelegate:delegateCopy queue:queueCopy];
}

- (NSArray)pendingTransactions
{
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  pendingTransactions = [abstractProvider pendingTransactions];

  return pendingTransactions;
}

- (void)invalidate
{
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  [abstractProvider invalidate];
}

- (void)commitTransaction:(id)transaction
{
  transactionCopy = transaction;
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  [abstractProvider provider:self commitTransaction:transactionCopy];
}

- (void)handleActionTimeout:(id)timeout
{
  timeoutCopy = timeout;
  abstractProvider = [(CXVoicemailProvider *)self abstractProvider];
  [abstractProvider provider:self handleTimeoutForAction:timeoutCopy];
}

@end