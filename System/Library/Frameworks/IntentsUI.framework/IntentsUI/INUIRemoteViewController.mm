@interface INUIRemoteViewController
+ (void)_attemptToConnectToRemoteViewControllerForRemainingExtensions:(id)extensions delegate:(id)delegate connectionHandler:(id)handler;
+ (void)_getWidgetHostingRemoteViewControllerWithIntent:(id)intent descriptor:(id)descriptor completionHandler:(id)handler;
+ (void)_getWidgetHostingRemoteViewControllerWithIntent:(id)intent extensionMatchingError:(id)error completionHandler:(id)handler;
+ (void)_requestRemoteViewControllerForSnippetExtensionInteraction:(id)interaction delegate:(id)delegate connectionHandler:(id)handler;
+ (void)_requestRemoteViewControllerWithRequestInfo:(id)info delegate:(id)delegate reply:(id)reply;
+ (void)requestRemoteViewControllerForInteraction:(id)interaction delegate:(id)delegate connectionHandler:(id)handler;
- (CGSize)preferredContentSize;
- (INUIRemoteViewControllerDelegate)delegate;
- (id)_errorHandlingServiceViewControllerProxy;
- (id)disconnect;
- (void)_queryRepresentedPropertiesWithCompletion:(id)completion;
- (void)_updateExtensionContextStateWithCompletion:(id)completion;
- (void)configureForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion;
- (void)configureWithInteraction:(id)interaction context:(unint64_t)context completion:(id)completion;
- (void)configureWithInteraction:(id)interaction context:(unint64_t)context errorHandlingCompletion:(id)completion;
- (void)desiresInteractivity:(id)interactivity;
- (void)extensionHostContext:(id)context wantsToHandleIntent:(id)intent;
- (void)extensionHostContextWillBeginEditing:(id)editing;
- (void)requestCancellation;
- (void)setDelegate:(id)delegate completion:(id)completion;
- (void)setIdealConfiguration:(id)configuration animated:(BOOL)animated completion:(id)completion;
- (void)setNeedsStateUpdate:(BOOL)update;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation INUIRemoteViewController

- (INUIRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)configureWithInteraction:(id)interaction context:(unint64_t)context completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__INUIRemoteViewController_configureWithInteraction_context_completion___block_invoke;
  v10[3] = &unk_27872BE30;
  v11 = completionCopy;
  v9 = completionCopy;
  [(INUIRemoteViewController *)self configureWithInteraction:interaction context:context errorHandlingCompletion:v10];
}

uint64_t __72__INUIRemoteViewController_configureWithInteraction_context_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)configureForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion
{
  parametersCopy = parameters;
  interactionCopy = interaction;
  completionCopy = completion;
  extensionHostContext = [(INUIRemoteViewController *)self extensionHostContext];
  _auxiliaryConnection = [extensionHostContext _auxiliaryConnection];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke;
  v42[3] = &unk_27872BD90;
  v15 = completionCopy;
  v43 = v15;
  v16 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:v42];

  if (v16)
  {
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v41 = 0;
    v17 = objc_alloc(MEMORY[0x277CD4300]);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_2;
    v37[3] = &unk_27872BDB8;
    v18 = v15;
    v38 = v18;
    v39 = v40;
    v19 = [v17 initWithTimeoutInterval:v37 timeoutHandler:10.0];
    [v19 start];
    extensionHostContext2 = [(INUIRemoteViewController *)self extensionHostContext];
    _auxiliaryConnection2 = [extensionHostContext2 _auxiliaryConnection];

    v35 = 0u;
    v36 = 0u;
    if (_auxiliaryConnection2)
    {
      [_auxiliaryConnection2 auditToken];
    }

    intent = [interactionCopy intent];
    activeExtension = [(INUIRemoteViewController *)self activeExtension];
    _extensionBundle = [activeExtension _extensionBundle];
    v33 = v35;
    v34 = v36;
    [intent trimDataAgainstTCCForAuditToken:&v33 bundle:_extensionBundle];

    v33 = v35;
    v34 = v36;
    INIssueSandboxExtensionsForFileURLEnumerableToProcess();
    intentResponse = [interactionCopy intentResponse];
    if (intentResponse)
    {
      v33 = v35;
      v34 = v36;
      INIssueSandboxExtensionsForFileURLEnumerableToProcess();
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_68;
    v29[3] = &unk_27872BE08;
    v31 = v18;
    v32 = v40;
    v26 = v19;
    v30 = v26;
    [v16 configureForParameters:parametersCopy ofInteraction:interactionCopy interactiveBehavior:behavior context:context completion:v29];

    _Block_object_dispose(v40, 8);
  }
}

