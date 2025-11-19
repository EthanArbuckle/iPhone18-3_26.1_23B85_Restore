@interface HOOnboardingIncomingInvitationViewController
- (HOOnboardingChildViewController)nextViewController;
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingIncomingInvitationFlowDelegate)incomingInvitationDelegate;
- (HOOnboardingIncomingInvitationViewController)initWithIncomingInvitation:(id)a3 invitationHelper:(id)a4 incomingInvitationDelegate:(id)a5;
- (void)_acceptInvitation;
- (void)_cancelButton:(id)a3;
- (void)_configureButtons;
- (void)_continue;
- (void)_declineInvitation:(id)a3;
- (void)_handleMainActionButton:(id)a3;
- (void)_hideSpinner;
- (void)_ignoreInvitation:(id)a3;
- (void)_ignoreOrReportAlert:(id)a3;
- (void)_reallyAcceptInvitation;
- (void)_reportJunk:(id)a3;
- (void)_showSpinner;
- (void)_updateImageConstraints;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)invitationResponseController:(id)a3 stateDidChange:(unint64_t)a4;
- (void)invitationUtilityDidUpdateInformation:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation HOOnboardingIncomingInvitationViewController

- (HOOnboardingIncomingInvitationViewController)initWithIncomingInvitation:(id)a3 invitationHelper:(id)a4 incomingInvitationDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    [v10 setMode:1];
  }

  else
  {
    v10 = [[HUInvitationHelper alloc] initWithMode:1];
  }

  [v10 setInvitation:v9];
  v12 = [v10 detailText];
  v13 = [v10 homeInvitationTitle];
  if ([v10 isUnknownContact])
  {
    v14 = @"person.crop.circle.badge.questionmark";
  }

  else
  {
    v14 = 0;
  }

  v37.receiver = self;
  v37.super_class = HOOnboardingIncomingInvitationViewController;
  v15 = [(HOOnboardingIncomingInvitationViewController *)&v37 initWithTitle:v13 detailText:v12 symbolName:v14];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_invitationHelper, v10);
    [(HUInvitationHelper *)v16->_invitationHelper setDelegate:v16];
    objc_storeWeak(&v16->_incomingInvitationDelegate, v11);
    objc_storeStrong(&v16->_invitation, a3);
    v17 = [[HUIncomingInvitationResponseController alloc] initWithDelegate:v16 invitation:v9];
    responseController = v16->_responseController;
    v16->_responseController = v17;

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v9 hf_prettyDescription];
      *buf = 138412290;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Onboarding invitation %@", buf, 0xCu);
    }

    v21 = HUImageNamed();
    if ([(HMIncomingHomeInvitation *)v16->_invitation isInviteeRestrictedGuest])
    {
      v22 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:150.0];
      v23 = [UIImage systemImageNamed:@"house.circle.fill" withConfiguration:v22];

      v24 = 4;
      v21 = v23;
    }

    else
    {
      v24 = 1;
    }

    v25 = [[UIImageView alloc] initWithImage:v21];
    imageView = v16->_imageView;
    v16->_imageView = v25;

    [(UIImageView *)v16->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v16->_imageView setContentMode:v24];
    v27 = [(HOOnboardingIncomingInvitationViewController *)v16 contentView];
    [v27 addSubview:v16->_imageView];

    if ([(HMIncomingHomeInvitation *)v16->_invitation isInviteeRestrictedGuest])
    {
      v28 = +[UIColor systemGray4Color];
      [(UIImageView *)v16->_imageView setTintColor:v28];
    }

    v29 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v16 action:"_cancelButton:"];
    v30 = [(HOOnboardingIncomingInvitationViewController *)v16 navigationItem];
    [v30 setRightBarButtonItem:v29];

    [(HOOnboardingIncomingInvitationViewController *)v16 setModalInPresentation:1];
    v31 = +[HFHomeKitDispatcher sharedDispatcher];
    [v31 addHomeManagerObserver:v16];
    [v31 addHomeObserver:v16];
    if ([v9 isInviteeRestrictedGuest])
    {
      v32 = [v9 restrictedGuestSchedule];

      v33 = off_1000C0D38;
      if (v32)
      {
        v33 = &off_1000C0D40;
      }

      v34 = [objc_alloc(*v33) initWithIncomingInvitation:v9 invitationHelper:v10 incomingInvitationDelegate:v11];
      restrictedGuestNextViewController = v16->_restrictedGuestNextViewController;
      v16->_restrictedGuestNextViewController = v34;
    }

    [(HOOnboardingIncomingInvitationViewController *)v16 _configureButtons];
  }

  return v16;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HOOnboardingIncomingInvitationViewController;
  [(HOOnboardingIncomingInvitationViewController *)&v3 viewDidLayoutSubviews];
  [(HOOnboardingIncomingInvitationViewController *)self _updateImageConstraints];
}

