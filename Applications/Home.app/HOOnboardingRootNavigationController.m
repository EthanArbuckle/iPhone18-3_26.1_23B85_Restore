@interface HOOnboardingRootNavigationController
+ (id)onboardingStatesForHome:(id)a3 pendingHomeIDsFromInvitations:(id)a4;
+ (id)stringForOnboardingState:(unint64_t)a3;
+ (id)stringForOnboardingStates:(id)a3;
- (BOOL)hasNextStepInRestrictedGuestIncomingInvitationFlow;
- (BOOL)isDisplayingRestrictedGuestIncomingInvitationFlow;
- (HOOnboardingRootNavigationController)init;
- (HOOnboardingRootNavigationController)initWithCoder:(id)a3;
- (HOOnboardingRootNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (HOOnboardingRootNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (HOOnboardingRootNavigationController)initWithOnboardingStates:(id)a3 withHome:(id)a4;
- (HOOnboardingRootNavigationController)initWithRootViewController:(id)a3;
- (HOOnboardingRootNavigationControllerDelegate)onboardingDelegate;
- (id)_invitationJoinedHomeViewController;
- (id)_invitationJoiningHomeViewController;
- (id)_invitationRestrictedGuestAccessViewController;
- (id)_onboardingViewControllersForStates:(id)a3;
- (id)_viewControllerForState:(unint64_t)a3;
- (unint64_t)activeOnboardingState;
- (void)_finishedOnboarding;
- (void)_presentNextViewControllerWithCurrentViewController:(id)a3 skipRelated:(BOOL)a4;
- (void)acceptedInvitationPendingForNewHome:(id)a3;
- (void)didAcceptInvitation:(id)a3 viewController:(id)a4;
- (void)didDecideLaterForInvitation:(id)a3 viewController:(id)a4 error:(id)a5;
- (void)didDeclineInvitation:(id)a3 viewController:(id)a4;
- (void)didIgnoreInvitation:(id)a3 viewController:(id)a4;
- (void)didReportJunkForInvitation:(id)a3 viewController:(id)a4;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
@end

@implementation HOOnboardingRootNavigationController

- (HOOnboardingRootNavigationController)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v4 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:53 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController init]", v5}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithCoder:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v5 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController initWithCoder:]", v6}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  v7 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v6 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:64 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithRootViewController:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v5 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:70 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController initWithRootViewController:]", v6}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  v7 = NSStringFromSelector("initWithOnboardingStates:withHome:");
  [v6 handleFailureInMethod:a2 object:self file:@"HOOnboardingRootNavigationController.m" lineNumber:76 description:{@"%s is unavailable; use %@ instead", "-[HOOnboardingRootNavigationController initWithNavigationBarClass:toolbarClass:]", v7}];

  return 0;
}

- (HOOnboardingRootNavigationController)initWithOnboardingStates:(id)a3 withHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = HOOnboardingRootNavigationController;
  v9 = [(HOOnboardingRootNavigationController *)&v28 initWithNavigationBarClass:0 toolbarClass:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_onboardingStates, a3);
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    v12 = [v11 homeManager];
    v13 = [v12 incomingHomeInvitations];

    v14 = [v13 firstObject];
    v15 = [[HOOnboardingIncomingInvitationViewController alloc] initWithIncomingInvitation:v14 invitationHelper:0 incomingInvitationDelegate:v10];
    invitationViewController = v10->_invitationViewController;
    v10->_invitationViewController = v15;

    [(HOOnboardingIncomingInvitationViewController *)v10->_invitationViewController setDelegate:v10];
    v17 = [v8 name];
    homeName = v10->_homeName;
    v10->_homeName = v17;

    v19 = [v8 currentUser];
    currentUser = v10->_currentUser;
    v10->_currentUser = v19;

    v21 = [(HOOnboardingRootNavigationController *)v10 _onboardingViewControllersForStates:v7];
    onboardingViewControllers = v10->_onboardingViewControllers;
    v10->_onboardingViewControllers = v21;

    v23 = +[HFHomeKitDispatcher sharedDispatcher];
    [v23 addHomeManagerObserver:v10];

    v24 = [(HOOnboardingRootNavigationController *)v10 onboardingViewControllers];
    v25 = [v24 firstObject];
    v29 = v25;
    v26 = [NSArray arrayWithObjects:&v29 count:1];
    [(HOOnboardingRootNavigationController *)v10 setViewControllers:v26];

    [(HOOnboardingRootNavigationController *)v10 setModalInPresentation:1];
  }

  return v10;
}

