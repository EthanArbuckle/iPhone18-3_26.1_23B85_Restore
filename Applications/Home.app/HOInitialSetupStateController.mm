@interface HOInitialSetupStateController
- (HOInitialSetupStateController)initWithDelegate:(id)delegate;
- (HOInitialSetupStateControllerDelegate)delegate;
- (id)_dismissPresentedViewControllerIfNeeded;
- (id)_presentDataSyncingControllerWithState:(unint64_t)state;
- (id)_presentOnboardingWithStates:(id)states withHome:(id)home;
- (id)_presentedViewControllerForState:(unint64_t)state;
- (id)_presentiCloudDisabledControllerWithState:(unint64_t)state andStatus:(unint64_t)status;
- (void)_checkForAppOnboardingWillFinish;
- (void)_reloadStateWithInvitation:(id)invitation home:(id)home;
- (void)_setPresentedViewController:(id)controller forState:(unint64_t)state;
- (void)_updateOnboardingCompleteFutureForNewPresentationState:(unint64_t)state;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didUpdateStateForIncomingInvitations:(id)invitations;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load;
- (void)homeManagerDidUpdateDataSyncState:(id)state;
- (void)onboardingNavigationController:(id)controller acceptedInvitationAndWaitingForHomeToLand:(id)land;
- (void)onboardingNavigationController:(id)controller didAcceptInvitation:(id)invitation;
- (void)onboardingNavigationController:(id)controller didDecideLaterInvitation:(id)invitation error:(id)error;
- (void)onboardingNavigationController:(id)controller didDeclineInvitation:(id)invitation;
- (void)onboardingNavigationController:(id)controller didIgnoreInvitation:(id)invitation;
- (void)onboardingNavigationController:(id)controller didReportJunkInvitation:(id)invitation;
- (void)onboardingNavigationControllerDidFinish:(id)finish;
- (void)reloadState;
- (void)setPresentationState:(unint64_t)state;
- (void)setPresentedOnboardingController:(id)controller;
- (void)showOnboardingIfNeededForHomeInvitation:(id)invitation;
@end

@implementation HOInitialSetupStateController