- (HOOnboardingChildViewController)nextViewController
{
  v3 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  v4 = [v3 isInviteeRestrictedGuest];

  if (v4)
  {
    v5 = [(HOOnboardingIncomingInvitationViewController *)self restrictedGuestNextViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[HOOnboardingIncomingInvitationViewController homeManager:didAddHome:]";
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) home = %@.", &v14, 0x16u);
  }

  v7 = [v5 uuid];
  v8 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  v9 = [v8 homeUUID];
  v10 = [v7 hmf_isEqualToUUID:v9];

  if (v10)
  {
    v11 = [(HOOnboardingIncomingInvitationViewController *)self acceptedPendingAddHomeTimeoutCancellationToken];
    [v11 cancel];

    [(HOOnboardingIncomingInvitationViewController *)self setAcceptedPendingAddHomeTimeoutCancellationToken:0];
    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    [v12 setSelectedHome:v5 userInitiated:1];

    v13 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
    [v13 invitationViewControllerDidAcceptInvitation:self];
  }
}

- (void)invitationResponseController:(id)a3 stateDidChange:(unint64_t)a4
{
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [v6 state];
    v8 = HUStringFromIncomingInvitationResponseControllerState();
    v9 = [v6 invitation];
    v10 = [v9 hf_prettyDescription];
    *buf = 136315650;
    v24 = "[HOOnboardingIncomingInvitationViewController invitationResponseController:stateDidChange:]";
    v25 = 2114;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) invitation state is %{public}@ for invitation %@", buf, 0x20u);
  }

  switch(a4)
  {
    case 3uLL:
      v16 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
      [v16 invitationViewControllerDidDecideLaterInvitation:self];

      break;
    case 2uLL:
      if ([v6 response] == 1)
      {
        v11 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
        v12 = sub_100010644(@"HOJoiningHome_Label_Title");
        [v11 setText:v12];

        v13 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
        [v13 sizeToFit];

        objc_initWeak(buf, self);
        v14 = +[NAScheduler mainThreadScheduler];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10001082C;
        v21[3] = &unk_1000C22C8;
        objc_copyWeak(&v22, buf);
        v15 = [v14 afterDelay:v21 performBlock:120.0];
        [(HOOnboardingIncomingInvitationViewController *)self setAcceptedPendingAddHomeTimeoutCancellationToken:v15];

        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }

      else if ([v6 response] == 2)
      {
        v17 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
        [v17 invitationViewControllerDidDeclineInvitation:self];
      }

      else if ([v6 response] == 3)
      {
        v18 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
        [v18 invitationViewControllerDidIgnoreInvitation:self];
      }

      else if ([v6 response] == 4)
      {
        v19 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
        [v19 invitationViewControllerDidReportJunkInvitation:self];
      }

      else
      {
        v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 response]);
        NSLog(@"Unexpected response %@", v20);
      }

      break;
    case 1uLL:
      [(HOOnboardingIncomingInvitationViewController *)self _showSpinner];
      break;
  }
}

