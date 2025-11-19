@interface HOOnboardingInvitationJoinedHomeViewController
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingIncomingInvitationFlowDelegate)incomingInvitationDelegate;
- (HOOnboardingInvitationJoinedHomeViewController)initWithIncomingInvitation:(id)a3 delegate:(id)a4;
- (void)_continueButtonTapped:(id)a3;
- (void)nextButtonPressed;
@end

@implementation HOOnboardingInvitationJoinedHomeViewController

- (HOOnboardingInvitationJoinedHomeViewController)initWithIncomingInvitation:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_1000371C0(@"HOIncomingInvitation_RestrictedGuest_JoinedHome_Title");
  v9 = [v7 homeName];

  v10 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v9];

  v11 = [UIImage systemImageNamed:@"house.circle.fill"];
  v22.receiver = self;
  v22.super_class = HOOnboardingInvitationJoinedHomeViewController;
  v12 = [(HOOnboardingInvitationJoinedHomeViewController *)&v22 initWithTitle:v10 detailText:0 icon:v11];

  if (v12)
  {
    objc_storeWeak(&v12->_incomingInvitationDelegate, v6);
    v13 = [(HOOnboardingInvitationJoinedHomeViewController *)v12 headerView];
    [v13 setIconAccessibilityIdentifier:@"Home.Onboarding.Guest.JoinedHome.Icon"];

    v14 = [(HOOnboardingInvitationJoinedHomeViewController *)v12 headerView];
    [v14 setTitleAccessibilityIdentifier:@"Home.Onboarding.Guest.JoinedHome.Title"];

    v15 = +[OBBoldTrayButton boldButton];
    continueButton = v12->_continueButton;
    v12->_continueButton = v15;

    [(OBTrayButton *)v12->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = v12->_continueButton;
    v18 = sub_1000371C0(@"HOWelcomeView_Button_Continue");
    [(OBTrayButton *)v17 setTitle:v18 forState:0];

    [(OBTrayButton *)v12->_continueButton setAccessibilityIdentifier:@"Home.Onboarding.Guest.JoinedHome.ContinueButton"];
    [(OBTrayButton *)v12->_continueButton addTarget:v12 action:"_continueButtonTapped:" forControlEvents:64];
    v19 = [(HOOnboardingInvitationJoinedHomeViewController *)v12 buttonTray];
    [v19 addButton:v12->_continueButton];

    [(HOOnboardingInvitationJoinedHomeViewController *)v12 setModalInPresentation:1];
    v20 = [(HOOnboardingInvitationJoinedHomeViewController *)v12 navigationItem];
    [v20 setHidesBackButton:1];
  }

  return v12;
}

- (void)_continueButtonTapped:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[HOOnboardingInvitationJoinedHomeViewController _continueButtonTapped:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s User tapped 'Continue' button", &v10, 0xCu);
  }

  [(HOOnboardingInvitationJoinedHomeViewController *)self setDidUserTriggerOnboardingDismissal:1];
  v5 = [(HOOnboardingInvitationJoinedHomeViewController *)self incomingInvitationDelegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [(HOOnboardingInvitationJoinedHomeViewController *)self incomingInvitationDelegate];
  v8 = v7;
  if (v6)
  {
    v9 = [(HOOnboardingInvitationJoinedHomeViewController *)self invitation];
    [v8 didAcceptInvitation:v9 viewController:self];
  }

  else
  {
    [v7 invitationViewControllerDidAcceptInvitation:self];
  }
}

- (void)nextButtonPressed
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[HOOnboardingInvitationJoinedHomeViewController nextButtonPressed]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s User tapped 'Next' button", &v3, 0xCu);
  }
}

- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->navigationBarDelegate);

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