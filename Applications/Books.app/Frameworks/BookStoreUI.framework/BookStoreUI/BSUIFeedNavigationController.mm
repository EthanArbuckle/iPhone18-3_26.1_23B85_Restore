@interface BSUIFeedNavigationController
- (BSUIFeedNavigationController)initWithOptions:(id)a3;
- (BSUIFeedViewController)currentFeedViewController;
- (id)bc_ancestorOverrideCardPresentingViewController;
- (int64_t)_topFeedLiveResizeOptions;
- (int64_t)preferredStatusBarStyle;
- (void)attachPalette:(id)a3 isPinned:(BOOL)a4;
- (void)bc_dismissCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)bc_presentCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)notifyFeedDidBecomeCurrent;
@end

@implementation BSUIFeedNavigationController

- (BSUIFeedNavigationController)initWithOptions:(id)a3
{
  v6.receiver = self;
  v6.super_class = BSUIFeedNavigationController;
  v3 = [(BSUINavigationController *)&v6 initWithOptions:a3];
  v4 = v3;
  if (v3)
  {
    [(BSUIFeedNavigationController *)v3 setDefinesPresentationContext:1];
  }

  return v4;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(BSUIFeedNavigationController *)self topViewController];
  v3 = [v2 preferredStatusBarStyle];

  return v3;
}

- (void)attachPalette:(id)a3 isPinned:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BSUIFeedNavigationController *)self isNavigationBarHidden];
  [(BSUIFeedNavigationController *)self setNavigationBarHidden:0 animated:0];
  v8.receiver = self;
  v8.super_class = BSUIFeedNavigationController;
  [(BSUIFeedNavigationController *)&v8 attachPalette:v6 isPinned:v4];

  [(BSUIFeedNavigationController *)self setNavigationBarHidden:v7 animated:0];
}

- (id)bc_ancestorOverrideCardPresentingViewController
{
  v8.receiver = self;
  v8.super_class = BSUIFeedNavigationController;
  v3 = [(BSUIFeedNavigationController *)&v8 bc_ancestorOverrideCardPresentingViewController];
  if (!v3)
  {
    v3 = self;
    objc_opt_class();
    v4 = [(BSUIFeedNavigationController *)v3 bc_childPresentedViewController];
    v5 = BUDynamicCast();

    if (v5)
    {
      v6 = [(BSUIFeedNavigationController *)v3 bc_childPresentedViewController];

      v3 = v6;
    }
  }

  return v3;
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = BSUIFeedNavigationController;
  [(BSUIFeedNavigationController *)&v5 didShowViewController:a3 animated:a4];
  [(BSUIFeedNavigationController *)self notifyFeedDidBecomeCurrent];
}

- (void)notifyFeedDidBecomeCurrent
{
  v2 = [(BSUIFeedNavigationController *)self currentFeedViewController];
  if (v2)
  {
    v3 = v2;
    [v2 didBecomeCurrentFeed];
    v2 = v3;
  }
}

- (BSUIFeedViewController)currentFeedViewController
{
  objc_opt_class();
  v3 = [(BSUIFeedNavigationController *)self topViewController];
  v4 = BUDynamicCast();

  return v4;
}

- (void)bc_presentCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  self->_isCoveredByCardStack = 1;
  v8 = a5;
  v9 = a3;
  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];
  v10.receiver = self;
  v10.super_class = BSUIFeedNavigationController;
  [(BSUIFeedNavigationController *)&v10 bc_presentCardViewController:v9 animated:v5 completion:v8];
}

- (void)bc_dismissCardViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  self->_isCoveredByCardStack = 0;
  v8 = a5;
  v9 = a3;
  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];
  v10.receiver = self;
  v10.super_class = BSUIFeedNavigationController;
  [(BSUIFeedNavigationController *)&v10 bc_dismissCardViewController:v9 animated:v5 completion:v8];
}

- (int64_t)_topFeedLiveResizeOptions
{
  if ([(BSUIFeedNavigationController *)self isCoveredByCardStack])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end