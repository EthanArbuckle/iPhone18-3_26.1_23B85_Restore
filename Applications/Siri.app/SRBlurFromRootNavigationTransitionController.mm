@interface SRBlurFromRootNavigationTransitionController
- (SRBlurFromRootNavigationTransitionController)initWithDelegate:(id)delegate;
- (SRBlurFromRootNavigationTransitionControllerDelegate)delegate;
- (UINavigationController)_navigationController;
- (void)_coordinateTransitionWithTransitionCoordination:(id)coordination;
- (void)_performPopAnimations;
- (void)_performPushAnimations;
- (void)_updateBlurVisibility;
- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)coordinator;
@end

@implementation SRBlurFromRootNavigationTransitionController

- (SRBlurFromRootNavigationTransitionController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SRBlurFromRootNavigationTransitionController;
  v5 = [(SRBlurFromRootNavigationTransitionController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if ([(SRBlurFromRootNavigationTransitionController *)self operation])
  {
    if ([(SRBlurFromRootNavigationTransitionController *)self operation]== 2)
    {
      _navigationController = [(SRBlurFromRootNavigationTransitionController *)self _navigationController];
      viewControllers = [_navigationController viewControllers];
      v6 = [viewControllers count];

      if (v6 == 1)
      {
        delegate = [(SRBlurFromRootNavigationTransitionController *)self delegate];
        [delegate blurFromRootNavigationTransitionController:self requestHostBlurVisible:0 requestPresentationBlurVisible:1];
      }
    }

    [(SRBlurFromRootNavigationTransitionController *)self _coordinateTransitionWithTransitionCoordination:coordinatorCopy];
  }
}

- (void)_coordinateTransitionWithTransitionCoordination:(id)coordination
{
  coordinationCopy = coordination;
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
  [coordinationCopy animateAlongsideTransition:v7 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_performPushAnimations
{
  _navigationController = [(SRBlurFromRootNavigationTransitionController *)self _navigationController];
  viewControllers = [_navigationController viewControllers];
  v5 = [viewControllers count];

  if (v5 == 2)
  {
    delegate = [(SRBlurFromRootNavigationTransitionController *)self delegate];
    [delegate blurFromRootNavigationTransitionController:self requestBackgroundBlurViewVisible:1];
  }
}

- (void)_performPopAnimations
{
  _navigationController = [(SRBlurFromRootNavigationTransitionController *)self _navigationController];
  viewControllers = [_navigationController viewControllers];
  v5 = [viewControllers count];

  if (v5 == 1)
  {
    delegate = [(SRBlurFromRootNavigationTransitionController *)self delegate];
    [delegate blurFromRootNavigationTransitionController:self requestBackgroundBlurViewVisible:0];
  }
}

- (void)_updateBlurVisibility
{
  _navigationController = [(SRBlurFromRootNavigationTransitionController *)self _navigationController];
  viewControllers = [_navigationController viewControllers];
  v5 = [viewControllers count];

  if (v5 == 1 || (-[SRBlurFromRootNavigationTransitionController _navigationController](self, "_navigationController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 viewControllers], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8 == 2))
  {
    delegate = [(SRBlurFromRootNavigationTransitionController *)self delegate];
    [delegate blurFromRootNavigationTransitionController:self requestHostBlurVisible:v5 != 1 requestPresentationBlurVisible:0];
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