@interface ASCAuthorizationPresenter
- (ASCAuthorizationPresenter)init;
- (ASCAuthorizationPresenterCredentialExchangeDelegate)credentialExchangeDelegate;
- (ASCAuthorizationPresenterDelegate)delegate;
- (BOOL)_isErrorDueToNewAlertHandleRequest:(id)request;
- (BOOL)_isPresentationContextValid:(id)valid error:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_invalidateWithError:(id)error;
- (void)_performQueuedUpdatesIfNecessary;
- (void)authorizationRequestFinishedWithCredential:(id)credential error:(id)error completionHandler:(id)handler;
- (void)authorizationRequestInitiatedWithLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler;
- (void)cableClientWillAuthenticate;
- (void)cableClientWillConnect;
- (void)cancelCurrentCredentialExchangeOperation;
- (void)didIgnorePINRequest;
- (void)dismiss;
- (void)dismissWithError:(id)error;
- (void)getExportedCredentialData:(id)data;
- (void)initializeClientToViewServiceConnection;
- (void)presentAuthorizationWithContext:(id)context forProcess:(id)process completionHandler:(id)handler;
- (void)presentError:(id)error forService:(id)service completionHandler:(id)handler;
- (void)presentExportFlowForProcess:(id)process windowSceneIdentifier:(id)identifier completionHandler:(id)handler;
- (void)presentNewPINEntryInterfaceWithMinLength:(unint64_t)length;
- (void)presentPINEntryInterface;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)setTokenForImport:(id)import;
- (void)startCABLEAuthenticationWithCompletionHandler:(id)handler;
- (void)updateInterfaceForUserVisibleError:(id)error;
- (void)updateInterfaceWithLoginChoices:(id)choices;
- (void)userSelectedImportingDestinationWithBundleIdentfier:(id)identfier;
- (void)validateUserEnteredPIN:(id)n completionHandler:(id)handler;
@end

@implementation ASCAuthorizationPresenter

- (ASCAuthorizationPresenter)init
{
  v9.receiver = self;
  v9.super_class = ASCAuthorizationPresenter;
  v2 = [(ASCAuthorizationPresenter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.AuthenticationServicesCore.AuthorizationPresenterInvalidationQueue", 0);
    invalidationQueue = v2->_invalidationQueue;
    v2->_invalidationQueue = v3;

    v5 = dispatch_queue_create("com.apple.AuthenticationServicesCore.AuthorizationPresenterInterfaceUpdateQueue", 0);
    interfaceUpdateQueue = v2->_interfaceUpdateQueue;
    v2->_interfaceUpdateQueue = v5;

    v7 = v2;
  }

  return v2;
}

- (void)presentAuthorizationWithContext:(id)context forProcess:(id)process completionHandler:(id)handler
{
  v49[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  processCopy = process;
  handlerCopy = handler;
  v45 = 0;
  v11 = [(ASCAuthorizationPresenter *)self _isPresentationContextValid:contextCopy error:&v45];
  v12 = v45;
  if (v11)
  {
    v44 = v12;
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:&v44];
    v14 = v44;

    if (v13)
    {
      v15 = _Block_copy(handlerCopy);
      credentialResultHandler = self->_credentialResultHandler;
      self->_credentialResultHandler = v15;

      anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
      remoteListener = self->_remoteListener;
      self->_remoteListener = anonymousListener;

      [(NSXPCListener *)self->_remoteListener setDelegate:self];
      [(NSXPCListener *)self->_remoteListener resume];
      v48 = @"ASCAuthorizationPresentationContextData";
      v49[0] = v13;
      v42 = v13;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v20 = objc_alloc(MEMORY[0x1E69D42A0]);
      v21 = [v20 initWithServiceName:authenticationServicesViewServiceBundleIdentifier viewControllerClassName:@"ASViewServiceViewController"];
      v22 = objc_opt_new();
      endpoint = [(NSXPCListener *)self->_remoteListener endpoint];
      _endpoint = [endpoint _endpoint];
      [v22 setXpcEndpoint:_endpoint];

      [v22 setUserInfo:v19];
      v43 = v21;
      v25 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v21 configurationContext:v22];
      remoteAlertHandle = self->_remoteAlertHandle;
      self->_remoteAlertHandle = v25;

      v27 = self->_remoteAlertHandle;
      v28 = objc_opt_respondsToSelector();
      v29 = self->_remoteAlertHandle;
      if (v28)
      {
        [(SBSRemoteAlertHandle *)v29 registerObserver:self];
      }

      else
      {
        [(SBSRemoteAlertHandle *)v29 addObserver:self];
      }

      v31 = MKBGetDeviceLockState();
      v13 = v42;
      if (v31 && v31 != 3)
      {
        v36 = WBS_LOG_CHANNEL_PREFIXAuthorization();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [ASCAuthorizationPresenter presentAuthorizationWithContext:forProcess:completionHandler:];
        }

        v37 = MEMORY[0x1E696ABC0];
        v46 = *MEMORY[0x1E696A588];
        v47 = @"Device must be unlocked to perform request.";
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:{1, v19}];
        v38 = [v37 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v32];
        [(ASCAuthorizationPresenter *)self _invalidateWithError:v38];

        v19 = v41;
      }

      else
      {
        v32 = objc_opt_new();
        if (processCopy)
        {
          v33 = [MEMORY[0x1E69D42D8] predicateForProcess:processCopy];
          [contextCopy windowSceneIdentifier];
          v34 = v40 = v19;
          [v33 setScenePersistentIdentifier:v34];

          v35 = [objc_alloc(MEMORY[0x1E69D42C0]) initWithTargetPredicate:v33];
          [v32 setPresentationTarget:v35];

          v19 = v40;
        }

        [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v32];
      }
    }

    else
    {
      v30 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [ASCAuthorizationPresenter presentAuthorizationWithContext:v30 forProcess:? completionHandler:?];
      }

      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
    v14 = v12;
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)presentError:(id)error forService:(id)service completionHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__ASCAuthorizationPresenter_presentError_forService_completionHandler___block_invoke;
  v10[3] = &unk_1E8160138;
  v11 = serviceCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = serviceCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __71__ASCAuthorizationPresenter_presentError_forService_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = _WBSLocalizedString();
  alertHeader = [v2 stringWithFormat:v3, *(a1 + 32)];

  v4 = [MEMORY[0x1E69C8860] currentDevice];
  v5 = [v4 deviceClass];

  if (v5 == 3)
  {
    v6 = MEMORY[0x1E696AEC0];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = MEMORY[0x1E696AEC0];
LABEL_5:
    v7 = _WBSLocalizedString();
    v8 = [v6 stringWithFormat:v7, *(a1 + 32)];

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = _WBSLocalizedString();
  CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, alertHeader, v8, v9, 0, 0, 0);
  (*(*(a1 + 40) + 16))();
}

