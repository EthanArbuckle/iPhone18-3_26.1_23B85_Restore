@interface GAXOverlayUserInterfaceViewController
- (BOOL)_hasOverlayUserInterface;
- (BOOL)isModalContentBeingPresentedInOverlayUserInterfaceView:(id)view;
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
    view = [(GAXOverlayUserInterfaceViewController *)self view];
    [view setDelegate:0];
  }
}

- (BOOL)_hasOverlayUserInterface
{
  view = [(GAXOverlayUserInterfaceViewController *)self view];
  subviews = [view subviews];
  if ([subviews count])
  {
    v5 = 1;
  }

  else
  {
    presentedViewController = [(GAXOverlayUserInterfaceViewController *)self presentedViewController];
    v5 = presentedViewController != 0;
  }

  return v5;
}

- (void)_checkPresenceOfOverlayUserInterface
{
  hasOverlayUserInterface = [(GAXOverlayUserInterfaceViewController *)self hasOverlayUserInterface];
  _hasOverlayUserInterface = [(GAXOverlayUserInterfaceViewController *)self _hasOverlayUserInterface];
  [(GAXOverlayUserInterfaceViewController *)self setHasOverlayUserInterface:_hasOverlayUserInterface];
  if (!_hasOverlayUserInterface)
  {
    if (hasOverlayUserInterface)
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

- (BOOL)isModalContentBeingPresentedInOverlayUserInterfaceView:(id)view
{
  presentedViewController = [(GAXOverlayUserInterfaceViewController *)self presentedViewController];
  v4 = presentedViewController != 0;

  return v4;
}

- (GAXOverlayUserInterfaceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end