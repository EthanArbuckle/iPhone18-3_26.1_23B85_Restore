@interface HOOnboardingRootNavigationController
+ (id)onboardingStatesForHome:(id)home pendingHomeIDsFromInvitations:(id)invitations;
+ (id)stringForOnboardingState:(unint64_t)state;
+ (id)stringForOnboardingStates:(id)states;
- (BOOL)hasNextStepInRestrictedGuestIncomingInvitationFlow;
- (BOOL)isDisplayingRestrictedGuestIncomingInvitationFlow;
- (HOOnboardingRootNavigationController)init;
- (HOOnboardingRootNavigationController)initWithCoder:(id)coder;
- (HOOnboardingRootNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (HOOnboardingRootNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (HOOnboardingRootNavigationController)initWithOnboardingStates:(id)states withHome:(id)home;
- (HOOnboardingRootNavigationController)initWithRootViewController:(id)controller;
- (HOOnboardingRootNavigationControllerDelegate)onboardingDelegate;
- (id)_invitationJoinedHomeViewController;
- (id)_invitationJoiningHomeViewController;
- (id)_invitationRestrictedGuestAccessViewController;
- (id)_onboardingViewControllersForStates:(id)states;
- (id)_viewControllerForState:(unint64_t)state;
- (unint64_t)activeOnboardingState;
- (void)_finishedOnboarding;
- (void)_presentNextViewControllerWithCurrentViewController:(id)controller skipRelated:(BOOL)related;
- (void)acceptedInvitationPendingForNewHome:(id)home;
- (void)didAcceptInvitation:(id)invitation viewController:(id)controller;
- (void)didDecideLaterForInvitation:(id)invitation viewController:(id)controller error:(id)error;
- (void)didDeclineInvitation:(id)invitation viewController:(id)controller;
- (void)didIgnoreInvitation:(id)invitation viewController:(id)controller;
- (void)didReportJunkForInvitation:(id)invitation viewController:(id)controller;
- (void)homeManager:(id)manager didAddHome:(id)home;
@end

@implementation HOOnboardingRootNavigationController

- (HOOnboardingRootNavigationController)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v4 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:53 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController init]", v5}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v5 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController initWithCoder:]", v6}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v6 = [NSAssertionHandler currentHandler:name];
  v7 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v6 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:64 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithRootViewController:(id)controller
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v5 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:70 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController initWithRootViewController:]", v6}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v6 = [NSAssertionHandler currentHandler:class];
  v7 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v6 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:76 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController initWithNavigationBarClass:toolbarClass:]", v7}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithOnboardingStates:(id)states withHome:(id)home
{
  statesCopy = states;
  homeCopy = home;
  v28.receiver = self;
  v28.super_class = HOOnboardingRootNavigationController;
  v9 = [(HOOnboardingRootNavigationController *)&v28 initWithNavigationBarClass:0 toolbarClass:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_onboardingStates, states);
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    homeManager = [v11 homeManager];
    incomingHomeInvitations = [homeManager incomingHomeInvitations];

    firstObject = [incomingHomeInvitations firstObject];
    v15 = [[HOOnboardingIncomingInvitationViewController alloc] initWithIncomingInvitation:firstObject invitationHelper:0 incomingInvitationDelegate:v10];
    invitationViewController = v10->_invitationViewController;
    v10->_invitationViewController = v15;

    [(HOOnboardingIncomingInvitationViewController *)v10->_invitationViewController setDelegate:v10];
    name = [homeCopy name];
    homeName = v10->_homeName;
    v10->_homeName = name;

    currentUser = [homeCopy currentUser];
    currentUser = v10->_currentUser;
    v10->_currentUser = currentUser;

    v21 = [(HOOnboardingRootNavigationController *)v10 _onboardingViewControllersForStates:statesCopy];
    onboardingViewControllers = v10->_onboardingViewControllers;
    v10->_onboardingViewControllers = v21;

    v23 = +[HFHomeKitDispatcher sharedDispatcher];
    [v23 addHomeManagerObserver:v10];

    onboardingViewControllers = [(HOOnboardingRootNavigationController *)v10 onboardingViewControllers];
    firstObject2 = [onboardingViewControllers firstObject];
    v29 = firstObject2;
    v26 = [NSArray arrayWithObjects:&v29 count:1];
    [(HOOnboardingRootNavigationController *)v10 setViewControllers:v26];

    [(HOOnboardingRootNavigationController *)v10 setModalInPresentation:1];
  }

  return v10;
}

