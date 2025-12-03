@interface BSUICardNavigationController
- (BOOL)accessibilityPerformEscape;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)_updateNavigationTypeForViewController:(id)controller;
- (void)notifyFeedDidBecomeCurrent;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setIsCurrentCard:(BOOL)card;
- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
@end

@implementation BSUICardNavigationController

- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  v26.receiver = self;
  v26.super_class = BSUICardNavigationController;
  [(BSUICardNavigationController *)&v26 setNavigationBarHidden:hidden animated:animated];
  cardStackViewController = [(BSUICardNavigationController *)self cardStackViewController];
  topCardSetViewController = [cardStackViewController topCardSetViewController];
  currentCardViewController = [topCardSetViewController currentCardViewController];

  topContentViewController = [currentCardViewController topContentViewController];
  _appearState = [topContentViewController _appearState];

  statusBarBackgroundController = [cardStackViewController statusBarBackgroundController];
  [statusBarBackgroundController opacity];
  v13 = v12;

  if ((_appearState & 0xFFFFFFFD) == 1)
  {
    hiddenCopy = [currentCardViewController prefersStatusBarBackgroundHidden] ^ 1;
  }

  v14 = _os_feature_enabled_impl();
  if ([currentCardViewController expanded])
  {
    v15 = (hiddenCopy & (v14 ^ 1));
    topContentViewController2 = [currentCardViewController topContentViewController];
    transitionCoordinator = [topContentViewController2 transitionCoordinator];

    if (transitionCoordinator)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10F3C;
      v23[3] = &unk_387330;
      v24 = cardStackViewController;
      v25 = v15;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10F90;
      v19[3] = &unk_387358;
      v20 = v24;
      v21 = v13;
      v22 = v15;
      [transitionCoordinator animateAlongsideTransition:v23 completion:v19];

      statusBarBackgroundController2 = v24;
    }

    else
    {
      statusBarBackgroundController2 = [cardStackViewController statusBarBackgroundController];
      [statusBarBackgroundController2 setOpacity:v15];
    }
  }
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:controllerCopy];
  v7.receiver = self;
  v7.super_class = BSUICardNavigationController;
  [(BSUINavigationController *)&v7 pushViewController:controllerCopy animated:animatedCopy];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllers = [(BSUICardNavigationController *)self viewControllers];
  if ([viewControllers count] <= 1)
  {
    [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:0];
  }

  else
  {
    viewControllers2 = [(BSUICardNavigationController *)self viewControllers];
    viewControllers3 = [(BSUICardNavigationController *)self viewControllers];
    v8 = [viewControllers2 objectAtIndexedSubscript:{objc_msgSend(viewControllers3, "count") - 2}];
    [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:v8];
  }

  v11.receiver = self;
  v11.super_class = BSUICardNavigationController;
  v9 = [(BSUINavigationController *)&v11 popViewControllerAnimated:animatedCopy];
  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];

  return v9;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:controllerCopy];
  v9.receiver = self;
  v9.super_class = BSUICardNavigationController;
  v7 = [(BSUINavigationController *)&v9 popToViewController:controllerCopy animated:animatedCopy];

  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];

  return v7;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllers = [(BSUICardNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];
  [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:firstObject];

  v9.receiver = self;
  v9.super_class = BSUICardNavigationController;
  v7 = [(BSUINavigationController *)&v9 popToRootViewControllerAnimated:animatedCopy];
  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];

  return v7;
}

- (void)setIsCurrentCard:(BOOL)card
{
  if (*(&self->super._isCoveredByCardStack + 1) != card)
  {
    *(&self->super._isCoveredByCardStack + 1) = card;
    [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];

    [(BSUICardNavigationController *)self notifyFeedDidBecomeCurrent];
  }
}

- (void)notifyFeedDidBecomeCurrent
{
  if ([(BSUICardNavigationController *)self isCurrentCard])
  {
    currentFeedViewController = [(BSUIFeedNavigationController *)self currentFeedViewController];
    [currentFeedViewController didBecomeCurrentFeed];

    topViewController = [(BSUICardNavigationController *)self topViewController];
    v5 = BUProtocolCast();

    [v5 didBecomeVisibleContentScrollView];
  }
}

- (void)_updateNavigationTypeForViewController:(id)controller
{
  controllerCopy = controller;
  cardStackViewController = [(BSUICardNavigationController *)self cardStackViewController];
  topCardSetViewController = [cardStackViewController topCardSetViewController];

  v6 = BUProtocolCast();

  [v6 cardSetViewController:topCardSetViewController willUpdateWithNavigationType:{objc_msgSend(topCardSetViewController, "lastNavigationType")}];
}

- (BOOL)accessibilityPerformEscape
{
  viewControllers = [(BSUICardNavigationController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4 < 2)
  {
    cardStackViewController = [(BSUICardNavigationController *)self cardStackViewController];
    [cardStackViewController popCardsAnimated:1];
  }

  else
  {
    v5 = [(BSUICardNavigationController *)self popViewControllerAnimated:1];
  }

  return 1;
}

@end