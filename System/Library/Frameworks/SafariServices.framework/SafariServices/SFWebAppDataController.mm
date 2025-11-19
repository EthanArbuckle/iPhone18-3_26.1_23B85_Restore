@interface SFWebAppDataController
- (SFWebAppDataController)initWithWebClipIdentifier:(id)a3;
- (void)clearWebsiteDataWithCompletion:(id)a3;
@end

@implementation SFWebAppDataController

- (SFWebAppDataController)initWithWebClipIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFWebAppDataController;
  v6 = [(SFWebAppDataController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webClipIdentifier, a3);
    v8 = v7;
  }

  return v7;
}

- (void)clearWebsiteDataWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__block_literal_global_50;
  }

  v6 = _Block_copy(v5);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__SFWebAppDataController_clearWebsiteDataWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E84909E8;
  v15 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);

  if (self->_remoteViewController)
  {
    v8[2](v8);
  }

  else
  {
    v9 = [(_UIAsyncInvocation *)self->_cancelViewServiceRequest invoke];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__SFWebAppDataController_clearWebsiteDataWithCompletion___block_invoke_3;
    v12[3] = &unk_1E84907C0;
    v12[4] = self;
    v13 = v8;
    v10 = [_SFWebAppViewController requestViewControllerWithConnectionHandler:v12];
    cancelViewServiceRequest = self->_cancelViewServiceRequest;
    self->_cancelViewServiceRequest = v10;
  }
}

uint64_t __57__SFWebAppDataController_clearWebsiteDataWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return notify_post("com.apple.webclip.uninstalled");
}

void __57__SFWebAppDataController_clearWebsiteDataWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
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
    v11 = *(*(a1 + 32) + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__SFWebAppDataController_clearWebsiteDataWithCompletion___block_invoke_3;
    v14[3] = &unk_1E8490798;
    v12 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v12;
    [v10 clearWebsiteDataWithWebClipIdentifier:v11 completion:v14];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXSVCDeletion();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __57__SFWebAppDataController_clearWebsiteDataWithCompletion___block_invoke_3_cold_1(v13, v7);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __57__SFWebAppDataController_clearWebsiteDataWithCompletion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

void __57__SFWebAppDataController_clearWebsiteDataWithCompletion___block_invoke_3_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to get remote view for web clip data clearing with error: %{public}@", &v5, 0xCu);
}

@end