- (unint64_t)activeOnboardingState
{
  onboardingViewControllers = [(HOOnboardingRootNavigationController *)self onboardingViewControllers];
  topViewController = [(HOOnboardingRootNavigationController *)self topViewController];
  v5 = [onboardingViewControllers indexOfObject:topViewController];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007F988(self, v6);
    }
  }

  onboardingStates = [(HOOnboardingRootNavigationController *)self onboardingStates];
  v8 = [onboardingStates objectAtIndexedSubscript:v5];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (id)onboardingStatesForHome:(id)home pendingHomeIDsFromInvitations:(id)invitations
{
  homeCopy = home;
  invitationsCopy = invitations;
  if (+[HFUtilities isPressDemoModeEnabled])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "+[HOOnboardingRootNavigationController onboardingStatesForHome:pendingHomeIDsFromInvitations:]";
      v8 = "(%s) Bypass all onboarding states in demo mode.";
      v9 = v7;
      v10 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([invitationsCopy count])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v40 = "+[HOOnboardingRootNavigationController onboardingStatesForHome:pendingHomeIDsFromInvitations:]";
      v41 = 2112;
      v42 = invitationsCopy;
      v43 = 2112;
      v44 = homeCopy;
      v8 = "(%s) There are pending home IDs %@, so not creating onboarding states for home %@";
      v9 = v7;
      v10 = 32;
      goto LABEL_7;
    }

LABEL_8:
    v11 = &__NSArray0__struct;
    goto LABEL_9;
  }

  v7 = +[NSMutableArray array];
  v13 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v13 homeManager];

  incomingHomeInvitations = [homeManager incomingHomeInvitations];
  v16 = [incomingHomeInvitations na_filter:&stru_1000C1DE8];

  v17 = (homeCopy != 0) & [homeManager hf_hasSeenOnboardingWelcomeView];
  hf_lastNewFeaturesViewVersionSeen = [homeManager hf_lastNewFeaturesViewVersionSeen];
  v19 = +[HOOnboardingNewFeaturesViewController newFeaturesOnboardingVersion];
  if (![v16 count])
  {
LABEL_20:
    if (!v17)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!v17 || HFForceFirstTimeOnboarding())
  {
    [v7 addObject:&off_1000CB608];
    v20 = [v16 na_firstObjectPassingTest:&stru_1000C1E08];
    if (v20)
    {
      v21 = [HOUtilities onboardingStatesForRestrictedGuestInvitation:v20];
      [v7 na_safeAddObjectsFromArray:v21];
    }

    v38 = v16;
    v22 = [v16 na_map:&stru_1000C1E48];
    v23 = [v22 description];

    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      [v20 hf_prettyDescription];
      v25 = v37 = hf_lastNewFeaturesViewVersionSeen;
      [HOOnboardingRootNavigationController stringForOnboardingStates:v7];
      v26 = v36 = v19;
      *buf = 136315906;
      v40 = "+[HOOnboardingRootNavigationController onboardingStatesForHome:pendingHomeIDsFromInvitations:]";
      v41 = 2112;
      v42 = v23;
      v43 = 2112;
      v44 = v25;
      v45 = 2112;
      v46 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "(%s) incomingInvitations = %@. rgIncomingInvitation = %@. onboardingStates = %@", buf, 0x2Au);

      hf_lastNewFeaturesViewVersionSeen = v37;
      v19 = v36;
    }

    v16 = v38;
    goto LABEL_20;
  }

