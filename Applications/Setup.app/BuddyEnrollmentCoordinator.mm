@interface BuddyEnrollmentCoordinator
- (BFFNavigationController)navController;
- (BOOL)_shouldPopBackToDisclosureOnFailureForFlowItem:(id)item;
- (BOOL)_shouldUseNavController;
- (BOOL)installWiFiProfileIfNeeded:(id *)needed;
- (BOOL)shouldAllowStartOver;
- (BOOL)shouldDoReturnToService;
- (BOOL)shouldPresentEnrollmentStatus;
- (BuddyEnrollmentCoordinator)initWithPasscodeCacheManager:(id)manager buddyPreferences:(id)preferences buddyPreferencesEphemeral:(id)ephemeral featureFlags:(id)flags networkProvider:(id)provider managedConfiguration:(id)configuration showModalWiFiSettingsBlock:(id)block exitBuddyBlock:(id)self0;
- (DMCServiceDiscoveryHelper)servicediscoveryHelper;
- (UIViewController)baseViewController;
- (id)_cachedAuthenticationResults;
- (id)_defaultAlertForError:(id)error;
- (id)_errorDismissAction;
- (id)_fatalUIStatesForFlowItem:(id)item;
- (id)_makeMigrationUIConfiguration;
- (id)_stateStringWithStepName:(id)name status:(id)status;
- (id)_statusStringToBeDisplayed;
- (id)_uiStatesHostedByFlowItem:(id)item;
- (id)_uiStatesHostedByFlowItemClass:(Class)class;
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
- (id)viewControllerForUIState:(unint64_t)state;
- (id)webAuthViewController;
- (unint64_t)_uiStateForControllerClass:(Class)class;
- (void)_addNetworkAcquisitionHandler:(id)handler;
- (void)_addNetworkAcquisitionHandler:(id)handler withTimeout:(double)timeout;
- (void)_cacheAuthenticationResults:(id)results;
- (void)_cleanupCachedValues;
- (void)_enrollInBetaProgramWithDictionary:(id)dictionary;
- (void)_midMigrationWiFiPickerWasDismissed:(BOOL)dismissed completionHandler:(id)handler;
- (void)_popOutOfEnrollmentFlow;
- (void)_popToDisclosureAndRestartEnrollment;
- (void)_presentAlert:(id)alert onViewController:(id)controller;
- (void)_presentError:(id)error;
- (void)_requestInteractiveMAIDAuthenticationWithManagedAppleID:(id)d personaID:(id)iD ephemeral:(BOOL)ephemeral completionHandler:(id)handler;
- (void)_setInProgress:(BOOL)progress onViewController:(id)controller;
- (void)_showInternalUIUpdated:(id)updated;
- (void)_showPaneForUIState:(unint64_t)state;
- (void)_showWiFiPicker;
- (void)_showWiFiPickerWithDismissalTriggers:(unint64_t)triggers completionHandler:(id)handler;
- (void)_startMDMMigrationFlow;
- (void)_startRegularMDMEnrollmentFlow;
- (void)_updateAppInstallationStatusUIWithFinishedNumber:(unint64_t)number totalNumber:(unint64_t)totalNumber type:(id)type;
- (void)_updateEnrollmentStateUIIfNeeded;
- (void)_updateEnrollmentStateWithStepName:(id)name status:(id)status;
- (void)_updateMigrationStateWithStepName:(id)name status:(id)status;
- (void)_updateMigrationUIConfiguration;
- (void)_updateUIIfNeeded;
- (void)configureMDMWithCompletionHandler:(id)handler;
- (void)deviceActivated;
- (void)disclosureViewController:(id)controller didReceiveUserConsent:(BOOL)consent;
- (void)disclosureViewControllerWantsToShowWiFiPicker:(id)picker;
- (void)discoverAndStoreEnrollmentChannelWithEnrollmentURL:(id)l certificateDatas:(id)datas completionHandler:(id)handler;
- (void)dismissMigrationScene;
- (void)enrollmentFlowController:(id)controller appInstallationStatusUpdatedForType:(id)type totalNumber:(unint64_t)number finishedNumber:(unint64_t)finishedNumber;
- (void)enrollmentFlowController:(id)controller didInstallEnrollmentProfile:(id)profile;
- (void)enrollmentFlowController:(id)controller didReceiveCloudConfiguration:(id)configuration;
- (void)enrollmentFlowController:(id)controller didUpdateEnrollmentMethod:(unint64_t)method;
- (void)enrollmentFlowController:(id)controller performingEnrollmentStepWithName:(id)name status:(id)status;
- (void)ensureActivationWithCompletionHandler:(id)handler;
- (void)ensureNetworkConnectionWithCompletionHandler:(id)handler;
- (void)fetchEnrollmentProfileWithWebAuthURL:(id)l machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)handler;
- (void)interruptEnrollment;
- (void)loginViewController:(id)controller didreceiveUsername:(id)username password:(id)password;
- (void)migrationDoneViewControllerWantsToExitBuddy:(id)buddy;
- (void)migrationFlowController:(id)controller appInstallationStatusUpdatedForType:(id)type totalNumber:(unint64_t)number finishedNumber:(unint64_t)finishedNumber;
- (void)migrationFlowController:(id)controller performingEnrollmentStepWithName:(id)name status:(id)status;
- (void)migrationFlowController:(id)controller performingMigrationStepWithName:(id)name status:(id)status;
- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (void)networkAcquired;
- (void)passcodeEntryController:(id)controller didEnterPasscode:(id)passcode;
- (void)profileInstallationDone;
- (void)recievedProfile:(id)profile;
- (void)requestDeviceErasureWithCompletionHandler:(id)handler;
- (void)requestDevicePasscodeDataWithCompletionHandler:(id)handler;
- (void)requestDevicePasscodeWithCompletionHandler:(id)handler;
- (void)requestMAIDAuthenticationWithManagedAppleID:(id)d personaID:(id)iD ephemeral:(BOOL)ephemeral requireAppleMAID:(BOOL)aID completionHandler:(id)handler;
- (void)requestMAIDSignInWithAuthenticationResults:(id)results personaID:(id)d makeiTunesAccountActive:(BOOL)active completionHandler:(id)handler;
- (void)requestMDMUsernameAndPasswordWithErrorMessage:(id)message completionHandler:(id)handler;
- (void)requestSoftwareUpdateWithInfoDictionary:(id)dictionary completionHandler:(id)handler;
- (void)requestUserConsentForMigrationWithPendingCloudConfig:(id)config originalEnrollmentType:(unint64_t)type isMandatory:(BOOL)mandatory deadline:(id)deadline completionHandler:(id)handler;
- (void)requestUserConsentWithCloudConfig:(id)config completionHandler:(id)handler;
- (void)restoreChoiceWasNotRestore;
- (void)retrieveProfileDataWithBaseViewController:(id)controller navigationController:(id)navigationController completionHandler:(id)handler;
- (void)returnToServiceFlowCompleted;
- (void)setCurrentFlowItem:(id)item;
- (void)setNavigationController:(id)controller;
- (void)setTargetUIState:(unint64_t)state;
- (void)shouldShowFlowItem:(id)item resultBlock:(id)block;
- (void)showAwaitingDeviceConfigurationScene;
- (void)showEnrollmentCompletionScene;
- (void)showEnrollmentFailure:(id)failure;
- (void)showFetchingCloudConfigurationScene;
- (void)showInstallingEnrollmentProfileScene;
- (void)showMigrationCompletionScene;
- (void)showMigrationFailure:(id)failure;
- (void)startEnrollmentFlow;
- (void)suggestRestoreForAccountWithUsername:(id)username personaID:(id)d completionHandler:(id)handler;
- (void)updateLanguage:(id)language locale:(id)locale completionHandler:(id)handler;
- (void)verifyEnrollmentStateWithCompletionHandler:(id)handler;
- (void)webAuthCanceled:(id)canceled;
@end

@implementation BuddyEnrollmentCoordinator

- (BuddyEnrollmentCoordinator)initWithPasscodeCacheManager:(id)manager buddyPreferences:(id)preferences buddyPreferencesEphemeral:(id)ephemeral featureFlags:(id)flags networkProvider:(id)provider managedConfiguration:(id)configuration showModalWiFiSettingsBlock:(id)block exitBuddyBlock:(id)self0
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  obj = 0;
  objc_storeStrong(&obj, preferences);
  v38 = 0;
  objc_storeStrong(&v38, ephemeral);
  v37 = 0;
  objc_storeStrong(&v37, flags);
  v36 = 0;
  objc_storeStrong(&v36, provider);
  v35 = 0;
  objc_storeStrong(&v35, configuration);
  v34 = 0;
  objc_storeStrong(&v34, block);
  v33 = 0;
  objc_storeStrong(&v33, buddyBlock);
  v15 = selfCopy;
  selfCopy = 0;
  v32.receiver = v15;
  v32.super_class = BuddyEnrollmentCoordinator;
  selfCopy = [(BuddyEnrollmentCoordinator *)&v32 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 17, location[0]);
    objc_storeStrong(selfCopy + 18, obj);
    objc_storeStrong(selfCopy + 19, v38);
    objc_storeStrong(selfCopy + 2, v37);
    objc_storeStrong(selfCopy + 3, v36);
    sub_100115D7C();
    v16 = objc_opt_new();
    v17 = *(selfCopy + 29);
    *(selfCopy + 29) = v16;

    objc_storeStrong(selfCopy + 4, v35);
    v18 = objc_retainBlock(v34);
    v19 = *(selfCopy + 6);
    *(selfCopy + 6) = v18;

    v20 = objc_retainBlock(v33);
    v21 = *(selfCopy + 7);
    *(selfCopy + 7) = v20;

    v22 = objc_opt_new();
    v23 = *(selfCopy + 20);
    *(selfCopy + 20) = v22;

    v24 = objc_opt_new();
    v25 = *(selfCopy + 27);
    *(selfCopy + 27) = v24;

    v26 = +[DMCMigrationFlowController shouldShowMigrationUI];
    *(selfCopy + 8) = v26 & 1;
    v27 = objc_opt_new();
    v28 = *(selfCopy + 43);
    *(selfCopy + 43) = v27;

    if (os_variant_has_internal_ui())
    {
      v29 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v29 addObserver:selfCopy selector:"_showInternalUIUpdated:" name:@"BYShowInternalUIChanged" object:0];
    }
  }

  v30 = selfCopy;
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v30;
}

