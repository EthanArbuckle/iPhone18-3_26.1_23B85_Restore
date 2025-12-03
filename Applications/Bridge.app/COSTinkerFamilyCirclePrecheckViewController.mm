@interface COSTinkerFamilyCirclePrecheckViewController
- (COSBuddyControllerDelegate)delegate;
- (id)localizedWaitScreenDescription;
- (void)_fetchFamilyCircle;
- (void)didPushWaitScreen;
- (void)failPrecheckWithTitle:(id)title body:(id)body withPresentingController:(id)controller;
- (void)handleRepairFailureWithError:(id)error;
@end

@implementation COSTinkerFamilyCirclePrecheckViewController

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FAMILY_CIRCLE_INIT_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"SetupFlowLocalizable-tinker"];

  return v3;
}

- (void)failPrecheckWithTitle:(id)title body:(id)body withPresentingController:(id)controller
{
  controllerCopy = controller;
  v11 = [UIAlertController alertControllerWithTitle:title message:body preferredStyle:1];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:&stru_10026C508];
  [v11 addAction:v10];

  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

- (void)handleRepairFailureWithError:(id)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001199E8;
  v5[3] = &unk_100268358;
  errorCopy = error;
  selfCopy = self;
  v4 = errorCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)didPushWaitScreen
{
  v3 = [FACircleContext alloc];
  v4 = [v3 initWithEventType:FACircleEventTypeInitiate];
  [v4 setAdditionalParameters:&off_100282050];
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing FamilyCircle Pre-Check", buf, 2u);
  }

  setupController = [UIApp setupController];
  tinkerAuthenticationController = [setupController tinkerAuthenticationController];

  objc_initWeak(buf, self);
  v8 = +[UIApplication sharedApplication];
  bridgeController = [v8 bridgeController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100119D14;
  v12[3] = &unk_10026C580;
  v10 = tinkerAuthenticationController;
  v13 = v10;
  objc_copyWeak(&v15, buf);
  v11 = v4;
  v14 = v11;
  [bridgeController requestProxiedDeviceForWatchWithCompletion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_fetchFamilyCircle
{
  if (sub_100009A74() && _os_feature_enabled_impl())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011A220;
    block[3] = &unk_1002682F0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v3 = objc_alloc_init(FAFetchFamilyCircleRequest);
    [v3 setCachePolicy:2];
    v4 = pbb_accountsignin_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest start", buf, 2u);
    }

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10011A28C;
    v5[3] = &unk_10026C5D0;
    v5[4] = self;
    [v3 startRequestWithCompletionHandler:v5];
  }
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end