LABEL_21:
  if (!HFForceFirstTimeOnboarding())
  {
    if (v19 <= hf_lastNewFeaturesViewVersionSeen && (HFForceNewFeaturesOnboarding() & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_22:
  v27 = HFLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [NSNumber numberWithBool:HFForceFirstTimeOnboarding()];
    *buf = 136315394;
    v40 = "+[HOOnboardingRootNavigationController onboardingStatesForHome:pendingHomeIDsFromInvitations:]";
    v41 = 2112;
    v42 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "(%s) *** HFForceFirstTimeOnboarding = [%@] ***", buf, 0x16u);
  }

  [v7 addObject:&off_1000CB620];
  if ((HFForceNewFeaturesOnboarding() & 1) == 0)
  {
    goto LABEL_30;
  }

  if ((HFForceNewFeaturesOnboarding() & 1) == 0)
  {
    NSLog(@"WHOOPS - we should never show both the Welcome & the New Features View");
  }

LABEL_29:
  [v7 addObject:&off_1000CB638];
LABEL_30:
  if ([homeCopy hf_currentUserIsRestrictedGuest])
  {
    if ([v7 containsObject:&off_1000CB620])
    {
      [v7 removeObject:&off_1000CB620];
    }

    if ([v7 containsObject:&off_1000CB638])
    {
      [v7 removeObject:&off_1000CB638];
    }

    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      currentUser = [homeCopy currentUser];
      hf_prettyDescription = [currentUser hf_prettyDescription];
      hf_minimumDescription = [homeCopy hf_minimumDescription];
      *buf = 136315650;
      v40 = "+[HOOnboardingRootNavigationController onboardingStatesForHome:pendingHomeIDsFromInvitations:]";
      v41 = 2112;
      v42 = hf_prettyDescription;
      v43 = 2112;
      v44 = hf_minimumDescription;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(%s) Not including 'welcome' and 'new features' because current user is RG of home. user = %@ | home = %@", buf, 0x20u);
    }
  }

  currentUser2 = [homeCopy currentUser];
  hf_requiresAdaptiveTemperatureAutomationsDisclosure = [currentUser2 hf_requiresAdaptiveTemperatureAutomationsDisclosure];

  if (hf_requiresAdaptiveTemperatureAutomationsDisclosure)
  {
    v35 = HFLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v40 = "+[HOOnboardingRootNavigationController onboardingStatesForHome:pendingHomeIDsFromInvitations:]";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "(%s) Showing ACC Disclosure Onboarding Sheet", buf, 0xCu);
    }

    [v7 addObject:&off_1000CB650];
  }

  v11 = [v7 copy];

LABEL_9:

  return v11;
}

+ (id)stringForOnboardingState:(unint64_t)state
{
  if (state < 8)
  {
    return *(&off_1000C1F70 + state);
  }

  NSLog(@"Unknown onboarding state %lu", a2, state);
  return @"Unknown";
}

+ (id)stringForOnboardingStates:(id)states
{
  v3 = [states na_map:&stru_1000C1E88];
  v4 = [v3 componentsJoinedByString:{@", "}];
  v5 = [NSString stringWithFormat:@"[%@]", v4];

  return v5;
}

- (BOOL)isDisplayingRestrictedGuestIncomingInvitationFlow
{
  if ([(HOOnboardingRootNavigationController *)self hasNextStepInRestrictedGuestIncomingInvitationFlow])
  {
    v3 = 1;
  }

  else
  {
    objc_opt_class();
    visibleViewController = [(HOOnboardingRootNavigationController *)self visibleViewController];
    if (objc_opt_isKindOfClass())
    {
      v5 = visibleViewController;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v3 = v6 != 0;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    visibleViewController2 = [(HOOnboardingRootNavigationController *)self visibleViewController];
    v9 = objc_opt_class();
    v10 = [HOOnboardingRootNavigationController stringForOnboardingState:[(HOOnboardingRootNavigationController *)self activeOnboardingState]];
    v12 = 136315906;
    v13 = "[HOOnboardingRootNavigationController isDisplayingRestrictedGuestIncomingInvitationFlow]";
    v14 = 1024;
    v15 = v3;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%s) Returning %{BOOL}d | visibleVC = %@ | states = %@", &v12, 0x26u);
  }

  return v3;
}

