@interface _RemoteUIManager
- (_RemoteUIManager)init;
- (_RemoteUIManager)initWithConfig:(id)config;
- (id)anonymousListener;
- (void)_activatePendingUIIfNeeded;
- (void)_activateUi;
- (void)_assignPendingRequest:(id)request reply:(id)reply;
- (void)_replyOnceToShowUi:(BOOL)ui error:(id)error;
- (void)_setupUiActivationTimeoutForParams:(id)params;
- (void)anonymousListenerForHostedController:(int64_t)controller mechanism:(id)mechanism reply:(id)reply;
- (void)checkHasPendingUIRequestsForRemoteUI:(id)i completion:(id)completion;
- (void)connectRemoteUI:(id)i requestID:(id)d reply:(id)reply;
- (void)connectionToViewServiceInvalidatedForIdentifier:(id)identifier reply:(id)reply;
- (void)didReceiveExpectedError:(id)error;
- (void)didReceiveUnexpectedError:(id)error;
- (void)didSuccessfullyFinishForRequestIdentifier:(id)identifier;
- (void)disconnectRemoteUI;
- (void)dismissRemoteUI:(id)i uiMechanism:(id)mechanism uiDisappeared:(BOOL)disappeared shouldIdle:(BOOL)idle reply:(id)reply;
- (void)prepareForHostedController:(int64_t)controller mechanism:(id)mechanism reply:(id)reply;
- (void)showUIWithParams:(id)params reply:(id)reply;
@end

@implementation _RemoteUIManager

- (_RemoteUIManager)init
{
  v3 = objc_alloc_init(RemoteUIManagerConfig);
  v4 = [(_RemoteUIManager *)self initWithConfig:v3];

  return v4;
}

- (_RemoteUIManager)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = _RemoteUIManager;
  v6 = [(_RemoteUIManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
  }

  return v7;
}

