@interface CPSLocationAlertViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_configureRemoteAlertWithSettings:(id)settings;
- (void)_dismissLocationContentViewControllerAnimated:(BOOL)animated response:(unint64_t)response;
- (void)configureWithContext:(id)context completion:(id)completion;
@end

@implementation CPSLocationAlertViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = [(CPSLocationAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_1000082E8];
  actions = [contextCopy actions];

  anyObject = [actions anyObject];
  action = self->_action;
  self->_action = anyObject;

  info = [(BSAction *)self->_action info];
  [(CPSLocationAlertViewController *)self _configureRemoteAlertWithSettings:info];
  if (+[CPSUtilities deviceHasHomeButton])
  {
    [v7 setDesiredHardwareButtonEvents:16];
  }

  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)_configureRemoteAlertWithSettings:(id)settings
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000015D4;
  v5[3] = &unk_100008360;
  settingsCopy = settings;
  selfCopy = self;
  v4 = settingsCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)_dismissLocationContentViewControllerAnimated:(BOOL)animated response:(unint64_t)response
{
  if (self->_lcViewController)
  {
    animatedCopy = animated;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000019A0;
    v11[3] = &unk_100008388;
    v11[4] = self;
    v11[5] = response;
    v6 = objc_retainBlock(v11);
    v7 = v6;
    if (animatedCopy)
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
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

@end