- (BOOL)hasNextStepInRestrictedGuestIncomingInvitationFlow
{
  objc_opt_class();
  visibleViewController = [(HOOnboardingRootNavigationController *)self visibleViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = visibleViewController;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  invitation = [v5 invitation];
  isInviteeRestrictedGuest = [invitation isInviteeRestrictedGuest];

  if (isInviteeRestrictedGuest)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      visibleViewController2 = [(HOOnboardingRootNavigationController *)self visibleViewController];
      v10 = objc_opt_class();
      v11 = [HOOnboardingRootNavigationController stringForOnboardingState:[(HOOnboardingRootNavigationController *)self activeOnboardingState]];
      invitation2 = [v5 invitation];
      hf_prettyDescription = [invitation2 hf_prettyDescription];
      v22 = 136315906;
      v23 = "[HOOnboardingRootNavigationController hasNextStepInRestrictedGuestIncomingInvitationFlow]";
      v24 = 2112;
      *v25 = v10;
      *&v25[8] = 2112;
      *&v25[10] = v11;
      *&v25[18] = 2112;
      *&v25[20] = hf_prettyDescription;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Returning YES | visibleVC = %@ | states = %@ | invitation = %@", &v22, 0x2Au);
    }

    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    visibleViewController3 = [(HOOnboardingRootNavigationController *)self visibleViewController];
    if (objc_opt_isKindOfClass())
    {
      v16 = visibleViewController3;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v14 = 1;
    }

    else
    {
      objc_opt_class();
      visibleViewController4 = [(HOOnboardingRootNavigationController *)self visibleViewController];
      if (objc_opt_isKindOfClass())
      {
        v18 = visibleViewController4;
      }

      else
      {
        v18 = 0;
      }

      v14 = v18 != 0;
    }

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      visibleViewController5 = [(HOOnboardingRootNavigationController *)self visibleViewController];
      v20 = [HOOnboardingRootNavigationController stringForOnboardingState:[(HOOnboardingRootNavigationController *)self activeOnboardingState]];
      v22 = 136315906;
      v23 = "[HOOnboardingRootNavigationController hasNextStepInRestrictedGuestIncomingInvitationFlow]";
      v24 = 1024;
      *v25 = v14;
      *&v25[4] = 2112;
      *&v25[6] = visibleViewController5;
      *&v25[14] = 2112;
      *&v25[16] = v20;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Returning %{BOOL}d | visibleVC = %@ | activeOnboardingState = %@", &v22, 0x26u);
    }
  }

  return v14;
}

- (void)didIgnoreInvitation:(id)invitation viewController:(id)controller
{
  invitationCopy = invitation;
  [(HOOnboardingRootNavigationController *)self _presentNextViewControllerWithCurrentViewController:controller skipRelated:1];
  onboardingDelegate = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    onboardingDelegate2 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [onboardingDelegate2 onboardingNavigationController:self didIgnoreInvitation:invitationCopy];
  }
}

- (void)didDeclineInvitation:(id)invitation viewController:(id)controller
{
  invitationCopy = invitation;
  [(HOOnboardingRootNavigationController *)self _presentNextViewControllerWithCurrentViewController:controller skipRelated:1];
  onboardingDelegate = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    onboardingDelegate2 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [onboardingDelegate2 onboardingNavigationController:self didDeclineInvitation:invitationCopy];
  }
}

- (void)didAcceptInvitation:(id)invitation viewController:(id)controller
{
  invitationCopy = invitation;
  controllerCopy = controller;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [invitationCopy hf_prettyDescription];
    v13 = 136315650;
    v14 = "[HOOnboardingRootNavigationController didAcceptInvitation:viewController:]";
    v15 = 2112;
    v16 = hf_prettyDescription;
    v17 = 2112;
    v18 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Did accept invitation %@ | viewController %@", &v13, 0x20u);
  }

  onboardingDelegate = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    onboardingDelegate2 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [onboardingDelegate2 onboardingNavigationController:self didAcceptInvitation:invitationCopy];
  }

  [(HOOnboardingRootNavigationController *)self _finishedOnboarding];
}

- (void)didDecideLaterForInvitation:(id)invitation viewController:(id)controller error:(id)error
{
  invitationCopy = invitation;
  controllerCopy = controller;
  errorCopy = error;
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [invitationCopy hf_prettyDescription];
    v17 = 136315906;
    v18 = "[HOOnboardingRootNavigationController didDecideLaterForInvitation:viewController:error:]";
    v19 = 2112;
    v20 = hf_prettyDescription;
    v21 = 2112;
    v22 = controllerCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) Deciding later for invitation %@ | viewController %@ | error %@", &v17, 0x2Au);
  }

  [(HOOnboardingRootNavigationController *)self _presentNextViewControllerWithCurrentViewController:controllerCopy skipRelated:1];
  if (errorCopy)
  {
    v13 = +[HFErrorHandler sharedHandler];
    [v13 handleError:errorCopy operationType:HFOperationAcceptInvitation options:0 retryBlock:0 cancelBlock:0];
  }

  onboardingDelegate = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    onboardingDelegate2 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [onboardingDelegate2 onboardingNavigationController:self didDecideLaterInvitation:invitationCopy error:errorCopy];
  }
}

- (void)didReportJunkForInvitation:(id)invitation viewController:(id)controller
{
  invitationCopy = invitation;
  [(HOOnboardingRootNavigationController *)self _presentNextViewControllerWithCurrentViewController:controller skipRelated:1];
  onboardingDelegate = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    onboardingDelegate2 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [onboardingDelegate2 onboardingNavigationController:self didReportJunkInvitation:invitationCopy];
  }
}