- (void)startEnrollmentFlow
{
  selfCopy = self;
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
    [(BuddyEnrollmentCoordinator *)selfCopy _startMDMMigrationFlow];
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
    [(BuddyEnrollmentCoordinator *)selfCopy _startRegularMDMEnrollmentFlow];
  }
}

- (void)_startMDMMigrationFlow
{
  selfCopy = self;
  location[1] = a2;
  migrationFlowController = [(BuddyEnrollmentCoordinator *)self migrationFlowController];

  if (migrationFlowController)
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

  else if ([(BuddyEnrollmentCoordinator *)selfCopy targetUIState]== 14)
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
    [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
  }

  else
  {
    sub_100116204();
    v14 = objc_opt_new();
    v13 = [[DMCMigrationFlowController alloc] initWithPresenter:selfCopy managedConfigurationHelper:v14];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100116318;
    v11 = &unk_10032D088;
    v12 = selfCopy;
    [v13 startMDMMigrationWithCompletionHandler:&v7];
    [(BuddyEnrollmentCoordinator *)selfCopy setMigrationFlowController:v13];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }
}

- (void)_startRegularMDMEnrollmentFlow
{
  selfCopy = self;
  location[1] = a2;
  enrollmentFlowController = [(BuddyEnrollmentCoordinator *)self enrollmentFlowController];

  if (enrollmentFlowController)
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
    if (![(BuddyEnrollmentCoordinator *)selfCopy shouldDoReturnToService])
    {
      managedConfiguration = [(BuddyEnrollmentCoordinator *)selfCopy managedConfiguration];
      v24 = 1;
      v5 = [(MCProfileConnection *)managedConfiguration shouldShowSetupAssistant]^ 1;
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
      [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:14];
    }

    if ([(BuddyEnrollmentCoordinator *)selfCopy targetUIState]== 14)
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
      [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
    }

    else
    {
      [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:0];
      sub_100116204();
      v17 = objc_opt_new();
      v16 = [DMCEnrollmentFlowController enrollmentFlowControllerWithPresenter:selfCopy managedConfigurationHelper:v17];
      [v16 setDelegate:selfCopy];
      v10 = _NSConcreteStackBlock;
      v11 = -1073741824;
      v12 = 0;
      v13 = sub_100116850;
      v14 = &unk_10032D088;
      v15 = selfCopy;
      [v16 startInBuddyEnrollmentFlowRestartIfFail:0 completionHandler:&v10];
      [(BuddyEnrollmentCoordinator *)selfCopy setEnrollmentFlowController:v16];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }
  }
}

- (void)retrieveProfileDataWithBaseViewController:(id)controller navigationController:(id)navigationController completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v35 = 0;
  objc_storeStrong(&v35, navigationController);
  v34 = 0;
  objc_storeStrong(&v34, handler);
  [(BuddyEnrollmentCoordinator *)selfCopy setBaseViewController:location[0]];
  [(BuddyEnrollmentCoordinator *)selfCopy setNavController:v35];
  v7 = +[MDMCloudConfiguration sharedConfiguration];
  enrollmentServerURL = [v7 enrollmentServerURL];

  v8 = +[MDMCloudConfiguration sharedConfiguration];
  enrollmentAnchorCertificates = [v8 enrollmentAnchorCertificates];

  v31 = objc_opt_new();
  v24 = _NSConcreteStackBlock;
  v25 = -1073741824;
  v26 = 0;
  v27 = sub_100116E98;
  v28 = &unk_10032D0B0;
  v29 = selfCopy;
  v30 = v34;
  [v31 setProfileInstallationRequestHandler:&v24];
  v23 = [DMCEnrollmentFlowController enrollmentFlowControllerWithPresenter:selfCopy managedConfigurationHelper:v31];
  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_100117000;
  v19 = &unk_10032D0D8;
  v20 = selfCopy;
  v21 = v34;
  v22 = objc_retainBlock(&v15);
  v9 = +[MDMCloudConfiguration sharedConfiguration];
  details = [v9 details];
  v11 = [details objectForKeyedSubscript:kCCRemoteManagementAccountIdentifierKey];
  v12 = [v11 length] != 0;

  buddyPreferences = [(BuddyEnrollmentCoordinator *)selfCopy buddyPreferences];
  v14 = [(BYPreferencesController *)buddyPreferences BOOLForKey:@"RestoreChoice"];

  if (v12)
  {
    [v23 restartORGOEnrollmentWithServiceURL:enrollmentServerURL anchorCertificates:enrollmentAnchorCertificates isPostRestoration:v14 & 1 restartIfFail:0 cleanupIfFail:1 completionHandler:v22];
  }

  else
  {
    [v23 startORGOEnrollmentFlowWithServiceURL:enrollmentServerURL anchorCertificates:enrollmentAnchorCertificates restartIfFail:0 completionHandler:v22];
  }

  [(BuddyEnrollmentCoordinator *)selfCopy setEnrollmentFlowController:v23];
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&enrollmentAnchorCertificates, 0);
  objc_storeStrong(&enrollmentServerURL, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
}

- (void)profileInstallationDone
{
  profileInstallationRequestCompleteHandler = [(BuddyEnrollmentCoordinator *)self profileInstallationRequestCompleteHandler];

  if (profileInstallationRequestCompleteHandler)
  {
    profileInstallationRequestCompleteHandler2 = [(BuddyEnrollmentCoordinator *)self profileInstallationRequestCompleteHandler];
    profileIdentifier = [(BuddyEnrollmentCoordinator *)self profileIdentifier];
    (*(profileInstallationRequestCompleteHandler2 + 2))(profileInstallationRequestCompleteHandler2, profileIdentifier, 0, 0);
  }

  [(BuddyEnrollmentCoordinator *)self _cacheAuthenticationResults:0];
  [(BuddyEnrollmentCoordinator *)self setProfileInstallationRequestCompleteHandler:0];
}

- (void)discoverAndStoreEnrollmentChannelWithEnrollmentURL:(id)l certificateDatas:(id)datas completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v20 = 0;
  objc_storeStrong(&v20, datas);
  v19 = 0;
  objc_storeStrong(&v19, handler);
  v7 = +[MCProfileConnection sharedConnection];
  getMachineInfo = [v7 getMachineInfo];

  v17 = certificatesFromDERCertificateDataArray();
  servicediscoveryHelper = [(BuddyEnrollmentCoordinator *)selfCopy servicediscoveryHelper];
  v9 = location[0];
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_10011743C;
  v14 = &unk_10032D100;
  v15 = selfCopy;
  v16 = v19;
  [(DMCServiceDiscoveryHelper *)servicediscoveryHelper determineEnrollmentMethodWithServiceURL:v9 enrollmentType:1 machineInfo:getMachineInfo anchorCertificateRefs:v17 completionHandler:&v10];

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&getMachineInfo, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)verifyEnrollmentStateWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = +[MDMCloudConfiguration sharedConfiguration];
  isStoredProfileInstalled = [v3 isStoredProfileInstalled];

  if (isStoredProfileInstalled)
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
    details = [v7 details];
    v47 = [details objectForKeyedSubscript:kCCRemoteManagementAccountIdentifierKey];

    if ([v47 length])
    {
      v11 = +[ACAccountStore defaultStore];
      v43 = [v11 dmc_remoteManagementAccountForIdentifier:v47];

      if (v43)
      {
        dmc_bearerToken = [v43 dmc_bearerToken];
        if ([dmc_bearerToken length])
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
          enrollmentServerURL = [v18 enrollmentServerURL];

          v19 = +[MCProfileConnection sharedConnection];
          getMachineInfo = [v19 getMachineInfo];

          v20 = +[MDMCloudConfiguration sharedConfiguration];
          enrollmentAnchorCertificates = [v20 enrollmentAnchorCertificates];

          v29 = certificatesFromDERCertificateDataArray();
          servicediscoveryHelper = [(BuddyEnrollmentCoordinator *)selfCopy servicediscoveryHelper];
          v54 = MDMBearerAuthTokensToken;
          v55 = dmc_bearerToken;
          v22 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v23 = _NSConcreteStackBlock;
          v24 = -1073741824;
          v25 = 0;
          v26 = sub_100117BE0;
          v27 = &unk_10032D128;
          v28 = location[0];
          [(DMCServiceDiscoveryHelper *)servicediscoveryHelper fetchEnrollmentProfileWithServiceURL:enrollmentServerURL authTokens:v22 enrollmentMethod:1 machineInfo:getMachineInfo anchorCertificateRefs:v29 completionHandler:&v23];

          objc_storeStrong(&v28, 0);
          objc_storeStrong(&v29, 0);
          objc_storeStrong(&enrollmentAnchorCertificates, 0);
          objc_storeStrong(&getMachineInfo, 0);
          objc_storeStrong(&enrollmentServerURL, 0);
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

        objc_storeStrong(&dmc_bearerToken, 0);
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
  enrollmentFlowController = [(BuddyEnrollmentCoordinator *)self enrollmentFlowController];
  [(DMCEnrollmentFlowController *)enrollmentFlowController terminateEnrollmentFlow];

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
    buddyPreferencesEphemeral = [(BuddyEnrollmentCoordinator *)self buddyPreferencesEphemeral];
    v5 = 1;
    v3 = [(BYPreferencesController *)buddyPreferencesEphemeral BOOLForKey:@"showInternalUI"];
  }

  v8 = v3 & 1;
  if (v5)
  {
  }

  return v8;
}

