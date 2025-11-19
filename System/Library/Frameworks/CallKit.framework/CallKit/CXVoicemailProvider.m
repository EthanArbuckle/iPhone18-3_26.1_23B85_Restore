@interface CXVoicemailProvider
- (CXVoicemailProvider)init;
- (CXVoicemailProviderDelegate)delegate;
- (CXVoicemailProviderHostProtocol)voicemailProviderHostDelegate;
- (NSArray)pendingTransactions;
- (id)pendingVoicemailActionsOfClass:(Class)a3 withVoicemailUUID:(id)a4;
- (void)commitTransaction:(id)a3;
- (void)handleActionTimeout:(id)a3;
- (void)invalidate;
- (void)performAction:(id)a3;
- (void)reportNewVoicemailWithUpdate:(id)a3;
- (void)reportNewVoicemailsWithUpdates:(id)a3;
- (void)reportVoicemailRemovedWithUUID:(id)a3;
- (void)reportVoicemailUpdated:(id)a3;
- (void)reportVoicemailsRemovedWithUUIDs:(id)a3;
- (void)reportVoicemailsUpdated:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
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
  v2 = [(CXVoicemailProvider *)self abstractProvider];
  v3 = [v2 delegate];

  if ([v3 conformsToProtocol:&unk_1F2CB9AA0])
  {
    v4 = v3;
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
  v2 = [(CXVoicemailProvider *)self hostProtocolDelegate];
  if ([v2 conformsToProtocol:&unk_1F2CB05D0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)pendingVoicemailActionsOfClass:(Class)a3 withVoicemailUUID:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
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
          v10 = [v9 actions];
          v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v25 + 1) + 8 * i);
                if (objc_opt_isKindOfClass())
                {
                  v16 = [v15 voicemailUUID];
                  v17 = [v16 isEqual:v6];

                  if (v17)
                  {
                    [v7 addObject:v15];
                  }
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
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

  v18 = [v7 copy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)reportNewVoicemailWithUpdate:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(CXVoicemailProvider *)self reportNewVoicemailsWithUpdates:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportNewVoicemailsWithUpdates:(id)a3
{
  v4 = a3;
  v5 = [(CXVoicemailProvider *)self abstractProvider];
  v6 = [v5 queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CXVoicemailProvider_reportNewVoicemailsWithUpdates___block_invoke;
  v8[3] = &unk_1E7C06BE0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __54__CXVoicemailProvider_reportNewVoicemailsWithUpdates___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) voicemailProviderHostDelegate];
  [v2 reportNewVoicemailsWithUpdates:*(a1 + 40)];
}

- (void)reportVoicemailUpdated:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(CXVoicemailProvider *)self reportVoicemailsUpdated:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportVoicemailsUpdated:(id)a3
{
  v4 = a3;
  v5 = [(CXVoicemailProvider *)self abstractProvider];
  v6 = [v5 queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CXVoicemailProvider_reportVoicemailsUpdated___block_invoke;
  v8[3] = &unk_1E7C06BE0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __47__CXVoicemailProvider_reportVoicemailsUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) voicemailProviderHostDelegate];
  [v2 reportVoicemailsUpdated:*(a1 + 40)];
}

- (void)reportVoicemailRemovedWithUUID:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(CXVoicemailProvider *)self reportVoicemailsRemovedWithUUIDs:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportVoicemailsRemovedWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(CXVoicemailProvider *)self abstractProvider];
  v6 = [v5 queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CXVoicemailProvider_reportVoicemailsRemovedWithUUIDs___block_invoke;
  v8[3] = &unk_1E7C06BE0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __56__CXVoicemailProvider_reportVoicemailsRemovedWithUUIDs___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) voicemailProviderHostDelegate];
  [v2 reportVoicemailsRemovedWithUUIDs:*(a1 + 40)];
}

- (void)performAction:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CXVoicemailProvider *)self abstractProvider];
  v6 = [v5 delegateQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CXVoicemailProvider *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v7 provider:self performSetPlayedVoicemailAction:v8];
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
    v8 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v7 provider:self performSetTrashedVoicemailAction:v8];
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
    v8 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v7 provider:self performRemoveVoicemailAction:v8];
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
    [(CXProvider *)v4 performAction:v8];
  }

LABEL_20:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CXVoicemailProvider *)self abstractProvider];
  [v8 setDelegate:v7 queue:v6];
}

- (NSArray)pendingTransactions
{
  v2 = [(CXVoicemailProvider *)self abstractProvider];
  v3 = [v2 pendingTransactions];

  return v3;
}

- (void)invalidate
{
  v2 = [(CXVoicemailProvider *)self abstractProvider];
  [v2 invalidate];
}

- (void)commitTransaction:(id)a3
{
  v4 = a3;
  v5 = [(CXVoicemailProvider *)self abstractProvider];
  [v5 provider:self commitTransaction:v4];
}

- (void)handleActionTimeout:(id)a3
{
  v4 = a3;
  v5 = [(CXVoicemailProvider *)self abstractProvider];
  [v5 provider:self handleTimeoutForAction:v4];
}

@end