@interface HOOnboardingInvitationRestrictedGuestAccessViewController
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingIncomingInvitationFlowDelegate)incomingInvitationDelegate;
- (HOOnboardingInvitationRestrictedGuestAccessViewController)initWithIncomingInvitation:(id)invitation invitationHelper:(id)helper incomingInvitationDelegate:(id)delegate;
- (void)_cancelButton:(id)button;
- (void)_continueButtonTapped:(id)tapped;
- (void)_displayNextViewController;
- (void)_reportJunk;
- (void)_updateImageConstraints;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)invitationResponseController:(id)controller stateDidChange:(unint64_t)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HOOnboardingInvitationRestrictedGuestAccessViewController

- (HOOnboardingInvitationRestrictedGuestAccessViewController)initWithIncomingInvitation:(id)invitation invitationHelper:(id)helper incomingInvitationDelegate:(id)delegate
{
  obj = invitation;
  invitationCopy = invitation;
  helperCopy = helper;
  helperCopy2 = helper;
  delegateCopy = delegate;
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [invitationCopy hf_prettyDescription];
    *buf = 136315394;
    v49 = "[HOOnboardingInvitationRestrictedGuestAccessViewController initWithIncomingInvitation:invitationHelper:incomingInvitationDelegate:]";
    v50 = 2112;
    v51 = hf_prettyDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@", buf, 0x16u);
  }

  v13 = sub_100035884(@"HOIncomingInvitation_RestrictedGuest_YourAccess_Title");
  v14 = sub_100035884(@"HOIncomingInvitation_RestrictedGuest_YourAccess_DetailText");
  v15 = [HUScheduleAccessViewController alloc];
  [invitationCopy restrictedGuestSchedule];
  v17 = v16 = invitationCopy;
  v18 = +[UIColor hf_keyColor];
  v19 = +[UIColor clearColor];
  v20 = [v15 initWithGuestAccessSchedule:v17 tintColor:v18 shouldDisplayAlwaysAllowedSchedule:0 scheduleBackgroundColor:v19 listRowBackgroundColor:0];
  centerVC = self->_centerVC;
  self->_centerVC = v20;

  v22 = [UIImage systemImageNamed:@"calendar.circle.fill"];
  view = [(UIViewController *)self->_centerVC view];
  v47.receiver = self;
  v47.super_class = HOOnboardingInvitationRestrictedGuestAccessViewController;
  v24 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)&v47 initWithTitle:v13 detailText:v14 icon:v22 contentView:view];

  v25 = helperCopy2;
  if (v24)
  {
    headerView = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 headerView];
    [headerView setIconAccessibilityIdentifier:@"Home.Onboarding.Guest.YourSchedule.Icon"];

    headerView2 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 headerView];
    [headerView2 setTitleAccessibilityIdentifier:@"Home.Onboarding.Guest.YourSchedule.Title"];

    headerView3 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 headerView];
    [headerView3 setDetailTextAccessibilityIdentifier:@"Home.Onboarding.Guest.YourSchedule.DetailText"];

    objc_storeStrong(&v24->_invitation, obj);
    objc_storeStrong(&v24->_invitationHelper, helperCopy);
    objc_storeWeak(&v24->_incomingInvitationDelegate, delegateCopy);
    v29 = [[HOOnboardingInvitationJoiningHomeViewController alloc] initWithIncomingInvitation:v16 invitationHelper:helperCopy2 incomingInvitationDelegate:delegateCopy];
    joiningHomeVC = v24->_joiningHomeVC;
    v24->_joiningHomeVC = v29;

    delegate = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 delegate];
    [(HOOnboardingInvitationJoiningHomeViewController *)v24->_joiningHomeVC setDelegate:delegate];

    v32 = [[HUIncomingInvitationResponseController alloc] initWithDelegate:v24 invitation:v16];
    responseController = v24->_responseController;
    v24->_responseController = v32;

    [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 setModalInPresentation:1];
    v34 = +[OBBoldTrayButton boldButton];
    continueButton = v24->_continueButton;
    v24->_continueButton = v34;

    [(OBTrayButton *)v24->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = v24->_continueButton;
    v37 = sub_100035884(@"HOContinueButtonTitle");
    [(OBTrayButton *)v36 setTitle:v37 forState:0];

    [(OBTrayButton *)v24->_continueButton setAccessibilityIdentifier:@"Home.Onboarding.Guest.ContinueButton"];
    [(OBTrayButton *)v24->_continueButton addTarget:v24 action:"_continueButtonTapped:" forControlEvents:64];
    buttonTray = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 buttonTray];
    [buttonTray addButton:v24->_continueButton];

    v39 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v24 action:"_cancelButton:"];
    navigationItem = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 navigationItem];
    [navigationItem setRightBarButtonItem:v39];

    navigationItem2 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem setAccessibilityIdentifier:@"Home.Onboarding.Guest.CancelButton"];

    [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 setContentInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v43 = +[HFHomeKitDispatcher sharedDispatcher];
    [v43 addHomeManagerObserver:v24];
  }

  return v24;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HOOnboardingInvitationRestrictedGuestAccessViewController;
  [(HOOnboardingInvitationRestrictedGuestAccessViewController *)&v5 viewDidLoad];
  centerVC = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self addChildViewController:centerVC];

  centerVC2 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  [centerVC2 didMoveToParentViewController:self];
}

