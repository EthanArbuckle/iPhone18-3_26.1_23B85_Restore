@interface CPSAlertViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_configureRemoteAlertWithURL:(id)l;
- (void)_displayLaunchContentViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)proxCardFlowDidDismiss;
- (void)viewDidLoad;
@end

@implementation CPSAlertViewController

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = CPSAlertViewController;
  [(CPSAlertViewController *)&v15 viewDidLoad];
  v3 = +[UIApplication sharedApplication];
  delegate = [v3 delegate];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewControllers = [delegate viewControllers];
  v6 = [viewControllers countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v11 + 1) + 8 * v9) _dismiss];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [viewControllers countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  viewControllers2 = [delegate viewControllers];
  [viewControllers2 addObject:self];
}

- (void)_displayLaunchContentViewController
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = qword_10000CDC8;
  v11 = qword_10000CDC8;
  if (!qword_10000CDC8)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000263C;
    v7[3] = &unk_100008428;
    v7[4] = &v8;
    sub_10000263C(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  defaultConfiguration = [v3 defaultConfiguration];
  [defaultConfiguration setSupportsDarkMode:1];
  v6 = [(CPSAlertViewController *)self presentProxCardFlowWithDelegate:self initialViewController:self->_launchContentViewController configuration:defaultConfiguration];
}

- (void)_configureRemoteAlertWithURL:(id)l
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000206C;
  v4[3] = &unk_100008360;
  v4[4] = self;
  lCopy = l;
  v3 = lCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = [(CPSAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_1000083A8];
  actions = [contextCopy actions];

  anyObject = [actions anyObject];
  action = self->_action;
  self->_action = anyObject;

  info = [(BSAction *)self->_action info];
  v12 = [info objectForSetting:0];
  [(CPSAlertViewController *)self _configureRemoteAlertWithURL:v12];
  [v7 setReachabilityDisabled:1];
  [v7 setAllowsAlertStacking:1];
  if (+[CPSUtilities deviceHasHomeButton])
  {
    [v7 setDesiredHardwareButtonEvents:16];
  }

  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v5 = [(CPSAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_1000083C8];
  [v5 setStatusBarHidden:1 withDuration:0.4];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = off_10000CDD0;
  v10 = off_10000CDD0;
  if (!off_10000CDD0)
  {
    v4 = sub_100001BE0();
    v8[3] = dlsym(v4, "PRXSupportedInterfaceOrientations");
    off_10000CDD0 = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    sub_100002958();
  }

  v5 = v3(selfCopy, 1);

  return v5;
}

- (void)proxCardFlowDidDismiss
{
  if (([(CPSLaunchContentViewController *)self->_launchContentViewController dismissalInProgress]& 1) == 0)
  {
    [(CPSAlertViewController *)self launchContentViewControllerDidDisappear:self->_launchContentViewController didOpenClip:0];
    launchContentViewController = self->_launchContentViewController;

    [(CPSLaunchContentViewController *)launchContentViewController logDismissalFromCloseButton:0];
  }
}

@end