- (HOInitialSetupStateController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = HOInitialSetupStateController;
  v5 = [(HOInitialSetupStateController *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_alloc_init(NAFuture);
    onboardingCompleteFuture = v6->_onboardingCompleteFuture;
    v6->_onboardingCompleteFuture = v7;

    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    dispatcher = v6->_dispatcher;
    v6->_dispatcher = v9;

    [(HFHomeKitDispatcher *)v6->_dispatcher addHomeManagerObserver:v6];
    v11 = objc_alloc_init(NSMutableSet);
    pendingHomeIDsFromInvitations = v6->_pendingHomeIDsFromInvitations;
    v6->_pendingHomeIDsFromInvitations = v11;

    v13 = +[HFMediaAccessoryUtility sharedInstance];
    objc_initWeak(&location, v6);
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = +[NSOperationQueue mainQueue];
    v16 = HFHomePreferencesChangedNotification;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000C43C;
    v19[3] = &unk_1000C21B8;
    objc_copyWeak(&v20, &location);
    v17 = [v14 addObserverForName:v16 object:0 queue:v15 usingBlock:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)reloadState
{
  objc_initWeak(&location, self);
  dispatcher = [(HOInitialSetupStateController *)self dispatcher];
  homeFuture = [dispatcher homeFuture];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C5B8;
  v6[3] = &unk_1000C21E0;
  objc_copyWeak(&v7, &location);
  v5 = [homeFuture addCompletionBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)showOnboardingIfNeededForHomeInvitation:(id)invitation
{
  invitationCopy = invitation;
  objc_initWeak(&location, self);
  dispatcher = [(HOInitialSetupStateController *)self dispatcher];
  homeFuture = [dispatcher homeFuture];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000C730;
  v9[3] = &unk_1000C2208;
  objc_copyWeak(&v11, &location);
  v7 = invitationCopy;
  v10 = v7;
  v8 = [homeFuture addCompletionBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_reloadStateWithInvitation:(id)invitation home:(id)home
{
  invitationCopy = invitation;
  homeCopy = home;
  if (+[HFUtilities isInternalTest])
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Skipping reloading initial setup state as this is an internal unit test", buf, 2u);
    }

    goto LABEL_67;
  }

  [HUHomeEnergyWrapper setupGridForecastSnapshotsFor:homeCopy];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    hf_prettyDescription = [invitationCopy hf_prettyDescription];
    *buf = 138412546;
    *v84 = hf_prettyDescription;
    *&v84[8] = 2112;
    *&v84[10] = homeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Recomputing initial setup state. invitation = %@ | home = %@", buf, 0x16u);
  }

  dispatcher = [(HOInitialSetupStateController *)self dispatcher];
  homeManager = [dispatcher homeManager];
  dataSyncState = [homeManager dataSyncState];

  dispatcher2 = [(HOInitialSetupStateController *)self dispatcher];
  homeManager2 = [dispatcher2 homeManager];
  status = [homeManager2 status];

  v7 = CFPreferencesCopyAppValue(HFForcedDataSyncStateKey, HFHomeDomain);
  if (v7)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v84 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using override data sync state %@", buf, 0xCu);
    }

    dataSyncState = [v7 unsignedIntegerValue];
  }

  v15 = [HOOnboardingRootNavigationController onboardingStatesForHome:homeCopy];
  pendingHomeIDsFromInvitations = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  v74 = [HOOnboardingRootNavigationController onboardingStatesForHome:homeCopy pendingHomeIDsFromInvitations:pendingHomeIDsFromInvitations];

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromHMHomeManagerDataSyncState();
    v19 = HMHomeManagerStatusToString();
    v20 = [HOOnboardingRootNavigationController stringForOnboardingStates:v74];
    dispatcher3 = [(HOInitialSetupStateController *)self dispatcher];
    home = [dispatcher3 home];
    hf_prettyDescription2 = [home hf_prettyDescription];
    *buf = 138413314;
    *v84 = v18;
    *&v84[8] = 2112;
    *&v84[10] = v19;
    *&v84[18] = 2048;
    v85 = status;
    v86 = 2112;
    v87 = v20;
    v88 = 2112;
    v89 = hf_prettyDescription2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "dataSyncState: %@, status: %@ (%lu), desired onboardingStates: %@ for home: %@", buf, 0x34u);
  }

  if (+[HFUtilities isAMac])
  {
    if (dataSyncState == 3)
    {
      v24 = 1;
    }

    else
    {
      v24 = (status >> 5) & 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = +[HFUtilities isPressDemoModeEnabled];
  dispatcher4 = [(HOInitialSetupStateController *)self dispatcher];
  homeManager3 = [dispatcher4 homeManager];

  hh2MigrationFailedError = [homeManager3 hh2MigrationFailedError];
  if (hh2MigrationFailedError)
  {
    v29 = (dataSyncState == 4) & ~[homeManager3 hasOptedToHH2];
  }

  else
  {
    v29 = 0;
  }

  v30 = HFLogForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    hh2MigrationFailedError2 = [homeManager3 hh2MigrationFailedError];
    hasOptedToHH2 = [homeManager3 hasOptedToHH2];
    *buf = 67109634;
    *v84 = v29;
    *&v84[4] = 2112;
    *&v84[6] = hh2MigrationFailedError2;
    *&v84[14] = 1024;
    *&v84[16] = hasOptedToHH2;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "isHH2MigrationFailedError: %d, hh2MigrationFailedError: %@, hasOptedToHH2: %d", buf, 0x18u);
  }

  if (((v25 ^ 1) & v24 & 1) == 0)
  {
    if (v29)
    {
      v35 = HFLogForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = NSStringFromHMHomeManagerDataSyncState();
        *buf = 138412290;
        *v84 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Setting desiredState from syncState: %@ to HOInitialSetupPresentationStateNone since isHH2MigrationFailedError is YES", buf, 0xCu);
      }

      v72 = 0;
      v33 = 0;
      v34 = 0;
      goto LABEL_50;
    }

    if (dataSyncState != 1)
    {
      v72 = 0;
      v33 = 0;
      v34 = 2;
      goto LABEL_51;
    }

    if (![v74 count])
    {
      if (invitationCopy)
      {
        v35 = [&off_1000CB470 mutableCopy];
        objc_opt_class();
        v42 = invitationCopy;
        if (objc_opt_isKindOfClass())
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        v44 = v43;

        if ([v44 isInviteeRestrictedGuest])
        {
          v45 = [HOUtilities onboardingStatesForRestrictedGuestInvitation:v44];
          [v35 na_safeAddObjectsFromArray:v45];
        }

        v71 = [v35 copy];

        v46 = HFLogForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [HOOnboardingRootNavigationController stringForOnboardingStates:v71];
          hf_prettyDescription3 = [v42 hf_prettyDescription];
          *buf = 136315650;
          *v84 = "[HOInitialSetupStateController _reloadStateWithInvitation:home:]";
          *&v84[8] = 2112;
          *&v84[10] = v47;
          *&v84[18] = 2112;
          v85 = hf_prettyDescription3;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "(%s) Including onboardingStates %@ for %@", buf, 0x20u);
        }

        v72 = 0;
        v33 = 0;
        v34 = 3;
        v74 = v71;
        goto LABEL_50;
      }

      presentedOnboardingController = [(HOInitialSetupStateController *)self presentedOnboardingController];
      isDisplayingRestrictedGuestIncomingInvitationFlow = [presentedOnboardingController isDisplayingRestrictedGuestIncomingInvitationFlow];

      if (!isDisplayingRestrictedGuestIncomingInvitationFlow)
      {
        v72 = 0;
        v33 = 0;
        v34 = 0;
        goto LABEL_51;
      }

      v35 = HFLogForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [HOOnboardingRootNavigationController stringForOnboardingStates:v74];
        hf_prettyDescription4 = [0 hf_prettyDescription];
        *buf = 136315650;
        *v84 = "[HOInitialSetupStateController _reloadStateWithInvitation:home:]";
        *&v84[8] = 2112;
        *&v84[10] = v69;
        *&v84[18] = 2112;
        v85 = hf_prettyDescription4;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "(%s) Including onboardingStates %@ for %@", buf, 0x20u);
      }

      v72 = 0;
      v33 = 0;
      goto LABEL_49;
    }

    v37 = [v74 containsObject:&off_1000CB710];
    presentedOnboardingController2 = [(HOInitialSetupStateController *)self presentedOnboardingController];
    onboardingStates = [presentedOnboardingController2 onboardingStates];
    v40 = [onboardingStates containsObject:&off_1000CB710];

    if (v40 & 1 | ((v37 & 1) == 0))
    {
      if (v37 & 1 | ((v40 & 1) == 0))
      {
        if (invitationCopy)
        {
          hf_prettyDescription5 = [invitationCopy hf_prettyDescription];
          v72 = [NSString stringWithFormat:@"Show Invitation %@", hf_prettyDescription5];

          v33 = 1;
        }

        else
        {
          v72 = 0;
          v33 = 0;
        }

LABEL_47:
        v35 = HFLogForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v84 = v72;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "preemptionReason: %@", buf, 0xCu);
        }

