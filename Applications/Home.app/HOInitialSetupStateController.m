@interface HOInitialSetupStateController
- (HOInitialSetupStateController)initWithDelegate:(id)a3;
- (HOInitialSetupStateControllerDelegate)delegate;
- (id)_dismissPresentedViewControllerIfNeeded;
- (id)_presentDataSyncingControllerWithState:(unint64_t)a3;
- (id)_presentOnboardingWithStates:(id)a3 withHome:(id)a4;
- (id)_presentedViewControllerForState:(unint64_t)a3;
- (id)_presentiCloudDisabledControllerWithState:(unint64_t)a3 andStatus:(unint64_t)a4;
- (void)_checkForAppOnboardingWillFinish;
- (void)_reloadStateWithInvitation:(id)a3 home:(id)a4;
- (void)_setPresentedViewController:(id)a3 forState:(unint64_t)a4;
- (void)_updateOnboardingCompleteFutureForNewPresentationState:(unint64_t)a3;
- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didUpdateStateForIncomingInvitations:(id)a4;
- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4;
- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3;
- (void)homeManagerDidUpdateDataSyncState:(id)a3;
- (void)onboardingNavigationController:(id)a3 acceptedInvitationAndWaitingForHomeToLand:(id)a4;
- (void)onboardingNavigationController:(id)a3 didAcceptInvitation:(id)a4;
- (void)onboardingNavigationController:(id)a3 didDecideLaterInvitation:(id)a4 error:(id)a5;
- (void)onboardingNavigationController:(id)a3 didDeclineInvitation:(id)a4;
- (void)onboardingNavigationController:(id)a3 didIgnoreInvitation:(id)a4;
- (void)onboardingNavigationController:(id)a3 didReportJunkInvitation:(id)a4;
- (void)onboardingNavigationControllerDidFinish:(id)a3;
- (void)reloadState;
- (void)setPresentationState:(unint64_t)a3;
- (void)setPresentedOnboardingController:(id)a3;
- (void)showOnboardingIfNeededForHomeInvitation:(id)a3;
@end

@implementation HOInitialSetupStateController

