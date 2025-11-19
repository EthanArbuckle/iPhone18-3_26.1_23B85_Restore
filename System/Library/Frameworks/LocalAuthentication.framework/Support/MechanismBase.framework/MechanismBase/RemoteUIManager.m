@interface RemoteUIManager
+ (id)sharedInstance;
- (RemoteUIManager)init;
- (RemoteUIManager)initWithConfig:(id)a3;
- (void)anonymousListenerForHostedController:(int64_t)a3 mechanism:(id)a4 reply:(id)a5;
- (void)checkHasPendingUIRequestsForRemoteUI:(id)a3 completion:(id)a4;
- (void)connectRemoteUI:(id)a3 requestID:(id)a4 reply:(id)a5;
- (void)connectionToViewServiceInvalidatedForIdentifier:(id)a3 reply:(id)a4;
- (void)didReceiveExpectedError:(id)a3;
- (void)didReceiveUnexpectedError:(id)a3;
- (void)didSuccessfullyFinishForRequestIdentifier:(id)a3;
- (void)disconnectRemoteUI;
- (void)dismissRemoteUI:(id)a3 uiMechanism:(id)a4 uiDisappeared:(BOOL)a5 shouldIdle:(BOOL)a6 reply:(id)a7;
- (void)prepareForHostedController:(int64_t)a3 mechanism:(id)a4 reply:(id)a5;
- (void)setEndpointProvider:(id)a3;
- (void)showUIWithParams:(id)a3 reply:(id)a4;
@end

@implementation RemoteUIManager

- (RemoteUIManager)init
{
  v3 = objc_alloc_init(RemoteUIManagerConfig);
  v4 = [(RemoteUIManager *)self initWithConfig:v3];

  return v4;
}

- (RemoteUIManager)initWithConfig:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RemoteUIManager;
  v5 = [(RemoteUIManager *)&v12 init];
  if (v5)
  {
    v6 = [v4 queue];
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = [v4 activator];
    [v8 setDelegate:v5];

    v9 = [[_RemoteUIManager alloc] initWithConfig:v4];
    responder = v5->_responder;
    v5->_responder = v9;
  }

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[RemoteUIManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __33__RemoteUIManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(RemoteUIManager);

  return MEMORY[0x2821F96F8]();
}

- (void)connectRemoteUI:(id)a3 requestID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RemoteUIManager_connectRemoteUI_requestID_reply___block_invoke;
  block[3] = &unk_278A626C8;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __51__RemoteUIManager_connectRemoteUI_requestID_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained connectRemoteUI:*(a1 + 32) requestID:*(a1 + 40) reply:*(a1 + 48)];
}

- (void)disconnectRemoteUI
{
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__RemoteUIManager_disconnectRemoteUI__block_invoke;
  v4[3] = &unk_278A626F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__RemoteUIManager_disconnectRemoteUI__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained disconnectRemoteUI];
}

- (void)checkHasPendingUIRequestsForRemoteUI:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__RemoteUIManager_checkHasPendingUIRequestsForRemoteUI_completion___block_invoke;
  v11[3] = &unk_278A62718;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __67__RemoteUIManager_checkHasPendingUIRequestsForRemoteUI_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained checkHasPendingUIRequestsForRemoteUI:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)connectionToViewServiceInvalidatedForIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__RemoteUIManager_connectionToViewServiceInvalidatedForIdentifier_reply___block_invoke;
  v11[3] = &unk_278A62718;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __73__RemoteUIManager_connectionToViewServiceInvalidatedForIdentifier_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained connectionToViewServiceInvalidatedForIdentifier:*(a1 + 32) reply:*(a1 + 40)];
}

- (void)dismissRemoteUI:(id)a3 uiMechanism:(id)a4 uiDisappeared:(BOOL)a5 shouldIdle:(BOOL)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke;
  v19[3] = &unk_278A62740;
  objc_copyWeak(&v23, &location);
  v20 = v12;
  v21 = v13;
  v24 = a5;
  v25 = a6;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(queue, v19);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __78__RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained dismissRemoteUI:*(a1 + 32) uiMechanism:*(a1 + 40) uiDisappeared:*(a1 + 64) shouldIdle:*(a1 + 65) reply:*(a1 + 48)];
}

- (void)anonymousListenerForHostedController:(int64_t)a3 mechanism:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RemoteUIManager_anonymousListenerForHostedController_mechanism_reply___block_invoke;
  block[3] = &unk_278A62768;
  objc_copyWeak(v16, &location);
  v16[1] = a3;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __72__RemoteUIManager_anonymousListenerForHostedController_mechanism_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained anonymousListenerForHostedController:*(a1 + 56) mechanism:*(a1 + 32) reply:*(a1 + 40)];
}

