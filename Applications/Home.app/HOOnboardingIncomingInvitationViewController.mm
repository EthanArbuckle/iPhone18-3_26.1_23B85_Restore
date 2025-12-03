@interface HOOnboardingIncomingInvitationViewController
- (HOOnboardingChildViewController)nextViewController;
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingIncomingInvitationFlowDelegate)incomingInvitationDelegate;
- (HOOnboardingIncomingInvitationViewController)initWithIncomingInvitation:(id)invitation invitationHelper:(id)helper incomingInvitationDelegate:(id)delegate;
- (void)_acceptInvitation;
- (void)_cancelButton:(id)button;
- (void)_configureButtons;
- (void)_continue;
- (void)_declineInvitation:(id)invitation;
- (void)_handleMainActionButton:(id)button;
- (void)_hideSpinner;
- (void)_ignoreInvitation:(id)invitation;
- (void)_ignoreOrReportAlert:(id)alert;
- (void)_reallyAcceptInvitation;
- (void)_reportJunk:(id)junk;
- (void)_showSpinner;
- (void)_updateImageConstraints;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)invitationResponseController:(id)controller stateDidChange:(unint64_t)change;
- (void)invitationUtilityDidUpdateInformation:(id)information;
- (void)viewDidLayoutSubviews;
@end

@implementation HOOnboardingIncomingInvitationViewController

- (HOOnboardingIncomingInvitationViewController)initWithIncomingInvitation:(id)invitation invitationHelper:(id)helper incomingInvitationDelegate:(id)delegate
{
  invitationCopy = invitation;
  helperCopy = helper;
  delegateCopy = delegate;
  if (helperCopy)
  {
    [helperCopy setMode:1];
  }

  else
  {
    helperCopy = [[HUInvitationHelper alloc] initWithMode:1];
  }

  [helperCopy setInvitation:invitationCopy];
  detailText = [helperCopy detailText];
  homeInvitationTitle = [helperCopy homeInvitationTitle];
  if ([helperCopy isUnknownContact])
  {
    v14 = @"person.crop.circle.badge.questionmark";
  }

  else
  {
    v14 = 0;
  }

  v37.receiver = self;
  v37.super_class = HOOnboardingIncomingInvitationViewController;
  v15 = [(HOOnboardingIncomingInvitationViewController *)&v37 initWithTitle:homeInvitationTitle detailText:detailText symbolName:v14];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_invitationHelper, helperCopy);
    [(HUInvitationHelper *)v16->_invitationHelper setDelegate:v16];
    objc_storeWeak(&v16->_incomingInvitationDelegate, delegateCopy);
    objc_storeStrong(&v16->_invitation, invitation);
    v17 = [[HUIncomingInvitationResponseController alloc] initWithDelegate:v16 invitation:invitationCopy];
    responseController = v16->_responseController;
    v16->_responseController = v17;

    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [invitationCopy hf_prettyDescription];
      *buf = 138412290;
      v39 = hf_prettyDescription;
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
    contentView = [(HOOnboardingIncomingInvitationViewController *)v16 contentView];
    [contentView addSubview:v16->_imageView];

    if ([(HMIncomingHomeInvitation *)v16->_invitation isInviteeRestrictedGuest])
    {
      v28 = +[UIColor systemGray4Color];
      [(UIImageView *)v16->_imageView setTintColor:v28];
    }

    v29 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v16 action:"_cancelButton:"];
    navigationItem = [(HOOnboardingIncomingInvitationViewController *)v16 navigationItem];
    [navigationItem setRightBarButtonItem:v29];

    [(HOOnboardingIncomingInvitationViewController *)v16 setModalInPresentation:1];
    v31 = +[HFHomeKitDispatcher sharedDispatcher];
    [v31 addHomeManagerObserver:v16];
    [v31 addHomeObserver:v16];
    if ([invitationCopy isInviteeRestrictedGuest])
    {
      restrictedGuestSchedule = [invitationCopy restrictedGuestSchedule];

      v33 = off_1000C0D38;
      if (restrictedGuestSchedule)
      {
        v33 = &off_1000C0D40;
      }

      v34 = [objc_alloc(*v33) initWithIncomingInvitation:invitationCopy invitationHelper:helperCopy incomingInvitationDelegate:delegateCopy];
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
  invitation = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  isInviteeRestrictedGuest = [invitation isInviteeRestrictedGuest];

  if (isInviteeRestrictedGuest)
  {
    restrictedGuestNextViewController = [(HOOnboardingIncomingInvitationViewController *)self restrictedGuestNextViewController];
  }

  else
  {
    restrictedGuestNextViewController = 0;
  }

  return restrictedGuestNextViewController;
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  homeCopy = home;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[HOOnboardingIncomingInvitationViewController homeManager:didAddHome:]";
    v16 = 2112;
    v17 = homeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) home = %@.", &v14, 0x16u);
  }

  uuid = [homeCopy uuid];
  invitation = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  homeUUID = [invitation homeUUID];
  v10 = [uuid hmf_isEqualToUUID:homeUUID];

  if (v10)
  {
    acceptedPendingAddHomeTimeoutCancellationToken = [(HOOnboardingIncomingInvitationViewController *)self acceptedPendingAddHomeTimeoutCancellationToken];
    [acceptedPendingAddHomeTimeoutCancellationToken cancel];

    [(HOOnboardingIncomingInvitationViewController *)self setAcceptedPendingAddHomeTimeoutCancellationToken:0];
    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    [v12 setSelectedHome:homeCopy userInitiated:1];

    incomingInvitationDelegate = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
    [incomingInvitationDelegate invitationViewControllerDidAcceptInvitation:self];
  }
}

