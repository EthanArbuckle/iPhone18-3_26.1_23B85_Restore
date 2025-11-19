@interface HOOnboardingInvitationJoiningHomeViewController
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingIncomingInvitationFlowDelegate)incomingInvitationDelegate;
- (HOOnboardingInvitationJoiningHomeViewController)initWithIncomingInvitation:(id)a3 invitationHelper:(id)a4 incomingInvitationDelegate:(id)a5;
- (id)_didHomeGetAdded;
- (void)_cancelTimer;
- (void)_handleAppDidEnterBackground;
- (void)_handleAppDidForeground;
- (void)_hideSpinner;
- (void)_moveToNextViewController;
- (void)_showSpinner;
- (void)_startAddHomeTimeout;
- (void)dealloc;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)invitationResponseController:(id)a3 stateDidChange:(unint64_t)a4;
- (void)viewDidLoad;
@end

@implementation HOOnboardingInvitationJoiningHomeViewController

- (HOOnboardingInvitationJoiningHomeViewController)initWithIncomingInvitation:(id)a3 invitationHelper:(id)a4 incomingInvitationDelegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSBundle mainBundle];
  v11 = @"HOIncomingInvitation_RestrictedGuest_JoiningHome_Title";
  v12 = [v10 localizedStringForKey:@"HOIncomingInvitation_RestrictedGuest_JoiningHome_Title" value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v12])
  {
    v36 = v9;
    v37 = v8;
    v38 = v7;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = sub_1000335CC();
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      v35 = a4;
      v16 = *v43;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v42 + 1) + 8 * v17);
        v19 = +[NSBundle mainBundle];
        v20 = [v19 localizedStringForKey:@"HOIncomingInvitation_RestrictedGuest_JoiningHome_Title" value:@"HOIncomingInvitation_RestrictedGuest_JoiningHome_Title" table:v18];

        if (![(__CFString *)v20 isEqualToString:@"HOIncomingInvitation_RestrictedGuest_JoiningHome_Title"])
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          v20 = @"_";
          break;
        }
      }

      a4 = v35;
    }

    else
    {
      v20 = @"_";
    }

    v12 = v20;
    v8 = v37;
    v7 = v38;
    v9 = v36;
  }

  if ([@"_" isEqualToString:v12])
  {
    NSLog(@"Sensitive key '%@' not found!", @"HOIncomingInvitation_RestrictedGuest_JoiningHome_Title");
  }

  else
  {
    v11 = v12;
  }

  v21 = [v7 homeName];
  v22 = [NSString stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v21];

  v23 = [UIImage systemImageNamed:@"house.circle.fill"];
  v41.receiver = self;
  v41.super_class = HOOnboardingInvitationJoiningHomeViewController;
  v24 = [(HOOnboardingInvitationJoiningHomeViewController *)&v41 initWithTitle:v22 detailText:0 icon:v23];

  if (v24)
  {
    v25 = [(HOOnboardingInvitationJoiningHomeViewController *)v24 headerView];
    [v25 setIconAccessibilityIdentifier:@"Home.Onboarding.Invitation.Guest.JoiningHome.Icon"];

    v26 = [(HOOnboardingInvitationJoiningHomeViewController *)v24 headerView];
    [v26 setTitleAccessibilityIdentifier:@"Home.Onboarding.Invitation.Guest.JoiningHome.Title"];

    objc_storeStrong(&v24->_invitation, a3);
    objc_storeStrong(&v24->_invitationHelper, a4);
    objc_storeWeak(&v24->_incomingInvitationDelegate, v9);
    v27 = [[HUIncomingInvitationResponseController alloc] initWithDelegate:v24 invitation:v7];
    responseController = v24->_responseController;
    v24->_responseController = v27;

    [(HOOnboardingInvitationJoiningHomeViewController *)v24 setModalInPresentation:1];
    v29 = [(HOOnboardingInvitationJoiningHomeViewController *)v24 navigationItem];
    [v29 setHidesBackButton:1];

    v30 = +[HFHomeKitDispatcher sharedDispatcher];
    [v30 addHomeManagerObserver:v24];
    v31 = [[HOOnboardingInvitationJoinedHomeViewController alloc] initWithIncomingInvitation:v7 delegate:v9];
    joinedHomeVC = v24->_joinedHomeVC;
    v24->_joinedHomeVC = v31;

    v33 = [(HOOnboardingInvitationJoiningHomeViewController *)v24 delegate];
    [(HOOnboardingInvitationJoinedHomeViewController *)v24->_joinedHomeVC setDelegate:v33];
  }

  return v24;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HOOnboardingInvitationJoiningHomeViewController;
  [(HOOnboardingInvitationJoiningHomeViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HOOnboardingInvitationJoiningHomeViewController;
  [(HOOnboardingInvitationJoiningHomeViewController *)&v5 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleAppDidForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleAppDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 hf_minimumDescription];
    v13 = 136315394;
    v14 = "[HOOnboardingInvitationJoiningHomeViewController homeManager:didAddHome:]";
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) home = %@.", &v13, 0x16u);
  }

  v8 = [v5 uuid];
  v9 = [(HOOnboardingInvitationJoiningHomeViewController *)self invitation];
  v10 = [v9 homeUUID];
  v11 = [v8 hmf_isEqualToUUID:v10];

  if (v11)
  {
    [(HOOnboardingInvitationJoiningHomeViewController *)self _moveToNextViewController];
    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    [v12 setSelectedHome:v5 userInitiated:1];
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
    v24 = 136315650;
    v25 = "[HOOnboardingInvitationJoiningHomeViewController invitationResponseController:stateDidChange:]";
    v26 = 2114;
    v27 = v8;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) invitation state is %{public}@ for invitation %@", &v24, 0x20u);
  }

  if (a4 == 3)
  {
    v19 = [(HOOnboardingInvitationJoiningHomeViewController *)self incomingInvitationDelegate];
    v20 = objc_opt_respondsToSelector();

    v21 = [(HOOnboardingInvitationJoiningHomeViewController *)self incomingInvitationDelegate];
    v17 = v21;
    if (v20)
    {
      v22 = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
      v23 = [v22 error];
      [v17 invitationViewControllerDidDecideLaterInvitation:self error:v23];
    }

    else
    {
      [v21 invitationViewControllerDidDecideLaterInvitation:self];
    }

    goto LABEL_15;
  }

  if (a4 == 2 && [v6 response] == 1)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 invitation];
      v13 = [v12 hf_prettyDescription];
      v24 = 136315394;
      v25 = "[HOOnboardingInvitationJoiningHomeViewController invitationResponseController:stateDidChange:]";
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) Starting timer for invitation %@", &v24, 0x16u);
    }

    v14 = [(HOOnboardingInvitationJoiningHomeViewController *)self acceptedPendingAddHomeTimeoutCancellationToken];

    if (!v14)
    {
      [(HOOnboardingInvitationJoiningHomeViewController *)self _startAddHomeTimeout];
    }

    v15 = [(HOOnboardingInvitationJoiningHomeViewController *)self incomingInvitationDelegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(HOOnboardingInvitationJoiningHomeViewController *)self incomingInvitationDelegate];
      v18 = [v6 invitation];
      [v17 acceptedInvitationPendingForNewHome:v18];