- (void)showUIWithParams:(id)params reply:(id)reply
{
  v30 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  replyCopy = reply;
  v9 = LALogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = paramsCopy;
    _os_log_impl(&dword_238B95000, v9, OS_LOG_TYPE_DEFAULT, "showing UI: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&self->_pendingRequest, params);
  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __43___RemoteUIManager_showUIWithParams_reply___block_invoke;
  v21 = &unk_278A627B8;
  objc_copyWeak(&v24, &location);
  v10 = paramsCopy;
  v22 = v10;
  v11 = replyCopy;
  v23 = v11;
  v12 = MEMORY[0x23EE73C30](&v18);
  pendingUiActivationBlock = self->_pendingUiActivationBlock;
  self->_pendingUiActivationBlock = v12;

  if (self->_dismissingUi)
  {
    v14 = LALogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      dismissingUi = self->_dismissingUi;
      dismissUiCounter = self->_dismissUiCounter;
      *buf = 138543618;
      v27 = dismissingUi;
      v28 = 1024;
      v29 = dismissUiCounter;
      _os_log_impl(&dword_238B95000, v14, OS_LOG_TYPE_DEFAULT, "Won't activate UI now because %{public}@ is being dismissed (counter:%d)", buf, 0x12u);
    }
  }

  else
  {
    [(_RemoteUIManager *)self _activateUi:v18];
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)anonymousListenerForHostedController:(int64_t)controller mechanism:(id)mechanism reply:(id)reply
{
  replyCopy = reply;
  mechanismCopy = mechanism;
  v12 = [[RemoteUIParams alloc] initWithMechanism:mechanismCopy hostedRemoteController:controller];

  identifier = [(RemoteUIParams *)v12 identifier];
  v11 = [(_RemoteUIManager *)self _anonymousListenerWithIdentifier:identifier];

  replyCopy[2](replyCopy, v11);
}

- (void)prepareForHostedController:(int64_t)controller mechanism:(id)mechanism reply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  mechanismCopy = mechanism;
  replyCopy = reply;
  v10 = LALogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = mechanismCopy;
    _os_log_impl(&dword_238B95000, v10, OS_LOG_TYPE_DEFAULT, "preparing %{public}@ for remote view controller scenario", &v13, 0xCu);
  }

  v11 = [[RemoteUIParams alloc] initWithMechanism:mechanismCopy hostedRemoteController:controller];
  [(_RemoteUIManager *)self _assignPendingRequest:v11 reply:replyCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connectionToViewServiceInvalidatedForIdentifier:(id)identifier reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = LALogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = identifierCopy;
    _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_DEFAULT, "connectionToViewServiceInvalidatedForIdentifier: %@", &v17, 0xCu);
  }

  v9 = [MEMORY[0x277CD47F0] silentInternalErrorWithMessage:@"UI service connection invalidated."];
  if (identifierCopy && (-[RemoteUIParams identifier](self->_request, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [identifierCopy isEqualToString:v10], v10, (v11 & 1) == 0))
  {
    v12 = LALogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(RemoteUIParams *)self->_request identifier];
      v17 = 138412546;
      v18 = identifier;
      v19 = 2112;
      v20 = identifierCopy;
      _os_log_impl(&dword_238B95000, v12, OS_LOG_TYPE_DEFAULT, "Current request identifier: %@ is different from the connection identifier: %@", &v17, 0x16u);
    }
  }

  else if (self->_pendingShowUiReply)
  {
    [(_RemoteUIManager *)self _replyOnceToShowUi:0 error:v9];
  }

  else
  {
    uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
    [uiMechanism uiFailureWithError:v9];

    request = self->_request;
    self->_request = 0;
  }

  replyCopy[2](replyCopy);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dismissRemoteUI:(id)i uiMechanism:(id)mechanism uiDisappeared:(BOOL)disappeared shouldIdle:(BOOL)idle reply:(id)reply
{
  idleCopy = idle;
  disappearedCopy = disappeared;
  v62 = *MEMORY[0x277D85DE8];
  iCopy = i;
  mechanismCopy = mechanism;
  replyCopy = reply;
  v16 = replyCopy;
  v41 = mechanismCopy;
  if (iCopy)
  {
    v17 = self->_dismissUiCounter + 1;
    self->_dismissUiCounter = v17;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke;
    v51[3] = &unk_278A627E0;
    v51[4] = self;
    v18 = iCopy;
    v52 = v18;
    v55 = v17;
    v19 = mechanismCopy;
    v53 = v19;
    v39 = v16;
    v54 = v16;
    v40 = MEMORY[0x23EE73C30](v51);
    v20 = LALogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
      *buf = 138543874;
      v57 = v18;
      v58 = 2114;
      v59 = uiMechanism;
      v60 = 1024;
      v61 = v17;
      _os_log_impl(&dword_238B95000, v20, OS_LOG_TYPE_DEFAULT, "Dismissing %{public}@ that belongs to %{public}@, index:%d", buf, 0x1Cu);
    }

    objc_storeStrong(&self->_dismissingUi, i);
    if (disappearedCopy)
    {
      (v40)[2](v40, @"immediate reply, UI is already down");
    }

    else
    {
      self->_ignoreDeactivation = 1;
      objc_initWeak(buf, self);
      if (idleCopy)
      {
        request = [v19 request];
        payload = [request payload];
        v28 = [payload objectForKeyedSubscript:*MEMORY[0x277D23ED8]];

        endpoint = [v28 endpoint];
      }

      else
      {
        endpoint = 0;
      }

      activator = [(RemoteUIManagerConfig *)self->_config activator];
      request2 = [v19 request];
      v32 = [activator hasInvalidatedUIForRequest:{objc_msgSend(request2, "identifier")}];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke_98;
      v47[3] = &unk_278A62830;
      objc_copyWeak(&v50, buf);
      v33 = v40;
      v49 = v33;
      v34 = v18;
      v48 = v34;
      [v34 dismissRemoteUIWithIdleEndpoint:endpoint wasInvalidated:v32 completionHandler:v47];

      [(RemoteUIManagerConfig *)self->_config deactivateTimeout];
      v36 = dispatch_time(0, (v35 * 1000000000.0));
      queue = [(RemoteUIManagerConfig *)self->_config queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __79___RemoteUIManager_dismissRemoteUI_uiMechanism_uiDisappeared_shouldIdle_reply___block_invoke_3;
      block[3] = &unk_278A62858;
      objc_copyWeak(&v45, buf);
      v46 = v17;
      v44 = v33;
      v43 = v34;
      dispatch_after(v36, queue, block);

      objc_destroyWeak(&v45);
      objc_destroyWeak(&v50);

      objc_destroyWeak(buf);
    }

    v25 = v39;
  }

  else
  {
    v22 = replyCopy;
    if (self->_pendingShowUiReply)
    {
      self->_uiDismissedBeforeConnection = 1;
    }

    activator2 = [(RemoteUIManagerConfig *)self->_config activator];
    request3 = [mechanismCopy request];
    [activator2 invalidateUIForRequest:{objc_msgSend(request3, "identifier")}];

    v25 = v22;
    if (v22)
    {
      v22[2](v22);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_activatePendingUIIfNeeded
{
  if (self->_pendingUiActivationBlock)
  {
    uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
    if ([uiMechanism isRunning])
    {

LABEL_6:
      objc_initWeak(&location, self);
      queue = [(RemoteUIManagerConfig *)self->_config queue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46___RemoteUIManager__activatePendingUIIfNeeded__block_invoke;
      v13[3] = &unk_278A626F0;
      objc_copyWeak(&v14, &location);
      dispatch_async(queue, v13);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      return;
    }

    uiMechanism2 = [(RemoteUIParams *)self->_pendingRequest uiMechanism];
    uiMechanism3 = [(RemoteUIParams *)self->_request uiMechanism];
    v6 = uiMechanism3;
    if (uiMechanism2 == uiMechanism3)
    {
    }

    else
    {
      uiMechanism4 = [(RemoteUIParams *)self->_pendingRequest uiMechanism];
      isRunning = [uiMechanism4 isRunning];

      if (isRunning)
      {
        goto LABEL_6;
      }
    }

    v10 = LALogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_RemoteUIManager *)v10 _activatePendingUIIfNeeded];
    }

    pendingUiActivationBlock = self->_pendingUiActivationBlock;
    self->_pendingUiActivationBlock = 0;

    pendingRequest = self->_pendingRequest;
    self->_pendingRequest = 0;
  }
}

- (void)_activateUi
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[_RemoteUIManager _activateUi]";
  v5 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_238B95000, a2, OS_LOG_TYPE_DEBUG, "%s  on %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_assignPendingRequest:(id)request reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  v8 = LALogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uiMechanism = [(RemoteUIParams *)requestCopy uiMechanism];
    v20 = 138543362;
    v21 = uiMechanism;
    _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_INFO, "%{public}@ is waiting to connect with the remote UI", &v20, 0xCu);
  }

  v10 = MEMORY[0x277CD47F0];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"UI interrupted by another authentication"];
  v12 = [v10 errorWithCode:-4 message:v11];

  pendingShowUiReply = self->_pendingShowUiReply;
  if (pendingShowUiReply)
  {
    pendingShowUiReply[2](pendingShowUiReply, 0, v12);
  }

  else
  {
    uiMechanism2 = [(RemoteUIParams *)self->_request uiMechanism];
    [uiMechanism2 failAuthenticationWithError:v12];
  }

  request = self->_request;
  self->_request = requestCopy;
  v16 = requestCopy;

  v17 = MEMORY[0x23EE73C30](replyCopy);
  v18 = self->_pendingShowUiReply;
  self->_pendingShowUiReply = v17;

  self->_uiDismissedBeforeConnection = 0;
  ++self->_showUiCounter;

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setupUiActivationTimeoutForParams:(id)params
{
  v18 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  showUiCounter = self->_showUiCounter;
  objc_initWeak(&location, self);
  [(RemoteUIManagerConfig *)self->_config effectiveActivateTimeoutForParams:paramsCopy];
  v7 = v6;
  v8 = LALogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v7;
    _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_DEFAULT, "Setting up activation watchdog with %.2f seconds timeout", buf, 0xCu);
  }

  v9 = dispatch_time(0, (*&v7 * 1000000000.0));
  queue = [(RemoteUIManagerConfig *)self->_config queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55___RemoteUIManager__setupUiActivationTimeoutForParams___block_invoke;
  v12[3] = &unk_278A62880;
  objc_copyWeak(v13, &location);
  v14 = showUiCounter;
  v13[1] = v7;
  dispatch_after(v9, queue, v12);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_replyOnceToShowUi:(BOOL)ui error:(id)error
{
  uiCopy = ui;
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_pendingShowUiReply && ([MEMORY[0x277D24060] error:errorCopy hasCode:*MEMORY[0x277D23E88] subcode:*MEMORY[0x277D23EC8]] & 1) == 0)
  {
    v7 = LALogForCategory();
    if ([MEMORY[0x277CD47F0] error:errorCopy hasCode:-1000])
    {
      v8 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v8 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(v7, v8))
    {
      v9 = @"success";
      if (!uiCopy)
      {
        v9 = errorCopy;
      }

      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_238B95000, v7, v8, "showUI result: %{public}@", &v13, 0xCu);
    }

    (*(self->_pendingShowUiReply + 2))();
    pendingShowUiReply = self->_pendingShowUiReply;
    self->_pendingShowUiReply = 0;

    if (!uiCopy)
    {
      request = self->_request;
      self->_request = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connectRemoteUI:(id)i requestID:(id)d reply:(id)reply
{
  iCopy = i;
  dCopy = d;
  replyCopy = reply;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52___RemoteUIManager_connectRemoteUI_requestID_reply___block_invoke;
  v25[3] = &unk_278A628A8;
  v11 = iCopy;
  v26 = v11;
  v12 = replyCopy;
  v27 = v12;
  v13 = MEMORY[0x23EE73C30](v25);
  uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];

  if (!uiMechanism)
  {
    v16 = MEMORY[0x277CD47F0];
    v17 = @"No pending UI mechanism.";
LABEL_7:
    v18 = [v16 errorWithCode:-1000 message:v17];
    (v13)[2](v13, 0, 0, v18);

    goto LABEL_9;
  }

  if (!self->_pendingShowUiReply)
  {
    v16 = MEMORY[0x277CD47F0];
    v17 = @"UI mechanism already connected.";
    goto LABEL_7;
  }

  if (self->_uiDismissedBeforeConnection)
  {
    v15 = [MEMORY[0x277CD47F0] errorWithCode:-1000 message:@"UI was already dismissed from server side."];
    (v13)[2](v13, 0, 0, v15);
    [(_RemoteUIManager *)self _replyOnceToShowUi:0 error:v15];
  }

  else
  {
    objc_initWeak(&location, self);
    uiMechanism2 = [(RemoteUIParams *)self->_request uiMechanism];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __52___RemoteUIManager_connectRemoteUI_requestID_reply___block_invoke_131;
    v20[3] = &unk_278A628D0;
    objc_copyWeak(&v23, &location);
    v22 = v13;
    v21 = v11;
    [uiMechanism2 connectRemoteUI:v21 requestID:dCopy reply:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

LABEL_9:
}

- (void)disconnectRemoteUI
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
    v7 = 138543362;
    v8 = uiMechanism;
    _os_log_impl(&dword_238B95000, v3, OS_LOG_TYPE_DEFAULT, "Disconnecting %{public}@ from remote UI.", &v7, 0xCu);
  }

  uiMechanism2 = [(RemoteUIParams *)self->_request uiMechanism];
  [uiMechanism2 disconnectRemoteUI];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkHasPendingUIRequestsForRemoteUI:(id)i completion:(id)completion
{
  iCopy = i;
  completionCopy = completion;
  uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
  isRunning = [uiMechanism isRunning];

  if (isRunning)
  {
    remoteUI = [(RemoteUIParams *)self->_request remoteUI];

    if (remoteUI == iCopy)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 2 * (self->_pendingRequest != 0);
  }

  completionCopy[2](completionCopy, v10);
}

- (id)anonymousListener
{
  identifier = [(RemoteUIParams *)self->_request identifier];
  v4 = [(_RemoteUIManager *)self _anonymousListenerWithIdentifier:identifier];

  return v4;
}

- (void)didReceiveExpectedError:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_ignoreDeactivation)
  {
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = errorCopy;
      _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring expected deactivation with error: %@", &v7, 0xCu);
    }

    self->_ignoreDeactivation = 0;
  }

  else
  {
    [(_RemoteUIManager *)self _replyOnceToShowUi:0 error:errorCopy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveUnexpectedError:(id)error
{
  if (self->_pendingShowUiReply)
  {
    errorCopy = error;
    [(_RemoteUIManager *)self _replyOnceToShowUi:0 error:?];
  }

  else
  {
    request = self->_request;
    errorCopy2 = error;
    errorCopy = [(RemoteUIParams *)request uiMechanism];
    [errorCopy failAuthenticationWithError:errorCopy2];
  }
}

- (void)didSuccessfullyFinishForRequestIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  ignoreDeactivation = self->_ignoreDeactivation;
  v6 = LALogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (ignoreDeactivation)
  {
    if (v7)
    {
      v13 = 138543362;
      v14 = identifierCopy;
      _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "Activator did successfully finish request identifier: %{public}@ but waiting for UI to be dismissed", &v13, 0xCu);
    }

    self->_ignoreDeactivation = 0;
  }

  else
  {
    if (v7)
    {
      v13 = 138543362;
      v14 = identifierCopy;
      _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "Activator did successfully finish request identifier: %{public}@", &v13, 0xCu);
    }

    identifier = [(RemoteUIParams *)self->_request identifier];
    v9 = [identifierCopy isEqualToString:identifier];

    if (v9)
    {
      uiMechanism = [(RemoteUIParams *)self->_request uiMechanism];
      [uiMechanism disconnectRemoteUI];

      request = self->_request;
      self->_request = 0;
    }

    [(_RemoteUIManager *)self _activatePendingUIIfNeeded];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end