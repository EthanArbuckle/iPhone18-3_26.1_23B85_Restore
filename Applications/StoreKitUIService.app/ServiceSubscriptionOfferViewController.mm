@interface ServiceSubscriptionOfferViewController
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didDismissOfferSheet;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation ServiceSubscriptionOfferViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Did receive request to display offer code sheet.", &buf, 0xCu);
  }

  _remoteViewControllerProxy = [(ServiceSubscriptionOfferViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsMenuButtonDismissal:1];
  [_remoteViewControllerProxy setAllowsAlertStacking:1];
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
  userInfo = [contextCopy userInfo];
  v13 = [v11 initWithParameters:userInfo];

  [(ServiceSubscriptionOfferViewController *)self addChildViewController:v13];
  view = [v13 view];
  view2 = [(ServiceSubscriptionOfferViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [(ServiceSubscriptionOfferViewController *)self view];
  [view3 addSubview:view];

  [v13 didMoveToParentViewController:self];
  [v13 setDelegate:self];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Offer sheet did dismiss.", buf, 0xCu);
  }

  [v3 deactivate];
}

@end