@interface SFAuthenticationSession
- (BOOL)_startRequestingFromWebAuthenticationSession:(BOOL)a3 inWindow:(id)a4 dryRun:(BOOL)a5;
- (SFAuthenticationSession)initWithURL:(id)a3 callback:(id)a4 storageMode:(unint64_t)a5 jitEnabled:(BOOL)a6 completionHandler:(id)a7;
- (SFAuthenticationSession)initWithURL:(id)a3 callbackURLScheme:(id)a4 usingEphemeralSession:(BOOL)a5 jitEnabled:(BOOL)a6 completionHandler:(id)a7;
- (_SFAuthenticationSessionDelegate)_delegate;
- (id)presentingViewControllerForAuthenticationViewController:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)safariViewController:(id)a3 didDecideCookieSharingForURL:(id)a4 shouldCancel:(BOOL)a5 withError:(id)a6;
- (void)safariViewController:(id)a3 hostApplicationOpenURL:(id)a4;
- (void)safariViewControllerDidFinish:(id)a3;
@end

@implementation SFAuthenticationSession

- (SFAuthenticationSession)initWithURL:(id)a3 callbackURLScheme:(id)a4 usingEphemeralSession:(BOOL)a5 jitEnabled:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  v8 = a5;
  v12 = MEMORY[0x1E695A958];
  v13 = a7;
  v14 = a3;
  v15 = [v12 callbackWithCustomScheme:a4];
  v16 = [(SFAuthenticationSession *)self initWithURL:v14 callback:v15 storageMode:v8 jitEnabled:v7 completionHandler:v13];

  return v16;
}

- (SFAuthenticationSession)initWithURL:(id)a3 callback:(id)a4 storageMode:(unint64_t)a5 jitEnabled:(BOOL)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v22.receiver = self;
  v22.super_class = SFAuthenticationSession;
  v15 = [(SFAuthenticationSession *)&v22 init];
  if (v15)
  {
    v16 = [v12 copy];
    initialURL = v15->_initialURL;
    v15->_initialURL = v16;

    objc_storeStrong(&v15->_callback, a4);
    v18 = _Block_copy(v14);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;

    v15->_storageMode = a5;
    v15->_jitEnabled = a6;
    v20 = v15;
  }

  return v15;
}

- (void)dealloc
{
  [(SFAuthenticationSession *)self cancel];
  v3.receiver = self;
  v3.super_class = SFAuthenticationSession;
  [(SFAuthenticationSession *)&v3 dealloc];
}

- (BOOL)_startRequestingFromWebAuthenticationSession:(BOOL)a3 inWindow:(id)a4 dryRun:(BOOL)a5
{
  v7 = a4;
  if (self->_authViewController || self->_sessionStarted)
  {
    v8 = 0;
  }

  else
  {
    v10 = [(NSURL *)self->_initialURL scheme];
    v11 = [v10 safari_isCaseInsensitiveEqualToString:@"http"];

    if (v11)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = WBS_LOG_CHANNEL_PREFIXAuthenticationSession();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SFAuthenticationSession _startRequestingFromWebAuthenticationSession:v13 inWindow:v14 dryRun:?];
      }
    }

    v8 = 1;
    if (!a5)
    {
      v15 = [[SFAuthenticationViewController alloc] initWithURL:self->_initialURL callback:self->_callback storageMode:self->_storageMode jitEnabled:self->_jitEnabled presentationContextWindow:v7 additionalHeaderFields:self->_additionalHeaderFields proxiedAssociatedDomains:self->_proxiedAssociatedDomains networkAttributionApplicationBundleIdentifier:self->_networkAttributionApplicationBundleIdentifier];
      authViewController = self->_authViewController;
      self->_authViewController = v15;

      [(SFSafariViewController *)self->_authViewController setDelegate:self];
      [(SFAuthenticationViewController *)self->_authViewController setPresentationDelegate:self];
      [(SFSafariViewController *)self->_authViewController setModalPresentationStyle:2];
      self->_sessionStarted = 1;
    }
  }

  return v8;
}

- (void)cancel
{
  authViewController = self->_authViewController;
  if (authViewController)
  {
    v4 = [(SFAuthenticationViewController *)authViewController presentingViewController];

    v5 = self->_authViewController;
    if (v4)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __33__SFAuthenticationSession_cancel__block_invoke;
      v6[3] = &unk_1E848F810;
      v6[4] = self;
      [(SFAuthenticationViewController *)v5 dismissViewControllerAnimated:1 completion:v6];
    }

    else
    {
      self->_authViewController = 0;
    }
  }
}

void __33__SFAuthenticationSession_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (id)presentingViewControllerForAuthenticationViewController:(id)a3
{
  v4 = [(SFAuthenticationSession *)self _delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 _presentingViewControllerForAuthenticationSession:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)safariViewControllerDidFinish:(id)a3
{
  authViewController = self->_authViewController;
  self->_authViewController = 0;

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v6 = [(SFAuthenticationSession *)self _authenticationSessionErrorWithCode:1];
    completionHandler[2](completionHandler, 0, v6);
  }
}

- (void)safariViewController:(id)a3 hostApplicationOpenURL:(id)a4
{
  v5 = a4;
  authViewController = self->_authViewController;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__SFAuthenticationSession_safariViewController_hostApplicationOpenURL___block_invoke;
  v8[3] = &unk_1E848F810;
  v8[4] = self;
  [(SFAuthenticationViewController *)authViewController dismissViewControllerAnimated:1 completion:v8];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, v5, 0);
  }
}

void __71__SFAuthenticationSession_safariViewController_hostApplicationOpenURL___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)safariViewController:(id)a3 didDecideCookieSharingForURL:(id)a4 shouldCancel:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (self->_authViewController)
  {
    if (v7)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXSVCPrivacy();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17[0] = 0;
        _os_log_impl(&dword_1D4644000, v13, OS_LOG_TYPE_DEFAULT, "SFAuthenticationSession was cancelled by user.", v17, 2u);
      }

      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        if (v12)
        {
          completionHandler[2](self->_completionHandler, 0, v12);
        }

        else
        {
          v16 = [(SFAuthenticationSession *)self _authenticationSessionErrorWithCode:1];
          completionHandler[2](completionHandler, 0, v16);
        }
      }
    }
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXSVCPrivacy();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SFAuthenticationSession safariViewController:v15 didDecideCookieSharingForURL:? shouldCancel:? withError:?];
    }
  }
}

- (_SFAuthenticationSessionDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

- (void)_startRequestingFromWebAuthenticationSession:(uint64_t)a1 inWindow:(NSObject *)a2 dryRun:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "%{public}@ support for http scheme is deprecated and will be removed in a future version of iOS. Use https scheme instead.", &v2, 0xCu);
}

@end