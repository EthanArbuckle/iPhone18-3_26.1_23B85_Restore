@interface GAXOverlayUserInterfaceViewController
- (BOOL)_hasOverlayUserInterface;
- (BOOL)isModalContentBeingPresentedInOverlayUserInterfaceView:(id)a3;
- (GAXOverlayUserInterfaceViewControllerDelegate)delegate;
- (void)_checkPresenceOfOverlayUserInterface;
- (void)loadView;
- (void)releaseOutlets;
- (void)viewWillLayoutSubviews;
@end

@implementation GAXOverlayUserInterfaceViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [v3 setAutoresizingMask:18];
  [v3 setDelegate:self];
  [(GAXViewController *)self setView:v3];
}

- (void)releaseOutlets
{
  v4.receiver = self;
  v4.super_class = GAXOverlayUserInterfaceViewController;
  [(GAXViewController *)&v4 releaseOutlets];
  if ([(GAXOverlayUserInterfaceViewController *)self isViewLoaded])
  {
    v3 = [(GAXOverlayUserInterfaceViewController *)self view];
    [v3 setDelegate:0];
  }
}

- (BOOL)_hasOverlayUserInterface
{
  v3 = [(GAXOverlayUserInterfaceViewController *)self view];
  v4 = [v3 subviews];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GAXOverlayUserInterfaceViewController *)self presentedViewController];
    v5 = v6 != 0;
  }

  return v5;
}

- (void)_checkPresenceOfOverlayUserInterface
{
  v3 = [(GAXOverlayUserInterfaceViewController *)self hasOverlayUserInterface];
  v4 = [(GAXOverlayUserInterfaceViewController *)self _hasOverlayUserInterface];
  [(GAXOverlayUserInterfaceViewController *)self setHasOverlayUserInterface:v4];
  if (!v4)
  {
    if (v3)
    {
      AXPerformBlockAsynchronouslyOnMainThread();
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = GAXOverlayUserInterfaceViewController;
  [(GAXOverlayUserInterfaceViewController *)&v3 viewWillLayoutSubviews];
  [(GAXOverlayUserInterfaceViewController *)self _checkPresenceOfOverlayUserInterface];
}

- (BOOL)isModalContentBeingPresentedInOverlayUserInterfaceView:(id)a3
{
  v3 = [(GAXOverlayUserInterfaceViewController *)self presentedViewController];
  v4 = v3 != 0;

  return v4;
}

- (GAXOverlayUserInterfaceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end