- (void)prepareForHostedController:(int64_t)a3 mechanism:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RemoteUIManager_prepareForHostedController_mechanism_reply___block_invoke;
  block[3] = &unk_278A62768;
  objc_copyWeak(v16, &location);
  v16[1] = a3;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __62__RemoteUIManager_prepareForHostedController_mechanism_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained prepareForHostedController:*(a1 + 56) mechanism:*(a1 + 32) reply:*(a1 + 40)];
}

- (void)showUIWithParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__RemoteUIManager_showUIWithParams_reply___block_invoke;
  v11[3] = &unk_278A62718;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __42__RemoteUIManager_showUIWithParams_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained showUIWithParams:*(a1 + 32) reply:*(a1 + 40)];
}

- (void)setEndpointProvider:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__RemoteUIManager_setEndpointProvider___block_invoke;
  block[3] = &unk_278A62790;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __39__RemoteUIManager_setEndpointProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setEndpointProvider:*(a1 + 32)];
}

- (void)didReceiveExpectedError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RemoteUIManager_didReceiveExpectedError___block_invoke;
  block[3] = &unk_278A62790;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__RemoteUIManager_didReceiveExpectedError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didReceiveExpectedError:*(a1 + 32)];
}

- (void)didReceiveUnexpectedError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__RemoteUIManager_didReceiveUnexpectedError___block_invoke;
  block[3] = &unk_278A62790;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__RemoteUIManager_didReceiveUnexpectedError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didReceiveUnexpectedError:*(a1 + 32)];
}

- (void)didSuccessfullyFinishForRequestIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self->_responder);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RemoteUIManager_didSuccessfullyFinishForRequestIdentifier___block_invoke;
  block[3] = &unk_278A62790;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__RemoteUIManager_didSuccessfullyFinishForRequestIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didSuccessfullyFinishForRequestIdentifier:*(a1 + 32)];
}

uint64_t __43___RemoteUIManager_showUIWithParams_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _assignPendingRequest:*(a1 + 32) reply:*(a1 + 40)];
    v4 = [v3[8] activator];
    v5 = [v4 activateUIWithParams:*(a1 + 32)];

    [v3 _setupUiActivationTimeoutForParams:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(*(a1 + 32) + 24) == *(a1 + 40))
  {
    v4 = LALogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 64);
      v15[0] = 67109378;
      v15[1] = v5;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_238B95000, v4, OS_LOG_TYPE_DEFAULT, "UI dismissed - index:%d reason:%{public}@", v15, 0x12u);
    }

    v6 = *(a1 + 48);
    v7 = [*(*(a1 + 32) + 16) uiMechanism];

    if (v6 == v7)
    {
      v8 = [*(*(a1 + 32) + 16) uiMechanism];
      [v8 disconnectRemoteUI];

      v9 = *(a1 + 32);
      v10 = *(v9 + 16);
      *(v9 + 16) = 0;
    }

    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = 0;

    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))();
    }

    [*(a1 + 32) _activatePendingUIIfNeeded];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke_98(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[8] queue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke_2;
    v5[3] = &unk_278A62808;
    v7 = a1[5];
    v6 = a1[4];
    dispatch_async(v4, v5);
  }
}

void __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"reply from %@", *(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && *(a1 + 56) == WeakRetained[14])
  {
    v5 = WeakRetained;
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"timeout for %@", *(a1 + 32)];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

void __46___RemoteUIManager__activatePendingUIIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = LALogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_238B95000, v2, OS_LOG_TYPE_DEFAULT, "Activating pending UI request.", v3, 2u);
    }

    [WeakRetained _activateUi];
  }
}

void __55___RemoteUIManager__setupUiActivationTimeoutForParams___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 48) == WeakRetained[13])
  {
    v5 = WeakRetained;
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"UI activation timed out after %d seconds", *(a1 + 40)];
    v4 = [MEMORY[0x277CD47F0] silentInternalErrorWithMessage:v3];
    [v5 _replyOnceToShowUi:0 error:v4];

    WeakRetained = v5;
  }
}

void __52___RemoteUIManager_connectRemoteUI_requestID_reply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = LALogForCategory();
  v11 = v10;
  if (v8)
  {
    v12 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v12 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(v10, v12))
  {
    v13 = @"success";
    v14 = *(a1 + 32);
    if (v8)
    {
      v13 = v8;
    }

    v16 = 138543874;
    v17 = v7;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_238B95000, v11, v12, "connecting %{public}@ with %{public}@: %{public}@", &v16, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

void __52___RemoteUIManager_connectRemoteUI_requestID_reply___block_invoke_131(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    (*(*(a1 + 40) + 16))();
    [WeakRetained[2] setRemoteUI:*(a1 + 32)];
    [WeakRetained _replyOnceToShowUi:v10 != 0 error:v8];
  }
}

@end