- (void)setTargetUIState:(unint64_t)state
{
  selfCopy = self;
  v5 = a2;
  stateCopy = state;
  if (self->_targetUIState != state)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100077E48(buf, stateCopy);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Setting target UI state: %lu", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_targetUIState = stateCopy;
  }
}

- (void)updateLanguage:(id)language locale:(id)locale completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  v19 = 0;
  objc_storeStrong(&v19, locale);
  v18 = 0;
  objc_storeStrong(&v18, handler);
  languageSettingBlock = [(BuddyEnrollmentCoordinator *)selfCopy languageSettingBlock];

  if (languageSettingBlock)
  {
    v8 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_1001181E8;
    v13 = &unk_10032D150;
    v14 = selfCopy;
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

- (void)ensureNetworkConnectionWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100118370;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_midMigrationWiFiPickerWasDismissed:(BOOL)dismissed completionHandler:(id)handler
{
  selfCopy = self;
  v42 = a2;
  dismissedCopy = dismissed;
  location = 0;
  objc_storeStrong(&location, handler);
  v4 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v4);

  v39 = _BYLoggingFacility();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    if (dismissedCopy)
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
  networkProvider = [(BuddyEnrollmentCoordinator *)selfCopy networkProvider];
  networkReachable = [(BuddyNetworkProvider *)networkProvider networkReachable];

  if (networkReachable)
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

  else if (dismissedCopy)
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
    wifiAssociationWatcher = [(BuddyEnrollmentCoordinator *)selfCopy wifiAssociationWatcher];
    v19 = _NSConcreteStackBlock;
    v20 = -1073741824;
    v21 = 0;
    v22 = sub_100118E2C;
    v23 = &unk_10032AFD0;
    v24 = selfCopy;
    v25 = location;
    [(BuddyCloudConfigWiFiAssociationWatcher *)wifiAssociationWatcher waitForCurrentAssociationToFinishWithCompletionHandler:&v19];

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
    networkProvider2 = [(BuddyEnrollmentCoordinator *)selfCopy networkProvider];
    connectedOverWiFi = [(BuddyNetworkProvider *)networkProvider2 connectedOverWiFi];

    v30 = connectedOverWiFi & 1;
    v29 = 0;
    if (connectedOverWiFi)
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

- (void)ensureActivationWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = +[BuddyActivationConfiguration currentConfiguration];
  isActivated = [v3 isActivated];

  if (isActivated)
  {
    (*(location[0] + 2))(location[0], 0);
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setActivationCompletionHandler:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)showFetchingCloudConfigurationScene
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100119248;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)requestUserConsentWithCloudConfig:(id)config completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, config);
  v16 = 0;
  objc_storeStrong(&v16, handler);
  featureFlags = [(BuddyEnrollmentCoordinator *)selfCopy featureFlags];
  v6 = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

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
    v13 = selfCopy;
    v14 = v16;
    dispatch_async(v7, &block);

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    v15 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)requestMDMUsernameAndPasswordWithErrorMessage:(id)message completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v5 = 0;
  objc_storeStrong(&v5, handler);
  [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:5];
  [(BuddyEnrollmentCoordinator *)selfCopy setNativeAuthCompletionHandler:v5];
  [(BuddyEnrollmentCoordinator *)selfCopy setLastErrorMessage:location[0]];
  [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchEnrollmentProfileWithWebAuthURL:(id)l machineInfo:(id)info anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v11 = 0;
  objc_storeStrong(&v11, info);
  v10 = 0;
  objc_storeStrong(&v10, refs);
  v9 = 0;
  objc_storeStrong(&v9, handler);
  [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:6];
  [(BuddyEnrollmentCoordinator *)selfCopy setWebURL:location[0]];
  [(BuddyEnrollmentCoordinator *)selfCopy setMachineInfo:v11];
  [(BuddyEnrollmentCoordinator *)selfCopy setAnchorCerts:v10];
  [(BuddyEnrollmentCoordinator *)selfCopy setWebAuthCompletionHandler:v9];
  [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)requestMAIDAuthenticationWithManagedAppleID:(id)d personaID:(id)iD ephemeral:(BOOL)ephemeral requireAppleMAID:(BOOL)aID completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v26 = 0;
  objc_storeStrong(&v26, iD);
  ephemeralCopy = ephemeral;
  aIDCopy = aID;
  v23 = 0;
  objc_storeStrong(&v23, handler);
  _cachedAuthenticationResults = [(BuddyEnrollmentCoordinator *)selfCopy _cachedAuthenticationResults];
  if ([_cachedAuthenticationResults count])
  {
    v11 = 0;
    if (aIDCopy)
    {
      v11 = +[DMCFeatureOverrides allowAnyMAIDToSignIn]^ 1;
    }

    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_10011991C;
    v16 = &unk_10032D1A0;
    v20 = v23;
    v17 = selfCopy;
    v18 = location[0];
    v19 = v26;
    v21 = ephemeralCopy;
    [BuddyAppleIDAuthManager silentAuthenticationWithAuthenticationResults:_cachedAuthenticationResults requiresAppleMAID:v11 & 1 completion:&v12];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)selfCopy _requestInteractiveMAIDAuthenticationWithManagedAppleID:location[0] personaID:v26 ephemeral:ephemeralCopy completionHandler:v23];
  }

  objc_storeStrong(&_cachedAuthenticationResults, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_requestInteractiveMAIDAuthenticationWithManagedAppleID:(id)d personaID:(id)iD ephemeral:(BOOL)ephemeral completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v23 = 0;
  objc_storeStrong(&v23, iD);
  ephemeralCopy = ephemeral;
  v21 = 0;
  objc_storeStrong(&v21, handler);
  featureFlags = [(BuddyEnrollmentCoordinator *)selfCopy featureFlags];
  isMDMEnrollmentFlowControllerAdoptionEnabled = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled];

  if (isMDMEnrollmentFlowControllerAdoptionEnabled)
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setManagedAppleID:location[0]];
    [(BuddyEnrollmentCoordinator *)selfCopy setMaidAuthenticationCompletionHandler:v21];
    [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:7];
    [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
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
    v17 = selfCopy;
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

- (void)requestMAIDSignInWithAuthenticationResults:(id)results personaID:(id)d makeiTunesAccountActive:(BOOL)active completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v23 = 0;
  objc_storeStrong(&v23, d);
  activeCopy = active;
  v21 = 0;
  objc_storeStrong(&v21, handler);
  featureFlags = [(BuddyEnrollmentCoordinator *)selfCopy featureFlags];
  isMDMEnrollmentFlowControllerAdoptionEnabled = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled];

  if (isMDMEnrollmentFlowControllerAdoptionEnabled)
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:8];
    [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
  }

  v11 = &_dispatch_main_q;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10011AB00;
  v16 = &unk_10032D218;
  v17 = selfCopy;
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