- (void)invitationResponseController:(id)controller stateDidChange:(unint64_t)change
{
  controllerCopy = controller;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [controllerCopy state];
    v8 = HUStringFromIncomingInvitationResponseControllerState();
    invitation = [controllerCopy invitation];
    hf_prettyDescription = [invitation hf_prettyDescription];
    *buf = 136315650;
    v24 = "[HOOnboardingIncomingInvitationViewController invitationResponseController:stateDidChange:]";
    v25 = 2114;
    v26 = v8;
    v27 = 2112;
    v28 = hf_prettyDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) invitation state is %{public}@ for invitation %@", buf, 0x20u);
  }

  switch(change)
  {
    case 3uLL:
      incomingInvitationDelegate = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
      [incomingInvitationDelegate invitationViewControllerDidDecideLaterInvitation:self];

      break;
    case 2uLL:
      if ([controllerCopy response] == 1)
      {
        joiningHomeLabel = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
        v12 = sub_100010644(@"HOJoiningHome_Label_Title");
        [joiningHomeLabel setText:v12];

        joiningHomeLabel2 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
        [joiningHomeLabel2 sizeToFit];

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

      else if ([controllerCopy response] == 2)
      {
        incomingInvitationDelegate2 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
        [incomingInvitationDelegate2 invitationViewControllerDidDeclineInvitation:self];
      }

      else if ([controllerCopy response] == 3)
      {
        incomingInvitationDelegate3 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
        [incomingInvitationDelegate3 invitationViewControllerDidIgnoreInvitation:self];
      }

      else if ([controllerCopy response] == 4)
      {
        incomingInvitationDelegate4 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
        [incomingInvitationDelegate4 invitationViewControllerDidReportJunkInvitation:self];
      }

      else
      {
        v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [controllerCopy response]);
        NSLog(@"Unexpected response %@", v20);
      }

      break;
    case 1uLL:
      [(HOOnboardingIncomingInvitationViewController *)self _showSpinner];
      break;
  }
}

