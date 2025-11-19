@interface BuddyEnrollmentCoordinator
- (BFFNavigationController)navController;
- (BOOL)_shouldPopBackToDisclosureOnFailureForFlowItem:(id)a3;
- (BOOL)_shouldUseNavController;
- (BOOL)installWiFiProfileIfNeeded:(id *)a3;
- (BOOL)shouldAllowStartOver;
- (BOOL)shouldDoReturnToService;
- (BOOL)shouldPresentEnrollmentStatus;
- (BuddyEnrollmentCoordinator)initWithPasscodeCacheManager:(id)a3 buddyPreferences:(id)a4 buddyPreferencesEphemeral:(id)a5 featureFlags:(id)a6 networkProvider:(id)a7 managedConfiguration:(id)a8 showModalWiFiSettingsBlock:(id)a9 exitBuddyBlock:(id)a10;
- (DMCServiceDiscoveryHelper)servicediscoveryHelper;
- (UIViewController)baseViewController;
- (id)_cachedAuthenticationResults;
- (id)_defaultAlertForError:(id)a3;
- (id)_errorDismissAction;
- (id)_fatalUIStatesForFlowItem:(id)a3;
- (id)_makeMigrationUIConfiguration;
- (id)_stateStringWithStepName:(id)a3 status:(id)a4;
- (id)_statusStringToBeDisplayed;
- (id)_uiStatesHostedByFlowItem:(id)a3;
- (id)_uiStatesHostedByFlowItemClass:(Class)a3;
- (id)_viewControllerToRemoveWhenItemIsDone;
- (id)awaitConfigurationViewController;
- (id)disclosureViewController;
- (id)installationViewController;
- (id)languageStrings;
- (id)localeString;
- (id)maidAuthenticationController;
- (id)maidSignInController;
- (id)mandatoryUpdateController;
- (id)migrationDoneViewController;
- (id)migrationEnrollmentViewController;
- (id)migrationUnenrollmentViewController;
- (id)nativeAuthViewController;
- (id)passcodeViewController;
- (id)retrievalViewController;
- (id)viewControllerForUIState:(unint64_t)a3;
- (id)webAuthViewController;
- (unint64_t)_uiStateForControllerClass:(Class)a3;
- (void)_addNetworkAcquisitionHandler:(id)a3;
- (void)_addNetworkAcquisitionHandler:(id)a3 withTimeout:(double)a4;
- (void)_cacheAuthenticationResults:(id)a3;
- (void)_cleanupCachedValues;
- (void)_enrollInBetaProgramWithDictionary:(id)a3;
- (void)_midMigrationWiFiPickerWasDismissed:(BOOL)a3 completionHandler:(id)a4;
- (void)_popOutOfEnrollmentFlow;
- (void)_popToDisclosureAndRestartEnrollment;
- (void)_presentAlert:(id)a3 onViewController:(id)a4;
- (void)_presentError:(id)a3;
- (void)_requestInteractiveMAIDAuthenticationWithManagedAppleID:(id)a3 personaID:(id)a4 ephemeral:(BOOL)a5 completionHandler:(id)a6;
- (void)_setInProgress:(BOOL)a3 onViewController:(id)a4;
- (void)_showInternalUIUpdated:(id)a3;
- (void)_showPaneForUIState:(unint64_t)a3;
- (void)_showWiFiPicker;
- (void)_showWiFiPickerWithDismissalTriggers:(unint64_t)a3 completionHandler:(id)a4;
- (void)_startMDMMigrationFlow;
- (void)_startRegularMDMEnrollmentFlow;
- (void)_updateAppInstallationStatusUIWithFinishedNumber:(unint64_t)a3 totalNumber:(unint64_t)a4 type:(id)a5;
- (void)_updateEnrollmentStateUIIfNeeded;
- (void)_updateEnrollmentStateWithStepName:(id)a3 status:(id)a4;
- (void)_updateMigrationStateWithStepName:(id)a3 status:(id)a4;
- (void)_updateMigrationUIConfiguration;
- (void)_updateUIIfNeeded;
- (void)configureMDMWithCompletionHandler:(id)a3;
- (void)deviceActivated;
- (void)disclosureViewController:(id)a3 didReceiveUserConsent:(BOOL)a4;
- (void)disclosureViewControllerWantsToShowWiFiPicker:(id)a3;
- (void)discoverAndStoreEnrollmentChannelWithEnrollmentURL:(id)a3 certificateDatas:(id)a4 completionHandler:(id)a5;
- (void)dismissMigrationScene;
- (void)enrollmentFlowController:(id)a3 appInstallationStatusUpdatedForType:(id)a4 totalNumber:(unint64_t)a5 finishedNumber:(unint64_t)a6;
- (void)enrollmentFlowController:(id)a3 didInstallEnrollmentProfile:(id)a4;
- (void)enrollmentFlowController:(id)a3 didReceiveCloudConfiguration:(id)a4;
- (void)enrollmentFlowController:(id)a3 didUpdateEnrollmentMethod:(unint64_t)a4;
- (void)enrollmentFlowController:(id)a3 performingEnrollmentStepWithName:(id)a4 status:(id)a5;
- (void)ensureActivationWithCompletionHandler:(id)a3;
- (void)ensureNetworkConnectionWithCompletionHandler:(id)a3;
- (void)fetchEnrollmentProfileWithWebAuthURL:(id)a3 machineInfo:(id)a4 anchorCertificateRefs:(id)a5 completionHandler:(id)a6;
- (void)interruptEnrollment;
- (void)loginViewController:(id)a3 didreceiveUsername:(id)a4 password:(id)a5;
- (void)migrationDoneViewControllerWantsToExitBuddy:(id)a3;
- (void)migrationFlowController:(id)a3 appInstallationStatusUpdatedForType:(id)a4 totalNumber:(unint64_t)a5 finishedNumber:(unint64_t)a6;
- (void)migrationFlowController:(id)a3 performingEnrollmentStepWithName:(id)a4 status:(id)a5;
- (void)migrationFlowController:(id)a3 performingMigrationStepWithName:(id)a4 status:(id)a5;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (void)networkAcquired;
- (void)passcodeEntryController:(id)a3 didEnterPasscode:(id)a4;
- (void)profileInstallationDone;
- (void)recievedProfile:(id)a3;
- (void)requestDeviceErasureWithCompletionHandler:(id)a3;
- (void)requestDevicePasscodeDataWithCompletionHandler:(id)a3;
- (void)requestDevicePasscodeWithCompletionHandler:(id)a3;
- (void)requestMAIDAuthenticationWithManagedAppleID:(id)a3 personaID:(id)a4 ephemeral:(BOOL)a5 requireAppleMAID:(BOOL)a6 completionHandler:(id)a7;
- (void)requestMAIDSignInWithAuthenticationResults:(id)a3 personaID:(id)a4 makeiTunesAccountActive:(BOOL)a5 completionHandler:(id)a6;
- (void)requestMDMUsernameAndPasswordWithErrorMessage:(id)a3 completionHandler:(id)a4;
- (void)requestSoftwareUpdateWithInfoDictionary:(id)a3 completionHandler:(id)a4;
- (void)requestUserConsentForMigrationWithPendingCloudConfig:(id)a3 originalEnrollmentType:(unint64_t)a4 isMandatory:(BOOL)a5 deadline:(id)a6 completionHandler:(id)a7;
- (void)requestUserConsentWithCloudConfig:(id)a3 completionHandler:(id)a4;
- (void)restoreChoiceWasNotRestore;
- (void)retrieveProfileDataWithBaseViewController:(id)a3 navigationController:(id)a4 completionHandler:(id)a5;
- (void)returnToServiceFlowCompleted;
- (void)setCurrentFlowItem:(id)a3;
- (void)setNavigationController:(id)a3;
- (void)setTargetUIState:(unint64_t)a3;
- (void)shouldShowFlowItem:(id)a3 resultBlock:(id)a4;
- (void)showAwaitingDeviceConfigurationScene;
- (void)showEnrollmentCompletionScene;
- (void)showEnrollmentFailure:(id)a3;
- (void)showFetchingCloudConfigurationScene;
- (void)showInstallingEnrollmentProfileScene;
- (void)showMigrationCompletionScene;
- (void)showMigrationFailure:(id)a3;
- (void)startEnrollmentFlow;
- (void)suggestRestoreForAccountWithUsername:(id)a3 personaID:(id)a4 completionHandler:(id)a5;
- (void)updateLanguage:(id)a3 locale:(id)a4 completionHandler:(id)a5;
- (void)verifyEnrollmentStateWithCompletionHandler:(id)a3;
- (void)webAuthCanceled:(id)a3;
@end

@implementation BuddyEnrollmentCoordinator

- (BuddyEnrollmentCoordinator)initWithPasscodeCacheManager:(id)a3 buddyPreferences:(id)a4 buddyPreferencesEphemeral:(id)a5 featureFlags:(id)a6 networkProvider:(id)a7 managedConfiguration:(id)a8 showModalWiFiSettingsBlock:(id)a9 exitBuddyBlock:(id)a10
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v38 = 0;
  objc_storeStrong(&v38, a5);
  v37 = 0;
  objc_storeStrong(&v37, a6);
  v36 = 0;
  objc_storeStrong(&v36, a7);
  v35 = 0;
  objc_storeStrong(&v35, a8);
  v34 = 0;
  objc_storeStrong(&v34, a9);
  v33 = 0;
  objc_storeStrong(&v33, a10);
  v15 = v41;
  v41 = 0;
  v32.receiver = v15;
  v32.super_class = BuddyEnrollmentCoordinator;
  v41 = [(BuddyEnrollmentCoordinator *)&v32 init];
  objc_storeStrong(&v41, v41);
  if (v41)
  {
    objc_storeStrong(v41 + 17, location[0]);
    objc_storeStrong(v41 + 18, obj);
    objc_storeStrong(v41 + 19, v38);
    objc_storeStrong(v41 + 2, v37);
    objc_storeStrong(v41 + 3, v36);
    sub_100115D7C();
    v16 = objc_opt_new();
    v17 = *(v41 + 29);
    *(v41 + 29) = v16;

    objc_storeStrong(v41 + 4, v35);
    v18 = objc_retainBlock(v34);
    v19 = *(v41 + 6);
    *(v41 + 6) = v18;

    v20 = objc_retainBlock(v33);
    v21 = *(v41 + 7);
    *(v41 + 7) = v20;

    v22 = objc_opt_new();
    v23 = *(v41 + 20);
    *(v41 + 20) = v22;

    v24 = objc_opt_new();
    v25 = *(v41 + 27);
    *(v41 + 27) = v24;

    v26 = +[DMCMigrationFlowController shouldShowMigrationUI];
    *(v41 + 8) = v26 & 1;
    v27 = objc_opt_new();
    v28 = *(v41 + 43);
    *(v41 + 43) = v27;

    if (os_variant_has_internal_ui())
    {
      v29 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v29 addObserver:v41 selector:"_showInternalUIUpdated:" name:@"BYShowInternalUIChanged" object:0];
    }
  }

  v30 = v41;
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v41, 0);
  return v30;
}