LABEL_49:
        v34 = 3;
LABEL_50:

        goto LABEL_51;
      }

      v33 = 1;
      v49 = @"Dismiss Invitation Onboarding";
    }

    else
    {
      v33 = 1;
      v49 = @"Show Invitation Onboarding";
    }

    v72 = v49;
    goto LABEL_47;
  }

  v72 = 0;
  v33 = 0;
  v34 = 1;
LABEL_51:
  dispatcher5 = [(HOInitialSetupStateController *)self dispatcher];
  home2 = [dispatcher5 home];
  v52 = [HFServiceMigrationController homeNeedsMigration:home2];

  if (((dataSyncState == 1) & v52) == 1)
  {
    v53 = [HFServiceMigrationController alloc];
    dispatcher6 = [(HOInitialSetupStateController *)self dispatcher];
    home3 = [dispatcher6 home];
    v56 = [v53 initWithHome:home3];

    migrateServicesToAccessory = [v56 migrateServicesToAccessory];
  }

  v58 = 0;
  if (homeCopy && dataSyncState == 1)
  {
    if ((+[HFUtilities isInternalTest]& 1) != 0)
    {
      v58 = 0;
    }

    else
    {
      v59 = [HFRedesignMigrationController alloc];
      dispatcher7 = [(HOInitialSetupStateController *)self dispatcher];
      home4 = [dispatcher7 home];
      v58 = [v59 initWithHome:home4];

      [v58 performMigrationIfNeeded];
    }
  }

  if (v34 == [(HOInitialSetupStateController *)self presentationState])
  {
    v62 = v33;
  }

  else
  {
    v62 = 1;
  }

  if (v62)
  {
    _dismissPresentedViewControllerIfNeeded = [(HOInitialSetupStateController *)self _dismissPresentedViewControllerIfNeeded];
    [(HOInitialSetupStateController *)self setPresentationState:v34];
    objc_initWeak(buf, self);
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10000D354;
    v79[3] = &unk_1000C2230;
    objc_copyWeak(v82, buf);
    v82[1] = v34;
    v82[2] = dataSyncState;
    v82[3] = status;
    v80 = v74;
    v81 = homeCopy;
    v64 = [_dismissPresentedViewControllerIfNeeded flatMap:v79];
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_10000D4A0;
    v77[3] = &unk_1000C1CA0;
    v78 = v58;
    v65 = [v64 addCompletionBlock:v77];

    objc_destroyWeak(v82);
    objc_destroyWeak(buf);
  }

  else
  {
    if ([(HOInitialSetupStateController *)self presentationState]== 2)
    {
      presentedDataSyncingController = [(HOInitialSetupStateController *)self presentedDataSyncingController];
      [presentedDataSyncingController setDataSyncState:dataSyncState];
    }

    [(HOInitialSetupStateController *)self _updateOnboardingCompleteFutureForNewPresentationState:v34];
    [v58 performMigrationSuccessTasks];
  }

