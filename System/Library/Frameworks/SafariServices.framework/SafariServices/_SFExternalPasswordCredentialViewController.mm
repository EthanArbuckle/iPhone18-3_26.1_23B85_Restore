@interface _SFExternalPasswordCredentialViewController
- (_SFExternalPasswordCredentialViewController)init;
- (id)_connectToServiceWithCompletion:(id)completion;
- (void)_autoFillWithExternalCredential:(id)credential pageID:(id)d frameID:(id)iD;
- (void)_sceneDidEnterBackground:(id)background;
- (void)_setUpServiceProxyIfNeeded;
- (void)dealloc;
- (void)getCredentialForExternalCredential:(id)credential completion:(id)completion;
- (void)presentExternalPasswordCredentialRemoteViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation _SFExternalPasswordCredentialViewController

- (void)_autoFillWithExternalCredential:(id)credential pageID:(id)d frameID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  externalCredential = [credential externalCredential];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_SFExternalPasswordCredentialViewController *)self _setUpServiceProxyIfNeeded];
    serviceProxy = self->_serviceProxy;
    if (dCopy && iDCopy)
    {
      [(SFExternalPasswordCredentialServiceViewControllerProtocol *)serviceProxy autoFillWithCredentialIdentity:externalCredential pageID:dCopy frameID:iDCopy];
    }

    else
    {
      [(SFExternalPasswordCredentialServiceViewControllerProtocol *)serviceProxy autoFillWithCredentialIdentity:externalCredential];
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

- (void)getCredentialForExternalCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    externalCredential = [credential externalCredential];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFExternalPasswordCredentialViewController *)self _setUpServiceProxyIfNeeded];
      [(SFExternalPasswordCredentialServiceViewControllerProtocol *)self->_serviceProxy getCredentialForCredentialIdentity:externalCredential completion:completionCopy];
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_SFExternalPasswordCredentialViewController getCredentialForExternalCredential:v8 completion:?];
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695A8F0] code:0 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, v9);
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

- (void)_sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  viewIfLoaded = [(_SFExternalPasswordCredentialViewController *)self viewIfLoaded];
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

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SFExternalPasswordCredentialViewController;
  [(_SFExternalPasswordCredentialViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _SFExternalPasswordCredentialViewController;
  [(_SFExternalPasswordCredentialViewController *)&v4 viewDidLoad];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];

  if (self->_remoteViewController)
  {
    [(_SFPasswordViewController *)self _addRemoteViewAsChild];
  }
}

- (void)presentExternalPasswordCredentialRemoteViewController:(id)controller
{
  delegate = [(_SFPasswordViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate presentExternalPasswordCredentialViewController:self];
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

- (id)_connectToServiceWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79___SFExternalPasswordCredentialViewController__connectToServiceWithCompletion___block_invoke;
  v8[3] = &unk_1E8490270;
  v8[4] = self;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = [(SFPasswordRemoteViewController *)SFExternalPasswordCredentialRemoteViewController requestViewControllerWithConnectionHandler:v8];

  return v6;
}

@end