- (void)invitationUtilityDidUpdateInformation:(id)information
{
  [(OBTrayButton *)self->_declineOrIgnoreInvitationButton removeTarget:self action:0 forControlEvents:64];
  buttonTray = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
  [buttonTray removeAllButtons];

  [(HOOnboardingIncomingInvitationViewController *)self _configureButtons];
}

- (void)_configureButtons
{
  v3 = sub_100010644(@"HHOUserIncomingInvitationView_ConsentNotice");
  invitationHelper = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  invitation = [invitationHelper invitation];
  isInviteeRestrictedGuest = [invitation isInviteeRestrictedGuest];

  if (isInviteeRestrictedGuest)
  {

    v3 = 0;
  }

  buttonTray = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
  [buttonTray addCaptionText:v3];

  invitationHelper2 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  isUnknownContact = [invitationHelper2 isUnknownContact];

  v10 = +[OBBoldTrayButton boldButton];
  if (isUnknownContact)
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

  declineOrIgnoreInvitationButton = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  v15 = sub_100010644(v13);
  [declineOrIgnoreInvitationButton setTitle:v15 forState:0];

  declineOrIgnoreInvitationButton2 = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  [declineOrIgnoreInvitationButton2 addTarget:self action:*v12 forControlEvents:64];

  headerView = [(HOOnboardingIncomingInvitationViewController *)self headerView];
  invitationHelper3 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  homeInvitationTitle = [invitationHelper3 homeInvitationTitle];
  [headerView setTitle:homeInvitationTitle];

  headerView2 = [(HOOnboardingIncomingInvitationViewController *)self headerView];
  invitationHelper4 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  detailText = [invitationHelper4 detailText];
  [headerView2 setDetailText:detailText];

  mainActionButton = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [mainActionButton setTranslatesAutoresizingMaskIntoConstraints:0];

  declineOrIgnoreInvitationButton3 = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  [declineOrIgnoreInvitationButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = sub_100010644(@"HOUserIncomingInvitationView_AcceptButton");
  mainActionButton2 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [mainActionButton2 setAccessibilityIdentifier:@"Home.Onboarding.Guest.JoinHome"];

  invitation2 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  LODWORD(detailText) = [invitation2 isInviteeRestrictedGuest];

  if (detailText)
  {
    v28 = sub_100010644(@"HOIncomingInvitation_RestrictedGuest_JoinHomeButton");

    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      invitation3 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
      hf_prettyDescription = [invitation3 hf_prettyDescription];
      invitation4 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
      v42 = 136315650;
      v43 = "[HOOnboardingIncomingInvitationViewController _configureButtons]";
      v44 = 2112;
      v45 = hf_prettyDescription;
      v46 = 1024;
      isInviteeRestrictedGuest2 = [invitation4 isInviteeRestrictedGuest];
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@. isInviteeRestrictedGuest = %{BOOL}d", &v42, 0x1Cu);
    }

    v25 = v28;
  }

  mainActionButton3 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [mainActionButton3 setTitle:v25 forState:0];

  mainActionButton4 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [mainActionButton4 addTarget:self action:"_handleMainActionButton:" forControlEvents:64];

  invitationHelper5 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  isUnknownContact2 = [invitationHelper5 isUnknownContact];

  buttonTray2 = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
  if (isUnknownContact2)
  {
    declineOrIgnoreInvitationButton4 = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
    [buttonTray2 addButton:declineOrIgnoreInvitationButton4];

    buttonTray3 = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
    [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  }

  else
  {
    mainActionButton5 = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
    [buttonTray2 addButton:mainActionButton5];

    buttonTray3 = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
    [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  }
  v41 = ;
  [buttonTray3 addButton:v41];
}

- (void)_updateImageConstraints
{
  knownContactImageConstraints = [(HOOnboardingIncomingInvitationViewController *)self knownContactImageConstraints];
  [NSLayoutConstraint deactivateConstraints:knownContactImageConstraints];

  [(HOOnboardingIncomingInvitationViewController *)self setKnownContactImageConstraints:&__NSArray0__struct];
  invitationHelper = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  LODWORD(knownContactImageConstraints) = [invitationHelper isUnknownContact];

  imageView = [(HOOnboardingIncomingInvitationViewController *)self imageView];
  v22 = imageView;
  if (knownContactImageConstraints)
  {
    [imageView setHidden:1];
  }

  else
  {
    [imageView setHidden:0];

    mainActionButton = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
    [mainActionButton bounds];
    v8 = v7;

    if (+[HFUtilities isAMac])
    {
      view = [(HOOnboardingIncomingInvitationViewController *)self view];
      [view frame];
      v11 = v10 * 0.65;
    }

    else
    {
      v11 = v8 + -82.0;
    }

    centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
    contentView = [(HOOnboardingIncomingInvitationViewController *)self contentView];
    centerXAnchor2 = [contentView centerXAnchor];
    v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v24[0] = v14;
    heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
    widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
    v17 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    v24[1] = v17;
    widthAnchor2 = [(UIImageView *)self->_imageView widthAnchor];
    v19 = [widthAnchor2 constraintEqualToConstant:v11];
    v24[2] = v19;
    v20 = [NSArray arrayWithObjects:v24 count:3];
    [(HOOnboardingIncomingInvitationViewController *)self setKnownContactImageConstraints:v20];

    knownContactImageConstraints2 = [(HOOnboardingIncomingInvitationViewController *)self knownContactImageConstraints];
    [NSLayoutConstraint activateConstraints:knownContactImageConstraints2];
  }
}

- (void)_ignoreOrReportAlert:(id)alert
{
  alertCopy = alert;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", buf, 0x16u);
  }

  v7 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteActionSheet_Title");
  invitation = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  homeName = [invitation homeName];
  v10 = [NSString stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, homeName];

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

- (void)_reportJunk:(id)junk
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v8, 0x16u);
  }

  responseController = [(HOOnboardingIncomingInvitationViewController *)self responseController];
  [responseController respondToInvitationWithResponse:4];
}