- (void)suggestRestoreForAccountWithUsername:(id)username personaID:(id)d completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v9 = 0;
  objc_storeStrong(&v9, d);
  v8 = 0;
  objc_storeStrong(&v8, handler);
  featureFlags = [(BuddyEnrollmentCoordinator *)selfCopy featureFlags];
  LOBYTE(d) = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if (d)
  {
    (*(v8 + 2))(v8, 1);
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setRestoreChoiceCompletionHandler:v8];
    [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:10];
    [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)showInstallingEnrollmentProfileScene
{
  featureFlags = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0)
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:11];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)showAwaitingDeviceConfigurationScene
{
  featureFlags = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0)
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:12];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)showEnrollmentCompletionScene
{
  featureFlags = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0 && ![(BuddyEnrollmentCoordinator *)self isMDMMigrationMode])
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:14];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)showEnrollmentFailure:(id)failure
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, failure);
  if (![(BuddyEnrollmentCoordinator *)selfCopy isMDMMigrationMode]|| [BuddyCloudConfigController isCredentialsError:location[0]])
  {
    featureFlags = [(BuddyEnrollmentCoordinator *)selfCopy featureFlags];
    v4 = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

    if (v4)
    {
      v5 = &_dispatch_main_q;
      block = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_10011B798;
      v10 = &unk_10032B0D0;
      v11 = selfCopy;
      dispatch_async(v5, &block);

      objc_storeStrong(&v11, 0);
    }

    else
    {
      [(BuddyEnrollmentCoordinator *)selfCopy _presentError:location[0]];
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)requestDeviceErasureWithCompletionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
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

- (void)requestSoftwareUpdateWithInfoDictionary:(id)dictionary completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v11 = 0;
  objc_storeStrong(&v11, handler);
  [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:9];
  v5 = [location[0] objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v6 = [v5 objectForKeyedSubscript:@"OSVersion"];
  [(BuddyEnrollmentCoordinator *)selfCopy setOsVersion:v6];

  v7 = [location[0] objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v8 = [v7 objectForKeyedSubscript:@"BuildVersion"];
  [(BuddyEnrollmentCoordinator *)selfCopy setBuildVersion:v8];

  v9 = [location[0] objectForKeyedSubscript:kDMCErrorDetailsSUInfoKey];
  v10 = [v9 objectForKeyedSubscript:@"RequireBetaProgram"];

  [(BuddyEnrollmentCoordinator *)selfCopy _enrollInBetaProgramWithDictionary:v10];
  [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)requestDevicePasscodeDataWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v41 = objc_alloc_init(BYBuddyDaemonGeneralClient);
  fetchAuthenticationContextForBiometric = [v41 fetchAuthenticationContextForBiometric];
  externalizedContext = [fetchAuthenticationContextForBiometric externalizedContext];
  if (externalizedContext)
  {
    oslog = _BYLoggingFacility();
    v37 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B25DC(buf, "[BuddyEnrollmentCoordinator requestDevicePasscodeDataWithCompletionHandler:]");
      _os_log_debug_impl(&_mh_execute_header, oslog, v37, "%s: using externalizedContext from authenticationContextForBiometric", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyEnrollmentCoordinator *)selfCopy setPasscodeContext:fetchAuthenticationContextForBiometric];
  }

  else
  {
    passcodeContext = [(BuddyEnrollmentCoordinator *)selfCopy passcodeContext];
    externalizedContext2 = [(LAContext *)passcodeContext externalizedContext];

    if (externalizedContext2)
    {
      v36 = _BYLoggingFacility();
      v35 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B25DC(v49, "[BuddyEnrollmentCoordinator requestDevicePasscodeDataWithCompletionHandler:]");
        _os_log_debug_impl(&_mh_execute_header, v36, v35, "%s: using externalizedContext from local passcodeContext", v49, 0xCu);
      }

      objc_storeStrong(&v36, 0);
      passcodeContext2 = [(BuddyEnrollmentCoordinator *)selfCopy passcodeContext];
      externalizedContext3 = [(LAContext *)passcodeContext2 externalizedContext];
      v7 = externalizedContext;
      externalizedContext = externalizedContext3;
    }
  }

  if (externalizedContext)
  {
    (*(location[0] + 2))(location[0], externalizedContext, 1, 0);
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
        externalizedContext4 = [v31 externalizedContext];
        v16 = externalizedContext;
        externalizedContext = externalizedContext4;

        if (externalizedContext)
        {
          [(BuddyEnrollmentCoordinator *)selfCopy setPasscodeContext:v31];
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
      v17 = selfCopy;
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

  objc_storeStrong(&externalizedContext, 0);
  objc_storeStrong(&fetchAuthenticationContextForBiometric, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (void)requestDevicePasscodeWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  passcodeCacheManager = [(BuddyEnrollmentCoordinator *)selfCopy passcodeCacheManager];
  cachedPasscode = [(BYPasscodeCacheManager *)passcodeCacheManager cachedPasscode];

  if (cachedPasscode)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000B25DC(buf, "[BuddyEnrollmentCoordinator requestDevicePasscodeWithCompletionHandler:]");
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s using cached passcode", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v5 = location[0];
    passcodeCacheManager2 = [(BuddyEnrollmentCoordinator *)selfCopy passcodeCacheManager];
    cachedPasscode2 = [(BYPasscodeCacheManager *)passcodeCacheManager2 cachedPasscode];
    v5[2](v5, cachedPasscode2, 0);
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setPasscodeEntryCompletionHandler:location[0]];
    [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:3];
    [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
  }

  objc_storeStrong(location, 0);
}

- (void)requestUserConsentForMigrationWithPendingCloudConfig:(id)config originalEnrollmentType:(unint64_t)type isMandatory:(BOOL)mandatory deadline:(id)deadline completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, config);
  typeCopy = type;
  mandatoryCopy = mandatory;
  v25 = 0;
  objc_storeStrong(&v25, deadline);
  v24 = 0;
  objc_storeStrong(&v24, handler);
  featureFlags = [(BuddyEnrollmentCoordinator *)selfCopy featureFlags];
  LOBYTE(deadline) = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if (deadline)
  {
    (*(v24 + 2))(v24, 1);
    v23 = 1;
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:2];
    [(BuddyEnrollmentCoordinator *)selfCopy setCloudConfigConsentCompletionHandler:v24];
    [(BuddyEnrollmentCoordinator *)selfCopy setMigrationDeadline:v25];
    [(BuddyEnrollmentCoordinator *)selfCopy setIsMigrationMandatory:mandatoryCopy];
    [(BuddyEnrollmentCoordinator *)selfCopy setPendingCloudConfig:location[0]];
    oslog = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10011C8B8(buf, v25, mandatoryCopy);
      _os_log_impl(&_mh_execute_header, oslog, v21, "%s migrationDeadline: %@, isMigrationMandatory: %d", buf, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    v12 = selfCopy;
    presentingViewController = [(BuddyEnrollmentCoordinator *)selfCopy presentingViewController];
    [(BuddyEnrollmentCoordinator *)v12 _setInProgress:0 onViewController:presentingViewController];

    v14 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = sub_10011C8EC;
    v19 = &unk_10032B0D0;
    v20 = selfCopy;
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
  featureFlags = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0)
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:13];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)showMigrationFailure:(id)failure
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, failure);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10011CAAC;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissMigrationScene
{
  featureFlags = [(BuddyEnrollmentCoordinator *)self featureFlags];
  v3 = [(BuddyFeatureFlags *)featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled]^ 1;

  if ((v3 & 1) == 0)
  {
    [(BuddyEnrollmentCoordinator *)self setTargetUIState:14];
    [(BuddyEnrollmentCoordinator *)self setPresentingViewController:0];
    [(BuddyEnrollmentCoordinator *)self _updateUIIfNeeded];
  }
}

- (void)enrollmentFlowController:(id)controller didReceiveCloudConfiguration:(id)configuration
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v6 = 0;
  objc_storeStrong(&v6, configuration);
  v5 = +[BuddyCloudConfigManager sharedManager];
  [v5 cloudConfigMayHaveChanged];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentFlowController:(id)controller didUpdateEnrollmentMethod:(unint64_t)method
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  methodCopy = method;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000A4DC0(buf, "[BuddyEnrollmentCoordinator enrollmentFlowController:didUpdateEnrollmentMethod:]", methodCopy);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s %ld", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (methodCopy == 1)
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setMdmEnrollmentChannel:2];
  }

  else if (methodCopy == 3)
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setMdmEnrollmentChannel:1];
  }

  objc_storeStrong(location, 0);
}