void __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[INUIRemoteViewController configureForParameters:ofInteraction:interactiveBehavior:context:completion:]_block_invoke";
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_22CA36000, v4, OS_LOG_TYPE_ERROR, "%s Unable to retrieve service view controller: %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_66;
    v7[3] = &unk_27872BD68;
    v9 = v5;
    v8 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_3;
    block[3] = &unk_27872BDB8;
    v2 = *(a1 + 32);
    v1 = v2;
    v4 = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_68(uint64_t a1, char a2, void *a3, void *a4, double a5, double a6)
{
  v11 = a3;
  v12 = a4;
  if (*(a1 + 40))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_2_69;
    v13[3] = &unk_27872BDE0;
    v18 = *(a1 + 48);
    v14 = *(a1 + 32);
    v17 = *(a1 + 40);
    v21 = a2;
    v15 = v11;
    v19 = a5;
    v20 = a6;
    v16 = v12;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }
}

uint64_t __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_2_69(uint64_t result)
{
  if ((*(*(*(result + 64) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    [*(result + 32) cancel];
    v2 = *(v1 + 48);
    v3 = *(v1 + 88);
    v4 = *(v1 + 40);
    result = (*(*(v1 + 56) + 16))(*(v1 + 72), *(v1 + 80));
    *(*(*(v1 + 64) + 8) + 24) = 1;
  }

  return result;
}

void __104__INUIRemoteViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INUIRemoteViewControllerErrorDomain" code:1 userInfo:0];
    v3 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[INUIRemoteViewController configureForParameters:ofInteraction:interactiveBehavior:context:completion:]_block_invoke_3";
      v7 = 2114;
      v8 = v2;
      _os_log_error_impl(&dword_22CA36000, v3, OS_LOG_TYPE_ERROR, "%s Timed out waiting for service view controller configuration: %{public}@", &v5, 0x16u);
    }

    (*(*(a1 + 32) + 16))(*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)configureWithInteraction:(id)interaction context:(unint64_t)context errorHandlingCompletion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__INUIRemoteViewController_configureWithInteraction_context_errorHandlingCompletion___block_invoke;
  v10[3] = &unk_27872BD40;
  v11 = completionCopy;
  v9 = completionCopy;
  [(INUIRemoteViewController *)self configureForParameters:0 ofInteraction:interaction interactiveBehavior:0 context:context completion:v10];
}

uint64_t __85__INUIRemoteViewController_configureWithInteraction_context_errorHandlingCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a4);
  }

  return result;
}

- (void)extensionHostContextWillBeginEditing:(id)editing
{
  delegate = [(INUIRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerWillBeginEditing:self];
  }
}

- (void)extensionHostContext:(id)context wantsToHandleIntent:(id)intent
{
  intentCopy = intent;
  delegate = [(INUIRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewController:self requestsHandlingOfIntent:intentCopy];
  }
}