- (void)startEnrollmentFlow
{
  v5 = self;
  oslog[1] = a2;
  if ([(BuddyEnrollmentCoordinator *)self isMDMMigrationMode])
  {
    oslog[0] = _BYLoggingFacility();
    v3 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      sub_1000B25DC(buf, "[BuddyEnrollmentCoordinator startEnrollmentFlow]");
      _os_log_impl(&_mh_execute_header, oslog[0], v3, "%s Doing MDM migration", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    [(BuddyEnrollmentCoordinator *)v5 _startMDMMigrationFlow];
  }

  else
  {
    v2 = _BYLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000B25DC(v6, "[BuddyEnrollmentCoordinator startEnrollmentFlow]");
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Doing regular DEP enrollment", v6, 0xCu);
    }

    objc_storeStrong(&v2, 0);
    [(BuddyEnrollmentCoordinator *)v5 _startRegularMDMEnrollmentFlow];
  }
}

- (void)_startMDMMigrationFlow
{
  v21 = self;
  location[1] = a2;
  v2 = [(BuddyEnrollmentCoordinator *)self migrationFlowController];

  if (v2)
  {
    location[0] = _BYLoggingFacility();
    v19 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      v3 = location[0];
      v4 = v19;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v3, v4, "Migration flow is ongoing", buf, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else if ([(BuddyEnrollmentCoordinator *)v21 targetUIState]== 14)
  {
    v17 = _BYLoggingFacility();
    v16 = 2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v5 = v17;
      v6 = v16;
      sub_10006AA68(v15);
      _os_log_debug_impl(&_mh_execute_header, v5, v6, "Migration flow is not needed!", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    [(BuddyEnrollmentCoordinator *)v21 _updateUIIfNeeded];
  }

  else
  {
    sub_100116204();
    v14 = objc_opt_new();
    v13 = [[DMCMigrationFlowController alloc] initWithPresenter:v21 managedConfigurationHelper:v14];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100116318;
    v11 = &unk_10032D088;
    v12 = v21;
    [v13 startMDMMigrationWithCompletionHandler:&v7];
    [(BuddyEnrollmentCoordinator *)v21 setMigrationFlowController:v13];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }
}

- (void)_startRegularMDMEnrollmentFlow
{
  v29 = self;
  location[1] = a2;
  v2 = [(BuddyEnrollmentCoordinator *)self enrollmentFlowController];

  if (v2)
  {
    location[0] = _BYLoggingFacility();
    v27 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      v3 = location[0];
      v4 = v27;
      sub_10006AA68(buf);
      _os_log_debug_impl(&_mh_execute_header, v3, v4, "Enrollment flow is ongoing", buf, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    v24 = 0;
    v5 = 0;
    if (![(BuddyEnrollmentCoordinator *)v29 shouldDoReturnToService])
    {
      v25 = [(BuddyEnrollmentCoordinator *)v29 managedConfiguration];
      v24 = 1;
      v5 = [(MCProfileConnection *)v25 shouldShowSetupAssistant]^ 1;
    }

    if (v24)
    {
    }

    if (v5)
    {
      v23 = _BYLoggingFacility();
      v22 = 2;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v6 = v23;
        v7 = v22;
        sub_10006AA68(v21);
        _os_log_debug_impl(&_mh_execute_header, v6, v7, "MC says enrollment is not needed", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      [(BuddyEnrollmentCoordinator *)v29 setTargetUIState:14];
    }

    if ([(BuddyEnrollmentCoordinator *)v29 targetUIState]== 14)
    {
      oslog = _BYLoggingFacility();
      v19 = 2;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v8 = oslog;
        v9 = v19;
        sub_10006AA68(v18);
        _os_log_debug_impl(&_mh_execute_header, v8, v9, "Enrollment flow is not needed!", v18, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [(BuddyEnrollmentCoordinator *)v29 _updateUIIfNeeded];
    }

    else
    {
      [(BuddyEnrollmentCoordinator *)v29 setTargetUIState:0];
      sub_100116204();
      v17 = objc_opt_new();
      v16 = [DMCEnrollmentFlowController enrollmentFlowControllerWithPresenter:v29 managedConfigurationHelper:v17];
      [v16 setDelegate:v29];
      v10 = _NSConcreteStackBlock;
      v11 = -1073741824;
      v12 = 0;
      v13 = sub_100116850;
      v14 = &unk_10032D088;
      v15 = v29;
      [v16 startInBuddyEnrollmentFlowRestartIfFail:0 completionHandler:&v10];
      [(BuddyEnrollmentCoordinator *)v29 setEnrollmentFlowController:v16];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }
  }
}

- (void)retrieveProfileDataWithBaseViewController:(id)a3 navigationController:(id)a4 completionHandler:(id)a5
{
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34 = 0;
  objc_storeStrong(&v34, a5);
  [(BuddyEnrollmentCoordinator *)v37 setBaseViewController:location[0]];
  [(BuddyEnrollmentCoordinator *)v37 setNavController:v35];
  v7 = +[MDMCloudConfiguration sharedConfiguration];
  v33 = [v7 enrollmentServerURL];

  v8 = +[MDMCloudConfiguration sharedConfiguration];
  v32 = [v8 enrollmentAnchorCertificates];

  v31 = objc_opt_new();
  v24 = _NSConcreteStackBlock;
  v25 = -1073741824;
  v26 = 0;
  v27 = sub_100116E98;
  v28 = &unk_10032D0B0;
  v29 = v37;
  v30 = v34;
  [v31 setProfileInstallationRequestHandler:&v24];
  v23 = [DMCEnrollmentFlowController enrollmentFlowControllerWithPresenter:v37 managedConfigurationHelper:v31];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_100117000;
  v19 = &unk_10032D0D8;
  v20 = v37;
  v21 = v34;
  v22 = objc_retainBlock(&v15);
  v9 = +[MDMCloudConfiguration sharedConfiguration];
  v10 = [v9 details];
  v11 = [v10 objectForKeyedSubscript:kCCRemoteManagementAccountIdentifierKey];
  v12 = [v11 length] != 0;

  v13 = [(BuddyEnrollmentCoordinator *)v37 buddyPreferences];
  v14 = [(BYPreferencesController *)v13 BOOLForKey:@"RestoreChoice"];

  if (v12)
  {
    [v23 restartORGOEnrollmentWithServiceURL:v33 anchorCertificates:v32 isPostRestoration:v14 & 1 restartIfFail:0 cleanupIfFail:1 completionHandler:v22];
  }

  else
  {
    [v23 startORGOEnrollmentFlowWithServiceURL:v33 anchorCertificates:v32 restartIfFail:0 completionHandler:v22];
  }

  [(BuddyEnrollmentCoordinator *)v37 setEnrollmentFlowController:v23];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)profileInstallationDone
{
  v2 = [(BuddyEnrollmentCoordinator *)self profileInstallationRequestCompleteHandler];

  if (v2)
  {
    v3 = [(BuddyEnrollmentCoordinator *)self profileInstallationRequestCompleteHandler];
    v4 = [(BuddyEnrollmentCoordinator *)self profileIdentifier];
    (*(v3 + 2))(v3, v4, 0, 0);
  }

  [(BuddyEnrollmentCoordinator *)self _cacheAuthenticationResults:0];
  [(BuddyEnrollmentCoordinator *)self setProfileInstallationRequestCompleteHandler:0];
}

- (void)discoverAndStoreEnrollmentChannelWithEnrollmentURL:(id)a3 certificateDatas:(id)a4 completionHandler:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v7 = +[MCProfileConnection sharedConnection];
  v18 = [v7 getMachineInfo];

  v17 = certificatesFromDERCertificateDataArray();
  v8 = [(BuddyEnrollmentCoordinator *)v22 servicediscoveryHelper];
  v9 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10011743C;
  v14 = &unk_10032D100;
  v15 = v22;
  v16 = v19;
  [(DMCServiceDiscoveryHelper *)v8 determineEnrollmentMethodWithServiceURL:v9 enrollmentType:1 machineInfo:v18 anchorCertificateRefs:v17 completionHandler:&v10];

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)verifyEnrollmentStateWithCompletionHandler:(id)a3
{
  v53 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[MDMCloudConfiguration sharedConfiguration];
  v4 = [v3 isStoredProfileInstalled];

  if (v4)
  {
    v51 = _BYLoggingFacility();
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v51;
      v6 = v50;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v5, v6, "Stored profile has been installed already, return.", buf, 2u);
    }

    objc_storeStrong(&v51, 0);
    (*(location[0] + 2))(location[0], 0);
    v48 = 1;
  }

  else
  {
    v7 = +[MDMCloudConfiguration sharedConfiguration];
    v8 = [v7 details];
    v47 = [v8 objectForKeyedSubscript:kCCRemoteManagementAccountIdentifierKey];

    if ([v47 length])
    {
      v11 = +[ACAccountStore defaultStore];
      v43 = [v11 dmc_remoteManagementAccountForIdentifier:v47];

      if (v43)
      {
        v39 = [v43 dmc_bearerToken];
        if ([v39 length])
        {
          v35 = _BYLoggingFacility();
          v34 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v35;
            v17 = v34;
            sub_10006AA68(v33);
            _os_log_impl(&_mh_execute_header, v16, v17, "Cloud config indicates that there's a RMAccount with bearer token.", v33, 2u);
          }

          objc_storeStrong(&v35, 0);
          v18 = +[MDMCloudConfiguration sharedConfiguration];
          v32 = [v18 enrollmentServerURL];

          v19 = +[MCProfileConnection sharedConnection];
          v31 = [v19 getMachineInfo];

          v20 = +[MDMCloudConfiguration sharedConfiguration];
          v30 = [v20 enrollmentAnchorCertificates];

          v29 = certificatesFromDERCertificateDataArray();
          v21 = [(BuddyEnrollmentCoordinator *)v53 servicediscoveryHelper];
          v54 = MDMBearerAuthTokensToken;
          v55 = v39;
          v22 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v23 = _NSConcreteStackBlock;
          v24 = -1073741824;
          v25 = 0;
          v26 = sub_100117BE0;
          v27 = &unk_10032D128;
          v28 = location[0];
          [(DMCServiceDiscoveryHelper *)v21 fetchEnrollmentProfileWithServiceURL:v32 authTokens:v22 enrollmentMethod:1 machineInfo:v31 anchorCertificateRefs:v29 completionHandler:&v23];

          objc_storeStrong(&v28, 0);
          objc_storeStrong(&v29, 0);
          objc_storeStrong(&v30, 0);
          objc_storeStrong(&v31, 0);
          objc_storeStrong(&v32, 0);
          v48 = 0;
        }

        else
        {
          v38 = _BYLoggingFacility();
          v37 = 16;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v14 = v38;
            v15 = v37;
            sub_10006AA68(v36);
            _os_log_error_impl(&_mh_execute_header, v14, v15, "No bearer token.", v36, 2u);
          }

          objc_storeStrong(&v38, 0);
          (*(location[0] + 2))(location[0], 1);
          v48 = 1;
        }

        objc_storeStrong(&v39, 0);
      }

      else
      {
        oslog = _BYLoggingFacility();
        v41 = 16;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v12 = oslog;
          v13 = v41;
          sub_10006AA68(v40);
          _os_log_error_impl(&_mh_execute_header, v12, v13, "Cloud config has RMAccount id but there's no RM Account locally.", v40, 2u);
        }

        objc_storeStrong(&oslog, 0);
        (*(location[0] + 2))(location[0], 1);
        v48 = 1;
      }

      objc_storeStrong(&v43, 0);
    }

    else
    {
      v46 = _BYLoggingFacility();
      v45 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v46;
        v10 = v45;
        sub_10006AA68(v44);
        _os_log_impl(&_mh_execute_header, v9, v10, "No RM Account in the cloud config, return.", v44, 2u);
      }

      objc_storeStrong(&v46, 0);
      (*(location[0] + 2))(location[0], 0);
      v48 = 1;
    }

    objc_storeStrong(&v47, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)interruptEnrollment
{
  [(BuddyEnrollmentCoordinator *)self _cacheAuthenticationResults:0, a2];
  v2 = [(BuddyEnrollmentCoordinator *)self enrollmentFlowController];
  [(DMCEnrollmentFlowController *)v2 terminateEnrollmentFlow];

  [(BuddyEnrollmentCoordinator *)self setPresentingViewController:0];
  [(BuddyEnrollmentCoordinator *)self setPendingUIState:0];
  [(BuddyEnrollmentCoordinator *)self setPresentingUIState:0];
  [(BuddyEnrollmentCoordinator *)self setTargetUIState:0];
  [(BuddyEnrollmentCoordinator *)self setEnrollmentFlowController:0];
}

