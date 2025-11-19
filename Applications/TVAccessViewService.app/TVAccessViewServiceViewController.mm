@interface TVAccessViewServiceViewController
- (TVAccessViewServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)_willAppearInRemoteViewController:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)configureWithUserInfo:(id)a3;
@end

@implementation TVAccessViewServiceViewController

- (TVAccessViewServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)configureWithUserInfo:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKey:WLKViewServiceAppBundlesKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_bundleIDs, v4);
  }

  v5 = [v6 objectForKey:WLKViewServiceAccountNameKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_accountName, v5);
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 userInfo];
  [(TVAccessViewServiceViewController *)self configureWithUserInfo:v8];
  v9.receiver = self;
  v9.super_class = TVAccessViewServiceViewController;
  [(TVAccessViewServiceViewController *)&v9 configureWithContext:v7 completion:v6];
}

- (void)_willAppearInRemoteViewController:(id)a3
{
  v4 = a3;
  v5 = sub_1000014D4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TVAccessViewServiceViewController _willAppearInRemoteViewController:", buf, 2u);
  }

  [v4 setShouldDisableFadeInAnimation:1];
  [v4 setAllowsMenuButtonDismissal:1];
  [v4 setShouldDismissOnUILock:1];
  [v4 setAllowsAlertStacking:1];
  v6.receiver = self;
  v6.super_class = TVAccessViewServiceViewController;
  [(TVAccessViewServiceViewController *)&v6 _willAppearInRemoteViewController:v4];
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