- (void)_updateExtensionContextStateWithCompletion:(id)completion
{
  v26[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  self->_needsStateUpdate = 1;
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__INUIRemoteViewController__updateExtensionContextStateWithCompletion___block_invoke;
  v19[3] = &unk_27872BCF0;
  objc_copyWeak(&v21, &location);
  v5 = completionCopy;
  v20 = v5;
  v6 = MEMORY[0x2318BBC40](v19);
  v7 = v6;
  if (self->_extensionHostContext)
  {
    v8 = objc_alloc_init(_INUIExtensionContextState);
    delegate = [(INUIRemoteViewController *)self delegate];
    if (!delegate)
    {
LABEL_16:
      extensionHostContext = self->_extensionHostContext;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __71__INUIRemoteViewController__updateExtensionContextStateWithCompletion___block_invoke_60;
      v17[3] = &unk_27872BB90;
      v18 = v7;
      [(_INUIExtensionHostContext *)extensionHostContext setExtensionContextState:v8 completion:v17];

      goto LABEL_17;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [delegate minimumSizesBySystemVersionForRemoteViewController:self];
      [(_INUIExtensionContextState *)v8 setHostedViewMinimumAllowedSizes:v10];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_9;
      }

      [delegate minimumSizeForRemoteViewController:self];
      v25 = &unk_283FD4FD8;
      v10 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
      v26[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      [(_INUIExtensionContextState *)v8 setHostedViewMinimumAllowedSizes:v11];
    }

LABEL_9:
    if (objc_opt_respondsToSelector())
    {
      v12 = [delegate maximumSizesBySystemVersionForRemoteViewController:self];
      [(_INUIExtensionContextState *)v8 setHostedViewMaximumAllowedSizes:v12];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_14;
      }

      [delegate maximumSizeForRemoteViewController:self];
      v23 = &unk_283FD4FD8;
      v12 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
      v24 = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [(_INUIExtensionContextState *)v8 setHostedViewMaximumAllowedSizes:v13];
    }

LABEL_14:
    if (objc_opt_respondsToSelector())
    {
      v14 = [delegate interfaceSectionsForRemoteViewController:self];
      [(_INUIExtensionContextState *)v8 setInterfaceSections:v14];
    }

    goto LABEL_16;
  }

  (*(v6 + 16))(v6);
LABEL_17:

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __71__INUIRemoteViewController__updateExtensionContextStateWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[1016] = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_errorHandlingServiceViewControllerProxy
{
  extensionHostContext = [(INUIRemoteViewController *)self extensionHostContext];
  _auxiliaryConnection = [extensionHostContext _auxiliaryConnection];
  v4 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_46];

  return v4;
}

void __68__INUIRemoteViewController__errorHandlingServiceViewControllerProxy__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[INUIRemoteViewController _errorHandlingServiceViewControllerProxy]_block_invoke";
    v7 = 2114;
    v8 = v2;
    _os_log_error_impl(&dword_22CA36000, v3, OS_LOG_TYPE_ERROR, "%s Unable to retrieve service view controller: %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_queryRepresentedPropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  _errorHandlingServiceViewControllerProxy = [(INUIRemoteViewController *)self _errorHandlingServiceViewControllerProxy];
  [_errorHandlingServiceViewControllerProxy queryRepresentedPropertiesWithCompletion:completionCopy];
}

- (void)desiresInteractivity:(id)interactivity
{
  interactivityCopy = interactivity;
  extensionHostContext = [(INUIRemoteViewController *)self extensionHostContext];
  _auxiliaryConnection = [extensionHostContext _auxiliaryConnection];
  v7 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_16];

  if (v7)
  {
    [v7 desiresInteractivity:interactivityCopy];
  }

  else
  {
    interactivityCopy[2](interactivityCopy, 0);
  }
}

void __49__INUIRemoteViewController_desiresInteractivity___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[INUIRemoteViewController desiresInteractivity:]_block_invoke";
    v7 = 2114;
    v8 = v2;
    _os_log_error_impl(&dword_22CA36000, v3, OS_LOG_TYPE_ERROR, "%s Unable to retrieve service view controller: %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)requestCancellation
{
  extensionHostContext = [(INUIRemoteViewController *)self extensionHostContext];
  _auxiliaryConnection = [extensionHostContext _auxiliaryConnection];
  v5 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_1156];

  v4 = v5;
  if (v5)
  {
    [v5 viewWasCancelled];
    v4 = v5;
  }
}

