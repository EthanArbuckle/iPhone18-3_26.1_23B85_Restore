@interface HOOnboardingInvitationJoiningHomeViewController
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (HOOnboardingIncomingInvitationFlowDelegate)incomingInvitationDelegate;
- (HOOnboardingInvitationJoiningHomeViewController)initWithIncomingInvitation:(id)invitation invitationHelper:(id)helper incomingInvitationDelegate:(id)delegate;
- (id)_didHomeGetAdded;
- (void)_cancelTimer;
- (void)_handleAppDidEnterBackground;
- (void)_handleAppDidForeground;
- (void)_hideSpinner;
- (void)_moveToNextViewController;
- (void)_showSpinner;
- (void)_startAddHomeTimeout;
- (void)dealloc;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)invitationResponseController:(id)controller stateDidChange:(unint64_t)change;
- (void)viewDidLoad;
@end

@implementation HOOnboardingInvitationJoiningHomeViewController

- (HOOnboardingInvitationJoiningHomeViewController)initWithIncomingInvitation:(id)invitation invitationHelper:(id)helper incomingInvitationDelegate:(id)delegate
{
  invitationCopy = invitation;
  helperCopy = helper;
  delegateCopy = delegate;
  v10 = +[NSBundle mainBundle];
  v11 = @"HOIncomingInvitation_RestrictedGuest_JoiningHome_Title";
  v12 = [v10 localizedStringForKey:@"HOIncomingInvitation_RestrictedGuest_JoiningHome_Title" value:@"_" table:@"HOLocalizable"];

  if ([@"_" isEqualToString:v12])
  {
    v36 = delegateCopy;
    v37 = helperCopy;
    v38 = invitationCopy;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = sub_1000335CC();
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      helperCopy2 = helper;
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

      helper = helperCopy2;
    }

    else
    {
      v20 = @"_";
    }

    v12 = v20;
    helperCopy = v37;
    invitationCopy = v38;
    delegateCopy = v36;
  }

  if ([@"_" isEqualToString:v12])
  {
    NSLog(@"Sensitive key '%@' not found!", @"HOIncomingInvitation_RestrictedGuest_JoiningHome_Title");
  }

  else
  {
    v11 = v12;
  }

  homeName = [invitationCopy homeName];
  v22 = [NSString stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, homeName];

  v23 = [UIImage systemImageNamed:@"house.circle.fill"];
  v41.receiver = self;
  v41.super_class = HOOnboardingInvitationJoiningHomeViewController;
  v24 = [(HOOnboardingInvitationJoiningHomeViewController *)&v41 initWithTitle:v22 detailText:0 icon:v23];

  if (v24)
  {
    headerView = [(HOOnboardingInvitationJoiningHomeViewController *)v24 headerView];
    [headerView setIconAccessibilityIdentifier:@"Home.Onboarding.Invitation.Guest.JoiningHome.Icon"];

    headerView2 = [(HOOnboardingInvitationJoiningHomeViewController *)v24 headerView];
    [headerView2 setTitleAccessibilityIdentifier:@"Home.Onboarding.Invitation.Guest.JoiningHome.Title"];

    objc_storeStrong(&v24->_invitation, invitation);
    objc_storeStrong(&v24->_invitationHelper, helper);
    objc_storeWeak(&v24->_incomingInvitationDelegate, delegateCopy);
    v27 = [[HUIncomingInvitationResponseController alloc] initWithDelegate:v24 invitation:invitationCopy];
    responseController = v24->_responseController;
    v24->_responseController = v27;

    [(HOOnboardingInvitationJoiningHomeViewController *)v24 setModalInPresentation:1];
    navigationItem = [(HOOnboardingInvitationJoiningHomeViewController *)v24 navigationItem];
    [navigationItem setHidesBackButton:1];

    v30 = +[HFHomeKitDispatcher sharedDispatcher];
    [v30 addHomeManagerObserver:v24];
    v31 = [[HOOnboardingInvitationJoinedHomeViewController alloc] initWithIncomingInvitation:invitationCopy delegate:delegateCopy];
    joinedHomeVC = v24->_joinedHomeVC;
    v24->_joinedHomeVC = v31;

    delegate = [(HOOnboardingInvitationJoiningHomeViewController *)v24 delegate];
    [(HOOnboardingInvitationJoinedHomeViewController *)v24->_joinedHomeVC setDelegate:delegate];
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

- (void)homeManager:(id)manager didAddHome:(id)home
{
  homeCopy = home;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    hf_minimumDescription = [homeCopy hf_minimumDescription];
    v13 = 136315394;
    v14 = "[HOOnboardingInvitationJoiningHomeViewController homeManager:didAddHome:]";
    v15 = 2112;
    v16 = hf_minimumDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) home = %@.", &v13, 0x16u);
  }

  uuid = [homeCopy uuid];
  invitation = [(HOOnboardingInvitationJoiningHomeViewController *)self invitation];
  homeUUID = [invitation homeUUID];
  v11 = [uuid hmf_isEqualToUUID:homeUUID];

  if (v11)
  {
    [(HOOnboardingInvitationJoiningHomeViewController *)self _moveToNextViewController];
    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    [v12 setSelectedHome:homeCopy userInitiated:1];
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
    v24 = 136315650;
    v25 = "[HOOnboardingInvitationJoiningHomeViewController invitationResponseController:stateDidChange:]";
    v26 = 2114;
    v27 = v8;
    v28 = 2112;
    v29 = hf_prettyDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) invitation state is %{public}@ for invitation %@", &v24, 0x20u);
  }

  if (change == 3)
  {
    incomingInvitationDelegate = [(HOOnboardingInvitationJoiningHomeViewController *)self incomingInvitationDelegate];
    v20 = objc_opt_respondsToSelector();

    incomingInvitationDelegate2 = [(HOOnboardingInvitationJoiningHomeViewController *)self incomingInvitationDelegate];
    incomingInvitationDelegate4 = incomingInvitationDelegate2;
    if (v20)
    {
      responseController = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
      error = [responseController error];
      [incomingInvitationDelegate4 invitationViewControllerDidDecideLaterInvitation:self error:error];
    }

    else
    {
      [incomingInvitationDelegate2 invitationViewControllerDidDecideLaterInvitation:self];
    }

    goto LABEL_15;
  }

  if (change == 2 && [controllerCopy response] == 1)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      invitation2 = [controllerCopy invitation];
      hf_prettyDescription2 = [invitation2 hf_prettyDescription];
      v24 = 136315394;
      v25 = "[HOOnboardingInvitationJoiningHomeViewController invitationResponseController:stateDidChange:]";
      v26 = 2112;
      v27 = hf_prettyDescription2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) Starting timer for invitation %@", &v24, 0x16u);
    }

    acceptedPendingAddHomeTimeoutCancellationToken = [(HOOnboardingInvitationJoiningHomeViewController *)self acceptedPendingAddHomeTimeoutCancellationToken];

    if (!acceptedPendingAddHomeTimeoutCancellationToken)
    {
      [(HOOnboardingInvitationJoiningHomeViewController *)self _startAddHomeTimeout];
    }

    incomingInvitationDelegate3 = [(HOOnboardingInvitationJoiningHomeViewController *)self incomingInvitationDelegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      incomingInvitationDelegate4 = [(HOOnboardingInvitationJoiningHomeViewController *)self incomingInvitationDelegate];
      invitation3 = [controllerCopy invitation];
      [incomingInvitationDelegate4 acceptedInvitationPendingForNewHome:invitation3];

LABEL_15:
    }
  }
}

