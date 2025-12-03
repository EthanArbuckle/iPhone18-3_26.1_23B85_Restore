@interface EKDiagnosticsCollector
- (EKDiagnosticsCollectionDelegate)delegate;
- (EKDiagnosticsCollector)initWithEventStore:(id)store delegate:(id)delegate;
- (NSArray)files;
- (void)cancel;
- (void)cancelDiagnosticsCollection;
- (void)collectDiagnostics;
- (void)disconnected;
- (void)receivedBatchResultsFromServer:(id)server finished:(BOOL)finished;
@end

@implementation EKDiagnosticsCollector

- (EKDiagnosticsCollector)initWithEventStore:(id)store delegate:(id)delegate
{
  storeCopy = store;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = EKDiagnosticsCollector;
  v9 = [(EKDiagnosticsCollector *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v10->_trafficLogsCollectionMode = 2;
    v10->_lock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    files = v10->_files;
    v10->_files = v11;
  }

  return v10;
}

- (void)collectDiagnostics
{
  connection = [(EKEventStore *)self->_store connection];
  self->_token = [connection addCancellableRemoteOperation:self];

  redactLogs = self->_redactLogs;
  connection2 = [(EKEventStore *)self->_store connection];
  cADOperationProxySync = [connection2 CADOperationProxySync];
  token = self->_token;
  trafficLogsCollectionMode = [(EKDiagnosticsCollector *)self trafficLogsCollectionMode];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__EKDiagnosticsCollector_collectDiagnostics__block_invoke;
  v9[3] = &unk_1E77FFD10;
  v9[4] = self;
  [cADOperationProxySync CADDiagnosticsCollectWithToken:token options:!redactLogs trafficLogsCollectionMode:trafficLogsCollectionMode reply:v9];
}

void __44__EKDiagnosticsCollector_collectDiagnostics__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __44__EKDiagnosticsCollector_collectDiagnostics__block_invoke_cold_1(v4, a2);
    }

    v5 = [*(*(a1 + 32) + 8) connection];
    [v5 removeCancellableRemoteOperation:*(*(a1 + 32) + 16)];
  }
}

- (void)cancelDiagnosticsCollection
{
  connection = [(EKEventStore *)self->_store connection];
  [connection cancelRemoteOperation:self->_token];
}

- (NSArray)files
{
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_files allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (void)cancel
{
  connection = [(EKEventStore *)self->_store connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  [cADOperationProxySync CADDiagnosticsCancelCollectionWithToken:self->_token reply:&__block_literal_global_63];
}

void __32__EKDiagnosticsCollector_cancel__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __32__EKDiagnosticsCollector_cancel__block_invoke_cold_1(v3, a2);
    }
  }
}

- (void)disconnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_finished)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_finished = 1;
    os_unfair_lock_unlock(&self->_lock);
    delegate = [(EKDiagnosticsCollector *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:1015];
      [delegate diagnosticsCollector:self finishedWithError:v3];
    }
  }
}

- (void)receivedBatchResultsFromServer:(id)server finished:(BOOL)finished
{
  finishedCopy = finished;
  v40 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  os_unfair_lock_lock(&self->_lock);
  if (self->_finished)
  {
    os_unfair_lock_unlock(&self->_lock);
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKDiagnosticsCollector receivedBatchResultsFromServer:serverCopy finished:v7];
    }
  }

  else
  {
    v30 = finishedCopy;
    if (finishedCopy)
    {
      self->_finished = 1;
    }

    selfCopy = self;
    os_unfair_lock_unlock(&self->_lock);
    v31 = serverCopy;
    v32 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = serverCopy;
    v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      v11 = @"file";
      v12 = @"status";
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:v11];
          v16 = [v15 url];
          v17 = [v14 objectForKeyedSubscript:v12];
          v18 = v17;
          if (v16)
          {
            v19 = v17 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            v20 = v12;
            v21 = v11;
            os_unfair_lock_lock(&selfCopy->_lock);
            v22 = [(NSMutableDictionary *)selfCopy->_files objectForKeyedSubscript:v16];
            [(NSMutableDictionary *)selfCopy->_files setObject:v18 forKeyedSubscript:v16];
            os_unfair_lock_unlock(&selfCopy->_lock);
            unsignedIntegerValue = [v22 unsignedIntegerValue];
            unsignedIntegerValue2 = [v18 unsignedIntegerValue];
            if (unsignedIntegerValue)
            {
              v25 = 1;
            }

            else
            {
              v25 = (unsignedIntegerValue2 - 1) > 1;
            }

            if (!v25)
            {
              [v32 addObject:v16];
            }

            v11 = v21;
            v12 = v20;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v9);
    }

    delegate = [(EKDiagnosticsCollector *)selfCopy delegate];
    if (!selfCopy->_determinedOutputFiles)
    {
      selfCopy->_determinedOutputFiles = 1;
      if (objc_opt_respondsToSelector())
      {
        files = [(EKDiagnosticsCollector *)selfCopy files];
        [delegate diagnosticsCollector:selfCopy determinedExpectedOutputFiles:files];
      }
    }

    serverCopy = v31;
    if ([v32 count] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      allObjects = [v32 allObjects];
      [delegate diagnosticsCollector:selfCopy createdOutputFiles:allObjects];
    }

    if (v30 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate diagnosticsCollector:selfCopy finishedWithError:0];
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (EKDiagnosticsCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __44__EKDiagnosticsCollector_collectDiagnostics__block_invoke_cold_1(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = a1;
  v5 = [v3 errorWithCADResult:a2];
  OUTLINED_FUNCTION_0_1(&dword_1A805E000, v6, v7, "Error starting diagnostics collection: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

void __32__EKDiagnosticsCollector_cancel__block_invoke_cold_1(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = a1;
  v5 = [v3 errorWithCADResult:a2];
  OUTLINED_FUNCTION_0_1(&dword_1A805E000, v6, v7, "Error stopping diagnostics collection: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)receivedBatchResultsFromServer:(uint64_t)a1 finished:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Ignoring new results, because we're already finished: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end