@interface _EXExtensionViewController
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (UIViewController)contentViewController;
- (id)makeContentViewController;
- (void)loadView;
@end

@implementation _EXExtensionViewController

- (id)makeContentViewController
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(_EXViewControllerSceneConfiguration *)self->_sceneConfiguration storyboard];
  v4 = v3;
  if (!v3 || ([v3 instantiateInitialViewController], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(_EXViewControllerSceneConfiguration *)self->_sceneConfiguration viewControllerClass];
    if (v6)
    {
      v5 = objc_alloc_init(v6);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (UIViewController)contentViewController
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  contentViewController = self->_contentViewController;
  if (!contentViewController)
  {
    v4 = [(_EXExtensionViewController *)self makeContentViewController];
    v5 = self->_contentViewController;
    self->_contentViewController = v4;

    contentViewController = self->_contentViewController;
  }

  return contentViewController;
}

- (void)loadView
{
  v28[4] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(_EXExtensionViewController *)self setView:v3];

  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5 = [(_EXExtensionViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(_EXExtensionViewController *)self contentViewController];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(_EXExtensionViewController *)self view];
    [v9 addSubview:v8];

    v10 = [(_EXExtensionViewController *)self view];
    v21 = MEMORY[0x1E696ACD8];
    v26 = [v8 leftAnchor];
    v25 = [v10 leftAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v23 = [v8 topAnchor];
    v22 = [v10 topAnchor];
    v20 = [v23 constraintEqualToAnchor:v22];
    v28[1] = v20;
    v19 = [v8 rightAnchor];
    v11 = [v10 rightAnchor];
    v12 = [v19 constraintEqualToAnchor:v11];
    v28[2] = v12;
    v13 = [v8 bottomAnchor];
    v14 = [v10 bottomAnchor];
    [v13 constraintEqualToAnchor:v14];
    v16 = v15 = v7;
    v28[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v21 activateConstraints:v17];

    v7 = v15;
    [(_EXExtensionViewController *)self addChildViewController:v15];
  }

  else
  {
    v8 = _EXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D29CC000, v8, OS_LOG_TYPE_DEFAULT, "Failed to load extension's content view controller", buf, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [(_EXExtensionViewController *)self contentViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(_EXExtensionViewController *)self contentViewController];
    v8 = [v7 shouldAcceptXPCConnection:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end