- (void)_continueButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _continueButtonTapped:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'Continue' button", buf, 0xCu);
  }

  invitationHelper = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitationHelper];
  isUnknownContact = [invitationHelper isUnknownContact];

  if (isUnknownContact)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      invitation = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitation];
      hf_prettyDescription = [invitation hf_prettyDescription];
      invitationHelper2 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitationHelper];
      inviterContact = [invitationHelper2 inviterContact];
      *buf = 136315650;
      v37 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _continueButtonTapped:]";
      v38 = 2112;
      v39 = hf_prettyDescription;
      v40 = 2112;
      v41 = inviterContact;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) User invitation %@ is from unknown contact %@", buf, 0x20u);
    }

    v12 = sub_100035884(@"HOUserIncomingInvitationView_UnknownInviteAlert_Title");
    invitation2 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitation];
    homeName = [invitation2 homeName];
    v28 = [NSString stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, homeName];

    v15 = sub_100035884(@"HOUserIncomingInvitationView_UnknownInviteAlert_Body");
    invitationHelper3 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitationHelper];
    inviterContact2 = [invitationHelper3 inviterContact];
    givenName = [inviterContact2 givenName];
    v19 = [NSString stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, givenName];

    v20 = [UIAlertController alertControllerWithTitle:v28 message:v19 preferredStyle:1];
    objc_initWeak(buf, self);
    v21 = sub_100035884(@"HOUserIncomingInvitationView_AcceptButton");
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100036168;
    v34[3] = &unk_1000C3CB8;
    objc_copyWeak(&v35, buf);
    v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:v34];

    [v22 setAccessibilityIdentifier:@"Home.Onboarding.Guest.IncomingInvitation.ConfirmationAlert.Accept"];
    v23 = sub_100035884(@"HOUserIncomingInvitationView_UnknownInviteAlert_IgnoreAndReport");
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10003622C;
    v32[3] = &unk_1000C3CB8;
    objc_copyWeak(&v33, buf);
    v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:v32];

    [v24 setAccessibilityIdentifier:@"Home.Onboarding.Guest.IncomingInvitation.ConfirmationAlert.IgnoreAndReport"];
    v25 = sub_100035884(@"HOUserIncomingInvitationView_UnknownInviteAlert_Cancel");
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000362F0;
    v30[3] = &unk_1000C2318;
    v26 = v20;
    v31 = v26;
    v27 = [UIAlertAction actionWithTitle:v25 style:1 handler:v30];

    [v27 setAccessibilityIdentifier:@"Home.Onboarding.Guest.IncomingInvitation.ConfirmationAlert.Cancel"];
    [v26 addAction:v24];
    [v26 addAction:v22];
    [v26 addAction:v27];
    [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self presentViewController:v26 animated:1 completion:0];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self _displayNextViewController];
  }
}

