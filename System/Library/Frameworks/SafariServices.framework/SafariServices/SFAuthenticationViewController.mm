@interface SFAuthenticationViewController
- (SFAuthenticationViewController)initWithURL:(id)l callback:(id)callback storageMode:(unint64_t)mode jitEnabled:(BOOL)enabled presentationContextWindow:(id)window additionalHeaderFields:(id)fields proxiedAssociatedDomains:(id)domains networkAttributionApplicationBundleIdentifier:(id)self0;
- (SFAuthenticationViewController)initWithURL:(id)l callbackURLScheme:(id)scheme usingEphemeralSession:(BOOL)session jitEnabled:(BOOL)enabled presentationContextWindow:(id)window;
- (SFAuthenticationViewControllerPresentationDelegate)presentationDelegate;
- (void)_presentViewController;
- (void)_restartServiceViewController;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)remoteViewController:(id)controller didDecideCookieSharingForURL:(id)l shouldCancel:(BOOL)cancel withError:(id)error;
- (void)remoteViewController:(id)controller hostApplicationOpenURL:(id)l;
- (void)setDefersAddingRemoteViewController:(BOOL)controller;
@end

@implementation SFAuthenticationViewController

- (SFAuthenticationViewController)initWithURL:(id)l callbackURLScheme:(id)scheme usingEphemeralSession:(BOOL)session jitEnabled:(BOOL)enabled presentationContextWindow:(id)window
{
  enabledCopy = enabled;
  sessionCopy = session;
  v12 = MEMORY[0x1E695A958];
  windowCopy = window;
  lCopy = l;
  v15 = [v12 callbackWithCustomScheme:scheme];
  v16 = [(SFAuthenticationViewController *)self initWithURL:lCopy callback:v15 storageMode:sessionCopy jitEnabled:enabledCopy presentationContextWindow:windowCopy additionalHeaderFields:0 proxiedAssociatedDomains:0 networkAttributionApplicationBundleIdentifier:0];

  return v16;
}

- (SFAuthenticationViewController)initWithURL:(id)l callback:(id)callback storageMode:(unint64_t)mode jitEnabled:(BOOL)enabled presentationContextWindow:(id)window additionalHeaderFields:(id)fields proxiedAssociatedDomains:(id)domains networkAttributionApplicationBundleIdentifier:(id)self0
{
  enabledCopy = enabled;
  callbackCopy = callback;
  obj = window;
  windowCopy = window;
  fieldsCopy = fields;
  domainsCopy = domains;
  identifierCopy = identifier;
  lCopy = l;
  v21 = objc_alloc_init(SFSafariViewControllerConfiguration);
  [(SFSafariViewControllerConfiguration *)v21 setEntersReaderIfAvailable:0];
  [(SFSafariViewControllerConfiguration *)v21 setBarCollapsingEnabled:0];
  [(SFSafariViewControllerConfiguration *)v21 set_storageModeForAuthenticationSession:mode];
  [(SFSafariViewControllerConfiguration *)v21 _setJITEnabled:enabledCopy];
  [(SFSafariViewControllerConfiguration *)v21 _setNetworkAttributionApplicationBundleIdentifier:identifierCopy];

  v33.receiver = self;
  v33.super_class = SFAuthenticationViewController;
  v22 = [(SFSafariViewController *)&v33 initWithURL:lCopy configuration:v21];

  if (v22)
  {
    objc_storeStrong(&v22->_presentationContextWindow, obj);
    objc_storeStrong(&v22->_callback, callback);
    v23 = [domainsCopy copy];
    proxiedAssociatedDomains = v22->_proxiedAssociatedDomains;
    v22->_proxiedAssociatedDomains = v23;

    serviceProxy = [(SFSafariViewController *)v22 serviceProxy];
    initialURL = [(SFSafariViewController *)v22 initialURL];
    [serviceProxy decideCookieSharingForURL:initialURL callback:callbackCopy proxiedAssociatedDomains:v22->_proxiedAssociatedDomains];

    if ([fieldsCopy count])
    {
      serviceProxy2 = [(SFSafariViewController *)v22 serviceProxy];
      [serviceProxy2 setAdditionalHeaderFieldsForInitialLoad:fieldsCopy];
    }

    [(SFSafariViewController *)v22 setDismissButtonStyle:2];
    [(SFSafariViewController *)v22 setTransitioningDelegate:v22];
    [(SFAuthenticationViewController *)v22 setDefersAddingRemoteViewController:1];
    [(SFAuthenticationViewController *)v22 setModalInPresentation:1];
    v28 = v22;
  }

  return v22;
}

