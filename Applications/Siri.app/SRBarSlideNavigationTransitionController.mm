@interface SRBarSlideNavigationTransitionController
- (SiriUINavigationController)_navigationController;
- (void)configureWithNavigationController:(id)controller;
- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)coordinator;
@end

@implementation SRBarSlideNavigationTransitionController

- (void)configureWithNavigationController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRBarSlideNavigationTransitionController *)self _setNavigationController:controllerCopy];
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CB7E0(v5);
    }
  }

  navigationBar = [controllerCopy navigationBar];
  [navigationBar setAlpha:0.0];
}

- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030608;
  v7[3] = &unk_1001676F0;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003065C;
  v5[3] = &unk_100167718;
  objc_copyWeak(&v6, &location);
  [coordinatorCopy animateAlongsideTransition:v7 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (SiriUINavigationController)_navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end