- (void)acceptedInvitationPendingForNewHome:(id)home
{
  homeCopy = home;
  onboardingDelegate = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    onboardingDelegate2 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [onboardingDelegate2 onboardingNavigationController:self acceptedInvitationAndWaitingForHomeToLand:homeCopy];
  }
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  homeCopy = home;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[HOOnboardingRootNavigationController homeManager:didAddHome:]";
    v18 = 2112;
    *v19 = homeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) home = %@.", &v16, 0x16u);
  }

  [homeCopy hf_homeHasMigratedIntoHomeApp];
  hf_homeHasMigratedIntoHomeApp = [homeCopy hf_homeHasMigratedIntoHomeApp];
  isDisplayingRestrictedGuestIncomingInvitationFlow = [(HOOnboardingRootNavigationController *)self isDisplayingRestrictedGuestIncomingInvitationFlow];
  v9 = isDisplayingRestrictedGuestIncomingInvitationFlow;
  v10 = hf_homeHasMigratedIntoHomeApp & (isDisplayingRestrictedGuestIncomingInvitationFlow ^ 1);
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v9 & 1;
    visibleViewController = [(HOOnboardingRootNavigationController *)self visibleViewController];
    onboardingStates = [(HOOnboardingRootNavigationController *)self onboardingStates];
    v15 = [HOOnboardingRootNavigationController stringForOnboardingStates:onboardingStates];
    v16 = 136316418;
    v17 = "[HOOnboardingRootNavigationController homeManager:didAddHome:]";
    v18 = 1024;
    *v19 = v10;
    *&v19[4] = 1024;
    *&v19[6] = hf_homeHasMigratedIntoHomeApp;
    v20 = 1024;
    v21 = v12;
    v22 = 2112;
    v23 = visibleViewController;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) shouldFinishOnboarding = %{BOOL}d | hasMigrated = %{BOOL}d | isRGFlow = %{BOOL}d | visibleVC = %@ | states = %@", &v16, 0x32u);
  }

  if (v10)
  {
    [(HOOnboardingRootNavigationController *)self _finishedOnboarding];
  }
}

- (void)_finishedOnboarding
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v3 home];
  v5 = [home hf_setHomeHasMigratedServicesToAccessories:1];

  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  [v6 removeHomeManagerObserver:self];

  onboardingDelegate = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  [onboardingDelegate onboardingNavigationControllerDidFinish:self];
}

- (void)_presentNextViewControllerWithCurrentViewController:(id)controller skipRelated:(BOOL)related
{
  controllerCopy = controller;
  onboardingViewControllers = [(HOOnboardingRootNavigationController *)self onboardingViewControllers];
  v8 = [onboardingViewControllers indexOfObject:controllerCopy];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(HOOnboardingRootNavigationController *)self _finishedOnboarding];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      segmentIdentifier = [controllerCopy segmentIdentifier];
    }

    else
    {
      segmentIdentifier = 0;
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10000797C;
    v38[3] = &unk_1000C1EB0;
    v40 = v8;
    v38[4] = self;
    relatedCopy = related;
    v10 = segmentIdentifier;
    v39 = v10;
    v11 = sub_10000797C(v38);
    v12 = v11;
    if (v11)
    {
      if ([v11 conformsToProtocol:&OBJC_PROTOCOL___HUPreloadableViewController])
      {
        v13 = [(HOOnboardingRootNavigationController *)self hu_pushPreloadableViewController:v12 animated:1];
      }

      else
      {
        [(HOOnboardingRootNavigationController *)self pushViewController:v12 animated:1];
      }
    }

    else
    {
      v14 = +[HFHomeKitDispatcher sharedDispatcher];
      home = [v14 home];

      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = home;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Finished presenting view controillers for App Onboarding. home = %@", buf, 0xCu);
      }

      v17 = +[HFHomeKitDispatcher sharedDispatcher];
      homeManager = [v17 homeManager];
      v19 = [homeManager hf_setHasSeenOnboardingWelcomeView:1];

      v20 = +[HFHomeKitDispatcher sharedDispatcher];
      homeManager2 = [v20 homeManager];
      v22 = [homeManager2 hf_setSeenNewFeaturesViewVersion:{+[HOOnboardingNewFeaturesViewController newFeaturesOnboardingVersion](HOOnboardingNewFeaturesViewController, "newFeaturesOnboardingVersion")}];

      if (home)
      {
        v23 = [home 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:1];
        [(HOOnboardingRootNavigationController *)self _finishedOnboarding];
      }

      else
      {
        v24 = [[HFHomeBuilder alloc] initWithExistingObject:0 inHome:0];
        v25 = HULocalizedString();
        [v24 setName:v25];

        commitItem = [v24 commitItem];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100007A9C;
        v36[3] = &unk_1000C1ED8;
        v27 = v24;
        v37 = v27;
        v28 = [commitItem recover:v36];

        objc_initWeak(buf, self);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100007B84;
        v34[3] = &unk_1000C1F00;
        objc_copyWeak(&v35, buf);
        v29 = [v28 addSuccessBlock:v34];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100007C48;
        v32[3] = &unk_1000C1F28;
        v30 = v27;
        v33 = v30;
        v31 = [v28 addFailureBlock:v32];

        objc_destroyWeak(&v35);
        objc_destroyWeak(buf);
      }
    }
  }
}