void __47__INUIRemoteViewController_requestCancellation__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[INUIRemoteViewController requestCancellation]_block_invoke";
    v7 = 2114;
    v8 = v2;
    _os_log_error_impl(&dword_22CA36000, v3, OS_LOG_TYPE_ERROR, "%s Unable to retrieve service view controller: %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setIdealConfiguration:(id)configuration animated:(BOOL)animated completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  if ([(INUIRemoteViewController *)self isWidgetHost])
  {
    widgetDescriptor = [(INUIRemoteViewController *)self widgetDescriptor];
    [widgetDescriptor preferredSize];
    [(INUIRemoteViewController *)self setPreferredContentSize:?];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    parameters = [configurationCopy parameters];
    interaction = [(INUIExtensionRequestInfo *)self->_requestInfo interaction];
    interactiveBehavior = [configurationCopy interactiveBehavior];
    hostedViewContext = [configurationCopy hostedViewContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__INUIRemoteViewController_setIdealConfiguration_animated_completion___block_invoke;
    v14[3] = &unk_27872BBB8;
    v14[4] = self;
    v15 = configurationCopy;
    v16 = completionCopy;
    [(INUIRemoteViewController *)self configureForParameters:parameters ofInteraction:interaction interactiveBehavior:interactiveBehavior context:hostedViewContext completion:v14];
  }
}

void __70__INUIRemoteViewController_setIdealConfiguration_animated_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4, double a5, double a6)
{
  v17 = a4;
  v11 = *(a1 + 32);
  v12 = a3;
  [v11 setPreferredContentSize:{a5, a6}];
  v13 = *(a1 + 32);
  v14 = -[INUIExtensionViewControllerConfiguration initWithParameters:interactiveBehavior:hostedViewContext:]([INUIExtensionViewControllerConfiguration alloc], "initWithParameters:interactiveBehavior:hostedViewContext:", v12, [*(a1 + 40) interactiveBehavior], objc_msgSend(*(a1 + 40), "hostedViewContext"));

  [v13 setConfiguration:v14];
  v15 = *(a1 + 48);
  if (v17 || a2)
  {
    (*(v15 + 16))(v15);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"INUIRemoteViewControllerErrorDomain" code:0 userInfo:0];
    (*(v15 + 16))(v15, v16);
  }
}

- (void)setNeedsStateUpdate:(BOOL)update
{
  if (self->_needsStateUpdate != update && update)
  {
    [(INUIRemoteViewController *)self _updateExtensionContextStateWithCompletion:0];
  }
}

- (void)setDelegate:(id)delegate completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__INUIRemoteViewController_setDelegate_completion___block_invoke;
    v9[3] = &unk_27872BB90;
    v10 = completionCopy;
    [(INUIRemoteViewController *)self _updateExtensionContextStateWithCompletion:v9];
  }
}

uint64_t __51__INUIRemoteViewController_setDelegate_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (id)disconnect
{
  [(NSExtension *)self->_activeExtension cancelExtensionRequestWithIdentifier:self->_currentRequestIdentifier];
  activeExtension = self->_activeExtension;
  self->_activeExtension = 0;

  currentRequestIdentifier = self->_currentRequestIdentifier;
  self->_currentRequestIdentifier = 0;

  v7.receiver = self;
  v7.super_class = INUIRemoteViewController;
  disconnect = [(_UIRemoteViewController *)&v7 disconnect];

  return disconnect;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v8.receiver = self;
  v8.super_class = INUIRemoteViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:errorCopy];
  v5 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v10 = "[INUIRemoteViewController viewServiceDidTerminateWithError:]";
    v11 = 2114;
    selfCopy = self;
    v13 = 2114;
    v14 = errorCopy;
    _os_log_error_impl(&dword_22CA36000, v5, OS_LOG_TYPE_ERROR, "%s Widget remote view controller service did terminate for RVC: %{public}@ error: %{public}@", buf, 0x20u);
  }

  delegate = [(INUIRemoteViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerServiceDidTerminate:self];
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)requestRemoteViewControllerForInteraction:(id)interaction delegate:(id)delegate connectionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    delegateCopy = delegate;
    interactionCopy = interaction;
    v11 = [[INUIExtensionRequestInfo alloc] initWithInteraction:interactionCopy];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__INUIRemoteViewController_requestRemoteViewControllerForInteraction_delegate_connectionHandler___block_invoke;
    v12[3] = &unk_27872BD18;
    v13 = handlerCopy;
    [self _requestRemoteViewControllerWithRequestInfo:v11 delegate:delegateCopy reply:v12];
  }
}

