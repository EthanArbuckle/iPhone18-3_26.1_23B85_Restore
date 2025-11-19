@interface HOOnboardingInvitationRestrictedGuestAccessViewController
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingIncomingInvitationFlowDelegate)incomingInvitationDelegate;
- (HOOnboardingInvitationRestrictedGuestAccessViewController)initWithIncomingInvitation:(id)a3 invitationHelper:(id)a4 incomingInvitationDelegate:(id)a5;
- (void)_cancelButton:(id)a3;
- (void)_continueButtonTapped:(id)a3;
- (void)_displayNextViewController;
- (void)_reportJunk;
- (void)_updateImageConstraints;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)invitationResponseController:(id)a3 stateDidChange:(unint64_t)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HOOnboardingInvitationRestrictedGuestAccessViewController

- (HOOnboardingInvitationRestrictedGuestAccessViewController)initWithIncomingInvitation:(id)a3 invitationHelper:(id)a4 incomingInvitationDelegate:(id)a5
{
  obj = a3;
  v8 = a3;
  v46 = a4;
  v9 = a4;
  v10 = a5;
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 hf_prettyDescription];
    *buf = 136315394;
    v49 = "[HOOnboardingInvitationRestrictedGuestAccessViewController initWithIncomingInvitation:invitationHelper:incomingInvitationDelegate:]";
    v50 = 2112;
    v51 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@", buf, 0x16u);
  }

  v13 = sub_100035884(@"HOIncomingInvitation_RestrictedGuest_YourAccess_Title");
  v14 = sub_100035884(@"HOIncomingInvitation_RestrictedGuest_YourAccess_DetailText");
  v15 = [HUScheduleAccessViewController alloc];
  [v8 restrictedGuestSchedule];
  v17 = v16 = v8;
  v18 = +[UIColor hf_keyColor];
  v19 = +[UIColor clearColor];
  v20 = [v15 initWithGuestAccessSchedule:v17 tintColor:v18 shouldDisplayAlwaysAllowedSchedule:0 scheduleBackgroundColor:v19 listRowBackgroundColor:0];
  centerVC = self->_centerVC;
  self->_centerVC = v20;

  v22 = [UIImage systemImageNamed:@"calendar.circle.fill"];
  v23 = [(UIViewController *)self->_centerVC view];
  v47.receiver = self;
  v47.super_class = HOOnboardingInvitationRestrictedGuestAccessViewController;
  v24 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)&v47 initWithTitle:v13 detailText:v14 icon:v22 contentView:v23];

  v25 = v9;
  if (v24)
  {
    v26 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 headerView];
    [v26 setIconAccessibilityIdentifier:@"Home.Onboarding.Guest.YourSchedule.Icon"];

    v27 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 headerView];
    [v27 setTitleAccessibilityIdentifier:@"Home.Onboarding.Guest.YourSchedule.Title"];

    v28 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 headerView];
    [v28 setDetailTextAccessibilityIdentifier:@"Home.Onboarding.Guest.YourSchedule.DetailText"];

    objc_storeStrong(&v24->_invitation, obj);
    objc_storeStrong(&v24->_invitationHelper, v46);
    objc_storeWeak(&v24->_incomingInvitationDelegate, v10);
    v29 = [[HOOnboardingInvitationJoiningHomeViewController alloc] initWithIncomingInvitation:v16 invitationHelper:v9 incomingInvitationDelegate:v10];
    joiningHomeVC = v24->_joiningHomeVC;
    v24->_joiningHomeVC = v29;

    v31 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 delegate];
    [(HOOnboardingInvitationJoiningHomeViewController *)v24->_joiningHomeVC setDelegate:v31];

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
    v38 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 buttonTray];
    [v38 addButton:v24->_continueButton];

    v39 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v24 action:"_cancelButton:"];
    v40 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 navigationItem];
    [v40 setRightBarButtonItem:v39];

    v41 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)v24 navigationItem];
    v42 = [v41 rightBarButtonItem];
    [v42 setAccessibilityIdentifier:@"Home.Onboarding.Guest.CancelButton"];

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
  v3 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self addChildViewController:v3];

  v4 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  [v4 didMoveToParentViewController:self];
}