- (id)_onboardingViewControllersForStates:(id)states
{
  statesCopy = states;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007EBC;
  v7[3] = &unk_1000C1F50;
  objc_copyWeak(&v8, &location);
  v5 = [statesCopy na_map:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_viewControllerForState:(unint64_t)state
{
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v5 homeManager];
  incomingHomeInvitations = [homeManager incomingHomeInvitations];

  firstObject = [incomingHomeInvitations firstObject];
  v9 = firstObject;
  v10 = 0;
  if (state <= 3)
  {
    if (state)
    {
      if (state == 1)
      {
        v12 = HOOnboardingWelcomeViewController;
      }

      else
      {
        if (state != 2)
        {
          goto LABEL_23;
        }

        v12 = HOOnboardingNewFeaturesViewController;
      }

      invitationViewController = [[v12 alloc] initWithDelegate:self];
      goto LABEL_22;
    }

    if (firstObject)
    {
      invitationViewController = [(HOOnboardingRootNavigationController *)self invitationViewController];
      goto LABEL_22;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_23;
  }

  if (state > 5)
  {
    if (state != 6)
    {
      if (state != 7)
      {
        goto LABEL_23;
      }

      invitationViewController = [[HOOnboardingACCDisclosureViewController alloc] initWithDelegate:self homeName:self->_homeName currentUser:self->_currentUser];
      goto LABEL_22;
    }

    if ([firstObject isInviteeRestrictedGuest])
    {
      invitationViewController = [(HOOnboardingRootNavigationController *)self _invitationJoinedHomeViewController];
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (state == 4)
  {
    if ([firstObject isInviteeRestrictedGuest])
    {
      invitationViewController = [(HOOnboardingRootNavigationController *)self _invitationRestrictedGuestAccessViewController];
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (![firstObject isInviteeRestrictedGuest])
  {
    goto LABEL_19;
  }

  invitationViewController = [(HOOnboardingRootNavigationController *)self _invitationJoiningHomeViewController];
LABEL_22:
  v10 = invitationViewController;
LABEL_23:

  return v10;
}

- (id)_invitationRestrictedGuestAccessViewController
{
  objc_opt_class();
  invitationViewController = [(HOOnboardingRootNavigationController *)self invitationViewController];
  nextViewController = [invitationViewController nextViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = nextViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_invitationJoiningHomeViewController
{
  _invitationRestrictedGuestAccessViewController = [(HOOnboardingRootNavigationController *)self _invitationRestrictedGuestAccessViewController];
  nextViewController = [_invitationRestrictedGuestAccessViewController nextViewController];
  v5 = nextViewController;
  if (nextViewController)
  {
    nextViewController2 = nextViewController;
  }

  else
  {
    invitationViewController = [(HOOnboardingRootNavigationController *)self invitationViewController];
    nextViewController2 = [invitationViewController nextViewController];
  }

  objc_opt_class();
  v8 = nextViewController2;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (id)_invitationJoinedHomeViewController
{
  objc_opt_class();
  _invitationJoiningHomeViewController = [(HOOnboardingRootNavigationController *)self _invitationJoiningHomeViewController];
  nextViewController = [_invitationJoiningHomeViewController nextViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = nextViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (HOOnboardingRootNavigationControllerDelegate)onboardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingDelegate);

  return WeakRetained;
}

@end