- (DMCServiceDiscoveryHelper)servicediscoveryHelper
{
  if (!self->_servicediscoveryHelper)
  {
    v2 = objc_opt_new();
    servicediscoveryHelper = self->_servicediscoveryHelper;
    self->_servicediscoveryHelper = v2;
  }

  v4 = self->_servicediscoveryHelper;

  return v4;
}

- (BOOL)shouldPresentEnrollmentStatus
{
  has_internal_ui = os_variant_has_internal_ui();
  v5 = 0;
  v3 = 0;
  if (has_internal_ui)
  {
    v6 = [(BuddyEnrollmentCoordinator *)self buddyPreferencesEphemeral];
    v5 = 1;
    v3 = [(BYPreferencesController *)v6 BOOLForKey:@"showInternalUI"];
  }

  v8 = v3 & 1;
  if (v5)
  {
  }

  return v8;
}

- (void)setTargetUIState:(unint64_t)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  if (self->_targetUIState != a3)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100077E48(buf, v4);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Setting target UI state: %lu", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6->_targetUIState = v4;
  }
}

- (void)updateLanguage:(id)a3 locale:(id)a4 completionHandler:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v7 = [(BuddyEnrollmentCoordinator *)v21 languageSettingBlock];

  if (v7)
  {
    v8 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1001181E8;
    v13 = &unk_10032D150;
    v14 = v21;
    v15 = location[0];
    v16 = v19;
    v17 = v18;
    dispatch_async(v8, &block);

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    (*(v18 + 2))(v18, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)ensureNetworkConnectionWithCompletionHandler:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100118370;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_midMigrationWiFiPickerWasDismissed:(BOOL)a3 completionHandler:(id)a4
{
  v43 = self;
  v42 = a2;
  v41 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v4);

  v39 = _BYLoggingFacility();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    if (v41)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    sub_100071CBC(buf, v5);
    _os_log_impl(&_mh_execute_header, v39, v38, "Wi-Fi picker was dismissed. User attempted association: %{public}@", buf, 0xCu);
  }

  objc_storeStrong(&v39, 0);
  v6 = [(BuddyEnrollmentCoordinator *)v43 networkProvider];
  v7 = [(BuddyNetworkProvider *)v6 networkReachable];

  if (v7)
  {
    oslog = _BYLoggingFacility();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = oslog;
      v9 = v36;
      sub_10006AA68(v35);
      _os_log_impl(&_mh_execute_header, v8, v9, "Network is reachable", v35, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(location + 2))(location, 0);
    v34 = 1;
  }

  else if (v41)
  {
    v28 = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v28;
      v17 = v27;
      sub_10006AA68(v26);
      _os_log_impl(&_mh_execute_header, v16, v17, "Waiting for association to finish", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    v18 = [(BuddyEnrollmentCoordinator *)v43 wifiAssociationWatcher];
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_100118E2C;
    v23 = &unk_10032AFD0;
    v24 = v43;
    v25 = location;
    [(BuddyCloudConfigWiFiAssociationWatcher *)v18 waitForCurrentAssociationToFinishWithCompletionHandler:&v19];

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    v34 = 0;
  }

  else
  {
    v33 = _BYLoggingFacility();
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v10 = v33;
      v11 = v32;
      sub_10006AA68(v31);
      _os_log_error_impl(&_mh_execute_header, v10, v11, "Network is not reachable and user did not attempt association. Failing immediately.", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
    v12 = [(BuddyEnrollmentCoordinator *)v43 networkProvider];
    v13 = [(BuddyNetworkProvider *)v12 connectedOverWiFi];

    v30 = v13 & 1;
    v29 = 0;
    if (v13)
    {
      v14 = [NSError errorWithDomain:NSURLErrorDomain code:-1009 userInfo:0];
    }

    else
    {
      v14 = +[NSError buddy_makeCloudConfigMigrationNoNetworkSelectedError];
    }

    v15 = v29;
    v29 = v14;

    (*(location + 2))(location, v29);
    v34 = 1;
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)ensureActivationWithCompletionHandler:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[BuddyActivationConfiguration currentConfiguration];
  v4 = [v3 isActivated];

  if (v4)
  {
    (*(location[0] + 2))(location[0], 0);
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)v6 setActivationCompletionHandler:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)showFetchingCloudConfigurationScene
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100119248;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)requestUserConsentWithCloudConfig:(id)a3 completionHandler:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v5 = [(BuddyEnrollmentCoordinator *)v18 featureFlags];
  v6 = [(BuddyFeatureFlags *)v5 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if (v6)
  {
    (*(v16 + 2))(v16, 1);
    v15 = 1;
  }

  else
  {
    v7 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100119484;
    v12 = &unk_10032AFD0;
    v13 = v18;
    v14 = v16;
    dispatch_async(v7, &block);

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v15 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)requestMDMUsernameAndPasswordWithErrorMessage:(id)a3 completionHandler:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyEnrollmentCoordinator *)v7 setTargetUIState:5];
  [(BuddyEnrollmentCoordinator *)v7 setNativeAuthCompletionHandler:v5];
  [(BuddyEnrollmentCoordinator *)v7 setLastErrorMessage:location[0]];
  [(BuddyEnrollmentCoordinator *)v7 _updateUIIfNeeded];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchEnrollmentProfileWithWebAuthURL:(id)a3 machineInfo:(id)a4 anchorCertificateRefs:(id)a5 completionHandler:(id)a6
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = 0;
  objc_storeStrong(&v9, a6);
  [(BuddyEnrollmentCoordinator *)v13 setTargetUIState:6];
  [(BuddyEnrollmentCoordinator *)v13 setWebURL:location[0]];
  [(BuddyEnrollmentCoordinator *)v13 setMachineInfo:v11];
  [(BuddyEnrollmentCoordinator *)v13 setAnchorCerts:v10];
  [(BuddyEnrollmentCoordinator *)v13 setWebAuthCompletionHandler:v9];
  [(BuddyEnrollmentCoordinator *)v13 _updateUIIfNeeded];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)requestMAIDAuthenticationWithManagedAppleID:(id)a3 personaID:(id)a4 ephemeral:(BOOL)a5 requireAppleMAID:(BOOL)a6 completionHandler:(id)a7
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = a5;
  v24 = a6;
  v23 = 0;
  objc_storeStrong(&v23, a7);
  v22 = [(BuddyEnrollmentCoordinator *)v28 _cachedAuthenticationResults];
  if ([v22 count])
  {
    v11 = 0;
    if (v24)
    {
      v11 = +[DMCFeatureOverrides allowAnyMAIDToSignIn]^ 1;
    }

    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10011991C;
    v16 = &unk_10032D1A0;
    v20 = v23;
    v17 = v28;
    v18 = location[0];
    v19 = v26;
    v21 = v25;
    [BuddyAppleIDAuthManager silentAuthenticationWithAuthenticationResults:v22 requiresAppleMAID:v11 & 1 completion:&v12];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)v28 _requestInteractiveMAIDAuthenticationWithManagedAppleID:location[0] personaID:v26 ephemeral:v25 completionHandler:v23];
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_requestInteractiveMAIDAuthenticationWithManagedAppleID:(id)a3 personaID:(id)a4 ephemeral:(BOOL)a5 completionHandler:(id)a6
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a5;
  v21 = 0;
  objc_storeStrong(&v21, a6);
  v9 = [(BuddyEnrollmentCoordinator *)v25 featureFlags];
  v10 = [(BuddyFeatureFlags *)v9 isMDMEnrollmentFlowControllerAdoptionEnabled];

  if (v10)
  {
    [(BuddyEnrollmentCoordinator *)v25 setManagedAppleID:location[0]];
    [(BuddyEnrollmentCoordinator *)v25 setMaidAuthenticationCompletionHandler:v21];
    [(BuddyEnrollmentCoordinator *)v25 setTargetUIState:7];
    [(BuddyEnrollmentCoordinator *)v25 _updateUIIfNeeded];
    v20 = 1;
  }

  else
  {
    v11 = &_dispatch_main_q;
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_100119CDC;
    v16 = &unk_10032BC78;
    v17 = v25;
    v18 = location[0];
    v19 = v21;
    dispatch_async(v11, &v12);

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v20 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)requestMAIDSignInWithAuthenticationResults:(id)a3 personaID:(id)a4 makeiTunesAccountActive:(BOOL)a5 completionHandler:(id)a6
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a5;
  v21 = 0;
  objc_storeStrong(&v21, a6);
  v9 = [(BuddyEnrollmentCoordinator *)v25 featureFlags];
  v10 = [(BuddyFeatureFlags *)v9 isMDMEnrollmentFlowControllerAdoptionEnabled];

  if (v10)
  {
    [(BuddyEnrollmentCoordinator *)v25 setTargetUIState:8];
    [(BuddyEnrollmentCoordinator *)v25 _updateUIIfNeeded];
  }

  v11 = &_dispatch_main_q;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10011AB00;
  v16 = &unk_10032D218;
  v17 = v25;
  v18 = location[0];
  v20 = v21;
  v19 = v23;
  dispatch_async(v11, &v12);

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

