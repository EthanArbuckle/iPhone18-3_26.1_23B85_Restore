@interface COSAppleIDSkippedBenefitsViewController
+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate;
- (COSAppleIDSkippedBenefitsViewController)init;
- (id)detailString;
- (id)detailTitleString;
- (id)okayButtonTitle;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)okayButtonPressed:(id)pressed;
- (void)presentLoginViewController;
- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)signInControllerDidCancel:(id)cancel;
- (void)suggestedButtonPressed:(id)pressed;
- (void)updateLoginStatus;
- (void)updateUIFromLoginStatus;
@end

@implementation COSAppleIDSkippedBenefitsViewController

+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate
{
  setupController = [UIApp setupController];
  appleIDSignInModel = [setupController appleIDSignInModel];
  benefitsControllerPresented = [appleIDSignInModel benefitsControllerPresented];

  if (benefitsControllerPresented)
  {
    v6 = pbb_accountsignin_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User already visited sign in benefits. Ignoring", buf, 2u);
    }

LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  activeWatch = [UIApp activeWatch];
  v8 = [[NSUUID alloc] initWithUUIDString:@"4AA3FF3B-3224-42E6-995E-481F49AE9260"];
  v9 = [activeWatch supportsCapability:v8];

  if ((v9 & 1) == 0)
  {
    v16 = pbb_accountsignin_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping iCloud/iMessage sign in benefits: watch not cellular capable", v19, 2u);
    }

    [objc_opt_class() runPostAppleIDSignInOrSkippedTasks];
    goto LABEL_20;
  }

  v10 = +[COSiCloudAuthController iCloudAccountInAccountStore];
  v11 = +[COSiMessageFaceTimeAuthController iMessageAccountInAccountStore];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (!v13)
  {
    v15 = pbb_accountsignin_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping iCloud/iMessage sign in benefits: already has primary iCloud and iMessage accounts", v18, 2u);
    }

    [objc_opt_class() runPostAppleIDSignInOrSkippedTasks];
  }

LABEL_21:
  return v14;
}

- (COSAppleIDSkippedBenefitsViewController)init
{
  v5.receiver = self;
  v5.super_class = COSAppleIDSkippedBenefitsViewController;
  v2 = [(COSOptinViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSAppleIDSkippedBenefitsViewController *)v2 setStyle:98];
    [(COSAppleIDSkippedBenefitsViewController *)v3 updateLoginStatus];
  }

  return v3;
}

- (void)updateLoginStatus
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[COSAppleIDSkippedBenefitsViewController updateLoginStatus]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  if (self->_iCloudAppleIDSuccess)
  {
    p_iCloudAppleIDLoggedIn = &self->_iCloudAppleIDLoggedIn;
    self->_iCloudAppleIDLoggedIn = 1;
  }

  else
  {
    v5 = +[COSiCloudAuthController iCloudAccountInAccountStore];
    p_iCloudAppleIDLoggedIn = &self->_iCloudAppleIDLoggedIn;
    self->_iCloudAppleIDLoggedIn = v5 != 0;
  }

  if (self->_iMessageAppleIDSuccess)
  {
    p_iMessageAppleIDLoggedIn = &self->_iMessageAppleIDLoggedIn;
    self->_iMessageAppleIDLoggedIn = 1;
  }

  else
  {
    v7 = +[COSiMessageFaceTimeAuthController iMessageAccountInAccountStore];
    p_iMessageAppleIDLoggedIn = &self->_iMessageAppleIDLoggedIn;
    self->_iMessageAppleIDLoggedIn = v7 != 0;
  }

  if (*p_iCloudAppleIDLoggedIn == 1)
  {
    v8 = *p_iMessageAppleIDLoggedIn ^ 1;
  }

  else
  {
    v8 = 0;
  }

  self->_shouldShowMessagesLogIn = v8 & 1;
  v9 = pbb_accountsignin_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithBool:*p_iCloudAppleIDLoggedIn];
    v11 = [NSNumber numberWithBool:*p_iMessageAppleIDLoggedIn];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "iCloudAppleIDLoggedIn:%@ iMessageAppleIDLoggedIn:%@", &v12, 0x16u);
  }
}

- (void)updateUIFromLoginStatus
{
  [(COSAppleIDSkippedBenefitsViewController *)self updateLoginStatus];
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSAppleIDSkippedBenefitsViewController updateUIFromLoginStatus]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if (self->_iCloudAppleIDLoggedIn)
  {
    if (self->_iMessageAppleIDLoggedIn)
    {
      delegate = [(COSAppleIDSkippedBenefitsViewController *)self delegate];
      [delegate buddyControllerDone:self];

      [objc_opt_class() runPostAppleIDSignInOrSkippedTasks];
    }

    else if (self->_autoTryToLoginToMessages)
    {
      [(COSAppleIDSkippedBenefitsViewController *)self presentLoginViewController];
    }
  }
}

