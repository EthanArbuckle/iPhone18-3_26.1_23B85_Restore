@interface CPSLocationAlertViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_configureRemoteAlertWithSettings:(id)a3;
- (void)_dismissLocationContentViewControllerAnimated:(BOOL)a3 response:(unint64_t)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
@end

@implementation CPSLocationAlertViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [(CPSLocationAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_1000082E8];
  v8 = [v6 actions];

  v9 = [v8 anyObject];
  action = self->_action;
  self->_action = v9;

  v11 = [(BSAction *)self->_action info];
  [(CPSLocationAlertViewController *)self _configureRemoteAlertWithSettings:v11];
  if (+[CPSUtilities deviceHasHomeButton])
  {
    [v7 setDesiredHardwareButtonEvents:16];
  }

  if (v12)
  {
    v12[2]();
  }
}

- (void)_configureRemoteAlertWithSettings:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000015D4;
  v5[3] = &unk_100008360;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_dismissLocationContentViewControllerAnimated:(BOOL)a3 response:(unint64_t)a4
{
  if (self->_lcViewController)
  {
    v4 = a3;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000019A0;
    v11[3] = &unk_100008388;
    v11[4] = self;
    v11[5] = a4;
    v6 = objc_retainBlock(v11);
    v7 = v6;
    if (v4)
    {
      lcViewController = self->_lcViewController;
      v9 = 1;
      v10 = v7;
    }

    else
    {
      (v6[2])(v6);
      lcViewController = self->_lcViewController;
      v9 = 0;
      v10 = 0;
    }

    [(CPSLocationConsentViewController *)lcViewController dismissViewControllerAnimated:v9 completion:v10];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end