- (void)suggestRestoreForAccountWithUsername:(id)a3 personaID:(id)a4 completionHandler:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = [(BuddyEnrollmentCoordinator *)v11 featureFlags];
  LOBYTE(a4) = [(BuddyFeatureFlags *)v7 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if (a4)
  {
    (*(v8 + 2))(v8, 1);
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)v11 setRestoreChoiceCompletionHandler:v8];
    [(BuddyEnrollmentCoordinator *)v11 setTargetUIState:10];
    [(BuddyEnrollmentCoordinator *)v11 _updateUIIfNeeded];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)showInstallingEnrollmentProfileScene
{
  v2 = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)v2 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0)
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:11];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)showAwaitingDeviceConfigurationScene
{
  v2 = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)v2 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0)
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:12];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)showEnrollmentCompletionScene
{
  v2 = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)v2 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0 && ![(BuddyEnrollmentCoordinator *)self isMDMMigrationMode])
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:14];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)showEnrollmentFailure:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![(BuddyEnrollmentCoordinator *)v14 isMDMMigrationMode]|| [BuddyCloudConfigController isCredentialsError:location[0]])
  {
    v3 = [(BuddyEnrollmentCoordinator *)v14 featureFlags];
    v4 = [(BuddyFeatureFlags *)v3 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

    if (v4)
    {
      v5 = &_dispatch_main_q;
      block = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_10011B798;
      v10 = &unk_10032B0D0;
      v11 = v14;
      dispatch_async(v5, &block);

      objc_storeStrong(&v11, 0);
    }

    else
    {
      [(BuddyEnrollmentCoordinator *)v14 _presentError:location[0]];
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)requestDeviceErasureWithCompletionHandler:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = objc_alloc_init(DDRResetOptions);
  [v11 setEraseDataPlan:1];
  v10 = [[DDRResetRequest alloc] initWithMode:4 options:v11 reason:@"Remote Management Unenroll"];
  v3 = +[DDRResetService sharedInstance];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10011B97C;
  v8 = &unk_10032B460;
  v9 = location[0];
  [(DDRResetService *)v3 resetWithRequest:v10 completion:&v4];

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)requestSoftwareUpdateWithInfoDictionary:(id)a3 completionHandler:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  [(BuddyEnrollmentCoordinator *)v13 setTargetUIState:9];
  v5 = [location[0] objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v6 = [v5 objectForKeyedSubscript:@"OSVersion"];
  [(BuddyEnrollmentCoordinator *)v13 setOsVersion:v6];

  v7 = [location[0] objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v8 = [v7 objectForKeyedSubscript:@"BuildVersion"];
  [(BuddyEnrollmentCoordinator *)v13 setBuildVersion:v8];

  v9 = [location[0] objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v10 = [v9 objectForKeyedSubscript:@"RequireBetaProgram"];

  [(BuddyEnrollmentCoordinator *)v13 _enrollInBetaProgramWithDictionary:v10];
  [(BuddyEnrollmentCoordinator *)v13 _updateUIIfNeeded];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)requestDevicePasscodeDataWithCompletionHandler:(id)a3
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = objc_alloc_init(BYBuddyDaemonGeneralClient);
  v40 = [v41 fetchAuthenticationContextForBiometric];
  v39 = [v40 externalizedContext];
  if (v39)
  {
    oslog = _BYLoggingFacility();
    v37 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(buf, "[BuddyEnrollmentCoordinator requestDevicePasscodeDataWithCompletionHandler:]");
      _os_log_debug_impl(&_mh_execute_header, oslog, v37, "%s: using externalizedContext from authenticationContextForBiometric", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyEnrollmentCoordinator *)v43 setPasscodeContext:v40];
  }

  else
  {
    v3 = [(BuddyEnrollmentCoordinator *)v43 passcodeContext];
    v4 = [(LAContext *)v3 externalizedContext];

    if (v4)
    {
      v36 = _BYLoggingFacility();
      v35 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B25DC(v49, "[BuddyEnrollmentCoordinator requestDevicePasscodeDataWithCompletionHandler:]");
        _os_log_debug_impl(&_mh_execute_header, v36, v35, "%s: using externalizedContext from local passcodeContext", v49, 0xCu);
      }

      objc_storeStrong(&v36, 0);
      v5 = [(BuddyEnrollmentCoordinator *)v43 passcodeContext];
      v6 = [(LAContext *)v5 externalizedContext];
      v7 = v39;
      v39 = v6;
    }
  }

  if (v39)
  {
    (*(location[0] + 2))(location[0], v39, 1, 0);
    v34 = 1;
  }

  else
  {
    v33 = _BYLoggingFacility();
    v32 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(v48, "[BuddyEnrollmentCoordinator requestDevicePasscodeDataWithCompletionHandler:]");
      _os_log_debug_impl(&_mh_execute_header, v33, v32, "%s: Prompting for authentication", v48, 0xCu);
    }

    objc_storeStrong(&v33, 0);
    v31 = objc_alloc_init(LAContext);
    v30 = 0;
    obj = 0;
    v8 = [v31 canEvaluatePolicy:1007 error:&obj];
    objc_storeStrong(&v30, obj);
    if (v8)
    {
      v9 = v31;
      v46[0] = &off_10033D148;
      v47[0] = &__kCFBooleanTrue;
      v46[1] = &off_10033D160;
      v10 = +[NSBundle mainBundle];
      v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_MIGRATION_PASSCODE_PROMPT_TITLE"];
      v12 = [(NSBundle *)v10 localizedStringForKey:v11 value:&stru_10032F900 table:@"Localizable"];
      v47[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
      v28 = v30;
      v14 = [v9 evaluatePolicy:1007 options:v13 error:&v28];
      objc_storeStrong(&v30, v28);

      if (v30)
      {
        v27 = _BYLoggingFacility();
        v26 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100071CBC(v45, v30);
          _os_log_error_impl(&_mh_execute_header, v27, v26, "Failed to evaluate policy with error: %{public}@", v45, 0xCu);
        }

        objc_storeStrong(&v27, 0);
      }

      else
      {
        v15 = [v31 externalizedContext];
        v16 = v39;
        v39 = v15;

        if (v39)
        {
          [(BuddyEnrollmentCoordinator *)v43 setPasscodeContext:v31];
        }
      }

      (*(location[0] + 2))();
    }

    else
    {
      v25 = _BYLoggingFacility();
      v24 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100071CBC(v44, v30);
        _os_log_error_impl(&_mh_execute_header, v25, v24, "Can not evaluate policy with error: %{public}@", v44, 0xCu);
      }

      objc_storeStrong(&v25, 0);
      v17 = v43;
      v18 = _NSConcreteStackBlock;
      v19 = -1073741824;
      v20 = 0;
      v21 = sub_10011C38C;
      v22 = &unk_10032D240;
      v23 = location[0];
      [(BuddyEnrollmentCoordinator *)v17 requestDevicePasscodeWithCompletionHandler:&v18];
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    v34 = 0;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (void)requestDevicePasscodeWithCompletionHandler:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyEnrollmentCoordinator *)v10 passcodeCacheManager];
  v4 = [(BYPasscodeCacheManager *)v3 cachedPasscode];

  if (v4)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000B25DC(buf, "[BuddyEnrollmentCoordinator requestDevicePasscodeWithCompletionHandler:]");
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s using cached passcode", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v5 = location[0];
    v6 = [(BuddyEnrollmentCoordinator *)v10 passcodeCacheManager];
    v7 = [(BYPasscodeCacheManager *)v6 cachedPasscode];
    v5[2](v5, v7, 0);
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)v10 setPasscodeEntryCompletionHandler:location[0]];
    [(BuddyEnrollmentCoordinator *)v10 setTargetUIState:3];
    [(BuddyEnrollmentCoordinator *)v10 _updateUIIfNeeded];
  }

  objc_storeStrong(location, 0);
}

- (void)requestUserConsentForMigrationWithPendingCloudConfig:(id)a3 originalEnrollmentType:(unint64_t)a4 isMandatory:(BOOL)a5 deadline:(id)a6 completionHandler:(id)a7
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = a4;
  v26 = a5;
  v25 = 0;
  objc_storeStrong(&v25, a6);
  v24 = 0;
  objc_storeStrong(&v24, a7);
  v11 = [(BuddyEnrollmentCoordinator *)v29 featureFlags];
  LOBYTE(a6) = [(BuddyFeatureFlags *)v11 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if (a6)
  {
    (*(v24 + 2))(v24, 1);
    v23 = 1;
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)v29 setTargetUIState:2];
    [(BuddyEnrollmentCoordinator *)v29 setCloudConfigConsentCompletionHandler:v24];
    [(BuddyEnrollmentCoordinator *)v29 setMigrationDeadline:v25];
    [(BuddyEnrollmentCoordinator *)v29 setIsMigrationMandatory:v26];
    [(BuddyEnrollmentCoordinator *)v29 setPendingCloudConfig:location[0]];
    oslog = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10011C8B8(buf, v25, v26);
      _os_log_impl(&_mh_execute_header, oslog, v21, "%s migrationDeadline: %@, isMigrationMandatory: %d", buf, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    v12 = v29;
    v13 = [(BuddyEnrollmentCoordinator *)v29 presentingViewController];
    [(BuddyEnrollmentCoordinator *)v12 _setInProgress:0 onViewController:v13];

    v14 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_10011C8EC;
    v19 = &unk_10032B0D0;
    v20 = v29;
    dispatch_async(v14, &block);

    objc_storeStrong(&v20, 0);
    v23 = 0;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)showMigrationCompletionScene
{
  v2 = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)v2 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0)
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:13];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)showMigrationFailure:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10011CAAC;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissMigrationScene
{
  v2 = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)v2 isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0)
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:14];
    [(BuddyEnrollmentCoordinator *)self setPresentingViewController:0];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)enrollmentFlowController:(id)a3 didReceiveCloudConfiguration:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = +[BuddyCloudConfigManager sharedManager];
  [v5 cloudConfigMayHaveChanged];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentFlowController:(id)a3 didUpdateEnrollmentMethod:(unint64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000A4DC0(buf, "[BuddyEnrollmentCoordinator enrollmentFlowController:didUpdateEnrollmentMethod:]", v6);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s %ld", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (v6 == 1)
  {
    [(BuddyEnrollmentCoordinator *)v8 setMdmEnrollmentChannel:2];
  }

  else if (v6 == 3)
  {
    [(BuddyEnrollmentCoordinator *)v8 setMdmEnrollmentChannel:1];
  }

  objc_storeStrong(location, 0);
}