LABEL_67:
}

- (void)_checkForAppOnboardingWillFinish
{
  objc_initWeak(&location, self);
  onboardingCompleteFuture = [(HOInitialSetupStateController *)self onboardingCompleteFuture];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D594;
  v5[3] = &unk_1000C2258;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  v4 = [onboardingCompleteFuture flatMap:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_updateOnboardingCompleteFutureForNewPresentationState:(unint64_t)state
{
  if (state)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      dispatcher = [(HOInitialSetupStateController *)self dispatcher];
      home = [dispatcher home];
      v13 = 138412290;
      v14 = home;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting onboardingCompleteFuture for home: %@", &v13, 0xCu);
    }

    onboardingCompleteFuture2 = objc_alloc_init(NAFuture);
    [(HOInitialSetupStateController *)self setOnboardingCompleteFuture:onboardingCompleteFuture2];
  }

  else
  {
    onboardingCompleteFuture = [(HOInitialSetupStateController *)self onboardingCompleteFuture];
    isFinished = [onboardingCompleteFuture isFinished];

    if (isFinished)
    {
      return;
    }

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      dispatcher2 = [(HOInitialSetupStateController *)self dispatcher];
      home2 = [dispatcher2 home];
      v13 = 138412290;
      v14 = home2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "After evaluating the dataSync status and onboarding states for home %@, we decided we don't need to show any onboarding or dataSyncInProgress screens. Finishing onboardingCompleteFuture.", &v13, 0xCu);
    }

    [(HOInitialSetupStateController *)self _checkForAppOnboardingWillFinish];
    onboardingCompleteFuture2 = [(HOInitialSetupStateController *)self onboardingCompleteFuture];
    [onboardingCompleteFuture2 finishWithNoResult];
  }
}

- (id)_presentiCloudDisabledControllerWithState:(unint64_t)state andStatus:(unint64_t)status
{
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromHMHomeManagerDataSyncState();
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Presenting data syncing controller for state %@", &v13, 0xCu);
  }

  v9 = objc_alloc_init(HOiCloudDisabledViewController);
  [(HOiCloudDisabledViewController *)v9 setDataSyncState:state];
  [(HOiCloudDisabledViewController *)v9 setStatus:status];
  [(HOiCloudDisabledViewController *)v9 setModalPresentationStyle:0];
  [(HOInitialSetupStateController *)self setPresentediCloudWarningController:v9];
  delegate = [(HOInitialSetupStateController *)self delegate];
  v11 = [delegate stateController:self presentViewController:v9 forState:1];

  return v11;
}

- (id)_presentDataSyncingControllerWithState:(unint64_t)state
{
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromHMHomeManagerDataSyncState();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting data syncing controller for state %{public}@", &v11, 0xCu);
  }

  v7 = objc_alloc_init(HODataSyncingViewController);
  [(HODataSyncingViewController *)v7 setDataSyncState:state];
  [(HODataSyncingViewController *)v7 setModalPresentationStyle:1];
  [(HOInitialSetupStateController *)self setPresentedDataSyncingController:v7];
  delegate = [(HOInitialSetupStateController *)self delegate];
  v9 = [delegate stateController:self presentViewController:v7 forState:2];

  return v9;
}

- (id)_presentOnboardingWithStates:(id)states withHome:(id)home
{
  statesCopy = states;
  homeCopy = home;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [HOOnboardingRootNavigationController stringForOnboardingStates:statesCopy];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Displaying onboarding for states %@", &v14, 0xCu);
  }

  v10 = [[HOOnboardingRootNavigationController alloc] initWithOnboardingStates:statesCopy withHome:homeCopy];
  [(HOOnboardingRootNavigationController *)v10 setOnboardingDelegate:self];
  [(HOOnboardingRootNavigationController *)v10 setModalPresentationStyle:2];
  [(HOInitialSetupStateController *)self setPresentedOnboardingController:v10];
  delegate = [(HOInitialSetupStateController *)self delegate];
  v12 = [delegate stateController:self presentViewController:v10 forState:3];

  return v12;
}