- (HOInitialSetupStateController)initWithDelegate:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HOInitialSetupStateController;
  v5 = [(HOInitialSetupStateController *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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
  v3 = [(HOInitialSetupStateController *)self dispatcher];
  v4 = [v3 homeFuture];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C5B8;
  v6[3] = &unk_1000C21E0;
  objc_copyWeak(&v7, &location);
  v5 = [v4 addCompletionBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)showOnboardingIfNeededForHomeInvitation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HOInitialSetupStateController *)self dispatcher];
  v6 = [v5 homeFuture];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000C730;
  v9[3] = &unk_1000C2208;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v10 = v7;
  v8 = [v6 addCompletionBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_reloadStateWithInvitation:(id)a3 home:(id)a4
{
  v75 = a3;
  v6 = a4;
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

  [HUHomeEnergyWrapper setupGridForecastSnapshotsFor:v6];
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v75 hf_prettyDescription];
    *buf = 138412546;
    *v84 = v9;
    *&v84[8] = 2112;
    *&v84[10] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Recomputing initial setup state. invitation = %@ | home = %@", buf, 0x16u);
  }

  v10 = [(HOInitialSetupStateController *)self dispatcher];
  v11 = [v10 homeManager];
  v76 = [v11 dataSyncState];

  v12 = [(HOInitialSetupStateController *)self dispatcher];
  v13 = [v12 homeManager];
  v73 = [v13 status];

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

    v76 = [v7 unsignedIntegerValue];
  }

  v15 = [HOOnboardingRootNavigationController onboardingStatesForHome:v6];
  v16 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  v74 = [HOOnboardingRootNavigationController onboardingStatesForHome:v6 pendingHomeIDsFromInvitations:v16];

  v17 = HFLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromHMHomeManagerDataSyncState();
    v19 = HMHomeManagerStatusToString();
    v20 = [HOOnboardingRootNavigationController stringForOnboardingStates:v74];
    v21 = [(HOInitialSetupStateController *)self dispatcher];
    v22 = [v21 home];
    v23 = [v22 hf_prettyDescription];
    *buf = 138413314;
    *v84 = v18;
    *&v84[8] = 2112;
    *&v84[10] = v19;
    *&v84[18] = 2048;
    v85 = v73;
    v86 = 2112;
    v87 = v20;
    v88 = 2112;
    v89 = v23;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "dataSyncState: %@, status: %@ (%lu), desired onboardingStates: %@ for home: %@", buf, 0x34u);
  }

  if (+[HFUtilities isAMac])
  {
    if (v76 == 3)
    {
      v24 = 1;
    }

    else
    {
      v24 = (v73 >> 5) & 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = +[HFUtilities isPressDemoModeEnabled];
  v26 = [(HOInitialSetupStateController *)self dispatcher];
  v27 = [v26 homeManager];

  v28 = [v27 hh2MigrationFailedError];
  if (v28)
  {
    v29 = (v76 == 4) & ~[v27 hasOptedToHH2];
  }

  else
  {
    v29 = 0;
  }

  v30 = HFLogForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v27 hh2MigrationFailedError];
    v32 = [v27 hasOptedToHH2];
    *buf = 67109634;
    *v84 = v29;
    *&v84[4] = 2112;
    *&v84[6] = v31;
    *&v84[14] = 1024;
    *&v84[16] = v32;
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

    if (v76 != 1)
    {
      v72 = 0;
      v33 = 0;
      v34 = 2;
      goto LABEL_51;
    }

    if (![v74 count])
    {
      if (v75)
      {
        v35 = [&off_1000CB470 mutableCopy];
        objc_opt_class();
        v42 = v75;
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
          v48 = [v42 hf_prettyDescription];
          *buf = 136315650;
          *v84 = "[HOInitialSetupStateController _reloadStateWithInvitation:home:]";
          *&v84[8] = 2112;
          *&v84[10] = v47;
          *&v84[18] = 2112;
          v85 = v48;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "(%s) Including onboardingStates %@ for %@", buf, 0x20u);
        }

        v72 = 0;
        v33 = 0;
        v34 = 3;
        v74 = v71;
        goto LABEL_50;
      }

      v67 = [(HOInitialSetupStateController *)self presentedOnboardingController];
      v68 = [v67 isDisplayingRestrictedGuestIncomingInvitationFlow];

      if (!v68)
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
        v70 = [0 hf_prettyDescription];
        *buf = 136315650;
        *v84 = "[HOInitialSetupStateController _reloadStateWithInvitation:home:]";
        *&v84[8] = 2112;
        *&v84[10] = v69;
        *&v84[18] = 2112;
        v85 = v70;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "(%s) Including onboardingStates %@ for %@", buf, 0x20u);
      }

      v72 = 0;
      v33 = 0;
      goto LABEL_49;
    }

    v37 = [v74 containsObject:&off_1000CB710];
    v38 = [(HOInitialSetupStateController *)self presentedOnboardingController];
    v39 = [v38 onboardingStates];
    v40 = [v39 containsObject:&off_1000CB710];

    if (v40 & 1 | ((v37 & 1) == 0))
    {
      if (v37 & 1 | ((v40 & 1) == 0))
      {
        if (v75)
        {
          v41 = [v75 hf_prettyDescription];
          v72 = [NSString stringWithFormat:@"Show Invitation %@", v41];

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
  v50 = [(HOInitialSetupStateController *)self dispatcher];
  v51 = [v50 home];
  v52 = [HFServiceMigrationController homeNeedsMigration:v51];

  if (((v76 == 1) & v52) == 1)
  {
    v53 = [HFServiceMigrationController alloc];
    v54 = [(HOInitialSetupStateController *)self dispatcher];
    v55 = [v54 home];
    v56 = [v53 initWithHome:v55];

    v57 = [v56 migrateServicesToAccessory];
  }

  v58 = 0;
  if (v6 && v76 == 1)
  {
    if ((+[HFUtilities isInternalTest]& 1) != 0)
    {
      v58 = 0;
    }

    else
    {
      v59 = [HFRedesignMigrationController alloc];
      v60 = [(HOInitialSetupStateController *)self dispatcher];
      v61 = [v60 home];
      v58 = [v59 initWithHome:v61];

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
    v63 = [(HOInitialSetupStateController *)self _dismissPresentedViewControllerIfNeeded];
    [(HOInitialSetupStateController *)self setPresentationState:v34];
    objc_initWeak(buf, self);
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10000D354;
    v79[3] = &unk_1000C2230;
    objc_copyWeak(v82, buf);
    v82[1] = v34;
    v82[2] = v76;
    v82[3] = v73;
    v80 = v74;
    v81 = v6;
    v64 = [v63 flatMap:v79];
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
      v66 = [(HOInitialSetupStateController *)self presentedDataSyncingController];
      [v66 setDataSyncState:v76];
    }

    [(HOInitialSetupStateController *)self _updateOnboardingCompleteFutureForNewPresentationState:v34];
    [v58 performMigrationSuccessTasks];
  }

LABEL_67:
}

- (void)_checkForAppOnboardingWillFinish
{
  objc_initWeak(&location, self);
  v3 = [(HOInitialSetupStateController *)self onboardingCompleteFuture];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D594;
  v5[3] = &unk_1000C2258;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  v4 = [v3 flatMap:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_updateOnboardingCompleteFutureForNewPresentationState:(unint64_t)a3
{
  if (a3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(HOInitialSetupStateController *)self dispatcher];
      v6 = [v5 home];
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting onboardingCompleteFuture for home: %@", &v13, 0xCu);
    }

    v7 = objc_alloc_init(NAFuture);
    [(HOInitialSetupStateController *)self setOnboardingCompleteFuture:v7];
  }

  else
  {
    v8 = [(HOInitialSetupStateController *)self onboardingCompleteFuture];
    v9 = [v8 isFinished];

    if (v9)
    {
      return;
    }

    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(HOInitialSetupStateController *)self dispatcher];
      v12 = [v11 home];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "After evaluating the dataSync status and onboarding states for home %@, we decided we don't need to show any onboarding or dataSyncInProgress screens. Finishing onboardingCompleteFuture.", &v13, 0xCu);
    }

    [(HOInitialSetupStateController *)self _checkForAppOnboardingWillFinish];
    v7 = [(HOInitialSetupStateController *)self onboardingCompleteFuture];
    [v7 finishWithNoResult];
  }
}

