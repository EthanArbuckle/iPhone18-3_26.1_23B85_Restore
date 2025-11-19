@interface SFSafariViewControllerPrewarmingSession
@end

@implementation SFSafariViewControllerPrewarmingSession

void __73___SFSafariViewControllerPrewarmingSession__sharedSessionCreateIfNeeded___block_invoke()
{
  v0 = objc_alloc_init(_SFSafariViewControllerPrewarmingSession);
  v1 = _sharedSessionCreateIfNeeded__sharedSession;
  _sharedSessionCreateIfNeeded__sharedSession = v0;
}

uint64_t __69___SFSafariViewControllerPrewarmingSession_tokenWithIDDidInvalidate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _hasValidTokens];
  if ((result & 1) == 0)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPrewarming();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "All tokens are invalidated, disconnecting from service", v4, 2u);
    }

    return [*(a1 + 32) _disconnectFromService];
  }

  return result;
}

void __61___SFSafariViewControllerPrewarmingSession__connectToService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 40), a2);
    v10 = [*(*(a1 + 32) + 40) serviceViewControllerProxy];
    [*(*(a1 + 32) + 8) setTarget:v10];

    [*(*(a1 + 32) + 40) setDelegate:?];
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPrewarming();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __61___SFSafariViewControllerPrewarmingSession__connectToService__block_invoke_cold_1(v11, v7);
    }
  }
}

void __98___SFSafariViewControllerPrewarmingSession_remoteViewController_viewServiceDidTerminateWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resume];
}

void __61___SFSafariViewControllerPrewarmingSession__connectToService__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to get remote view controller with error: %{public}@", &v5, 0xCu);
}

@end