- (void)enrollmentFlowController:(id)a3 didInstallEnrollmentProfile:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(BuddyEnrollmentCoordinator *)v7 _cacheAuthenticationResults:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentFlowController:(id)a3 performingEnrollmentStepWithName:(id)a4 status:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(BuddyEnrollmentCoordinator *)v10 _updateEnrollmentStateWithStepName:v8 status:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentFlowController:(id)a3 appInstallationStatusUpdatedForType:(id)a4 totalNumber:(unint64_t)a5 finishedNumber:(unint64_t)a6
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  [(BuddyEnrollmentCoordinator *)v11 _updateAppInstallationStatusUIWithFinishedNumber:a6 totalNumber:a5 type:v9, a6, a5];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)migrationFlowController:(id)a3 appInstallationStatusUpdatedForType:(id)a4 totalNumber:(unint64_t)a5 finishedNumber:(unint64_t)a6
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  [(BuddyEnrollmentCoordinator *)v11 _updateAppInstallationStatusUIWithFinishedNumber:a6 totalNumber:a5 type:v9, a6, a5];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)migrationFlowController:(id)a3 performingMigrationStepWithName:(id)a4 status:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(BuddyEnrollmentCoordinator *)v10 _updateMigrationStateWithStepName:v8 status:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)migrationFlowController:(id)a3 performingEnrollmentStepWithName:(id)a4 status:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(BuddyEnrollmentCoordinator *)v10 _updateEnrollmentStateWithStepName:v8 status:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)shouldShowFlowItem:(id)a3 resultBlock:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  oslog = _BYLoggingFacility();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D3D8(buf, "[BuddyEnrollmentCoordinator shouldShowFlowItem:resultBlock:]", location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, v16, "%s %@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (![(BuddyEnrollmentCoordinator *)v20 isMDMMigrationMode]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [(BuddyEnrollmentCoordinator *)v20 _uiStatesHostedByFlowItem:location[0]];
    v5 = [v12 allObjects];
    v11 = [v5 sortedArrayUsingSelector:"compare:"];

    v6 = [(BuddyEnrollmentCoordinator *)v20 targetUIState];
    v7 = [v11 lastObject];
    v8 = [v7 integerValue];

    if (v6 > v8)
    {
      (*(v18 + 2))(v18, 0, 0);
    }

    else
    {
      [(BuddyEnrollmentCoordinator *)v20 setRunningFlowItem:0];
      [(BuddyEnrollmentCoordinator *)v20 setPendingFlowItem:location[0]];
      [(BuddyEnrollmentCoordinator *)v20 setShouldShowFlowItemResultBlock:v18];
      v9 = [NSNumber numberWithUnsignedInteger:[(BuddyEnrollmentCoordinator *)v20 targetUIState]];
      v10 = [v12 containsObject:v9];

      if (v10)
      {
        [(BuddyEnrollmentCoordinator *)v20 _updateUIIfNeeded];
      }
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v15 = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_10011D3F8(v21, "[BuddyEnrollmentCoordinator shouldShowFlowItem:resultBlock:]", location[0]);
      _os_log_impl(&_mh_execute_header, v15, v14, "%s skipping flow item: %{public}@ due to MDM migration", v21, 0x16u);
    }

    objc_storeStrong(&v15, 0);
    (*(v18 + 2))(v18, 0, 0);
    v13 = 1;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldAllowStartOver
{
  v2 = [(BuddyEnrollmentCoordinator *)self presentingUIState];
  if (v2 < 2)
  {
    goto LABEL_12;
  }

  if (v2 - 2 < 2)
  {
    goto LABEL_13;
  }

  if (v2 == 4)
  {
    goto LABEL_12;
  }

  if (v2 - 5 < 3)
  {
    goto LABEL_13;
  }

  if (v2 == 8)
  {
    goto LABEL_12;
  }

  if (v2 - 9 < 2)
  {
    goto LABEL_13;
  }

  if (v2 == 11)
  {
    goto LABEL_12;
  }

  if (v2 == 12)
  {
LABEL_13:
    v4 = 1;
    return v4 & 1;
  }

  if (v2 != 13)
  {
    if (v2 != 14)
    {
      return v4 & 1;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  return v4 & 1;
}

- (BOOL)shouldDoReturnToService
{
  v2 = [(BuddyEnrollmentCoordinator *)self returnToServiceController:a2];
  v3 = [(DMCReturnToServiceController *)v2 shouldDoReturnToService];

  return v3 & 1;
}

- (void)configureMDMWithCompletionHandler:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyEnrollmentCoordinator *)v5 returnToServiceController];
  [(DMCReturnToServiceController *)v3 configureMDMWithCompletionHandler:location[0]];

  objc_storeStrong(location, 0);
}

- (id)languageStrings
{
  v2 = [(BuddyEnrollmentCoordinator *)self returnToServiceController:a2];
  v3 = [(DMCReturnToServiceController *)v2 languageStrings];

  return v3;
}

- (id)localeString
{
  v2 = [(BuddyEnrollmentCoordinator *)self returnToServiceController:a2];
  v3 = [(DMCReturnToServiceController *)v2 localeString];

  return v3;
}

- (BOOL)installWiFiProfileIfNeeded:(id *)a3
{
  v3 = [(BuddyEnrollmentCoordinator *)self returnToServiceController];
  v4 = [(DMCReturnToServiceController *)v3 installWiFiProfileIfNeeded:a3];

  return v4 & 1;
}

- (void)returnToServiceFlowCompleted
{
  v2 = [(BuddyEnrollmentCoordinator *)self returnToServiceController:a2];
  [(DMCReturnToServiceController *)v2 returnToServiceFlowCompleted];
}

- (void)networkAcquired
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10011D804;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)restoreChoiceWasNotRestore
{
  v2 = [(BuddyEnrollmentCoordinator *)self restoreChoiceCompletionHandler];

  if (v2)
  {
    v3 = [(BuddyEnrollmentCoordinator *)self restoreChoiceCompletionHandler];
    v3[2](v3, 1);

    [(BuddyEnrollmentCoordinator *)self setRestoreChoiceCompletionHandler:0];
  }
}

- (void)setNavigationController:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyEnrollmentCoordinator *)v5 navController];

  if (!v3)
  {
    [location[0] addDelegateObserver:v5];
    [(BuddyEnrollmentCoordinator *)v5 setNavController:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)deviceActivated
{
  v2 = [(BuddyEnrollmentCoordinator *)self activationCompletionHandler];

  if (v2)
  {
    v3 = [(BuddyEnrollmentCoordinator *)self activationCompletionHandler];
    v3[2](v3, 0);

    [(BuddyEnrollmentCoordinator *)self setActivationCompletionHandler:0];
  }
}

- (void)setCurrentFlowItem:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D3D8(buf, "[BuddyEnrollmentCoordinator setCurrentFlowItem:]", location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyEnrollmentCoordinator *)v5 setRunningFlowItem:location[0]];
  [(BuddyEnrollmentCoordinator *)v5 setPendingFlowItem:0];
  objc_storeStrong(location, 0);
}

- (id)_fatalUIStatesForFlowItem:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v6 = &off_10033CEE0;
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

- (void)_updateUIIfNeeded
{
  v19 = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_10011DF78(buf, [(BuddyEnrollmentCoordinator *)v19 presentingUIState], [(BuddyEnrollmentCoordinator *)v19 pendingUIState], [(BuddyEnrollmentCoordinator *)v19 targetUIState]);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], v17, "%s presentingUIState: %lu, pendingUIState: %lu targetUIState: %lu", buf, 0x2Au);
  }

  objc_storeStrong(oslog, 0);
  v2 = [(BuddyEnrollmentCoordinator *)v19 presentingUIState];
  if (v2 == [(BuddyEnrollmentCoordinator *)v19 pendingUIState])
  {
    v5 = [(BuddyEnrollmentCoordinator *)v19 pendingUIState];
    if (v5 == [(BuddyEnrollmentCoordinator *)v19 targetUIState])
    {
      v13 = _BYLoggingFacility();
      v12 = 2;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v6 = v13;
        v7 = v12;
        sub_10006AA68(v11);
        _os_log_debug_impl(&_mh_execute_header, v6, v7, "target UI state is being presented already", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
    }

    else
    {
      [(BuddyEnrollmentCoordinator *)v19 setDisableNextUIUpdate:0];
      v8 = [(BuddyEnrollmentCoordinator *)v19 targetUIState];
      v10 = v8;
      if (v8 == 3 || (v8 - 5) < 3 || v8 == 9)
      {
        v9 = [(BuddyEnrollmentCoordinator *)v19 presentingViewController];

        if (!v9)
        {
          v10 = 2;
          [(BuddyEnrollmentCoordinator *)v19 setDisableNextUIUpdate:1];
        }
      }

      [(BuddyEnrollmentCoordinator *)v19 _showPaneForUIState:v10];
    }
  }

  else
  {
    v16 = _BYLoggingFacility();
    v15 = 2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v3 = v16;
      v4 = v15;
      sub_10006AA68(v14);
      _os_log_debug_impl(&_mh_execute_header, v3, v4, "UI animation is ongoing", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }
}

- (void)_showPaneForUIState:(unint64_t)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  oslog = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v3 = [v15 runningFlowItem];
    sub_10011E154(buf, v13, v3);
    _os_log_debug_impl(&_mh_execute_header, oslog, v11, "%s state: %lu, %@", buf, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10011E188;
  v9 = &unk_10032B718;
  v10[0] = v15;
  v10[1] = v13;
  dispatch_async(v4, &block);

  objc_storeStrong(v10, 0);
}

- (id)_uiStatesHostedByFlowItem:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyEnrollmentCoordinator *)v6 _uiStatesHostedByFlowItemClass:objc_opt_class()];
  objc_storeStrong(location, 0);

  return v3;
}

- (id)_uiStatesHostedByFlowItemClass:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = [NSSet setWithArray:&off_10033CEF8];
  }

  else if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = [NSSet setWithArray:&off_10033CF10];
  }

  else if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = [NSSet setWithArray:&off_10033CF28];
  }

  else if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = [NSSet setWithArray:&off_10033CF40];
  }

  else
  {
    v5 = objc_opt_new();
  }

  return v5;
}

