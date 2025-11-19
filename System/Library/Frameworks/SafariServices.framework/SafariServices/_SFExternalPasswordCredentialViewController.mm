@interface _SFExternalPasswordCredentialViewController
- (_SFExternalPasswordCredentialViewController)init;
- (id)_connectToServiceWithCompletion:(id)a3;
- (void)_autoFillWithExternalCredential:(id)a3 pageID:(id)a4 frameID:(id)a5;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)_setUpServiceProxyIfNeeded;
- (void)dealloc;
- (void)getCredentialForExternalCredential:(id)a3 completion:(id)a4;
- (void)presentExternalPasswordCredentialRemoteViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation _SFExternalPasswordCredentialViewController

- (void)_autoFillWithExternalCredential:(id)a3 pageID:(id)a4 frameID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 externalCredential];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_SFExternalPasswordCredentialViewController *)self _setUpServiceProxyIfNeeded];
    serviceProxy = self->_serviceProxy;
    if (v8 && v9)
    {
      [(SFExternalPasswordCredentialServiceViewControllerProtocol *)serviceProxy autoFillWithCredentialIdentity:v10 pageID:v8 frameID:v9];
    }

    else
    {
      [(SFExternalPasswordCredentialServiceViewControllerProtocol *)serviceProxy autoFillWithCredentialIdentity:v10];
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_SFExternalPasswordCredentialViewController _autoFillWithExternalCredential:v12 pageID:? frameID:?];
    }
  }
}

- (void)getCredentialForExternalCredential:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [a3 externalCredential];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFExternalPasswordCredentialViewController *)self _setUpServiceProxyIfNeeded];
      [(SFExternalPasswordCredentialServiceViewControllerProtocol *)self->_serviceProxy getCredentialForCredentialIdentity:v7 completion:v6];
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_SFExternalPasswordCredentialViewController getCredentialForExternalCredential:v8 completion:?];
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695A8F0] code:0 userInfo:0];
      (*(v6 + 2))(v6, 0, 0, v9);
    }
  }
}

- (_SFExternalPasswordCredentialViewController)init
{
  v6.receiver = self;
  v6.super_class = _SFExternalPasswordCredentialViewController;
  v2 = [(_SFPasswordViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(_SFExternalPasswordCredentialViewController *)v2 setModalTransitionStyle:12];
    [(_SFExternalPasswordCredentialViewController *)v3 setModalPresentationStyle:6];
    v4 = v3;
  }

  return v3;
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v8 = a3;
  v4 = [(_SFExternalPasswordCredentialViewController *)self viewIfLoaded];
  v5 = [v4 window];
  v6 = [v5 windowScene];

  if (v6)
  {
    v7 = [v8 object];

    if (v6 == v7)
    {
      [(_SFPasswordViewController *)self remoteViewControllerWillDismiss:self->_remoteViewController];
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SFExternalPasswordCredentialViewController;
  [(_SFExternalPasswordCredentialViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _SFExternalPasswordCredentialViewController;
  [(_SFExternalPasswordCredentialViewController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];

  if (self->_remoteViewController)
  {
    [(_SFPasswordViewController *)self _addRemoteViewAsChild];
  }
}

- (void)presentExternalPasswordCredentialRemoteViewController:(id)a3
{
  v4 = [(_SFPasswordViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 presentExternalPasswordCredentialViewController:self];
  }
}

- (void)_setUpServiceProxyIfNeeded
{
  if (!self->_serviceProxy)
  {
    v3 = [[SFQueueingServiceViewControllerProxy alloc] initWithProtocol:&unk_1F50A9B00];
    serviceProxy = self->_serviceProxy;
    self->_serviceProxy = v3;

    v5 = self->_serviceProxy;

    [(SFExternalPasswordCredentialServiceViewControllerProtocol *)v5 setDelegate:self];
  }
}

- (id)_connectToServiceWithCompletion:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79___SFExternalPasswordCredentialViewController__connectToServiceWithCompletion___block_invoke;
  v8[3] = &unk_1E8490270;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(SFPasswordRemoteViewController *)SFExternalPasswordCredentialRemoteViewController requestViewControllerWithConnectionHandler:v8];

  return v6;
}

@end