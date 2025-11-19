@interface SFAuthenticationViewController
- (SFAuthenticationViewController)initWithURL:(id)a3 callback:(id)a4 storageMode:(unint64_t)a5 jitEnabled:(BOOL)a6 presentationContextWindow:(id)a7 additionalHeaderFields:(id)a8 proxiedAssociatedDomains:(id)a9 networkAttributionApplicationBundleIdentifier:(id)a10;
- (SFAuthenticationViewController)initWithURL:(id)a3 callbackURLScheme:(id)a4 usingEphemeralSession:(BOOL)a5 jitEnabled:(BOOL)a6 presentationContextWindow:(id)a7;
- (SFAuthenticationViewControllerPresentationDelegate)presentationDelegate;
- (void)_presentViewController;
- (void)_restartServiceViewController;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)remoteViewController:(id)a3 didDecideCookieSharingForURL:(id)a4 shouldCancel:(BOOL)a5 withError:(id)a6;
- (void)remoteViewController:(id)a3 hostApplicationOpenURL:(id)a4;
- (void)setDefersAddingRemoteViewController:(BOOL)a3;
@end

@implementation SFAuthenticationViewController

- (SFAuthenticationViewController)initWithURL:(id)a3 callbackURLScheme:(id)a4 usingEphemeralSession:(BOOL)a5 jitEnabled:(BOOL)a6 presentationContextWindow:(id)a7
{
  v7 = a6;
  v8 = a5;
  v12 = MEMORY[0x1E695A958];
  v13 = a7;
  v14 = a3;
  v15 = [v12 callbackWithCustomScheme:a4];
  v16 = [(SFAuthenticationViewController *)self initWithURL:v14 callback:v15 storageMode:v8 jitEnabled:v7 presentationContextWindow:v13 additionalHeaderFields:0 proxiedAssociatedDomains:0 networkAttributionApplicationBundleIdentifier:0];

  return v16;
}

- (SFAuthenticationViewController)initWithURL:(id)a3 callback:(id)a4 storageMode:(unint64_t)a5 jitEnabled:(BOOL)a6 presentationContextWindow:(id)a7 additionalHeaderFields:(id)a8 proxiedAssociatedDomains:(id)a9 networkAttributionApplicationBundleIdentifier:(id)a10
{
  v12 = a6;
  v16 = a4;
  obj = a7;
  v32 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a3;
  v21 = objc_alloc_init(SFSafariViewControllerConfiguration);
  [(SFSafariViewControllerConfiguration *)v21 setEntersReaderIfAvailable:0];
  [(SFSafariViewControllerConfiguration *)v21 setBarCollapsingEnabled:0];
  [(SFSafariViewControllerConfiguration *)v21 set_storageModeForAuthenticationSession:a5];
  [(SFSafariViewControllerConfiguration *)v21 _setJITEnabled:v12];
  [(SFSafariViewControllerConfiguration *)v21 _setNetworkAttributionApplicationBundleIdentifier:v19];

  v33.receiver = self;
  v33.super_class = SFAuthenticationViewController;
  v22 = [(SFSafariViewController *)&v33 initWithURL:v20 configuration:v21];

  if (v22)
  {
    objc_storeStrong(&v22->_presentationContextWindow, obj);
    objc_storeStrong(&v22->_callback, a4);
    v23 = [v18 copy];
    proxiedAssociatedDomains = v22->_proxiedAssociatedDomains;
    v22->_proxiedAssociatedDomains = v23;

    v25 = [(SFSafariViewController *)v22 serviceProxy];
    v26 = [(SFSafariViewController *)v22 initialURL];
    [v25 decideCookieSharingForURL:v26 callback:v16 proxiedAssociatedDomains:v22->_proxiedAssociatedDomains];

    if ([v17 count])
    {
      v27 = [(SFSafariViewController *)v22 serviceProxy];
      [v27 setAdditionalHeaderFieldsForInitialLoad:v17];
    }

    [(SFSafariViewController *)v22 setDismissButtonStyle:2];
    [(SFSafariViewController *)v22 setTransitioningDelegate:v22];
    [(SFAuthenticationViewController *)v22 setDefersAddingRemoteViewController:1];
    [(SFAuthenticationViewController *)v22 setModalInPresentation:1];
    v28 = v22;
  }

  return v22;
}

- (void)setDefersAddingRemoteViewController:(BOOL)a3
{
  v3 = a3;
  if ([(SFSafariViewController *)self defersAddingRemoteViewController]!= a3)
  {
    v7.receiver = self;
    v7.super_class = SFAuthenticationViewController;
    [(SFSafariViewController *)&v7 setDefersAddingRemoteViewController:v3];
    if (!v3)
    {
      [(SFSafariViewController *)self _addRemoteViewControllerIfNeeded];
      v5 = [(SFSafariViewController *)self serviceProxy];
      v6 = [(SFSafariViewController *)self initialURL];
      [v5 loadURL:v6];
    }
  }
}

- (void)_presentViewController
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1D4644000, a2, OS_LOG_TYPE_FAULT, "Attempted to present SFAuthenticationViewController from a view controller that is being dismissed: %@", &v2, 0xCu);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SFAuthenticationViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E8490798;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = SFAuthenticationViewController;
  v7 = v6;
  [(SFAuthenticationViewController *)&v8 dismissViewControllerAnimated:v4 completion:v9];
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
  v5 = [(SFSafariViewController *)self serviceProxy];
  v3 = [(SFSafariViewController *)self configuration];
  [v5 setConfiguration:v3];

  [v5 setDismissButtonStyle:{-[SFSafariViewController dismissButtonStyle](self, "dismissButtonStyle")}];
  v4 = [(SFSafariViewController *)self initialURL];
  [v5 decideCookieSharingForURL:v4 callback:self->_callback proxiedAssociatedDomains:self->_proxiedAssociatedDomains];

  [(SFAuthenticationViewController *)self setDefersAddingRemoteViewController:1];
}

- (void)remoteViewController:(id)a3 hostApplicationOpenURL:(id)a4
{
  v6 = a4;
  v5 = [(SFSafariViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 safariViewController:self hostApplicationOpenURL:v6];
  }
}

- (void)remoteViewController:(id)a3 didDecideCookieSharingForURL:(id)a4 shouldCancel:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v12 = a4;
  v9 = a6;
  v10 = [(SFSafariViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 safariViewController:self didDecideCookieSharingForURL:v12 shouldCancel:v7 withError:v9];
  }

  v11 = [(SFAuthenticationViewController *)self presentingViewController];

  if (v7)
  {
    if (v11)
    {
      [(SFAuthenticationViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    if (!v11)
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