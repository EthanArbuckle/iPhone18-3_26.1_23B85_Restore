@interface BSUICardNavigationController
- (BOOL)accessibilityPerformEscape;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)_updateNavigationTypeForViewController:(id)a3;
- (void)notifyFeedDidBecomeCurrent;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setIsCurrentCard:(BOOL)a3;
- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation BSUICardNavigationController

- (void)setNavigationBarHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = BSUICardNavigationController;
  [(BSUICardNavigationController *)&v26 setNavigationBarHidden:a3 animated:a4];
  v6 = [(BSUICardNavigationController *)self cardStackViewController];
  v7 = [v6 topCardSetViewController];
  v8 = [v7 currentCardViewController];

  v9 = [v8 topContentViewController];
  v10 = [v9 _appearState];

  v11 = [v6 statusBarBackgroundController];
  [v11 opacity];
  v13 = v12;

  if ((v10 & 0xFFFFFFFD) == 1)
  {
    v4 = [v8 prefersStatusBarBackgroundHidden] ^ 1;
  }

  v14 = _os_feature_enabled_impl();
  if ([v8 expanded])
  {
    v15 = (v4 & (v14 ^ 1));
    v16 = [v8 topContentViewController];
    v17 = [v16 transitionCoordinator];

    if (v17)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10F3C;
      v23[3] = &unk_387330;
      v24 = v6;
      v25 = v15;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10F90;
      v19[3] = &unk_387358;
      v20 = v24;
      v21 = v13;
      v22 = v15;
      [v17 animateAlongsideTransition:v23 completion:v19];

      v18 = v24;
    }

    else
    {
      v18 = [v6 statusBarBackgroundController];
      [v18 setOpacity:v15];
    }
  }
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:v6];
  v7.receiver = self;
  v7.super_class = BSUICardNavigationController;
  [(BSUINavigationController *)&v7 pushViewController:v6 animated:v4];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BSUICardNavigationController *)self viewControllers];
  if ([v5 count] <= 1)
  {
    [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:0];
  }

  else
  {
    v6 = [(BSUICardNavigationController *)self viewControllers];
    v7 = [(BSUICardNavigationController *)self viewControllers];
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 2}];
    [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:v8];
  }

  v11.receiver = self;
  v11.super_class = BSUICardNavigationController;
  v9 = [(BSUINavigationController *)&v11 popViewControllerAnimated:v3];
  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];

  return v9;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:v6];
  v9.receiver = self;
  v9.super_class = BSUICardNavigationController;
  v7 = [(BSUINavigationController *)&v9 popToViewController:v6 animated:v4];

  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];

  return v7;
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BSUICardNavigationController *)self viewControllers];
  v6 = [v5 firstObject];
  [(BSUICardNavigationController *)self _updateNavigationTypeForViewController:v6];

  v9.receiver = self;
  v9.super_class = BSUICardNavigationController;
  v7 = [(BSUINavigationController *)&v9 popToRootViewControllerAnimated:v3];
  [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];

  return v7;
}

- (void)setIsCurrentCard:(BOOL)a3
{
  if (*(&self->super._isCoveredByCardStack + 1) != a3)
  {
    *(&self->super._isCoveredByCardStack + 1) = a3;
    [(BSUIFeedNavigationController *)self updateTopFeedLiveResizeOptions];

    [(BSUICardNavigationController *)self notifyFeedDidBecomeCurrent];
  }
}

- (void)notifyFeedDidBecomeCurrent
{
  if ([(BSUICardNavigationController *)self isCurrentCard])
  {
    v3 = [(BSUIFeedNavigationController *)self currentFeedViewController];
    [v3 didBecomeCurrentFeed];

    v4 = [(BSUICardNavigationController *)self topViewController];
    v5 = BUProtocolCast();

    [v5 didBecomeVisibleContentScrollView];
  }
}

- (void)_updateNavigationTypeForViewController:(id)a3
{
  v4 = a3;
  v5 = [(BSUICardNavigationController *)self cardStackViewController];
  v7 = [v5 topCardSetViewController];

  v6 = BUProtocolCast();

  [v6 cardSetViewController:v7 willUpdateWithNavigationType:{objc_msgSend(v7, "lastNavigationType")}];
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(BSUICardNavigationController *)self viewControllers];
  v4 = [v3 count];

  if (v4 < 2)
  {
    v6 = [(BSUICardNavigationController *)self cardStackViewController];
    [v6 popCardsAnimated:1];
  }

  else
  {
    v5 = [(BSUICardNavigationController *)self popViewControllerAnimated:1];
  }

  return 1;
}

@end