- (void)updateInterfaceWithLoginChoices:(id)choices
{
  choicesCopy = choices;
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ASCAuthorizationPresenter_updateInterfaceWithLoginChoices___block_invoke;
  v7[3] = &unk_1E815FD28;
  v7[4] = self;
  v8 = choicesCopy;
  v6 = choicesCopy;
  dispatch_async(interfaceUpdateQueue, v7);
}

void __61__ASCAuthorizationPresenter_updateInterfaceWithLoginChoices___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  if (v3)
  {
    [v3 updateInterfaceWithLoginChoices:v1];
  }

  else
  {
    objc_storeStrong((v2 + 64), v1);
  }
}

- (void)presentPINEntryInterface
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ASCAuthorizationPresenter_presentPINEntryInterface__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

void *__53__ASCAuthorizationPresenter_presentPINEntryInterface__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 48);
  if (result)
  {
    return [result presentPINEntryInterface];
  }

  *(v1 + 72) = 1;
  return result;
}

- (void)presentNewPINEntryInterfaceWithMinLength:(unint64_t)length
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__ASCAuthorizationPresenter_presentNewPINEntryInterfaceWithMinLength___block_invoke;
  v4[3] = &unk_1E8160070;
  v4[4] = self;
  v4[5] = length;
  dispatch_async(interfaceUpdateQueue, v4);
}

uint64_t __70__ASCAuthorizationPresenter_presentNewPINEntryInterfaceWithMinLength___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 48))
  {
    return [*(v1 + 48) presentNewPINEntryInterfaceWithMinLength:*(result + 40)];
  }

  *(v1 + 73) = 1;
  *(*(result + 32) + 80) = *(result + 40);
  return result;
}

- (void)updateInterfaceForUserVisibleError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"com.apple.AuthenticationServicesCore.AuthorizationError"];

  if (v6)
  {
    code = [errorCopy code];
    if ((code - 4) < 4 || code == 13)
    {
      [(ASCViewServiceProtocol *)self->_viewServiceProxy updateInterfaceForUserVisibleError:errorCopy];
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ASCAuthorizationPresenter updateInterfaceForUserVisibleError:v9];
      }
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ASCAuthorizationPresenter updateInterfaceForUserVisibleError:v8];
    }
  }
}

- (void)dismiss
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ASCAuthorizationPresenter_dismiss__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