- (void)enrollmentFlowController:(id)controller didInstallEnrollmentProfile:(id)profile
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v5 = 0;
  objc_storeStrong(&v5, profile);
  [(BuddyEnrollmentCoordinator *)selfCopy _cacheAuthenticationResults:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentFlowController:(id)controller performingEnrollmentStepWithName:(id)name status:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, name);
  v7 = 0;
  objc_storeStrong(&v7, status);
  [(BuddyEnrollmentCoordinator *)selfCopy _updateEnrollmentStateWithStepName:v8 status:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)enrollmentFlowController:(id)controller appInstallationStatusUpdatedForType:(id)type totalNumber:(unint64_t)number finishedNumber:(unint64_t)finishedNumber
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, type);
  [(BuddyEnrollmentCoordinator *)selfCopy _updateAppInstallationStatusUIWithFinishedNumber:finishedNumber totalNumber:number type:v9, finishedNumber, number];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)migrationFlowController:(id)controller appInstallationStatusUpdatedForType:(id)type totalNumber:(unint64_t)number finishedNumber:(unint64_t)finishedNumber
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, type);
  [(BuddyEnrollmentCoordinator *)selfCopy _updateAppInstallationStatusUIWithFinishedNumber:finishedNumber totalNumber:number type:v9, finishedNumber, number];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)migrationFlowController:(id)controller performingMigrationStepWithName:(id)name status:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, name);
  v7 = 0;
  objc_storeStrong(&v7, status);
  [(BuddyEnrollmentCoordinator *)selfCopy _updateMigrationStateWithStepName:v8 status:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)migrationFlowController:(id)controller performingEnrollmentStepWithName:(id)name status:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, name);
  v7 = 0;
  objc_storeStrong(&v7, status);
  [(BuddyEnrollmentCoordinator *)selfCopy _updateEnrollmentStateWithStepName:v8 status:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)shouldShowFlowItem:(id)item resultBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v18 = 0;
  objc_storeStrong(&v18, block);
  oslog = _BYLoggingFacility();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D3D8(buf, "[BuddyEnrollmentCoordinator shouldShowFlowItem:resultBlock:]", location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, v16, "%s %@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (![(BuddyEnrollmentCoordinator *)selfCopy isMDMMigrationMode]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [(BuddyEnrollmentCoordinator *)selfCopy _uiStatesHostedByFlowItem:location[0]];
    allObjects = [v12 allObjects];
    v11 = [allObjects sortedArrayUsingSelector:"compare:"];

    targetUIState = [(BuddyEnrollmentCoordinator *)selfCopy targetUIState];
    lastObject = [v11 lastObject];
    integerValue = [lastObject integerValue];

    if (targetUIState > integerValue)
    {
      (*(v18 + 2))(v18, 0, 0);
    }

    else
    {
      [(BuddyEnrollmentCoordinator *)selfCopy setRunningFlowItem:0];
      [(BuddyEnrollmentCoordinator *)selfCopy setPendingFlowItem:location[0]];
      [(BuddyEnrollmentCoordinator *)selfCopy setShouldShowFlowItemResultBlock:v18];
      v9 = [NSNumber numberWithUnsignedInteger:[(BuddyEnrollmentCoordinator *)selfCopy targetUIState]];
      v10 = [v12 containsObject:v9];

      if (v10)
      {
        [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
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
  presentingUIState = [(BuddyEnrollmentCoordinator *)self presentingUIState];
  if (presentingUIState < 2)
  {
    goto LABEL_12;
  }

  if (presentingUIState - 2 < 2)
  {
    goto LABEL_13;
  }

  if (presentingUIState == 4)
  {
    goto LABEL_12;
  }

  if (presentingUIState - 5 < 3)
  {
    goto LABEL_13;
  }

  if (presentingUIState == 8)
  {
    goto LABEL_12;
  }

  if (presentingUIState - 9 < 2)
  {
    goto LABEL_13;
  }

  if (presentingUIState == 11)
  {
    goto LABEL_12;
  }

  if (presentingUIState == 12)
  {
LABEL_13:
    v4 = 1;
    return v4 & 1;
  }

  if (presentingUIState != 13)
  {
    if (presentingUIState != 14)
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
  shouldDoReturnToService = [(DMCReturnToServiceController *)v2 shouldDoReturnToService];

  return shouldDoReturnToService & 1;
}

- (void)configureMDMWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  returnToServiceController = [(BuddyEnrollmentCoordinator *)selfCopy returnToServiceController];
  [(DMCReturnToServiceController *)returnToServiceController configureMDMWithCompletionHandler:location[0]];

  objc_storeStrong(location, 0);
}

- (id)languageStrings
{
  v2 = [(BuddyEnrollmentCoordinator *)self returnToServiceController:a2];
  languageStrings = [(DMCReturnToServiceController *)v2 languageStrings];

  return languageStrings;
}

- (id)localeString
{
  v2 = [(BuddyEnrollmentCoordinator *)self returnToServiceController:a2];
  localeString = [(DMCReturnToServiceController *)v2 localeString];

  return localeString;
}

- (BOOL)installWiFiProfileIfNeeded:(id *)needed
{
  returnToServiceController = [(BuddyEnrollmentCoordinator *)self returnToServiceController];
  v4 = [(DMCReturnToServiceController *)returnToServiceController installWiFiProfileIfNeeded:needed];

  return v4 & 1;
}

- (void)returnToServiceFlowCompleted
{
  v2 = [(BuddyEnrollmentCoordinator *)self returnToServiceController:a2];
  [(DMCReturnToServiceController *)v2 returnToServiceFlowCompleted];
}

- (void)networkAcquired
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10011D804;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)restoreChoiceWasNotRestore
{
  restoreChoiceCompletionHandler = [(BuddyEnrollmentCoordinator *)self restoreChoiceCompletionHandler];

  if (restoreChoiceCompletionHandler)
  {
    restoreChoiceCompletionHandler2 = [(BuddyEnrollmentCoordinator *)self restoreChoiceCompletionHandler];
    restoreChoiceCompletionHandler2[2](restoreChoiceCompletionHandler2, 1);

    [(BuddyEnrollmentCoordinator *)self setRestoreChoiceCompletionHandler:0];
  }
}

- (void)setNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  navController = [(BuddyEnrollmentCoordinator *)selfCopy navController];

  if (!navController)
  {
    [location[0] addDelegateObserver:selfCopy];
    [(BuddyEnrollmentCoordinator *)selfCopy setNavController:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)deviceActivated
{
  activationCompletionHandler = [(BuddyEnrollmentCoordinator *)self activationCompletionHandler];

  if (activationCompletionHandler)
  {
    activationCompletionHandler2 = [(BuddyEnrollmentCoordinator *)self activationCompletionHandler];
    activationCompletionHandler2[2](activationCompletionHandler2, 0);

    [(BuddyEnrollmentCoordinator *)self setActivationCompletionHandler:0];
  }
}

- (void)setCurrentFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D3D8(buf, "[BuddyEnrollmentCoordinator setCurrentFlowItem:]", location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(BuddyEnrollmentCoordinator *)selfCopy setRunningFlowItem:location[0]];
  [(BuddyEnrollmentCoordinator *)selfCopy setPendingFlowItem:0];
  objc_storeStrong(location, 0);
}

- (id)_fatalUIStatesForFlowItem:(id)item
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
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
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_10011DF78(buf, [(BuddyEnrollmentCoordinator *)selfCopy presentingUIState], [(BuddyEnrollmentCoordinator *)selfCopy pendingUIState], [(BuddyEnrollmentCoordinator *)selfCopy targetUIState]);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], v17, "%s presentingUIState: %lu, pendingUIState: %lu targetUIState: %lu", buf, 0x2Au);
  }

  objc_storeStrong(oslog, 0);
  presentingUIState = [(BuddyEnrollmentCoordinator *)selfCopy presentingUIState];
  if (presentingUIState == [(BuddyEnrollmentCoordinator *)selfCopy pendingUIState])
  {
    pendingUIState = [(BuddyEnrollmentCoordinator *)selfCopy pendingUIState];
    if (pendingUIState == [(BuddyEnrollmentCoordinator *)selfCopy targetUIState])
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
      [(BuddyEnrollmentCoordinator *)selfCopy setDisableNextUIUpdate:0];
      targetUIState = [(BuddyEnrollmentCoordinator *)selfCopy targetUIState];
      v10 = targetUIState;
      if (targetUIState == 3 || (targetUIState - 5) < 3 || targetUIState == 9)
      {
        presentingViewController = [(BuddyEnrollmentCoordinator *)selfCopy presentingViewController];

        if (!presentingViewController)
        {
          v10 = 2;
          [(BuddyEnrollmentCoordinator *)selfCopy setDisableNextUIUpdate:1];
        }
      }

      [(BuddyEnrollmentCoordinator *)selfCopy _showPaneForUIState:v10];
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

- (void)_showPaneForUIState:(unint64_t)state
{
  selfCopy = self;
  v14 = a2;
  stateCopy = state;
  oslog = _BYLoggingFacility();
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    runningFlowItem = [selfCopy runningFlowItem];
    sub_10011E154(buf, stateCopy, runningFlowItem);
    _os_log_debug_impl(&_mh_execute_header, oslog, v11, "%s state: %lu, %@", buf, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v4 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10011E188;
  v9 = &unk_10032B718;
  v10[0] = selfCopy;
  v10[1] = stateCopy;
  dispatch_async(v4, &block);

  objc_storeStrong(v10, 0);
}

- (id)_uiStatesHostedByFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3 = [(BuddyEnrollmentCoordinator *)selfCopy _uiStatesHostedByFlowItemClass:objc_opt_class()];
  objc_storeStrong(location, 0);

  return v3;
}

- (id)_uiStatesHostedByFlowItemClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = [NSSet setWithArray:&off_10033CEF8];
  }

  else if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = [NSSet setWithArray:&off_10033CF10];
  }

  else if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = [NSSet setWithArray:&off_10033CF28];
  }

  else if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = [NSSet setWithArray:&off_10033CF40];
  }

  else
  {
    v5 = objc_opt_new();
  }

  return v5;
}

- (BOOL)_shouldPopBackToDisclosureOnFailureForFlowItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3 = [(BuddyEnrollmentCoordinator *)selfCopy _shouldPopBackToDisclosureOnFailureForFlowItemClass:objc_opt_class()];
  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)_cacheAuthenticationResults:(id)results
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
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

- (void)_presentError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10011F2E4;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)_defaultAlertForError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  localizedDescription = [location[0] localizedDescription];
  v15 = 0;
  v3 = 0;
  if (os_variant_has_internal_ui())
  {
    underlyingErrors = [location[0] underlyingErrors];
    v15 = 1;
    v3 = underlyingErrors != 0;
  }

  if (v15)
  {
  }

  if (v3)
  {
    underlyingErrors2 = [location[0] underlyingErrors];
    firstObject = [underlyingErrors2 firstObject];
    v6 = [firstObject description];
    v7 = [NSString stringWithFormat:@"%@\n\n[Internal only]\n%@", localizedDescription, v6];
    v8 = localizedDescription;
    localizedDescription = v7;
  }

  v9 = +[NSBundle mainBundle];
  v10 = [(NSBundle *)v9 localizedStringForKey:@"REMOTE_MANAGEMENT_MIGRATION_NETWORK_ERROR_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v14 = [UIAlertController alertControllerWithTitle:v10 message:localizedDescription preferredStyle:1];

  _errorDismissAction = [(BuddyEnrollmentCoordinator *)selfCopy _errorDismissAction];
  [v14 addAction:_errorDismissAction];

  v12 = v14;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&localizedDescription, 0);
  objc_storeStrong(location, 0);
  return v12;
}

