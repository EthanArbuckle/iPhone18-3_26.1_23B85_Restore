@interface TVAccessViewServiceViewController
- (TVAccessViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)_willAppearInRemoteViewController:(id)controller;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)configureWithUserInfo:(id)info;
@end

@implementation TVAccessViewServiceViewController

- (TVAccessViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = TVAccessViewServiceViewController;
  v4 = [(TVAccessViewServiceViewController *)&v8 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = sub_1000014D4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TVAccessViewServiceViewController init", v7, 2u);
    }
  }

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithUserInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:WLKViewServiceAppBundlesKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_bundleIDs, v4);
  }

  v5 = [infoCopy objectForKey:WLKViewServiceAccountNameKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_accountName, v5);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  [(TVAccessViewServiceViewController *)self configureWithUserInfo:userInfo];
  v9.receiver = self;
  v9.super_class = TVAccessViewServiceViewController;
  [(TVAccessViewServiceViewController *)&v9 configureWithContext:contextCopy completion:completionCopy];
}

- (void)_willAppearInRemoteViewController:(id)controller
{
  controllerCopy = controller;
  v5 = sub_1000014D4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TVAccessViewServiceViewController _willAppearInRemoteViewController:", buf, 2u);
  }

  [controllerCopy setShouldDisableFadeInAnimation:1];
  [controllerCopy setAllowsMenuButtonDismissal:1];
  [controllerCopy setShouldDismissOnUILock:1];
  [controllerCopy setAllowsAlertStacking:1];
  v6.receiver = self;
  v6.super_class = TVAccessViewServiceViewController;
  [(TVAccessViewServiceViewController *)&v6 _willAppearInRemoteViewController:controllerCopy];
}

- (void)_dismiss
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001360;
  v2[3] = &unk_1000041A0;
  v2[4] = self;
  [(TVAccessViewServiceViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

@end