- (id)_presentiCloudDisabledControllerWithState:(unint64_t)a3 andStatus:(unint64_t)a4
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
  [(HOiCloudDisabledViewController *)v9 setDataSyncState:a3];
  [(HOiCloudDisabledViewController *)v9 setStatus:a4];
  [(HOiCloudDisabledViewController *)v9 setModalPresentationStyle:0];
  [(HOInitialSetupStateController *)self setPresentediCloudWarningController:v9];
  v10 = [(HOInitialSetupStateController *)self delegate];
  v11 = [v10 stateController:self presentViewController:v9 forState:1];

  return v11;
}

- (id)_presentDataSyncingControllerWithState:(unint64_t)a3
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
  [(HODataSyncingViewController *)v7 setDataSyncState:a3];
  [(HODataSyncingViewController *)v7 setModalPresentationStyle:1];
  [(HOInitialSetupStateController *)self setPresentedDataSyncingController:v7];
  v8 = [(HOInitialSetupStateController *)self delegate];
  v9 = [v8 stateController:self presentViewController:v7 forState:2];

  return v9;
}

- (id)_presentOnboardingWithStates:(id)a3 withHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [HOOnboardingRootNavigationController stringForOnboardingStates:v6];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Displaying onboarding for states %@", &v14, 0xCu);
  }

  v10 = [[HOOnboardingRootNavigationController alloc] initWithOnboardingStates:v6 withHome:v7];
  [(HOOnboardingRootNavigationController *)v10 setOnboardingDelegate:self];
  [(HOOnboardingRootNavigationController *)v10 setModalPresentationStyle:2];
  [(HOInitialSetupStateController *)self setPresentedOnboardingController:v10];
  v11 = [(HOInitialSetupStateController *)self delegate];
  v12 = [v11 stateController:self presentViewController:v10 forState:3];

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
      v9 = [(HOInitialSetupStateController *)self presentationState];
      if (v9 > 3)
      {
        v10 = @"(unknown)";
      }

      else
      {
        v10 = off_1000C22A0[v9];
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

  v11 = [(__CFString *)v7 hasNextStepInRestrictedGuestIncomingInvitationFlow];
  v12 = [(__CFString *)v7 visibleViewController];
  if ([v12 conformsToProtocol:&OBJC_PROTOCOL___HOOnboardingChildViewController])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (objc_opt_respondsToSelector())
  {
    v15 = [v14 didUserTriggerOnboardingDismissal];
    if (!v11)
    {
LABEL_19:
      if (!v5)
      {
        v19 = [(HOInitialSetupStateController *)self delegate];
        v20 = [v19 currentlyPresentedViewController];

        v21 = HFLogForCategory();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20)
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
          v42 = v20;
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
        v17 = [(HOInitialSetupStateController *)self presentationState];
        if (v17 > 3)
        {
          v18 = @"(unknown)";
        }

        else
        {
          v18 = off_1000C22A0[v17];
        }

        v39 = 138412546;
        v40 = v18;
        v41 = 2112;
        v42 = v5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Dismissing presented initial setup state %@ VC: %@", &v39, 0x16u);
      }

      v32 = [(__CFString *)v5 presentingViewController];
      if (!v32)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_33;
        }

        v32 = HFLogForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [(HOInitialSetupStateController *)self presentationState];
          if (v33 > 3)
          {
            v34 = @"(unknown)";
          }

          else
          {
            v34 = off_1000C22A0[v33];
          }

          v39 = 138412546;
          v40 = v5;
          v41 = 2112;
          v42 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No presenting VC for presented VC %@ even though we think it's presented! Presentation state: %@", &v39, 0x16u);
        }
      }