- (void)_handleAppDidEnterBackground
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    responseController = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
    invitation = [responseController invitation];
    hf_prettyDescription = [invitation hf_prettyDescription];
    v7 = 136315394;
    v8 = "[HOOnboardingInvitationJoiningHomeViewController _handleAppDidEnterBackground]";
    v9 = 2112;
    v10 = hf_prettyDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@", &v7, 0x16u);
  }

  [(HOOnboardingInvitationJoiningHomeViewController *)self _cancelTimer];
}

- (void)_cancelTimer
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    responseController = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
    invitation = [responseController invitation];
    hf_prettyDescription = [invitation hf_prettyDescription];
    v8 = 136315394;
    v9 = "[HOOnboardingInvitationJoiningHomeViewController _cancelTimer]";
    v10 = 2112;
    v11 = hf_prettyDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@", &v8, 0x16u);
  }

  [(HOOnboardingInvitationJoiningHomeViewController *)self _hideSpinner];
  acceptedPendingAddHomeTimeoutCancellationToken = [(HOOnboardingInvitationJoiningHomeViewController *)self acceptedPendingAddHomeTimeoutCancellationToken];
  [acceptedPendingAddHomeTimeoutCancellationToken cancel];

  [(HOOnboardingInvitationJoiningHomeViewController *)self setAcceptedPendingAddHomeTimeoutCancellationToken:0];
  [(HOOnboardingInvitationJoiningHomeViewController *)self setAcceptInvitationError:0];
}