- (id)_dismissPresentedViewControllerIfNeeded
{
  v3 = +[NAFuture futureWithNoResult];
  v4 = [(HOInitialSetupStateController *)self _presentedViewControllerForState:[(HOInitialSetupStateController *)self presentationState]];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      presentationState = [(HOInitialSetupStateController *)self presentationState];
      if (presentationState > 3)
      {
        v10 = @"(unknown)";
      }

      else
      {
        v10 = off_1000C22A0[presentationState];
      }

      v39 = 136315650;
      v40 = "[HOInitialSetupStateController _dismissPresentedViewControllerIfNeeded]";
      v41 = 2112;
      v42 = v5;
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) onboardingRootNav is nil because presentedVC = %@ | presentationState = %@", &v39, 0x20u);
    }
  }

  hasNextStepInRestrictedGuestIncomingInvitationFlow = [(__CFString *)v7 hasNextStepInRestrictedGuestIncomingInvitationFlow];
  visibleViewController = [(__CFString *)v7 visibleViewController];
  if ([visibleViewController conformsToProtocol:&OBJC_PROTOCOL___HOOnboardingChildViewController])
  {
    v13 = visibleViewController;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (objc_opt_respondsToSelector())
  {
    didUserTriggerOnboardingDismissal = [v14 didUserTriggerOnboardingDismissal];
    if (!hasNextStepInRestrictedGuestIncomingInvitationFlow)
    {
LABEL_19:
      if (!v5)
      {
        delegate = [(HOInitialSetupStateController *)self delegate];
        currentlyPresentedViewController = [delegate currentlyPresentedViewController];

        v21 = HFLogForCategory();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (currentlyPresentedViewController)
        {
          if (!v22)
          {
LABEL_41:

            [(HOInitialSetupStateController *)self _setPresentedViewController:0 forState:[(HOInitialSetupStateController *)self presentationState]];
            [(HOInitialSetupStateController *)self setPresentationState:0];
            v36 = v3;
            v3 = v36;
            goto LABEL_45;
          }

          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v39 = 138412546;
          v40 = v24;
          v41 = 2112;
          v42 = currentlyPresentedViewController;
          v25 = "%@: No presentedVC to dismiss, but delegate has presented view controller: %@";
          v26 = v21;
          v27 = 22;
        }

        else
        {
          if (!v22)
          {
            goto LABEL_41;
          }

          v35 = objc_opt_class();
          v24 = NSStringFromClass(v35);
          v39 = 138412290;
          v40 = v24;
          v25 = "%@: No presentedVC to dismiss, and delegate doesn't have a view controller presented";
          v26 = v21;
          v27 = 12;
        }

        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, &v39, v27);

        goto LABEL_41;
      }

      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        presentationState2 = [(HOInitialSetupStateController *)self presentationState];
        if (presentationState2 > 3)
        {
          v18 = @"(unknown)";
        }

        else
        {
          v18 = off_1000C22A0[presentationState2];
        }

        v39 = 138412546;
        v40 = v18;
        v41 = 2112;
        v42 = v5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Dismissing presented initial setup state %@ VC: %@", &v39, 0x16u);
      }

      presentingViewController = [(__CFString *)v5 presentingViewController];
      if (!presentingViewController)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_33;
        }

        presentingViewController = HFLogForCategory();
        if (os_log_type_enabled(presentingViewController, OS_LOG_TYPE_DEFAULT))
        {
          presentationState3 = [(HOInitialSetupStateController *)self presentationState];
          if (presentationState3 > 3)
          {
            v34 = @"(unknown)";
          }

          else
          {
            v34 = off_1000C22A0[presentationState3];
          }

          v39 = 138412546;
          v40 = v5;
          v41 = 2112;
          v42 = v34;
          _os_log_impl(&_mh_execute_header, presentingViewController, OS_LOG_TYPE_DEFAULT, "No presenting VC for presented VC %@ even though we think it's presented! Presentation state: %@", &v39, 0x16u);
        }
      }

LABEL_33:
      currentlyPresentedViewController = [(HOInitialSetupStateController *)self delegate];
      [(__CFString *)currentlyPresentedViewController stateController:self dismissViewController:v5 forState:[(HOInitialSetupStateController *)self presentationState]];
      v3 = v21 = v3;
      goto LABEL_41;
    }
  }

  else
  {
    didUserTriggerOnboardingDismissal = 0;
    if (!hasNextStepInRestrictedGuestIncomingInvitationFlow)
    {
      goto LABEL_19;
    }
  }

  if (([(HOInitialSetupStateController *)self presentationState]!= 3) | didUserTriggerOnboardingDismissal & 1)
  {
    goto LABEL_19;
  }

  v28 = HFLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    visibleViewController2 = [(__CFString *)v7 visibleViewController];
    presentationState4 = [(HOInitialSetupStateController *)self presentationState];
    if (presentationState4 > 3)
    {
      v31 = @"(unknown)";
    }

    else
    {
      v31 = off_1000C22A0[presentationState4];
    }

    v39 = 136315650;
    v40 = "[HOInitialSetupStateController _dismissPresentedViewControllerIfNeeded]";
    v41 = 2112;
    v42 = visibleViewController2;
    v43 = 2112;
    v44 = v31;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "(%s) Not dismissing the currently presented restricted guest incoming invitation onboarding flow, because it should move onto the next view controller instead of dismissing | visibleVC = %@ | state = %@", &v39, 0x20u);
  }

  v36 = +[NAFuture futureWithNoResult];
