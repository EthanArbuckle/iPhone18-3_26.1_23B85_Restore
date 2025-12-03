@interface _EXExtensionViewController
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (UIViewController)contentViewController;
- (id)makeContentViewController;
- (void)loadView;
@end

@implementation _EXExtensionViewController

- (id)makeContentViewController
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  storyboard = [(_EXViewControllerSceneConfiguration *)self->_sceneConfiguration storyboard];
  v4 = storyboard;
  if (!storyboard || ([storyboard instantiateInitialViewController], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    viewControllerClass = [(_EXViewControllerSceneConfiguration *)self->_sceneConfiguration viewControllerClass];
    if (viewControllerClass)
    {
      v5 = objc_alloc_init(viewControllerClass);
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
    makeContentViewController = [(_EXExtensionViewController *)self makeContentViewController];
    v5 = self->_contentViewController;
    self->_contentViewController = makeContentViewController;

    contentViewController = self->_contentViewController;
  }

  return contentViewController;
}

- (void)loadView
{
  v28[4] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(_EXExtensionViewController *)self setView:v3];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(_EXExtensionViewController *)self view];
  [view setBackgroundColor:clearColor];

  contentViewController = [(_EXExtensionViewController *)self contentViewController];
  v7 = contentViewController;
  if (contentViewController)
  {
    view2 = [contentViewController view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    view3 = [(_EXExtensionViewController *)self view];
    [view3 addSubview:view2];

    view4 = [(_EXExtensionViewController *)self view];
    v21 = MEMORY[0x1E696ACD8];
    leftAnchor = [view2 leftAnchor];
    leftAnchor2 = [view4 leftAnchor];
    v24 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v28[0] = v24;
    topAnchor = [view2 topAnchor];
    topAnchor2 = [view4 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[1] = v20;
    rightAnchor = [view2 rightAnchor];
    rightAnchor2 = [view4 rightAnchor];
    v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v28[2] = v12;
    bottomAnchor = [view2 bottomAnchor];
    bottomAnchor2 = [view4 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v16 = v15 = v7;
    v28[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v21 activateConstraints:v17];

    v7 = v15;
    [(_EXExtensionViewController *)self addChildViewController:v15];
  }

  else
  {
    view2 = _EXDefaultLog();
    if (os_log_type_enabled(view2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D29CC000, view2, OS_LOG_TYPE_DEFAULT, "Failed to load extension's content view controller", buf, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  contentViewController = [(_EXExtensionViewController *)self contentViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    contentViewController2 = [(_EXExtensionViewController *)self contentViewController];
    v8 = [contentViewController2 shouldAcceptXPCConnection:connectionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end