+ (void)_getWidgetHostingRemoteViewControllerWithIntent:(id)intent descriptor:(id)descriptor completionHandler:(id)handler
{
  intentCopy = intent;
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v10 = objc_alloc_init(INUIRemoteViewController);
  [(INUIRemoteViewController *)v10 setWidgetHost:1];
  [(INUIRemoteViewController *)v10 setWidgetDescriptor:descriptorCopy];
  v11 = objc_alloc(MEMORY[0x277D75D18]);
  [descriptorCopy preferredSize];
  v13 = v12;
  [descriptorCopy preferredSize];
  v15 = [v11 initWithFrame:{0.0, 0.0, v13, v14}];
  [(INUIRemoteViewController *)v10 setView:v15];

  preferredSizeClass = [descriptorCopy preferredSizeClass];
  if ((preferredSizeClass - 1) >= 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = preferredSizeClass;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v18 = getCHSWidgetClass_softClass;
  v43 = getCHSWidgetClass_softClass;
  if (!getCHSWidgetClass_softClass)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getCHSWidgetClass_block_invoke;
    v38 = &unk_27872BE58;
    v39 = &v40;
    __getCHSWidgetClass_block_invoke(&v35);
    v18 = v41[3];
  }

  v19 = v18;
  _Block_object_dispose(&v40, 8);
  v20 = [v18 alloc];
  extensionBundleIdentifier = [descriptorCopy extensionBundleIdentifier];
  kind = [descriptorCopy kind];
  v23 = [v20 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:0 kind:kind family:v17 intent:intentCopy];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v24 = getCHSWidgetMetricsClass_softClass;
  v43 = getCHSWidgetMetricsClass_softClass;
  if (!getCHSWidgetMetricsClass_softClass)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getCHSWidgetMetricsClass_block_invoke;
    v38 = &unk_27872BE58;
    v39 = &v40;
    __getCHSWidgetMetricsClass_block_invoke(&v35);
    v24 = v41[3];
  }

  v25 = v24;
  _Block_object_dispose(&v40, 8);
  v26 = [v24 alloc];
  [descriptorCopy preferredSize];
  v27 = [v26 initWithSize:? cornerRadius:?];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v28 = getCHUISAvocadoHostViewControllerClass_softClass;
  v43 = getCHUISAvocadoHostViewControllerClass_softClass;
  if (!getCHUISAvocadoHostViewControllerClass_softClass)
  {
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __getCHUISAvocadoHostViewControllerClass_block_invoke;
    v38 = &unk_27872BE58;
    v39 = &v40;
    __getCHUISAvocadoHostViewControllerClass_block_invoke(&v35);
    v28 = v41[3];
  }

  v29 = v28;
  _Block_object_dispose(&v40, 8);
  v30 = [[v28 alloc] initWithWidget:v23 metrics:v27 widgetConfigurationIdentifier:0];
  [(INUIRemoteViewController *)v10 addChildViewController:v30];
  view = [v30 view];
  view2 = [(INUIRemoteViewController *)v10 view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [(INUIRemoteViewController *)v10 view];
  view4 = [v30 view];
  [view3 addSubview:view4];

  [v30 didMoveToParentViewController:v10];
  handlerCopy[2](handlerCopy, v10, 0);
}

