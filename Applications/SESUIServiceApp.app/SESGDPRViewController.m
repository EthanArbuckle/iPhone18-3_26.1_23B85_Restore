@interface SESGDPRViewController
- (void)present;
- (void)viewDidLoad;
@end

@implementation SESGDPRViewController

- (void)viewDidLoad
{
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "angelViewController:viewDidLoad:", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = SESGDPRViewController;
  [(SESGDPRViewController *)&v4 viewDidLoad];
}

- (void)present
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.opennfcplatform"];
  v4 = v3;
  if (v3)
  {
    [v3 setPresentingViewController:self];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100002290;
    v7[3] = &unk_1000188B0;
    v7[4] = self;
    [v4 setDismissHandler:v7];
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Presenting GDPR sheet", v6, 2u);
    }

    [v4 present];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SESGDPRViewController;
    [(SESUIServiceBaseViewController *)&v8 dismiss];
  }
}

@end