- (BOOL)_shouldPopBackToDisclosureOnFailureForFlowItem:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyEnrollmentCoordinator *)v6 _shouldPopBackToDisclosureOnFailureForFlowItemClass:objc_opt_class()];
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)_cacheAuthenticationResults:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = MDMAuthenticationResultsCacheFilePath();
  if ([location[0] count])
  {
    v8 = objc_opt_new();
    v4 = [location[0] objectForKeyedSubscript:AKAuthenticationUsernameKey];
    [v8 setObject:v4 forKeyedSubscript:AKAuthenticationUsernameKey];

    v5 = [location[0] objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
    [v8 setObject:v5 forKeyedSubscript:AKAuthenticationAlternateDSIDKey];

    v6 = [location[0] objectForKeyedSubscript:AKAuthenticationIdentityTokenKey];
    [v8 setObject:v6 forKeyedSubscript:AKAuthenticationIdentityTokenKey];

    v7 = [v8 copy];
    [v7 DMCWriteToBinaryFile:v14];

    DMCSetSkipBackupAttributeToItemAtPath();
    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  else
  {
    v13 = 0;
    v3 = +[NSFileManager defaultManager];
    obj = 0;
    [(NSFileManager *)v3 removeItemAtPath:v14 error:&obj];
    objc_storeStrong(&v13, obj);

    if (v13)
    {
      oslog = _BYLoggingFacility();
      v10 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_100071CBC(buf, v13);
        _os_log_error_impl(&_mh_execute_header, oslog, v10, "Failed to remove cached authentication results with error: %{public}@", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    v9 = 1;
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (id)_cachedAuthenticationResults
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = MDMAuthenticationResultsCacheFilePath();
  v2 = +[NSFileManager defaultManager];
  v3 = ![(NSFileManager *)v2 fileExistsAtPath:v9[0]];

  if (v3)
  {
    v10 = 0;
    v8 = 1;
  }

  else
  {
    location = [NSDictionary DMCDictionaryFromFile:v9[0]];
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Cached authentication results: %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v10 = location;
    v8 = 1;
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v9, 0);
  v4 = v10;

  return v4;
}

- (void)_presentError:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10011F2E4;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)_defaultAlertForError:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = [location[0] localizedDescription];
  v15 = 0;
  v3 = 0;
  if (os_variant_has_internal_ui())
  {
    v16 = [location[0] underlyingErrors];
    v15 = 1;
    v3 = v16 != 0;
  }

  if (v15)
  {
  }

  if (v3)
  {
    v4 = [location[0] underlyingErrors];
    v5 = [v4 firstObject];
    v6 = [v5 description];
    v7 = [NSString stringWithFormat:@"%@\n\n[Internal only]\n%@", v17, v6];
    v8 = v17;
    v17 = v7;
  }

  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v14 = [UIAlertController alertControllerWithTitle:v10 message:v17 preferredStyle:1];

  v11 = [(BuddyEnrollmentCoordinator *)v19 _errorDismissAction];
  [v14 addAction:v11];

  v12 = v14;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  return v12;
}

- (id)_errorDismissAction
{
  v12 = self;
  v11[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10011F9F8;
  v10 = &unk_10032B598;
  v11[0] = v12;
  v4 = [UIAlertAction actionWithTitle:v3 style:0 handler:&v6];
  objc_storeStrong(v11, 0);

  return v4;
}

- (void)_presentAlert:(id)a3 onViewController:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [v5 presentViewController:location[0] animated:1 completion:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)_viewControllerToRemoveWhenItemIsDone
{
  v15 = self;
  location[1] = a2;
  location[0] = objc_opt_new();
  v13 = 0;
  memset(v11, 0, sizeof(v11));
  v2 = [(BuddyEnrollmentCoordinator *)v15 navController];
  v3 = [(BFFNavigationController *)v2 viewControllers];

  v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v11[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(v11[1] + 8 * i);
        v7 = [(BuddyEnrollmentCoordinator *)v15 viewControllersToRemove];
        v8 = [(NSMutableArray *)v7 containsObject:v12];

        if (v8)
        {
          v13 = 1;
        }

        if (v13)
        {
          [location[0] addObject:v12];
        }
      }

      v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = [location[0] copy];
  objc_storeStrong(location, 0);

  return v9;
}

- (void)_popToDisclosureAndRestartEnrollment
{
  v16 = self;
  v15 = a2;
  v2 = [(BuddyEnrollmentCoordinator *)self navController];
  location = [(BFFNavigationController *)v2 viewControllers];

  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10011FFC8;
  v11 = &unk_10032D268;
  v12 = v16;
  v13 = [location indexOfObjectPassingTest:&v7];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v3 handleFailureInMethod:v15 object:v16 file:@"BuddyEnrollmentCoordinator.m" lineNumber:1442 description:@"Can't pop back to cloud config disclosure pane because it's not in the stack"];
  }

  v6 = [location objectAtIndexedSubscript:v13];
  v4 = [(BuddyEnrollmentCoordinator *)v16 navController];
  v5 = [(BFFNavigationController *)v4 popToViewController:v6 animated:1];

  [(BuddyEnrollmentCoordinator *)v16 _setInProgress:1 onViewController:v6];
  [(BuddyEnrollmentCoordinator *)v16 setPresentingViewController:v6];
  [(BuddyEnrollmentCoordinator *)v16 setEnrollmentFlowController:0];
  [(BuddyEnrollmentCoordinator *)v16 setTargetUIState:0];
  [(BuddyEnrollmentCoordinator *)v16 setPresentingUIState:2];
  [(BuddyEnrollmentCoordinator *)v16 startEnrollmentFlow];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)_popOutOfEnrollmentFlow
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  memset(__b, 0, sizeof(__b));
  v2 = [(BuddyEnrollmentCoordinator *)v13 navController];
  v3 = [(BFFNavigationController *)v2 viewControllers];

  v4 = [v3 countByEnumeratingWithState:__b objects:v14 count:16];
  if (v4)
  {
    v5 = *__b[2];
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v3);
      }

      obj = *(__b[1] + 8 * v6);
      if ([(BuddyEnrollmentCoordinator *)v13 _uiStateForControllerClass:objc_opt_class()])
      {
        break;
      }

      objc_storeStrong(location, obj);
      if (++v6 >= v4)
      {
        v4 = [v3 countByEnumeratingWithState:__b objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (location[0])
  {
    v7 = [(BuddyEnrollmentCoordinator *)v13 navController];
    v8 = [(BFFNavigationController *)v7 popToViewController:location[0] animated:1];
  }

  else
  {
    v7 = [(BuddyEnrollmentCoordinator *)v13 navController];
    v9 = [(BFFNavigationController *)v7 popToRootViewControllerAnimated:1];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldUseNavController
{
  v2 = [(BuddyEnrollmentCoordinator *)self presentingViewController:a2];
  v3 = v2 != 0;

  return v3;
}

- (void)_setInProgress:(BOOL)a3 onViewController:(id)a4
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4 = 0;
  objc_storeStrong(&v4, a4);
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___BuddyEnrollmentViewControllerProtocol] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v4 setInProgress:v5];
  }

  objc_storeStrong(&v4, 0);
}

- (void)_showWiFiPicker
{
  v2 = [(BuddyEnrollmentCoordinator *)self showModalWiFiSettingsBlock:a2];
  (*(v2 + 2))(v2, 0, 0);
}

- (void)_showWiFiPickerWithDismissalTriggers:(unint64_t)a3 completionHandler:(id)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v14 = [(BuddyEnrollmentCoordinator *)v18 wifiAssociationWatcher];
  v13 = [v14 countOfAssociationAttempts];
  v4 = [(BuddyEnrollmentCoordinator *)v18 showModalWiFiSettingsBlock];
  v5 = v16;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001204EC;
  v10 = &unk_10032B7C8;
  v11 = v14;
  v12[1] = v13;
  v12[0] = location;
  v4[2](v4, v5, &v6);

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

- (id)_makeMigrationUIConfiguration
{
  if ([(BuddyEnrollmentCoordinator *)self isMDMMigrationMode])
  {
    v2 = [(BuddyEnrollmentCoordinator *)self networkProvider];
    v3 = 0;
    if ([(BuddyNetworkProvider *)v2 supportsWiFi])
    {
      v3 = [(BuddyEnrollmentCoordinator *)self failedMigrationDueToNetworkError];
    }

    v9 = v3 & 1;
    v4 = [BuddyCloudConfigMigrationUIConfiguration alloc];
    v5 = [(BuddyEnrollmentCoordinator *)self isMigrationMandatory];
    v6 = [(BuddyEnrollmentCoordinator *)self migrationDeadline];
    v7 = [(BuddyEnrollmentCoordinator *)self pendingCloudConfig];
    v11 = [(BuddyCloudConfigMigrationUIConfiguration *)v4 initWithIsMandatory:v5 & 1 deadline:v6 showsWiFiPickerButton:v9 & 1 pendingCloudConfig:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateMigrationUIConfiguration
{
  v12 = self;
  v11 = a2;
  memset(__b, 0, sizeof(__b));
  v2 = [(BuddyEnrollmentCoordinator *)v12 navController];
  v3 = [(BFFNavigationController *)v2 viewControllers];

  v4 = [v3 countByEnumeratingWithState:__b objects:v13 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(__b[1] + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          location = v10;
          v7 = [(BuddyEnrollmentCoordinator *)v12 _makeMigrationUIConfiguration];
          [location setMigrationUIConfiguration:v7];

          objc_storeStrong(&location, 0);
          goto LABEL_10;
        }
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v13 count:16];
    }

    while (v4);
  }

LABEL_10:
}

- (void)_addNetworkAcquisitionHandler:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyEnrollmentCoordinator *)v8 networkProvider];
  v4 = [(BuddyNetworkProvider *)v3 networkReachable];

  if (v4)
  {
    (*(location[0] + 2))();
  }

  else
  {
    v5 = [(BuddyEnrollmentCoordinator *)v8 networkAcquisitionHandlers];
    v6 = objc_retainBlock(location[0]);
    [(NSMutableArray *)v5 addObject:v6];
  }

  objc_storeStrong(location, 0);
}

- (void)_addNetworkAcquisitionHandler:(id)a3 withTimeout:(double)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v20[0] = 0;
  v20[1] = v20;
  v21 = 0x20000000;
  v22 = 32;
  v23 = 0;
  v5 = dispatch_time(0, (a4 * 1000000000.0));
  v6 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100120AEC;
  v18 = &unk_10032D290;
  v19[1] = v20;
  v19[0] = location[0];
  dispatch_after(v5, v6, &block);

  v7 = v26;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100120B44;
  v12 = &unk_10032D290;
  v13[1] = v20;
  v13[0] = location[0];
  [(BuddyEnrollmentCoordinator *)v7 _addNetworkAcquisitionHandler:&v8];
  objc_storeStrong(v13, 0);
  objc_storeStrong(v19, 0);
  _Block_object_dispose(v20, 8);
  objc_storeStrong(location, 0);
}