+ (void)_getWidgetHostingRemoteViewControllerWithIntent:(id)intent extensionMatchingError:(id)error completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  errorCopy = error;
  handlerCopy = handler;
  if ([intentCopy _type] != 2 || (objc_msgSend(intentCopy, "_codableDescription"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEligibleForWidgets"), v11, (v12 & 1) == 0))
  {
    v18 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "+[INUIRemoteViewController _getWidgetHostingRemoteViewControllerWithIntent:extensionMatchingError:completionHandler:]";
      v28 = 2112;
      v29 = intentCopy;
      v30 = 2114;
      v31 = errorCopy;
      v20 = "%s Error matching extensions for intent: %@ error: %{public}@";
      goto LABEL_15;
    }

LABEL_10:
    handlerCopy[2](handlerCopy, 0, errorCopy);
    goto LABEL_11;
  }

  mEMORY[0x277CD4310] = [MEMORY[0x277CD4310] sharedProvider];
  v14 = [mEMORY[0x277CD4310] descriptorForIntent:intentCopy];

  if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v18 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "+[INUIRemoteViewController _getWidgetHostingRemoteViewControllerWithIntent:extensionMatchingError:completionHandler:]";
      v28 = 2112;
      v29 = intentCopy;
      v30 = 2114;
      v31 = errorCopy;
      v20 = "%s Error matching widget extensions for intent: %@ error: %{public}@";
LABEL_15:
      _os_log_error_impl(&dword_22CA36000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x20u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ([v14 preferredSizeClass] > 1)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __117__INUIRemoteViewController__getWidgetHostingRemoteViewControllerWithIntent_extensionMatchingError_completionHandler___block_invoke;
    v21[3] = &unk_27872BCC8;
    selfCopy = self;
    v22 = intentCopy;
    v23 = v14;
    v24 = handlerCopy;
    v14 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v21);
  }

  else
  {
    v15 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      extensionBundleIdentifier = [v14 extensionBundleIdentifier];
      *buf = 136315394;
      v27 = "+[INUIRemoteViewController _getWidgetHostingRemoteViewControllerWithIntent:extensionMatchingError:completionHandler:]";
      v28 = 2112;
      v29 = extensionBundleIdentifier;
      _os_log_impl(&dword_22CA36000, v16, OS_LOG_TYPE_INFO, "%s %@ extension is not able to render medium or large size classes", buf, 0x16u);
    }

    handlerCopy[2](handlerCopy, 0, errorCopy);
  }

LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
}

+ (void)_attemptToConnectToRemoteViewControllerForRemainingExtensions:(id)extensions delegate:(id)delegate connectionHandler:(id)handler
{
  extensionsCopy = extensions;
  delegateCopy = delegate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    firstObject = [extensionsCopy firstObject];
    v12 = firstObject;
    if (firstObject)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __117__INUIRemoteViewController__attemptToConnectToRemoteViewControllerForRemainingExtensions_delegate_connectionHandler___block_invoke;
      v19[3] = &unk_27872BC78;
      v13 = firstObject;
      v20 = v13;
      v23 = handlerCopy;
      v21 = delegateCopy;
      v14 = extensionsCopy;
      v22 = v14;
      selfCopy = self;
      v15 = MEMORY[0x2318BBC40](v19);
      [v14 removeObject:v13];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __117__INUIRemoteViewController__attemptToConnectToRemoteViewControllerForRemainingExtensions_delegate_connectionHandler___block_invoke_40;
      v17[3] = &unk_27872BCA0;
      v18 = v15;
      v16 = v15;
      [v13 instantiateViewControllerWithInputItems:0 connectionHandler:v17];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __117__INUIRemoteViewController__attemptToConnectToRemoteViewControllerForRemainingExtensions_delegate_connectionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *buf = 136315650;
      v31 = "+[INUIRemoteViewController _attemptToConnectToRemoteViewControllerForRemainingExtensions:delegate:connectionHandler:]_block_invoke";
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      v35 = v9;
      _os_log_error_impl(&dword_22CA36000, v10, OS_LOG_TYPE_ERROR, "%s Error instantiating remote view controller for extension: %{public}@ error: %{public}@", buf, 0x20u);
    }

    v11 = *(*(a1 + 56) + 16);