- (id)_errorDismissAction
{
  selfCopy = self;
  v11[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [(NSBundle *)v2 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_10011F9F8;
  v10 = &unk_10032B598;
  v11[0] = selfCopy;
  v4 = [UIAlertAction actionWithTitle:v3 style:0 handler:&v6];
  objc_storeStrong(v11, 0);

  return v4;
}

- (void)_presentAlert:(id)alert onViewController:(id)controller
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v5 = 0;
  objc_storeStrong(&v5, controller);
  [v5 presentViewController:location[0] animated:1 completion:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)_viewControllerToRemoveWhenItemIsDone
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_opt_new();
  v13 = 0;
  memset(v11, 0, sizeof(v11));
  navController = [(BuddyEnrollmentCoordinator *)selfCopy navController];
  viewControllers = [(BFFNavigationController *)navController viewControllers];

  v4 = [viewControllers countByEnumeratingWithState:v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v11[2] != v5)
        {
          objc_enumerationMutation(viewControllers);
        }

        v12 = *(v11[1] + 8 * i);
        viewControllersToRemove = [(BuddyEnrollmentCoordinator *)selfCopy viewControllersToRemove];
        v8 = [(NSMutableArray *)viewControllersToRemove containsObject:v12];

        if (v8)
        {
          v13 = 1;
        }

        if (v13)
        {
          [location[0] addObject:v12];
        }
      }

      v4 = [viewControllers countByEnumeratingWithState:v11 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = [location[0] copy];
  objc_storeStrong(location, 0);

  return v9;
}

- (void)_popToDisclosureAndRestartEnrollment
{
  selfCopy = self;
  v15 = a2;
  navController = [(BuddyEnrollmentCoordinator *)self navController];
  location = [(BFFNavigationController *)navController viewControllers];

  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10011FFC8;
  v11 = &unk_10032D268;
  v12 = selfCopy;
  v13 = [location indexOfObjectPassingTest:&v7];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v3 handleFailureInMethod:v15 object:selfCopy file:@"BuddyEnrollmentCoordinator.m" lineNumber:1442 description:@"Can't pop back to cloud config disclosure pane because it's not in the stack"];
  }

  v6 = [location objectAtIndexedSubscript:v13];
  navController2 = [(BuddyEnrollmentCoordinator *)selfCopy navController];
  v5 = [(BFFNavigationController *)navController2 popToViewController:v6 animated:1];

  [(BuddyEnrollmentCoordinator *)selfCopy _setInProgress:1 onViewController:v6];
  [(BuddyEnrollmentCoordinator *)selfCopy setPresentingViewController:v6];
  [(BuddyEnrollmentCoordinator *)selfCopy setEnrollmentFlowController:0];
  [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:0];
  [(BuddyEnrollmentCoordinator *)selfCopy setPresentingUIState:2];
  [(BuddyEnrollmentCoordinator *)selfCopy startEnrollmentFlow];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)_popOutOfEnrollmentFlow
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  memset(__b, 0, sizeof(__b));
  navController = [(BuddyEnrollmentCoordinator *)selfCopy navController];
  viewControllers = [(BFFNavigationController *)navController viewControllers];

  v4 = [viewControllers countByEnumeratingWithState:__b objects:v14 count:16];
  if (v4)
  {
    v5 = *__b[2];
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(viewControllers);
      }

      obj = *(__b[1] + 8 * v6);
      if ([(BuddyEnrollmentCoordinator *)selfCopy _uiStateForControllerClass:objc_opt_class()])
      {
        break;
      }

      objc_storeStrong(location, obj);
      if (++v6 >= v4)
      {
        v4 = [viewControllers countByEnumeratingWithState:__b objects:v14 count:16];
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
    navController2 = [(BuddyEnrollmentCoordinator *)selfCopy navController];
    v8 = [(BFFNavigationController *)navController2 popToViewController:location[0] animated:1];
  }

  else
  {
    navController2 = [(BuddyEnrollmentCoordinator *)selfCopy navController];
    v9 = [(BFFNavigationController *)navController2 popToRootViewControllerAnimated:1];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldUseNavController
{
  v2 = [(BuddyEnrollmentCoordinator *)self presentingViewController:a2];
  v3 = v2 != 0;

  return v3;
}

- (void)_setInProgress:(BOOL)progress onViewController:(id)controller
{
  selfCopy = self;
  v6 = a2;
  progressCopy = progress;
  v4 = 0;
  objc_storeStrong(&v4, controller);
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___BuddyEnrollmentViewControllerProtocol] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v4 setInProgress:progressCopy];
  }

  objc_storeStrong(&v4, 0);
}

- (void)_showWiFiPicker
{
  v2 = [(BuddyEnrollmentCoordinator *)self showModalWiFiSettingsBlock:a2];
  (*(v2 + 2))(v2, 0, 0);
}

- (void)_showWiFiPickerWithDismissalTriggers:(unint64_t)triggers completionHandler:(id)handler
{
  selfCopy = self;
  v17 = a2;
  triggersCopy = triggers;
  location = 0;
  objc_storeStrong(&location, handler);
  wifiAssociationWatcher = [(BuddyEnrollmentCoordinator *)selfCopy wifiAssociationWatcher];
  countOfAssociationAttempts = [wifiAssociationWatcher countOfAssociationAttempts];
  showModalWiFiSettingsBlock = [(BuddyEnrollmentCoordinator *)selfCopy showModalWiFiSettingsBlock];
  v5 = triggersCopy;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1001204EC;
  v10 = &unk_10032B7C8;
  v11 = wifiAssociationWatcher;
  v12[1] = countOfAssociationAttempts;
  v12[0] = location;
  showModalWiFiSettingsBlock[2](showModalWiFiSettingsBlock, v5, &v6);

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&wifiAssociationWatcher, 0);
  objc_storeStrong(&location, 0);
}

- (id)_makeMigrationUIConfiguration
{
  if ([(BuddyEnrollmentCoordinator *)self isMDMMigrationMode])
  {
    networkProvider = [(BuddyEnrollmentCoordinator *)self networkProvider];
    failedMigrationDueToNetworkError = 0;
    if ([(BuddyNetworkProvider *)networkProvider supportsWiFi])
    {
      failedMigrationDueToNetworkError = [(BuddyEnrollmentCoordinator *)self failedMigrationDueToNetworkError];
    }

    v9 = failedMigrationDueToNetworkError & 1;
    v4 = [BuddyCloudConfigMigrationUIConfiguration alloc];
    isMigrationMandatory = [(BuddyEnrollmentCoordinator *)self isMigrationMandatory];
    migrationDeadline = [(BuddyEnrollmentCoordinator *)self migrationDeadline];
    pendingCloudConfig = [(BuddyEnrollmentCoordinator *)self pendingCloudConfig];
    v11 = [(BuddyCloudConfigMigrationUIConfiguration *)v4 initWithIsMandatory:isMigrationMandatory & 1 deadline:migrationDeadline showsWiFiPickerButton:v9 & 1 pendingCloudConfig:pendingCloudConfig];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateMigrationUIConfiguration
{
  selfCopy = self;
  v11 = a2;
  memset(__b, 0, sizeof(__b));
  navController = [(BuddyEnrollmentCoordinator *)selfCopy navController];
  viewControllers = [(BFFNavigationController *)navController viewControllers];

  v4 = [viewControllers countByEnumeratingWithState:__b objects:v13 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(__b[1] + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          location = v10;
          _makeMigrationUIConfiguration = [(BuddyEnrollmentCoordinator *)selfCopy _makeMigrationUIConfiguration];
          [location setMigrationUIConfiguration:_makeMigrationUIConfiguration];

          objc_storeStrong(&location, 0);
          goto LABEL_10;
        }
      }

      v4 = [viewControllers countByEnumeratingWithState:__b objects:v13 count:16];
    }

    while (v4);
  }

LABEL_10:
}

- (void)_addNetworkAcquisitionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  networkProvider = [(BuddyEnrollmentCoordinator *)selfCopy networkProvider];
  networkReachable = [(BuddyNetworkProvider *)networkProvider networkReachable];

  if (networkReachable)
  {
    (*(location[0] + 2))();
  }

  else
  {
    networkAcquisitionHandlers = [(BuddyEnrollmentCoordinator *)selfCopy networkAcquisitionHandlers];
    v6 = objc_retainBlock(location[0]);
    [(NSMutableArray *)networkAcquisitionHandlers addObject:v6];
  }

  objc_storeStrong(location, 0);
}

- (void)_addNetworkAcquisitionHandler:(id)handler withTimeout:(double)timeout
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  timeoutCopy = timeout;
  v20[0] = 0;
  v20[1] = v20;
  v21 = 0x20000000;
  v22 = 32;
  v23 = 0;
  v5 = dispatch_time(0, (timeout * 1000000000.0));
  v6 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_100120AEC;
  v18 = &unk_10032D290;
  v19[1] = v20;
  v19[0] = location[0];
  dispatch_after(v5, v6, &block);

  v7 = selfCopy;
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

