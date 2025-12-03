@interface SFDefaultBrowserViewController
- (SFDefaultBrowserViewController)initWithViewDidBecomeReady:(id)ready completion:(id)completion;
- (id)serviceProxy;
- (void)_addRemoteViewController;
- (void)_connectToService;
- (void)_didLoadRemoteViewController:(id)controller;
- (void)_initializeViewService;
- (void)remoteViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)serviceProxyWillQueueInvocation:(id)invocation;
@end

@implementation SFDefaultBrowserViewController

- (SFDefaultBrowserViewController)initWithViewDidBecomeReady:(id)ready completion:(id)completion
{
  readyCopy = ready;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = SFDefaultBrowserViewController;
  v8 = [(SFDefaultBrowserViewController *)&v15 init];
  if (v8)
  {
    v9 = _Block_copy(readyCopy);
    viewDidBecomeReady = v8->_viewDidBecomeReady;
    v8->_viewDidBecomeReady = v9;

    v11 = _Block_copy(completionCopy);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v11;

    [(SFDefaultBrowserViewController *)v8 _initializeViewService];
    v13 = v8;
  }

  return v8;
}

- (void)_initializeViewService
{
  if (!self->_serviceProxy)
  {
    v3 = [[SFQueueingServiceViewControllerProxy alloc] initWithProtocol:&unk_1F50B2928];
    serviceProxy = self->_serviceProxy;
    self->_serviceProxy = v3;

    [(SFDefaultBrowserServiceProtocol *)self->_serviceProxy setDelegate:self];

    [(SFDefaultBrowserViewController *)self _connectToService];
  }
}

- (void)_connectToService
{
  invoke = [(_UIAsyncInvocation *)self->_cancelViewServiceRequest invoke];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SFDefaultBrowserViewController__connectToService__block_invoke;
  v6[3] = &unk_1E8492C38;
  v6[4] = self;
  v4 = [SFDefaultBrowserRemoteViewController requestViewControllerWithConnectionHandler:v6];
  cancelViewServiceRequest = self->_cancelViewServiceRequest;
  self->_cancelViewServiceRequest = v4;
}

void __51__SFDefaultBrowserViewController__connectToService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1000);
  *(v7 + 1000) = 0;

  if (v5)
  {
    [*(a1 + 32) _didLoadRemoteViewController:v5];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__SFAddToHomeScreenViewController__connectToService__block_invoke_cold_1(v6, v9);
    }

    (*(*(*(a1 + 32) + 1016) + 16))();
  }
}

- (id)serviceProxy
{
  [(SFDefaultBrowserViewController *)self _initializeViewService];
  serviceProxy = self->_serviceProxy;

  return serviceProxy;
}

- (void)_didLoadRemoteViewController:(id)controller
{
  objc_storeStrong(&self->_remoteViewController, controller);
  controllerCopy = controller;
  serviceViewControllerProxy = [controllerCopy serviceViewControllerProxy];
  [(SFDefaultBrowserServiceProtocol *)self->_serviceProxy setTarget:serviceViewControllerProxy];

  [(SFDefaultBrowserRemoteViewController *)self->_remoteViewController setDelegate:self];
  serviceProxy = self->_serviceProxy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__SFDefaultBrowserViewController__didLoadRemoteViewController___block_invoke;
  v8[3] = &unk_1E848FA00;
  v8[4] = self;
  [(SFDefaultBrowserServiceProtocol *)serviceProxy prepareForDisplayWithCompletionHandler:v8];
}

uint64_t __63__SFDefaultBrowserViewController__didLoadRemoteViewController___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _addRemoteViewController];
  }

  v3 = *(*(*(a1 + 32) + 1016) + 16);

  return v3();
}

- (void)_addRemoteViewController
{
  view = [(SFDefaultBrowserRemoteViewController *)self->_remoteViewController view];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  [view setFrame:?];

  view2 = [(SFDefaultBrowserViewController *)self view];
  [view2 addSubview:view];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view3 = [(SFDefaultBrowserViewController *)self view];
  [view3 setBackgroundColor:systemBackgroundColor];

  [(SFDefaultBrowserViewController *)self addChildViewController:self->_remoteViewController];
  [(_UIRemoteViewController *)self->_remoteViewController didMoveToParentViewController:self];
}

- (void)serviceProxyWillQueueInvocation:(id)invocation
{
  if (!self->_cancelViewServiceRequest)
  {
    [(SFDefaultBrowserViewController *)self _connectToService];
  }
}

- (void)remoteViewController:(id)controller didFinishWithResult:(int64_t)result
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, result);
  }
}

@end