- (void)_cancelButton:(id)button
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v12, 0x16u);
  }

  [(HOOnboardingIncomingInvitationViewController *)self setDidUserTriggerOnboardingDismissal:1];
  incomingInvitationDelegate = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
  v8 = objc_opt_respondsToSelector();

  incomingInvitationDelegate2 = [(HOOnboardingIncomingInvitationViewController *)self incomingInvitationDelegate];
  v10 = incomingInvitationDelegate2;
  if (v8)
  {
    invitation = [(HOOnboardingIncomingInvitationViewController *)self invitation];
    [v10 didDecideLaterForInvitation:invitation viewController:self error:0];
  }

  else
  {
    [incomingInvitationDelegate2 invitationViewControllerDidDecideLaterInvitation:self];
  }
}

- (void)_ignoreInvitation:(id)invitation
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v8, 0x16u);
  }

  responseController = [(HOOnboardingIncomingInvitationViewController *)self responseController];
  [responseController respondToInvitationWithResponse:3];
}

- (void)_declineInvitation:(id)invitation
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ User tapped button", &v8, 0x16u);
  }

  [(HOOnboardingIncomingInvitationViewController *)self setDidUserTriggerOnboardingDismissal:1];
  responseController = [(HOOnboardingIncomingInvitationViewController *)self responseController];
  [responseController respondToInvitationWithResponse:2];
}

