@interface AVFullScreenViewController
- (AVFullScreenViewController)associatedFullScreenViewController;
- (AVFullScreenViewController)sourceFullScreenViewController;
- (AVFullScreenViewControllerDelegate)delegate;
- (BOOL)_canShowWhileLocked;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldAutorotate;
- (UIView)contentView;
- (id)keyCommands;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)attachContentView;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillMoveToWindow:(id)window;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AVFullScreenViewController

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (AVFullScreenViewController)sourceFullScreenViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceFullScreenViewController);

  return WeakRetained;
}

- (AVFullScreenViewController)associatedFullScreenViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedFullScreenViewController);

  return WeakRetained;
}

- (AVFullScreenViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  delegate = [(AVFullScreenViewController *)self delegate];
  [delegate fullScreenViewController:self viewWillTransitionToSize:coordinatorCopy coordinator:{width, height}];

  v9.receiver = self;
  v9.super_class = AVFullScreenViewController;
  [(AVFullScreenViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (int64_t)preferredStatusBarStyle
{
  delegate = [(AVFullScreenViewController *)self delegate];
  v4 = [delegate preferredStatusStyleForFullScreenViewController:self];

  return v4;
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  delegate = [(AVFullScreenViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate prefersStatusBarHiddenForFullScreenViewController:selfCopy];

  return selfCopy;
}

- (BOOL)shouldAutorotate
{
  delegate = [(AVFullScreenViewController *)self delegate];
  shouldAutorotate = [delegate shouldAutorotate];

  return shouldAutorotate;
}

- (unint64_t)supportedInterfaceOrientations
{
  delegate = [(AVFullScreenViewController *)self delegate];
  supportedInterfaceOrientations = [delegate supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  delegate = [(AVFullScreenViewController *)self delegate];
  preferredInterfaceOrientationForPresentation = [delegate preferredInterfaceOrientationForPresentation];

  return preferredInterfaceOrientationForPresentation;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AVFullScreenViewController;
  [(AVFullScreenViewController *)&v4 viewDidAppear:appear];
  [(UIViewController *)self avkit_setNeedsUpdatePreferencesIfNeeded];
}

- (void)attachContentView
{
  v24 = *MEMORY[0x1E69E9840];
  delegate = [(AVFullScreenViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(AVFullScreenViewController *)self delegate];
    v5 = [delegate2 viewForFullScreenViewController:self];

    if (!v5)
    {
      v6 = _AVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v18 = _AVMethodProem(self);
        delegate3 = [(AVFullScreenViewController *)self delegate];
        v20 = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = delegate3;
        _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "%@ did not receive a view from its delegate, %@.", &v20, 0x16u);
      }
    }

    view = [(AVFullScreenViewController *)self view];
    v8 = [v5 isDescendantOfView:view];

    if ((v8 & 1) == 0)
    {
      delegate4 = [(AVFullScreenViewController *)self delegate];
      [delegate4 fullScreenViewControllerWillAttachContentView:self];

      [v5 setAutoresizingMask:18];
      view2 = [(AVFullScreenViewController *)self view];
      [view2 bounds];
      [v5 setFrame:?];

      view3 = [(AVFullScreenViewController *)self view];
      [view3 setPresentationContainerContentView:v5];

      view4 = [(AVFullScreenViewController *)self view];
      appearanceProxy = [view4 appearanceProxy];
      delegate5 = [(AVFullScreenViewController *)self delegate];
      v15 = [delegate5 playbackContainerViewForFullScreenViewController:self];
      [appearanceProxy setActualView:v15];

      view5 = [(AVFullScreenViewController *)self view];
      [view5 addSubview:v5];

      delegate6 = [(AVFullScreenViewController *)self delegate];
      [delegate6 fullScreenViewControllerDidAttachContentView:self];

      [(AVFullScreenViewController *)self setContentView:v5];
    }
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = AVFullScreenViewController;
  [(AVFullScreenViewController *)&v8 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    contentView = [(AVFullScreenViewController *)self contentView];

    if (!contentView)
    {
      delegate = [(AVFullScreenViewController *)self delegate];
      [delegate fullScreenViewControllerWillBeginFullScreenPresentation:self];

      [(AVFullScreenViewController *)self attachContentView];
    }
  }
}

- (void)viewWillMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = AVFullScreenViewController;
  [(AVFullScreenViewController *)&v6 viewWillMoveToWindow:?];
  if (!window)
  {
    if ([(AVFullScreenViewController *)self isBeingDismissed])
    {
      delegate = [(AVFullScreenViewController *)self delegate];
      [delegate fullScreenViewControllerWillEndFullScreenPresentation:self];
    }
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(AVPresentationContainerView);
  [(AVFullScreenViewController *)self setView:v3];
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(AVFullScreenViewController *)self delegate];
    v8 = [delegate keyCommandResponderForFullScreenViewController:self];

    if ([v8 canPerformAction:action withSender:senderCopy])
    {
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10.receiver = self;
  v10.super_class = AVFullScreenViewController;
  v8 = [(AVFullScreenViewController *)&v10 targetForAction:action withSender:senderCopy];
LABEL_7:

  return v8;
}

- (id)keyCommands
{
  delegate = [(AVFullScreenViewController *)self delegate];
  v4 = [delegate keyCommandResponderForFullScreenViewController:self];
  keyCommands = [v4 keyCommands];

  return keyCommands;
}

- (BOOL)_canShowWhileLocked
{
  delegate = [(AVFullScreenViewController *)self delegate];
  _canShowWhileLocked = [delegate _canShowWhileLocked];

  return _canShowWhileLocked;
}

@end