- (unint64_t)activeOnboardingState
{
  v3 = [(HOOnboardingRootNavigationController *)self onboardingViewControllers];
  v4 = [(HOOnboardingRootNavigationController *)self topViewController];
  v5 = [v3 indexOfObject:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007F988(self, v6);
    }
  }

  v7 = [(HOOnboardingRootNavigationController *)self onboardingStates];
  v8 = [v7 objectAtIndexedSubscript:v5];
  v9 = [v8 unsignedIntegerValue];

  return v9;
}

+ (id)onboardingStatesForHome:(id)a3 pendingHomeIDsFromInvitations:(id)a4
{
  v5 = a3;
  v6 = a4;
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

  if ([v6 count])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v40 = "+[HOOnboardingRootNavigationController onboardingStatesForHome:pendingHomeIDsFromInvitations:]";
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v5;
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
  v14 = [v13 homeManager];

  v15 = [v14 incomingHomeInvitations];
  v16 = [v15 na_filter:&stru_1000C1DE8];

  v17 = (v5 != 0) & [v14 hf_hasSeenOnboardingWelcomeView];
  v18 = [v14 hf_lastNewFeaturesViewVersionSeen];
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
      v25 = v37 = v18;
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

      v18 = v37;
      v19 = v36;
    }

    v16 = v38;
    goto LABEL_20;
  }

LABEL_21:
  if (!HFForceFirstTimeOnboarding())
  {
    if (v19 <= v18 && (HFForceNewFeaturesOnboarding() & 1) == 0)
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
  if ([v5 hf_currentUserIsRestrictedGuest])
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
      v30 = [v5 currentUser];
      v31 = [v30 hf_prettyDescription];
      v32 = [v5 hf_minimumDescription];
      *buf = 136315650;
      v40 = "+[HOOnboardingRootNavigationController onboardingStatesForHome:pendingHomeIDsFromInvitations:]";
      v41 = 2112;
      v42 = v31;
      v43 = 2112;
      v44 = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "(%s) Not including 'welcome' and 'new features' because current user is RG of home. user = %@ | home = %@", buf, 0x20u);
    }
  }

  v33 = [v5 currentUser];
  v34 = [v33 hf_requiresAdaptiveTemperatureAutomationsDisclosure];

  if (v34)
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

+ (id)stringForOnboardingState:(unint64_t)a3
{
  if (a3 < 8)
  {
    return *(&off_1000C1F70 + a3);
  }

  NSLog(@"Unknown onboarding state %lu", a2, a3);
  return @"Unknown";
}

+ (id)stringForOnboardingStates:(id)a3
{
  v3 = [a3 na_map:&stru_1000C1E88];
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
    v4 = [(HOOnboardingRootNavigationController *)self visibleViewController];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v8 = [(HOOnboardingRootNavigationController *)self visibleViewController];
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
  v3 = [(HOOnboardingRootNavigationController *)self visibleViewController];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 invitation];
  v7 = [v6 isInviteeRestrictedGuest];

  if (v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(HOOnboardingRootNavigationController *)self visibleViewController];
      v10 = objc_opt_class();
      v11 = [HOOnboardingRootNavigationController stringForOnboardingState:[(HOOnboardingRootNavigationController *)self activeOnboardingState]];
      v12 = [v5 invitation];
      v13 = [v12 hf_prettyDescription];
      v22 = 136315906;
      v23 = "[HOOnboardingRootNavigationController hasNextStepInRestrictedGuestIncomingInvitationFlow]";
      v24 = 2112;
      *v25 = v10;
      *&v25[8] = 2112;
      *&v25[10] = v11;
      *&v25[18] = 2112;
      *&v25[20] = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Returning YES | visibleVC = %@ | states = %@ | invitation = %@", &v22, 0x2Au);
    }

    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    v15 = [(HOOnboardingRootNavigationController *)self visibleViewController];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
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
      v17 = [(HOOnboardingRootNavigationController *)self visibleViewController];
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
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
      v19 = [(HOOnboardingRootNavigationController *)self visibleViewController];
      v20 = [HOOnboardingRootNavigationController stringForOnboardingState:[(HOOnboardingRootNavigationController *)self activeOnboardingState]];
      v22 = 136315906;
      v23 = "[HOOnboardingRootNavigationController hasNextStepInRestrictedGuestIncomingInvitationFlow]";
      v24 = 1024;
      *v25 = v14;
      *&v25[4] = 2112;
      *&v25[6] = v19;
      *&v25[14] = 2112;
      *&v25[16] = v20;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Returning %{BOOL}d | visibleVC = %@ | activeOnboardingState = %@", &v22, 0x26u);
    }
  }

  return v14;
}