- (void)_handleMainActionButton:(id)button
{
  buttonCopy = button;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentTitle = [buttonCopy currentTitle];
    invitation = [(HOOnboardingIncomingInvitationViewController *)self invitation];
    hf_prettyDescription = [invitation hf_prettyDescription];
    *buf = 136315650;
    v19 = "[HOOnboardingIncomingInvitationViewController _handleMainActionButton:]";
    v20 = 2112;
    v21 = currentTitle;
    v22 = 2112;
    v23 = hf_prettyDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s User tapped %@ button. invitation = %@", buf, 0x20u);
  }

  v9 = [NSString stringWithFormat:@"(%s) Accepting invitation", "[HOOnboardingIncomingInvitationViewController _handleMainActionButton:]"];
  invitation2 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  isInviteeRestrictedGuest = [invitation2 isInviteeRestrictedGuest];
  v12 = @"NO";
  if (isInviteeRestrictedGuest)
  {
    v12 = @"YES";
  }

  v13 = [NSString stringWithFormat:@"%s invitation.isInviteeRestrictedGuest = %@.", "[HOOnboardingIncomingInvitationViewController _handleMainActionButton:]", v12];

  invitation3 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
  isInviteeRestrictedGuest2 = [invitation3 isInviteeRestrictedGuest];

  if (isInviteeRestrictedGuest2)
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
  restrictedGuestNextViewController = [(HOOnboardingIncomingInvitationViewController *)self restrictedGuestNextViewController];
  v4 = [restrictedGuestNextViewController conformsToProtocol:&OBJC_PROTOCOL___HOOnboardingChildViewController];

  if (v4)
  {
    restrictedGuestNextViewController2 = [(HOOnboardingIncomingInvitationViewController *)self restrictedGuestNextViewController];
    if ([restrictedGuestNextViewController2 conformsToProtocol:&OBJC_PROTOCOL___HOOnboardingChildViewController])
    {
      v6 = restrictedGuestNextViewController2;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    delegate = [(HOOnboardingIncomingInvitationViewController *)self delegate];
    [v7 setDelegate:delegate];
  }

  navigationController = [(HOOnboardingIncomingInvitationViewController *)self navigationController];
  restrictedGuestNextViewController3 = [(HOOnboardingIncomingInvitationViewController *)self restrictedGuestNextViewController];
  [navigationController pushViewController:restrictedGuestNextViewController3 animated:1];
}

- (void)_acceptInvitation
{
  invitationHelper = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  isUnknownContact = [invitationHelper isUnknownContact];

  if (isUnknownContact)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      invitation = [(HOOnboardingIncomingInvitationViewController *)self invitation];
      hf_prettyDescription = [invitation hf_prettyDescription];
      invitationHelper2 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
      inviterContact = [invitationHelper2 inviterContact];
      *buf = 138412546;
      v35 = hf_prettyDescription;
      v36 = 2112;
      v37 = inviterContact;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User invitation %@ is from unknown contact %@", buf, 0x16u);
    }

    v11 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteAlert_Title");
    invitation2 = [(HOOnboardingIncomingInvitationViewController *)self invitation];
    homeName = [invitation2 homeName];
    v27 = [NSString stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, homeName];

    v14 = sub_100010644(@"HOUserIncomingInvitationView_UnknownInviteAlert_Body");
    invitationHelper3 = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
    inviterContact2 = [invitationHelper3 inviterContact];
    givenName = [inviterContact2 givenName];
    v18 = [NSString stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, givenName];

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
  responseController = [(HOOnboardingIncomingInvitationViewController *)self responseController];
  [responseController respondToInvitationWithResponse:1];
}

- (void)_hideSpinner
{
  spinner = [(HOOnboardingIncomingInvitationViewController *)self spinner];

  if (spinner)
  {
    spinner2 = [(HOOnboardingIncomingInvitationViewController *)self spinner];
    [spinner2 removeFromSuperview];

    [(HOOnboardingIncomingInvitationViewController *)self setSpinner:0];
  }

  joiningHomeLabel = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];

  if (joiningHomeLabel)
  {
    joiningHomeLabel2 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
    [joiningHomeLabel2 removeFromSuperview];

    [(HOOnboardingIncomingInvitationViewController *)self setJoiningHomeLabel:0];
  }

  mainActionButton = [(HOOnboardingIncomingInvitationViewController *)self mainActionButton];
  [mainActionButton setHidden:0];

  declineOrIgnoreInvitationButton = [(HOOnboardingIncomingInvitationViewController *)self declineOrIgnoreInvitationButton];
  [declineOrIgnoreInvitationButton setHidden:0];

  view = [(HOOnboardingIncomingInvitationViewController *)self view];
  [view setNeedsLayout];
}