- (void)invitationUtilityDidUpdateInformation:(id)a3
{
  [(OBTrayButton *)self->_declineOrIgnoreInvitationButton removeTarget:self action:0 forControlEvents:64];
  v4 = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
  [v4 removeAllButtons];

  [(HOOnboardingIncomingInvitationViewController *)self _configureButtons];
}

- (void)_configureButtons
{
  v3 = sub_100010644(@"HHOUserIncomingInvitationView_ConsentNotice");
  v4 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  v5 = [v4 invitation];
  v6 = [v5 isInviteeRestrictedGuest];

  if (v6)
  {

    v3 = 0;
  }

  v7 = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
  [v7 addCaptionText:v3];

  v8 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  v9 = [v8 isUnknownContact];

  v10 = +[OBBoldTrayButton boldButton];
  if (v9)
  {
    [(HOOnboardingIncomingInvitationViewController *)self setDeclineOrIgnoreInvitationButton:v10];

    v11 = +[OBLinkTrayButton linkButton];
    [(HOOnboardingIncomingInvitationViewController *)self setMainActionButton:v11];
    v12 = &selRef__ignoreOrReportAlert_;
    v13 = @"HOUserIncomingInvitationView_IgnoreButton";
  }

  else
  {
    [(HOOnboardingIncomingInvitationViewController *)self setMainActionButton:v10];

    if (+[HFUtilities isAMac])
    {
      +[OBBoldTrayButton boldButton];
    }

    else
    {
      +[OBLinkTrayButton linkButton];
    }
    v11 = ;
    [(HOOnboardingIncomingInvitationViewController *)self setDeclineOrIgnoreInvitationButton:v11];
    v12 = &selRef__declineInvitation_;
    v13 = @"HOUserIncomingInvitationView_DeclineButton";
  }

  v14 = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  v15 = sub_100010644(v13);
  [v14 setTitle:v15 forState:0];

  v16 = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  [v16 addTarget:self action:*v12 forControlEvents:64];

  v17 = [(HOOnboardingIncomingInvitationViewController *)self headerView];
  v18 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  v19 = [v18 homeInvitationTitle];
  [v17 setTitle:v19];

  v20 = [(HOOnboardingIncomingInvitationViewController *)self headerView];
  v21 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  v22 = [v21 detailText];
  [v20 setDetailText:v22];

  v23 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = sub_100010644(@"HOUserIncomingInvitationView_AcceptButton");
  v26 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [v26 setAccessibilityIdentifier:@"Home.Onboarding.Guest.JoinHome"];

  v27 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  LODWORD(v22) = [v27 isInviteeRestrictedGuest];

  if (v22)
  {
    v28 = sub_100010644(@"HOIncomingInvitation_RestrictedGuest_JoinHomeButton");

    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
      v31 = [v30 hf_prettyDescription];
      v32 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
      v42 = 136315650;
      v43 = "[HOOnboardingIncomingInvitationViewController _configureButtons]";
      v44 = 2112;
      v45 = v31;
      v46 = 1024;
      v47 = [v32 isInviteeRestrictedGuest];
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@. isInviteeRestrictedGuest = %{BOOL}d", &v42, 0x1Cu);
    }

    v25 = v28;
  }

  v33 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [v33 setTitle:v25 forState:0];

  v34 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [v34 addTarget:self action:"_handleMainActionButton:" forControlEvents:64];

  v35 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  v36 = [v35 isUnknownContact];

  v37 = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
  if (v36)
  {
    v38 = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
    [v37 addButton:v38];

    v39 = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
    [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  }

  else
  {
    v40 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
    [v37 addButton:v40];

    v39 = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
    [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  }
  v41 = ;
  [v39 addButton:v41];
}

- (void)_updateImageConstraints
{
  v3 = [(HOOnboardingIncomingInvitationViewController *)self knownContactImageConstraints];
  [NSLayoutConstraint deactivateConstraints:v3];

  [(HOOnboardingIncomingInvitationViewController *)self setKnownContactImageConstraints:&__NSArray0__struct];
  v4 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  LODWORD(v3) = [v4 isUnknownContact];

  v5 = [(HOOnboardingIncomingInvitationViewController *)self imageView];
  v22 = v5;
  if (v3)
  {
    [v5 setHidden:1];
  }

  else
  {
    [v5 setHidden:0];

    v6 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
    [v6 bounds];
    v8 = v7;

    if (+[HFUtilities isAMac])
    {
      v9 = [(HOOnboardingIncomingInvitationViewController *)self view];
      [v9 frame];
      v11 = v10 * 0.65;
    }

    else
    {
      v11 = v8 + -82.0;
    }

    v23 = [(UIImageView *)self->_imageView centerXAnchor];
    v12 = [(HOOnboardingIncomingInvitationViewController *)self contentView];
    v13 = [v12 centerXAnchor];
    v14 = [v23 constraintEqualToAnchor:v13];
    v24[0] = v14;
    v15 = [(UIImageView *)self->_imageView heightAnchor];
    v16 = [(UIImageView *)self->_imageView widthAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v24[1] = v17;
    v18 = [(UIImageView *)self->_imageView widthAnchor];
    v19 = [v18 constraintEqualToConstant:v11];
    v24[2] = v19;
    v20 = [NSArray arrayWithObjects:v24 count:3];
    [(HOOnboardingIncomingInvitationViewController *)self setKnownContactImageConstraints:v20];

    v21 = [(HOOnboardingIncomingInvitationViewController *)self knownContactImageConstraints];
    [NSLayoutConstraint activateConstraints:v21];
  }
}

- (void)_ignoreOrReportAlert:(id)a3
{
  v19 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    v27 = self;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteActionSheet_Title");
  v8 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  v9 = [v8 homeName];
  v10 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v9];

  v11 = [UIAlertController alertControllerWithTitle:v10 message:0 preferredStyle:0];
  objc_initWeak(buf, self);
  v12 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteActionSheet_Ignore");
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100011600;
  v24[3] = &unk_1000C22F0;
  objc_copyWeak(v25, buf);
  v25[1] = a2;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v24];

  v14 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteActionSheet_Report");
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000116EC;
  v22[3] = &unk_1000C22F0;
  objc_copyWeak(v23, buf);
  v23[1] = a2;
  v15 = [UIAlertAction actionWithTitle:v14 style:2 handler:v22];

  v16 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteActionSheet_Cancel");
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000117D8;
  v20[3] = &unk_1000C2318;
  v17 = v11;
  v21 = v17;
  v18 = [UIAlertAction actionWithTitle:v16 style:1 handler:v20];

  [v17 addAction:v13];
  [v17 addAction:v15];
  [v17 addAction:v18];
  [(HOOnboardingIncomingInvitationViewController *)self presentViewController:v17 animated:1 completion:0];

  objc_destroyWeak(v23);
  objc_destroyWeak(v25);
  objc_destroyWeak(buf);
}