- (void)_continueButtonTapped:(id)a3
{
  v29 = a3;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _continueButtonTapped:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'Continue' button", buf, 0xCu);
  }

  v5 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitationHelper];
  v6 = [v5 isUnknownContact];

  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitation];
      v9 = [v8 hf_prettyDescription];
      v10 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitationHelper];
      v11 = [v10 inviterContact];
      *buf = 136315650;
      v37 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _continueButtonTapped:]";
      v38 = 2112;
      v39 = v9;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) User invitation %@ is from unknown contact %@", buf, 0x20u);
    }

    v12 = sub_100035884(@"HOUserIncomingInvitationView_UnknownInviteAlert_Title");
    v13 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitation];
    v14 = [v13 homeName];
    v28 = [NSString stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v14];

    v15 = sub_100035884(@"HOUserIncomingInvitationView_UnknownInviteAlert_Body");
    v16 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitationHelper];
    v17 = [v16 inviterContact];
    v18 = [v17 givenName];
    v19 = [NSString stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v18];

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

  v4 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self navigationController];
  v5 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self joiningHomeVC];
  [v4 pushViewController:v5 animated:1];
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

  v4 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self responseController];
  [v4 respondToInvitationWithResponse:4];
}

- (void)_cancelButton:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HOOnboardingInvitationRestrictedGuestAccessViewController _cancelButton:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped 'cancel' button", &v6, 0xCu);
  }

  [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self setDidUserTriggerOnboardingDismissal:1];
  v5 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
  [v5 invitationViewControllerDidDecideLaterInvitation:self];
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
  v3 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerListConstraints];
  [NSLayoutConstraint deactivateConstraints:v3];

  v4 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  v18 = [v19 view];
  v16 = [v18 widthAnchor];
  v17 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self continueButton];
  v6 = [v17 widthAnchor];
  v7 = [v16 constraintEqualToAnchor:v6 constant:25.0];
  v20[0] = v7;
  v8 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerVC];
  v9 = [v8 view];
  v10 = [v9 centerXAnchor];
  v11 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self continueButton];
  v12 = [v11 centerXAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v20[1] = v13;
  v14 = [NSArray arrayWithObjects:v20 count:2];
  [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self setCenterListConstraints:v14];

  v15 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self centerListConstraints];
  [NSLayoutConstraint activateConstraints:v15];
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 name];
    v8 = [v5 uniqueIdentifier];
    v15 = 136315650;
    v16 = "[HOOnboardingInvitationRestrictedGuestAccessViewController homeManager:didAddHome:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) home <Name: %@, id: %@>", &v15, 0x20u);
  }

  v9 = [v5 uuid];
  v10 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self invitation];
  v11 = [v10 homeUUID];
  v12 = [v9 hmf_isEqualToUUID:v11];

  if (v12)
  {
    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    [v13 setSelectedHome:v5 userInitiated:1];

    v14 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
    [v14 invitationViewControllerDidAcceptInvitation:self];
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
    v12 = 136315650;
    v13 = "[HOOnboardingInvitationRestrictedGuestAccessViewController invitationResponseController:stateDidChange:]";
    v14 = 2114;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) invitation state is %{public}@ for invitation %@", &v12, 0x20u);
  }

  if (a4 == 3)
  {
    v11 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
    [v11 invitationViewControllerDidDecideLaterInvitation:self];
LABEL_8:

    goto LABEL_9;
  }

  if (a4 == 2)
  {
    if ([v6 response] == 2)
    {
      v11 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
      [v11 invitationViewControllerDidDeclineInvitation:self];
    }

    else if ([v6 response] == 3)
    {
      v11 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
      [v11 invitationViewControllerDidIgnoreInvitation:self];
    }

    else
    {
      if ([v6 response] != 4)
      {
        goto LABEL_9;
      }

      v11 = [(HOOnboardingInvitationRestrictedGuestAccessViewController *)self incomingInvitationDelegate];
      [v11 invitationViewControllerDidReportJunkInvitation:self];
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