- (void)_updateAppInstallationStatusUIWithFinishedNumber:(unint64_t)number totalNumber:(unint64_t)totalNumber type:(id)type
{
  selfCopy = self;
  v15 = a2;
  numberCopy = number;
  totalNumberCopy = totalNumber;
  location = 0;
  objc_storeStrong(&location, type);
  if (os_variant_has_internal_ui())
  {
    v10 = 0;
    totalNumberCopy = [NSString stringWithFormat:@"%@ apps: %lu of %lu completed.", location, numberCopy, totalNumberCopy];
    if ([location isEqualToString:@"MDM managed"])
    {
      managedAppInstallationState = [(BuddyEnrollmentCoordinator *)selfCopy managedAppInstallationState];
      v6 = [totalNumberCopy isEqualToString:managedAppInstallationState] ^ 1;

      if (v6)
      {
        [(BuddyEnrollmentCoordinator *)selfCopy setManagedAppInstallationState:totalNumberCopy];
        v10 = 1;
      }
    }

    else if ([location isEqualToString:@"System deletable"])
    {
      systemAppInstallationState = [(BuddyEnrollmentCoordinator *)selfCopy systemAppInstallationState];
      v8 = [totalNumberCopy isEqualToString:systemAppInstallationState] ^ 1;

      if (v8)
      {
        [(BuddyEnrollmentCoordinator *)selfCopy setSystemAppInstallationState:totalNumberCopy];
        v10 = 1;
      }
    }

    if (v10)
    {
      [(BuddyEnrollmentCoordinator *)selfCopy _updateEnrollmentStateUIIfNeeded];
    }

    objc_storeStrong(&totalNumberCopy, 0);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (void)_updateEnrollmentStateWithStepName:(id)name status:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v14 = 0;
  objc_storeStrong(&v14, status);
  if (os_variant_has_internal_ui())
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setSystemAppInstallationState:0];
    [(BuddyEnrollmentCoordinator *)selfCopy setManagedAppInstallationState:0];
    v12 = [(BuddyEnrollmentCoordinator *)selfCopy _stateStringWithStepName:location[0] status:v14];
    v10 = 0;
    v8 = 0;
    v6 = 0;
    if (!v12 || (v11 = -[BuddyEnrollmentCoordinator enrollmentStepState](selfCopy, "enrollmentStepState"), v10 = 1, v5 = 1, ([v12 isEqualToString:?] & 1) != 0))
    {
      enrollmentStepState = [(BuddyEnrollmentCoordinator *)selfCopy enrollmentStepState];
      v8 = 1;
      v5 = 0;
      if (enrollmentStepState)
      {
        enrollmentStepState2 = [(BuddyEnrollmentCoordinator *)selfCopy enrollmentStepState];
        v6 = 1;
        v5 = [(NSString *)enrollmentStepState2 isEqualToString:v12];
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
      [(BuddyEnrollmentCoordinator *)selfCopy setEnrollmentStepState:v12];
      [(BuddyEnrollmentCoordinator *)selfCopy _updateEnrollmentStateUIIfNeeded];
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

- (void)_updateMigrationStateWithStepName:(id)name status:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v14 = 0;
  objc_storeStrong(&v14, status);
  if (os_variant_has_internal_ui())
  {
    [(BuddyEnrollmentCoordinator *)selfCopy _updateEnrollmentStateWithStepName:0 status:0];
    v12 = [(BuddyEnrollmentCoordinator *)selfCopy _stateStringWithStepName:location[0] status:v14];
    v10 = 0;
    v8 = 0;
    v6 = 0;
    if (!v12 || (v11 = -[BuddyEnrollmentCoordinator migrationStepState](selfCopy, "migrationStepState"), v10 = 1, v5 = 1, ([v12 isEqualToString:?] & 1) != 0))
    {
      migrationStepState = [(BuddyEnrollmentCoordinator *)selfCopy migrationStepState];
      v8 = 1;
      v5 = 0;
      if (migrationStepState)
      {
        migrationStepState2 = [(BuddyEnrollmentCoordinator *)selfCopy migrationStepState];
        v6 = 1;
        v5 = [(NSString *)migrationStepState2 isEqualToString:v12];
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
      [(BuddyEnrollmentCoordinator *)selfCopy setMigrationStepState:v12];
      [(BuddyEnrollmentCoordinator *)selfCopy _updateEnrollmentStateUIIfNeeded];
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
  selfCopy = self;
  v11 = a2;
  presentingViewController = [(BuddyEnrollmentCoordinator *)self presentingViewController];
  v9 = 0;
  v3 = 1;
  if (([(UIViewController *)presentingViewController conformsToProtocol:&OBJC_PROTOCOL___BuddyEnrollmentViewControllerProtocol]& 1) != 0)
  {
    presentingViewController2 = [(BuddyEnrollmentCoordinator *)selfCopy presentingViewController];
    v9 = 1;
    v3 = objc_opt_respondsToSelector() ^ 1;
  }

  if (v9)
  {
  }

  if ((v3 & 1) == 0)
  {
    v6 = 0;
    if ([(BuddyEnrollmentCoordinator *)selfCopy shouldPresentEnrollmentStatus])
    {
      _statusStringToBeDisplayed = [(BuddyEnrollmentCoordinator *)selfCopy _statusStringToBeDisplayed];
      v7 = _statusStringToBeDisplayed;
      v6 = 1;
    }

    else
    {
      _statusStringToBeDisplayed = 0;
    }

    location = _statusStringToBeDisplayed;
    if (v6)
    {
    }

    presentingViewController3 = [(BuddyEnrollmentCoordinator *)selfCopy presentingViewController];
    [(UIViewController *)presentingViewController3 presentEnrollmentStatusForDebugging:location];

    objc_storeStrong(&location, 0);
  }
}

- (id)_stateStringWithStepName:(id)name status:(id)status
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v8 = 0;
  objc_storeStrong(&v8, status);
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
  selfCopy = self;
  location[1] = a2;
  location[0] = [@"[Internal Only]" mutableCopy];
  v19 = 0;
  migrationStepState = [(BuddyEnrollmentCoordinator *)selfCopy migrationStepState];
  v3 = [(NSString *)migrationStepState length];

  if (v3)
  {
    v19 = 1;
    migrationStepState2 = [(BuddyEnrollmentCoordinator *)selfCopy migrationStepState];
    [location[0] appendFormat:@"\nMigration step: %@", migrationStepState2];
  }

  enrollmentStepState = [(BuddyEnrollmentCoordinator *)selfCopy enrollmentStepState];
  v6 = [(NSString *)enrollmentStepState length];

  if (v6)
  {
    v19 = 1;
    enrollmentStepState2 = [(BuddyEnrollmentCoordinator *)selfCopy enrollmentStepState];
    [location[0] appendFormat:@"\nEnrollment step: %@", enrollmentStepState2];

    managedAppInstallationState = [(BuddyEnrollmentCoordinator *)selfCopy managedAppInstallationState];
    v17 = 0;
    v9 = 1;
    if (![(NSString *)managedAppInstallationState length])
    {
      systemAppInstallationState = [(BuddyEnrollmentCoordinator *)selfCopy systemAppInstallationState];
      v17 = 1;
      v9 = [(NSString *)systemAppInstallationState length]!= 0;
    }

    if (v17)
    {
    }

    if (v9)
    {
      managedAppInstallationState2 = [(BuddyEnrollmentCoordinator *)selfCopy managedAppInstallationState];
      systemAppInstallationState2 = [(BuddyEnrollmentCoordinator *)selfCopy systemAppInstallationState];
      [location[0] appendFormat:@"\n%@\n%@", managedAppInstallationState2, systemAppInstallationState2];
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

- (void)_showInternalUIUpdated:(id)updated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updated);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100121674;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)viewControllerForUIState:(unint64_t)state
{
  switch(state)
  {
    case 1uLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self retrievalViewController];
      break;
    case 2uLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self disclosureViewController];
      break;
    case 3uLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self passcodeViewController];
      break;
    case 4uLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self migrationUnenrollmentViewController];
      break;
    case 5uLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self nativeAuthViewController];
      break;
    case 6uLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self webAuthViewController];
      break;
    case 7uLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self maidAuthenticationController];
      break;
    case 8uLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self maidSignInController];
      break;
    case 9uLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self mandatoryUpdateController];
      break;
    case 0xBuLL:
      v7 = 0;
      v5 = 0;
      if ([(BuddyEnrollmentCoordinator *)self isMDMMigrationMode])
      {
        migrationEnrollmentViewController = [(BuddyEnrollmentCoordinator *)self migrationEnrollmentViewController];
        v8 = migrationEnrollmentViewController;
        v7 = 1;
      }

      else
      {
        migrationEnrollmentViewController = [(BuddyEnrollmentCoordinator *)self installationViewController];
        v6 = migrationEnrollmentViewController;
        v5 = 1;
      }

      retrievalViewController = migrationEnrollmentViewController;
      if (v5)
      {
      }

      if (v7)
      {
      }

      break;
    case 0xCuLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self awaitConfigurationViewController];
      break;
    case 0xDuLL:
      retrievalViewController = [(BuddyEnrollmentCoordinator *)self migrationDoneViewController];
      break;
    default:
      retrievalViewController = 0;
      break;
  }

  return retrievalViewController;
}

- (id)retrievalViewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigurationRetrievalController);
  [location[0] setEnrollmentCoordinator:selfCopy];
  featureFlags = [(BuddyEnrollmentCoordinator *)selfCopy featureFlags];
  [location[0] setFeatureFlags:featureFlags];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)disclosureViewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  if ([(BuddyEnrollmentCoordinator *)self isMDMMigrationMode])
  {
    _makeMigrationUIConfiguration = [(BuddyEnrollmentCoordinator *)selfCopy _makeMigrationUIConfiguration];
    v3 = location[0];
    location[0] = _makeMigrationUIConfiguration;
  }

  v7 = [[BuddyCloudConfigDisclosureViewController_new alloc] initWithMigrationUIConfiguration:location[0]];
  managedConfiguration = [(BuddyEnrollmentCoordinator *)selfCopy managedConfiguration];
  [v7 setManagedConfiguration:managedConfiguration];

  [v7 setDisclosureVCDelegate:selfCopy];
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
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyAwaitDeviceConfigurationViewController);
  if ([(BuddyEnrollmentCoordinator *)selfCopy shouldPresentEnrollmentStatus])
  {
    _statusStringToBeDisplayed = [(BuddyEnrollmentCoordinator *)selfCopy _statusStringToBeDisplayed];
    [location[0] presentEnrollmentStatusForDebugging:_statusStringToBeDisplayed];
  }

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)nativeAuthViewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigLoginViewController_new);
  [location[0] setLoginVCDelegate:selfCopy];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)webAuthViewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigWebAuthViewController);
  [location[0] setModalInPresentation:1];
  webURL = [(BuddyEnrollmentCoordinator *)selfCopy webURL];
  [location[0] setWebURL:webURL];

  machineInfo = [(BuddyEnrollmentCoordinator *)selfCopy machineInfo];
  [location[0] setMachineInfo:machineInfo];

  anchorCerts = [(BuddyEnrollmentCoordinator *)selfCopy anchorCerts];
  [location[0] setAnchorCerts:anchorCerts];

  [location[0] setDelegate:selfCopy];
  v5 = location[0];
  objc_storeStrong(location, 0);
  return v5;
}