- (id)titleString
{
  if (self->_shouldShowMessagesLogIn)
  {
    v2 = @"APPLEID_BENEFITS_TITLE_ALTERNATE";
  }

  else
  {
    v2 = @"APPLEID_BENEFITS_TITLE";
  }

  v3 = v2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:v3 value:&stru_10026E598 table:@"Localizable"];

  return v5;
}

- (id)detailString
{
  if (self->_shouldShowMessagesLogIn)
  {
    v2 = @"APPLEID_BENEFITS_DETAIL_ALTERNATE";
  }

  else
  {
    v2 = @"APPLEID_BENEFITS_DETAIL";
  }

  v3 = v2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:v3 value:&stru_10026E598 table:@"Localizable"];

  return v5;
}

- (id)suggestedButtonTitle
{
  if (self->_shouldShowMessagesLogIn)
  {
    v2 = @"APPLEID_BENEFITS_SIGN_IN_ALTERNATE";
  }

  else
  {
    v2 = @"APPLEID_BENEFITS_SIGN_IN";
  }

  v3 = v2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:v3 value:&stru_10026E598 table:@"Localizable"];

  return v5;
}

- (id)okayButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLEID_BENEFITS_NEXT" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailTitleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLEID_BENEFITS_DETAIL_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  setupController = [UIApp setupController];
  appleIDSignInModel = [setupController appleIDSignInModel];
  [appleIDSignInModel setBenefitsControllerPresented:1];

  [(COSAppleIDSkippedBenefitsViewController *)self presentLoginViewController];
}

- (void)presentLoginViewController
{
  v3 = pbb_accountsignin_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[COSAppleIDSkippedBenefitsViewController presentLoginViewController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  self->_autoTryToLoginToMessages = 0;
  view = [(COSAppleIDSkippedBenefitsViewController *)self view];
  [view setUserInteractionEnabled:0];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = qword_1002BD2B0;
  v15 = qword_1002BD2B0;
  if (!qword_1002BD2B0)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v17 = sub_100026428;
    v18 = &unk_1002680D0;
    v19 = &v12;
    sub_100026428(&buf);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = objc_alloc_init(v5);
  [v7 setDelegate:self];
  if (self->_iCloudAppleIDLoggedIn)
  {
    v8 = sub_100025AB0();
    [v7 setServiceType:v8];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100025B90;
  v10[3] = &unk_100268858;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v9 prepareInViewController:self completion:v10];
}

- (void)okayButtonPressed:(id)pressed
{
  setupController = [UIApp setupController];
  appleIDSignInModel = [setupController appleIDSignInModel];
  [appleIDSignInModel setBenefitsControllerPresented:1];

  delegate = [(COSAppleIDSkippedBenefitsViewController *)self delegate];
  [delegate buddyControllerDone:self];

  [objc_opt_class() runPostAppleIDSignInOrSkippedTasks];
}

- (void)signInController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  controllerCopy = controller;
  errorCopy = error;
  v10 = pbb_accountsignin_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (successCopy)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v20 = v11;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "COSAppleIDSkippedBenefitsViewController signInController:didCompleteWithSuccess:%@ error:%@", buf, 0x16u);
  }

  if (successCopy)
  {
    v12 = sub_100025AB0();
    serviceType = [controllerCopy serviceType];
    v14 = [v12 isEqualToString:serviceType];

    if (v14)
    {
      self->_iMessageAppleIDSuccess = 1;
    }

    else
    {
      self->_iCloudAppleIDSuccess = 1;
      self->_autoTryToLoginToMessages = 1;
      setupController = [UIApp setupController];
      appleIDSignInModel = [setupController appleIDSignInModel];
      [appleIDSignInModel setCdpRepairRequiredOnBenefitsController:1];
    }
  }

  view = [(COSAppleIDSkippedBenefitsViewController *)self view];
  [view setUserInteractionEnabled:1];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100026028;
  v18[3] = &unk_1002682F0;
  v18[4] = self;
  [(COSAppleIDSkippedBenefitsViewController *)self dismissViewControllerAnimated:1 completion:v18];
}

- (void)signInControllerDidCancel:(id)cancel
{
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "COSAppleIDSkippedBenefitsViewController signInControllerDidCancel:", buf, 2u);
  }

  view = [(COSAppleIDSkippedBenefitsViewController *)self view];
  [view setUserInteractionEnabled:1];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026220;
  v6[3] = &unk_1002682F0;
  v6[4] = self;
  [(COSAppleIDSkippedBenefitsViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

@end