- (void)setDefersAddingRemoteViewController:(BOOL)controller
{
  controllerCopy = controller;
  if ([(SFSafariViewController *)self defersAddingRemoteViewController]!= controller)
  {
    v7.receiver = self;
    v7.super_class = SFAuthenticationViewController;
    [(SFSafariViewController *)&v7 setDefersAddingRemoteViewController:controllerCopy];
    if (!controllerCopy)
    {
      [(SFSafariViewController *)self _addRemoteViewControllerIfNeeded];
      serviceProxy = [(SFSafariViewController *)self serviceProxy];
      initialURL = [(SFSafariViewController *)self initialURL];
      [serviceProxy loadURL:initialURL];
    }
  }
}

- (void)_presentViewController
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_1D4644000, a2, OS_LOG_TYPE_FAULT, "Attempted to present SFAuthenticationViewController from a view controller that is being dismissed: %@", &v2, 0xCu);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SFAuthenticationViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E8490798;
  v9[4] = self;
  v10 = completionCopy;
  v8.receiver = self;
  v8.super_class = SFAuthenticationViewController;
  v7 = completionCopy;
  [(SFAuthenticationViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:v9];
}

void __75__SFAuthenticationViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  if (*(v3 + 1272))
  {
    v4 = *(v3 + 1312);
    if (v4)
    {
      (*(v4 + 16))();
      v5 = *(a1 + 32);
      v6 = *(v5 + 1272);
      *(v5 + 1272) = 0;
    }
  }
}

- (void)_restartServiceViewController
{
  serviceProxy = [(SFSafariViewController *)self serviceProxy];
  configuration = [(SFSafariViewController *)self configuration];
  [serviceProxy setConfiguration:configuration];

  [serviceProxy setDismissButtonStyle:{-[SFSafariViewController dismissButtonStyle](self, "dismissButtonStyle")}];
  initialURL = [(SFSafariViewController *)self initialURL];
  [serviceProxy decideCookieSharingForURL:initialURL callback:self->_callback proxiedAssociatedDomains:self->_proxiedAssociatedDomains];

  [(SFAuthenticationViewController *)self setDefersAddingRemoteViewController:1];
}

- (void)remoteViewController:(id)controller hostApplicationOpenURL:(id)l
{
  lCopy = l;
  delegate = [(SFSafariViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate safariViewController:self hostApplicationOpenURL:lCopy];
  }
}

- (void)remoteViewController:(id)controller didDecideCookieSharingForURL:(id)l shouldCancel:(BOOL)cancel withError:(id)error
{
  cancelCopy = cancel;
  lCopy = l;
  errorCopy = error;
  delegate = [(SFSafariViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate safariViewController:self didDecideCookieSharingForURL:lCopy shouldCancel:cancelCopy withError:errorCopy];
  }

  presentingViewController = [(SFAuthenticationViewController *)self presentingViewController];

  if (cancelCopy)
  {
    if (presentingViewController)
    {
      [(SFAuthenticationViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    if (!presentingViewController)
    {
      [(SFAuthenticationViewController *)self _presentViewController];
    }

    [(SFAuthenticationViewController *)self setDefersAddingRemoteViewController:0];
  }
}

- (SFAuthenticationViewControllerPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end