- (void)_reportJunk:(id)a3
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v8, 0x16u);
  }

  v7 = [(HOOnboardingIncomingInvitationViewController *)self responseController];
  [v7 respondToInvitationWithResponse:4];
}

- (void)_cancelButton:(id)a3
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v12, 0x16u);
  }

  [(HOOnboardingIncomingInvitationViewController *)self setDidUserTriggerOnboardingDismissal:1];
  v7 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
  v8 = objc_opt_respondsToSelector();

  v9 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
  v10 = v9;
  if (v8)
  {
    v11 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
    [v10 didDecideLaterForInvitation:v11 viewController:self error:0];
  }

  else
  {
    [v9 invitationViewControllerDidDecideLaterInvitation:self];
  }
}

- (void)_ignoreInvitation:(id)a3
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v8, 0x16u);
  }

  v7 = [(HOOnboardingIncomingInvitationViewController *)self responseController];
  [v7 respondToInvitationWithResponse:3];
}

- (void)_declineInvitation:(id)a3
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v8, 0x16u);
  }

  [(HOOnboardingIncomingInvitationViewController *)self setDidUserTriggerOnboardingDismissal:1];
  v7 = [(HOOnboardingIncomingInvitationViewController *)self responseController];
  [v7 respondToInvitationWithResponse:2];
}