LABEL_33:
      v20 = [(HOInitialSetupStateController *)self delegate];
      [(__CFString *)v20 stateController:self dismissViewController:v5 forState:[(HOInitialSetupStateController *)self presentationState]];
      v3 = v21 = v3;
      goto LABEL_41;
    }
  }

  else
  {
    v15 = 0;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (([(HOInitialSetupStateController *)self presentationState]!= 3) | v15 & 1)
  {
    goto LABEL_19;
  }

  v28 = HFLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(__CFString *)v7 visibleViewController];
    v30 = [(HOInitialSetupStateController *)self presentationState];
    if (v30 > 3)
    {
      v31 = @"(unknown)";
    }

    else
    {
      v31 = off_1000C22A0[v30];
    }

    v39 = 136315650;
    v40 = "[HOInitialSetupStateController _dismissPresentedViewControllerIfNeeded]";
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v31;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "(%s) Not dismissing the currently presented restricted guest incoming invitation onboarding flow, because it should move onto the next view controller instead of dismissing | visibleVC = %@ | state = %@", &v39, 0x20u);
  }

  v36 = +[NAFuture futureWithNoResult];
LABEL_45:
  v37 = v36;

  return v37;
}

- (void)setPresentationState:(unint64_t)a3
{
  if (self->_presentationState != a3)
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

      if (a3 > 3)
      {
        v11 = @"(unknown)";
      }

      else
      {
        v11 = off_1000C22A0[a3];
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

  self->_presentationState = a3;
}

- (void)setPresentedOnboardingController:(id)a3
{
  v4 = a3;
  v5 = self->_presentedOnboardingController;
  v6 = v4;
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

- (id)_presentedViewControllerForState:(unint64_t)a3
{
  v4 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = [(HOInitialSetupStateController *)self presentediCloudWarningController];
      }

      goto LABEL_12;
    }

    v5 = [(HOInitialSetupStateController *)self delegate];
    v6 = [v5 currentlyPresentedViewController];
    v7 = [(HOInitialSetupStateController *)self presentedOnboardingController];

    if (v6 != v7)
    {
      v4 = 0;
      goto LABEL_12;
    }

LABEL_10:
    v4 = [(HOInitialSetupStateController *)self presentedOnboardingController];
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v4 = [(HOInitialSetupStateController *)self presentedDataSyncingController];
    goto LABEL_12;
  }

  if (a3 == 3)
  {
    goto LABEL_10;
  }

LABEL_12:

  return v4;
}

- (void)_setPresentedViewController:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    if (a4 > 3)
    {
      v11 = @"(unknown)";
    }

    else
    {
      v11 = off_1000C22A0[a4];
    }

    v20 = 138412802;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Setting presented view controller for state %@ VC: %@", &v20, 0x20u);
  }

  v12 = [(HOInitialSetupStateController *)self presentationState];
  switch(v12)
  {
    case 1uLL:
      objc_opt_class();
      v18 = v6;
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
      v16 = v6;
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
      v13 = v6;
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

- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5
{
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOInitialSetupStateController] didChangeHome", v7, 2u);
  }

  [(HOInitialSetupStateController *)self reloadState];
}

- (void)homeManagerDidFinishInitialDatabaseLoad:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOInitialSetupStateController] homeManagerDidFinishInitialDatabaseLoad", v5, 2u);
  }

  [(HOInitialSetupStateController *)self reloadState];
}

- (void)homeManager:(id)a3 didUpdateStateForIncomingInvitations:(id)a4
{
  v5 = a4;
  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    if ([v6 invitationState] == 5)
    {

      goto LABEL_8;
    }

    v7 = [v5 firstObject];
    v8 = [v7 invitationState];

    if (v8 == 3)
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

- (void)homeManagerDidUpdateDataSyncState:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOInitialSetupStateController] homeManagerDidUpdateDataSyncState", v5, 2u);
  }

  [(HOInitialSetupStateController *)self reloadState];
}

- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4
{
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMHomeManagerStatusToString();
    v8 = 134218242;
    v9 = a4;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HOInitialSetupStateController] homeManagerdidUpdateStatus | status = %lu (%{public}@)", &v8, 0x16u);
  }

  [(HOInitialSetupStateController *)self reloadState];
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v13 = 136315650;
    v14 = "[HOInitialSetupStateController homeManager:didAddHome:]";
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) added new home = %@ | Removing new home from pendingHomeIDs if possible. Remaining pending homes = %@", &v13, 0x20u);
  }

  v8 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  v9 = [v5 uuid];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v12 = [v5 uuid];
    [v11 removeObject:v12];
  }
}

- (void)onboardingNavigationControllerDidFinish:(id)a3
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismissing onboarding if needed and finishing onboardingCompleteFuture", buf, 2u);
  }

  v5 = [(HOInitialSetupStateController *)self _dismissPresentedViewControllerIfNeeded];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000EE50;
  v7[3] = &unk_1000C2280;
  v7[4] = self;
  v6 = [v5 addSuccessBlock:v7];
}

- (void)onboardingNavigationController:(id)a3 acceptedInvitationAndWaitingForHomeToLand:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 hf_prettyDescription];
    *buf = 136315650;
    v20 = "[HOInitialSetupStateController onboardingNavigationController:acceptedInvitationAndWaitingForHomeToLand:]";
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was accepted and is pending for new home to land. invitation = %@ | navigationController = %@", buf, 0x20u);
  }

  v10 = +[HFHomeKitDispatcher sharedDispatcher];
  v11 = [v10 homeManager];
  v12 = [v11 homes];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000F08C;
  v17[3] = &unk_1000C20C0;
  v13 = v7;
  v18 = v13;
  v14 = [v12 na_any:v17];

  if ((v14 & 1) == 0)
  {
    v15 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v16 = [v13 homeUUID];
    [v15 na_safeAddObject:v16];
  }
}

- (void)onboardingNavigationController:(id)a3 didAcceptInvitation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 hf_prettyDescription];
    v10 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v16 = 136315906;
    v17 = "[HOInitialSetupStateController onboardingNavigationController:didAcceptInvitation:]";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation acceptance completed. invitation = %@ | pending homes = %@ | navigationController = %@", &v16, 0x2Au);
  }

  v11 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  v12 = [v7 homeUUID];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v15 = [v7 homeUUID];
    [v14 removeObject:v15];
  }
}

- (void)onboardingNavigationController:(id)a3 didDeclineInvitation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 hf_prettyDescription];
    v10 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v16 = 136315906;
    v17 = "[HOInitialSetupStateController onboardingNavigationController:didDeclineInvitation:]";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was declined. Invitation's home is no longer pending. invitation = %@ | pending homes = %@ | navigationController = %@", &v16, 0x2Au);
  }

  v11 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  v12 = [v7 homeUUID];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v15 = [v7 homeUUID];
    [v14 removeObject:v15];
  }
}

- (void)onboardingNavigationController:(id)a3 didIgnoreInvitation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 hf_prettyDescription];
    v10 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v16 = 136315906;
    v17 = "[HOInitialSetupStateController onboardingNavigationController:didIgnoreInvitation:]";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was ignored. Invitation's home is no longer pending. invitation = %@ | pending homes = %@ | navigationController = %@", &v16, 0x2Au);
  }

  v11 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  v12 = [v7 homeUUID];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v15 = [v7 homeUUID];
    [v14 removeObject:v15];
  }
}

- (void)onboardingNavigationController:(id)a3 didReportJunkInvitation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 hf_prettyDescription];
    v10 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v16 = 136315906;
    v17 = "[HOInitialSetupStateController onboardingNavigationController:didReportJunkInvitation:]";
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was reported as junk. Invitation's home is no longer pending. invitation = %@ | pending homes = %@ | navigationController = %@", &v16, 0x2Au);
  }

  v11 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  v12 = [v7 homeUUID];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v15 = [v7 homeUUID];
    [v14 removeObject:v15];
  }
}

- (void)onboardingNavigationController:(id)a3 didDecideLaterInvitation:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 hf_prettyDescription];
    v13 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v19 = 136316162;
    v20 = "[HOInitialSetupStateController onboardingNavigationController:didDecideLaterInvitation:error:]";
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%s) Incoming invitation was marked as decided later. Invitation's home is no longer pending. invitation = %@ | pending homes = %@ | error = %@ | navigationController = %@", &v19, 0x34u);
  }

  v14 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
  v15 = [v9 homeUUID];
  v16 = [v14 containsObject:v15];

  if (v16)
  {
    v17 = [(HOInitialSetupStateController *)self pendingHomeIDsFromInvitations];
    v18 = [v9 homeUUID];
    [v17 removeObject:v18];
  }
}

- (HOInitialSetupStateControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end