- (void)didIgnoreInvitation:(id)a3 viewController:(id)a4
{
  v9 = a3;
  [(HOOnboardingRootNavigationController *)self _presentNextViewControllerWithCurrentViewController:a4 skipRelated:1];
  v6 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [v8 onboardingNavigationController:self didIgnoreInvitation:v9];
  }
}

- (void)didDeclineInvitation:(id)a3 viewController:(id)a4
{
  v9 = a3;
  [(HOOnboardingRootNavigationController *)self _presentNextViewControllerWithCurrentViewController:a4 skipRelated:1];
  v6 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [v8 onboardingNavigationController:self didDeclineInvitation:v9];
  }
}

- (void)didAcceptInvitation:(id)a3 viewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 hf_prettyDescription];
    v13 = 136315650;
    v14 = "[HOOnboardingRootNavigationController didAcceptInvitation:viewController:]";
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Did accept invitation %@ | viewController %@", &v13, 0x20u);
  }

  v10 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [v12 onboardingNavigationController:self didAcceptInvitation:v6];
  }

  [(HOOnboardingRootNavigationController *)self _finishedOnboarding];
}

- (void)didDecideLaterForInvitation:(id)a3 viewController:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 hf_prettyDescription];
    v17 = 136315906;
    v18 = "[HOOnboardingRootNavigationController didDecideLaterForInvitation:viewController:error:]";
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) Deciding later for invitation %@ | viewController %@ | error %@", &v17, 0x2Au);
  }

  [(HOOnboardingRootNavigationController *)self _presentNextViewControllerWithCurrentViewController:v9 skipRelated:1];
  if (v10)
  {
    v13 = +[HFErrorHandler sharedHandler];
    [v13 handleError:v10 operationType:HFOperationAcceptInvitation options:0 retryBlock:0 cancelBlock:0];
  }

  v14 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [v16 onboardingNavigationController:self didDecideLaterInvitation:v8 error:v10];
  }
}

- (void)didReportJunkForInvitation:(id)a3 viewController:(id)a4
{
  v9 = a3;
  [(HOOnboardingRootNavigationController *)self _presentNextViewControllerWithCurrentViewController:a4 skipRelated:1];
  v6 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [v8 onboardingNavigationController:self didReportJunkInvitation:v9];
  }
}

- (void)acceptedInvitationPendingForNewHome:(id)a3
{
  v7 = a3;
  v4 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
    [v6 onboardingNavigationController:self acceptedInvitationAndWaitingForHomeToLand:v7];
  }
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[HOOnboardingRootNavigationController homeManager:didAddHome:]";
    v18 = 2112;
    *v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) home = %@.", &v16, 0x16u);
  }

  [v5 hf_homeHasMigratedIntoHomeApp];
  v7 = [v5 hf_homeHasMigratedIntoHomeApp];
  v8 = [(HOOnboardingRootNavigationController *)self isDisplayingRestrictedGuestIncomingInvitationFlow];
  v9 = v8;
  v10 = v7 & (v8 ^ 1);
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v9 & 1;
    v13 = [(HOOnboardingRootNavigationController *)self visibleViewController];
    v14 = [(HOOnboardingRootNavigationController *)self onboardingStates];
    v15 = [HOOnboardingRootNavigationController stringForOnboardingStates:v14];
    v16 = 136316418;
    v17 = "[HOOnboardingRootNavigationController homeManager:didAddHome:]";
    v18 = 1024;
    *v19 = v10;
    *&v19[4] = 1024;
    *&v19[6] = v7;
    v20 = 1024;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
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
  v4 = [v3 home];
  v5 = [v4 hf_setHomeHasMigratedServicesToAccessories:1];

  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  [v6 removeHomeManagerObserver:self];

  v7 = [(HOOnboardingRootNavigationController *)self onboardingDelegate];
  [v7 onboardingNavigationControllerDidFinish:self];
}