- (void)_displayNextViewController
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _displayNextViewController]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) Moving onto the next view controller 'Joining Home'", &v6, 0xCu);
  }

  navigationController = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self navigationController];
  joiningHomeVC = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self joiningHomeVC];
  [navigationController pushViewController:joiningHomeVC animated:1];
}

- (void)_reportJunk
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _reportJunk]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped button", &v5, 0xCu);
  }

  responseController = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self responseController];
  [responseController respondToInvitationWithResponse:4];
}

- (void)_cancelButton:(id)button
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _cancelButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'cancel' button", &v6, 0xCu);
  }

  [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self setDidUserTriggerOnboardingDismissal:1];
  incomingInvitationDelegate = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
  [incomingInvitationDelegate invitationViewControllerDidDecideLaterInvitation:self];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HOOnboardingInvitationRestrictedGuestAccessViewController;
  [(HOOnboardingInvitationRestrictedGuestAccessViewController *)&v3 viewDidLayoutSubviews];
  [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self _updateImageConstraints];
}

- (void)_updateImageConstraints
{
  centerListConstraints = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerListConstraints];
  [NSLayoutConstraint deactivateConstraints:centerListConstraints];

  centerVC = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  view = [centerVC view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  centerVC2 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  view2 = [centerVC2 view];
  widthAnchor = [view2 widthAnchor];
  continueButton = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self continueButton];
  widthAnchor2 = [continueButton widthAnchor];
  v7 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:25.0];
  v20[0] = v7;
  centerVC3 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  view3 = [centerVC3 view];
  centerXAnchor = [view3 centerXAnchor];
  continueButton2 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self continueButton];
  centerXAnchor2 = [continueButton2 centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v20[1] = v13;
  v14 = [NSArray arrayWithObjects:v20 count:2];
  [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self setCenterListConstraints:v14];

  centerListConstraints2 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerListConstraints];
  [NSLayoutConstraint activateConstraints:centerListConstraints2];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  homeCopy = home;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [homeCopy name];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    v15 = 136315650;
    v16 = "[HOOnboardingInvitationRestrictedGuestAccessViewController homeManager:didAddHome:]";
    v17 = 2112;
    v18 = name;
    v19 = 2112;
    v20 = uniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) home <Name: %@, id: %@>", &v15, 0x20u);
  }

  uuid = [homeCopy uuid];
  invitation = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitation];
  homeUUID = [invitation homeUUID];
  v12 = [uuid hmf_isEqualToUUID:homeUUID];

  if (v12)
  {
    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    [v13 setSelectedHome:homeCopy userInitiated:1];

    incomingInvitationDelegate = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
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
    v12 = 136315650;
    v13 = "[HOOnboardingInvitationRestrictedGuestAccessViewController invitationResponseController:stateDidChange:]";
    v14 = 2114;
    v15 = v8;
    v16 = 2112;
    v17 = hf_prettyDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) invitation state is %{public}@ for invitation %@", &v12, 0x20u);
  }

  if (change == 3)
  {
    incomingInvitationDelegate = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
    [incomingInvitationDelegate invitationViewControllerDidDecideLaterInvitation:self];
LABEL_8:

    goto LABEL_9;
  }

  if (change == 2)
  {
    if ([controllerCopy response] == 2)
    {
      incomingInvitationDelegate = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
      [incomingInvitationDelegate invitationViewControllerDidDeclineInvitation:self];
    }

    else if ([controllerCopy response] == 3)
    {
      incomingInvitationDelegate = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
      [incomingInvitationDelegate invitationViewControllerDidIgnoreInvitation:self];
    }

    else
    {
      if ([controllerCopy response] != 4)
      {
        goto LABEL_9;
      }

      incomingInvitationDelegate = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
      [incomingInvitationDelegate invitationViewControllerDidReportJunkInvitation:self];
    }

    goto LABEL_8;
  }

LABEL_9:
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