- (void)dismissWithError:(id)error
{
  errorCopy = error;
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ASCAuthorizationPresenter_dismissWithError___block_invoke;
  v7[3] = &unk_1E815FD28;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(interfaceUpdateQueue, v7);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    *location = 0u;
    v21 = 0u;
  }

  HasEntitlement = WBSAuditTokenHasEntitlement();
  if (HasEntitlement)
  {
    objc_storeStrong(&self->_viewServiceConnection, connection);
    v10 = +[ASCAuthorizationPresenterHostInterface xpcInterface];
    [(NSXPCConnection *)self->_viewServiceConnection setExportedInterface:v10];

    [(NSXPCConnection *)self->_viewServiceConnection setExportedObject:self];
    v11 = +[ASCViewServiceInterface xpcInterface];
    [(NSXPCConnection *)self->_viewServiceConnection setRemoteObjectInterface:v11];

    objc_initWeak(location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__ASCAuthorizationPresenter_listener_shouldAcceptNewConnection___block_invoke;
    v18[3] = &unk_1E8160160;
    objc_copyWeak(&v19, location);
    [(NSXPCConnection *)self->_viewServiceConnection setInvalidationHandler:v18];
    [(NSXPCConnection *)self->_viewServiceConnection resume];
    v12 = [(NSXPCConnection *)self->_viewServiceConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_5];
    viewServiceProxy = self->_viewServiceProxy;
    self->_viewServiceProxy = v12;

    [(ASCAuthorizationPresenter *)self _performQueuedUpdatesIfNecessary];
    v14 = WBS_LOG_CHANNEL_PREFIXServiceLifecycle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1C20AD000, v14, OS_LOG_TYPE_DEFAULT, "Accepting connection", v17, 2u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ASCAuthorizationPresenter listener:shouldAcceptNewConnection:];
    }

    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
  }

  return HasEntitlement;
}

void __64__ASCAuthorizationPresenter_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[13] & 1) == 0)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 15);
    [v2 cancelCurrentOperation];

    WeakRetained = v3;
  }
}

void __64__ASCAuthorizationPresenter_listener_shouldAcceptNewConnection___block_invoke_2()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __64__ASCAuthorizationPresenter_listener_shouldAcceptNewConnection___block_invoke_2_cold_1();
  }
}

- (BOOL)_isPresentationContextValid:(id)valid error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  validCopy = valid;
  if (([validCopy requestTypes] & 0x200) != 0)
  {
    if ([validCopy requestTypes] != 512)
    {
      if (!error)
      {
LABEL_12:
        v8 = 0;
        goto LABEL_13;
      }

      v9 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A588];
      v19[0] = @"Account Registration requests cannot be used with other types of requests.";
      v10 = MEMORY[0x1E695DF20];
      v11 = v19;
      v12 = &v18;
LABEL_11:
      v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
      *error = [v9 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v13];

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  cableAuthenticatorURL = [validCopy cableAuthenticatorURL];

  if (cableAuthenticatorURL || ![validCopy isRegistrationRequest])
  {
LABEL_8:
    v8 = 1;
    goto LABEL_13;
  }

  requestTypes = [validCopy requestTypes];
  v8 = (requestTypes & 0xFFFFFFFFFFFFFFABLL) == 0;
  if (error && (requestTypes & 0xFFFFFFFFFFFFFFABLL) != 0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A588];
    v17 = @"Registration requests cannot be used with other types of requests.";
    v10 = MEMORY[0x1E695DF20];
    v11 = &v17;
    v12 = &v16;
    goto LABEL_11;
  }

LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_performQueuedUpdatesIfNecessary
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ASCAuthorizationPresenter__performQueuedUpdatesIfNecessary__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

void __61__ASCAuthorizationPresenter__performQueuedUpdatesIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64))
  {
    [*(v2 + 48) updateInterfaceWithLoginChoices:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 72) == 1)
  {
    [*(v2 + 48) presentPINEntryInterface];
    *(*(a1 + 32) + 72) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 73) == 1)
  {
    [*(v2 + 48) presentNewPINEntryInterfaceWithMinLength:*(v2 + 80)];
    *(*(a1 + 32) + 73) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 88) == 1)
  {
    [*(v2 + 48) cableClientWillConnect];
    *(*(a1 + 32) + 88) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 89) == 1)
  {
    [*(v2 + 48) cableClientWillAuthenticate];
    *(*(a1 + 32) + 89) = 0;
  }
}

- (void)_invalidateWithError:(id)error
{
  errorCopy = error;
  invalidationQueue = self->_invalidationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ASCAuthorizationPresenter__invalidateWithError___block_invoke;
  v7[3] = &unk_1E815FD28;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(invalidationQueue, v7);
}

