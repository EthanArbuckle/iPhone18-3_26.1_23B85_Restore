@interface _ASExtensionViewController
- (_ASExtensionViewController)initWithExtension:(id)extension;
- (void)_beginNonUIRequest:(BOOL)request connectionHandler:(id)handler;
- (void)_beginRequestWithConnectionHandler:(id)handler;
- (void)_extensionRequestDidFinish:(BOOL)finish;
- (void)_invalidateNonUIRequestTimerIfNeeded;
- (void)_nonUIRequestTimedOut;
- (void)_setRemoteViewController:(id)controller;
- (void)prepareToCancelRequestWithHostContext:(id)context error:(id)error completion:(id)completion;
- (void)setDismissOnBackground:(BOOL)background;
@end

@implementation _ASExtensionViewController

- (_ASExtensionViewController)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v10.receiver = self;
  v10.super_class = _ASExtensionViewController;
  v6 = [(_ASExtensionViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, extension);
    [(_ASExtensionViewController *)v7 setModalPresentationStyle:2];
    v8 = v7;
  }

  return v7;
}

- (void)_extensionRequestDidFinish:(BOOL)finish
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___ASExtensionViewController__extensionRequestDidFinish___block_invoke;
  block[3] = &unk_1E7AF7F60;
  objc_copyWeak(&v5, &location);
  finishCopy = finish;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_setRemoteViewController:(id)controller
{
  v24[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  [(_ASExtensionViewController *)self _endDelayingPresentation];
  view = [(UIViewController *)controllerCopy view];
  view2 = [(_ASExtensionViewController *)self view];
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = controllerCopy;
  v21 = controllerCopy;

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIViewController *)self->_remoteViewController willMoveToParentViewController:self];
  [view2 addSubview:view];
  [(_ASExtensionViewController *)self addChildViewController:self->_remoteViewController];
  v17 = MEMORY[0x1E696ACD8];
  leftAnchor = [view leftAnchor];
  leftAnchor2 = [view2 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v24[0] = v20;
  topAnchor = [view topAnchor];
  topAnchor2 = [view2 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[1] = v8;
  rightAnchor = [view rightAnchor];
  rightAnchor2 = [view2 rightAnchor];
  v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v24[2] = v11;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v17 activateConstraints:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setDismissOnBackground:(BOOL)background
{
  if (self->_dismissOnBackground != background)
  {
    if (background)
    {
      objc_initWeak(&location, self);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __53___ASExtensionViewController_setDismissOnBackground___block_invoke;
      v5[3] = &unk_1E7AF75E0;
      objc_copyWeak(&v6, &location);
      [(UIViewController *)self _as_setApplicationBackgroundBlock:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {
      [(UIViewController *)self _as_setApplicationBackgroundBlock:0];
    }

    self->_dismissOnBackground = background;
  }
}

- (void)_beginRequestWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  [(_ASExtensionViewController *)self _beginDelayingPresentation:0 cancellationHandler:3.0];
  extension = self->_extension;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke;
  v7[3] = &unk_1E7AF7FD8;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [(NSExtension *)extension _as_instantiateViewControllerWithConnectionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_beginNonUIRequest:(BOOL)request connectionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  self->_allowRequestingUIFromNonUIRequest = request;
  extension = self->_extension;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __67___ASExtensionViewController__beginNonUIRequest_connectionHandler___block_invoke;
  v14 = &unk_1E7AF7FD8;
  selfCopy = self;
  objc_copyWeak(&v17, &location);
  v8 = handlerCopy;
  v16 = v8;
  [(NSExtension *)extension _as_instantiateViewControllerWithConnectionHandler:&v11];
  if ([(_ASExtensionViewController *)self _shouldUseNonUIRequestTimer:v11])
  {
    v9 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__nonUIRequestTimedOut selector:0 userInfo:0 repeats:3.0];
    [v9 setTolerance:0.2];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:v9 forMode:*MEMORY[0x1E695DA28]];

    objc_storeWeak(&self->_nonUIRequestTimer, v9);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_invalidateNonUIRequestTimerIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_nonUIRequestTimer);
  [WeakRetained invalidate];

  objc_storeWeak(&self->_nonUIRequestTimer, 0);
}

- (void)_nonUIRequestTimedOut
{
  [(_ASExtensionViewController *)self _invalidateNonUIRequestTimerIfNeeded];
  _plugIn = [(NSExtension *)self->_extension _plugIn];
  entitlements = [_plugIn entitlements];

  v5 = [entitlements safari_BOOLForKey:@"get-task-allow"];
  v6 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      [(_ASExtensionViewController *)v6 _nonUIRequestTimedOut];
    }
  }

  else
  {
    if (v7)
    {
      [(_ASExtensionViewController *)v6 _nonUIRequestTimedOut];
    }

    [(NSExtension *)self->_extension _kill:9];
  }
}

- (void)prepareToCancelRequestWithHostContext:(id)context error:(id)error completion:(id)completion
{
  contextCopy = context;
  errorCopy = error;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85___ASExtensionViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke;
  v14[3] = &unk_1E7AF76D0;
  v14[4] = self;
  v15 = contextCopy;
  v16 = errorCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = errorCopy;
  v13 = contextCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

@end