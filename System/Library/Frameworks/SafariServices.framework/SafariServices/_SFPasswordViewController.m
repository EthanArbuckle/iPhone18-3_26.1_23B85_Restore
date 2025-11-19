@interface _SFPasswordViewController
- (_SFPasswordViewController)init;
- (_SFPasswordViewControllerDelegate)delegate;
- (void)_addRemoteView;
- (void)_addRemoteViewAsChild;
- (void)_connectToService;
- (void)_dismissPasswordViewController;
- (void)serviceProxyWillQueueInvocation:(id)a3;
@end

@implementation _SFPasswordViewController

- (_SFPasswordViewController)init
{
  v6.receiver = self;
  v6.super_class = _SFPasswordViewController;
  v2 = [(_SFPasswordViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(_SFPasswordViewController *)v2 _setUpServiceProxyIfNeeded];
    [(_SFPasswordViewController *)v3 _connectToService];
    v4 = v3;
  }

  return v3;
}

- (void)_addRemoteViewAsChild
{
  [(_SFPasswordViewController *)self _addRemoteView];
  v3 = [(_SFPasswordViewController *)self _remoteViewController];
  [(_SFPasswordViewController *)self addChildViewController:v3];
}

- (void)_addRemoteView
{
  v3 = [(_SFPasswordViewController *)self _remoteViewController];
  if (v3)
  {
    v8 = v3;
    v4 = [(_SFPasswordViewController *)self isViewLoaded];
    v3 = v8;
    if (v4)
    {
      v5 = [v8 view];
      v6 = [(_SFPasswordViewController *)self view];
      [v6 addSubview:v5];

      v7 = [(_SFPasswordViewController *)self view];
      [v7 bounds];
      [v5 setFrame:?];

      [v5 setAutoresizingMask:18];
      v3 = v8;
    }
  }
}

- (void)_connectToService
{
  v3 = [(_UIAsyncInvocation *)self->_cancelViewServiceRequest invoke];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46___SFPasswordViewController__connectToService__block_invoke;
  v6[3] = &unk_1E848F810;
  v6[4] = self;
  v4 = [(_SFPasswordViewController *)self _connectToServiceWithCompletion:v6];
  cancelViewServiceRequest = self->_cancelViewServiceRequest;
  self->_cancelViewServiceRequest = v4;
}

- (void)_dismissPasswordViewController
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59___SFPasswordViewController__dismissPasswordViewController__block_invoke;
  aBlock[3] = &unk_1E848F810;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  [(_SFPasswordViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)serviceProxyWillQueueInvocation:(id)a3
{
  if (!self->_cancelViewServiceRequest)
  {
    [(_SFPasswordViewController *)self _connectToService];
  }
}

- (_SFPasswordViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end