void __50__ASCAuthorizationPresenter__invalidateWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v3)
  {
    v4 = 96;
LABEL_7:
    (*(v3 + 16))(v3, 0, *(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + v4);
    *(v6 + v4) = 0;

    return;
  }

  if ((*(v2 + 104) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 120));
    [WeakRetained cancelCurrentOperation];

    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 16;
    goto LABEL_7;
  }
}

- (void)cableClientWillConnect
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASCAuthorizationPresenter_cableClientWillConnect__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

void *__51__ASCAuthorizationPresenter_cableClientWillConnect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 48);
  if (result)
  {
    return [result cableClientWillConnect];
  }

  *(v1 + 88) = 1;
  return result;
}

- (void)cableClientWillAuthenticate
{
  interfaceUpdateQueue = self->_interfaceUpdateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ASCAuthorizationPresenter_cableClientWillAuthenticate__block_invoke;
  block[3] = &unk_1E815F9D0;
  block[4] = self;
  dispatch_async(interfaceUpdateQueue, block);
}

void *__56__ASCAuthorizationPresenter_cableClientWillAuthenticate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 48);
  if (result)
  {
    return [result cableClientWillAuthenticate];
  }

  *(v1 + 89) = 1;
  return result;
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [ASCAuthorizationPresenter remoteAlertHandleDidDeactivate:];
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:2 userInfo:0];
  [(ASCAuthorizationPresenter *)self _invalidateWithError:v5];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = [(ASCAuthorizationPresenter *)self _isErrorDueToNewAlertHandleRequest:errorCopy];
  v7 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      v9 = 2;
      _os_log_impl(&dword_1C20AD000, v8, OS_LOG_TYPE_INFO, "Alert handle deactivated by new request.", v11, 2u);
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ASCAuthorizationPresenter remoteAlertHandle:v8 didInvalidateWithError:?];
    }

    v9 = 1;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:v9 userInfo:0];
  [(ASCAuthorizationPresenter *)self _invalidateWithError:v10];
}

- (BOOL)_isErrorDueToNewAlertHandleRequest:(id)request
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69D4468];
  v9[0] = &unk_1F41ABC10;
  v3 = MEMORY[0x1E695DF20];
  requestCopy = request;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  LOBYTE(v3) = [requestCopy safari_matchesErrorDomainsAndCodes:v5];

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)authorizationRequestInitiatedWithLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  choiceCopy = choice;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenter:self credentialRequestedForLoginChoice:choiceCopy authenticatedContext:contextCopy completionHandler:handlerCopy];
}

- (void)authorizationRequestFinishedWithCredential:(id)credential error:(id)error completionHandler:(id)handler
{
  credentialCopy = credential;
  errorCopy = error;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenter:self didFinishWithCredential:credentialCopy error:errorCopy];

  credentialResultHandler = self->_credentialResultHandler;
  if (credentialResultHandler)
  {
    credentialResultHandler[2](credentialResultHandler, credentialCopy, errorCopy);
    v12 = self->_credentialResultHandler;
    self->_credentialResultHandler = 0;
  }

  handlerCopy[2](handlerCopy);
}

- (void)validateUserEnteredPIN:(id)n completionHandler:(id)handler
{
  handlerCopy = handler;
  nCopy = n;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenter:self validateUserEnteredPIN:nCopy completionHandler:handlerCopy];
}

- (void)didIgnorePINRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenterDidIgnorePINRequest:self];
}

- (void)initializeClientToViewServiceConnection
{
  v2 = WBS_LOG_CHANNEL_PREFIXServiceLifecycle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_DEFAULT, "Connection initialized", v3, 2u);
  }
}

- (void)startCABLEAuthenticationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationPresenter:self startCABLEAuthenticationWithCompletionHandler:handlerCopy];
}