- (void)_updateAppInstallationStatusUIWithFinishedNumber:(unint64_t)a3 totalNumber:(unint64_t)a4 type:(id)a5
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  if (os_variant_has_internal_ui())
  {
    v10 = 0;
    v9 = [NSString stringWithFormat:@"%@ apps: %lu of %lu completed.", location, v14, v13];
    if ([location isEqualToString:@"MDM managed"])
    {
      v5 = [(BuddyEnrollmentCoordinator *)v16 managedAppInstallationState];
      v6 = [v9 isEqualToString:v5] ^ 1;

      if (v6)
      {
        [(BuddyEnrollmentCoordinator *)v16 setManagedAppInstallationState:v9];
        v10 = 1;
      }
    }

    else if ([location isEqualToString:@"System deletable"])
    {
      v7 = [(BuddyEnrollmentCoordinator *)v16 systemAppInstallationState];
      v8 = [v9 isEqualToString:v7] ^ 1;

      if (v8)
      {
        [(BuddyEnrollmentCoordinator *)v16 setSystemAppInstallationState:v9];
        v10 = 1;
      }
    }

    if (v10)
    {
      [(BuddyEnrollmentCoordinator *)v16 _updateEnrollmentStateUIIfNeeded];
    }

    objc_storeStrong(&v9, 0);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (void)_updateEnrollmentStateWithStepName:(id)a3 status:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  if (os_variant_has_internal_ui())
  {
    [(BuddyEnrollmentCoordinator *)v16 setSystemAppInstallationState:0];
    [(BuddyEnrollmentCoordinator *)v16 setManagedAppInstallationState:0];
    v12 = [(BuddyEnrollmentCoordinator *)v16 _stateStringWithStepName:location[0] status:v14];
    v10 = 0;
    v8 = 0;
    v6 = 0;
    if (!v12 || (v11 = -[BuddyEnrollmentCoordinator enrollmentStepState](v16, "enrollmentStepState"), v10 = 1, v5 = 1, ([v12 isEqualToString:?] & 1) != 0))
    {
      v9 = [(BuddyEnrollmentCoordinator *)v16 enrollmentStepState];
      v8 = 1;
      v5 = 0;
      if (v9)
      {
        v7 = [(BuddyEnrollmentCoordinator *)v16 enrollmentStepState];
        v6 = 1;
        v5 = [(NSString *)v7 isEqualToString:v12];
      }
    }

    if (v6)
    {
    }

    if (v8)
    {
    }

    if (v10)
    {
    }

    if (v5)
    {
      [(BuddyEnrollmentCoordinator *)v16 setEnrollmentStepState:v12];
      [(BuddyEnrollmentCoordinator *)v16 _updateEnrollmentStateUIIfNeeded];
    }

    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateMigrationStateWithStepName:(id)a3 status:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  if (os_variant_has_internal_ui())
  {
    [(BuddyEnrollmentCoordinator *)v16 _updateEnrollmentStateWithStepName:0 status:0];
    v12 = [(BuddyEnrollmentCoordinator *)v16 _stateStringWithStepName:location[0] status:v14];
    v10 = 0;
    v8 = 0;
    v6 = 0;
    if (!v12 || (v11 = -[BuddyEnrollmentCoordinator migrationStepState](v16, "migrationStepState"), v10 = 1, v5 = 1, ([v12 isEqualToString:?] & 1) != 0))
    {
      v9 = [(BuddyEnrollmentCoordinator *)v16 migrationStepState];
      v8 = 1;
      v5 = 0;
      if (v9)
      {
        v7 = [(BuddyEnrollmentCoordinator *)v16 migrationStepState];
        v6 = 1;
        v5 = [(NSString *)v7 isEqualToString:v12];
      }
    }

    if (v6)
    {
    }

    if (v8)
    {
    }

    if (v10)
    {
    }

    if (v5)
    {
      [(BuddyEnrollmentCoordinator *)v16 setMigrationStepState:v12];
      [(BuddyEnrollmentCoordinator *)v16 _updateEnrollmentStateUIIfNeeded];
    }

    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateEnrollmentStateUIIfNeeded
{
  v12 = self;
  v11 = a2;
  v2 = [(BuddyEnrollmentCoordinator *)self presentingViewController];
  v9 = 0;
  v3 = 1;
  if (([(UIViewController *)v2 conformsToProtocol:&OBJC_PROTOCOL___BuddyEnrollmentViewControllerProtocol]& 1) != 0)
  {
    v10 = [(BuddyEnrollmentCoordinator *)v12 presentingViewController];
    v9 = 1;
    v3 = objc_opt_respondsToSelector() ^ 1;
  }

  if (v9)
  {
  }

  if ((v3 & 1) == 0)
  {
    v6 = 0;
    if ([(BuddyEnrollmentCoordinator *)v12 shouldPresentEnrollmentStatus])
    {
      v4 = [(BuddyEnrollmentCoordinator *)v12 _statusStringToBeDisplayed];
      v7 = v4;
      v6 = 1;
    }

    else
    {
      v4 = 0;
    }

    location = v4;
    if (v6)
    {
    }

    v5 = [(BuddyEnrollmentCoordinator *)v12 presentingViewController];
    [(UIViewController *)v5 presentEnrollmentStatusForDebugging:location];

    objc_storeStrong(&location, 0);
  }
}

- (id)_stateStringWithStepName:(id)a3 status:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [location[0] mutableCopy];
  if ([v8 length])
  {
    [v7 appendFormat:@" (%@)", v8];
  }

  v5 = [v7 copy];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_statusStringToBeDisplayed
{
  v21 = self;
  location[1] = a2;
  location[0] = [@"[Internal Only]" mutableCopy];
  v19 = 0;
  v2 = [(BuddyEnrollmentCoordinator *)v21 migrationStepState];
  v3 = [(NSString *)v2 length];

  if (v3)
  {
    v19 = 1;
    v4 = [(BuddyEnrollmentCoordinator *)v21 migrationStepState];
    [location[0] appendFormat:@"\nMigration step: %@", v4];
  }

  v5 = [(BuddyEnrollmentCoordinator *)v21 enrollmentStepState];
  v6 = [(NSString *)v5 length];

  if (v6)
  {
    v19 = 1;
    v7 = [(BuddyEnrollmentCoordinator *)v21 enrollmentStepState];
    [location[0] appendFormat:@"\nEnrollment step: %@", v7];

    v8 = [(BuddyEnrollmentCoordinator *)v21 managedAppInstallationState];
    v17 = 0;
    v9 = 1;
    if (![(NSString *)v8 length])
    {
      v18 = [(BuddyEnrollmentCoordinator *)v21 systemAppInstallationState];
      v17 = 1;
      v9 = [(NSString *)v18 length]!= 0;
    }

    if (v17)
    {
    }

    if (v9)
    {
      v10 = [(BuddyEnrollmentCoordinator *)v21 managedAppInstallationState];
      v11 = [(BuddyEnrollmentCoordinator *)v21 systemAppInstallationState];
      [location[0] appendFormat:@"\n%@\n%@", v10, v11];
    }
  }

  v15 = 0;
  if (v19)
  {
    v12 = [location[0] copy];
    v16 = v12;
    v15 = 1;
  }

  else
  {
    v12 = 0;
  }

  v22 = v12;
  if (v15)
  {
  }

  objc_storeStrong(location, 0);
  v13 = v22;

  return v13;
}

- (void)_cleanupCachedValues
{
  [(BuddyEnrollmentCoordinator *)self setMigrationFlowController:0, a2];
  [(BuddyEnrollmentCoordinator *)self setEnrollmentFlowController:0];
  [(BuddyEnrollmentCoordinator *)self setPasscodeContext:0];
  [(BuddyEnrollmentCoordinator *)self setEnrollmentStepState:0];
  [(BuddyEnrollmentCoordinator *)self setMigrationStepState:0];
  [(BuddyEnrollmentCoordinator *)self setSystemAppInstallationState:0];
  [(BuddyEnrollmentCoordinator *)self setManagedAppInstallationState:0];
  [(BuddyEnrollmentCoordinator *)self setLastErrorMessage:0];
  [(BuddyEnrollmentCoordinator *)self _cacheAuthenticationResults:0];
}

- (void)_showInternalUIUpdated:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100121674;
  v8 = &unk_10032B0D0;
  v9 = v11;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)viewControllerForUIState:(unint64_t)a3
{
  switch(a3)
  {
    case 1uLL:
      v10 = [(BuddyEnrollmentCoordinator *)self retrievalViewController];
      break;
    case 2uLL:
      v10 = [(BuddyEnrollmentCoordinator *)self disclosureViewController];
      break;
    case 3uLL:
      v10 = [(BuddyEnrollmentCoordinator *)self passcodeViewController];
      break;
    case 4uLL:
      v10 = [(BuddyEnrollmentCoordinator *)self migrationUnenrollmentViewController];
      break;
    case 5uLL:
      v10 = [(BuddyEnrollmentCoordinator *)self nativeAuthViewController];
      break;
    case 6uLL:
      v10 = [(BuddyEnrollmentCoordinator *)self webAuthViewController];
      break;
    case 7uLL:
      v10 = [(BuddyEnrollmentCoordinator *)self maidAuthenticationController];
      break;
    case 8uLL:
      v10 = [(BuddyEnrollmentCoordinator *)self maidSignInController];
      break;
    case 9uLL:
      v10 = [(BuddyEnrollmentCoordinator *)self mandatoryUpdateController];
      break;
    case 0xBuLL:
      v7 = 0;
      v5 = 0;
      if ([(BuddyEnrollmentCoordinator *)self isMDMMigrationMode])
      {
        v3 = [(BuddyEnrollmentCoordinator *)self migrationEnrollmentViewController];
        v8 = v3;
        v7 = 1;
      }

      else
      {
        v3 = [(BuddyEnrollmentCoordinator *)self installationViewController];
        v6 = v3;
        v5 = 1;
      }

      v10 = v3;
      if (v5)
      {
      }

      if (v7)
      {
      }

      break;
    case 0xCuLL:
      v10 = [(BuddyEnrollmentCoordinator *)self awaitConfigurationViewController];
      break;
    case 0xDuLL:
      v10 = [(BuddyEnrollmentCoordinator *)self migrationDoneViewController];
      break;
    default:
      v10 = 0;
      break;
  }

  return v10;
}

- (id)retrievalViewController
{
  v6 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigurationRetrievalController);
  [location[0] setEnrollmentCoordinator:v6];
  v2 = [(BuddyEnrollmentCoordinator *)v6 featureFlags];
  [location[0] setFeatureFlags:v2];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)disclosureViewController
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  if ([(BuddyEnrollmentCoordinator *)self isMDMMigrationMode])
  {
    v2 = [(BuddyEnrollmentCoordinator *)v9 _makeMigrationUIConfiguration];
    v3 = location[0];
    location[0] = v2;
  }

  v7 = [[BuddyCloudConfigDisclosureViewController_new alloc] initWithMigrationUIConfiguration:location[0]];
  v4 = [(BuddyEnrollmentCoordinator *)v9 managedConfiguration];
  [v7 setManagedConfiguration:v4];

  [v7 setDisclosureVCDelegate:v9];
  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (id)installationViewController
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigInstallationController_new);
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)awaitConfigurationViewController
{
  v6 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyAwaitDeviceConfigurationViewController);
  if ([(BuddyEnrollmentCoordinator *)v6 shouldPresentEnrollmentStatus])
  {
    v2 = [(BuddyEnrollmentCoordinator *)v6 _statusStringToBeDisplayed];
    [location[0] presentEnrollmentStatusForDebugging:v2];
  }

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)nativeAuthViewController
{
  v5 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigLoginViewController_new);
  [location[0] setLoginVCDelegate:v5];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)webAuthViewController
{
  v8 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigWebAuthViewController);
  [location[0] setModalInPresentation:1];
  v2 = [(BuddyEnrollmentCoordinator *)v8 webURL];
  [location[0] setWebURL:v2];

  v3 = [(BuddyEnrollmentCoordinator *)v8 machineInfo];
  [location[0] setMachineInfo:v3];

  v4 = [(BuddyEnrollmentCoordinator *)v8 anchorCerts];
  [location[0] setAnchorCerts:v4];

  [location[0] setDelegate:v8];
  v5 = location[0];
  objc_storeStrong(location, 0);
  return v5;
}

