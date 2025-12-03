@interface _MPMoviePlayerProxyView
- (MPMoviePlayerController)controller;
- (_MPMoviePlayerProxyView)initWithMoviePlayerController:(id)controller;
- (void)_updateContainmentInWindow:(id)window superview:(id)superview;
- (void)setFrame:(CGRect)frame;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
@end

@implementation _MPMoviePlayerProxyView

- (MPMoviePlayerController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)_updateContainmentInWindow:(id)window superview:(id)superview
{
  superviewCopy = superview;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (window | superviewCopy)
  {
    if (!superviewCopy)
    {
      goto LABEL_11;
    }

    hostingViewController = [WeakRetained hostingViewController];
    if (!hostingViewController)
    {
      hostingViewController = [MEMORY[0x1E69DD258] viewControllerForView:superviewCopy];
    }

    playerViewController = [WeakRetained playerViewController];
    parentViewController = [playerViewController parentViewController];

    if (hostingViewController != parentViewController)
    {
      [WeakRetained prepareToPlay];
      playerViewController2 = [WeakRetained playerViewController];
      parentViewController2 = [playerViewController2 parentViewController];

      if (parentViewController2)
      {
        playerViewController3 = [WeakRetained playerViewController];
        [playerViewController3 willMoveToParentViewController:0];

        playerViewController4 = [WeakRetained playerViewController];
        view = [playerViewController4 view];
        [view removeFromSuperview];

        playerViewController5 = [WeakRetained playerViewController];
        [playerViewController5 removeFromParentViewController];
      }

      playerViewController6 = [WeakRetained playerViewController];
      [hostingViewController addChildViewController:playerViewController6];

      playerViewController7 = [WeakRetained playerViewController];
      view2 = [playerViewController7 view];
      [(_MPMoviePlayerProxyView *)self addSubview:view2];

      playerViewController8 = [WeakRetained playerViewController];
      [playerViewController8 didMoveToParentViewController:hostingViewController];
    }
  }

  else
  {
    playerViewController9 = [WeakRetained playerViewController];
    [playerViewController9 willMoveToParentViewController:0];

    playerViewController10 = [WeakRetained playerViewController];
    view3 = [playerViewController10 view];
    [view3 removeFromSuperview];

    hostingViewController = [WeakRetained playerViewController];
    [hostingViewController removeFromParentViewController];
  }

LABEL_11:
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = _MPMoviePlayerProxyView;
  [(_MPMoviePlayerProxyView *)&v11 setFrame:?];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  playerViewController = [WeakRetained playerViewController];
  view = [playerViewController view];
  [view setFrame:{x, y, width, height}];
}

- (void)willMoveToSuperview:(id)superview
{
  v6.receiver = self;
  v6.super_class = _MPMoviePlayerProxyView;
  superviewCopy = superview;
  [(_MPMoviePlayerProxyView *)&v6 willMoveToSuperview:superviewCopy];
  v5 = [(_MPMoviePlayerProxyView *)self window:v6.receiver];
  [(_MPMoviePlayerProxyView *)self _updateContainmentInWindow:v5 superview:superviewCopy];
}

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = _MPMoviePlayerProxyView;
  windowCopy = window;
  [(_MPMoviePlayerProxyView *)&v6 willMoveToWindow:windowCopy];
  v5 = [(_MPMoviePlayerProxyView *)self superview:v6.receiver];
  [(_MPMoviePlayerProxyView *)self _updateContainmentInWindow:windowCopy superview:v5];
}

- (_MPMoviePlayerProxyView)initWithMoviePlayerController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _MPMoviePlayerProxyView;
  v5 = [(_MPMoviePlayerProxyView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_controller, controllerCopy);
  }

  return v6;
}

@end