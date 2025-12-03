@interface BSUIFeedNavigationController
- (BSUIFeedNavigationController)initWithOptions:(id)options;
- (BSUIFeedViewController)currentFeedViewController;
- (id)bc_ancestorOverrideCardPresentingViewController;
- (int64_t)_topFeedLiveResizeOptions;
- (int64_t)preferredStatusBarStyle;
- (void)attachPalette:(id)palette isPinned:(BOOL)pinned;
- (void)bc_dismissCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)bc_presentCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)notifyFeedDidBecomeCurrent;
@end

@implementation BSUIFeedNavigationController

- (BSUIFeedNavigationController)initWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = BSUIFeedNavigationController;
  v3 = [(BSUINavigationController *)&v6 initWithOptions:options];
  v4 = v3;
  if (v3)
  {
    [(BSUIFeedNavigationController *)v3 setDefinesPresentationContext:1];
  }

  return v4;
}

- (int64_t)preferredStatusBarStyle
{
  topViewController = [(BSUIFeedNavigationController *)self topViewController];
  preferredStatusBarStyle = [topViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (void)attachPalette:(id)palette isPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  paletteCopy = palette;
  isNavigationBarHidden = [(BSUIFeedNavigationController *)self isNavigationBarHidden];
  [(BSUIFeedNavigationController *)self setNavigationBarHidden:0 animated:0];
  v8.receiver = self;
  v8.super_class = BSUIFeedNavigationController;
  [(BSUIFeedNavigationController *)&v8 attachPalette:paletteCopy isPinned:pinnedCopy];

  [(BSUIFeedNavigationController *)self setNavigationBarHidden:isNavigationBarHidden animated:0];
}

- (id)bc_ancestorOverrideCardPresentingViewController
{
  v8.receiver = self;
  v8.super_class = BSUIFeedNavigationController;
  selfCopy = [(BSUIFeedNavigationController *)&v8 bc_ancestorOverrideCardPresentingViewController];
  if (!selfCopy)
  {
    selfCopy = self;
    objc_opt_class();
    bc_childPresentedViewController = [(BSUIFeedNavigationController *)selfCopy bc_childPresentedViewController];
    v5 = BUDynamicCast();

    if (v5)
    {
      bc_childPresentedViewController2 = [(BSUIFeedNavigationController *)selfCopy bc_childPresentedViewController];

      selfCopy = bc_childPresentedViewController2;
    }
  }

  return selfCopy;
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = BSUIFeedNavigationController;
  [(BSUIFeedNavigationController *)&v5 didShowViewController:controller animated:animated];
  [(BSUIFeedNavigationController *)self notifyFeedDidBecomeCurrent];
}

- (void)notifyFeedDidBecomeCurrent
{
  currentFeedViewController = [(BSUIFeedNavigationController *)self currentFeedViewController];
  if (currentFeedViewController)
  {
    v3 = currentFeedViewController;
    [currentFeedViewController didBecomeCurrentFeed];
    currentFeedViewController = v3;
  }
}

- (BSUIFeedViewController)currentFeedViewController
{
  objc_opt_class();
  topViewController = [(BSUIFeedNavigationController *)self topViewController];
  v4 = BUDynamicCast();

  return v4;
}

- (void)bc_presentCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  self->_isCoveredByCardStack = 1;
  completionCopy = completion;
  controllerCopy = controller;
  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];
  v10.receiver = self;
  v10.super_class = BSUIFeedNavigationController;
  [(BSUIFeedNavigationController *)&v10 bc_presentCardViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)bc_dismissCardViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  self->_isCoveredByCardStack = 0;
  completionCopy = completion;
  controllerCopy = controller;
  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];
  v10.receiver = self;
  v10.super_class = BSUIFeedNavigationController;
  [(BSUIFeedNavigationController *)&v10 bc_dismissCardViewController:controllerCopy animated:animatedCopy completion:completionCopy];
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