LABEL_45:
  v37 = v36;

  return v37;
}

- (void)setPresentationState:(unint64_t)state
{
  if (self->_presentationState != state)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = v7;
      presentationState = self->_presentationState;
      if (presentationState > 3)
      {
        v10 = @"(unknown)";
      }

      else
      {
        v10 = off_1000C22A0[presentationState];
      }

      if (state > 3)
      {
        v11 = @"(unknown)";
      }

      else
      {
        v11 = off_1000C22A0[state];
      }

      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Changing presentation state from %@ to %@", &v12, 0x20u);
    }
  }

  self->_presentationState = state;
}

- (void)setPresentedOnboardingController:(id)controller
{
  controllerCopy = controller;
  v5 = self->_presentedOnboardingController;
  v6 = controllerCopy;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v5)
    {
      v8 = [(HOOnboardingRootNavigationController *)v5 isEqual:v6];

      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v5 = HFLogForCategory();
    if (os_log_type_enabled(&v5->super.super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      presentedOnboardingController = self->_presentedOnboardingController;
      v13 = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = presentedOnboardingController;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, &v5->super.super.super.super, OS_LOG_TYPE_DEFAULT, "%@: Changing presented onboarding controller from %@ to %@", &v13, 0x20u);
    }
  }

LABEL_10:
  v12 = self->_presentedOnboardingController;
  self->_presentedOnboardingController = v7;
}

- (id)_presentedViewControllerForState:(unint64_t)state
{
  presentediCloudWarningController = 0;
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        presentediCloudWarningController = [(HOInitialSetupStateController *)self presentediCloudWarningController];
      }

      goto LABEL_12;
    }

    delegate = [(HOInitialSetupStateController *)self delegate];
    currentlyPresentedViewController = [delegate currentlyPresentedViewController];
    presentedOnboardingController = [(HOInitialSetupStateController *)self presentedOnboardingController];

    if (currentlyPresentedViewController != presentedOnboardingController)
    {
      presentediCloudWarningController = 0;
      goto LABEL_12;
    }

LABEL_10:
    presentediCloudWarningController = [(HOInitialSetupStateController *)self presentedOnboardingController];
    goto LABEL_12;
  }

  if (state == 2)
  {
    presentediCloudWarningController = [(HOInitialSetupStateController *)self presentedDataSyncingController];
    goto LABEL_12;
  }

  if (state == 3)
  {
    goto LABEL_10;
  }

LABEL_12:

  return presentediCloudWarningController;
}

- (void)_setPresentedViewController:(id)controller forState:(unint64_t)state
{
  controllerCopy = controller;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    if (state > 3)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_1000C22A0[state];
    }

    v20 = 138412802;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Setting presented view controller for state %@ VC: %@", &v20, 0x20u);
  }

  presentationState = [(HOInitialSetupStateController *)self presentationState];
  switch(presentationState)
  {
    case 1uLL:
      objc_opt_class();
      v18 = controllerCopy;
      if (v18)
      {
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v15 = v19;
        if (!v15)
        {
          sub_10007FD6C();
        }
      }

      else
      {
        v15 = 0;
      }

      [(HOInitialSetupStateController *)self setPresentediCloudWarningController:v15];
      goto LABEL_33;
    case 2uLL:
      objc_opt_class();
      v16 = controllerCopy;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v15 = v17;
        if (!v15)
        {
          sub_10007FD6C();
        }
      }

      else
      {
        v15 = 0;
      }

      [(HOInitialSetupStateController *)self setPresentedDataSyncingController:v15];
      goto LABEL_33;
    case 3uLL:
      objc_opt_class();
      v13 = controllerCopy;
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        if (!v15)
        {
          sub_10007FD6C();
        }
      }

      else
      {
        v15 = 0;
      }

      [(HOInitialSetupStateController *)self setPresentedOnboardingController:v15];
LABEL_33:

      break;
  }
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOInitialSetupStateController] didChangeHome", v7, 2u);
  }

  [(HOInitialSetupStateController *)self reloadState];
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)load
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOInitialSetupStateController] homeManagerDidFinishInitialDatabaseLoad", v5, 2u);
  }

  [(HOInitialSetupStateController *)self reloadState];
}