- (void)_handleMainActionButton:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 currentTitle];
    v7 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
    v8 = [v7 hf_prettyDescription];
    *buf = 136315650;
    v19 = "[HOOnboardingIncomingInvitationViewController _handleMainActionButton:]";
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s User tapped %@ button. invitation = %@", buf, 0x20u);
  }

  v9 = [NSString stringWithFormat:@"(%s) Accepting invitation", "[HOOnboardingIncomingInvitationViewController _handleMainActionButton:]"];
  v10 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  v11 = [v10 isInviteeRestrictedGuest];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  v13 = [NSString stringWithFormat:@"%s invitation.isInviteeRestrictedGuest = %@.", "[HOOnboardingIncomingInvitationViewController _handleMainActionButton:]", v12];

  v14 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  v15 = [v14 isInviteeRestrictedGuest];

  if (v15)
  {
    v16 = [NSString stringWithFormat:@"%@. Continuing to next view controller.", v13];

    [(HOOnboardingIncomingInvitationViewController *)self _continue];
    v13 = v16;
  }

  else
  {
    [(HOOnboardingIncomingInvitationViewController *)self _acceptInvitation];
  }

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }
}

- (void)_continue
{
  v3 = [(HOOnboardingIncomingInvitationViewController *)self restrictedGuestNextViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___HOOnboardingChildViewController];

  if (v4)
  {
    v5 = [(HOOnboardingIncomingInvitationViewController *)self restrictedGuestNextViewController];
    if ([v5 conformsToProtocol:&OBJC_PROTOCOL___HOOnboardingChildViewController])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [(HOOnboardingIncomingInvitationViewController *)self delegate];
    [v7 setDelegate:v8];
  }

  v10 = [(HOOnboardingIncomingInvitationViewController *)self navigationController];
  v9 = [(HOOnboardingIncomingInvitationViewController *)self restrictedGuestNextViewController];
  [v10 pushViewController:v9 animated:1];
}

- (void)_acceptInvitation
{
  v4 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  v5 = [v4 isUnknownContact];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
      v8 = [v7 hf_prettyDescription];
      v9 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
      v10 = [v9 inviterContact];
      *buf = 138412546;
      v35 = v8;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User invitation %@ is from unknown contact %@", buf, 0x16u);
    }

    v11 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteAlert_Title");
    v12 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
    v13 = [v12 homeName];
    v27 = [NSString stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v13];

    v14 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteAlert_Body");
    v15 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
    v16 = [v15 inviterContact];
    v17 = [v16 givenName];
    v18 = [NSString stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v17];

    v19 = [UIAlertController alertControllerWithTitle:v27 message:v18 preferredStyle:1];
    objc_initWeak(buf, self);
    v20 = sub_100010644(@"HOUserIncomingInvitationView_AcceptButton");
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100012538;
    v32[3] = &unk_1000C22F0;
    objc_copyWeak(v33, buf);
    v33[1] = a2;
    v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:v32];

    v22 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteAlert_IgnoreAndReport");
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100012620;
    v30[3] = &unk_1000C22F0;
    objc_copyWeak(v31, buf);
    v31[1] = a2;
    v23 = [UIAlertAction actionWithTitle:v22 style:0 handler:v30];

    v24 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteAlert_Cancel");
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10001270C;
    v28[3] = &unk_1000C2318;
    v25 = v19;
    v29 = v25;
    v26 = [UIAlertAction actionWithTitle:v24 style:1 handler:v28];

    [v25 addAction:v23];
    [v25 addAction:v21];
    [v25 addAction:v26];
    [(HOOnboardingIncomingInvitationViewController *)self presentViewController:v25 animated:1 completion:0];

    objc_destroyWeak(v31);
    objc_destroyWeak(v33);
    objc_destroyWeak(buf);
  }

  else
  {

    [(HOOnboardingIncomingInvitationViewController *)self _reallyAcceptInvitation];
  }
}

