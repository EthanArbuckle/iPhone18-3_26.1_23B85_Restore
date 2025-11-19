@interface ASAgentCredentialExchangeListener
@end

@implementation ASAgentCredentialExchangeListener

void __76___ASAgentCredentialExchangeListener__setUpExporterConnection_forOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    v3 = *&v2[6]._os_unfair_lock_opaque;
    if (!v3)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __76___ASAgentCredentialExchangeListener__setUpExporterConnection_forOperation___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }

      goto LABEL_10;
    }

    v4 = v3;
    v5 = [v4 importerConnection];
    if (v5)
    {
    }

    else
    {
      v14 = [v4 viewServiceConnection];

      if (!v14)
      {
        v15 = *&v2[6]._os_unfair_lock_opaque;
        *&v2[6]._os_unfair_lock_opaque = 0;

        goto LABEL_9;
      }
    }

    [v4 setExporterConnection:0];
LABEL_9:

LABEL_10:
    os_unfair_lock_unlock(v2 + 4);
  }
}

void __76___ASAgentCredentialExchangeListener__setUpImporterConnection_forOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 4);
    v2 = *&v3[6]._os_unfair_lock_opaque;
    *&v3[6]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v3 + 4);
    WeakRetained = v3;
  }
}

void __86___ASAgentCredentialExchangeListener_continueExportWithCredentials_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock(v4 + 4);
  v5 = *(*(a1 + 32) + 24);
  if (v5)
  {
    v6 = *(a1 + 40);
    if (v6 == v5)
    {
      v7 = [v6 exportedCredentialData];

      if (v7)
      {
        v8 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_1B1C8D000, v8, OS_LOG_TYPE_DEFAULT, "Exported data was not consumed for five minutes, deleting", v19, 2u);
        }
      }

      v9 = *(a1 + 32);
      v10 = *(v9 + 24);
      *(v9 + 24) = 0;
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCredentialExchange();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __86___ASAgentCredentialExchangeListener_continueExportWithCredentials_completionHandler___block_invoke_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  os_unfair_lock_unlock(v4 + 4);
}

void __76___ASAgentCredentialExchangeListener__setUpExporterConnection_forOperation___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __86___ASAgentCredentialExchangeListener_continueExportWithCredentials_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end