- (void)homeManager:(id)manager didUpdateStateForIncomingInvitations:(id)invitations
{
  invitationsCopy = invitations;
  if ([invitationsCopy count] == 1)
  {
    firstObject = [invitationsCopy firstObject];
    if ([firstObject invitationState] == 5)
    {

      goto LABEL_8;
    }

    firstObject2 = [invitationsCopy firstObject];
    invitationState = [firstObject2 invitationState];

    if (invitationState == 3)
    {
      goto LABEL_8;
    }
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[HOInitialSetupStateController] didUpdateStateForIncomingInvitations", v10, 2u);
  }

  [(HOInitialSetupStateController *)self reloadState];
LABEL_8:
}

- (void)homeManagerDidUpdateDataSyncState:(id)state
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOInitialSetupStateController] homeManagerDidUpdateDataSyncState", v5, 2u);
  }

  [(HOInitialSetupStateController *)self reloadState];
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMHomeManagerStatusToString();
    v8 = 134218242;
    statusCopy = status;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOInitialSetupStateController] homeManagerdidUpdateStatus | status = %lu (%{public}@)", &v8, 0x16u);
  }

  [(HOInitialSetupStateController *)self reloadState];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  homeCopy = home;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    pendingHomeIDsFromInvitations = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v13 = 136315650;
    v14 = "[HOInitialSetupStateController homeManager:didAddHome:]";
    v15 = 2112;
    v16 = homeCopy;
    v17 = 2112;
    v18 = pendingHomeIDsFromInvitations;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) added new home = %@ | Removing new home from pendingHomeIDs if possible. Remaining pending homes = %@", &v13, 0x20u);
  }

  pendingHomeIDsFromInvitations2 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  uuid = [homeCopy uuid];
  v10 = [pendingHomeIDsFromInvitations2 containsObject:uuid];

  if (v10)
  {
    pendingHomeIDsFromInvitations3 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    uuid2 = [homeCopy uuid];
    [pendingHomeIDsFromInvitations3 removeObject:uuid2];
  }
}

- (void)onboardingNavigationControllerDidFinish:(id)finish
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismissing onboarding if needed and finishing onboardingCompleteFuture", buf, 2u);
  }

  _dismissPresentedViewControllerIfNeeded = [(HOInitialSetupStateController *)self _dismissPresentedViewControllerIfNeeded];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000EE50;
  v7[3] = &unk_1000C2280;
  v7[4] = self;
  v6 = [_dismissPresentedViewControllerIfNeeded addSuccessBlock:v7];
}

- (void)onboardingNavigationController:(id)controller acceptedInvitationAndWaitingForHomeToLand:(id)land
{
  controllerCopy = controller;
  landCopy = land;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [landCopy hf_prettyDescription];
    *buf = 136315650;
    v20 = "[HOInitialSetupStateController onboardingNavigationController:acceptedInvitationAndWaitingForHomeToLand:]";
    v21 = 2112;
    v22 = hf_prettyDescription;
    v23 = 2112;
    v24 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was accepted and is pending for new home to land. invitation = %@ | navigationController = %@", buf, 0x20u);
  }

  v10 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v10 homeManager];
  homes = [homeManager homes];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000F08C;
  v17[3] = &unk_1000C20C0;
  v13 = landCopy;
  v18 = v13;
  v14 = [homes na_any:v17];

  if ((v14 & 1) == 0)
  {
    pendingHomeIDsFromInvitations = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    homeUUID = [v13 homeUUID];
    [pendingHomeIDsFromInvitations na_safeAddObject:homeUUID];
  }
}

- (void)onboardingNavigationController:(id)controller didAcceptInvitation:(id)invitation
{
  controllerCopy = controller;
  invitationCopy = invitation;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [invitationCopy hf_prettyDescription];
    pendingHomeIDsFromInvitations = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v16 = 136315906;
    v17 = "[HOInitialSetupStateController onboardingNavigationController:didAcceptInvitation:]";
    v18 = 2112;
    v19 = hf_prettyDescription;
    v20 = 2112;
    v21 = pendingHomeIDsFromInvitations;
    v22 = 2112;
    v23 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation acceptance completed. invitation = %@ | pending homes = %@ | navigationController = %@", &v16, 0x2Au);
  }

  pendingHomeIDsFromInvitations2 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  homeUUID = [invitationCopy homeUUID];
  v13 = [pendingHomeIDsFromInvitations2 containsObject:homeUUID];

  if (v13)
  {
    pendingHomeIDsFromInvitations3 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    homeUUID2 = [invitationCopy homeUUID];
    [pendingHomeIDsFromInvitations3 removeObject:homeUUID2];
  }
}

