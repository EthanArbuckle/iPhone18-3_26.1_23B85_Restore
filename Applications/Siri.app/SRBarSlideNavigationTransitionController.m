@interface SRBarSlideNavigationTransitionController
- (SiriUINavigationController)_navigationController;
- (void)configureWithNavigationController:(id)a3;
- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)a3;
@end

@implementation SRBarSlideNavigationTransitionController

- (void)configureWithNavigationController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SRBarSlideNavigationTransitionController *)self _setNavigationController:v4];
  }

  else
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CB7E0(v5);
    }
  }

  v6 = [v4 navigationBar];
  [v6 setAlpha:0.0];
}

- (void)coordinateAdditionalTransitionsWithTransitionCoordinator:(id)a3
{
  v4 = a3;
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
  [v4 animateAlongsideTransition:v7 completion:v5];
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