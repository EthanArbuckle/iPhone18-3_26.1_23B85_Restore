@interface MKLookAroundFullScreenViewController
- (MKLookAroundFullScreenViewControllerDelegate)delegate;
- (UIView)contentView;
- (void)attachContentView;
- (void)detachContentView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v5 = [(MKLookAroundFullScreenViewController *)self contentView];
  v3 = [(MKLookAroundFullScreenViewController *)self view];
  v4 = [v5 isDescendantOfView:v3];

  if (v4)
  {
    [v5 removeFromSuperview];
    [v5 setAutoresizingMask:{-[MKLookAroundFullScreenViewController originalAutoresizingMask](self, "originalAutoresizingMask")}];
  }
}

- (void)attachContentView
{
  v3 = [(MKLookAroundFullScreenViewController *)self delegate];

  if (v3)
  {
    v4 = [(MKLookAroundFullScreenViewController *)self delegate];
    v9 = [v4 viewForFullScreenViewController:self];

    v5 = [(MKLookAroundFullScreenViewController *)self view];
    v6 = [v9 isDescendantOfView:v5];

    if ((v6 & 1) == 0)
    {
      -[MKLookAroundFullScreenViewController setOriginalAutoresizingMask:](self, "setOriginalAutoresizingMask:", [v9 autoresizingMask]);
      [v9 setAutoresizingMask:18];
      v7 = [(MKLookAroundFullScreenViewController *)self view];
      [v7 bounds];
      [v9 setFrame:?];

      v8 = [(MKLookAroundFullScreenViewController *)self view];
      [v8 addSubview:v9];

      [(MKLookAroundFullScreenViewController *)self setContentView:v9];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v16 viewDidLayoutSubviews];
  v3 = [(MKLookAroundFullScreenViewController *)self contentView];
  v4 = [v3 superview];
  v5 = [(MKLookAroundFullScreenViewController *)self view];

  if (v4 == v5)
  {
    v6 = [(MKLookAroundFullScreenViewController *)self view];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(MKLookAroundFullScreenViewController *)self contentView];
    [v15 setFrame:{v8, v10, v12, v14}];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(MKLookAroundFullScreenViewController *)self delegate];
  [v8 fullScreenViewController:self viewWillTransitionToSize:v7 coordinator:{width, height}];

  v9.receiver = self;
  v9.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v5 viewDidDisappear:a3];
  if ([(MKLookAroundFullScreenViewController *)self isBeingDismissed])
  {
    v4 = [(MKLookAroundFullScreenViewController *)self delegate];
    [v4 fullScreenViewControllerDidDismiss:self];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v5 viewWillDisappear:a3];
  if ([(MKLookAroundFullScreenViewController *)self isBeingDismissed])
  {
    [(MKLookAroundFullScreenViewController *)self detachContentView];
    v4 = [(MKLookAroundFullScreenViewController *)self delegate];
    [v4 fullScreenViewControllerWillDismiss:self];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v5 viewDidAppear:a3];
  if ([(MKLookAroundFullScreenViewController *)self isBeingPresented])
  {
    [(MKLookAroundFullScreenViewController *)self attachContentView];
    v4 = [(MKLookAroundFullScreenViewController *)self delegate];
    [v4 fullScreenViewControllerDidPresent:self];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MKLookAroundFullScreenViewController;
  [(MKLookAroundFullScreenViewController *)&v5 viewWillAppear:a3];
  if ([(MKLookAroundFullScreenViewController *)self isBeingPresented])
  {
    v4 = [(MKLookAroundFullScreenViewController *)self delegate];
    [v4 fullScreenViewControllerWillPresent:self];
  }
}

@end