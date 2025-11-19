@interface EKSyncStatusChangeListener
- (EKSyncStatusChangeListener)initWithEventStore:(id)a3;
- (EKSyncStatusChangeListenerDelegate)delegate;
- (void)_eventStoreChanged:(id)a3;
- (void)_setupSources;
@end

@implementation EKSyncStatusChangeListener

- (EKSyncStatusChangeListener)initWithEventStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = EKSyncStatusChangeListener;
  v6 = [(EKSyncStatusChangeListener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventStore, a3);
    [(EKSyncStatusChangeListener *)v7 _setupSources];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v7 selector:sel__eventStoreChanged_ name:@"EKEventStoreChangedNotification" object:v5];
  }

  return v7;
}

- (void)_setupSources
{
  v3 = [(EKEventStore *)self->_eventStore eventSources];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_29];
  [v4 filterUsingPredicate:v5];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  sourceLastSyncingEndDates = self->_sourceLastSyncingEndDates;
  self->_sourceLastSyncingEndDates = v6;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__EKSyncStatusChangeListener__setupSources__block_invoke_2;
  v8[3] = &unk_1E77FE110;
  v8[4] = self;
  [v4 enumerateObjectsUsingBlock:v8];
}

void __43__EKSyncStatusChangeListener__setupSources__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 objectID];
  v4 = [v3 lastSyncEndDate];

  [*(*(a1 + 32) + 16) setObject:v4 forKeyedSubscript:v5];
}

- (void)_eventStoreChanged:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(EKEventStore *)self->_eventStore eventSources];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 objectID];
        v12 = [(NSMutableDictionary *)self->_sourceLastSyncingEndDates objectForKey:v11];
        v13 = [v10 lastSyncEndDate];
        v14 = v13;
        if (v13 && (!v12 || [v13 CalIsAfterDate:v12]))
        {
          [(NSMutableDictionary *)self->_sourceLastSyncingEndDates setObject:v14 forKeyedSubscript:v11];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountsSyncFinished:v4];

  v16 = *MEMORY[0x1E69E9840];
}

- (EKSyncStatusChangeListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end