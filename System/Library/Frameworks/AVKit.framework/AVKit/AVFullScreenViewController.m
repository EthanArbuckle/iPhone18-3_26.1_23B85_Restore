@interface AVFullScreenViewController
- (AVFullScreenViewController)associatedFullScreenViewController;
- (AVFullScreenViewController)sourceFullScreenViewController;
- (AVFullScreenViewControllerDelegate)delegate;
- (BOOL)_canShowWhileLocked;
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldAutorotate;
- (UIView)contentView;
- (id)keyCommands;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)attachContentView;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillMoveToWindow:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(AVFullScreenViewController *)self delegate];
  [v8 fullScreenViewController:self viewWillTransitionToSize:v7 coordinator:{width, height}];

  v9.receiver = self;
  v9.super_class = AVFullScreenViewController;
  [(AVFullScreenViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (int64_t)preferredStatusBarStyle
{
  v3 = [(AVFullScreenViewController *)self delegate];
  v4 = [v3 preferredStatusStyleForFullScreenViewController:self];

  return v4;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = [(AVFullScreenViewController *)self delegate];
  LOBYTE(v2) = [v3 prefersStatusBarHiddenForFullScreenViewController:v2];

  return v2;
}

- (BOOL)shouldAutorotate
{
  v2 = [(AVFullScreenViewController *)self delegate];
  v3 = [v2 shouldAutorotate];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(AVFullScreenViewController *)self delegate];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  v2 = [(AVFullScreenViewController *)self delegate];
  v3 = [v2 preferredInterfaceOrientationForPresentation];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVFullScreenViewController;
  [(AVFullScreenViewController *)&v4 viewDidAppear:a3];
  [(UIViewController *)self avkit_setNeedsUpdatePreferencesIfNeeded];
}

- (void)attachContentView
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(AVFullScreenViewController *)self delegate];

  if (v3)
  {
    v4 = [(AVFullScreenViewController *)self delegate];
    v5 = [v4 viewForFullScreenViewController:self];

    if (!v5)
    {
      v6 = _AVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v18 = _AVMethodProem(self);
        v19 = [(AVFullScreenViewController *)self delegate];
        v20 = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = v19;
        _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "%@ did not receive a view from its delegate, %@.", &v20, 0x16u);
      }
    }

    v7 = [(AVFullScreenViewController *)self view];
    v8 = [v5 isDescendantOfView:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(AVFullScreenViewController *)self delegate];
      [v9 fullScreenViewControllerWillAttachContentView:self];

      [v5 setAutoresizingMask:18];
      v10 = [(AVFullScreenViewController *)self view];
      [v10 bounds];
      [v5 setFrame:?];

      v11 = [(AVFullScreenViewController *)self view];
      [v11 setPresentationContainerContentView:v5];

      v12 = [(AVFullScreenViewController *)self view];
      v13 = [v12 appearanceProxy];
      v14 = [(AVFullScreenViewController *)self delegate];
      v15 = [v14 playbackContainerViewForFullScreenViewController:self];
      [v13 setActualView:v15];

      v16 = [(AVFullScreenViewController *)self view];
      [v16 addSubview:v5];

      v17 = [(AVFullScreenViewController *)self delegate];
      [v17 fullScreenViewControllerDidAttachContentView:self];

      [(AVFullScreenViewController *)self setContentView:v5];
    }
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = AVFullScreenViewController;
  [(AVFullScreenViewController *)&v8 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    v6 = [(AVFullScreenViewController *)self contentView];

    if (!v6)
    {
      v7 = [(AVFullScreenViewController *)self delegate];
      [v7 fullScreenViewControllerWillBeginFullScreenPresentation:self];

      [(AVFullScreenViewController *)self attachContentView];
    }
  }
}

- (void)viewWillMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVFullScreenViewController;
  [(AVFullScreenViewController *)&v6 viewWillMoveToWindow:?];
  if (!a3)
  {
    if ([(AVFullScreenViewController *)self isBeingDismissed])
    {
      v5 = [(AVFullScreenViewController *)self delegate];
      [v5 fullScreenViewControllerWillEndFullScreenPresentation:self];
    }
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(AVPresentationContainerView);
  [(AVFullScreenViewController *)self setView:v3];
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(AVFullScreenViewController *)self delegate];
    v8 = [v7 keyCommandResponderForFullScreenViewController:self];

    if ([v8 canPerformAction:a3 withSender:v6])
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
  v8 = [(AVFullScreenViewController *)&v10 targetForAction:a3 withSender:v6];
LABEL_7:

  return v8;
}

- (id)keyCommands
{
  v3 = [(AVFullScreenViewController *)self delegate];
  v4 = [v3 keyCommandResponderForFullScreenViewController:self];
  v5 = [v4 keyCommands];

  return v5;
}

- (BOOL)_canShowWhileLocked
{
  v2 = [(AVFullScreenViewController *)self delegate];
  v3 = [v2 _canShowWhileLocked];

  return v3;
}

@end