- (void)_moveToNextViewController
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    responseController = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
    invitation = [responseController invitation];
    hf_prettyDescription = [invitation hf_prettyDescription];
    *buf = 136315394;
    v22 = "[HOOnboardingInvitationJoiningHomeViewController _moveToNextViewController]";
    v23 = 2112;
    v24 = hf_prettyDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) Cancelling addHomeTimeout and moving onto the next view controller 'Home Joined' for %@", buf, 0x16u);
  }

  acceptedPendingAddHomeTimeoutCancellationToken = [(HOOnboardingInvitationJoiningHomeViewController *)self acceptedPendingAddHomeTimeoutCancellationToken];
  [acceptedPendingAddHomeTimeoutCancellationToken cancel];

  [(HOOnboardingInvitationJoiningHomeViewController *)self setAcceptedPendingAddHomeTimeoutCancellationToken:0];
  navigationController = [(HOOnboardingInvitationJoiningHomeViewController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
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
    navigationController2 = [(HOOnboardingInvitationJoiningHomeViewController *)self navigationController];
    visibleViewController2 = [navigationController2 visibleViewController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003223C;
    v19[3] = &unk_1000C22C8;
    objc_copyWeak(&v20, buf);
    [visibleViewController2 dismissViewControllerAnimated:1 completion:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else if (![(HOOnboardingInvitationJoiningHomeViewController *)self didPushNextViewController])
  {
    navigationController3 = [(HOOnboardingInvitationJoiningHomeViewController *)self navigationController];
    visibleViewController3 = [navigationController3 visibleViewController];
    v16 = [visibleViewController3 isEqual:self];

    if (v16)
    {
      navigationController4 = [(HOOnboardingInvitationJoiningHomeViewController *)self navigationController];
      joinedHomeVC = [(HOOnboardingInvitationJoiningHomeViewController *)self joinedHomeVC];
      [navigationController4 pushViewController:joinedHomeVC animated:1];

      [(HOOnboardingInvitationJoiningHomeViewController *)self setDidPushNextViewController:1];
    }
  }
}

- (void)_handleAppDidForeground
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    responseController = [(HOOnboardingInvitationJoiningHomeViewController *)self responseController];
    invitation = [responseController invitation];
    hf_prettyDescription = [invitation hf_prettyDescription];
    *buf = 136315394;
    v12 = "[HOOnboardingInvitationJoiningHomeViewController _handleAppDidForeground]";
    v13 = 2112;
    v14 = hf_prettyDescription;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%s) invitation = %@", buf, 0x16u);
  }

  [(HOOnboardingInvitationJoiningHomeViewController *)self setDidPushNextViewController:0];
  objc_initWeak(buf, self);
  _didHomeGetAdded = [(HOOnboardingInvitationJoiningHomeViewController *)self _didHomeGetAdded];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000324D4;
  v9[3] = &unk_1000C3BB0;
  objc_copyWeak(&v10, buf);
  v8 = [_didHomeGetAdded flatMap:v9];

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
  allHomesFuture = [v3 allHomesFuture];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100032CC0;
  v7[3] = &unk_1000C3C00;
  v7[4] = self;
  v5 = [allHomesFuture flatMap:v7];

  return v5;
}

- (void)_showSpinner
{
  [(HOOnboardingInvitationJoiningHomeViewController *)self _hideSpinner];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(HOOnboardingInvitationJoiningHomeViewController *)self setSpinner:v3];

  spinner = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
  [spinner setTranslatesAutoresizingMaskIntoConstraints:0];

  spinner2 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
  [spinner2 sizeToFit];

  spinner3 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
  [spinner3 startAnimating];

  v7 = [UIStackView alloc];
  spinner4 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
  v21 = spinner4;
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  v10 = [v7 initWithArrangedSubviews:v9];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAlignment:3];
  [v10 setDistribution:3];
  [v10 setSpacing:10.0];
  contentView = [(HOOnboardingInvitationJoiningHomeViewController *)self contentView];
  [contentView addSubview:v10];

  topAnchor = [v10 topAnchor];
  contentView2 = [(HOOnboardingInvitationJoiningHomeViewController *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:20.0];
  [v15 setActive:1];

  centerXAnchor = [v10 centerXAnchor];
  contentView3 = [(HOOnboardingInvitationJoiningHomeViewController *)self contentView];
  centerXAnchor2 = [contentView3 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v19 setActive:1];

  view = [(HOOnboardingInvitationJoiningHomeViewController *)self view];
  [view setNeedsLayout];
}

- (void)_hideSpinner
{
  spinner = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];

  if (spinner)
  {
    spinner2 = [(HOOnboardingInvitationJoiningHomeViewController *)self spinner];
    [spinner2 removeFromSuperview];

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