- (void)onboardingNavigationController:(id)controller didDeclineInvitation:(id)invitation
{
  controllerCopy = controller;
  invitationCopy = invitation;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [invitationCopy hf_prettyDescription];
    pendingHomeIDsFromInvitations = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v16 = 136315906;
    v17 = "[HOInitialSetupStateController onboardingNavigationController:didDeclineInvitation:]";
    v18 = 2112;
    v19 = hf_prettyDescription;
    v20 = 2112;
    v21 = pendingHomeIDsFromInvitations;
    v22 = 2112;
    v23 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was declined. Invitation's home is no longer pending. invitation = %@ | pending homes = %@ | navigationController = %@", &v16, 0x2Au);
  }

  pendingHomeIDsFromInvitations2 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  homeUUID = [invitationCopy homeUUID];
  v13 = [pendingHomeIDsFromInvitations2 containsObject:homeUUID];

  if (v13)
  {
    pendingHomeIDsFromInvitations3 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    homeUUID2 = [invitationCopy homeUUID];
    [pendingHomeIDsFromInvitations3 removeObject:homeUUID2];
  }
}

- (void)onboardingNavigationController:(id)controller didIgnoreInvitation:(id)invitation
{
  controllerCopy = controller;
  invitationCopy = invitation;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [invitationCopy hf_prettyDescription];
    pendingHomeIDsFromInvitations = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v16 = 136315906;
    v17 = "[HOInitialSetupStateController onboardingNavigationController:didIgnoreInvitation:]";
    v18 = 2112;
    v19 = hf_prettyDescription;
    v20 = 2112;
    v21 = pendingHomeIDsFromInvitations;
    v22 = 2112;
    v23 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was ignored. Invitation's home is no longer pending. invitation = %@ | pending homes = %@ | navigationController = %@", &v16, 0x2Au);
  }

  pendingHomeIDsFromInvitations2 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  homeUUID = [invitationCopy homeUUID];
  v13 = [pendingHomeIDsFromInvitations2 containsObject:homeUUID];

  if (v13)
  {
    pendingHomeIDsFromInvitations3 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    homeUUID2 = [invitationCopy homeUUID];
    [pendingHomeIDsFromInvitations3 removeObject:homeUUID2];
  }
}

- (void)onboardingNavigationController:(id)controller didReportJunkInvitation:(id)invitation
{
  controllerCopy = controller;
  invitationCopy = invitation;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [invitationCopy hf_prettyDescription];
    pendingHomeIDsFromInvitations = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v16 = 136315906;
    v17 = "[HOInitialSetupStateController onboardingNavigationController:didReportJunkInvitation:]";
    v18 = 2112;
    v19 = hf_prettyDescription;
    v20 = 2112;
    v21 = pendingHomeIDsFromInvitations;
    v22 = 2112;
    v23 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was reported as junk. Invitation's home is no longer pending. invitation = %@ | pending homes = %@ | navigationController = %@", &v16, 0x2Au);
  }

  pendingHomeIDsFromInvitations2 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  homeUUID = [invitationCopy homeUUID];
  v13 = [pendingHomeIDsFromInvitations2 containsObject:homeUUID];

  if (v13)
  {
    pendingHomeIDsFromInvitations3 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    homeUUID2 = [invitationCopy homeUUID];
    [pendingHomeIDsFromInvitations3 removeObject:homeUUID2];
  }
}

- (void)onboardingNavigationController:(id)controller didDecideLaterInvitation:(id)invitation error:(id)error
{
  controllerCopy = controller;
  invitationCopy = invitation;
  errorCopy = error;
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [invitationCopy hf_prettyDescription];
    pendingHomeIDsFromInvitations = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v19 = 136316162;
    v20 = "[HOInitialSetupStateController onboardingNavigationController:didDecideLaterInvitation:error:]";
    v21 = 2112;
    v22 = hf_prettyDescription;
    v23 = 2112;
    v24 = pendingHomeIDsFromInvitations;
    v25 = 2112;
    v26 = errorCopy;
    v27 = 2112;
    v28 = controllerCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was marked as decided later. Invitation's home is no longer pending. invitation = %@ | pending homes = %@ | error = %@ | navigationController = %@", &v19, 0x34u);
  }

  pendingHomeIDsFromInvitations2 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  homeUUID = [invitationCopy homeUUID];
  v16 = [pendingHomeIDsFromInvitations2 containsObject:homeUUID];

  if (v16)
  {
    pendingHomeIDsFromInvitations3 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    homeUUID2 = [invitationCopy homeUUID];
    [pendingHomeIDsFromInvitations3 removeObject:homeUUID2];
  }
}

- (HOInitialSetupStateControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end