- (void)_reallyAcceptInvitation
{
  v2 = [(HOOnboardingIncomingInvitationViewController *)self responseController];
  [v2 respondToInvitationWithResponse:1];
}

- (void)_hideSpinner
{
  v3 = [(HOOnboardingIncomingInvitationViewController *)self spinner];

  if (v3)
  {
    v4 = [(HOOnboardingIncomingInvitationViewController *)self spinner];
    [v4 removeFromSuperview];

    [(HOOnboardingIncomingInvitationViewController *)self setSpinner:0];
  }

  v5 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];

  if (v5)
  {
    v6 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
    [v6 removeFromSuperview];

    [(HOOnboardingIncomingInvitationViewController *)self setJoiningHomeLabel:0];
  }

  v7 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [v7 setHidden:0];

  v8 = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  [v8 setHidden:0];

  v9 = [(HOOnboardingIncomingInvitationViewController *)self view];
  [v9 setNeedsLayout];
}

- (void)_showSpinner
{
  [(HOOnboardingIncomingInvitationViewController *)self _hideSpinner];
  v3 = +[HFUtilities isAMac];
  v4 = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
  v5 = v4;
  if (v3)
  {
    [v4 setHidden:1];
  }

  else
  {
    [v4 removeFromSuperview];
  }

  v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(HOOnboardingIncomingInvitationViewController *)self setSpinner:v6];

  v7 = [(HOOnboardingIncomingInvitationViewController *)self spinner];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(HOOnboardingIncomingInvitationViewController *)self spinner];
  [v8 sizeToFit];

  v9 = [(HOOnboardingIncomingInvitationViewController *)self spinner];
  [v9 startAnimating];

  v10 = objc_alloc_init(UILabel);
  [(HOOnboardingIncomingInvitationViewController *)self setJoiningHomeLabel:v10];

  v11 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
  v13 = [HUFontUtilities preferredFontForTextStyle:UIFontTextStyleTitle3 traits:32770];
  [v12 setFont:v13];

  v14 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
  v15 = +[UIColor systemGrayColor];
  [v14 setTextColor:v15];

  v16 = [UIStackView alloc];
  v17 = [(HOOnboardingIncomingInvitationViewController *)self spinner];
  v35[0] = v17;
  v18 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
  v35[1] = v18;
  v19 = [NSArray arrayWithObjects:v35 count:2];
  v20 = [v16 initWithArrangedSubviews:v19];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 setAlignment:3];
  [v20 setDistribution:3];
  [v20 setSpacing:10.0];
  v21 = [(HOOnboardingIncomingInvitationViewController *)self contentView];
  [v21 addSubview:v20];

  v22 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  LODWORD(v18) = [v22 isUnknownContact];

  v23 = [v20 topAnchor];
  if (v18)
  {
    v24 = [(HOOnboardingIncomingInvitationViewController *)self contentView];
    v25 = [v24 bottomAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 constant:20.0];
    [v26 setActive:1];

    v27 = [v20 centerXAnchor];
    [(HOOnboardingIncomingInvitationViewController *)self contentView];
  }

  else
  {
    v28 = [(HOOnboardingIncomingInvitationViewController *)self imageView];
    v29 = [v28 bottomAnchor];
    v30 = [v23 constraintEqualToAnchor:v29 constant:20.0];
    [v30 setActive:1];

    v27 = [v20 centerXAnchor];
    [(HOOnboardingIncomingInvitationViewController *)self imageView];
  }
  v31 = ;
  v32 = [v31 centerXAnchor];
  v33 = [v27 constraintEqualToAnchor:v32];
  [v33 setActive:1];

  v34 = [(HOOnboardingIncomingInvitationViewController *)self view];
  [v34 setNeedsLayout];
}

- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBarDelegate);

  return WeakRetained;
}

- (HOOnboardingChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (HOOnboardingIncomingInvitationFlowDelegate)incomingInvitationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_incomingInvitationDelegate);

  return WeakRetained;
}

@end