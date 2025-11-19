@interface _ASExtensionViewController
- (_ASExtensionViewController)initWithExtension:(id)a3;
- (void)_beginNonUIRequest:(BOOL)a3 connectionHandler:(id)a4;
- (void)_beginRequestWithConnectionHandler:(id)a3;
- (void)_extensionRequestDidFinish:(BOOL)a3;
- (void)_invalidateNonUIRequestTimerIfNeeded;
- (void)_nonUIRequestTimedOut;
- (void)_setRemoteViewController:(id)a3;
- (void)prepareToCancelRequestWithHostContext:(id)a3 error:(id)a4 completion:(id)a5;
- (void)setDismissOnBackground:(BOOL)a3;
@end

@implementation _ASExtensionViewController

- (_ASExtensionViewController)initWithExtension:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _ASExtensionViewController;
  v6 = [(_ASExtensionViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, a3);
    [(_ASExtensionViewController *)v7 setModalPresentationStyle:2];
    v8 = v7;
  }

  return v7;
}

- (void)_extensionRequestDidFinish:(BOOL)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___ASExtensionViewController__extensionRequestDidFinish___block_invoke;
  block[3] = &unk_1E7AF7F60;
  objc_copyWeak(&v5, &location);
  v6 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_setRemoteViewController:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_ASExtensionViewController *)self _endDelayingPresentation];
  v5 = [(UIViewController *)v4 view];
  v6 = [(_ASExtensionViewController *)self view];
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = v4;
  v21 = v4;

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIViewController *)self->_remoteViewController willMoveToParentViewController:self];
  [v6 addSubview:v5];
  [(_ASExtensionViewController *)self addChildViewController:self->_remoteViewController];
  v17 = MEMORY[0x1E696ACD8];
  v23 = [v5 leftAnchor];
  v22 = [v6 leftAnchor];
  v20 = [v23 constraintEqualToAnchor:v22];
  v24[0] = v20;
  v19 = [v5 topAnchor];
  v18 = [v6 topAnchor];
  v8 = [v19 constraintEqualToAnchor:v18];
  v24[1] = v8;
  v9 = [v5 rightAnchor];
  v10 = [v6 rightAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v24[2] = v11;
  v12 = [v5 bottomAnchor];
  v13 = [v6 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v24[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v17 activateConstraints:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setDismissOnBackground:(BOOL)a3
{
  if (self->_dismissOnBackground != a3)
  {
    if (a3)
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

    self->_dismissOnBackground = a3;
  }
}

- (void)_beginRequestWithConnectionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  [(_ASExtensionViewController *)self _beginDelayingPresentation:0 cancellationHandler:3.0];
  extension = self->_extension;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___ASExtensionViewController__beginRequestWithConnectionHandler___block_invoke;
  v7[3] = &unk_1E7AF7FD8;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(NSExtension *)extension _as_instantiateViewControllerWithConnectionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_beginNonUIRequest:(BOOL)a3 connectionHandler:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  self->_allowRequestingUIFromNonUIRequest = a3;
  extension = self->_extension;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __67___ASExtensionViewController__beginNonUIRequest_connectionHandler___block_invoke;
  v14 = &unk_1E7AF7FD8;
  v15 = self;
  objc_copyWeak(&v17, &location);
  v8 = v6;
  v16 = v8;
  [(NSExtension *)extension _as_instantiateViewControllerWithConnectionHandler:&v11];
  if ([(_ASExtensionViewController *)self _shouldUseNonUIRequestTimer:v11])
  {
    v9 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__nonUIRequestTimedOut selector:0 userInfo:0 repeats:3.0];
    [v9 setTolerance:0.2];
    v10 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v10 addTimer:v9 forMode:*MEMORY[0x1E695DA28]];

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
  v3 = [(NSExtension *)self->_extension _plugIn];
  v4 = [v3 entitlements];

  v5 = [v4 safari_BOOLForKey:@"get-task-allow"];
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

- (void)prepareToCancelRequestWithHostContext:(id)a3 error:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85___ASExtensionViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke;
  v14[3] = &unk_1E7AF76D0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

@end