@interface MKLookAroundFullScreenViewController
- (MKLookAroundFullScreenViewControllerDelegate)delegate;
- (UIView)contentView;
- (void)attachContentView;
- (void)detachContentView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MKLookAroundFullScreenViewController

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (MKLookAroundFullScreenViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)detachContentView
{
  contentView = [(MKLookAroundFullScreenViewController *)self contentView];
  view = [(MKLookAroundFullScreenViewController *)self view];
  v4 = [contentView isDescendantOfView:view];

  if (v4)
  {
    [contentView removeFromSuperview];
    [contentView setAutoresizingMask:{-[MKLookAroundFullScreenViewController originalAutoresizingMask](self, "originalAutoresizingMask")}];
  }
}

- (void)attachContentView
{
  delegate = [(MKLookAroundFullScreenViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(MKLookAroundFullScreenViewController *)self delegate];
    v9 = [delegate2 viewForFullScreenViewController:self];

    view = [(MKLookAroundFullScreenViewController *)self view];
    v6 = [v9 isDescendantOfView:view];

    if ((v6 & 1) == 0)
    {
      -[MKLookAroundFullScreenViewController setOriginalAutoresizingMask:](self, "setOriginalAutoresizingMask:", [v9 autoresizingMask]);
      [v9 setAutoresizingMask:18];
      view2 = [(MKLookAroundFullScreenViewController *)self view];
      [view2 bounds];
      [v9 setFrame:?];

      view3 = [(MKLookAroundFullScreenViewController *)self view];
      [view3 addSubview:v9];

      [(MKLookAroundFullScreenViewController *)self setContentView:v9];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v16 viewDidLayoutSubviews];
  contentView = [(MKLookAroundFullScreenViewController *)self contentView];
  superview = [contentView superview];
  view = [(MKLookAroundFullScreenViewController *)self view];

  if (superview == view)
  {
    view2 = [(MKLookAroundFullScreenViewController *)self view];
    [view2 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    contentView2 = [(MKLookAroundFullScreenViewController *)self contentView];
    [contentView2 setFrame:{v8, v10, v12, v14}];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  delegate = [(MKLookAroundFullScreenViewController *)self delegate];
  [delegate fullScreenViewController:self viewWillTransitionToSize:coordinatorCopy coordinator:{width, height}];

  v9.receiver = self;
  v9.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v5 viewDidDisappear:disappear];
  if ([(MKLookAroundFullScreenViewController *)self isBeingDismissed])
  {
    delegate = [(MKLookAroundFullScreenViewController *)self delegate];
    [delegate fullScreenViewControllerDidDismiss:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v5 viewWillDisappear:disappear];
  if ([(MKLookAroundFullScreenViewController *)self isBeingDismissed])
  {
    [(MKLookAroundFullScreenViewController *)self detachContentView];
    delegate = [(MKLookAroundFullScreenViewController *)self delegate];
    [delegate fullScreenViewControllerWillDismiss:self];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v5 viewDidAppear:appear];
  if ([(MKLookAroundFullScreenViewController *)self isBeingPresented])
  {
    [(MKLookAroundFullScreenViewController *)self attachContentView];
    delegate = [(MKLookAroundFullScreenViewController *)self delegate];
    [delegate fullScreenViewControllerDidPresent:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v5 viewWillAppear:appear];
  if ([(MKLookAroundFullScreenViewController *)self isBeingPresented])
  {
    delegate = [(MKLookAroundFullScreenViewController *)self delegate];
    [delegate fullScreenViewControllerWillPresent:self];
  }
}

@end