- (void)_showSpinner
{
  [(HOOnboardingIncomingInvitationViewController *)self _hideSpinner];
  v3 = +[HFUtilities isAMac];
  buttonTray = [(HOOnboardingIncomingInvitationViewController *)self buttonTray];
  v5 = buttonTray;
  if (v3)
  {
    [buttonTray setHidden:1];
  }

  else
  {
    [buttonTray removeFromSuperview];
  }

  v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(HOOnboardingIncomingInvitationViewController *)self setSpinner:v6];

  spinner = [(HOOnboardingIncomingInvitationViewController *)self spinner];
  [spinner setTranslatesAutoresizingMaskIntoConstraints:0];

  spinner2 = [(HOOnboardingIncomingInvitationViewController *)self spinner];
  [spinner2 sizeToFit];

  spinner3 = [(HOOnboardingIncomingInvitationViewController *)self spinner];
  [spinner3 startAnimating];

  v10 = objc_alloc_init(UILabel);
  [(HOOnboardingIncomingInvitationViewController *)self setJoiningHomeLabel:v10];

  joiningHomeLabel = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
  [joiningHomeLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  joiningHomeLabel2 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
  v13 = [HUFontUtilities preferredFontForTextStyle:UIFontTextStyleTitle3 traits:32770];
  [joiningHomeLabel2 setFont:v13];

  joiningHomeLabel3 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
  v15 = +[UIColor systemGrayColor];
  [joiningHomeLabel3 setTextColor:v15];

  v16 = [UIStackView alloc];
  spinner4 = [(HOOnboardingIncomingInvitationViewController *)self spinner];
  v35[0] = spinner4;
  joiningHomeLabel4 = [(HOOnboardingIncomingInvitationViewController *)self joiningHomeLabel];
  v35[1] = joiningHomeLabel4;
  v19 = [NSArray arrayWithObjects:v35 count:2];
  v20 = [v16 initWithArrangedSubviews:v19];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 setAlignment:3];
  [v20 setDistribution:3];
  [v20 setSpacing:10.0];
  contentView = [(HOOnboardingIncomingInvitationViewController *)self contentView];
  [contentView addSubview:v20];

  invitationHelper = [(HOOnboardingIncomingInvitationViewController *)self invitationHelper];
  LODWORD(joiningHomeLabel4) = [invitationHelper isUnknownContact];

  topAnchor = [v20 topAnchor];
  if (joiningHomeLabel4)
  {
    contentView2 = [(HOOnboardingIncomingInvitationViewController *)self contentView];
    bottomAnchor = [contentView2 bottomAnchor];
    v26 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:20.0];
    [v26 setActive:1];

    centerXAnchor = [v20 centerXAnchor];
    [(HOOnboardingIncomingInvitationViewController *)self contentView];
  }

  else
  {
    imageView = [(HOOnboardingIncomingInvitationViewController *)self imageView];
    bottomAnchor2 = [imageView bottomAnchor];
    v30 = [topAnchor constraintEqualToAnchor:bottomAnchor2 constant:20.0];
    [v30 setActive:1];

    centerXAnchor = [v20 centerXAnchor];
    [(HOOnboardingIncomingInvitationViewController *)self imageView];
  }
  v31 = ;
  centerXAnchor2 = [v31 centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v33 setActive:1];

  view = [(HOOnboardingIncomingInvitationViewController *)self view];
  [view setNeedsLayout];
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