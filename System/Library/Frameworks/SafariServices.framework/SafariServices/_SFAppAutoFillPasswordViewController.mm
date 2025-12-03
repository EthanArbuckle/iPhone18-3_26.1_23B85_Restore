@interface _SFAppAutoFillPasswordViewController
- (id)_connectToServiceWithCompletion:(id)completion;
- (void)_sceneDidEnterBackground:(id)background;
- (void)_setUpServiceProxyIfNeeded;
- (void)authenticateToPresentInPopover:(BOOL)popover completion:(id)completion;
- (void)authenticateToPresentInPopover:(BOOL)popover savedAccountContext:(id)context completion:(id)completion;
- (void)remoteViewController:(id)controller fillPassword:(id)password;
- (void)remoteViewController:(id)controller fillText:(id)text;
- (void)remoteViewController:(id)controller fillUsername:(id)username;
- (void)remoteViewController:(id)controller fillVerificationCode:(id)code;
- (void)remoteViewController:(id)controller selectedCredential:(id)credential;
- (void)setAuthenticationGracePeriod:(double)period;
- (void)setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:(id)domains;
- (void)setPageID:(id)d frameID:(id)iD credentialType:(id)type;
- (void)setRemoteAppID:(id)d;
- (void)setRemoteLocalizedAppName:(id)name;
- (void)setRemoteUnlocalizedAppName:(id)name;
- (void)setSystemAutoFillDocumentTraits:(id)traits;
- (void)setWebViewURL:(id)l;
- (void)viewDidLoad;
@end

@implementation _SFAppAutoFillPasswordViewController

- (void)_sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  viewIfLoaded = [(_SFAppAutoFillPasswordViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    object = [backgroundCopy object];

    if (windowScene == object)
    {
      [(_SFPasswordViewController *)self remoteViewControllerWillDismiss:self->_remoteViewController];
    }
  }
}

- (void)_setUpServiceProxyIfNeeded
{
  if (!self->_serviceProxy)
  {
    v3 = [[SFQueueingServiceViewControllerProxy alloc] initWithProtocol:&unk_1F5086BE0];
    serviceProxy = self->_serviceProxy;
    self->_serviceProxy = v3;

    v5 = self->_serviceProxy;

    [(SFPasswordPickerServiceViewControllerProtocol *)v5 setDelegate:self];
  }
}

- (id)_connectToServiceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_SFAppAutoFillPasswordViewController *)self _connectToServiceWithCompletion:v5];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___SFAppAutoFillPasswordViewController__connectToServiceWithCompletion___block_invoke;
  v9[3] = &unk_1E8490270;
  v9[4] = self;
  v10 = completionCopy;
  v6 = completionCopy;
  v7 = [(SFPasswordRemoteViewController *)SFPasswordPickerRemoteViewController requestViewControllerWithConnectionHandler:v9];

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _SFAppAutoFillPasswordViewController;
  [(_SFAppAutoFillPasswordViewController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];

  [(_SFPasswordViewController *)self _addRemoteViewAsChild];
}

- (void)authenticateToPresentInPopover:(BOOL)popover completion:(id)completion
{
  popoverCopy = popover;
  v6 = MEMORY[0x1E69C8A20];
  completionCopy = completion;
  defaultContext = [v6 defaultContext];
  [(_SFAppAutoFillPasswordViewController *)self authenticateToPresentInPopover:popoverCopy savedAccountContext:defaultContext completion:completionCopy];
}

- (void)authenticateToPresentInPopover:(BOOL)popover savedAccountContext:(id)context completion:(id)completion
{
  popoverCopy = popover;
  completionCopy = completion;
  contextCopy = context;
  v10 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_SFAppAutoFillPasswordViewController authenticateToPresentInPopover:v10 savedAccountContext:? completion:?];
  }

  serviceProxy = self->_serviceProxy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102___SFAppAutoFillPasswordViewController_authenticateToPresentInPopover_savedAccountContext_completion___block_invoke;
  v13[3] = &unk_1E8490C40;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [(SFPasswordPickerServiceViewControllerProtocol *)serviceProxy authenticateToPresentInPopover:popoverCopy savedAccountContext:contextCopy completion:v13];
}

- (void)setWebViewURL:(id)l
{
  lCopy = l;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFAppAutoFillPasswordViewController setWebViewURL:];
  }

  [(SFPasswordPickerServiceViewControllerProtocol *)self->_serviceProxy setWebViewURL:lCopy];
}