- (id)maidAuthenticationController
{
  v19 = self;
  v18[1] = a2;
  v2 = [(BuddyEnrollmentCoordinator *)self navController];
  v3 = [(BuddyEnrollmentCoordinator *)v19 passcodeCacheManager];
  v4 = [(BuddyEnrollmentCoordinator *)v19 featureFlags];
  v18[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:v2 mode:8 passcodeCacheManager:v3 featureFlags:v4];

  v5 = [(BuddyEnrollmentCoordinator *)v19 managedAppleID];
  v6 = [(NSString *)v5 length];

  if (v6)
  {
    v7 = [(BuddyEnrollmentCoordinator *)v19 managedAppleID];
    [v18[0] setUsername:v7];

    [v18[0] setIsUsernameEditable:0];
  }

  objc_initWeak(&location, v18[0]);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100121EAC;
  v14 = &unk_10032D2E0;
  v15 = v19;
  objc_copyWeak(&v16, &location);
  [v18[0] setHandler:&v10];
  v8 = v18[0];
  objc_destroyWeak(&v16);
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&location);
  objc_storeStrong(v18, 0);
  return v8;
}

- (id)maidSignInController
{
  location[2] = self;
  location[1] = a2;
  location[0] = [[BuddyAppleIDSpinnerPage alloc] initWithAccountMode:1];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)mandatoryUpdateController
{
  v11 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(SUScanOptions);
  [location[0] setForced:1];
  [location[0] setIdentifier:@"com.apple.purplebuddy.software_update"];
  v2 = [(BuddyEnrollmentCoordinator *)v11 osVersion];
  [location[0] setRequestedPMV:v2];

  v3 = [(BuddyEnrollmentCoordinator *)v11 buildVersion];
  [location[0] setRequestedBuild:v3];

  v9 = objc_alloc_init(BuddyMandatoryUpdateController);
  [v9 setMdmUpdateOptions:location[0]];
  v4 = [(BuddyEnrollmentCoordinator *)v11 networkProvider];
  [v9 setNetworkProvider:v4];

  v5 = [(BuddyEnrollmentCoordinator *)v11 runningFlowItem];
  v6 = [(BuddyEnrollmentFlowItem *)v5 delegate];
  [v9 setDelegate:v6];

  v7 = v9;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)migrationUnenrollmentViewController
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyUnenrollmentSpinnerViewController);
  v2 = [location[0] navigationItem];
  [v2 setHidesBackButton:1];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)migrationEnrollmentViewController
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyEnrollmentSpinnerViewController);
  v2 = [location[0] navigationItem];
  [v2 setHidesBackButton:1];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)migrationDoneViewController
{
  v5 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigMigrationDoneViewController);
  [location[0] setMigrationDoneVCDelegate:v5];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)passcodeViewController
{
  v8 = self;
  location[1] = a2;
  location[0] = [[BuddyPasscodeEntryController alloc] initWithNibName:0 bundle:0];
  [location[0] setDelegate:v8];
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_MIGRATION_PASSCODE_PROMPT_TITLE"];
  v4 = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];
  [location[0] setTitleText:v4];

  v5 = location[0];
  objc_storeStrong(location, 0);
  return v5;
}

- (unint64_t)_uiStateForControllerClass:(Class)a3
{
  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 2;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 11;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 12;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 5;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 6;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 7;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 10;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 11;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 4;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 13;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 3;
  }

  return 0;
}

- (void)disclosureViewController:(id)a3 didReceiveUserConsent:(BOOL)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = a4;
  [(BuddyEnrollmentCoordinator *)v9 _setInProgress:1 onViewController:location[0]];
  if ([(BuddyEnrollmentCoordinator *)v9 targetUIState]== 2)
  {
    v5 = [(BuddyEnrollmentCoordinator *)v9 cloudConfigConsentCompletionHandler];

    if (v5)
    {
      v6 = [(BuddyEnrollmentCoordinator *)v9 cloudConfigConsentCompletionHandler];
      (v6)[2](v6, v7);

      [(BuddyEnrollmentCoordinator *)v9 setCloudConfigConsentCompletionHandler:0];
    }
  }

  else if ([(BuddyEnrollmentCoordinator *)v9 targetUIState]> 2)
  {
    [(BuddyEnrollmentCoordinator *)v9 _updateUIIfNeeded];
  }

  objc_storeStrong(location, 0);
}

- (void)disclosureViewControllerWantsToShowWiFiPicker:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyEnrollmentCoordinator *)v4 _showWiFiPicker];
  objc_storeStrong(location, 0);
}

- (void)webAuthCanceled:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D3D8(buf, "[BuddyEnrollmentCoordinator webAuthCanceled:]", location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, v11, "%s %@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100123308;
  v8 = &unk_10032B838;
  v9 = v14;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)recievedProfile:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D3D8(buf, "[BuddyEnrollmentCoordinator recievedProfile:]", location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, v11, "%s %@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100123710;
  v8 = &unk_10032B838;
  v9 = v14;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)loginViewController:(id)a3 didreceiveUsername:(id)a4 password:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v7 = [(BuddyEnrollmentCoordinator *)v12 nativeAuthCompletionHandler];

  if (v7)
  {
    v8 = [(BuddyEnrollmentCoordinator *)v12 nativeAuthCompletionHandler];
    v8[2](v8, v10, v9, 0);

    [(BuddyEnrollmentCoordinator *)v12 setNativeAuthCompletionHandler:0];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)migrationDoneViewControllerWantsToExitBuddy:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyEnrollmentCoordinator *)v4 setTargetUIState:14];
  [(BuddyEnrollmentCoordinator *)v4 setPresentingViewController:0];
  [(BuddyEnrollmentCoordinator *)v4 _updateUIIfNeeded];
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = a5;
  v16 = a6;
  v15 = [(BuddyEnrollmentCoordinator *)v20 _uiStateForControllerClass:objc_opt_class()];
  if (v15)
  {
    if (v15 == 10)
    {
      v9 = [(BuddyEnrollmentCoordinator *)v20 viewControllersToRemove];
      [(NSMutableArray *)v9 addObject:v18];
    }

    v14 = [(BuddyEnrollmentCoordinator *)v20 pendingUIState]== v15;
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100123D70(buf, v14, v15, [(BuddyEnrollmentCoordinator *)v20 presentingUIState]);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s isPresenting %d state: %ld self.presentingUIState: %ld", buf, 0x26u);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyEnrollmentCoordinator *)v20 setPresentingUIState:v15];
    [(BuddyEnrollmentCoordinator *)v20 setPendingUIState:v15];
    [(BuddyEnrollmentCoordinator *)v20 setPresentingViewController:v18];
    v10 = [(BuddyEnrollmentCoordinator *)v20 pendingError];

    if (v10)
    {
      v11 = v20;
      v12 = [(BuddyEnrollmentCoordinator *)v20 pendingError];
      [(BuddyEnrollmentCoordinator *)v11 _presentError:v12];

      [(BuddyEnrollmentCoordinator *)v20 setPendingError:0];
    }

    else if (v14 && ![(BuddyEnrollmentCoordinator *)v20 disableNextUIUpdate])
    {
      [(BuddyEnrollmentCoordinator *)v20 _updateUIIfNeeded];
    }
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)v20 setPresentingViewController:0];
    [(BuddyEnrollmentCoordinator *)v20 setPresentingUIState:0];
    [(BuddyEnrollmentCoordinator *)v20 setPendingUIState:0];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_enrollInBetaProgramWithDictionary:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Required Beta Program: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (location[0])
  {
    v3 = [location[0] objectForKeyedSubscript:@"Token"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = sub_100123F94();
      v6 = [location[0] objectForKeyedSubscript:@"Token"];
      [v5 enrollInProgramWithMDMToken:v6 completion:&stru_10032D300];
    }

    else
    {
      v11 = _BYLoggingFacility();
      v10 = 17;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v7 = v11;
        v8 = v10;
        sub_10006AA68(v9);
        _os_log_fault_impl(&_mh_execute_header, v7, v8, "Required Beta Program but no valid token provided, skipping beta enrollment", v9, 2u);
      }

      objc_storeStrong(&v11, 0);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)passcodeEntryController:(id)a3 didEnterPasscode:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = [(BuddyEnrollmentCoordinator *)v10 passcodeCacheManager];
  [(BYPasscodeCacheManager *)v5 cachePasscode:v8 retrievable:1];

  v6 = [(BuddyEnrollmentCoordinator *)v10 passcodeEntryCompletionHandler];
  if (v6)
  {
    v7 = [(BuddyEnrollmentCoordinator *)v10 passcodeEntryCompletionHandler];
    v7[2](v7, v8, 0);

    [(BuddyEnrollmentCoordinator *)v10 setPasscodeEntryCompletionHandler:0];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (UIViewController)baseViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_baseViewController);

  return WeakRetained;
}

- (BFFNavigationController)navController
{
  WeakRetained = objc_loadWeakRetained(&self->_navController);

  return WeakRetained;
}

@end