@interface ASExtensionViewController
@end

@implementation ASExtensionViewController

void __57___ASExtensionViewController__extensionRequestDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _invalidateNonUIRequestTimerIfNeeded];
    WeakRetained = v4;
    if (*(a1 + 40) == 1)
    {
      v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4097 userInfo:0];
      [v4 _requestDidFailWithError:v3 completion:0];

      WeakRetained = v4;
    }
  }
}

void __53___ASExtensionViewController_setDismissOnBackground___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[128] _kill:9];
    WeakRetained = v2;
  }
}

void __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(*(a1 + 32) + 1024);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke_2;
    v21[3] = &unk_1E7AF7F88;
    objc_copyWeak(&v22, (a1 + 48));
    [v10 _sf_addHandlerForRequestIdentifier:v7 withBlock:v21];
    objc_destroyWeak(&v22);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke_3;
  v15[3] = &unk_1E7AF7FB0;
  v16 = v9;
  v17 = v8;
  v11 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = v7;
  v20 = v11;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _extensionRequestDidFinish:a2];
}

void __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke_3_cold_1(v2, v3);
    }

    [*(a1 + 48) _requestDidFailWithError:*(a1 + 32) completion:0];
  }

  else
  {
    v5 = [*(*(a1 + 48) + 1024) _extensionContextForUUID:*(a1 + 56)];
    [v5 setDelegate:*(a1 + 48)];
    v4 = [*(*(a1 + 48) + 1024) _as_auxiliaryRemoteObjectWithRequestID:*(a1 + 56)];
    (*(*(a1 + 64) + 16))();
    [*(a1 + 48) _setRemoteViewController:*(a1 + 40)];
  }
}

void __67___ASExtensionViewController__beginNonUIRequest_connectionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = *(*(a1 + 32) + 1024);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67___ASExtensionViewController__beginNonUIRequest_connectionHandler___block_invoke_2;
    v21[3] = &unk_1E7AF7F88;
    objc_copyWeak(&v22, (a1 + 48));
    [v10 _sf_addHandlerForRequestIdentifier:v7 withBlock:v21];
    objc_destroyWeak(&v22);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67___ASExtensionViewController__beginNonUIRequest_connectionHandler___block_invoke_3;
  v15[3] = &unk_1E7AF7FB0;
  v16 = v9;
  v17 = v8;
  v11 = *(a1 + 40);
  v18 = *(a1 + 32);
  v19 = v7;
  v20 = v11;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

void __67___ASExtensionViewController__beginNonUIRequest_connectionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _extensionRequestDidFinish:a2];
}

void __67___ASExtensionViewController__beginNonUIRequest_connectionHandler___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke_3_cold_1(v2, v3);
    }

    [*(a1 + 48) _requestDidFailWithError:0 completion:0];
  }

  else
  {
    v4 = [*(*(a1 + 48) + 1024) _extensionContextForUUID:*(a1 + 56)];
    v5 = *(a1 + 48);
    v6 = *(v5 + 1000);
    *(v5 + 1000) = v4;

    [*(*(a1 + 48) + 1000) setDelegate:?];
    v7 = [*(*(a1 + 48) + 1024) _as_auxiliaryRemoteObjectWithRequestID:*(a1 + 56)];
    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __85___ASExtensionViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateNonUIRequestTimerIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1000);
  if (v3 && *(a1 + 40) == v3 && (v4 = [*(a1 + 48) safari_matchesErrorDomain:@"ASExtensionErrorDomain" andCode:100], v2 = *(a1 + 32), v4) && *(v2 + 1016) == 1)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B1C8D000, v5, OS_LOG_TYPE_DEFAULT, "Extension requires user interaction - re-running with UI", v9, 2u);
    }

    (*(*(a1 + 56) + 16))();
    return [*(a1 + 32) _nonUIRequestDidRequireUserInteraction];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);

    return [v2 _requestDidFailWithError:v7 completion:v8];
  }
}

void __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke_3_cold_1(void **a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to get remote view controller: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end