- (void)setRemoteAppID:(id)d
{
  dCopy = d;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFAppAutoFillPasswordViewController setRemoteAppID:];
  }

  [(SFPasswordPickerServiceViewControllerProtocol *)self->_serviceProxy setRemoteAppID:dCopy];
}

- (void)setRemoteLocalizedAppName:(id)name
{
  nameCopy = name;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFAppAutoFillPasswordViewController setRemoteLocalizedAppName:];
  }

  [(SFPasswordPickerServiceViewControllerProtocol *)self->_serviceProxy setRemoteLocalizedAppName:nameCopy];
}

- (void)setRemoteUnlocalizedAppName:(id)name
{
  nameCopy = name;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFAppAutoFillPasswordViewController setRemoteUnlocalizedAppName:];
  }

  [(SFPasswordPickerServiceViewControllerProtocol *)self->_serviceProxy setRemoteUnlocalizedAppName:nameCopy];
}

- (void)setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:(id)domains
{
  domainsCopy = domains;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFAppAutoFillPasswordViewController setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:];
  }

  [(SFPasswordPickerServiceViewControllerProtocol *)self->_serviceProxy setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:domainsCopy];
}

- (void)setAuthenticationGracePeriod:(double)period
{
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_SFAppAutoFillPasswordViewController *)self setAuthenticationGracePeriod:v5, period];
  }

  [(SFPasswordPickerServiceViewControllerProtocol *)self->_serviceProxy setAuthenticationGracePeriod:period];
}

- (void)setPageID:(id)d frameID:(id)iD credentialType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  v11 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218754;
    selfCopy = self;
    v14 = 2112;
    v15 = dCopy;
    v16 = 2112;
    v17 = iDCopy;
    v18 = 2112;
    v19 = typeCopy;
    _os_log_debug_impl(&dword_1D4644000, v11, OS_LOG_TYPE_DEBUG, "In-process view controller %p setPageID: %@ frameID: %@ credentialType: %@", &v12, 0x2Au);
  }

  [(SFPasswordPickerServiceViewControllerProtocol *)self->_serviceProxy setPageID:dCopy frameID:iDCopy credentialType:typeCopy];
}

- (void)setSystemAutoFillDocumentTraits:(id)traits
{
  traitsCopy = traits;
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFAppAutoFillPasswordViewController setSystemAutoFillDocumentTraits:];
  }

  [(SFPasswordPickerServiceViewControllerProtocol *)self->_serviceProxy setSystemAutoFillDocumentTraits:traitsCopy];
}

- (void)remoteViewController:(id)controller selectedCredential:(id)credential
{
  credentialCopy = credential;
  delegate = [(_SFPasswordViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passwordViewController:self selectedCredential:credentialCopy];
  }
}

- (void)remoteViewController:(id)controller fillUsername:(id)username
{
  usernameCopy = username;
  delegate = [(_SFPasswordViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passwordViewController:self fillUsername:usernameCopy];
  }
}

- (void)remoteViewController:(id)controller fillPassword:(id)password
{
  passwordCopy = password;
  delegate = [(_SFPasswordViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passwordViewController:self fillPassword:passwordCopy];
  }
}

- (void)remoteViewController:(id)controller fillVerificationCode:(id)code
{
  codeCopy = code;
  delegate = [(_SFPasswordViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passwordViewController:self fillVerificationCode:codeCopy];
  }
}

- (void)remoteViewController:(id)controller fillText:(id)text
{
  textCopy = text;
  delegate = [(_SFPasswordViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passwordViewController:self fillText:textCopy];
  }
}

- (void)_connectToServiceWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "In-process view controller %p attempting to get remote password picker view controller", &v2, 0xCu);
}

- (void)authenticateToPresentInPopover:(uint64_t)a1 savedAccountContext:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "In-process view controller %p attempting to authenticate", &v2, 0xCu);
}

- (void)setWebViewURL:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setRemoteAppID:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setRemoteLocalizedAppName:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setRemoteUnlocalizedAppName:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setAuthenticationGracePeriod:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_1D4644000, a2, OS_LOG_TYPE_DEBUG, "In-process view controller %p setAuthenticationGracePeriod: %f", &v3, 0x16u);
}

- (void)setSystemAutoFillDocumentTraits:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end