- (id)maidAuthenticationController
{
  selfCopy = self;
  v18[1] = a2;
  navController = [(BuddyEnrollmentCoordinator *)self navController];
  passcodeCacheManager = [(BuddyEnrollmentCoordinator *)selfCopy passcodeCacheManager];
  featureFlags = [(BuddyEnrollmentCoordinator *)selfCopy featureFlags];
  v18[0] = [BuddyAppleIDSignInController federatedAuthSignInControllerInNavigationController:navController mode:8 passcodeCacheManager:passcodeCacheManager featureFlags:featureFlags];

  managedAppleID = [(BuddyEnrollmentCoordinator *)selfCopy managedAppleID];
  v6 = [(NSString *)managedAppleID length];

  if (v6)
  {
    managedAppleID2 = [(BuddyEnrollmentCoordinator *)selfCopy managedAppleID];
    [v18[0] setUsername:managedAppleID2];

    [v18[0] setIsUsernameEditable:0];
  }

  objc_initWeak(&location, v18[0]);
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100121EAC;
  v14 = &unk_10032D2E0;
  v15 = selfCopy;
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
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(SUScanOptions);
  [location[0] setForced:1];
  [location[0] setIdentifier:@"com.apple.purplebuddy.software_update"];
  osVersion = [(BuddyEnrollmentCoordinator *)selfCopy osVersion];
  [location[0] setRequestedPMV:osVersion];

  buildVersion = [(BuddyEnrollmentCoordinator *)selfCopy buildVersion];
  [location[0] setRequestedBuild:buildVersion];

  v9 = objc_alloc_init(BuddyMandatoryUpdateController);
  [v9 setMdmUpdateOptions:location[0]];
  networkProvider = [(BuddyEnrollmentCoordinator *)selfCopy networkProvider];
  [v9 setNetworkProvider:networkProvider];

  runningFlowItem = [(BuddyEnrollmentCoordinator *)selfCopy runningFlowItem];
  delegate = [(BuddyEnrollmentFlowItem *)runningFlowItem delegate];
  [v9 setDelegate:delegate];

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
  navigationItem = [location[0] navigationItem];
  [navigationItem setHidesBackButton:1];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)migrationEnrollmentViewController
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyEnrollmentSpinnerViewController);
  navigationItem = [location[0] navigationItem];
  [navigationItem setHidesBackButton:1];

  v3 = location[0];
  objc_storeStrong(location, 0);
  return v3;
}

- (id)migrationDoneViewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(BuddyCloudConfigMigrationDoneViewController);
  [location[0] setMigrationDoneVCDelegate:selfCopy];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (id)passcodeViewController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [[BuddyPasscodeEntryController alloc] initWithNibName:0 bundle:0];
  [location[0] setDelegate:selfCopy];
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"REMOTE_MANAGEMENT_MIGRATION_PASSCODE_PROMPT_TITLE"];
  v4 = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];
  [location[0] setTitleText:v4];

  v5 = location[0];
  objc_storeStrong(location, 0);
  return v5;
}

- (unint64_t)_uiStateForControllerClass:(Class)class
{
  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 2;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 11;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 12;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 5;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 6;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 7;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 10;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 11;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 4;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 13;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return 3;
  }

  return 0;
}

- (void)disclosureViewController:(id)controller didReceiveUserConsent:(BOOL)consent
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  consentCopy = consent;
  [(BuddyEnrollmentCoordinator *)selfCopy _setInProgress:1 onViewController:location[0]];
  if ([(BuddyEnrollmentCoordinator *)selfCopy targetUIState]== 2)
  {
    cloudConfigConsentCompletionHandler = [(BuddyEnrollmentCoordinator *)selfCopy cloudConfigConsentCompletionHandler];

    if (cloudConfigConsentCompletionHandler)
    {
      cloudConfigConsentCompletionHandler2 = [(BuddyEnrollmentCoordinator *)selfCopy cloudConfigConsentCompletionHandler];
      (cloudConfigConsentCompletionHandler2)[2](cloudConfigConsentCompletionHandler2, consentCopy);

      [(BuddyEnrollmentCoordinator *)selfCopy setCloudConfigConsentCompletionHandler:0];
    }
  }

  else if ([(BuddyEnrollmentCoordinator *)selfCopy targetUIState]> 2)
  {
    [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
  }

  objc_storeStrong(location, 0);
}

- (void)disclosureViewControllerWantsToShowWiFiPicker:(id)picker
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, picker);
  [(BuddyEnrollmentCoordinator *)selfCopy _showWiFiPicker];
  objc_storeStrong(location, 0);
}

- (void)webAuthCanceled:(id)canceled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, canceled);
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
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)recievedProfile:(id)profile
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, profile);
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
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)loginViewController:(id)controller didreceiveUsername:(id)username password:(id)password
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, username);
  v9 = 0;
  objc_storeStrong(&v9, password);
  nativeAuthCompletionHandler = [(BuddyEnrollmentCoordinator *)selfCopy nativeAuthCompletionHandler];

  if (nativeAuthCompletionHandler)
  {
    nativeAuthCompletionHandler2 = [(BuddyEnrollmentCoordinator *)selfCopy nativeAuthCompletionHandler];
    nativeAuthCompletionHandler2[2](nativeAuthCompletionHandler2, v10, v9, 0);

    [(BuddyEnrollmentCoordinator *)selfCopy setNativeAuthCompletionHandler:0];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)migrationDoneViewControllerWantsToExitBuddy:(id)buddy
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, buddy);
  [(BuddyEnrollmentCoordinator *)selfCopy setTargetUIState:14];
  [(BuddyEnrollmentCoordinator *)selfCopy setPresentingViewController:0];
  [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v18 = 0;
  objc_storeStrong(&v18, viewController);
  operationCopy = operation;
  animatedCopy = animated;
  v15 = [(BuddyEnrollmentCoordinator *)selfCopy _uiStateForControllerClass:objc_opt_class()];
  if (v15)
  {
    if (v15 == 10)
    {
      viewControllersToRemove = [(BuddyEnrollmentCoordinator *)selfCopy viewControllersToRemove];
      [(NSMutableArray *)viewControllersToRemove addObject:v18];
    }

    v14 = [(BuddyEnrollmentCoordinator *)selfCopy pendingUIState]== v15;
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100123D70(buf, v14, v15, [(BuddyEnrollmentCoordinator *)selfCopy presentingUIState]);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s isPresenting %d state: %ld self.presentingUIState: %ld", buf, 0x26u);
    }

    objc_storeStrong(&oslog, 0);
    [(BuddyEnrollmentCoordinator *)selfCopy setPresentingUIState:v15];
    [(BuddyEnrollmentCoordinator *)selfCopy setPendingUIState:v15];
    [(BuddyEnrollmentCoordinator *)selfCopy setPresentingViewController:v18];
    pendingError = [(BuddyEnrollmentCoordinator *)selfCopy pendingError];

    if (pendingError)
    {
      v11 = selfCopy;
      pendingError2 = [(BuddyEnrollmentCoordinator *)selfCopy pendingError];
      [(BuddyEnrollmentCoordinator *)v11 _presentError:pendingError2];

      [(BuddyEnrollmentCoordinator *)selfCopy setPendingError:0];
    }

    else if (v14 && ![(BuddyEnrollmentCoordinator *)selfCopy disableNextUIUpdate])
    {
      [(BuddyEnrollmentCoordinator *)selfCopy _updateUIIfNeeded];
    }
  }

  else
  {
    [(BuddyEnrollmentCoordinator *)selfCopy setPresentingViewController:0];
    [(BuddyEnrollmentCoordinator *)selfCopy setPresentingUIState:0];
    [(BuddyEnrollmentCoordinator *)selfCopy setPendingUIState:0];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)_enrollInBetaProgramWithDictionary:(id)dictionary
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
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

- (void)passcodeEntryController:(id)controller didEnterPasscode:(id)passcode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, passcode);
  passcodeCacheManager = [(BuddyEnrollmentCoordinator *)selfCopy passcodeCacheManager];
  [(BYPasscodeCacheManager *)passcodeCacheManager cachePasscode:v8 retrievable:1];

  passcodeEntryCompletionHandler = [(BuddyEnrollmentCoordinator *)selfCopy passcodeEntryCompletionHandler];
  if (passcodeEntryCompletionHandler)
  {
    passcodeEntryCompletionHandler2 = [(BuddyEnrollmentCoordinator *)selfCopy passcodeEntryCompletionHandler];
    passcodeEntryCompletionHandler2[2](passcodeEntryCompletionHandler2, v8, 0);

    [(BuddyEnrollmentCoordinator *)selfCopy setPasscodeEntryCompletionHandler:0];
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