- (void)_presentNextViewControllerWithCurrentViewController:(id)a3 skipRelated:(BOOL)a4
{
  v6 = a3;
  v7 = [(HOOnboardingRootNavigationController *)self onboardingViewControllers];
  v8 = [v7 indexOfObject:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(HOOnboardingRootNavigationController *)self _finishedOnboarding];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 segmentIdentifier];
    }

    else
    {
      v9 = 0;
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10000797C;
    v38[3] = &unk_1000C1EB0;
    v40 = v8;
    v38[4] = self;
    v41 = a4;
    v10 = v9;
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
      v15 = [v14 home];

      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Finished presenting view controillers for App Onboarding. home = %@", buf, 0xCu);
      }

      v17 = +[HFHomeKitDispatcher sharedDispatcher];
      v18 = [v17 homeManager];
      v19 = [v18 hf_setHasSeenOnboardingWelcomeView:1];

      v20 = +[HFHomeKitDispatcher sharedDispatcher];
      v21 = [v20 homeManager];
      v22 = [v21 hf_setSeenNewFeaturesViewVersion:{+[HOOnboardingNewFeaturesViewController newFeaturesOnboardingVersion](HOOnboardingNewFeaturesViewController, "newFeaturesOnboardingVersion")}];

      if (v15)
      {
        v23 = [v15 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:1];
        [(HOOnboardingRootNavigationController *)self _finishedOnboarding];
      }

      else
      {
        v24 = [[HFHomeBuilder alloc] initWithExistingObject:0 inHome:0];
        v25 = HULocalizedString();
        [v24 setName:v25];

        v26 = [v24 commitItem];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100007A9C;
        v36[3] = &unk_1000C1ED8;
        v27 = v24;
        v37 = v27;
        v28 = [v26 recover:v36];

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

- (id)_onboardingViewControllersForStates:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007EBC;
  v7[3] = &unk_1000C1F50;
  objc_copyWeak(&v8, &location);
  v5 = [v4 na_map:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_viewControllerForState:(unint64_t)a3
{
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 homeManager];
  v7 = [v6 incomingHomeInvitations];

  v8 = [v7 firstObject];
  v9 = v8;
  v10 = 0;
  if (a3 <= 3)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v12 = HOOnboardingWelcomeViewController;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_23;
        }

        v12 = HOOnboardingNewFeaturesViewController;
      }

      v11 = [[v12 alloc] initWithDelegate:self];
      goto LABEL_22;
    }

    if (v8)
    {
      v11 = [(HOOnboardingRootNavigationController *)self invitationViewController];
      goto LABEL_22;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_23;
  }

  if (a3 > 5)
  {
    if (a3 != 6)
    {
      if (a3 != 7)
      {
        goto LABEL_23;
      }

      v11 = [[HOOnboardingACCDisclosureViewController alloc] initWithDelegate:self homeName:self->_homeName currentUser:self->_currentUser];
      goto LABEL_22;
    }

    if ([v8 isInviteeRestrictedGuest])
    {
      v11 = [(HOOnboardingRootNavigationController *)self _invitationJoinedHomeViewController];
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (a3 == 4)
  {
    if ([v8 isInviteeRestrictedGuest])
    {
      v11 = [(HOOnboardingRootNavigationController *)self _invitationRestrictedGuestAccessViewController];
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (![v8 isInviteeRestrictedGuest])
  {
    goto LABEL_19;
  }

  v11 = [(HOOnboardingRootNavigationController *)self _invitationJoiningHomeViewController];
LABEL_22:
  v10 = v11;
LABEL_23:

  return v10;
}

- (id)_invitationRestrictedGuestAccessViewController
{
  objc_opt_class();
  v3 = [(HOOnboardingRootNavigationController *)self invitationViewController];
  v4 = [v3 nextViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
  v3 = [(HOOnboardingRootNavigationController *)self _invitationRestrictedGuestAccessViewController];
  v4 = [v3 nextViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(HOOnboardingRootNavigationController *)self invitationViewController];
    v6 = [v7 nextViewController];
  }

  objc_opt_class();
  v8 = v6;
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
  v3 = [(HOOnboardingRootNavigationController *)self _invitationJoiningHomeViewController];
  v4 = [v3 nextViewController];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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