LABEL_16:
    v11();
    v16 = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v13 = *MEMORY[0x277CD38C8];
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v22 = v13;
      v23 = objc_opt_class();
      v24 = *(a1 + 32);
      *buf = 136315650;
      v31 = "+[INUIRemoteViewController _attemptToConnectToRemoteViewControllerForRemainingExtensions:delegate:connectionHandler:]_block_invoke_2";
      v32 = 2114;
      v33 = v23;
      v34 = 2114;
      v35 = v24;
      v25 = v23;
      _os_log_error_impl(&dword_22CA36000, v22, OS_LOG_TYPE_ERROR, "%s Remote view controller is of unexpected class: %{public}@ for extension: %{public}@", buf, 0x20u);
    }

    v11 = *(*(a1 + 56) + 16);
    goto LABEL_16;
  }

  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    *buf = 136315650;
    v31 = "+[INUIRemoteViewController _attemptToConnectToRemoteViewControllerForRemainingExtensions:delegate:connectionHandler:]_block_invoke";
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v14;
    _os_log_impl(&dword_22CA36000, v13, OS_LOG_TYPE_INFO, "%s Instantiated remote view controller: %@ for extension: %@", buf, 0x20u);
  }

  v15 = v8;
  v16 = v15;
  v17 = *(a1 + 40);
  if (v17)
  {
    objc_storeWeak(v15 + 130, v17);
  }

  [v16 setActiveExtension:*(a1 + 32)];
  [v16 setCurrentRequestIdentifier:v7];
  v18 = [*(a1 + 32) _extensionContextForUUID:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v16 setExtensionHostContext:v18], objc_msgSend(v16, "extensionHostContext"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "setExtensionHostContextDelegate:", v16), v19, *(a1 + 40)))
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __117__INUIRemoteViewController__attemptToConnectToRemoteViewControllerForRemainingExtensions_delegate_connectionHandler___block_invoke_37;
    v26[3] = &unk_27872BC50;
    v29 = *(a1 + 56);
    v27 = v16;
    v28 = 0;
    [v27 _updateExtensionContextStateWithCompletion:v26];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

