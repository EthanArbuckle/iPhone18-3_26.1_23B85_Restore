@interface ServiceSubscriptionOfferViewController
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didDismissOfferSheet;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation ServiceSubscriptionOfferViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Did receive request to display offer code sheet.", &buf, 0xCu);
  }

  v8 = [(ServiceSubscriptionOfferViewController *)self _remoteViewControllerProxy];
  [v8 setAllowsMenuButtonDismissal:1];
  [v8 setAllowsAlertStacking:1];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v9 = qword_1000695A8;
  v20 = qword_1000695A8;
  if (!qword_1000695A8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v22 = sub_100021A2C;
    v23 = &unk_1000517C0;
    v24 = &v17;
    sub_100021A2C(&buf);
    v9 = v18[3];
  }

  v10 = v9;
  _Block_object_dispose(&v17, 8);
  v11 = [v9 alloc];
  v12 = [v6 userInfo];
  v13 = [v11 initWithParameters:v12];

  [(ServiceSubscriptionOfferViewController *)self addChildViewController:v13];
  v14 = [v13 view];
  v15 = [(ServiceSubscriptionOfferViewController *)self view];
  [v15 bounds];
  [v14 setFrame:?];

  v16 = [(ServiceSubscriptionOfferViewController *)self view];
  [v16 addSubview:v14];

  [v13 didMoveToParentViewController:self];
  [v13 setDelegate:self];
  if (v7)
  {
    v7[2](v7);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)didDismissOfferSheet
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000219B4;
  v4[3] = &unk_100050FC8;
  v4[4] = self;
  v3 = [(ServiceSubscriptionOfferViewController *)self _remoteViewControllerProxyWithErrorHandler:v4];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Offer sheet did dismiss.", buf, 0xCu);
  }

  [v3 deactivate];
}

@end