- (void)presentExportFlowForProcess:(id)process windowSceneIdentifier:(id)identifier completionHandler:(id)handler
{
  v52[1] = *MEMORY[0x1E69E9840];
  processCopy = process;
  identifierCopy = identifier;
  handlerCopy = handler;
  auditToken = [processCopy auditToken];
  v12 = auditToken;
  if (auditToken)
  {
    [auditToken realToken];
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v13 = WBSApplicationIdentifierFromAuditToken();

  v46 = 0;
  v14 = [v13 safari_bundleIdentifierFromApplicationIdentifier:&v46];
  v15 = v46;
  v16 = v15;
  if (v14)
  {
    v44 = v15;
    v45 = identifierCopy;
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    remoteListener = self->_remoteListener;
    self->_remoteListener = anonymousListener;

    [(NSXPCListener *)self->_remoteListener setDelegate:self];
    [(NSXPCListener *)self->_remoteListener resume];
    v19 = _Block_copy(handlerCopy);
    presentExportFlowResultHandler = self->_presentExportFlowResultHandler;
    self->_presentExportFlowResultHandler = v19;

    v51 = @"ASCAuthorizationCredentialExchangeExporterBundleID";
    v52[0] = v14;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v22 = objc_alloc(MEMORY[0x1E69D42A0]);
    v23 = [v22 initWithServiceName:authenticationServicesViewServiceBundleIdentifier viewControllerClassName:@"ASViewServiceViewController"];
    v24 = objc_opt_new();
    endpoint = [(NSXPCListener *)self->_remoteListener endpoint];
    _endpoint = [endpoint _endpoint];
    [v24 setXpcEndpoint:_endpoint];

    v43 = v21;
    [v24 setUserInfo:v21];
    v27 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v23 configurationContext:v24];
    remoteAlertHandle = self->_remoteAlertHandle;
    self->_remoteAlertHandle = v27;

    v29 = self->_remoteAlertHandle;
    v30 = objc_opt_respondsToSelector();
    v31 = self->_remoteAlertHandle;
    if (v30)
    {
      [(SBSRemoteAlertHandle *)v31 registerObserver:self];
    }

    else
    {
      [(SBSRemoteAlertHandle *)v31 addObserver:self];
    }

    v33 = MKBGetDeviceLockState();
    if (v33 && v33 != 3)
    {
      v39 = WBS_LOG_CHANNEL_PREFIXAuthorization();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [ASCAuthorizationPresenter presentExportFlowForProcess:windowSceneIdentifier:completionHandler:];
      }

      v40 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A588];
      v50 = @"Device must be unlocked to perform request.";
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v34 = [v40 errorWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:v41];

      (*(handlerCopy + 2))(handlerCopy, 0, v34);
      [(ASCAuthorizationPresenter *)self _invalidateWithError:v34];
    }

    else
    {
      v34 = objc_opt_new();
      if (processCopy)
      {
        v35 = [MEMORY[0x1E69D42D8] predicateForProcess:processCopy];
        [v35 setScenePersistentIdentifier:v45];
        v36 = [objc_alloc(MEMORY[0x1E69D42C0]) initWithTargetPredicate:v35];
        [v34 setPresentationTarget:v36];
      }

      [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v34];
      v37 = _Block_copy(handlerCopy);
      v38 = self->_presentExportFlowResultHandler;
      self->_presentExportFlowResultHandler = v37;
    }

    identifierCopy = v45;

    v16 = v44;
  }

  else
  {
    v32 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ASCAuthorizationPresenter presentExportFlowForProcess:windowSceneIdentifier:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)userSelectedImportingDestinationWithBundleIdentfier:(id)identfier
{
  presentExportFlowResultHandler = self->_presentExportFlowResultHandler;
  if (presentExportFlowResultHandler)
  {
    presentExportFlowResultHandler[2](presentExportFlowResultHandler, identfier, 0);
    v5 = self->_presentExportFlowResultHandler;
    self->_presentExportFlowResultHandler = 0;
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ASCAuthorizationPresenter userSelectedImportingDestinationWithBundleIdentfier:];
    }
  }
}

- (void)setTokenForImport:(id)import
{
  self->_exportDidComplete = 1;
  importCopy = import;
  WeakRetained = objc_loadWeakRetained(&self->_credentialExchangeDelegate);
  [WeakRetained setTokenForImport:importCopy];
}

- (void)getExportedCredentialData:(id)data
{
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_credentialExchangeDelegate);
  [WeakRetained getExportedCredentialData:dataCopy];
}

- (void)cancelCurrentCredentialExchangeOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_credentialExchangeDelegate);
  [WeakRetained cancelCurrentOperation];
}

- (ASCAuthorizationPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ASCAuthorizationPresenterCredentialExchangeDelegate)credentialExchangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_credentialExchangeDelegate);

  return WeakRetained;
}

- (void)presentAuthorizationWithContext:(void *)a1 forProcess:completionHandler:.cold.2(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Failed to get context data for presentation with error: %{private}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateInterfaceForUserVisibleError:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() domain];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Asked to present unsupported error: %{public}@.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateInterfaceForUserVisibleError:(void *)a1 .cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_1() code];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v3, v4, "Asked to display error with unrecognized code: %ld", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)remoteAlertHandle:(void *)a1 didInvalidateWithError:.cold.1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1C20AD000, v4, v5, "Alert handle invalidated with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end