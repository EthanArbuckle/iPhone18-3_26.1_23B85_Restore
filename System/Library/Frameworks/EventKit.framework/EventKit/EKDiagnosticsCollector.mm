@interface EKDiagnosticsCollector
- (EKDiagnosticsCollectionDelegate)delegate;
- (EKDiagnosticsCollector)initWithEventStore:(id)a3 delegate:(id)a4;
- (NSArray)files;
- (void)cancel;
- (void)cancelDiagnosticsCollection;
- (void)collectDiagnostics;
- (void)disconnected;
- (void)receivedBatchResultsFromServer:(id)a3 finished:(BOOL)a4;
@end

@implementation EKDiagnosticsCollector

- (EKDiagnosticsCollector)initWithEventStore:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EKDiagnosticsCollector;
  v9 = [(EKDiagnosticsCollector *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, a3);
    objc_storeWeak(&v10->_delegate, v8);
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
  v3 = [(EKEventStore *)self->_store connection];
  self->_token = [v3 addCancellableRemoteOperation:self];

  redactLogs = self->_redactLogs;
  v5 = [(EKEventStore *)self->_store connection];
  v6 = [v5 CADOperationProxySync];
  token = self->_token;
  v8 = [(EKDiagnosticsCollector *)self trafficLogsCollectionMode];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__EKDiagnosticsCollector_collectDiagnostics__block_invoke;
  v9[3] = &unk_1E77FFD10;
  v9[4] = self;
  [v6 CADDiagnosticsCollectWithToken:token options:!redactLogs trafficLogsCollectionMode:v8 reply:v9];
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
  v3 = [(EKEventStore *)self->_store connection];
  [v3 cancelRemoteOperation:self->_token];
}

- (NSArray)files
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_files allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)cancel
{
  v4 = [(EKEventStore *)self->_store connection];
  v3 = [v4 CADOperationProxySync];
  [v3 CADDiagnosticsCancelCollectionWithToken:self->_token reply:&__block_literal_global_63];
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
    v4 = [(EKDiagnosticsCollector *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [MEMORY[0x1E696ABC0] errorWithCADResult:1015];
      [v4 diagnosticsCollector:self finishedWithError:v3];
    }
  }
}

- (void)receivedBatchResultsFromServer:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_finished)
  {
    os_unfair_lock_unlock(&self->_lock);
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKDiagnosticsCollector receivedBatchResultsFromServer:v6 finished:v7];
    }
  }

  else
  {
    v30 = v4;
    if (v4)
    {
      self->_finished = 1;
    }

    v33 = self;
    os_unfair_lock_unlock(&self->_lock);
    v31 = v6;
    v32 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v6;
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
            os_unfair_lock_lock(&v33->_lock);
            v22 = [(NSMutableDictionary *)v33->_files objectForKeyedSubscript:v16];
            [(NSMutableDictionary *)v33->_files setObject:v18 forKeyedSubscript:v16];
            os_unfair_lock_unlock(&v33->_lock);
            v23 = [v22 unsignedIntegerValue];
            v24 = [v18 unsignedIntegerValue];
            if (v23)
            {
              v25 = 1;
            }

            else
            {
              v25 = (v24 - 1) > 1;
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

    v26 = [(EKDiagnosticsCollector *)v33 delegate];
    if (!v33->_determinedOutputFiles)
    {
      v33->_determinedOutputFiles = 1;
      if (objc_opt_respondsToSelector())
      {
        v27 = [(EKDiagnosticsCollector *)v33 files];
        [v26 diagnosticsCollector:v33 determinedExpectedOutputFiles:v27];
      }
    }

    v6 = v31;
    if ([v32 count] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v28 = [v32 allObjects];
      [v26 diagnosticsCollector:v33 createdOutputFiles:v28];
    }

    if (v30 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v26 diagnosticsCollector:v33 finishedWithError:0];
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