LABEL_17:
  if ([*(a1 + 48) count])
  {
    [*(a1 + 64) _attemptToConnectToRemoteViewControllerForRemainingExtensions:*(a1 + 48) delegate:*(a1 + 40) connectionHandler:*(a1 + 56)];
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)_requestRemoteViewControllerWithRequestInfo:(id)info delegate:(id)delegate reply:(id)reply
{
  v33[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  delegateCopy = delegate;
  replyCopy = reply;
  interaction = [infoCopy interaction];
  intent = [interaction intent];

  identifier = [intent identifier];

  if (identifier)
  {
    if (intent)
    {
      goto LABEL_3;
    }

LABEL_7:
    v19 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA068];
    v33[0] = @"No valid input intent for remote view controller";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v21 = [v19 errorWithDomain:@"INUIRemoteViewControllerErrorDomain" code:0 userInfo:v20];
    replyCopy[2](replyCopy, 0, v21);

    goto LABEL_10;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [intent setIdentifier:uUIDString];

  if (!intent)
  {
    goto LABEL_7;
  }

LABEL_3:
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __87__INUIRemoteViewController__requestRemoteViewControllerWithRequestInfo_delegate_reply___block_invoke;
  v26 = &unk_27872BC00;
  v14 = intent;
  v27 = v14;
  v30 = replyCopy;
  selfCopy = self;
  v28 = delegateCopy;
  v15 = infoCopy;
  v29 = v15;
  v16 = MEMORY[0x2318BBC40](&v23);
  if ([v15 requiresUserConsent] && objc_msgSend(v14, "_type") != 2)
  {
    [MEMORY[0x277CCA9C8] _intents_matchSiriUIExtensionsForIntent:v14 completion:v16];
  }

  else
  {
    [MEMORY[0x277CCA9C8] _intents_matchUIExtensionsForIntent:v14 completion:v16];
  }

  v20 = v27;
LABEL_10:

  v22 = *MEMORY[0x277D85DE8];
}

void __87__INUIRemoteViewController__requestRemoteViewControllerWithRequestInfo_delegate_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (_os_feature_enabled_impl())
    {
      [*(a1 + 64) _getWidgetHostingRemoteViewControllerWithIntent:*(a1 + 32) extensionMatchingError:v6 completionHandler:*(a1 + 56)];
    }

    else
    {
      v14 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315650;
        *&buf[4] = "+[INUIRemoteViewController _requestRemoteViewControllerWithRequestInfo:delegate:reply:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v16;
        *&buf[22] = 2114;
        v22 = v6;
        _os_log_error_impl(&dword_22CA36000, v14, OS_LOG_TYPE_ERROR, "%s Error matching extensions for intent: %@ error: %{public}@", buf, 0x20u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [v5 count];
      v10 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = "+[INUIRemoteViewController _requestRemoteViewControllerWithRequestInfo:delegate:reply:]_block_invoke";
      *&buf[12] = 2048;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v22 = v10;
      _os_log_impl(&dword_22CA36000, v8, OS_LOG_TYPE_INFO, "%s Found %zd extensions for intent: %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v22) = 0;
    v11 = *(a1 + 64);
    v12 = [v5 mutableCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __87__INUIRemoteViewController__requestRemoteViewControllerWithRequestInfo_delegate_reply___block_invoke_33;
    v17[3] = &unk_27872BC28;
    v13 = *(a1 + 40);
    v18 = *(a1 + 48);
    v20 = buf;
    v19 = *(a1 + 56);
    [v11 _attemptToConnectToRemoteViewControllerForRemainingExtensions:v12 delegate:v13 connectionHandler:v17];

    _Block_object_dispose(buf, 8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __87__INUIRemoteViewController__requestRemoteViewControllerWithRequestInfo_delegate_reply___block_invoke_33(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [v7 _setRequestInfo:a1[4]];
  v6 = *(a1[6] + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    (*(a1[5] + 16))();
  }
}

+ (void)_requestRemoteViewControllerForSnippetExtensionInteraction:(id)interaction delegate:(id)delegate connectionHandler:(id)handler
{
  interactionCopy = interaction;
  delegateCopy = delegate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    _snippet = [interactionCopy _snippet];
    if (_snippet)
    {
      v12 = MEMORY[0x277CCA9C8];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __114__INUIRemoteViewController__requestRemoteViewControllerForSnippetExtensionInteraction_delegate_connectionHandler___block_invoke;
      v14[3] = &unk_27872BC00;
      v15 = interactionCopy;
      v18 = handlerCopy;
      selfCopy = self;
      v16 = _snippet;
      v17 = delegateCopy;
      [v12 _intents_matchSiriUISnippetExtensionsWithCompletion:v14];
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_INUIRemoteViewControllerErrorDomain" code:1 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v13);
    }
  }
}

void __114__INUIRemoteViewController__requestRemoteViewControllerForSnippetExtensionInteraction_delegate_connectionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CD38C8];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v22 = a1[4];
      *buf = 136315650;
      v24 = "+[INUIRemoteViewController _requestRemoteViewControllerForSnippetExtensionInteraction:delegate:connectionHandler:]_block_invoke";
      v25 = 2112;
      v26 = v22;
      v27 = 2114;
      v28 = v6;
      _os_log_error_impl(&dword_22CA36000, v7, OS_LOG_TYPE_ERROR, "%s Error matching extensions for interaction: %@ error: %{public}@", buf, 0x20u);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [v5 count];
      v10 = a1[4];
      *buf = 136315650;
      v24 = "+[INUIRemoteViewController _requestRemoteViewControllerForSnippetExtensionInteraction:delegate:connectionHandler:]_block_invoke";
      v25 = 2048;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_22CA36000, v8, OS_LOG_TYPE_INFO, "%s Found %zd extensions for interaction: %@", buf, 0x20u);
    }

    v11 = MEMORY[0x277CCAC30];
    v12 = a1[5];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v11 predicateWithFormat:@"(attributes[%@] CONTAINS[c] %@)", @"SAUISnippetSubclassNames", v14];
    v16 = [v5 filteredArrayUsingPredicate:v15];

    if ([v16 count])
    {
      v17 = v16;
    }

    else
    {
      v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(attributes[%@] == nil)", @"SAUISnippetSubclassNames"];
      v17 = [v5 filteredArrayUsingPredicate:v18];

      v5 = v18;
    }

    v19 = a1[8];
    v20 = [v17 mutableCopy];
    [v19 _attemptToConnectToRemoteViewControllerForRemainingExtensions:v20 delegate:a1[6] connectionHandler:a1[7]];

    v5 = v17;
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end