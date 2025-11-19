@interface SFSafariViewControllerDataStore
+ (SFSafariViewControllerDataStore)defaultDataStore;
- (id)_init;
- (void)clearWebsiteDataWithCompletionHandler:(void *)completion;
@end

@implementation SFSafariViewControllerDataStore

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SFSafariViewControllerDataStore;
  return [(SFSafariViewControllerDataStore *)&v3 init];
}

+ (SFSafariViewControllerDataStore)defaultDataStore
{
  if (defaultDataStore_onceToken != -1)
  {
    +[SFSafariViewControllerDataStore defaultDataStore];
  }

  v3 = defaultDataStore_defaultDataStore;

  return v3;
}

void __51__SFSafariViewControllerDataStore_defaultDataStore__block_invoke()
{
  v0 = [[SFSafariViewControllerDataStore alloc] _init];
  v1 = defaultDataStore_defaultDataStore;
  defaultDataStore_defaultDataStore = v0;
}

- (void)clearWebsiteDataWithCompletionHandler:(void *)completion
{
  v4 = completion;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__block_literal_global_2;
  }

  if (self->_remoteViewController)
  {
    v5[2](v5);
  }

  else
  {
    v6 = [(_UIAsyncInvocation *)self->_cancelViewServiceRequest invoke];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__SFSafariViewControllerDataStore_clearWebsiteDataWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E84907C0;
    v9[4] = self;
    v10 = v5;
    v7 = [SFBrowserRemoteViewController requestViewControllerWithConnectionHandler:v9];
    cancelViewServiceRequest = self->_cancelViewServiceRequest;
    self->_cancelViewServiceRequest = v7;
  }
}

void __73__SFSafariViewControllerDataStore_clearWebsiteDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 24), a2);
    v10 = [*(*(a1 + 32) + 24) serviceViewControllerProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__SFSafariViewControllerDataStore_clearWebsiteDataWithCompletionHandler___block_invoke_4;
    v13[3] = &unk_1E8490798;
    v11 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v11;
    [v10 clearWebsiteDataWithCompletionHandler:v13];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXSVCDeletion();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __73__SFSafariViewControllerDataStore_clearWebsiteDataWithCompletionHandler___block_invoke_2_cold_1(v12, v7);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __73__SFSafariViewControllerDataStore_clearWebsiteDataWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

void __73__SFSafariViewControllerDataStore_clearWebsiteDataWithCompletionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to get remote view controller for website data deletion with error: %{public}@", &v5, 0xCu);
}

@end