LABEL_15:
    }
  }
}

- (void)_handleAppDidEnterBackground
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
    v5 = [v4 invitation];
    v6 = [v5 hf_prettyDescription];
    v7 = 136315394;
    v8 = "[HOOnboardingInvitationJoiningHomeViewController _handleAppDidEnterBackground]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@", &v7, 0x16u);
  }

  [(HOOnboardingInvitationJoiningHomeViewController *)self _cancelTimer];
}

- (void)_cancelTimer
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
    v5 = [v4 invitation];
    v6 = [v5 hf_prettyDescription];
    v8 = 136315394;
    v9 = "[HOOnboardingInvitationJoiningHomeViewController _cancelTimer]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@", &v8, 0x16u);
  }

  [(HOOnboardingInvitationJoiningHomeViewController *)self _hideSpinner];
  v7 = [(HOOnboardingInvitationJoiningHomeViewController *)self acceptedPendingAddHomeTimeoutCancellationToken];
  [v7 cancel];

  [(HOOnboardingInvitationJoiningHomeViewController *)self setAcceptedPendingAddHomeTimeoutCancellationToken:0];
  [(HOOnboardingInvitationJoiningHomeViewController *)self setAcceptInvitationError:0];
}

- (void)_moveToNextViewController
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
    v5 = [v4 invitation];
    v6 = [v5 hf_prettyDescription];
    *buf = 136315394;
    v22 = "[HOOnboardingInvitationJoiningHomeViewController _moveToNextViewController]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) Cancelling addHomeTimeout and moving onto the next view controller 'Home Joined' for %@", buf, 0x16u);
  }

  v7 = [(HOOnboardingInvitationJoiningHomeViewController *)self acceptedPendingAddHomeTimeoutCancellationToken];
  [v7 cancel];

  [(HOOnboardingInvitationJoiningHomeViewController *)self setAcceptedPendingAddHomeTimeoutCancellationToken:0];
  v8 = [(HOOnboardingInvitationJoiningHomeViewController *)self navigationController];
  v9 = [v8 visibleViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[HOOnboardingInvitationJoiningHomeViewController _moveToNextViewController]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) There's an alert presented. Dismissing that first before moving onto the next view controller", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v12 = [(HOOnboardingInvitationJoiningHomeViewController *)self navigationController];
    v13 = [v12 visibleViewController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003223C;
    v19[3] = &unk_1000C22C8;
    objc_copyWeak(&v20, buf);
    [v13 dismissViewControllerAnimated:1 completion:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else if (![(HOOnboardingInvitationJoiningHomeViewController *)self didPushNextViewController])
  {
    v14 = [(HOOnboardingInvitationJoiningHomeViewController *)self navigationController];
    v15 = [v14 visibleViewController];
    v16 = [v15 isEqual:self];

    if (v16)
    {
      v17 = [(HOOnboardingInvitationJoiningHomeViewController *)self navigationController];
      v18 = [(HOOnboardingInvitationJoiningHomeViewController *)self joinedHomeVC];
      [v17 pushViewController:v18 animated:1];

      [(HOOnboardingInvitationJoiningHomeViewController *)self setDidPushNextViewController:1];
    }
  }
}

- (void)_handleAppDidForeground
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
    v5 = [v4 invitation];
    v6 = [v5 hf_prettyDescription];
    *buf = 136315394;
    v12 = "[HOOnboardingInvitationJoiningHomeViewController _handleAppDidForeground]";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@", buf, 0x16u);
  }

  [(HOOnboardingInvitationJoiningHomeViewController *)self setDidPushNextViewController:0];
  objc_initWeak(buf, self);
  v7 = [(HOOnboardingInvitationJoiningHomeViewController *)self _didHomeGetAdded];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000324D4;
  v9[3] = &unk_1000C3BB0;
  objc_copyWeak(&v10, buf);
  v8 = [v7 flatMap:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)_startAddHomeTimeout
{
  [(HOOnboardingInvitationJoiningHomeViewController *)self _showSpinner];
  objc_initWeak(&location, self);
  [(HOOnboardingInvitationJoiningHomeViewController *)self setAcceptInvitationError:0];
  v3 = +[NAScheduler mainThreadScheduler];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000327EC;
  v8 = &unk_1000C22C8;
  objc_copyWeak(&v9, &location);
  v4 = [v3 afterDelay:&v5 performBlock:120.0];
  [(HOOnboardingInvitationJoiningHomeViewController *)self setAcceptedPendingAddHomeTimeoutCancellationToken:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_didHomeGetAdded
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 allHomesFuture];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100032CC0;
  v7[3] = &unk_1000C3C00;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

- (void)_showSpinner
{
  [(HOOnboardingInvitationJoiningHomeViewController *)self _hideSpinner];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(HOOnboardingInvitationJoiningHomeViewController *)self setSpinner:v3];

  v4 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
  [v5 sizeToFit];

  v6 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
  [v6 startAnimating];

  v7 = [UIStackView alloc];
  v8 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
  v21 = v8;
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  v10 = [v7 initWithArrangedSubviews:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAlignment:3];
  [v10 setDistribution:3];
  [v10 setSpacing:10.0];
  v11 = [(HOOnboardingInvitationJoiningHomeViewController *)self contentView];
  [v11 addSubview:v10];

  v12 = [v10 topAnchor];
  v13 = [(HOOnboardingInvitationJoiningHomeViewController *)self contentView];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:20.0];
  [v15 setActive:1];

  v16 = [v10 centerXAnchor];
  v17 = [(HOOnboardingInvitationJoiningHomeViewController *)self contentView];
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [(HOOnboardingInvitationJoiningHomeViewController *)self view];
  [v20 setNeedsLayout];
}

- (void)_hideSpinner
{
  v3 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];

  if (v3)
  {
    v4 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
    [v4 removeFromSuperview];

    [(HOOnboardingInvitationJoiningHomeViewController *)self setSpinner:0];
  }
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