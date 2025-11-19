@interface SRBlurFromRootNavigationTransitionController
- (SRBlurFromRootNavigationTransitionController)initWithDelegate:(id)a3;
- (SRBlurFromRootNavigationTransitionControllerDelegate)delegate;
- (UINavigationController)_navigationController;
- (void)_coordinateTransitionWithTransitionCoordination:(id)a3;
- (void)_performPopAnimations;
- (void)_performPushAnimations;
- (void)_updateBlurVisibility;
- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)a3;
@end

@implementation SRBlurFromRootNavigationTransitionController

- (SRBlurFromRootNavigationTransitionController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SRBlurFromRootNavigationTransitionController;
  v5 = [(SRBlurFromRootNavigationTransitionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)a3
{
  v8 = a3;
  if ([(SRBlurFromRootNavigationTransitionController *)self operation])
  {
    if ([(SRBlurFromRootNavigationTransitionController *)self operation]== 2)
    {
      v4 = [(SRBlurFromRootNavigationTransitionController *)self _navigationController];
      v5 = [v4 viewControllers];
      v6 = [v5 count];

      if (v6 == 1)
      {
        v7 = [(SRBlurFromRootNavigationTransitionController *)self delegate];
        [v7 blurFromRootNavigationTransitionController:self requestHostBlurVisible:0 requestPresentationBlurVisible:1];
      }
    }

    [(SRBlurFromRootNavigationTransitionController *)self _coordinateTransitionWithTransitionCoordination:v8];
  }
}

- (void)_coordinateTransitionWithTransitionCoordination:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000533FC;
  v7[3] = &unk_100167718;
  objc_copyWeak(&v8, &location);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100053468;
  v5[3] = &unk_100167718;
  objc_copyWeak(&v6, &location);
  [v4 animateAlongsideTransition:v7 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_performPushAnimations
{
  v3 = [(SRBlurFromRootNavigationTransitionController *)self _navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 count];

  if (v5 == 2)
  {
    v6 = [(SRBlurFromRootNavigationTransitionController *)self delegate];
    [v6 blurFromRootNavigationTransitionController:self requestBackgroundBlurViewVisible:1];
  }
}

- (void)_performPopAnimations
{
  v3 = [(SRBlurFromRootNavigationTransitionController *)self _navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [(SRBlurFromRootNavigationTransitionController *)self delegate];
    [v6 blurFromRootNavigationTransitionController:self requestBackgroundBlurViewVisible:0];
  }
}

- (void)_updateBlurVisibility
{
  v3 = [(SRBlurFromRootNavigationTransitionController *)self _navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 count];

  if (v5 == 1 || (-[SRBlurFromRootNavigationTransitionController _navigationController](self, "_navigationController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 viewControllers], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8 == 2))
  {
    v9 = [(SRBlurFromRootNavigationTransitionController *)self delegate];
    [v9 blurFromRootNavigationTransitionController:self requestHostBlurVisible:v5 != 1 requestPresentationBlurVisible:0];
  }
}

- (SRBlurFromRootNavigationTransitionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationController)_navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end