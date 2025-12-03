@interface SetupController
- (BFFNavigationController)modalWiFiSettingsNavigationController;
- (BOOL)_didRestoreIniTunes;
- (BOOL)_doesRestartFlowCauseErase;
- (BOOL)_hasLocaleAndLanguage;
- (BOOL)_isBackInBuddyAfterRestoreFromBackup:(BOOL)backup;
- (BOOL)_isBackInBuddyForActivationOnly;
- (BOOL)_isTeslaEnrolled;
- (BOOL)_restoreFromBackupJustFinished;
- (BOOL)_userSelectedLocale:(id)locale localePaneScrollOffset:(double)offset;
- (BOOL)airplaneModeEnabled;
- (BOOL)doesTapFreeSetupAffectsClass:(Class)class;
- (BOOL)hasCloudConfiguration;
- (BOOL)isAlertPresented:(id)presented;
- (BOOL)isFirstRunWithoutCloudConfiguration;
- (BOOL)isLanguageSet;
- (BOOL)shouldBeginMigration;
- (BOOL)shouldBeginRestore;
- (BOOL)shouldEndLifecycleForCause:(unint64_t)cause;
- (BOOL)shouldTapFreeSetupSkipControllerClass:(Class)class;
- (BOOL)updateLanguageLocale:(id)locale;
- (BOOL)userSelectedLanguageWithLocale:(id)locale countryCode:(id)code localePaneScrollOffset:(double)offset;
- (BOOL)willRestartFlowToViewController:(id)controller;
- (BOOL)willSetUpAsNew;
- (BuddyFlowItemDispositionProvider)flowItemDispositionProvider;
- (BuddyMiscState)miscState;
- (BuddyRemoteManagementProvider)remoteManagementProvider;
- (SetupController)init;
- (id)_associationErrorFromNotification:(id)notification;
- (id)_stringForStartupCause:(unint64_t)cause;
- (unint64_t)intendedRestoreType;
- (unint64_t)restoreType;
- (void)TFDEPPollTimerFired:(id)fired;
- (void)_addSBAlertItemsSupressionAssertion;
- (void)_cleanUpModalWiFiSettings;
- (void)_commitAnalytics;
- (void)_connectedToWiFiAfterProximity;
- (void)_createNavigationController;
- (void)_executeAfterBuddyPreTerminationTasksFinish:(id)finish;
- (void)_exitBuddyForDemoSetUp;
- (void)_exitBuddyForMDMMigration;
- (void)_hideModalWiFiSettingsWithReason:(id)reason;
- (void)_initializeGreen;
- (void)_languageChangeAlertDone;
- (void)_localeChanged;
- (void)_menuButtonPressed;
- (void)_modalWifiControllerDone:(id)done;
- (void)_networkPathChanged;
- (void)_persistAnalyticsForLanguageReboot;
- (void)_persistAnalyticsForSoftwareUpdate;
- (void)_populatePowerLogAnalytics;
- (void)_populateSetupAnalytics;
- (void)_preCommitAnalytics;
- (void)_preStashAnalytics;
- (void)_preflightDispositionValidationWithControllerClass:(Class)class;
- (void)_prepareForCloudRestoreReboot;
- (void)_prepareForDeviceMigrationAfterSoftwareUpdate:(BOOL)update;
- (void)_prepareForMigrationReboot;
- (void)_queuePreTerminationTask:(id)task taskDescription:(id)description withTimeoutInSeconds:(id)seconds;
- (void)_refreshLanguage;
- (void)_removeSBAlertItemsSupressionAssertion;
- (void)_setupAnalytics;
- (void)_setupAndStartMDMEnrollmentIfNeeded;
- (void)_setupSnapshotRemoved;
- (void)_setupStateChanged;
- (void)_showMiniAlertWithRestart:(BOOL)restart withLanguage:(id)language;
- (void)_showModalWiFiSettingsWithDismissalTriggers:(unint64_t)triggers completionHandler:(id)handler;
- (void)_startDeviceMigration;
- (void)_stashAnalytics;
- (void)_waitForBuddyTerminationTasksToFinish;
- (void)_wifiAssociationDidFinish:(id)finish;
- (void)_willEndLifecycleForDataTransfer;
- (void)_writeGreenInformedDefaultPlistIfNecessary;
- (void)_writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:(id)code;
- (void)activationConfigurationChanged:(BOOL)changed isActivated:(BOOL)activated;
- (void)buddyViewControllerDidPressAlternateSetupButton:(id)button;
- (void)checkForUpdatedCarrierBundle;
- (void)checkMiniBuddyBreadcrumbs;
- (void)dealloc;
- (void)dialerDidDismiss:(id)dismiss;
- (void)didApplyProximitySettingsWithWillReboot:(id)reboot;
- (void)didBecomeActive;
- (void)didEnterBackground;
- (void)didMarkBuddyComplete;
- (void)didRestartFlow;
- (void)disableTapFreeSetUp;
- (void)dismissAlert:(id)alert animated:(BOOL)animated;
- (void)dismissAlert:(id)alert animated:(BOOL)animated completion:(id)completion;
- (void)dismissProximityPinCode;
- (void)displayIncompatibleProximityPairingFromDeviceClass:(id)class;
- (void)displayProximityPinCode:(id)code language:(id)language visual:(BOOL)visual accessibilitySettings:(id)settings;
- (void)displayUpdateRequiredToMigrate;
- (void)endLifecycleDueToCause:(unint64_t)cause;
- (void)handleDebugGesture;
- (void)invalidateAssertionIfNeededForStartUpCause:(unint64_t)cause;
- (void)markBuddyComplete;
- (void)observer:(id)observer didObserveLanguageChange:(BOOL)change localeChange:(BOOL)localeChange;
- (void)prepareWithCompletion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)proximityAutomatedDeviceEnrollmentController:(id)controller wantsToTransitionToPairingWithPin:(id)pin;
- (void)respring;
- (void)runWithScene:(id)scene;
- (void)setNeedsConfigurationUpdate;
- (void)skippedApplyProximitySettings;
- (void)startTFDEPPolling;
- (void)stopTFDEPPolling;
- (void)terminate;
- (void)unableToApplyProximitySettings;
- (void)userDidChooseLanguage;
- (void)userSelectedLanguage:(id)language;
- (void)willApplyProximitySettingsWithCompletion:(id)completion;
- (void)willEndLifecycleDueToCause:(unint64_t)cause allowDismissal:(BOOL)dismissal;
- (void)willMarkBuddyComplete;
- (void)willPerformProximityHandshake;
- (void)willResignActive;
- (void)willTerminate;
@end

@implementation SetupController

- (SetupController)init
{
  v213 = a2;
  location[0] = 0;
  v212.receiver = self;
  v212.super_class = SetupController;
  location[0] = [(SetupController *)&v212 init];
  objc_storeStrong(location, location[0]);
  if (location[0])
  {
    v2 = objc_alloc_init(BYRBSCPUAssertionProvider);
    acquireAssertion = [(BYRBSCPUAssertionProvider *)v2 acquireAssertion];
    [location[0] setCpuAssertion:acquireAssertion];

    v4 = dispatch_group_create();
    v5 = *(location[0] + 18);
    *(location[0] + 18) = v4;

    v211 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("com.apple.purplebuddy.preterminationtasks", v211);
    v7 = *(location[0] + 19);
    *(location[0] + 19) = v6;

    v8 = objc_alloc_init(BYConcreteEnvironment);
    v9 = *(location[0] + 30);
    *(location[0] + 30) = v8;

    v10 = objc_alloc_init(BuddyFeatureFlags);
    [*(location[0] + 30) setFeatureFlags:v10];

    v11 = +[BYDevice currentDevice];
    [*(location[0] + 30) setDeviceProvider:v11];

    v12 = [BYPasscodeCacheManager alloc];
    environment = [location[0] environment];
    featureFlags = [environment featureFlags];
    v15 = [v12 initWithFeatureFlags:featureFlags];
    [*(location[0] + 30) setPasscodeCacheManager:v15];

    v16 = +[BYPreferencesController buddyPreferences];
    [*(location[0] + 30) setBuddyPreferences:v16];

    v17 = +[BYPreferencesController buddyPreferencesExcludedFromBackup];
    [*(location[0] + 30) setBuddyPreferencesExcludedFromBackup:v17];

    v18 = objc_alloc_init(BuddyMiscState);
    [*(location[0] + 30) setMiscState:v18];

    v19 = objc_alloc_init(BuddySystemTimeUpdateManager);
    [*(location[0] + 30) setSystemTimeUpdateManager:v19];

    objc_initWeak(&from, location[0]);
    v204 = _NSConcreteStackBlock;
    v205 = -1073741824;
    v206 = 0;
    v207 = sub_100071220;
    v208 = &unk_10032AF58;
    objc_copyWeak(&v209, &from);
    [*(location[0] + 30) setMenuButtonPressedBlock:&v204];
    v198 = _NSConcreteStackBlock;
    v199 = -1073741824;
    v200 = 0;
    v201 = sub_100071264;
    v202 = &unk_10032B150;
    objc_copyWeak(&v203, &from);
    [*(location[0] + 30) setShowModalWiFiSettingsBlock:&v198];
    v192 = _NSConcreteStackBlock;
    v193 = -1073741824;
    v194 = 0;
    v195 = sub_1000712DC;
    v196 = &unk_10032AF58;
    objc_copyWeak(&v197, &from);
    [*(location[0] + 30) setWriteGreenInformedDefaultPlistIfNecessaryBlock:&v192];
    v186 = _NSConcreteStackBlock;
    v187 = -1073741824;
    v188 = 0;
    v189 = sub_100071320;
    v190 = &unk_10032B178;
    objc_copyWeak(&v191, &from);
    [*(location[0] + 30) setDoesRestartFlowCauseEraseBlock:&v186];
    v180 = _NSConcreteStackBlock;
    v181 = -1073741824;
    v182 = 0;
    v183 = sub_100071374;
    v184 = &unk_10032AF58;
    objc_copyWeak(&v185, &from);
    [*(location[0] + 30) setPrepareForCloudRestoreRebootBlock:&v180];
    v174 = _NSConcreteStackBlock;
    v175 = -1073741824;
    v176 = 0;
    v177 = sub_1000713B8;
    v178 = &unk_10032AF58;
    objc_copyWeak(&v179, &from);
    [*(location[0] + 30) setExitBuddyForDemoSetUpBlock:&v174];
    v168 = _NSConcreteStackBlock;
    v169 = -1073741824;
    v170 = 0;
    v171 = sub_1000713FC;
    v172 = &unk_10032B1A0;
    objc_copyWeak(&v173, &from);
    [*(location[0] + 30) setPrepareForDeviceMigrationBlock:&v168];
    v162 = _NSConcreteStackBlock;
    v163 = -1073741824;
    v164 = 0;
    v165 = sub_10007144C;
    v166 = &unk_10032AF58;
    objc_copyWeak(&v167, &from);
    [*(location[0] + 30) setStartDeviceMigrationBlock:&v162];
    v20 = objc_alloc_init(BYSeedProgramManager);
    [*(location[0] + 30) setSeedProgramManager:v20];

    v21 = objc_alloc_init(BuddyNetworkProvider);
    [*(location[0] + 30) setNetworkProvider:v21];

    v22 = objc_alloc_init(BuddyButtonMonitor);
    [*(location[0] + 30) setButtonMonitor:v22];

    v23 = [BYChronicle alloc];
    buddyPreferences = [*(location[0] + 30) buddyPreferences];
    buddyPreferencesExcludedFromBackup = [*(location[0] + 30) buddyPreferencesExcludedFromBackup];
    v161 = [v23 initFromBackedUpPreferences:buddyPreferences andNotBackedUpPreferences:buddyPreferencesExcludedFromBackup];

    [*(location[0] + 30) setChronicle:v161];
    if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
    {
      v25 = objc_alloc_init(BuddySetupMethod);
      [*(location[0] + 30) setSetupMethod:v25];
    }

    v26 = objc_alloc_init(BuddyExistingSettings);
    [*(location[0] + 30) setExistingSettings:v26];

    v27 = objc_alloc_init(BuddyDisplayZoomExecutor);
    [*(location[0] + 30) setDisplayZoomExecutor:v27];

    v28 = [BuddyPendingRestoreState alloc];
    existingSettings = [*(location[0] + 30) existingSettings];
    setupMethod = [*(location[0] + 30) setupMethod];
    v30 = [(BuddyPendingRestoreState *)v28 initWithExistingSettings:existingSettings setupMethod:?];
    [*(location[0] + 30) setPendingRestoreState:v30];

    v155 = _NSConcreteStackBlock;
    v156 = -1073741824;
    v157 = 0;
    v158 = sub_100071490;
    v159 = &unk_10032AF58;
    objc_copyWeak(&v160, &from);
    [*(location[0] + 30) setWillPerformSoftwareUpdateBlock:&v155];
    v31 = objc_alloc_init(BuddyBetaEnrollmentStateManager);
    [*(location[0] + 30) setBetaEnrollmentStateManager:v31];

    v32 = objc_alloc_init(BYCapabilities);
    [*(location[0] + 30) setCapabilities:v32];

    v33 = objc_alloc_init(BYSoftwareUpdateCache);
    [*(location[0] + 30) setSoftwareUpdateCache:v33];

    v34 = objc_alloc_init(BFFSettingsManager);
    [*(location[0] + 30) setSettingsManager:v34];

    v35 = objc_alloc_init(BYRunState);
    [*(location[0] + 30) setRunState:v35];

    v36 = objc_alloc_init(BYAnalyticsManager);
    [*(location[0] + 30) setAnalyticsManager:v36];

    v37 = objc_alloc_init(MCProfileConnection);
    [*(location[0] + 30) setManagedConfiguration:v37];

    v38 = objc_alloc_init(BuddyActivationRecord);
    [*(location[0] + 30) setActivationRecord:v38];

    v39 = objc_alloc_init(BuddyCombinedTermsProvider);
    [*(location[0] + 30) setCombinedTermsProvider:v39];

    v40 = objc_alloc_init(BuddyEmergencyExecutor);
    [*(location[0] + 30) setEmergencyExecutor:v40];

    v41 = objc_alloc_init(BuddyActivationState);
    [*(location[0] + 30) setActivationState:v41];

    v42 = objc_alloc_init(BYFlowSkipController);
    [*(location[0] + 30) setFlowSkipController:v42];

    v43 = [_TtC5Setup22AppearanceModeProvider alloc];
    displayZoomExecutor = [*(location[0] + 30) displayZoomExecutor];
    v44 = [(AppearanceModeProvider *)v43 initWithDisplayZoomExecutor:?];
    [*(location[0] + 30) setAppearanceModeProvider:v44];

    v45 = objc_alloc_init(_TtC5Setup28SetupUserDispositionProvider);
    [*(location[0] + 30) setUserDispositionProvider:v45];

    v46 = +[BYDeviceConfiguration currentConfiguration];
    [*(location[0] + 30) setDeviceConfiguration:v46];

    v47 = [BuddyFlowItemDispositionProvider alloc];
    setupMethod2 = [*(location[0] + 30) setupMethod];
    runState = [*(location[0] + 30) runState];
    v48 = [(BuddyFlowItemDispositionProvider *)v47 initWithSetupMethod:setupMethod2 runState:?];
    [*(location[0] + 30) setFlowItemDispositionProvider:v48];

    v49 = [BYPaneFeatureAnalyticsManager alloc];
    analyticsManager = [*(location[0] + 30) analyticsManager];
    runState2 = [*(location[0] + 30) runState];
    v96 = BYPaneFeatureAnalyticsHostSetupAssistant;
    flowItemDispositionProvider = [*(location[0] + 30) flowItemDispositionProvider];
    v50 = [v49 initWithAnalyticsManager:analyticsManager runState:runState2 host:v96 flowItemDispositionProvider:?];
    [*(location[0] + 30) setPaneFeatureAnalyticsManager:v50];

    v51 = objc_alloc_init(_TtC5Setup19LockdownModeManager);
    [*(location[0] + 30) setLockdownModeProvider:v51];

    v52 = [BYAnalyticsEventAppearance alloc];
    analyticsManager2 = [*(location[0] + 30) analyticsManager];
    buddyPreferencesExcludedFromBackup2 = [*(location[0] + 30) buddyPreferencesExcludedFromBackup];
    v53 = [v52 initWithAnalyticsManager:analyticsManager2 buddyPreferencesExcludedFromBackup:?];
    [*(location[0] + 30) setAnalyticsEventAppearance:v53];

    v54 = objc_alloc_init(BuddyChildSetupPresenter);
    [*(location[0] + 30) setChildSetupPresenter:v54];

    v55 = [_TtC5Setup19IntelligenceManager alloc];
    featureFlags2 = [*(location[0] + 30) featureFlags];
    buddyPreferences2 = [*(location[0] + 30) buddyPreferences];
    chronicle = [*(location[0] + 30) chronicle];
    deviceProvider = [*(location[0] + 30) deviceProvider];
    v56 = [(IntelligenceManager *)v55 initWithFeatureFlags:featureFlags2 preferences:buddyPreferences2 chronicle:chronicle deviceProvider:?];
    [*(location[0] + 30) setIntelligenceProvider:v56];

    v57 = objc_alloc_init(BuddyMultilingualFlowManager);
    [*(location[0] + 30) setMultilingualFlowManager:v57];

    v58 = objc_alloc_init(_TtC5Setup32ExpressSettingsSetupCacheManager);
    [*(location[0] + 30) setExpressSettingsCache:v58];

    v59 = [BuddyDiagnosticsThreadDecorator alloc];
    setupMethod3 = [*(location[0] + 30) setupMethod];
    runState3 = [*(location[0] + 30) runState];
    flowItemDispositionProvider2 = [*(location[0] + 30) flowItemDispositionProvider];
    v60 = [BuddyDiagnosticsThreadDecorator initWithSetupMethod:v59 runState:"initWithSetupMethod:runState:flowItemDispositionProvider:fundamentalFlowStartupProvider:" flowItemDispositionProvider:setupMethod3 fundamentalFlowStartupProvider:runState3];
    [*(location[0] + 30) setDiagnosticsThreadDecorator:v60];

    v61 = +[BuddyThreatNotificationProvider sharedInstance];
    [*(location[0] + 30) setThreatNotificationProvider:v61];

    v62 = [_TtC5Setup33BuddyMultitaskingSelectionManager alloc];
    deviceProvider2 = [*(location[0] + 30) deviceProvider];
    buddyPreferences3 = [*(location[0] + 30) buddyPreferences];
    v63 = [(BuddyMultitaskingSelectionManager *)v62 initWithDeviceProvider:deviceProvider2 preferences:?];
    [*(location[0] + 30) setIPadMultitaskingModeManager:v63];

    v64 = objc_alloc_init(BuddySafetySettingsUIManager);
    [*(location[0] + 30) setSafetySettingsUIProvider:v64];

    v148 = _NSConcreteStackBlock;
    v149 = -1073741824;
    v150 = 0;
    v151 = sub_1000714D4;
    v152 = &unk_10032B0D0;
    v153 = location[0];
    v154 = objc_retainBlock(&v148);
    v65 = [BuddyEnrollmentCoordinator alloc];
    passcodeCacheManager = [*(location[0] + 30) passcodeCacheManager];
    buddyPreferences4 = [*(location[0] + 30) buddyPreferences];
    v127 = +[BYPreferencesController buddyPreferencesEphemeral];
    featureFlags3 = [*(location[0] + 30) featureFlags];
    networkProvider = [*(location[0] + 30) networkProvider];
    managedConfiguration = [*(location[0] + 30) managedConfiguration];
    showModalWiFiSettingsBlock = [*(location[0] + 30) showModalWiFiSettingsBlock];
    v66 = [(BuddyEnrollmentCoordinator *)v65 initWithPasscodeCacheManager:passcodeCacheManager buddyPreferences:buddyPreferences4 buddyPreferencesEphemeral:v127 featureFlags:featureFlags3 networkProvider:networkProvider managedConfiguration:managedConfiguration showModalWiFiSettingsBlock:showModalWiFiSettingsBlock exitBuddyBlock:v154];
    [*(location[0] + 30) setEnrollmentCoordinator:v66];

    runState4 = [*(location[0] + 30) runState];
    v91 = [runState4 hasCompletedInitialRun] ^ 1;

    if (v91)
    {
      v106 = +[BYSetupUserDisposition current];
      isChild = [v106 isChild];
      bOOLValue = [isChild BOOLValue];

      if (bOOLValue)
      {
        oslog = _BYLoggingFacility();
        v146 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v69 = oslog;
          v94 = v146;
          sub_10006AA68(buf);
          _os_log_impl(&_mh_execute_header, v69, v94, "Assuming default intent as child...", buf, 2u);
        }

        objc_storeStrong(&oslog, 0);
        setupMethod4 = [*(location[0] + 30) setupMethod];
        [setupMethod4 setIntent:2];

        flowItemDispositionProvider3 = [*(location[0] + 30) flowItemDispositionProvider];
        [flowItemDispositionProvider3 setPreferredDispositions:16];
      }

      else if ([location[0] shouldBeginRestore] & 1) != 0 || (objc_msgSend(location[0], "shouldBeginMigration"))
      {
        v144 = _BYLoggingFacility();
        v143 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          v72 = v144;
          v95 = v143;
          sub_10006AA68(v142);
          _os_log_impl(&_mh_execute_header, v72, v95, "Assuming default intent as self...", v142, 2u);
        }

        objc_storeStrong(&v144, 0);
        setupMethod5 = [*(location[0] + 30) setupMethod];
        [setupMethod5 setIntent:1];

        flowItemDispositionProvider4 = [*(location[0] + 30) flowItemDispositionProvider];
        [flowItemDispositionProvider4 setPreferredDispositions:4];
      }
    }

    v75 = [BYBuddySafetyAndHandlingManager alloc];
    buddyPreferencesExcludedFromBackup3 = [*(location[0] + 30) buddyPreferencesExcludedFromBackup];
    v76 = [(BYBuddySafetyAndHandlingManager *)v75 initWithPreferences:?];
    [location[0] setSafetyAndHandlingManager:v76];

    environment2 = [location[0] environment];
    runState5 = [environment2 runState];
    v92 = [runState5 hasCompletedInitialRun] ^ 1;

    safetyAndHandlingManager = [location[0] safetyAndHandlingManager];
    if (v92)
    {
      [safetyAndHandlingManager restoreStatePostReboot];
    }

    else
    {
      [safetyAndHandlingManager resetState];
    }

    safetyAndHandlingManager2 = [location[0] safetyAndHandlingManager];
    [*(location[0] + 30) setSafetyAndHandlingManager:safetyAndHandlingManager2];

    v80 = objc_alloc_init(BuddyInactivityTimer);
    v81 = *(location[0] + 41);
    *(location[0] + 41) = v80;

    v122 = +[NSNotificationCenter defaultCenter];
    v111 = MCCloudConfigurationDidChangeNotification;
    v82 = +[NSOperationQueue mainQueue];
    v136 = _NSConcreteStackBlock;
    v137 = -1073741824;
    v138 = 0;
    v139 = sub_100071500;
    v140 = &unk_10032B1C8;
    v141 = location[0];
    v83 = [(NSNotificationCenter *)v122 addObserverForName:v111 object:0 queue:v82 usingBlock:&v136];
    v84 = *(location[0] + 24);
    *(location[0] + 24) = v83;

    miscState = [*(location[0] + 30) miscState];
    environment3 = [location[0] environment];
    managedConfiguration2 = [environment3 managedConfiguration];
    [miscState setWasPasscodeSetWhenBuddyStarted:{objc_msgSend(managedConfiguration2, "isPasscodeSet") & 1}];

    v86 = objc_opt_new();
    v87 = *(location[0] + 46);
    *(location[0] + 46) = v86;

    v88 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v131 = -1073741824;
    v132 = 0;
    v133 = sub_100071558;
    v134 = &unk_10032B0D0;
    v135 = location[0];
    dispatch_async(v88, &block);

    objc_storeStrong(&v135, 0);
    objc_storeStrong(&v141, 0);
    objc_storeStrong(&v154, 0);
    objc_storeStrong(&v153, 0);
    objc_destroyWeak(&v160);
    objc_storeStrong(&v161, 0);
    objc_destroyWeak(&v167);
    objc_destroyWeak(&v173);
    objc_destroyWeak(&v179);
    objc_destroyWeak(&v185);
    objc_destroyWeak(&v191);
    objc_destroyWeak(&v197);
    objc_destroyWeak(&v203);
    objc_destroyWeak(&v209);
    objc_destroyWeak(&from);
    objc_storeStrong(&v211, 0);
  }

  v89 = location[0];
  objc_storeStrong(location, 0);
  return v89;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  [(BuddyLanguageChangeObserver *)self->_languageObserver stopObservingLanguageChanges];
  if (selfCopy->_cloudConfigurationChangeNotificationObserver)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v2 removeObserver:selfCopy->_cloudConfigurationChangeNotificationObserver];
  }

  if (selfCopy->_sbAlertItemsSuppressionAssertion)
  {
    CFRelease(selfCopy->_sbAlertItemsSuppressionAssertion);
    selfCopy->_sbAlertItemsSuppressionAssertion = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = SetupController;
  [(SetupController *)&v3 dealloc];
}

- (BuddyMiscState)miscState
{
  v2 = [(SetupController *)self environment:a2];
  miscState = [(BYEnvironment *)v2 miscState];

  return miscState;
}

- (BOOL)isFirstRunWithoutCloudConfiguration
{
  HasCompletedInitialRun = BYSetupAssistantHasCompletedInitialRun();
  v5 = 0;
  v3 = 0;
  if ((HasCompletedInitialRun & 1) == 0)
  {
    v6 = +[BuddyCloudConfigManager sharedManager];
    v5 = 1;
    v3 = [v6 hasCloudConfiguration] ^ 1;
  }

  v7 = v3 & 1;
  if (v5)
  {
  }

  return v7;
}

- (BOOL)_hasLocaleAndLanguage
{
  location[2] = self;
  location[1] = a2;
  v8 = CFPreferencesCopyAppValue(@"AppleLocale", kCFPreferencesAnyApplication);
  location[0] = v8;
  if (location[0] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [location[0] length])
  {
    v7 = CFPreferencesCopyAppValue(@"AppleLanguages", kCFPreferencesAnyApplication);
    v3 = v7;
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 count])
    {
      v6 = 1;
      v4 = 1;
    }

    else
    {
      v6 = 0;
      v4 = 1;
    }

    objc_storeStrong(&v3, 0);
  }

  else
  {
    v6 = 0;
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)_isBackInBuddyForActivationOnly
{
  v2 = [BuddyActivationConfiguration currentConfiguration:a2];
  HasCompletedInitialRun = 0;
  if (([v2 isActivated] & 1) == 0)
  {
    HasCompletedInitialRun = BYSetupAssistantHasCompletedInitialRun();
  }

  return HasCompletedInitialRun & 1;
}

- (BOOL)_isBackInBuddyAfterRestoreFromBackup:(BOOL)backup
{
  _hasLocaleAndLanguage = 0;
  if (backup)
  {
    _restoreFromBackupJustFinished = [(SetupController *)self _restoreFromBackupJustFinished];
    _hasLocaleAndLanguage = 0;
    if (_restoreFromBackupJustFinished)
    {
      _hasLocaleAndLanguage = [(SetupController *)self _hasLocaleAndLanguage];
    }
  }

  return _hasLocaleAndLanguage & 1;
}

- (void)_preflightDispositionValidationWithControllerClass:(Class)class
{
  selfCopy = self;
  v17 = a2;
  aClass = class;
  if ((os_variant_has_internal_ui() & 1) == 0)
  {
    environment = [(SetupController *)selfCopy environment];
    flowItemDispositionProvider = [(BYEnvironment *)environment flowItemDispositionProvider];
    dispositions = [flowItemDispositionProvider dispositions];

    v15 = dispositions;
    if ((dispositions & 2) == 2 && ([(objc_class *)aClass conformsToProtocol:&OBJC_PROTOCOL___BFFFlowItem]& 1) != 0)
    {
      applicableDispositions = [(objc_class *)aClass applicableDispositions];
      v13 = (applicableDispositions & v15) != 0;
      if ((applicableDispositions & v15) == 0)
      {
        oslog = _BYLoggingFacility();
        v11 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          location = NSStringFromClass(aClass);
          sub_100071CBC(buf, location);
          _os_log_error_impl(&_mh_execute_header, oslog, v11, "Fixing unexpected disposition for initialFlowItemClass %{public}@", buf, 0xCu);

          objc_storeStrong(&location, 0);
        }

        objc_storeStrong(&oslog, 0);
        environment2 = [(SetupController *)selfCopy environment];
        setupMethod = [(BYEnvironment *)environment2 setupMethod];
        [setupMethod setIntent:1];

        environment3 = [(SetupController *)selfCopy environment];
        flowItemDispositionProvider2 = [(BYEnvironment *)environment3 flowItemDispositionProvider];
        [flowItemDispositionProvider2 setPreferredDispositions:4];
      }
    }
  }
}

- (void)_createNavigationController
{
  selfCopy = self;
  v132 = a2;
  [(SetupController *)self _refreshLanguage];
  v2 = [BFFNavigationController alloc];
  v3 = +[BYDevice currentDevice];
  v4 = [v2 initIgnoringDismissals:{objc_msgSend(v3, "type") == 1}];
  nav = selfCopy->_nav;
  selfCopy->_nav = v4;

  [BFFViewControllerSpinnerManager configureWithNavigationController:selfCopy->_nav];
  environment = [(SetupController *)selfCopy environment];
  buddyPreferencesExcludedFromBackup = [(BYEnvironment *)environment buddyPreferencesExcludedFromBackup];
  LOBYTE(v3) = [buddyPreferencesExcludedFromBackup BOOLForKey:@"PushWithoutDeferringTransitionsWhileInBackground"];

  v131 = v3 & 1;
  if ([(SetupController *)selfCopy launchedForMigration]|| (v131 & 1) != 0)
  {
    location = _BYLoggingFacility();
    v129 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      if ([(SetupController *)selfCopy launchedForMigration])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (v131)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      sub_100073058(buf, v8, v9);
      _os_log_impl(&_mh_execute_header, location, v129, "Will push without deferring transitions because launchedForMigration was: %{public}@, shouldPushWithoutDeferringTransitionsWhileInBackground was: %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&location, 0);
    [(BFFNavigationController *)selfCopy->_nav setPushWithoutDeferringTransitionsWhileInBackground:1];
  }

  [(SetupController *)selfCopy _setupAnalytics];
  v10 = +[BFFStyle sharedStyle];
  [v10 applyThemeToNavigationController:selfCopy->_nav];

  view = [(BFFNavigationController *)selfCopy->_nav view];
  v12 = +[BFFStyle sharedStyle];
  backgroundColor = [v12 backgroundColor];
  [view setBackgroundColor:backgroundColor];

  v14 = [BuddyFlowDiverter alloc];
  v15 = [(BuddyFlowDiverter *)v14 initWithEnvironment:selfCopy->_environment];
  [(SetupController *)selfCopy setFlowDiverter:v15];

  v127 = 0;
  v16 = 0;
  if (os_variant_has_internal_ui())
  {
    v128 = +[BuddyTestFundamentalFlow allowedFlowItems];
    v127 = 1;
    v16 = [v128 count] != 0;
  }

  if (v127)
  {
  }

  if (v16)
  {
    v17 = objc_alloc_init(BuddyTestFundamentalFlow);
    [(SetupController *)selfCopy setFundamentalFlow:v17];

    environment2 = [(SetupController *)selfCopy environment];
    diagnosticsThreadDecorator = [(BYEnvironment *)environment2 diagnosticsThreadDecorator];
    [(BuddyFundamentalFlow *)diagnosticsThreadDecorator overrideThrowExceptionHandler:&stru_10032B268];
  }

  else
  {
    v20 = [BuddyFundamentalFlow alloc];
    v21 = selfCopy;
    environment2 = objc_alloc_init(BuddyFeatureFlags);
    diagnosticsThreadDecorator = [(BuddyFundamentalFlow *)v20 initWithFlowProvider:v21 featureFlags:environment2];
    [(SetupController *)selfCopy setFundamentalFlow:diagnosticsThreadDecorator];
  }

  objc_initWeak(&from, selfCopy);
  v120 = _NSConcreteStackBlock;
  v121 = -1073741824;
  v122 = 0;
  v123 = sub_1000730C0;
  v124 = &unk_10032B290;
  objc_copyWeak(&v125, &from);
  fundamentalFlow = [(SetupController *)selfCopy fundamentalFlow];
  [(BuddyFlowProducer *)fundamentalFlow setWillSupplyInitialFlowItemClass:&v120];
  v119 = 0;

  v23 = [BuddyNavigationFlowController alloc];
  v24 = selfCopy;
  v25 = selfCopy->_nav;
  flowDiverter = [(SetupController *)selfCopy flowDiverter];
  environment3 = [(SetupController *)selfCopy environment];
  v28 = [(BuddyNavigationFlowController *)v23 initWithNavigationController:v25 usingRestoreProvider:v24 usingFlowDiverter:flowDiverter environment:environment3];
  [(SetupController *)selfCopy setNavigationFlowController:v28];

  v29 = selfCopy;
  navigationFlowController = [(SetupController *)selfCopy navigationFlowController];
  [(BuddyNavigationFlowController *)navigationFlowController setFlowDelegate:v29];

  v31 = selfCopy;
  navigationFlowController2 = [(SetupController *)selfCopy navigationFlowController];
  [(BuddyNavigationFlowController *)navigationFlowController2 setLifecycleDelegate:v31];

  environment4 = [(SetupController *)selfCopy environment];
  proximitySetupController = [(BYEnvironment *)environment4 proximitySetupController];
  navigationFlowController3 = [(SetupController *)selfCopy navigationFlowController];
  [(BuddyNavigationFlowController *)navigationFlowController3 setProximitySetupController:proximitySetupController];

  fundamentalFlow2 = [(SetupController *)selfCopy fundamentalFlow];
  navigationFlowController4 = [(SetupController *)selfCopy navigationFlowController];
  [(BuddyNavigationFlowController *)navigationFlowController4 setFlowProducer:fundamentalFlow2];

  environment5 = [(SetupController *)selfCopy environment];
  buddyPreferences = [(BYEnvironment *)environment5 buddyPreferences];
  navigationFlowController5 = [(SetupController *)selfCopy navigationFlowController];
  [(BuddyNavigationFlowController *)navigationFlowController5 setBuddyPreferences:buddyPreferences];

  environment6 = [(SetupController *)selfCopy environment];
  analyticsManager = [(BYEnvironment *)environment6 analyticsManager];
  navigationFlowController6 = [(SetupController *)selfCopy navigationFlowController];
  [(BuddyNavigationFlowController *)navigationFlowController6 setAnalyticsManager:analyticsManager];

  v118 = +[NSUserDefaults standardUserDefaults];
  v117 = [v118 stringForKey:@"Language"];
  v116 = [v118 objectForKey:@"LockdownSetLanguage"];
  v44 = 1;
  if (!v117)
  {
    v44 = v116 != 0;
  }

  v115 = v44;
  oslog = _BYLoggingFacility();
  v113 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10007310C(v137, v115, v117, v116);
    _os_log_impl(&_mh_execute_header, oslog, v113, "Language set (%d): %{public}@ %{public}@", v137, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  environment7 = [(SetupController *)selfCopy environment];
  buddyPreferencesExcludedFromBackup2 = [(BYEnvironment *)environment7 buddyPreferencesExcludedFromBackup];
  v47 = [buddyPreferencesExcludedFromBackup2 BOOLForKey:@"AnimateLanguageChoice"];

  v112 = v47 & 1;
  environment8 = [(SetupController *)selfCopy environment];
  buddyPreferencesExcludedFromBackup3 = [(BYEnvironment *)environment8 buddyPreferencesExcludedFromBackup];
  [buddyPreferencesExcludedFromBackup3 removeObjectForKey:@"AnimateLanguageChoice" onlyFromMemory:0];

  [(SetupController *)selfCopy setInitialAnimateLanguageChoiceValue:v112 & 1];
  v50 = 0;
  if (v115)
  {
    v50 = v112;
  }

  selfCopy->_shouldAnimateLocaleScreen = v50 & 1;
  v51 = +[BYLocationController sharedBuddyLocationController];
  [v51 setFakeMode:selfCopy->_shouldAnimateLocaleScreen];

  environment9 = [(SetupController *)selfCopy environment];
  buddyPreferencesExcludedFromBackup4 = [(BYEnvironment *)environment9 buddyPreferencesExcludedFromBackup];
  v54 = [buddyPreferencesExcludedFromBackup4 BOOLForKey:@"DisplayZoomRestart"];
  [(SetupController *)selfCopy setShouldProceedFromAppearancePane:v54 & 1];

  environment10 = [(SetupController *)selfCopy environment];
  buddyPreferencesExcludedFromBackup5 = [(BYEnvironment *)environment10 buddyPreferencesExcludedFromBackup];
  [buddyPreferencesExcludedFromBackup5 removeObjectForKey:@"DisplayZoomRestart" onlyFromMemory:0];

  shouldProceedFromAppearancePane = [(SetupController *)selfCopy shouldProceedFromAppearancePane];
  [(SetupController *)selfCopy setInitialDisplayZoomRestartValue:shouldProceedFromAppearancePane & 1];
  CFPreferencesAppSynchronize(BYBuddyNotBackedUpIdentifier);
  navigationFlowController7 = [(SetupController *)selfCopy navigationFlowController];
  v103 = _NSConcreteStackBlock;
  v104 = -1073741824;
  v105 = 0;
  v106 = sub_100073134;
  v107 = &unk_10032B2B8;
  v108 = selfCopy;
  v110 = v112 & 1;
  v111 = v115;
  v109 = v118;
  [(BuddyNavigationFlowController *)navigationFlowController7 setupInitialFlowWithCompletion:&v103];

  v59 = +[BuddyCloudConfigManager sharedManager];
  isMultiUser = [v59 isMultiUser];

  v102 = isMultiUser & 1;
  v61 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v61 aa_primaryAppleAccount];

  v100 = [aa_primaryAppleAccount aa_isManagedAppleID] & 1;
  v99 = _BYLoggingFacility();
  v98 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
  {
    if (v102)
    {
      v62 = @"YES";
    }

    else
    {
      v62 = @"NO";
    }

    if (v100)
    {
      v63 = @"YES";
    }

    else
    {
      v63 = @"NO";
    }

    sub_100073590(v136, v62, aa_primaryAppleAccount, v63);
    _os_log_impl(&_mh_execute_header, v99, v98, "isMultiUser: %{public}@, account %p isManagedAppleID: %{public}@", v136, 0x20u);
  }

  objc_storeStrong(&v99, 0);
  v97 = _BYLoggingFacility();
  v96 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    v64 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", +[BYLicenseAgreement versionOfAcceptedAgreement]);
    sub_100071CBC(v135, v64);
    _os_log_impl(&_mh_execute_header, v97, v96, "Version of newest accepted iOS SLA: %{public}@", v135, 0xCu);
  }

  objc_storeStrong(&v97, 0);
  v65 = +[BYSetupStateManager sharedManager];
  didRestoreFromBackup = [v65 didRestoreFromBackup];

  v95 = didRestoreFromBackup & 1;
  v94 = _BYLoggingFacility();
  v93 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    if (v95)
    {
      v67 = @"YES";
    }

    else
    {
      v67 = @"NO";
    }

    sub_100071CBC(v134, v67);
    _os_log_impl(&_mh_execute_header, v94, v93, "Restored from Backup from RestoreState: %{public}@", v134, 0xCu);
  }

  objc_storeStrong(&v94, 0);
  environment11 = [(SetupController *)selfCopy environment];
  proximitySetupController2 = [(BYEnvironment *)environment11 proximitySetupController];
  v87 = _NSConcreteStackBlock;
  v88 = -1073741824;
  v89 = 0;
  v90 = sub_1000735BC;
  v91 = &unk_10032B2E0;
  v92 = selfCopy;
  [proximitySetupController2 needsToResume:&v87];

  v70 = +[BYDevice currentDevice];
  LOBYTE(proximitySetupController2) = [v70 type] == 1;

  if (proximitySetupController2)
  {
    v71 = objc_alloc_init(BuddyBackgroundViewController);
    [(SetupController *)selfCopy setBackgroundViewController:v71];

    window = selfCopy->_window;
    backgroundViewController = [(SetupController *)selfCopy backgroundViewController];
    [(BFFWindow *)window setRootViewController:backgroundViewController];

    [(BFFNavigationController *)selfCopy->_nav setModalPresentationStyle:2];
    [(BFFNavigationController *)selfCopy->_nav setModalInPresentation:1];
    +[OBWelcomeController preferredContentSize];
    *&v86 = v74;
    *(&v86 + 1) = v75;
    v76 = selfCopy->_nav;
    v85 = v86;
    [(BFFNavigationController *)v76 setForcedPreferredContentSize:v74, v75];
    [(BFFWindow *)selfCopy->_window makeKeyAndVisible];
    backgroundViewController2 = [(SetupController *)selfCopy backgroundViewController];
    [(UIViewController *)backgroundViewController2 presentViewController:selfCopy->_nav animated:1 completion:0];

    v78 = +[UIApplication sharedApplication];
    connectedScenes = [(UIApplication *)v78 connectedScenes];
    anyObject = [(NSSet *)connectedScenes anyObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v80 = anyObject;
      [v80 _setBackgroundStyle:{3, v80}];
      objc_storeStrong(&v83, 0);
    }

    backgroundViewController3 = [(SetupController *)selfCopy backgroundViewController];
    [(BYEnvironment *)selfCopy->_environment setBuddyBackgroundViewController:backgroundViewController3];

    objc_storeStrong(&anyObject, 0);
  }

  else
  {
    [(BFFWindow *)selfCopy->_window setRootViewController:selfCopy->_nav];
    [(BFFWindow *)selfCopy->_window makeKeyAndVisible];
  }

  if (v115)
  {
    v82 = +[BuddySIMManager sharedManager];
    [v82 allowSIMUnlock];
  }

  objc_storeStrong(&v92, 0);
  objc_storeStrong(&aa_primaryAppleAccount, 0);
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&v108, 0);
  objc_storeStrong(&v116, 0);
  objc_storeStrong(&v117, 0);
  objc_storeStrong(&v118, 0);
  objc_destroyWeak(&v125);
  objc_destroyWeak(&from);
}

- (void)checkMiniBuddyBreadcrumbs
{
  selfCopy = self;
  v44 = a2;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(BYBuddyRunKeychainSyncMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v42 = CFPreferencesGetAppBooleanValue(BYBuddyRunMesaMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v41 = CFPreferencesGetAppBooleanValue(BYBuddyRunPaymentMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v40 = CFPreferencesGetAppBooleanValue(BYBuddyRunDiagnosticsMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v39 = CFPreferencesGetAppBooleanValue(BYBuddyRunCombinedDiagnosticsMismatchMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v38 = CFPreferencesGetAppBooleanValue(BYBuddyRunHSA2MiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  selfCopy->_inMiniBuddyFromPostDemoRestoreBreadcrumb = CFPreferencesGetAppBooleanValue(BYBuddyRunPostDemoRestoreMiniBuddy, BYBuddyNotBackedUpIdentifier, 0) != 0;
  v37 = CFPreferencesGetAppBooleanValue(BYBuddyRunStolenDeviceProtectionMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v36 = CFPreferencesGetAppBooleanValue(BYBuddyRunStandardMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v35 = CFPreferencesGetAppBooleanValue(BYBuddyRunRestoreSIMSetupMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  v34 = CFPreferencesGetAppBooleanValue(BYBuddyRunMDMMigrationAfterSoftwareUpdateMiniBuddy, BYBuddyNotBackedUpIdentifier, 0);
  oslog = _BYLoggingFacility();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100073FE4(buf, AppBooleanValue, v42, v41, v40, v39, v38, selfCopy->_inMiniBuddyFromPostDemoRestoreBreadcrumb, v37, v36, v35, v34);
    _os_log_impl(&_mh_execute_header, oslog, v32, "Run with breadcrumbs: keychain=%d, touchid=%d, payment=%d, diagnostics=%d, combined diagnostics mismatch=%d, hsa2=%d, post demo restore=%d, stolen device protection=%d, standard=%d, restore SIMSetup: %d, MDM migration after SU: %d", buf, 0x44u);
  }

  objc_storeStrong(&oslog, 0);
  if (AppBooleanValue || v42 || v41 || v40 || v39 || v38 || selfCopy->_inMiniBuddyFromPostDemoRestoreBreadcrumb || v37 || v36 || v35 || v34)
  {
    selfCopy->_inMiniBuddyFromBreadcrumb = 1;
    location = +[NSUserDefaults standardUserDefaults];
    [location setBool:0 forKey:BYBuddyDoneKey];
    if (AppBooleanValue)
    {
      [location setBool:0 forKey:@"AppleIDPB10Presented"];
      [location setBool:0 forKey:@"KeychainSync3Presented"];
    }

    [location setBool:0 forKey:@"Passcode4Presented"];
    if (v42)
    {
      [location removeObjectForKey:@"Mesa2Presented"];
      [location removeObjectForKey:@"MesaPurchasesPresented"];
    }

    if (v41)
    {
      [location removeObjectForKey:@"Payment2Presented"];
      [location setBool:1 forKey:@"PaymentMiniBuddy4Ran"];
    }

    if (v40 || v39)
    {
      [location removeObjectForKey:@"PBDiagnostics4Presented"];
      [location removeObjectForKey:@"DiagnosticsAutoOptInSet"];
      if (v40)
      {
        environment = [(SetupController *)selfCopy environment];
        managedConfiguration = [(BYEnvironment *)environment managedConfiguration];
        [managedConfiguration removeBoolSetting:MCFeatureDiagnosticsSubmissionAllowed];

        environment2 = [(SetupController *)selfCopy environment];
        capabilities = [(BYEnvironment *)environment2 capabilities];
        eligibleForChlorine = [capabilities eligibleForChlorine];

        if (eligibleForChlorine)
        {
          environment3 = [(SetupController *)selfCopy environment];
          managedConfiguration2 = [(BYEnvironment *)environment3 managedConfiguration];
          [managedConfiguration2 removeBoolSetting:MCFeatureAppAnalyticsAllowed];
        }
      }

      else
      {
        v29 = 0;
        v27 = 0;
        eligibleForChlorine2 = 0;
        if (v39)
        {
          environment4 = [(SetupController *)selfCopy environment];
          v29 = 1;
          capabilities2 = [environment4 capabilities];
          v27 = 1;
          eligibleForChlorine2 = [capabilities2 eligibleForChlorine];
        }

        if (v27)
        {
        }

        if (v29)
        {
        }

        if (eligibleForChlorine2)
        {
          v26 = _BYLoggingFacility();
          v25 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v26;
            v11 = v25;
            sub_10006AA68(v24);
            _os_log_impl(&_mh_execute_header, v10, v11, "Combined analytics mismatch detected", v24, 2u);
          }

          objc_storeStrong(&v26, 0);
          environment5 = [(SetupController *)selfCopy environment];
          miscState = [(BYEnvironment *)environment5 miscState];
          [miscState setLaunchedWithCombinedAnalyticsMismatch:1];
        }
      }
    }

    if (v38)
    {
      [location removeObjectForKey:@"Mesa2Presented"];
      [location removeObjectForKey:@"AppleIDPB10Presented"];
      [location setBool:1 forKey:@"HSA2UpgradeMiniBuddy3Ran"];
    }

    if (v37)
    {
      environment6 = [(SetupController *)selfCopy environment];
      miscState2 = [(BYEnvironment *)environment6 miscState];
      [miscState2 setLaunchedToShowStolenDeviceProtection:1];
    }

    if (v35)
    {
      environment7 = [(SetupController *)selfCopy environment];
      miscState3 = [(BYEnvironment *)environment7 miscState];
      [miscState3 setLaunchedToShowSIMSetupAfterRestore:1];
    }

    if (v34)
    {
      [(SetupController *)selfCopy setLaunchedToShowMDMMigrationAfterSoftwareUpdate:1];
    }

    [location synchronize];
    environment8 = [(SetupController *)selfCopy environment];
    buddyPreferencesExcludedFromBackup = [(BYEnvironment *)environment8 buddyPreferencesExcludedFromBackup];
    v20 = [buddyPreferencesExcludedFromBackup BOOLForKey:@"ForcePrimaryAppleIDAuthentication"];

    if (v20)
    {
      miscState4 = [(SetupController *)selfCopy miscState];
      [(BuddyMiscState *)miscState4 setForcePrimaryAppleIDAuthentication:1];

      environment9 = [(SetupController *)selfCopy environment];
      buddyPreferencesExcludedFromBackup2 = [(BYEnvironment *)environment9 buddyPreferencesExcludedFromBackup];
      [buddyPreferencesExcludedFromBackup2 removeObjectForKey:@"ForcePrimaryAppleIDAuthentication" onlyFromMemory:0];
    }

    CFPreferencesSetAppValue(BYBuddyRunKeychainSyncMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunMesaMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunPaymentMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunDiagnosticsMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunCombinedDiagnosticsMismatchMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunHSA2MiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunStolenDeviceProtectionMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunStandardMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunRestoreSIMSetupMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesAppSynchronize(BYBuddyNotBackedUpIdentifier);
    objc_storeStrong(&location, 0);
  }
}

- (void)runWithScene:(id)scene
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  if (selfCopy->_window)
  {
    v151 = _BYLoggingFacility();
    v150 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v151;
      v4 = v150;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Moving existing window to new scene", buf, 2u);
    }

    objc_storeStrong(&v151, 0);
    [(BFFWindow *)selfCopy->_window setWindowScene:location[0]];
    v148 = 1;
  }

  else
  {
    inactivityTimer = [(SetupController *)selfCopy inactivityTimer];
    [(BuddyInactivityTimer *)inactivityTimer start];

    v6 = dispatch_get_global_queue(25, 0);
    dispatch_async(v6, &stru_10032B300);

    v7 = dispatch_get_global_queue(25, 0);
    dispatch_async(v7, &stru_10032B320);

    v8 = +[BFFStyle sharedStyle];
    [v8 applyThemeToAllTableViews];

    objc_initWeak(&from, selfCopy);
    v141 = _NSConcreteStackBlock;
    v142 = -1073741824;
    v143 = 0;
    v144 = sub_100075918;
    v145 = &unk_10032AF58;
    objc_copyWeak(&v146, &from);
    v9 = [BuddyMenuController menuButtonConsumerWithHandler:&v141];
    menuButtonConsumer = selfCopy->_menuButtonConsumer;
    selfCopy->_menuButtonConsumer = v9;

    v11 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v136 = -1073741824;
    v137 = 0;
    v138 = sub_100075960;
    v139 = &unk_10032B0D0;
    v140 = selfCopy;
    dispatch_async(v11, &block);

    cf = WiFiManagerClientCreate();
    if (cf)
    {
      CFRunLoopGetCurrent();
      WiFiManagerClientScheduleWithRunLoop();
      v156 = WiFiManagerClientCopyDevices();
      v133 = v156;
      if ([v133 count])
      {
        v12 = [v133 objectAtIndexedSubscript:0];

        oslog[1] = v12;
        if (!WiFiDeviceClientGetPower())
        {
          oslog[0] = _BYLoggingFacility();
          v131 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
          {
            v13 = oslog[0];
            v14 = v131;
            sub_10006AA68(v130);
            _os_log_impl(&_mh_execute_header, v13, v14, "Wifi is off ! turning it on!", v130, 2u);
          }

          objc_storeStrong(oslog, 0);
          WiFiManagerClientSetPower();
        }
      }

      CFRunLoopGetCurrent();
      WiFiManagerClientUnscheduleFromRunLoop();
      CFRelease(cf);
      objc_storeStrong(&v133, 0);
    }

    v15 = [BFFWindow alloc];
    v16 = [v15 initWithWindowScene:location[0]];
    window = selfCopy->_window;
    selfCopy->_window = v16;

    v18 = +[BYDevice currentDevice];
    v19 = [v18 type] == 0;

    if (v19)
    {
      v20 = selfCopy->_window;
      v21 = +[UIColor blackColor];
      [(BFFWindow *)v20 setBackgroundColor:v21];
    }

    v22 = selfCopy->_window;
    v23 = +[UIColor systemBlueColor];
    [(BFFWindow *)v22 setTintColor:v23];

    [(SetupController *)selfCopy checkMiniBuddyBreadcrumbs];
    v24 = +[BYSetupStateNotifier sharedNotifier];
    [v24 notifyStateChangedTo:1];

    v25 = +[ACAccountStore defaultStore];
    aa_primaryAppleAccount = [v25 aa_primaryAppleAccount];

    if (!aa_primaryAppleAccount)
    {
      v26 = +[ACAccountStore defaultStore];
      v27 = [v26 aa_accountsEnabledForDataclass:kAccountDataclassDeviceLocator];
      lastObject = [v27 lastObject];

      if (lastObject)
      {
        [lastObject aa_setPrimaryAccount:1];
        v28 = +[ACAccountStore defaultStore];
        [v28 saveAccount:lastObject withCompletionHandler:0];
      }

      objc_storeStrong(&lastObject, 0);
    }

    v29 = +[BYSetupStateManager sharedManager];
    v30 = 1;
    if (([v29 didSetupUsingiTunes] & 1) == 0)
    {
      v30 = 1;
      if (![(SetupController *)selfCopy _didRestoreIniTunes])
      {
        v30 = +[DMCMultiUserModeUtilities shouldSkipLanguageAndLocaleSetupForNewUsers];
      }
    }

    if (v30)
    {
      v127 = _BYLoggingFacility();
      v126 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v127;
        v32 = v126;
        sub_10006AA68(v125);
        _os_log_impl(&_mh_execute_header, v31, v32, "Setting current current language/locale for our language/locale preferences...", v125, 2u);
      }

      objc_storeStrong(&v127, 0);
      v124 = +[NSUserDefaults standardUserDefaults];
      v155 = CFPreferencesCopyAppValue(@"AppleLocale", kCFPreferencesAnyApplication);
      v123 = v155;
      if (v123)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v123 length])
          {
            [v124 setObject:v123 forKey:@"Locale"];
          }
        }
      }

      v154 = CFPreferencesCopyAppValue(@"AppleLanguages", kCFPreferencesAnyApplication);
      v122 = v154;
      if (v122)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v122 count])
          {
            v33 = [v122 objectAtIndexedSubscript:0];
            [v124 setObject:v33 forKey:@"Language"];
          }
        }
      }

      objc_storeStrong(&v122, 0);
      objc_storeStrong(&v123, 0);
      objc_storeStrong(&v124, 0);
    }

    environment = [(SetupController *)selfCopy environment];
    networkProvider = [environment networkProvider];
    networkReachable = [networkProvider networkReachable];

    if (networkReachable)
    {
      v36 = +[BuddyAppleIDConfigurationManager sharedManager];
      [v36 getURLConfigurationWithHandler:0];

      v37 = dispatch_get_global_queue(0, 0);
      dispatch_async(v37, &stru_10032B340);
    }

    environment2 = [(SetupController *)selfCopy environment];
    analyticsManager = [(BYEnvironment *)environment2 analyticsManager];
    v158[0] = @"networkReachable";
    environment3 = [(SetupController *)selfCopy environment];
    networkProvider2 = [(BYEnvironment *)environment3 networkProvider];
    v41 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [networkProvider2 networkReachable] & 1);
    v159[0] = v41;
    v158[1] = @"hasCompletedInitialSetup";
    environment4 = [(SetupController *)selfCopy environment];
    runState = [(BYEnvironment *)environment4 runState];
    v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [runState hasCompletedInitialRun] & 1);
    v159[1] = v44;
    v45 = [NSDictionary dictionaryWithObjects:v159 forKeys:v158 count:2];
    [analyticsManager addEvent:@"com.apple.setupassistant.ios.start" withPayload:v45 persist:1];

    v120 = _BYLoggingFacility();
    v119 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      networkProvider3 = [environment networkProvider];
      v47 = [networkProvider3 networkReachable] & 1;
      networkProvider4 = [environment networkProvider];
      sub_100075A38(v157, v47, [networkProvider4 connectedOverWiFi] & 1);
      _os_log_impl(&_mh_execute_header, v120, v119, "Network reachability at startup: %d isWifi: %d", v157, 0xEu);
    }

    objc_storeStrong(&v120, 0);
    v49 = nw_path_monitor_create();
    [(SetupController *)selfCopy setPathMonitor:v49];

    pathMonitor = [(SetupController *)selfCopy pathMonitor];
    v51 = &_dispatch_main_q;
    nw_path_monitor_set_queue(pathMonitor, v51);

    pathMonitor2 = [(SetupController *)selfCopy pathMonitor];
    update_handler = _NSConcreteStackBlock;
    v114 = -1073741824;
    v115 = 0;
    v116 = sub_100075A58;
    v117 = &unk_10032B368;
    v118 = selfCopy;
    nw_path_monitor_set_update_handler(pathMonitor2, &update_handler);

    pathMonitor3 = [(SetupController *)selfCopy pathMonitor];
    nw_path_monitor_start(pathMonitor3);

    v54 = objc_alloc_init(BuddyProximityAutomatedDeviceEnrollmentController);
    [environment setProximityAutomatedDeviceEnrollmentController:v54];

    v55 = selfCopy;
    proximityAutomatedDeviceEnrollmentController = [environment proximityAutomatedDeviceEnrollmentController];
    [proximityAutomatedDeviceEnrollmentController setDelegate:v55];

    v57 = [ProximitySetupController alloc];
    miscState = [environment miscState];
    buddyPreferences = [environment buddyPreferences];
    buddyPreferencesExcludedFromBackup = [environment buddyPreferencesExcludedFromBackup];
    featureFlags = [environment featureFlags];
    analyticsManager2 = [environment analyticsManager];
    setupMethod = [environment setupMethod];
    v64 = [(ProximitySetupController *)v57 initWithMiscState:miscState buddyPreferences:buddyPreferences buddyPreferencesExcludedFromBackup:buddyPreferencesExcludedFromBackup featureFlags:featureFlags analyticsManager:analyticsManager2 setupMethod:setupMethod];
    [environment setProximitySetupController:v64];

    v65 = selfCopy;
    proximitySetupController = [environment proximitySetupController];
    [proximitySetupController setDelegate:v65];

    [(SetupController *)selfCopy _createNavigationController];
    v67 = +[UIDevice currentDevice];
    [(UIDevice *)v67 setBatteryMonitoringEnabled:1];

    [(SetupController *)selfCopy _initializeGreen];
    v68 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v68 addObserver:selfCopy selector:"_updateLoadingStatus" name:RUIHTTPRequestLoadingStatusDidChangeNotification object:0];

    center = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(center, selfCopy, sub_100075AA8, @"com.apple.springboard.setupsnapshotremoved", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(center, selfCopy, sub_100075AE0, @"com.apple.purplebuddy.SetupStateChanged", 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterAddObserver(center, selfCopy, sub_100075B18, @"AppleDatePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    v69 = +[BuddyActivationConfiguration currentConfiguration];
    [v69 addDelegate:selfCopy];

    v110 = 0;
    runState2 = [environment runState];
    v71 = 0;
    if (([runState2 hasCompletedInitialRun] & 1) == 0)
    {
      v111 = +[BuddyActivationConfiguration currentConfiguration];
      v110 = 1;
      v71 = [v111 isActivated] ^ 1;
    }

    if (v110)
    {
    }

    if (v71)
    {
      v72 = objc_opt_class();
      currentAppStates = [objc_opt_class() currentAppStates];
      buddyPreferencesExcludedFromBackup2 = [environment buddyPreferencesExcludedFromBackup];
      [v72 persist:currentAppStates to:buddyPreferencesExcludedFromBackup2];
    }

    v75 = objc_alloc_init(BuddyLanguageChangeObserver);
    languageObserver = selfCopy->_languageObserver;
    selfCopy->_languageObserver = v75;

    [(BuddyLanguageChangeObserver *)selfCopy->_languageObserver setDelegate:?];
    [(BuddyLanguageChangeObserver *)selfCopy->_languageObserver startObservingLanguageChanges];
    v77 = +[BYLocationController sharedBuddyLocationController];
    environment5 = [(SetupController *)selfCopy environment];
    analyticsManager3 = [(BYEnvironment *)environment5 analyticsManager];
    [v77 configureForAnalytics:analyticsManager3];

    v109 = +[NSFileManager defaultManager];
    if (([v109 fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/FirstTime"] & 1) != 0 && ((objc_msgSend(v109, "createFileAtPath:contents:attributes:", @"/var/mobile/Media/iTunes_Control/iTunes/ShowLicense", 0, 0) & 1) == 0 || (objc_msgSend(v109, "createFileAtPath:contents:attributes:", @"/var/mobile/Media/iTunes_Control/iTunes/ShowMarketing", 0, 0) & 1) == 0 || (objc_msgSend(v109, "removeItemAtPath:error:", @"/var/mobile/Media/iTunes_Control/iTunes/FirstTime", 0) & 1) == 0))
    {
      [v109 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowLicense" error:0];
      [v109 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowMarketing" error:0];
    }

    v80 = [BFFBackupDeviceController alloc];
    proximitySetupController2 = [environment proximitySetupController];
    v82 = [(BFFBackupDeviceController *)v80 initWithProximitySetupController:proximitySetupController2];
    [environment setBackupDeviceController:v82];

    if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
    {
      [(SetupController *)selfCopy startTFDEPPolling];
    }

    buddyPreferencesExcludedFromBackup3 = [environment buddyPreferencesExcludedFromBackup];
    v84 = [BuddySuspendTask hasSuspendTaskWithBuddyPreferencesExcludedFromBackup:buddyPreferencesExcludedFromBackup3];

    if (v84)
    {
      v85 = objc_opt_new();
      [environment setSuspendTask:v85];
    }

    v86 = +[OBAnalyticsManager sharedManager];
    [v86 setShouldStashMetrics:1];

    v87 = +[BYNetworkMonitor sharedInstance];
    v103 = _NSConcreteStackBlock;
    v104 = -1073741824;
    v105 = 0;
    v106 = sub_100075B50;
    v107 = &unk_10032B2E0;
    v108 = environment;
    [(BYNetworkMonitor *)v87 withMinimumNetworkType:1 timeout:&v103 runBlock:30.0];

    v97 = _NSConcreteStackBlock;
    v98 = -1073741824;
    v99 = 0;
    v100 = sub_100076038;
    v101 = &unk_10032B0D0;
    v102 = selfCopy;
    statusBarManager = [location[0] statusBarManager];
    [statusBarManager setDebugMenuHandler:&v97];

    v91 = _NSConcreteStackBlock;
    v92 = -1073741824;
    v93 = 0;
    v94 = sub_100076088;
    v95 = &unk_10032B0D0;
    v96 = selfCopy;
    displayZoomExecutor = [environment displayZoomExecutor];
    [displayZoomExecutor setWillCommit:&v91];

    objc_storeStrong(&v96, 0);
    objc_storeStrong(&v102, 0);
    objc_storeStrong(&v108, 0);
    objc_storeStrong(&v109, 0);
    objc_storeStrong(&v118, 0);
    objc_storeStrong(&environment, 0);
    objc_storeStrong(&aa_primaryAppleAccount, 0);
    objc_storeStrong(&v140, 0);
    objc_destroyWeak(&v146);
    objc_destroyWeak(&from);
    v148 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)buddyViewControllerDidPressAlternateSetupButton:(id)button
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  objc_storeStrong(location, 0);
}

- (void)_networkPathChanged
{
  selfCopy = self;
  oslog[1] = a2;
  v2 = byte_1003A6FC0 & 1;
  environment = [(SetupController *)self environment];
  networkProvider = [(BYEnvironment *)environment networkProvider];
  v5 = [networkProvider networkReachable] & 1;

  if (v2 != v5)
  {
    oslog[0] = _BYLoggingFacility();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      environment2 = [selfCopy environment];
      networkProvider2 = [environment2 networkProvider];
      v8 = [networkProvider2 networkReachable] & 1;
      environment3 = [selfCopy environment];
      networkProvider3 = [environment3 networkProvider];
      sub_100075A38(buf, v8, [networkProvider3 connectedOverWiFi] & 1);
      _os_log_impl(&_mh_execute_header, oslog[0], v35, "Network reachability changed: %d isWifi: %d", buf, 0xEu);
    }

    objc_storeStrong(oslog, 0);
    environment4 = [selfCopy environment];
    networkProvider4 = [environment4 networkProvider];
    byte_1003A6FC0 = [networkProvider4 networkReachable] & 1;
  }

  environment5 = [selfCopy environment];
  networkProvider5 = [environment5 networkProvider];
  networkReachable = [networkProvider5 networkReachable];

  if (networkReachable)
  {
    environment6 = [selfCopy environment];
    systemTimeUpdateManager = [environment6 systemTimeUpdateManager];
    [systemTimeUpdateManager updateSystemTime];

    v18 = +[BuddyAppleIDConfigurationManager sharedManager];
    [v18 getURLConfigurationWithHandler:0];

    if ([selfCopy modalWiFiDismissalTriggers])
    {
      [selfCopy _hideModalWiFiSettingsWithReason:@"successful network reachability"];
    }

    environment7 = [selfCopy environment];
    enrollmentCoordinator = [environment7 enrollmentCoordinator];
    [enrollmentCoordinator networkAcquired];

    v21 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v30 = -1073741824;
    v31 = 0;
    v32 = sub_100076618;
    v33 = &unk_10032B0D0;
    v34 = selfCopy;
    dispatch_async(v21, &block);

    objc_storeStrong(&v34, 0);
  }

  environment8 = [selfCopy environment];
  networkProvider6 = [environment8 networkProvider];
  connectedOverWiFi = [networkProvider6 connectedOverWiFi];

  if (connectedOverWiFi)
  {
    *(selfCopy + 112) = 1;
  }

  navigationFlowController = [selfCopy navigationFlowController];
  wifiController = [navigationFlowController wifiController];
  environment9 = [selfCopy environment];
  networkProvider7 = [environment9 networkProvider];
  [wifiController reachabilityChanged:{objc_msgSend(networkProvider7, "networkReachable") & 1}];
}

- (void)checkForUpdatedCarrierBundle
{
  location[2] = self;
  location[1] = a2;
  location[0] = [[CoreTelephonyClient alloc] initWithQueue:0];
  oslog = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog;
    v3 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking for updated carrier bundles...", v4, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [location[0] checkForUpdatedBundlesWithAutoInstall:1 completion:&stru_10032B3E8];
  objc_storeStrong(location, 0);
}

- (void)_refreshLanguage
{
  v2 = +[NSLocale preferredLanguages];
  firstObject = [(NSArray *)v2 firstObject];
  languageAtStartup = self->_languageAtStartup;
  self->_languageAtStartup = firstObject;

  v5 = +[NSLocale preferredLanguages];
  [(SetupController *)self setPreferredLanguagesAtStartup:v5];

  v6 = +[NSLocale currentLocale];
  localeIdentifier = [(NSLocale *)v6 localeIdentifier];
  localeIdentifierAtStartup = self->_localeIdentifierAtStartup;
  self->_localeIdentifierAtStartup = localeIdentifier;
}

- (id)_stringForStartupCause:(unint64_t)cause
{
  if (cause)
  {
    switch(cause)
    {
      case 1uLL:
        v4 = @"Post-Language Change";
        break;
      case 2uLL:
        v4 = @"Post-Display Zoom Change";
        break;
      case 3uLL:
        v4 = @"Activation";
        break;
      case 4uLL:
        v4 = @"Post-Restore";
        break;
      case 5uLL:
        v4 = @"Post-Software Update";
        break;
      case 6uLL:
        v4 = @"Migration";
        break;
      case 7uLL:
        v4 = @"Post-Demo Restore";
        break;
      case 9uLL:
        v4 = @"MDM Migration";
        break;
      case 0xAuLL:
        v4 = @"ThreatNotification";
        break;
    }
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

- (void)startTFDEPPolling
{
  selfCopy = self;
  oslog[1] = a2;
  if (!self->_TFDEPPollTimer)
  {
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v2, v3, "TFDEP: starting poll timer", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
    v4 = [NSTimer scheduledTimerWithTimeInterval:selfCopy target:"TFDEPPollTimerFired:" selector:0 userInfo:1 repeats:1.0];
    TFDEPPollTimer = selfCopy->_TFDEPPollTimer;
    selfCopy->_TFDEPPollTimer = v4;
  }
}

- (void)stopTFDEPPolling
{
  selfCopy = self;
  oslog[1] = a2;
  if (self->_TFDEPPollTimer)
  {
    oslog[0] = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "TFDEP: stopping poll timer", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
    [(NSTimer *)selfCopy->_TFDEPPollTimer invalidate];
    objc_storeStrong(&selfCopy->_TFDEPPollTimer, 0);
  }
}

- (BOOL)_isTeslaEnrolled
{
  v2 = [MDMCloudConfiguration sharedConfiguration:a2];
  isTeslaEnrolled = [v2 isTeslaEnrolled];

  return isTeslaEnrolled & 1;
}

- (void)TFDEPPollTimerFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  environment = [(SetupController *)selfCopy environment];
  managedConfiguration = [(BYEnvironment *)environment managedConfiguration];

  v17 = 0;
  v15 = 0;
  v13 = 0;
  if (-[SetupController _isTeslaEnrolled](selfCopy, "_isTeslaEnrolled") || (v18 = -[SetupController environment](selfCopy, "environment"), v17 = 1, v16 = [v18 enrollmentCoordinator], v15 = 1, v4 = 0, (objc_msgSend(v16, "shouldDoReturnToService") & 1) != 0))
  {
    installedMDMProfileIdentifier = [managedConfiguration installedMDMProfileIdentifier];
    v13 = 1;
    v4 = installedMDMProfileIdentifier != 0;
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  if (v17)
  {
  }

  if (v4)
  {
    oslog = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v11;
      sub_10006AA68(v10);
      _os_log_impl(&_mh_execute_header, v5, v6, "TFDEP: We are undergoing tap free setup!", v10, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(SetupController *)selfCopy stopTFDEPPolling];
    selfCopy->_isTapFreeSetup = 1;
    featureFlags = [(BYEnvironment *)selfCopy->_environment featureFlags];
    v8 = [featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled] ^ 1;

    if (v8)
    {
      [managedConfiguration cloudConfigurationUIDidCompleteWasApplied:1];
    }

    navigationFlowController = [(SetupController *)selfCopy navigationFlowController];
    [(BuddyNavigationFlowController *)navigationFlowController beginTapFreeSetUp];
  }

  objc_storeStrong(&managedConfiguration, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)doesTapFreeSetupAffectsClass:(Class)class
{
  v3 = objc_opt_respondsToSelector();
  controllerAffectedByTapFreeSetup = 0;
  if (v3)
  {
    controllerAffectedByTapFreeSetup = [(objc_class *)class controllerAffectedByTapFreeSetup];
  }

  return controllerAffectedByTapFreeSetup & 1;
}

- (BOOL)shouldTapFreeSetupSkipControllerClass:(Class)class
{
  isTapFreeSetup = self->_isTapFreeSetup;
  v4 = 0;
  if (isTapFreeSetup)
  {
    v4 = [(SetupController *)self doesTapFreeSetupAffectsClass:class];
  }

  return v4 & 1;
}

- (void)_setupAndStartMDMEnrollmentIfNeeded
{
  selfCopy = self;
  v52 = a2;
  cachedStartupCause = [(SetupController *)self cachedStartupCause];
  v3 = 0;
  if (cachedStartupCause != 1)
  {
    v3 = [(SetupController *)selfCopy cachedStartupCause]!= 2;
  }

  v51 = v3;
  enrollmentCoordinator = [(BYEnvironment *)selfCopy->_environment enrollmentCoordinator];
  featureFlags = [(BYEnvironment *)selfCopy->_environment featureFlags];
  isMDMEnrollmentFlowControllerAdoptionEnabled = [featureFlags isMDMEnrollmentFlowControllerAdoptionEnabled];

  if (isMDMEnrollmentFlowControllerAdoptionEnabled)
  {
    [enrollmentCoordinator setNavigationController:selfCopy->_nav];
    enrollmentCoordinator2 = [(BYEnvironment *)selfCopy->_environment enrollmentCoordinator];
    shouldDoReturnToService = [enrollmentCoordinator2 shouldDoReturnToService];

    if (shouldDoReturnToService)
    {
      enrollmentCoordinator3 = [(BYEnvironment *)selfCopy->_environment enrollmentCoordinator];
      location = _BYLoggingFacility();
      v47 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        v8 = location;
        v9 = v47;
        sub_10006AA68(buf);
        _os_log_impl(&_mh_execute_header, v8, v9, "We are in return to service flow. Will push without deferring transitions…", buf, 2u);
      }

      objc_storeStrong(&location, 0);
      [(BFFNavigationController *)selfCopy->_nav setPushWithoutDeferringTransitionsWhileInBackground:1];
      v10 = +[BuddyCloudConfigManager sharedManager];
      [v10 setEnrollmentCoordinator:enrollmentCoordinator3];

      v39 = _NSConcreteStackBlock;
      v40 = -1073741824;
      v41 = 0;
      v42 = sub_100077670;
      v43 = &unk_10032B438;
      v44 = selfCopy;
      v45 = v51;
      [enrollmentCoordinator3 setLanguageSettingBlock:&v39];
      enrollmentCoordinator4 = [(BYEnvironment *)selfCopy->_environment enrollmentCoordinator];
      [enrollmentCoordinator4 startEnrollmentFlow];

      objc_storeStrong(&v44, 0);
      objc_storeStrong(&enrollmentCoordinator3, 0);
    }
  }

  else
  {
    v12 = +[BuddyCloudConfigManager sharedManager];
    [v12 setEnrollmentCoordinator:enrollmentCoordinator];

    if ([enrollmentCoordinator shouldDoReturnToService])
    {
      oslog = _BYLoggingFacility();
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = oslog;
        v14 = v37;
        sub_10006AA68(v36);
        _os_log_impl(&_mh_execute_header, v13, v14, "We are in auto re-enrollment flow. Will push without deferring transitions…", v36, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [(BFFNavigationController *)selfCopy->_nav setPushWithoutDeferringTransitionsWhileInBackground:1];
      v15 = dispatch_get_global_queue(2, 0);
      block = _NSConcreteStackBlock;
      v31 = -1073741824;
      v32 = 0;
      v33 = sub_10007791C;
      v34 = &unk_10032B0D0;
      v35 = enrollmentCoordinator;
      dispatch_async(v15, &block);

      languageStrings = [enrollmentCoordinator languageStrings];
      firstObject = [languageStrings firstObject];

      localeString = [enrollmentCoordinator localeString];
      if ([firstObject length] && objc_msgSend(localeString, "length"))
      {
        v27 = _BYLoggingFacility();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v27;
          v18 = v26;
          sub_10006AA68(v25);
          _os_log_impl(&_mh_execute_header, v17, v18, "Doing auto re-enrollment, setting language & locale...", v25, 2u);
        }

        objc_storeStrong(&v27, 0);
        [(SetupController *)selfCopy userSelectedLanguageWithLocale:firstObject countryCode:localeString localePaneScrollOffset:0.0];
        if (v51)
        {
          v24 = _BYLoggingFacility();
          v23 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v24;
            v20 = v23;
            sub_10006AA68(v22);
            _os_log_impl(&_mh_execute_header, v19, v20, "Proceeding past language locale pane", v22, 2u);
          }

          objc_storeStrong(&v24, 0);
          navigationFlowController = [(SetupController *)selfCopy navigationFlowController];
          [(BuddyNavigationFlowController *)navigationFlowController proceedPastLanguageLocalePane];
        }
      }

      objc_storeStrong(&localeString, 0);
      objc_storeStrong(&firstObject, 0);
      objc_storeStrong(&v35, 0);
    }
  }

  objc_storeStrong(&enrollmentCoordinator, 0);
}

- (void)didBecomeActive
{
  selfCopy = self;
  v23 = a2;
  if (self->_lockStartTimestamp)
  {
    [BuddyTimestamp intervalSinceTimestamp:selfCopy->_lockStartTimestamp];
    v22 = *&v2;
    selfCopy->_cumulativeLockedDuration = selfCopy->_cumulativeLockedDuration + v2;
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100077E48(buf, v22);
      _os_log_impl(&_mh_execute_header, oslog, v20, "Spent %0.2fs locked/inactive", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_lockStartTimestamp = 0;
  }

  if (!selfCopy->_buddyStartTimestamp)
  {
    v3 = +[BuddyTimestamp currentTimestamp];
    selfCopy->_buddyStartTimestamp = v3;
    v19 = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      location = +[NSDate date];
      sub_100071CBC(v27, location);
      _os_log_impl(&_mh_execute_header, v19, v18, "Buddy UI started at %{public}@", v27, 0xCu);

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v19, 0);
    environment = [(SetupController *)selfCopy environment];
    analyticsManager = [(BYEnvironment *)environment analyticsManager];
    v25[0] = @"networkReachable";
    environment2 = [(SetupController *)selfCopy environment];
    networkProvider = [(BYEnvironment *)environment2 networkProvider];
    v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [networkProvider networkReachable] & 1);
    v26[0] = v8;
    v25[1] = @"hasCompletedInitialSetup";
    environment3 = [(SetupController *)selfCopy environment];
    runState = [(BYEnvironment *)environment3 runState];
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [runState hasCompletedInitialRun] & 1);
    v26[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
    [analyticsManager addEvent:@"com.apple.setupassistant.ios.initialForeground" withPayload:v12 persist:1];
  }

  navigationFlowController = [(SetupController *)selfCopy navigationFlowController];
  topFlowItem = [(BuddyNavigationFlowController *)navigationFlowController topFlowItem];

  if (objc_opt_respondsToSelector() & 1) != 0 && ([topFlowItem shouldStopInactivityTimer])
  {
    inactivityTimer = [(SetupController *)selfCopy inactivityTimer];
    [(BuddyInactivityTimer *)inactivityTimer stop];
  }

  navigationAnalytics = [(SetupController *)selfCopy navigationAnalytics];
  [(BuddyNavigationAnalytics *)navigationAnalytics didBecomeActive];

  objc_storeStrong(&topFlowItem, 0);
}

- (void)willResignActive
{
  self->_lockStartTimestamp = +[BuddyTimestamp currentTimestamp];
  if (self->_buddyDone)
  {
    [(SetupController *)self willMarkBuddyComplete];
  }
}

- (void)didEnterBackground
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (selfCopy->_buddyDone)
    {
      v2 = @"complete";
    }

    else
    {
      v2 = @"not complete";
    }

    if ([UIApp isSuspendedUnderLock])
    {
      v3 = @"locked";
    }

    else
    {
      v3 = @"not locked";
    }

    sub_100078180(buf, v2, v3);
    _os_log_impl(&_mh_execute_header, oslog[0], v20, "Entered background (setup is %@, device is %@)", buf, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  monitor = [(SetupController *)selfCopy monitor];

  if (monitor)
  {
    v19 = _BYLoggingFacility();
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v5 = v19;
      v6 = v18;
      sub_10006AA68(v17);
      _os_log_error_impl(&_mh_execute_header, v5, v6, "Entered background before a display layout update was received; forcing completion...", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    monitor2 = [(SetupController *)selfCopy monitor];
    [(FBSDisplayLayoutMonitor *)monitor2 invalidate];

    [(SetupController *)selfCopy setMonitor:0];
    [(SetupController *)selfCopy markBuddyComplete];
    [(SetupController *)selfCopy didMarkBuddyComplete];
  }

  if (!selfCopy->_buddyDone || ([UIApp isSuspendedUnderLock] & 1) != 0)
  {
    inactivityTimer = [(SetupController *)selfCopy inactivityTimer];
    [(BuddyInactivityTimer *)inactivityTimer start];
  }

  else
  {
    v8 = selfCopy;
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_1000781A0;
    v15 = &unk_10032B0D0;
    v16 = selfCopy;
    [(SetupController *)v8 _executeAfterBuddyPreTerminationTasksFinish:&v11];
    objc_storeStrong(&v16, 0);
  }

  navigationAnalytics = [(SetupController *)selfCopy navigationAnalytics];
  [(BuddyNavigationAnalytics *)navigationAnalytics didEnterBackground];
}

- (void)willTerminate
{
  v2 = [(SetupController *)self environment:a2];
  proximitySetupController = [(BYEnvironment *)v2 proximitySetupController];
  [proximitySetupController setupFinished];
}

- (void)terminate
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[BYSetupStateNotifier sharedNotifier];
  [v2 notifyStateChangedTo:3];

  location[0] = 0;
  if ([(SetupController *)selfCopy shouldLaunchSuspendTaskURL])
  {
    environment = [(SetupController *)selfCopy environment];
    suspendTask = [(BYEnvironment *)environment suspendTask];
    launchURL = [suspendTask launchURL];
    v6 = location[0];
    location[0] = launchURL;
  }

  environment2 = [(SetupController *)selfCopy environment];
  displayZoomExecutor = [(BYEnvironment *)environment2 displayZoomExecutor];
  [displayZoomExecutor setWillCommit:0];

  environment3 = [(SetupController *)selfCopy environment];
  displayZoomExecutor2 = [(BYEnvironment *)environment3 displayZoomExecutor];
  v11 = [displayZoomExecutor2 commitIfNeededWithRelaunchURL:location[0] transitionWithScreenshot:0];

  if (v11)
  {
    v12 = +[NSRunLoop mainRunLoop];
    [(NSRunLoop *)v12 run];
  }

  else
  {
    oslog = _BYLoggingFacility();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = oslog;
      v14 = v17;
      sub_10006AA68(v16);
      _os_log_impl(&_mh_execute_header, v13, v14, "Buddy exiting...", v16, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v15 = +[UIApplication sharedApplication];
    [(UIApplication *)v15 terminateWithSuccess];
  }

  objc_storeStrong(location, 0);
}

- (void)willMarkBuddyComplete
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v38;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing any work before marking buddy as complete...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v4 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v4 aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    environment = [(SetupController *)selfCopy environment];
    proximitySetupController = [(BYEnvironment *)environment proximitySetupController];
    hasAppliedSettings = [proximitySetupController hasAppliedSettings];

    v36 = hasAppliedSettings & 1;
    v33 = 0;
    v31 = 0;
    v29 = 0;
    v9 = 0;
    if (hasAppliedSettings)
    {
      environment2 = [(SetupController *)selfCopy environment];
      v33 = 1;
      pendingRestoreState = [(BYEnvironment *)environment2 pendingRestoreState];
      v31 = 1;
      backupItem = [pendingRestoreState backupItem];
      v29 = 1;
      v9 = backupItem == 0;
    }

    if (v29)
    {
    }

    if (v31)
    {
    }

    if (v33)
    {
    }

    v35 = v9;
    if (v9)
    {
      oslog = _BYLoggingFacility();
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = oslog;
        v11 = v27;
        sub_10006AA68(v26);
        _os_log_impl(&_mh_execute_header, v10, v11, "Enabling Find My...", v26, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v12 = +[FMDFMIPManager sharedInstance];
      v25 = [(FMDFMIPManager *)v12 enableFMIPInContext:5];

      if (v25)
      {
        v24 = _BYLoggingFacility();
        v23 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v21 = 0;
          v19 = 0;
          if (_BYIsInternalInstall())
          {
            v13 = v25;
          }

          else
          {
            domain = [v25 domain];
            v21 = 1;
            v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v25 code]);
            v20 = v13;
            v19 = 1;
          }

          sub_100071CBC(v41, v13);
          _os_log_error_impl(&_mh_execute_header, v24, v23, "Failed to enable Find My: %{public}@", v41, 0xCu);
          if (v19)
          {
          }

          if (v21)
          {
          }
        }

        objc_storeStrong(&v24, 0);
      }

      objc_storeStrong(&v25, 0);
    }
  }

  v18 = @"com.apple.WebUI";
  v17 = @"DefaultValueForPasswordAndCreditCardAutoFill";
  keyExistsAndHasValidFormat = 0;
  CFPreferencesGetAppBooleanValue(@"DefaultValueForPasswordAndCreditCardAutoFill", @"com.apple.WebUI", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    environment3 = [(SetupController *)selfCopy environment];
    managedConfiguration = [(BYEnvironment *)environment3 managedConfiguration];
    CFPreferencesSetAppValue(@"DefaultValueForPasswordAndCreditCardAutoFill", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [managedConfiguration isPasscodeSet] & 1), @"com.apple.WebUI");

    CFPreferencesAppSynchronize(@"com.apple.WebUI");
  }
}

- (void)markBuddyComplete
{
  selfCopy = self;
  v51 = a2;
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  markBuddyCompleteDidRun = [(SetupController *)selfCopy markBuddyCompleteDidRun];
  [(SetupController *)selfCopy setMarkBuddyCompleteDidRun:1];
  objc_sync_exit(selfCopy2);

  if (markBuddyCompleteDidRun)
  {
    oslog = _BYLoggingFacility();
    v48 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v48;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Already marked buddy as complete.", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v46 = _BYLoggingFacility();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v46;
      v6 = v45;
      sub_10006AA68(v44);
      _os_log_impl(&_mh_execute_header, v5, v6, "Marking buddy as complete...", v44, 2u);
    }

    objc_storeStrong(&v46, 0);
    environment = [(SetupController *)selfCopy environment];
    chronicle = [(BYEnvironment *)environment chronicle];
    environment2 = [(SetupController *)selfCopy environment];
    buddyPreferences = [(BYEnvironment *)environment2 buddyPreferences];
    environment3 = [(SetupController *)selfCopy environment];
    buddyPreferencesExcludedFromBackup = [(BYEnvironment *)environment3 buddyPreferencesExcludedFromBackup];
    [chronicle persistBackedUpFeaturesInPreferences:buddyPreferences andNotBackedFeaturesInPreferences:buddyPreferencesExcludedFromBackup persistImmediately:0];

    environment4 = [(SetupController *)selfCopy environment];
    buddyPreferences2 = [(BYEnvironment *)environment4 buddyPreferences];
    [buddyPreferences2 removeObjectForKey:@"DebugFlowItemClassNames" onlyFromMemory:0];

    environment5 = [(SetupController *)selfCopy environment];
    buddyPreferencesExcludedFromBackup2 = [(BYEnvironment *)environment5 buddyPreferencesExcludedFromBackup];
    [buddyPreferencesExcludedFromBackup2 removeObjectForKey:@"PushWithoutDeferringTransitionsWhileInBackground"];

    environment6 = [(SetupController *)selfCopy environment];
    buddyPreferencesExcludedFromBackup3 = [(BYEnvironment *)environment6 buddyPreferencesExcludedFromBackup];
    [BuddySetupAnalytics removeFromDiskWithPreferences:buddyPreferencesExcludedFromBackup3];

    environment7 = [(SetupController *)selfCopy environment];
    expressSettingsCache = [(BYEnvironment *)environment7 expressSettingsCache];

    if (expressSettingsCache)
    {
      v21 = selfCopy;
      v38 = _NSConcreteStackBlock;
      v39 = -1073741824;
      v40 = 0;
      v41 = sub_100079148;
      v42 = &unk_10032B488;
      v43 = selfCopy;
      v22 = [NSNumber numberWithDouble:3.0];
      [(SetupController *)v21 _queuePreTerminationTask:&v38 taskDescription:@"Finalize express settings" withTimeoutInSeconds:v22];

      objc_storeStrong(&v43, 0);
    }

    else if (os_variant_has_internal_ui())
    {
      v23 = +[NSAssertionHandler currentHandler];
      [(NSAssertionHandler *)v23 handleFailureInMethod:v51 object:selfCopy file:@"SetupController.m" lineNumber:1502 description:@"expressSettingsCache must not be nil"];
    }

    environment8 = [(SetupController *)selfCopy environment];
    buddyPreferencesExcludedFromBackup4 = [(BYEnvironment *)environment8 buddyPreferencesExcludedFromBackup];
    [buddyPreferencesExcludedFromBackup4 removeObjectForKey:@"UserLastSelectedLocale"];

    +[BYPreferencesController persistEverything];
    v26 = +[NSUserDefaults standardUserDefaults];
    [(NSUserDefaults *)v26 setObject:&__kCFBooleanTrue forKey:BYBuddyDoneKey];

    v27 = +[NSUserDefaults standardUserDefaults];
    v28 = [NSNumber numberWithInt:BYBuddyIOSCurrentVersion];
    [(NSUserDefaults *)v27 setObject:v28 forKey:BYBuddyIOSVersionKey];

    v29 = +[NSUserDefaults standardUserDefaults];
    [(NSUserDefaults *)v29 setObject:&__kCFBooleanTrue forKey:BYBuddyFinishedInitialRunKey];

    v30 = +[NSUserDefaults standardUserDefaults];
    v31 = +[NSDate date];
    [(NSUserDefaults *)v30 setObject:v31 forKey:BYBuddyLastExitKey];

    environment9 = [(SetupController *)selfCopy environment];
    buddyPreferences3 = [(BYEnvironment *)environment9 buddyPreferences];
    [BuddyRestoreState removeFromPreferences:buddyPreferences3];

    environment10 = [(SetupController *)selfCopy environment];
    buddyPreferencesExcludedFromBackup5 = [(BYEnvironment *)environment10 buddyPreferencesExcludedFromBackup];
    [BuddyMigrationState removeFromPreferences:buddyPreferencesExcludedFromBackup5];

    v36 = +[BYSetupStateManager sharedManager];
    [v36 recordSetupUsingBuddy];

    v37 = +[NSUserDefaults standardUserDefaults];
    [(NSUserDefaults *)v37 synchronize];

    CFPreferencesSynchronize(BYSetupAssistantBundleIdentifier, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    CFPreferencesSetAppValue(BYBuddyRunPostDemoRestoreMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(BYBuddyRunMDMMigrationAfterSoftwareUpdateMiniBuddy, kCFBooleanFalse, BYBuddyNotBackedUpIdentifier);
    CFPreferencesSetAppValue(@"CloudConfigPresented", kCFBooleanTrue, BYBuddyNotBackedUpIdentifier);
    CFPreferencesAppSynchronize(BYBuddyNotBackedUpIdentifier);
    _CFPreferencesFlushCachesForIdentifier();
    _CFPreferencesFlushCachesForIdentifier();
    [(SetupController *)selfCopy _commitAnalytics];
  }
}

- (void)didMarkBuddyComplete
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v27;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing any work after marking buddy as complete...", buf, 2u);
  }

  objc_storeStrong(location, 0);
  CFPreferencesSetValue(@"BuddySetupDone", kCFBooleanTrue, @"com.apple.keyboard", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(@"com.apple.keyboard", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  [(SetupController *)selfCopy checkForUpdatedCarrierBundle];
  v4 = selfCopy;
  v20 = _NSConcreteStackBlock;
  v21 = -1073741824;
  v22 = 0;
  v23 = sub_1000797F0;
  v24 = &unk_10032B488;
  v25 = selfCopy;
  [(SetupController *)v4 _queuePreTerminationTask:&v20 taskDescription:@"MDM RTS" withTimeoutInSeconds:0];
  mobileAssetsNewFeaturesAssetManager = [(SetupController *)selfCopy mobileAssetsNewFeaturesAssetManager];

  if (mobileAssetsNewFeaturesAssetManager)
  {
    preTerminationTasksQueue = selfCopy->_preTerminationTasksQueue;
    block = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1000798D0;
    v18 = &unk_10032B0D0;
    v19 = selfCopy;
    dispatch_async(preTerminationTasksQueue, &block);
    objc_storeStrong(&v19, 0);
  }

  BYSetLaunchSentinel();
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = oslog;
    v8 = v12;
    sub_10006AA68(v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "Posting buddy finished...", v11, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v9 = +[BYSetupStateNotifier sharedNotifier];
  [v9 notifyStateChangedTo:2];

  BYObserveFinishSetupTriggers();
  center = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(center, selfCopy);
  [(BuddyLanguageChangeObserver *)selfCopy->_languageObserver stopObservingLanguageChanges];
  objc_storeStrong(&v25, 0);
}

- (void)_exitBuddyForDemoSetUp
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(SetupController *)self shouldEndLifecycleForCause:2])
  {
    [(SetupController *)selfCopy willEndLifecycleDueToCause:2 allowDismissal:1];
    [(SetupController *)selfCopy endLifecycleDueToCause:2];
    [(SetupController *)selfCopy _waitForBuddyTerminationTasksToFinish];
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v5 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_error_impl(&_mh_execute_header, v2, v3, "Unable to exit buddy for demo setup!", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
  }
}

- (void)_exitBuddyForMDMMigration
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(SetupController *)self shouldEndLifecycleForCause:5])
  {
    [(SetupController *)selfCopy willEndLifecycleDueToCause:5 allowDismissal:1];
    [(SetupController *)selfCopy endLifecycleDueToCause:5];
    [(SetupController *)selfCopy _waitForBuddyTerminationTasksToFinish];
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v5 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_error_impl(&_mh_execute_header, v2, v3, "Unable to exit buddy for MDM migration!", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
  }
}

- (void)_prepareForCloudRestoreReboot
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(SetupController *)self shouldEndLifecycleForCause:3])
  {
    [(SetupController *)selfCopy willEndLifecycleDueToCause:3 allowDismissal:0];
    [(SetupController *)selfCopy endLifecycleDueToCause:3];
    [(SetupController *)selfCopy _waitForBuddyTerminationTasksToFinish];
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v5 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_error_impl(&_mh_execute_header, v2, v3, "Unable to exit buddy for iCloud restore!", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
  }
}

- (void)_prepareForMigrationReboot
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(SetupController *)self shouldEndLifecycleForCause:4])
  {
    [(SetupController *)selfCopy willEndLifecycleDueToCause:4 allowDismissal:0];
    [(SetupController *)selfCopy endLifecycleDueToCause:4];
    [(SetupController *)selfCopy _waitForBuddyTerminationTasksToFinish];
  }

  else
  {
    oslog[0] = _BYLoggingFacility();
    v5 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_error_impl(&_mh_execute_header, v2, v3, "Unable to exit buddy for migration!", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
  }
}

- (void)_willEndLifecycleForDataTransfer
{
  selfCopy = self;
  location[1] = a2;
  [(SetupController *)self _stashAnalytics];
  v2 = +[AALoginPluginManager sharedInstance];
  [(AALoginPluginManager *)v2 unstashLoginResponse];

  environment = [(SetupController *)selfCopy environment];
  settingsManager = [(BYEnvironment *)environment settingsManager];
  environment2 = [(SetupController *)selfCopy environment];
  flowSkipController = [(BYEnvironment *)environment2 flowSkipController];
  getFlowSkipIdentifiers = [flowSkipController getFlowSkipIdentifiers];
  [settingsManager stashFlowSkipIdentifiers:getFlowSkipIdentifiers];

  environment3 = [(SetupController *)selfCopy environment];
  buddyPreferences = [(BYEnvironment *)environment3 buddyPreferences];
  v10 = +[NSDate date];
  [buddyPreferences setObject:v10 forKey:BYBuddyLastExitKey];

  environment4 = [(SetupController *)selfCopy environment];
  settingsManager2 = [(BYEnvironment *)environment4 settingsManager];
  v37 = _AXSCopySettingsDataBlobForBuddy();
  v13 = v37;
  [settingsManager2 stashAccessibilityData:v13];

  environment5 = [(SetupController *)selfCopy environment];
  buddyPreferences2 = [(BYEnvironment *)environment5 buddyPreferences];
  location[0] = [buddyPreferences2 preferences];

  memset(__b, 0, sizeof(__b));
  allKeys = [location[0] allKeys];
  v17 = [allKeys countByEnumeratingWithState:__b objects:v38 count:16];
  if (v17)
  {
    v18 = *__b[2];
    do
    {
      for (i = 0; i < v17; ++i)
      {
        if (*__b[2] != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v34 = *(__b[1] + 8 * i);
        environment6 = [(SetupController *)selfCopy environment];
        settingsManager3 = [(BYEnvironment *)environment6 settingsManager];
        v22 = [location[0] objectForKeyedSubscript:v34];
        environment7 = [(SetupController *)selfCopy environment];
        buddyPreferences3 = [(BYEnvironment *)environment7 buddyPreferences];
        domain = [buddyPreferences3 domain];
        [settingsManager3 setObject:v22 forDomain:domain key:v34];
      }

      v17 = [allKeys countByEnumeratingWithState:__b objects:v38 count:16];
    }

    while (v17);
  }

  oslog = _BYLoggingFacility();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = oslog;
    v27 = v31;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v26, v27, "Stashing settings into the safe haven...", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  environment8 = [(SetupController *)selfCopy environment];
  settingsManager4 = [(BYEnvironment *)environment8 settingsManager];
  [settingsManager4 hideStashInSafeHaven];

  objc_storeStrong(location, 0);
}

- (void)observer:(id)observer didObserveLanguageChange:(BOOL)change localeChange:(BOOL)localeChange
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  changeCopy = change;
  localeChangeCopy = localeChange;
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [(NSUserDefaults *)v7 objectForKey:@"LockdownSetLanguage"];
  v34 = 0;
  v32 = 0;
  v9 = 1;
  if (!v8)
  {
    v35 = +[NSUserDefaults standardUserDefaults];
    v34 = 1;
    v33 = [(NSUserDefaults *)v35 objectForKey:@"LockdownSetLocale"];
    v32 = 1;
    v9 = v33 != 0;
  }

  if (v32)
  {
  }

  if (v34)
  {
  }

  v36 = v9;
  if (v9)
  {
    oslog = _BYLoggingFacility();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = oslog;
      v11 = v30;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v10, v11, "Language observer: Lockdown has overridden values will push without deferring transitions…", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(BFFNavigationController *)selfCopy->_nav setPushWithoutDeferringTransitionsWhileInBackground:1];
    environment = [(SetupController *)selfCopy environment];
    buddyPreferencesExcludedFromBackup = [(BYEnvironment *)environment buddyPreferencesExcludedFromBackup];
    [buddyPreferencesExcludedFromBackup setObject:&__kCFBooleanTrue forKey:@"PushWithoutDeferringTransitionsWhileInBackground" persistImmediately:1];
  }

  v28 = _BYLoggingFacility();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v28;
    v15 = v27;
    sub_10006AA68(v26);
    _os_log_impl(&_mh_execute_header, v14, v15, "Language observer: changed", v26, 2u);
  }

  objc_storeStrong(&v28, 0);
  if (!changeCopy || ((v16 = +[NSLocale preferredLanguages](NSLocale, "preferredLanguages"), v25 = -[NSArray firstObject](v16, "firstObject"), v16, (v24 = ([v25 isEqualToString:selfCopy->_languageAtStartup] ^ 1) & 1) == 0) ? (v23 = 0) : (-[SetupController respring](selfCopy, "respring"), v23 = 1), objc_storeStrong(&v25, 0), !v23))
  {
    if (!localeChangeCopy)
    {
      goto LABEL_23;
    }

    v22 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    if (![(NSString *)selfCopy->_localeIdentifierAtStartup isEqualToString:v22])
    {
      v17 = [[NSLocale alloc] initWithLocaleIdentifier:v22];
      countryCode = [v17 countryCode];

      [(SetupController *)selfCopy _writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:countryCode];
      environment2 = [(SetupController *)selfCopy environment];
      capabilities = [(BYEnvironment *)environment2 capabilities];
      [capabilities eligibilitySetDeviceLocale:countryCode];

      [(SetupController *)selfCopy respring];
      v23 = 1;
      objc_storeStrong(&countryCode, 0);
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(&v22, 0);
    if (!v23)
    {
LABEL_23:
      v23 = 0;
    }
  }

  objc_storeStrong(location, 0);
}

- (void)respring
{
  selfCopy = self;
  location[1] = a2;
  SBSLockDevice();
  [(BFFWindow *)selfCopy->_window setUserInteractionEnabled:0];
  location[0] = [SBSRelaunchAction actionWithReason:@"Language change remotely" options:6 targetURL:0];
  v2 = +[FBSSystemService sharedService];
  v3 = [NSSet setWithObject:location[0]];
  [v2 sendActions:v3 withResult:0];

  objc_storeStrong(location, 0);
}

- (void)_queuePreTerminationTask:(id)task taskDescription:(id)description withTimeoutInSeconds:(id)seconds
{
  selfCopy = self;
  v57 = a2;
  location = 0;
  objc_storeStrong(&location, task);
  v55 = 0;
  objc_storeStrong(&v55, description);
  v54 = 0;
  objc_storeStrong(&v54, seconds);
  uUIDString = v55;
  v51 = 0;
  v49 = 0;
  if (!v55)
  {
    v52 = +[NSUUID UUID];
    v51 = 1;
    uUIDString = [(NSUUID *)v52 UUIDString];
    v50 = uUIDString;
    v49 = 1;
  }

  v53 = uUIDString;
  if (v49)
  {
  }

  if (v51)
  {
  }

  objc_initWeak(&from, selfCopy);
  v41 = 0;
  v42 = &v41;
  v43 = 838860800;
  v44 = 48;
  v45 = sub_10007AC5C;
  v46 = sub_10007AC88;
  v47 = 0;
  v34 = _NSConcreteStackBlock;
  v35 = -1073741824;
  v36 = 0;
  v37 = sub_10007AC94;
  v38 = &unk_10032B4D0;
  objc_copyWeak(&v40, &from);
  v39 = &v41;
  v8 = objc_retainBlock(&v34);
  v9 = v42[5];
  v42[5] = v8;

  dispatch_group_enter(selfCopy[18]);
  oslog = _BYLoggingFacility();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v53);
    _os_log_impl(&_mh_execute_header, oslog, v32, "Queuing pretermination task: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v10 = selfCopy[19];
  block = _NSConcreteStackBlock;
  v25 = -1073741824;
  v26 = 0;
  v27 = sub_10007AD04;
  v28 = &unk_10032B520;
  v30[0] = location;
  objc_copyWeak(&v31, &from);
  v30[1] = &v41;
  v29 = v53;
  dispatch_async(v10, &block);
  if (v54)
  {
    [v54 doubleValue];
    if (v11 > 0.0)
    {
      [v54 doubleValue];
      v13 = dispatch_time(0, (v12 * 1000000000.0));
      v14 = selfCopy[19];
      v15 = _NSConcreteStackBlock;
      v16 = -1073741824;
      v17 = 0;
      v18 = sub_10007AFF4;
      v19 = &unk_10032B548;
      objc_copyWeak(v23, &from);
      v22[1] = &v41;
      v20 = v53;
      v21 = v54;
      v23[1] = v57;
      v22[0] = selfCopy;
      dispatch_after(v13, v14, &v15);
      objc_storeStrong(v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_destroyWeak(v23);
    }
  }

  objc_storeStrong(&v29, 0);
  objc_destroyWeak(&v31);
  objc_storeStrong(v30, 0);
  objc_destroyWeak(&v40);
  _Block_object_dispose(&v41, 8);
  objc_storeStrong(&v47, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&location, 0);
}

- (void)_waitForBuddyTerminationTasksToFinish
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v10;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sync waiting for pretermination tasks to finish", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  dispatch_group_wait(selfCopy->_preTerminationTasksDispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
  v8 = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v8;
    v5 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v4, v5, "Sync pretermination tasks finished", v6, 2u);
  }

  objc_storeStrong(&v8, 0);
}

- (void)_executeAfterBuddyPreTerminationTasksFinish:(id)finish
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finish);
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Waiting for pretermination tasks to finish", buf, 2u);
  }

  objc_storeStrong(&oslog, 0);
  preTerminationTasksDispatchGroup = selfCopy->_preTerminationTasksDispatchGroup;
  v6 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10007B55C;
  v11 = &unk_10032B120;
  v12 = location[0];
  dispatch_group_notify(preTerminationTasksDispatchGroup, v6, &block);

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isAlertPresented:(id)presented
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, presented);
  navigationController = [(SetupController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  presentedViewController = [topViewController presentedViewController];
  v6 = presentedViewController == location[0];

  objc_storeStrong(location, 0);
  return v6;
}

- (void)dismissAlert:(id)alert animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  [(SetupController *)selfCopy dismissAlert:location[0] animated:animated completion:0];
  objc_storeStrong(location, 0);
}

- (void)dismissAlert:(id)alert animated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  animatedCopy = animated;
  v8 = 0;
  objc_storeStrong(&v8, completion);
  if (!-[SetupController isAlertPresented:](selfCopy, "isAlertPresented:", location[0]) || ([location[0] isBeingDismissed] & 1) != 0)
  {
    if (v8)
    {
      (*(v8 + 2))();
    }
  }

  else
  {
    presentingViewController = [location[0] presentingViewController];
    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_menuButtonPressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v128 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0];
    v3 = v128;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Menu requested", buf, 2u);
  }

  objc_storeStrong(location, 0);
  navigationFlowController = [(SetupController *)selfCopy navigationFlowController];
  v125 = 0;
  v123 = 0;
  v5 = 0;
  if (![(BuddyNavigationFlowController *)navigationFlowController isStartOverAllowed])
  {
    navigationController = [(SetupController *)selfCopy navigationController];
    v125 = 1;
    topViewController = [navigationController topViewController];
    v123 = 1;
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  if (v123)
  {
  }

  if (v125)
  {
  }

  if ((v5 & 1) == 0 && !selfCopy->_emergencyDialer)
  {
    navigationController2 = [(SetupController *)selfCopy navigationController];
    topViewController2 = [navigationController2 topViewController];
    presentedViewController = [topViewController2 presentedViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = presentedViewController;
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&presentedViewController, v8);
    if (selfCopy->_homeButtonMenuController)
    {
      [(SetupController *)selfCopy dismissAlert:selfCopy->_homeButtonMenuController animated:1];
      [(SetupController *)selfCopy _removeSBAlertItemsSupressionAssertion];
      objc_storeStrong(&selfCopy->_homeButtonMenuController, 0);
    }

    else if (!presentedViewController)
    {
      if (selfCopy->_buddyDone)
      {
        if ([(SetupController *)selfCopy allowDismissalForExit])
        {
          [(SetupController *)selfCopy endLifecycleDueToCause:1];
        }

        else
        {
          oslog = _BYLoggingFacility();
          v63 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v60 = oslog;
            v61 = v63;
            sub_10006AA68(v62);
            _os_log_impl(&_mh_execute_header, v60, v61, "Preventing lifecycle end as dismissal is not allowed", v62, 2u);
          }

          objc_storeStrong(&oslog, 0);
        }
      }

      else
      {
        v9 = +[BuddySIMManager sharedManager];
        [v9 disallowSIMUnlock];

        navigationFlowController2 = [(SetupController *)selfCopy navigationFlowController];
        topFlowItem = [(BuddyNavigationFlowController *)navigationFlowController2 topFlowItem];

        v120 = 0;
        if (objc_opt_respondsToSelector())
        {
          displayLanguage = [topFlowItem displayLanguage];
          v12 = v120;
          v120 = displayLanguage;
        }

        v117 = 0;
        v115 = 0;
        if (BFFIsiPad())
        {
          v118 = +[NSBundle mainBundle];
          v117 = 1;
          v13 = SFLocalizedStringFromTableInBundleForLanguage();
          v116 = v13;
          v115 = 1;
        }

        else
        {
          v13 = 0;
        }

        v119 = v13;
        if (v115)
        {
        }

        if (v117)
        {
        }

        v14 = [UIAlertController alertControllerWithTitle:v119 message:0 preferredStyle:(BFFIsiPad() & 1) != 0];
        homeButtonMenuController = selfCopy->_homeButtonMenuController;
        selfCopy->_homeButtonMenuController = v14;

        if (MGGetBoolAnswer() & 1)
        {
          v16 = selfCopy->_homeButtonMenuController;
          v17 = +[NSBundle mainBundle];
          v18 = SFLocalizedStringFromTableInBundleForLanguage();
          v108 = _NSConcreteStackBlock;
          v109 = -1073741824;
          v110 = 0;
          v111 = sub_10007C85C;
          v112 = &unk_10032B598;
          v113 = selfCopy;
          v19 = [UIAlertAction actionWithTitle:v18 style:2 handler:&v108];
          [(UIAlertController *)v16 addAction:v19];

          [(SetupController *)selfCopy _addSBAlertItemsSupressionAssertion];
          objc_storeStrong(&v113, 0);
        }

        v107 = +[BuddyAccessibilityUtilities accessibilityViewController];
        v105 = 0;
        v103 = 0;
        v20 = 0;
        if (v107)
        {
          navigationController3 = [(SetupController *)selfCopy navigationController];
          v105 = 1;
          presentedViewController2 = [navigationController3 presentedViewController];
          v103 = 1;
          v20 = presentedViewController2 == 0;
        }

        if (v103)
        {
        }

        if (v105)
        {
        }

        if (v20)
        {
          v21 = selfCopy->_homeButtonMenuController;
          v22 = +[NSBundle mainBundle];
          v23 = SFLocalizedStringFromTableInBundleForLanguage();
          v96 = _NSConcreteStackBlock;
          v97 = -1073741824;
          v98 = 0;
          v99 = sub_10007CB80;
          v100 = &unk_10032B5C0;
          v101 = selfCopy;
          v102 = v107;
          v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:&v96];
          [(UIAlertController *)v21 addAction:v24];

          objc_storeStrong(&v102, 0);
          objc_storeStrong(&v101, 0);
        }

        v95 = 0;
        environment = [(SetupController *)selfCopy environment];
        networkProvider = [(BYEnvironment *)environment networkProvider];
        v93 = 0;
        showWiFiInMenu = 0;
        if ([networkProvider supportsWiFi])
        {
          presentedViewController3 = [(BFFNavigationController *)selfCopy->_nav presentedViewController];
          v93 = 1;
          showWiFiInMenu = 0;
          if (!presentedViewController3)
          {
            showWiFiInMenu = selfCopy->_showWiFiInMenu;
          }
        }

        if (v93)
        {
        }

        if (showWiFiInMenu)
        {
          navigationController4 = [(SetupController *)selfCopy navigationController];
          topViewController3 = [navigationController4 topViewController];
          navigationFlowController3 = [(SetupController *)selfCopy navigationFlowController];
          wifiController = [(BuddyNavigationFlowController *)navigationFlowController3 wifiController];
          viewController = [(BuddyWiFiController *)wifiController viewController];

          if (topViewController3 == viewController || !selfCopy->_wifiControllerInAdvancedMode)
          {
            v33 = SFLocalizableWAPIStringKeyForKey();
            v34 = +[NSBundle mainBundle];
            v35 = SFLocalizedStringFromTableInBundleForLanguage();
            v36 = v95;
            v95 = v35;
          }
        }

        if (v95)
        {
          v37 = selfCopy->_homeButtonMenuController;
          v87 = _NSConcreteStackBlock;
          v88 = -1073741824;
          v89 = 0;
          v90 = sub_10007CCB0;
          v91 = &unk_10032B598;
          v92 = selfCopy;
          v38 = [UIAlertAction actionWithTitle:v95 style:0 handler:&v87];
          [(UIAlertController *)v37 addAction:v38];

          objc_storeStrong(&v92, 0);
        }

        v84 = 0;
        isStartOverAllowed = 0;
        if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
        {
          navigationFlowController4 = [(SetupController *)selfCopy navigationFlowController];
          v84 = 1;
          isStartOverAllowed = [navigationFlowController4 isStartOverAllowed];
        }

        if (v84)
        {
        }

        v86 = isStartOverAllowed & 1;
        if (isStartOverAllowed)
        {
          v40 = selfCopy->_homeButtonMenuController;
          v41 = +[NSBundle mainBundle];
          v42 = SFLocalizedStringFromTableInBundleForLanguage();
          v78 = _NSConcreteStackBlock;
          v79 = -1073741824;
          v80 = 0;
          v81 = sub_10007CDB4;
          v82 = &unk_10032B598;
          v83 = selfCopy;
          v43 = [UIAlertAction actionWithTitle:v42 style:0 handler:&v78];
          [(UIAlertController *)v40 addAction:v43];

          objc_storeStrong(&v83, 0);
        }

        if (+[BuddyMenuController supportsHomeGesture])
        {
          v44 = selfCopy->_homeButtonMenuController;
          v45 = +[NSBundle mainBundle];
          v46 = SFLocalizedStringFromTableInBundleForLanguage();
          v72 = _NSConcreteStackBlock;
          v73 = -1073741824;
          v74 = 0;
          v75 = sub_10007CFE8;
          v76 = &unk_10032B598;
          v77 = selfCopy;
          v47 = [UIAlertAction actionWithTitle:v46 style:0 handler:&v72];
          [(UIAlertController *)v44 addAction:v47];

          objc_storeStrong(&v77, 0);
        }

        if ((+[DMCMultiUserModeUtilities inSharediPadUserSession]& 1) != 0)
        {
          v48 = selfCopy->_homeButtonMenuController;
          v49 = +[NSBundle mainBundle];
          v50 = SFLocalizedStringFromTableInBundleForLanguage();
          v51 = [UIAlertAction actionWithTitle:v50 style:0 handler:&stru_10032B600];
          [(UIAlertController *)v48 addAction:v51];
        }

        if (os_variant_has_internal_ui())
        {
          v52 = +[BYPreferencesController buddyPreferencesEphemeral];
          v53 = [v52 BOOLForKey:@"showInternalUI"];

          v54 = selfCopy->_homeButtonMenuController;
          if (v53)
          {
            v55 = [UIAlertAction actionWithTitle:@"Hide Internal UI" style:0 handler:&stru_10032B640];
          }

          else
          {
            v55 = [UIAlertAction actionWithTitle:@"Show Internal UI" style:0 handler:&stru_10032B660];
          }

          [(UIAlertController *)v54 addAction:v55];
        }

        BFFIsiPad();
        v56 = +[NSBundle mainBundle];
        v71 = SFLocalizedStringFromTableInBundleForLanguage();

        v57 = selfCopy->_homeButtonMenuController;
        v65 = _NSConcreteStackBlock;
        v66 = -1073741824;
        v67 = 0;
        v68 = sub_10007D4F4;
        v69 = &unk_10032B598;
        v70 = selfCopy;
        v58 = [UIAlertAction actionWithTitle:v71 style:1 handler:&v65];
        [(UIAlertController *)v57 addAction:v58];

        navigationController5 = [(SetupController *)selfCopy navigationController];
        [navigationController5 buddy_presentAlertController:selfCopy->_homeButtonMenuController];

        objc_storeStrong(&v70, 0);
        objc_storeStrong(&v71, 0);
        objc_storeStrong(&v95, 0);
        objc_storeStrong(&v107, 0);
        objc_storeStrong(&v119, 0);
        objc_storeStrong(&v120, 0);
        objc_storeStrong(&topFlowItem, 0);
      }
    }

    objc_storeStrong(&presentedViewController, 0);
  }
}

- (void)_showModalWiFiSettingsWithDismissalTriggers:(unint64_t)triggers completionHandler:(id)handler
{
  selfCopy = self;
  v58 = a2;
  triggersCopy = triggers;
  location = 0;
  objc_storeStrong(&location, handler);
  v55 = _BYLoggingFacility();
  v54 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v55;
    v5 = v54;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v4, v5, "Manage WiFi.", buf, 2u);
  }

  objc_storeStrong(&v55, 0);
  navigationController = [(SetupController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  navigationFlowController = [(SetupController *)selfCopy navigationFlowController];
  wifiController = [(BuddyNavigationFlowController *)navigationFlowController wifiController];
  viewController = [(BuddyWiFiController *)wifiController viewController];

  if (topViewController == viewController)
  {
    if (triggersCopy)
    {
      oslog = _BYLoggingFacility();
      v51 = 17;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        v11 = oslog;
        v12 = v51;
        sub_10006AA68(v50);
        _os_log_fault_impl(&_mh_execute_header, v11, v12, "Ignoring modal Wi-Fi dismissal triggers because the modal Wi-Fi controller won't be presented (the regular Wi-Fi controller is on top of the navigation stack)", v50, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    if (location)
    {
      v49 = _BYLoggingFacility();
      v48 = 17;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        v13 = v49;
        v14 = v48;
        sub_10006AA68(v47);
        _os_log_fault_impl(&_mh_execute_header, v13, v14, "Ignoring modal Wi-Fi completion handler because the modal Wi-Fi controller won't be presented (the regular Wi-Fi controller is on top of the navigation stack)", v47, 2u);
      }

      objc_storeStrong(&v49, 0);
    }

    navigationFlowController2 = [(SetupController *)selfCopy navigationFlowController];
    wifiController2 = [(BuddyNavigationFlowController *)navigationFlowController2 wifiController];
    [(BuddyWiFiController *)wifiController2 setShowNetworkSettings:1];

    selfCopy->_wifiControllerInAdvancedMode = 1;
    goto LABEL_18;
  }

  if (location)
  {
    modalWiFiCompletionHandlers = [(SetupController *)selfCopy modalWiFiCompletionHandlers];
    v18 = objc_retainBlock(location);
    [(NSMutableArray *)modalWiFiCompletionHandlers addObject:v18];
  }

  v19 = selfCopy;
  modalWiFiDismissalTriggers = [(SetupController *)selfCopy modalWiFiDismissalTriggers];
  [(SetupController *)v19 setModalWiFiDismissalTriggers:modalWiFiDismissalTriggers | triggersCopy];
  modalWiFiSettingsNavigationController = [(SetupController *)selfCopy modalWiFiSettingsNavigationController];

  if (!modalWiFiSettingsNavigationController)
  {
    v22 = +[NSNotificationCenter defaultCenter];
    v23 = selfCopy;
    v24 = sub_10007DB98();
    [(NSNotificationCenter *)v22 addObserver:v23 selector:"_wifiAssociationDidFinish:" name:v24 object:0];

    v45 = objc_alloc_init(sub_10007DCA0());
    [v45 setShowNetworkSettings:1];
    v25 = +[BuddyActivationConfiguration currentConfiguration];
    [v45 setSupportsCellularActivation:{objc_msgSend(v25, "supportsCellularActivation")}];

    [v45 setBuddyDelegate:selfCopy];
    v26 = [objc_alloc(sub_10007DDB4()) initWithViewController:v45];
    modalWifiManager = selfCopy->_modalWifiManager;
    selfCopy->_modalWifiManager = v26;

    v28 = [UIBarButtonItem alloc];
    v29 = +[NSBundle mainBundle];
    v30 = [(NSBundle *)v29 localizedStringForKey:@"DONE" value:&stru_10032F900 table:@"Localizable"];
    v31 = [v28 initWithTitle:v30 style:2 target:selfCopy action:"_modalWifiControllerDone:"];
    viewController2 = [(WFNetworkListController *)selfCopy->_modalWifiManager viewController];
    navigationItem = [viewController2 navigationItem];
    [navigationItem setRightBarButtonItem:v31];

    v34 = [BFFNavigationController alloc];
    viewController3 = [(WFNetworkListController *)selfCopy->_modalWifiManager viewController];
    v44 = [v34 initWithRootViewController:viewController3];

    navigationController2 = [(SetupController *)selfCopy navigationController];
    [navigationController2 forcedPreferredContentSize];
    [v44 setForcedPreferredContentSize:{v37, v38, *&v37, *&v38}];

    navigationFlowController3 = [(SetupController *)selfCopy navigationFlowController];
    [v44 setDelegate:navigationFlowController3];

    navigationController3 = [(SetupController *)selfCopy navigationController];
    [v44 setModalPresentationStyle:{objc_msgSend(navigationController3, "modalPresentationStyle")}];

    v41 = selfCopy;
    presentationController = [v44 presentationController];
    [presentationController setDelegate:v41];

    navigationController4 = [(SetupController *)selfCopy navigationController];
    [navigationController4 presentViewController:v44 animated:1 completion:0];

    [(SetupController *)selfCopy setModalWiFiSettingsNavigationController:v44];
    [(WFNetworkListController *)selfCopy->_modalWifiManager startScanning];
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v45, 0);
LABEL_18:
    v46 = 0;
    goto LABEL_19;
  }

  v46 = 1;
LABEL_19:
  objc_storeStrong(&location, 0);
}

- (void)_hideModalWiFiSettingsWithReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reason);
  navigationController = [selfCopy navigationController];
  presentedViewController = [navigationController presentedViewController];
  modalWiFiSettingsNavigationController = [selfCopy modalWiFiSettingsNavigationController];

  if (presentedViewController == modalWiFiSettingsNavigationController)
  {
    oslog = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100071CBC(buf, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Hiding modal Wi-Fi with reason: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    navigationController2 = [selfCopy navigationController];
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10007E0B4;
    v11 = &unk_10032B0D0;
    v12 = selfCopy;
    [navigationController2 dismissViewControllerAnimated:1 completion:&v7];

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_modalWifiControllerDone:(id)done
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, done);
  [(SetupController *)selfCopy _hideModalWiFiSettingsWithReason:@"user tapped Done button"];
  objc_storeStrong(location, 0);
}

- (void)_wifiAssociationDidFinish:(id)finish
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finish);
  v3 = [(SetupController *)selfCopy _associationErrorFromNotification:location[0]];
  v4 = v3 == 0;

  v5 = ([(SetupController *)selfCopy modalWiFiDismissalTriggers]& 2) != 0;
  if (v4 && v5)
  {
    [(SetupController *)selfCopy _hideModalWiFiSettingsWithReason:@"successful association"];
  }

  objc_storeStrong(location, 0);
}

- (id)_associationErrorFromNotification:(id)notification
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  userInfo = [location[0] userInfo];
  v4 = sub_10007E284();
  v5 = [userInfo objectForKeyedSubscript:v4];

  objc_storeStrong(location, 0);

  return v5;
}

- (void)_cleanUpModalWiFiSettings
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = sub_10007DB98();
  [(NSNotificationCenter *)v2 removeObserver:selfCopy name:v3 object:0];

  [(SetupController *)selfCopy setModalWiFiSettingsNavigationController:0];
  [(SetupController *)selfCopy setModalWiFiDismissalTriggers:0];
  modalWiFiCompletionHandlers = [(SetupController *)selfCopy modalWiFiCompletionHandlers];
  location[0] = [(NSMutableArray *)modalWiFiCompletionHandlers copy];

  modalWiFiCompletionHandlers2 = [(SetupController *)selfCopy modalWiFiCompletionHandlers];
  [(NSMutableArray *)modalWiFiCompletionHandlers2 removeAllObjects];

  memset(__b, 0, sizeof(__b));
  v6 = location[0];
  v7 = [v6 countByEnumeratingWithState:__b objects:v14 count:16];
  if (v7)
  {
    v8 = *__b[2];
    do
    {
      for (i = 0; i < v7; ++i)
      {
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(__b[1] + 8 * i);
        (*(v11 + 16))();
      }

      v7 = [v6 countByEnumeratingWithState:__b objects:v14 count:16];
    }

    while (v7);
  }

  objc_storeStrong(location, 0);
}

- (void)_addSBAlertItemsSupressionAssertion
{
  selfCopy = self;
  oslog[1] = a2;
  if (!self->_sbAlertItemsSuppressionAssertion)
  {
    oslog[0] = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Adding SBSAlertItemsSuppressionAssertion!", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
    selfCopy->_sbAlertItemsSuppressionAssertion = SBSAlertItemsSuppressionAssertionCreate();
  }
}

- (void)_removeSBAlertItemsSupressionAssertion
{
  selfCopy = self;
  oslog[1] = a2;
  if (self->_sbAlertItemsSuppressionAssertion)
  {
    oslog[0] = _BYLoggingFacility();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v5;
      sub_10006AA68(v4);
      _os_log_impl(&_mh_execute_header, v2, v3, "Removing SBSAlertItemsSuppressionAssertion!", v4, 2u);
    }

    objc_storeStrong(oslog, 0);
    CFRelease(selfCopy->_sbAlertItemsSuppressionAssertion);
    selfCopy->_sbAlertItemsSuppressionAssertion = 0;
  }
}

- (void)dialerDidDismiss:(id)dismiss
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dismiss);
  [(SetupController *)selfCopy _removeSBAlertItemsSupressionAssertion];
  objc_storeStrong(&selfCopy->_emergencyDialer, 0);
  navigationController = [(SetupController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  v5 = [topViewController conformsToProtocol:&OBJC_PROTOCOL___BuddyProximityAdvertisingFlow];

  if (v5)
  {
    navigationController2 = [(SetupController *)selfCopy navigationController];
    topViewController2 = [navigationController2 topViewController];
    [topViewController2 beginAdvertisingForProximitySetup];
  }

  v8 = +[BuddySIMManager sharedManager];
  [v8 allowSIMUnlock];

  objc_storeStrong(location, 0);
}

- (void)_setupSnapshotRemoved
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v15;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "SpringBoard removed the screen snapshot", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  shouldProceedFromAppearancePane = 1;
  if (!selfCopy->_shouldAnimateLocaleScreen)
  {
    shouldProceedFromAppearancePane = [(SetupController *)selfCopy shouldProceedFromAppearancePane];
  }

  v13 = shouldProceedFromAppearancePane & 1;
  if (shouldProceedFromAppearancePane)
  {
    v5 = dispatch_time(0, 1000000000);
    v6 = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10007E98C;
    v11 = &unk_10032B0D0;
    v12 = selfCopy;
    dispatch_after(v5, v6, &v7);

    objc_storeStrong(&v12, 0);
  }
}

- (void)_setupStateChanged
{
  selfCopy = self;
  v8[1] = a2;
  v2 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10007EB18;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)_showMiniAlertWithRestart:(BOOL)restart withLanguage:(id)language
{
  selfCopy = self;
  v26 = a2;
  restartCopy = restart;
  location = 0;
  objc_storeStrong(&location, language);
  v4 = +[NSBundle mainBundle];
  obj = SFLocalizedStringFromTableInBundleForLanguage();

  v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v22 pointSize];
  v21 = [UIFont boldSystemFontOfSize:?];
  v5 = [NSMutableAttributedString alloc];
  v6 = sub_1001961E0(obj, location);
  v20 = [v5 initWithAttributedString:v6];

  v32 = NSFontAttributeName;
  v33 = v21;
  v7 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v8 = [v20 length];
  v29 = 0;
  v28 = v8;
  v30 = 0;
  v31 = v8;
  v19[2] = v8;
  v19[1] = 0;
  [v20 addAttributes:v7 range:{0, v8}];

  v19[0] = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  [v19[0] _setAttributedTitle:v20];
  navigationController = [(SetupController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  v11 = restartCopy;
  v12 = _NSConcreteStackBlock;
  v13 = -1073741824;
  v14 = 0;
  v15 = sub_10007F0B4;
  v16 = &unk_10032B688;
  v18 = restartCopy;
  v17 = selfCopy;
  [topViewController presentViewController:v19[0] animated:v11 completion:&v12];

  objc_storeStrong(&v17, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&location, 0);
}

- (void)_languageChangeAlertDone
{
  location[2] = self;
  location[1] = a2;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleLanguagePreferencesChangedNotification", 0, 0, 1u);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v3, @"com.apple.language.changed", 0, 0, 1u);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v4, BYSetupAssistantDidCompleteLanguageLocaleNotification, 0, 0, 1u);
  location[0] = [SBSRelaunchAction actionWithReason:@"Language change in Setup Assistant" options:6 targetURL:0];
  v5 = +[FBSSystemService sharedService];
  v6 = [NSSet setWithObject:location[0]];
  [v5 sendActions:v6 withResult:0];

  objc_storeStrong(location, 0);
}

- (void)userDidChooseLanguage
{
  oslog[2] = &self->super;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting up QR code control center module...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  location = objc_alloc_init(sub_10007F2C8());
  [location setUpQRCodeControlCenterModuleWithCompletionHandler:&stru_10032B6C8];
  objc_storeStrong(&location, 0);
}

- (BOOL)_didRestoreIniTunes
{
  v2 = [BYSetupStateManager sharedManager:a2];
  v3 = [v2 restoreType] == 1;

  return v3;
}

- (BOOL)_restoreFromBackupJustFinished
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = objc_alloc_init(MBManager);
  restoreInfo = [v9[0] restoreInfo];
  location = [restoreInfo date];
  [location timeIntervalSinceNow];
  v6 = v2;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10007F718(buf, location, COERCE__INT64(v6 * -1.0));
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Last restore date = %{public}@, %lf seconds ago.", buf, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = 0;
  if (location)
  {
    v3 = 0;
    if (v6 < 0.0)
    {
      v3 = v6 > -600.0;
    }
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&restoreInfo, 0);
  objc_storeStrong(v9, 0);
  return v3;
}

- (void)_localeChanged
{
  v11[2] = self;
  v11[1] = a2;
  v11[0] = +[NSUserDefaults standardUserDefaults];
  [v11[0] synchronize];
  v2 = [v11[0] objectForKey:@"LockdownSetLanguage"];
  v3 = v2 != 0;

  v10 = v3;
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [(NSFileManager *)v4 fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/Warranty.html"];

    if (v5)
    {
      v9 = 1;
    }

    else if (BYSetupAssistantHasCompletedInitialRun())
    {
      v9 = 1;
    }

    else
    {
      location = +[BuddyWarrantyTCController warrantyFilePath];
      oslog = _BYLoggingFacility();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_100073058(buf, location, @"/var/mobile/Media/iTunes_Control/iTunes/Warranty.html");
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Copying Warranty from %{public}@ to %{public}@", buf, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      v6 = +[NSFileManager defaultManager];
      [(NSFileManager *)v6 copyItemAtPath:location toPath:@"/var/mobile/Media/iTunes_Control/iTunes/Warranty.html" error:0];

      objc_storeStrong(&location, 0);
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  objc_storeStrong(v11, 0);
}

- (BOOL)updateLanguageLocale:(id)locale
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locale);
  v92 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:v92];
  countryCode = [v3 countryCode];

  [(SetupController *)selfCopy _writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:countryCode];
  environment = [(SetupController *)selfCopy environment];
  capabilities = [(BYEnvironment *)environment capabilities];
  [capabilities eligibilitySetDeviceLocale:countryCode];

  v90 = +[NSUserDefaults standardUserDefaults];
  v89 = selfCopy->_languageAtStartup;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 1;
  v84 = 0;
  environment2 = [(SetupController *)selfCopy environment];
  proximitySetupController = [(BYEnvironment *)environment2 proximitySetupController];
  receivedLanguages = [proximitySetupController receivedLanguages];
  v9 = [receivedLanguages count];

  if (v9)
  {
    v10 = +[NSBundle mainBundle];
    localizations = [(NSBundle *)v10 localizations];
    environment3 = [(SetupController *)selfCopy environment];
    proximitySetupController2 = [(BYEnvironment *)environment3 proximitySetupController];
    receivedLanguages2 = [proximitySetupController2 receivedLanguages];
    v15 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:receivedLanguages2];
    firstObject = [(NSArray *)v15 firstObject];
    v17 = v88;
    v88 = firstObject;

    v85 = 0;
    environment4 = [(SetupController *)selfCopy environment];
    proximitySetupController3 = [(BYEnvironment *)environment4 proximitySetupController];
    receivedLanguages3 = [proximitySetupController3 receivedLanguages];
    v21 = v86;
    v86 = receivedLanguages3;

    preferredLanguagesAtStartup = [(SetupController *)selfCopy preferredLanguagesAtStartup];
    v84 = ([v86 isEqualToArray:preferredLanguagesAtStartup] ^ 1) & 1;
  }

  else
  {
    userSelectedLanguageWithLocale = [(SetupController *)selfCopy userSelectedLanguageWithLocale];

    if (userSelectedLanguageWithLocale)
    {
      userSelectedLanguageWithLocale2 = [(SetupController *)selfCopy userSelectedLanguageWithLocale];
      v25 = v88;
      v88 = userSelectedLanguageWithLocale2;

      v26 = [NSLocale localeWithLocaleIdentifier:v88];
      regionCode = [(NSLocale *)v26 regionCode];
      v28 = v87;
      v87 = regionCode;
    }

    else
    {
      userSelectedLanguage = [(SetupController *)selfCopy userSelectedLanguage];

      if (userSelectedLanguage)
      {
        userSelectedLanguage2 = [(SetupController *)selfCopy userSelectedLanguage];
        v31 = v88;
        v88 = userSelectedLanguage2;
      }
    }
  }

  if (v88 && !v86)
  {
    v100 = v88;
    v86 = [NSArray arrayWithObjects:&v100 count:1];
  }

  if (v88)
  {
    v32 = v88;
  }

  else
  {
    v32 = v89;
  }

  v83 = v32;
  safetyAndHandlingManager = [(SetupController *)selfCopy safetyAndHandlingManager];
  [(BYBuddySafetyAndHandlingManager *)safetyAndHandlingManager setLanguageCode:v83];

  safetyAndHandlingManager2 = [(SetupController *)selfCopy safetyAndHandlingManager];
  [(BYBuddySafetyAndHandlingManager *)safetyAndHandlingManager2 setCountryCode:v87];

  environment5 = [(SetupController *)selfCopy environment];
  buddyPreferences = [(BYEnvironment *)environment5 buddyPreferences];
  [buddyPreferences setObject:v83 forKey:@"Language"];

  [v90 removeObjectForKey:@"LockdownSetLanguage"];
  [v90 removeObjectForKey:@"LockdownSetLocale"];
  v82 = 1;
  if (v88 && ([v89 isEqualToString:v88] & 1) == 0)
  {
    v37 = +[NSBundle mainBundle];
    preferredLocalizations = [(NSBundle *)v37 preferredLocalizations];
    firstObject2 = [(NSArray *)preferredLocalizations firstObject];

    v39 = +[NSBundle mainBundle];
    localizations2 = [(NSBundle *)v39 localizations];
    v41 = [NSBundle preferredLocalizationsFromArray:localizations2 forPreferences:v86];
    firstObject3 = [(NSArray *)v41 firstObject];

    if ([firstObject2 length] && objc_msgSend(firstObject3, "length"))
    {
      v82 = ([firstObject3 isEqualToString:firstObject2] & 1) == 0;
    }

    oslog = _BYLoggingFacility();
    v78 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100080778(buf, firstObject2, firstObject3, v82);
      _os_log_impl(&_mh_execute_header, oslog, v78, "currentBundle: %{public}@; selectedBundle: %{public}@; selectedLanguageLoadsDifferentBundle? %d", buf, 0x1Cu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&firstObject3, 0);
    objc_storeStrong(&firstObject2, 0);
  }

  if (v84)
  {
    v77 = _BYLoggingFacility();
    v76 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v77;
      v43 = v76;
      sub_10006AA68(v75);
      _os_log_impl(&_mh_execute_header, v42, v43, "Preferred languages did change (via proximity), will trigger a language restart", v75, 2u);
    }

    objc_storeStrong(&v77, 0);
  }

  if (v88 && ([v89 isEqualToString:v88] & 1) == 0 && (v82 || (v84 & 1) != 0))
  {
    v65 = _BYLoggingFacility();
    v64 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      sub_100073058(v96, v89, v88);
      _os_log_impl(&_mh_execute_header, v65, v64, "language changed (%{public}@ to %{public}@), prepping for restart...", v96, 0x16u);
    }

    objc_storeStrong(&v65, 0);
    [(BFFWindow *)selfCopy->_window setUserInteractionEnabled:0];
    if (location[0])
    {
      (*(location[0] + 2))();
    }

    [v90 setObject:v83 forKey:@"Language"];
    [v90 synchronize];
    environment6 = [(SetupController *)selfCopy environment];
    buddyPreferencesExcludedFromBackup = [(BYEnvironment *)environment6 buddyPreferencesExcludedFromBackup];
    [buddyPreferencesExcludedFromBackup setObject:&__kCFBooleanTrue forKey:@"AnimateLanguageChoice" persistImmediately:1];

    safetyAndHandlingManager3 = [(SetupController *)selfCopy safetyAndHandlingManager];
    [(BYBuddySafetyAndHandlingManager *)safetyAndHandlingManager3 persistStateForReboot];

    CFPreferencesAppSynchronize(BYBuddyNotBackedUpIdentifier);
    if (v85)
    {
      [NSLocale setPreferredLanguages:v86];
    }

    if (v87)
    {
      [IPSettingsUtilities setRegion:v87 changeLanguageVariant:1 postNotification:1];
      v63 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v57 = +[UIKeyboardPreferencesController sharedPreferencesController];
      [v57 setValue:v63 forKey:3];

      environment7 = [(SetupController *)selfCopy environment];
      buddyPreferences2 = [(BYEnvironment *)environment7 buddyPreferences];
      [buddyPreferences2 setObject:v63 forKey:@"Locale"];

      objc_storeStrong(&v63, 0);
    }

    [(SetupController *)selfCopy userDidChooseLanguage];
    [(SetupController *)selfCopy _persistAnalyticsForLanguageReboot];
    environment8 = [(SetupController *)selfCopy environment];
    proximitySetupController4 = [(BYEnvironment *)environment8 proximitySetupController];
    [proximitySetupController4 prepareForReboot];

    [(SetupController *)selfCopy _showMiniAlertWithRestart:1 withLanguage:v88];
    v95 = 1;
    v66 = 1;
  }

  else
  {
    v74 = _BYLoggingFacility();
    v73 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      sub_100073058(v98, v89, v88);
      _os_log_impl(&_mh_execute_header, v74, v73, "Language did not change (%{public}@ => %{public}@)!", v98, 0x16u);
    }

    objc_storeStrong(&v74, 0);
    [v90 synchronize];
    v72 = [v90 objectForKey:@"AppleLanguages"];
    firstObject4 = [v72 firstObject];
    v44 = 0;
    if (v88)
    {
      v44 = [firstObject4 isEqualToString:v88] ^ 1;
    }

    v70 = v44 & 1;
    v69 = _BYLoggingFacility();
    v68 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      sub_100073058(v97, firstObject4, v88);
      _os_log_impl(&_mh_execute_header, v69, v68, "current default: %{public}@; selected language: %{public}@", v97, 0x16u);
    }

    objc_storeStrong(&v69, 0);
    if ((v70 & 1) != 0 || !v82)
    {
      if (v85)
      {
        [NSLocale setPreferredLanguages:v86];
      }

      if (v87)
      {
        [IPSettingsUtilities setRegion:v87 changeLanguageVariant:1 postNotification:1];
        v67 = CFPreferencesCopyValue(@"AppleLocale", kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        v45 = +[UIKeyboardPreferencesController sharedPreferencesController];
        [v45 setValue:v67 forKey:3];

        environment9 = [(SetupController *)selfCopy environment];
        buddyPreferences3 = [(BYEnvironment *)environment9 buddyPreferences];
        [buddyPreferences3 setObject:v67 forKey:@"Locale"];

        objc_storeStrong(&v67, 0);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleLanguagePreferencesChangedNotification", 0, 0, 1u);
      v49 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v49, @"com.apple.language.changed", 0, 0, 1u);
    }

    v50 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v50, BYSetupAssistantDidCompleteLanguageLocaleNotification, 0, 0, 1u);
    [(SetupController *)selfCopy userDidChooseLanguage];
    environment10 = [(SetupController *)selfCopy environment];
    proximitySetupController5 = [(BYEnvironment *)environment10 proximitySetupController];
    [proximitySetupController5 languageChangeCompleted];

    v53 = +[BuddySIMManager sharedManager];
    [v53 allowSIMUnlock];

    v95 = 0;
    v66 = 1;
    objc_storeStrong(&firstObject4, 0);
    objc_storeStrong(&v72, 0);
  }

  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(&countryCode, 0);
  objc_storeStrong(&v92, 0);
  objc_storeStrong(location, 0);
  return v95 & 1;
}

- (void)_setupAnalytics
{
  selfCopy = self;
  v24[1] = a2;
  v2 = [BuddyNavigationAnalytics alloc];
  navigationController = [(SetupController *)selfCopy navigationController];
  v4 = [(BuddyNavigationAnalytics *)v2 initWithNavigationController:navigationController];
  [(SetupController *)selfCopy setNavigationAnalytics:v4];

  environment = [(SetupController *)selfCopy environment];
  buddyPreferencesExcludedFromBackup = [(BYEnvironment *)environment buddyPreferencesExcludedFromBackup];
  v7 = [BuddySetupAnalytics loadFromDiskWithPreferences:buddyPreferencesExcludedFromBackup];
  [(SetupController *)selfCopy setSetupAnalytics:v7];

  setupAnalytics = [(SetupController *)selfCopy setupAnalytics];
  LOBYTE(v7) = setupAnalytics == 0;

  if (v7)
  {
    v9 = [BuddySetupAnalytics alloc];
    environment2 = [(SetupController *)selfCopy environment];
    buddyPreferencesExcludedFromBackup2 = [(BYEnvironment *)environment2 buddyPreferencesExcludedFromBackup];
    v12 = [(BuddySetupAnalytics *)v9 initWithPreferences:buddyPreferencesExcludedFromBackup2];
    [(SetupController *)selfCopy setSetupAnalytics:v12];

    LOBYTE(v12) = BYSetupAssistantHasCompletedInitialRun();
    setupAnalytics2 = [(SetupController *)selfCopy setupAnalytics];
    [(BuddySetupAnalytics *)setupAnalytics2 setHasCompletedInitialSetup:v12 & 1];
  }

  environment3 = [(SetupController *)selfCopy environment];
  buddyPreferences = [(BYEnvironment *)environment3 buddyPreferences];
  v24[0] = [BuddyRestoreState loadFromPreferences:buddyPreferences];

  environment4 = [(SetupController *)selfCopy environment];
  buddyPreferencesExcludedFromBackup3 = [(BYEnvironment *)environment4 buddyPreferencesExcludedFromBackup];
  v23 = [BuddyMigrationState loadFromPreferences:buddyPreferencesExcludedFromBackup3];

  if (v24[0] || v23)
  {
    location = [v24[0] persistDate];
    if (!location)
    {
      location = [v23 persistDate];
    }

    setupAnalytics3 = [(SetupController *)selfCopy setupAnalytics];
    [(BuddySetupAnalytics *)setupAnalytics3 setSoftwareUpdatePerformed:1];

    [location timeIntervalSinceNow];
    v20 = -v19;
    setupAnalytics4 = [(SetupController *)selfCopy setupAnalytics];
    [(BuddySetupAnalytics *)setupAnalytics4 setOtherDuration:v20];

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(v24, 0);
}

- (void)_preStashAnalytics
{
  [(SetupController *)self _populateSetupAnalytics];
  navigationAnalytics = [(SetupController *)self navigationAnalytics];
  [(BuddyNavigationAnalytics *)navigationAnalytics prepareEventForCurrentViewController];

  navigationAnalytics2 = [(SetupController *)self navigationAnalytics];
  environment = [(SetupController *)self environment];
  analyticsManager = [(BYEnvironment *)environment analyticsManager];
  [(BuddyNavigationAnalytics *)navigationAnalytics2 addEventsUsingAnalyticsManager:analyticsManager];

  setupAnalytics = [(SetupController *)self setupAnalytics];
  environment2 = [(SetupController *)self environment];
  analyticsManager2 = [(BYEnvironment *)environment2 analyticsManager];
  [(BuddySetupAnalytics *)setupAnalytics addEventUsingAnalyticsManager:analyticsManager2];

  [(SetupController *)self setSetupAnalytics:0];
}

- (void)_stashAnalytics
{
  [(SetupController *)self _preStashAnalytics];
  environment = [(SetupController *)self environment];
  analyticsManager = [(BYEnvironment *)environment analyticsManager];
  environment2 = [(SetupController *)self environment];
  settingsManager = [(BYEnvironment *)environment2 settingsManager];
  [analyticsManager stash:settingsManager];

  environment3 = [(SetupController *)self environment];
  analyticsManager2 = [(BYEnvironment *)environment3 analyticsManager];
  [analyticsManager2 reset];
}

- (void)_preCommitAnalytics
{
  [(SetupController *)self _populateSetupAnalytics];
  [(SetupController *)self _populatePowerLogAnalytics];
  navigationAnalytics = [(SetupController *)self navigationAnalytics];
  [(BuddyNavigationAnalytics *)navigationAnalytics prepareEventForCurrentViewController];

  navigationAnalytics2 = [(SetupController *)self navigationAnalytics];
  environment = [(SetupController *)self environment];
  analyticsManager = [(BYEnvironment *)environment analyticsManager];
  [(BuddyNavigationAnalytics *)navigationAnalytics2 addEventsUsingAnalyticsManager:analyticsManager];

  setupAnalytics = [(SetupController *)self setupAnalytics];
  environment2 = [(SetupController *)self environment];
  analyticsManager2 = [(BYEnvironment *)environment2 analyticsManager];
  [(BuddySetupAnalytics *)setupAnalytics addEventUsingAnalyticsManager:analyticsManager2];
}

- (void)_commitAnalytics
{
  [(SetupController *)self _preCommitAnalytics];
  environment = [(SetupController *)self environment];
  analyticsManager = [(BYEnvironment *)environment analyticsManager];
  [analyticsManager commit];
}

- (void)_populateSetupAnalytics
{
  environment = [(SetupController *)self environment];
  setupMethod = [(BYEnvironment *)environment setupMethod];
  dataTransferMethod = [setupMethod dataTransferMethod];
  setupAnalytics = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)setupAnalytics setDataTransferMethod:dataTransferMethod];

  setupAnalytics2 = [(SetupController *)self setupAnalytics];
  environment2 = [(SetupController *)self environment];
  networkProvider = [(BYEnvironment *)environment2 networkProvider];
  -[BuddySetupAnalytics setInAppleStore:](setupAnalytics2, "setInAppleStore:", (-[BuddySetupAnalytics inAppleStore](setupAnalytics2, "inAppleStore") | [networkProvider inAppleStore] & 1) != 0);

  setupAnalytics3 = [(SetupController *)self setupAnalytics];
  viewControllers = [(BFFNavigationController *)self->_nav viewControllers];
  -[BuddySetupAnalytics setNumberOfPanesPresented:](setupAnalytics3, "setNumberOfPanesPresented:", [viewControllers count] + -[BuddySetupAnalytics numberOfPanesPresented](setupAnalytics3, "numberOfPanesPresented"));

  setupAnalytics4 = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)setupAnalytics4 backgroundDuration];
  [(BuddySetupAnalytics *)setupAnalytics4 setBackgroundDuration:v12 + self->_cumulativeLockedDuration];

  setupAnalytics5 = [(SetupController *)self setupAnalytics];
  [BuddyTimestamp intervalSinceTimestamp:self->_buddyStartTimestamp];
  v15 = v14 - self->_cumulativeLockedDuration;
  [(BuddySetupAnalytics *)setupAnalytics5 activeDuration];
  [(BuddySetupAnalytics *)setupAnalytics5 setActiveDuration:v16 + v15];

  v17 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v17 aa_primaryAppleAccount];
  setupAnalytics6 = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)setupAnalytics6 setIsSignedIntoAppleID:aa_primaryAppleAccount != 0];

  environment3 = [(SetupController *)self environment];
  flowSkipController = [(BYEnvironment *)environment3 flowSkipController];
  getFlowSkipIdentifiers = [flowSkipController getFlowSkipIdentifiers];
  v23 = [getFlowSkipIdentifiers count];
  setupAnalytics7 = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)setupAnalytics7 setFollowUpItemsCount:v23];
}

- (void)_populatePowerLogAnalytics
{
  selfCopy = self;
  v38[1] = a2;
  v38[0] = objc_alloc_init(BYSetupUserDisposition);
  location = 0;
  date = [v38[0] date];

  if (date)
  {
    date2 = [v38[0] date];
    v4 = location;
    location = date2;
  }

  else
  {
    environment = [(SetupController *)selfCopy environment];
    runState = [(BYEnvironment *)environment runState];
    v7 = [runState hasCompletedInitialRun] ^ 1;

    if (v7)
    {
      oslog = _BYLoggingFacility();
      v35 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v8 = oslog;
        v9 = v35;
        sub_10006AA68(buf);
        _os_log_error_impl(&_mh_execute_header, v8, v9, "Failed to determine SetupDate from user disposition, setting SetupDate as now!", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v10 = +[NSDate date];
      v11 = location;
      location = v10;
    }

    else
    {
      v33 = _BYLoggingFacility();
      v32 = 16;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v12 = v33;
        v13 = v32;
        sub_10006AA68(v31);
        _os_log_error_impl(&_mh_execute_header, v12, v13, "Failed to determine SetupDate from user disposition on a device that was already setup.", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
    }
  }

  if (location)
  {
    [location timeIntervalSince1970];
    v30 = v14;
    environment2 = [(SetupController *)selfCopy environment];
    analyticsManager = [(BYEnvironment *)environment2 analyticsManager];
    v17 = [NSNumber numberWithDouble:v30];
    [analyticsManager addPowerLogEvent:0 withPayload:v17];
  }

  environment3 = [(SetupController *)selfCopy environment];
  setupMethod = [(BYEnvironment *)environment3 setupMethod];

  if (setupMethod)
  {
    environment4 = [(SetupController *)selfCopy environment];
    analyticsManager2 = [(BYEnvironment *)environment4 analyticsManager];
    environment5 = [(SetupController *)selfCopy environment];
    setupMethod2 = [(BYEnvironment *)environment5 setupMethod];
    v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [setupMethod2 dataTransferMethod]);
    [analyticsManager2 addPowerLogEvent:1 withPayload:v24];
  }

  else
  {
    v29 = _BYLoggingFacility();
    v28 = 16;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v25 = v29;
      v26 = v28;
      sub_10006AA68(v27);
      _os_log_error_impl(&_mh_execute_header, v25, v26, "Failed to determine dataTransferMethod from setupMethod", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v38, 0);
}

- (void)_persistAnalyticsForLanguageReboot
{
  [(SetupController *)self _populateSetupAnalytics];
  setupAnalytics = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)setupAnalytics persist];
}

- (void)_persistAnalyticsForSoftwareUpdate
{
  [(SetupController *)self _populateSetupAnalytics];
  environment = [(SetupController *)self environment];
  analyticsManager = [(BYEnvironment *)environment analyticsManager];
  environment2 = [(SetupController *)self environment];
  settingsManager = [(BYEnvironment *)environment2 settingsManager];
  [analyticsManager stash:settingsManager];

  setupAnalytics = [(SetupController *)self setupAnalytics];
  [(BuddySetupAnalytics *)setupAnalytics persist];
}

- (void)displayProximityPinCode:(id)code language:(id)language visual:(BOOL)visual accessibilitySettings:(id)settings
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v39 = 0;
  objc_storeStrong(&v39, language);
  visualCopy = visual;
  v37 = 0;
  objc_storeStrong(&v37, settings);
  proximityPairingController = [(SetupController *)selfCopy proximityPairingController];

  if (!proximityPairingController)
  {
    v10 = objc_alloc_init(BuddyProximityPairingController);
    [(SetupController *)selfCopy setProximityPairingController:v10];

    v11 = _AXSCopySettingsDataBlobForBuddy();
    [(SetupController *)selfCopy setDefaultAccessibilitySettings:v11];

    navigationFlowController = [(SetupController *)selfCopy navigationFlowController];
    environmentInjector = [(BuddyNavigationFlowController *)navigationFlowController environmentInjector];
    proximityPairingController2 = [(SetupController *)selfCopy proximityPairingController];
    v15 = environmentInjector[2](environmentInjector, proximityPairingController2);
  }

  environment = [(SetupController *)selfCopy environment];
  featureFlags = [(BYEnvironment *)environment featureFlags];
  proximityPairingController3 = [(SetupController *)selfCopy proximityPairingController];
  [(BuddyProximityPairingController *)proximityPairingController3 setFeatureFlags:featureFlags];

  navigationFlowController2 = [(SetupController *)selfCopy navigationFlowController];
  proximityPairingController4 = [(SetupController *)selfCopy proximityPairingController];
  [(BuddyProximityPairingController *)proximityPairingController4 setDelegate:navigationFlowController2];

  proximityPairingController5 = [(SetupController *)selfCopy proximityPairingController];
  [(BuddyProximityPairingController *)proximityPairingController5 setNonUserInitiatedDismissal:0];

  v22 = location[0];
  proximityPairingController6 = [(SetupController *)selfCopy proximityPairingController];
  [(BuddyProximityPairingController *)proximityPairingController6 setPairingCode:v22];

  v24 = v39;
  proximityPairingController7 = [(SetupController *)selfCopy proximityPairingController];
  [(BuddyProximityPairingController *)proximityPairingController7 setLanguage:v24];

  if (visualCopy)
  {
    proximityPairingController8 = [(SetupController *)selfCopy proximityPairingController];
    [(BuddyProximityPairingController *)proximityPairingController8 showVisualPairing];
  }

  else
  {
    proximityPairingController8 = [(SetupController *)selfCopy proximityPairingController];
    [(BuddyProximityPairingController *)proximityPairingController8 showPairingCode];
  }

  navigationController = [(SetupController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  navigationItem = [topViewController navigationItem];
  v30 = +[NSBundle mainBundle];
  v31 = SFLocalizedStringFromTableInBundleForLanguage();
  [navigationItem setBackButtonTitle:v31];

  navigationController2 = [(SetupController *)selfCopy navigationController];
  topViewController2 = [navigationController2 topViewController];
  proximityPairingController9 = [(SetupController *)selfCopy proximityPairingController];

  if (topViewController2 != proximityPairingController9)
  {
    if (v37)
    {
      _AXSRestoreSettingsFromDataBlobForBuddy();
    }

    navigationFlowController3 = [(SetupController *)selfCopy navigationFlowController];
    proximityPairingController10 = [(SetupController *)selfCopy proximityPairingController];
    [(BuddyNavigationFlowController *)navigationFlowController3 pushFlowItem:proximityPairingController10 animated:1];
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissProximityPinCode
{
  navigationController = [(SetupController *)self navigationController];
  topViewController = [navigationController topViewController];
  proximityPairingController = [(SetupController *)self proximityPairingController];
  v5 = 0;
  if (topViewController == proximityPairingController)
  {
    v6 = proximityPairingController;
    applyingProximitySettings = [(SetupController *)self applyingProximitySettings];
    proximityPairingController = v6;
    v5 = (applyingProximitySettings & 1) == 0;
  }

  if (v5)
  {
    defaultAccessibilitySettings = [(SetupController *)self defaultAccessibilitySettings];
    _AXSRestoreSettingsFromDataBlobForBuddy();

    [(SetupController *)self setDefaultAccessibilitySettings:0];
    proximityPairingController2 = [(SetupController *)self proximityPairingController];
    [(BuddyProximityPairingController *)proximityPairingController2 setNonUserInitiatedDismissal:1];

    navigationController2 = [(SetupController *)self navigationController];
    v11 = [navigationController2 popViewControllerAnimated:1];

    [(SetupController *)self setProximityPairingController:0];
  }
}

- (void)displayIncompatibleProximityPairingFromDeviceClass:(id)class
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, class);
  v3 = +[NSBundle mainBundle];
  v4 = [BuddyLocalizationUtilities modelSpecificLocalizedStringKeyForKey:@"PROXIMITY_PAIRING_INVALID_TITLE" deviceClass:location[0]];
  v13 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];

  v5 = +[NSBundle mainBundle];
  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROXIMITY_PAIRING_INVALID_MESSAGE"];
  v12 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_10032F900 table:@"Localizable"];

  v11 = [UIAlertController alertControllerWithTitle:v13 message:v12 preferredStyle:1];
  v7 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v7 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];
  [(UIAlertController *)v11 addAction:v9];

  navigationController = [(SetupController *)selfCopy navigationController];
  [navigationController presentViewController:v11 animated:1 completion:0];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)displayUpdateRequiredToMigrate
{
  selfCopy = self;
  v16[1] = a2;
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_CONTROLLER"];
  [(BFFWindow *)selfCopy->_window setUserInteractionEnabled:1];
  navigationController = [(SetupController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  proximityPairingController = [(SetupController *)selfCopy proximityPairingController];

  if (topViewController == proximityPairingController)
  {
    navigationController2 = [(SetupController *)selfCopy navigationController];
    v6 = [navigationController2 popViewControllerAnimated:1];

    [(SetupController *)selfCopy setProximityPairingController:0];
  }

  v7 = +[NSBundle mainBundle];
  v16[0] = [(NSBundle *)v7 localizedStringForKey:@"PROXIMITY_PAIRING_UPDATE_REQUIRED_TO_MIGRATE_TITLE" value:&stru_10032F900 table:@"Localizable"];

  v8 = +[NSBundle mainBundle];
  v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROXIMITY_PAIRING_UPDATE_REQUIRED_TO_MIGRATE_MESSAGE"];
  v15 = [(NSBundle *)v8 localizedStringForKey:v9 value:&stru_10032F900 table:@"Localizable"];

  location = [UIAlertController alertControllerWithTitle:v16[0] message:v15 preferredStyle:1];
  v10 = +[NSBundle mainBundle];
  v11 = [(NSBundle *)v10 localizedStringForKey:@"OK" value:&stru_10032F900 table:@"Localizable"];
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];
  [location addAction:v12];

  navigationController3 = [(SetupController *)selfCopy navigationController];
  [navigationController3 presentViewController:location animated:1 completion:0];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
}

- (void)willPerformProximityHandshake
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100082294;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)willApplyProximitySettingsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100082454;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)didApplyProximitySettingsWithWillReboot:(id)reboot
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, reboot);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000825BC;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)unableToApplyProximitySettings
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100082888;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)skippedApplyProximitySettings
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100082A54;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (void)_connectedToWiFiAfterProximity
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting Wi-Fi network as connected and reachable as proximity has done the check for us", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  environment = [(SetupController *)selfCopy environment];
  networkProvider = [(BYEnvironment *)environment networkProvider];
  [networkProvider assumeNetworkReachabilityOverWiFi];
}

- (void)activationConfigurationChanged:(BOOL)changed isActivated:(BOOL)activated
{
  selfCopy = self;
  v18 = a2;
  changedCopy = changed;
  activatedCopy = activated;
  if (changed)
  {
    oslog = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(buf, activatedCopy);
      _os_log_impl(&_mh_execute_header, oslog, v14, "Activation State Changed, isActivated = %d", buf, 8u);
    }

    objc_storeStrong(&oslog, 0);
    v4 = objc_alloc_init(BuddyActivationRecord);
    environment = [(SetupController *)selfCopy environment];
    [(BYEnvironment *)environment setActivationRecord:v4];

    v6 = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100082D68;
    v11 = &unk_10032B688;
    v12 = selfCopy;
    v13 = activatedCopy;
    dispatch_async(v6, &v7);

    objc_storeStrong(&v12, 0);
  }
}

- (void)proximityAutomatedDeviceEnrollmentController:(id)controller wantsToTransitionToPairingWithPin:(id)pin
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v12 = 0;
  objc_storeStrong(&v12, pin);
  v5 = [BuddyProximityAutomatedDeviceEnrollmentPairingController alloc];
  v11 = [(BuddyProximityAutomatedDeviceEnrollmentPairingController *)v5 initWithPairingCode:v12];
  navigationFlowController = [(SetupController *)selfCopy navigationFlowController];
  environmentInjector = [(BuddyNavigationFlowController *)navigationFlowController environmentInjector];
  v8 = environmentInjector[2](environmentInjector, v11);

  navigationFlowController2 = [(SetupController *)selfCopy navigationFlowController];
  [v11 setDelegate:navigationFlowController2];

  navigationFlowController3 = [(SetupController *)selfCopy navigationFlowController];
  [(BuddyNavigationFlowController *)navigationFlowController3 pushFlowItem:v11 animated:1];

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_prepareForDeviceMigrationAfterSoftwareUpdate:(BOOL)update
{
  selfCopy = self;
  v87 = a2;
  updateCopy = update;
  environment = [(SetupController *)self environment];
  miscState = [(BYEnvironment *)environment miscState];
  migrationManager = [miscState migrationManager];

  if (!migrationManager)
  {
    location = 0;
    v84 = 0;
    v83 = +[BuddyMigrationCapability currentDeviceShouldOfferMigration];
    environment2 = [(SetupController *)selfCopy environment];
    proximitySetupController = [(BYEnvironment *)environment2 proximitySetupController];
    information = [proximitySetupController information];
    environment3 = [(SetupController *)selfCopy environment];
    proximitySetupController2 = [(BYEnvironment *)environment3 proximitySetupController];
    productVersion = [proximitySetupController2 productVersion];
    environment4 = [(SetupController *)selfCopy environment];
    proximitySetupController3 = [(BYEnvironment *)environment4 proximitySetupController];
    deviceClass = [proximitySetupController3 deviceClass];
    obj = 0;
    v15 = [BuddyMigrationCapability sourceDeviceSupportsMigration:information productVersion:productVersion deviceClass:deviceClass softwareUpdateRequired:&v84 reason:&obj];
    objc_storeStrong(&location, obj);

    v82 = v15 & 1;
    v16 = 0;
    if (v83)
    {
      v16 = v82;
    }

    v80 = v16;
    if (v16)
    {
      objc_initWeak(&from, selfCopy);
      environment5 = [(SetupController *)selfCopy environment];
      proximitySetupController4 = [(BYEnvironment *)environment5 proximitySetupController];
      v73 = _NSConcreteStackBlock;
      v74 = -1073741824;
      v75 = 0;
      v76 = sub_100083C48;
      v77 = &unk_10032AF58;
      objc_copyWeak(&v78, &from);
      environment6 = [(SetupController *)selfCopy environment];
      passcodeCacheManager = [(BYEnvironment *)environment6 passcodeCacheManager];
      environment7 = [(SetupController *)selfCopy environment];
      analyticsManager = [(BYEnvironment *)environment7 analyticsManager];
      environment8 = [(SetupController *)selfCopy environment];
      lockdownModeProvider = [(BYEnvironment *)environment8 lockdownModeProvider];
      v23 = [proximitySetupController4 createTargetDeviceMigrationManagerWithPrepareForMigrationRebootBlock:&v73 passcodeCacheManager:passcodeCacheManager analyticsManager:analyticsManager lockdownModeProvider:lockdownModeProvider];
      environment9 = [(SetupController *)selfCopy environment];
      miscState2 = [(BYEnvironment *)environment9 miscState];
      [miscState2 setMigrationManager:v23];
      v72 = 0;

      LOBYTE(passcodeCacheManager) = v84;
      environment10 = [(SetupController *)selfCopy environment];
      miscState3 = [(BYEnvironment *)environment10 miscState];
      migrationManager2 = [miscState3 migrationManager];
      [migrationManager2 setRequiresUpdateToMigrate:passcodeCacheManager & 1];

      environment11 = [(SetupController *)selfCopy environment];
      networkProvider = [(BYEnvironment *)environment11 networkProvider];
      environment12 = [(SetupController *)selfCopy environment];
      miscState4 = [(BYEnvironment *)environment12 miscState];
      migrationManager3 = [miscState4 migrationManager];
      [migrationManager3 setNetworkProvider:networkProvider];

      environment13 = [(SetupController *)selfCopy environment];
      miscState5 = [(BYEnvironment *)environment13 miscState];
      migrationManager4 = [miscState5 migrationManager];
      LOBYTE(environment12) = [migrationManager4 requiresUpdateToMigrate];

      if (environment12)
      {
        oslog = _BYLoggingFacility();
        v70 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v37 = oslog;
          v38 = v70;
          sub_10006AA68(buf);
          _os_log_impl(&_mh_execute_header, v37, v38, "Migration requires update; not starting any migration operations...", buf, 2u);
        }

        objc_storeStrong(&oslog, 0);
        environment14 = [(SetupController *)selfCopy environment];
        miscState6 = [(BYEnvironment *)environment14 miscState];
        migrationManager5 = [miscState6 migrationManager];
        [migrationManager5 setWillMigrate:1];
      }

      else
      {
        v42 = updateCopy;
        environment15 = [(SetupController *)selfCopy environment];
        miscState7 = [(BYEnvironment *)environment15 miscState];
        migrationManager6 = [miscState7 migrationManager];
        [migrationManager6 setSoftwareUpdateDidOccur:v42];

        environment16 = [(SetupController *)selfCopy environment];
        proximitySetupController5 = [(BYEnvironment *)environment16 proximitySetupController];
        [proximitySetupController5 beginDeviceToDeviceMigration];

        environment17 = [(SetupController *)selfCopy environment];
        proximitySetupController6 = [(BYEnvironment *)environment17 proximitySetupController];
        environment18 = [(SetupController *)selfCopy environment];
        miscState8 = [(BYEnvironment *)environment18 miscState];
        migrationManager7 = [miscState8 migrationManager];
        [proximitySetupController6 addObserver:migrationManager7];

        environment19 = [(SetupController *)selfCopy environment];
        miscState9 = [(BYEnvironment *)environment19 miscState];
        migrationManager8 = [miscState9 migrationManager];
        v63 = _NSConcreteStackBlock;
        v64 = -1073741824;
        v65 = 0;
        v66 = sub_100083C8C;
        v67 = &unk_10032B6F0;
        v68 = selfCopy;
        [migrationManager8 startKeychainDataTransferWithCompletionHandler:&v63];

        objc_storeStrong(&v68, 0);
      }

      objc_destroyWeak(&v78);
      objc_destroyWeak(&from);
    }

    if (![location length])
    {
      objc_storeStrong(&location, @"none");
    }

    environment20 = [(SetupController *)selfCopy environment];
    analyticsManager2 = [(BYEnvironment *)environment20 analyticsManager];
    v89[0] = @"targetSupports";
    v58 = [NSNumber numberWithBool:v83 & 1];
    v90[0] = v58;
    v89[1] = @"sourceSupports";
    v59 = [NSNumber numberWithBool:v82 & 1];
    v90[1] = v59;
    v89[2] = @"reason";
    v90[2] = location;
    v60 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:3];
    [analyticsManager2 addEvent:@"com.apple.setupassistant.ios.migration.ability" withPayload:v60 persist:1];

    objc_storeStrong(&location, 0);
  }
}

- (void)_startDeviceMigration
{
  selfCopy = self;
  location[1] = a2;
  environment = [(SetupController *)self environment];
  buddyPreferences = [(BYEnvironment *)environment buddyPreferences];
  [buddyPreferences setObject:&__kCFBooleanTrue forKey:@"RestoreChoice"];

  environment2 = [selfCopy environment];
  setupMethod = [environment2 setupMethod];
  [setupMethod setDataTransferMethod:2];

  environment3 = [selfCopy environment];
  proximitySetupController = [environment3 proximitySetupController];
  location[0] = [proximitySetupController backupMetadata];

  oslog = _BYLoggingFacility();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, v27, "Using metadata from source device: %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v8 = location[0];
  environment4 = [selfCopy environment];
  existingSettings = [environment4 existingSettings];
  [existingSettings setBackupMetadata:v8];

  environment5 = [selfCopy environment];
  miscState = [environment5 miscState];
  migrationManager = [miscState migrationManager];
  [migrationManager setUserChoseMigration:1];

  environment6 = [selfCopy environment];
  miscState2 = [environment6 miscState];
  migrationManager2 = [miscState2 migrationManager];
  v17 = [migrationManager2 requiresUpdateToMigrate] ^ 1;

  if (v17)
  {
    environment7 = [selfCopy environment];
    miscState3 = [environment7 miscState];
    migrationManager3 = [miscState3 migrationManager];
    v21 = _NSConcreteStackBlock;
    v22 = -1073741824;
    v23 = 0;
    v24 = sub_100084150;
    v25 = &unk_10032B6F0;
    v26 = selfCopy;
    [migrationManager3 waitForKeychainDataTransfer:&v21];

    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)setNeedsConfigurationUpdate
{
  v2 = [BuddyCloudConfigManager sharedManager:a2];
  [v2 cloudConfigMayHaveChanged];
}

- (BOOL)_doesRestartFlowCauseErase
{
  environment = [(SetupController *)self environment];
  flowItemDispositionProvider = [(BYEnvironment *)environment flowItemDispositionProvider];
  v4 = [flowItemDispositionProvider dispositions] & 0x10;

  if (v4 == 16)
  {
    return 0;
  }

  v5 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v5 aa_primaryAppleAccount];
  v7 = aa_primaryAppleAccount != 0;

  v18 = v7;
  environment2 = [(SetupController *)self environment];
  managedConfiguration = [(BYEnvironment *)environment2 managedConfiguration];
  isPasscodeSet = [managedConfiguration isPasscodeSet];

  v17 = isPasscodeSet & 1;
  environment3 = [(SetupController *)self environment];
  miscState = [(BYEnvironment *)environment3 miscState];
  migrationManager = [miscState migrationManager];
  hasTransferredData = [migrationManager hasTransferredData];

  v15 = 1;
  if ((v17 & 1) == 0)
  {
    v15 = 1;
    if (!v18)
    {
      return hasTransferredData & 1;
    }
  }

  return v15;
}

- (BOOL)willRestartFlowToViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  _doesRestartFlowCauseErase = [(SetupController *)selfCopy _doesRestartFlowCauseErase];
  if (!_doesRestartFlowCauseErase || (BYSetupAssistantHasCompletedInitialRun() & 1) != 0)
  {
    if ([location[0] conformsToProtocol:&OBJC_PROTOCOL___OBWelcomeHeaderAnimatable])
    {
      v10 = location[0];
      [v10 markPaneToAnimateHeaderOnNextAppearance];
      objc_storeStrong(&v12, 0);
    }

    v18 = 1;
    v13 = 1;
  }

  else
  {
    window = selfCopy->_window;
    navigationController = [(SetupController *)selfCopy navigationController];
    environment = [(SetupController *)selfCopy environment];
    proximitySetupController = [(BYEnvironment *)environment proximitySetupController];
    environment2 = [(SetupController *)selfCopy environment];
    analyticsManager = [(BYEnvironment *)environment2 analyticsManager];
    v14 = [BuddyEraseAlertController alertControllerWithWindow:window navigationController:navigationController proximitySetupController:proximitySetupController analyticsManager:analyticsManager];

    navigationController2 = [(SetupController *)selfCopy navigationController];
    [navigationController2 buddy_presentAlertController:v14];

    v18 = 0;
    v13 = 1;
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
  return v18 & 1;
}

- (void)didRestartFlow
{
  environment = [(SetupController *)self environment];
  miscState = [(BYEnvironment *)environment miscState];
  [miscState setUserSelectedCellularActivation:0];

  environment2 = [(SetupController *)self environment];
  pendingRestoreState = [(BYEnvironment *)environment2 pendingRestoreState];
  [pendingRestoreState clearBackupItem];

  environment3 = [(SetupController *)self environment];
  proximitySetupController = [(BYEnvironment *)environment3 proximitySetupController];
  [proximitySetupController startOver];

  environment4 = [(SetupController *)self environment];
  flowItemDispositionProvider = [(BYEnvironment *)environment4 flowItemDispositionProvider];
  v10 = [flowItemDispositionProvider dispositions] & 0x10;

  if (v10 != 16)
  {
    environment5 = [(SetupController *)self environment];
    setupMethod = [(BYEnvironment *)environment5 setupMethod];
    [setupMethod setIntent:0];
  }
}

- (void)disableTapFreeSetUp
{
  if (self->_TFDEPPollTimer)
  {
    [(SetupController *)self stopTFDEPPolling];
  }
}

- (void)_initializeGreen
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(SetupController *)self _canShortCircuitGreen])
  {
    oslog[0] = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v2, v3, "green short-circuiting initialize", v5, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v4 = objc_alloc_init(BYGreenController);
    [(SetupController *)selfCopy setGreenController:v4];
  }
}

- (void)_writeGreenInformedDefaultPlistIfNecessary
{
  v3 = [NSLocale currentLocale:a2];
  countryCode = [(NSLocale *)v3 countryCode];
  [(SetupController *)self _writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:countryCode];
}

- (void)_writeGreenInformedDefaultPlistIfNecessaryForLocaleCountryCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  if ([(SetupController *)selfCopy _canShortCircuitGreen])
  {
    oslog = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v3, v4, "green short-circuiting write informed defaults", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    greenController = [(SetupController *)selfCopy greenController];
    [(BYGreenController *)greenController writeInformedDefaultPlistIfNecessaryForLocaleRegionCode:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)userSelectedLanguage:(id)language
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  [(SetupController *)selfCopy setUserSelectedLanguage:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)userSelectedLanguageWithLocale:(id)locale countryCode:(id)code localePaneScrollOffset:(double)offset
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locale);
  v8 = 0;
  objc_storeStrong(&v8, code);
  [(SetupController *)selfCopy setUserSelectedLanguageWithLocale:location[0]];
  LOBYTE(code) = [(SetupController *)selfCopy _userSelectedLocale:0 localePaneScrollOffset:offset];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return code & 1;
}

- (BOOL)_userSelectedLocale:(id)locale localePaneScrollOffset:(double)offset
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locale);
  offsetCopy = offset;
  if (location[0])
  {
    oslog = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v16, "Setting locale %@...", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    [v5 setValue:location[0] forKey:3];

    environment = [(SetupController *)selfCopy environment];
    buddyPreferences = [(BYEnvironment *)environment buddyPreferences];
    [buddyPreferences setObject:location[0] forKey:@"Locale"];
  }

  v8 = selfCopy;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_100084D9C;
  v14 = &unk_10032B718;
  v15[0] = selfCopy;
  v15[1] = *&offsetCopy;
  LOBYTE(v8) = [(SetupController *)v8 updateLanguageLocale:&v10];
  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (BOOL)shouldEndLifecycleForCause:(unint64_t)cause
{
  if (cause)
  {
    if (cause - 1 < 5)
    {
      v9 = 1;
    }
  }

  else
  {
    v7 = BYSetupAssistantHasCompletedInitialRun() & 1;
    v3 = +[BuddyActivationConfiguration currentConfiguration];
    hasActivated = [v3 hasActivated];

    v5 = 0;
    if (v7)
    {
      v5 = 0;
      if (!self->_inMiniBuddyFromBreadcrumb)
      {
        v5 = hasActivated & 1;
      }
    }

    v9 = v5 & 1;
  }

  return v9 & 1;
}

- (void)willEndLifecycleDueToCause:(unint64_t)cause allowDismissal:(BOOL)dismissal
{
  selfCopy = self;
  v56 = a2;
  causeCopy = cause;
  dismissalCopy = dismissal;
  if (self->_buddyDone)
  {
    oslog = _BYLoggingFacility();
    v52 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100077E48(buf, causeCopy);
      _os_log_error_impl(&_mh_execute_header, oslog, v52, "Ignoring request will exit cause %ld request as an exit has already begun", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    if (dismissalCopy)
    {
      v51 = _BYLoggingFacility();
      v50 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        sub_100077E48(v61, causeCopy);
        _os_log_impl(&_mh_execute_header, v51, v50, "Will end lifecycle due to cause %ld with dismissal allowed...", v61, 0xCu);
      }

      objc_storeStrong(&v51, 0);
    }

    else
    {
      v49 = _BYLoggingFacility();
      v48 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        sub_100077E48(v60, causeCopy);
        _os_log_impl(&_mh_execute_header, v49, v48, "Will end lifecycle due to cause %ld...", v60, 0xCu);
      }

      objc_storeStrong(&v49, 0);
    }

    environment = [selfCopy environment];
    lockdownModeProvider = [environment lockdownModeProvider];
    hasStagedEnablement = [lockdownModeProvider hasStagedEnablement];

    v47 = hasStagedEnablement & 1;
    if (causeCopy == 1 && dismissalCopy && +[BuddyMenuController supportsHomeGesture]&& (v47 & 1) == 0)
    {
      [*(selfCopy + 12) invalidate];
      objc_storeStrong(selfCopy + 12, 0);
    }

    *(selfCopy + 42) = 1;
    [selfCopy setAllowDismissalForExit:dismissalCopy];
    environment2 = [selfCopy environment];
    analyticsManager = [environment2 analyticsManager];
    v58[0] = @"duration";
    [BuddyTimestamp intervalSinceTimestamp:*(selfCopy + 15)];
    v9 = [NSNumber numberWithDouble:?];
    v59[0] = v9;
    v58[1] = @"startupCause";
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [selfCopy cachedStartupCause]);
    v59[1] = v10;
    v58[2] = @"exitCause";
    v11 = [NSNumber numberWithUnsignedInteger:causeCopy];
    v59[2] = v11;
    v58[3] = @"hasCompletedInitialRun";
    v12 = [NSNumber numberWithBool:BYSetupAssistantHasCompletedInitialRun()];
    v59[3] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];
    [analyticsManager addEvent:@"com.apple.setupassistant.ios.duration" withPayload:v13 persist:1];

    if (causeCopy >= 3 && causeCopy - 3 < 2)
    {
      [selfCopy _willEndLifecycleForDataTransfer];
    }

    else
    {
      v14 = +[ACAccountStore defaultStore];
      aa_primaryAppleAccount = [v14 aa_primaryAppleAccount];

      if (aa_primaryAppleAccount)
      {
        v16 = +[BYPreferencesController buddyPreferencesInternal];
        v17 = [v16 BOOLForKey:@"SkipExpressSettingsUpload"];

        v46 = v17 & 1;
        if (v17)
        {
          v45 = _BYLoggingFacility();
          v44 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v45;
            v19 = v44;
            sub_10006AA68(v43);
            _os_log_impl(&_mh_execute_header, v18, v19, "Skipping express settings upload due to default", v43, 2u);
          }

          objc_storeStrong(&v45, 0);
        }

        else
        {
          location = objc_alloc_init(BYBuddyDaemonGeneralClient);
          [location startExpressSettingsUpload];
          objc_storeStrong(&location, 0);
        }
      }

      environment3 = [selfCopy environment];
      suspendTask = [environment3 suspendTask];
      launchURL = [suspendTask launchURL];
      v39 = 0;
      v37 = 0;
      v23 = 1;
      if (launchURL)
      {
        environment4 = [selfCopy environment];
        v39 = 1;
        lockdownModeProvider2 = [environment4 lockdownModeProvider];
        v37 = 1;
        v23 = [lockdownModeProvider2 hasStagedEnablement] ^ 1;
      }

      if (v37)
      {
      }

      if (v39)
      {
      }

      v41 = v23 & 1;
      if (v23)
      {
        v36 = _BYLoggingFacility();
        v35 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v36;
          v25 = v35;
          sub_10006AA68(v34);
          _os_log_impl(&_mh_execute_header, v24, v25, "Monitoring for display layout changes...", v34, 2u);
        }

        objc_storeStrong(&v36, 0);
        v33 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_1000856AC;
        v31 = &unk_10032B740;
        v32 = selfCopy;
        [v33 setTransitionHandler:&v28];
        v26 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v33, v28, v29, v30, v31];
        [selfCopy setMonitor:v26];

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, BYSetupAssistantUISessionNoLongerExclusiveNotification, 0, 0, 1u);
        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v33, 0);
      }
    }
  }
}

- (void)endLifecycleDueToCause:(unint64_t)cause
{
  selfCopy = self;
  v122 = a2;
  causeCopy = cause;
  location = _BYLoggingFacility();
  v119 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, causeCopy);
    _os_log_impl(&_mh_execute_header, location, v119, "Ending lifecycle due to cause %ld...", buf, 0xCu);
  }

  objc_storeStrong(&location, 0);
  v118 = 1;
  v3 = 1;
  if (causeCopy != 3)
  {
    v3 = causeCopy == 4;
  }

  v117 = v3;
  v116 = 0;
  v4 = +[UIApplication sharedApplication];
  v5 = [(UIApplication *)v4 applicationState]== 2;

  v115 = v5;
  navigationController = [(SetupController *)selfCopy navigationController];
  viewControllers = [navigationController viewControllers];
  lastObject = [viewControllers lastObject];
  v9 = [lastObject conformsToProtocol:&OBJC_PROTOCOL___BFFFlowItem];

  if (v9)
  {
    navigationController2 = [(SetupController *)selfCopy navigationController];
    viewControllers2 = [navigationController2 viewControllers];
    lastObject2 = [viewControllers2 lastObject];

    if (objc_opt_respondsToSelector())
    {
      v118 = [lastObject2 allowedTerminationSources] == 0;
    }

    objc_storeStrong(&lastObject2, 0);
  }

  v113 = _BYLoggingFacility();
  v112 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    sub_10008685C(v129, v115, v118, v117);
    _os_log_impl(&_mh_execute_header, v113, v112, "End lifecycle: backgrounded %d, skippedTerminalPane %d, exitingForRestore %d", v129, 0x14u);
  }

  objc_storeStrong(&v113, 0);
  if (v115 && !v118 && !v117)
  {
    v111 = _BYLoggingFacility();
    v110 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v111;
      v13 = v110;
      sub_10006AA68(v109);
      _os_log_impl(&_mh_execute_header, v12, v13, "Application state is background when attempting to end lifecycle", v109, 2u);
    }

    objc_storeStrong(&v111, 0);
    v116 = 1;
  }

  switch(causeCopy)
  {
    case 0uLL:
      goto LABEL_49;
    case 1uLL:
      environment = [(SetupController *)selfCopy environment];
      suspendTask = [(BYEnvironment *)environment suspendTask];
      launchURL = [suspendTask launchURL];
      v106 = 0;
      v104 = 0;
      v17 = 0;
      if (launchURL)
      {
        environment2 = [(SetupController *)selfCopy environment];
        v106 = 1;
        buddyPreferencesExcludedFromBackup = [environment2 buddyPreferencesExcludedFromBackup];
        v104 = 1;
        v17 = [BuddySuspendTask hasSuspendTaskWithBuddyPreferencesExcludedFromBackup:?];
      }

      if (v104)
      {
      }

      if (v106)
      {
      }

      v108 = v17 & 1;
      environment3 = [(SetupController *)selfCopy environment];
      lockdownModeProvider = [(BYEnvironment *)environment3 lockdownModeProvider];
      hasStagedEnablement = [lockdownModeProvider hasStagedEnablement];

      if (hasStagedEnablement)
      {
        if (v108)
        {
          environment4 = [(SetupController *)selfCopy environment];
          buddyPreferencesExcludedFromBackup2 = [(BYEnvironment *)environment4 buddyPreferencesExcludedFromBackup];
          [buddyPreferencesExcludedFromBackup2 setObject:&__kCFBooleanTrue forKey:BYBuddyRunStandardMiniBuddy];
        }

        [(SetupController *)selfCopy willMarkBuddyComplete];
        [(SetupController *)selfCopy markBuddyComplete];
        [(SetupController *)selfCopy didMarkBuddyComplete];
        oslog = _BYLoggingFacility();
        v102 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v23 = oslog;
          v24 = v102;
          sub_10006AA68(v101);
          _os_log_impl(&_mh_execute_header, v23, v24, "Enabling lockdown...", v101, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v25 = selfCopy;
        v95 = _NSConcreteStackBlock;
        v96 = -1073741824;
        v97 = 0;
        v98 = sub_100086884;
        v99 = &unk_10032B0D0;
        v100 = selfCopy;
        [(SetupController *)v25 _executeAfterBuddyPreTerminationTasksFinish:&v95];
        objc_storeStrong(&v100, 0);
        return;
      }

      if (v108)
      {
        [(SetupController *)selfCopy setShouldLaunchSuspendTaskURL:1];
        [(SetupController *)selfCopy willMarkBuddyComplete];
        [(SetupController *)selfCopy markBuddyComplete];
        [(SetupController *)selfCopy didMarkBuddyComplete];
        v94 = 0;
        v26 = +[LSApplicationWorkspace defaultWorkspace];
        environment5 = [(SetupController *)selfCopy environment];
        suspendTask2 = [(BYEnvironment *)environment5 suspendTask];
        launchURL2 = [suspendTask2 launchURL];
        v127 = SBSOpenApplicationOptionKeyLaunchApplicationAfterSetup;
        v128 = &__kCFBooleanTrue;
        v30 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
        obj = 0;
        v31 = [v26 openURL:launchURL2 withOptions:v30 error:&obj];
        objc_storeStrong(&v94, obj);

        if ((v31 ^ 1))
        {
          v92 = _BYLoggingFacility();
          v91 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            v89 = 0;
            v87 = 0;
            if (_BYIsInternalInstall())
            {
              v32 = v94;
            }

            else if (v94)
            {
              domain = [v94 domain];
              v89 = 1;
              v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v94 code]);
              v88 = v32;
              v87 = 1;
            }

            else
            {
              v32 = 0;
            }

            sub_100071CBC(v126, v32);
            _os_log_error_impl(&_mh_execute_header, v92, v91, "Failed to open suspend task URL: %{public}@", v126, 0xCu);
            if (v87)
            {
            }

            if (v89)
            {
            }
          }

          objc_storeStrong(&v92, 0);
          v33 = selfCopy;
          v81 = _NSConcreteStackBlock;
          v82 = -1073741824;
          v83 = 0;
          v84 = sub_100086AC0;
          v85 = &unk_10032B0D0;
          v86 = selfCopy;
          [(SetupController *)v33 _executeAfterBuddyPreTerminationTasksFinish:&v81];
          objc_storeStrong(&v86, 0);
        }

        objc_storeStrong(&v94, 0);
        return;
      }

LABEL_49:
      if (v118 && v115 && causeCopy == 1)
      {
        environment6 = [(SetupController *)selfCopy environment];
        managedConfiguration = [(BYEnvironment *)environment6 managedConfiguration];
        isPasscodeSet = [managedConfiguration isPasscodeSet];

        if (isPasscodeSet)
        {
          v80 = _BYLoggingFacility();
          v79 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v80;
            v38 = v79;
            sub_10006AA68(v78);
            _os_log_impl(&_mh_execute_header, v37, v38, "Forcing termination since Setup skipped a terminal pane and cannot unlock to suspend...", v78, 2u);
          }

          objc_storeStrong(&v80, 0);
          [(SetupController *)selfCopy willMarkBuddyComplete];
          [(SetupController *)selfCopy markBuddyComplete];
          [(SetupController *)selfCopy didMarkBuddyComplete];
          v39 = selfCopy;
          v72 = _NSConcreteStackBlock;
          v73 = -1073741824;
          v74 = 0;
          v75 = sub_100086AEC;
          v76 = &unk_10032B0D0;
          v77 = selfCopy;
          [(SetupController *)v39 _executeAfterBuddyPreTerminationTasksFinish:&v72];
          objc_storeStrong(&v77, 0);
        }

        else
        {
          v71 = _BYLoggingFacility();
          v70 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v71;
            v41 = v70;
            sub_10006AA68(v69);
            _os_log_impl(&_mh_execute_header, v40, v41, "Unlocking device, then suspending...", v69, 2u);
          }

          objc_storeStrong(&v71, 0);
          v42 = +[FBSSystemService sharedService];
          v43 = +[NSBundle mainBundle];
          bundleIdentifier = [(NSBundle *)v43 bundleIdentifier];
          v124 = FBSOpenApplicationOptionKeyUnlockDevice;
          v125 = &__kCFBooleanTrue;
          v45 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];
          [v42 openApplication:bundleIdentifier options:v45 withResult:&stru_10032B780];
        }
      }

      else
      {
        if ((os_variant_has_internal_ui() & 1) != 0 && causeCopy == 1 && v118 && !v115 && (v116 & 1) == 0)
        {
          v68 = _BYLoggingFacility();
          v67 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v68;
            v47 = v67;
            sub_10006AA68(v66);
            _os_log_impl(&_mh_execute_header, v46, v47, "Will force termination even though we are not in the background", v66, 2u);
          }

          objc_storeStrong(&v68, 0);
          [(SetupController *)selfCopy markBuddyComplete];
          v116 = 1;
        }

        if (v116)
        {
          v65 = _BYLoggingFacility();
          v64 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v48 = v65;
            v49 = v64;
            sub_10006AA68(v63);
            _os_log_impl(&_mh_execute_header, v48, v49, "Forcing termination since Setup is in the background...", v63, 2u);
          }

          objc_storeStrong(&v65, 0);
          [(SetupController *)selfCopy didMarkBuddyComplete];
          v50 = selfCopy;
          v57 = _NSConcreteStackBlock;
          v58 = -1073741824;
          v59 = 0;
          v60 = sub_100086C50;
          v61 = &unk_10032B0D0;
          v62 = selfCopy;
          [(SetupController *)v50 _executeAfterBuddyPreTerminationTasksFinish:&v57];
          objc_storeStrong(&v62, 0);
        }

        else
        {
          v56 = _BYLoggingFacility();
          v55 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v51 = v56;
            v52 = v55;
            sub_10006AA68(v54);
            _os_log_impl(&_mh_execute_header, v51, v52, "Suspending...", v54, 2u);
          }

          objc_storeStrong(&v56, 0);
          v53 = +[UIApplication sharedApplication];
          [(UIApplication *)v53 suspend];
        }
      }

      return;
    case 2uLL:
      goto LABEL_49;
  }

  if (causeCopy - 3 < 2)
  {
    [(SetupController *)selfCopy willMarkBuddyComplete];
    [(SetupController *)selfCopy markBuddyComplete];
    return;
  }

  if (causeCopy == 5)
  {
    goto LABEL_49;
  }
}

- (unint64_t)intendedRestoreType
{
  environment = [(SetupController *)self environment];
  setupMethod = [(BYEnvironment *)environment setupMethod];
  intendedDataTransferMethod = [setupMethod intendedDataTransferMethod];

  return intendedDataTransferMethod == 1;
}

- (unint64_t)restoreType
{
  environment = [(SetupController *)self environment];
  setupMethod = [(BYEnvironment *)environment setupMethod];
  dataTransferMethod = [setupMethod dataTransferMethod];

  return dataTransferMethod == 1;
}

- (void)prepareWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = dispatch_get_global_queue(2, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100086EB4;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)invalidateAssertionIfNeededForStartUpCause:(unint64_t)cause
{
  v4 = 0;
  if (cause < 6)
  {
    goto LABEL_6;
  }

  if (cause == 6)
  {
LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  if (cause == 7)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_8;
  }

  if (cause - 9 < 2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v4)
  {
    cpuAssertion = [(SetupController *)self cpuAssertion];
    [(BYCPUAssertion *)cpuAssertion invalidate];

    [(SetupController *)self setCpuAssertion:0];
  }
}

- (BOOL)airplaneModeEnabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_alloc_init(RadiosPreferences);
  airplaneMode = [location[0] airplaneMode];
  objc_storeStrong(location, 0);
  return airplaneMode & 1;
}

- (BOOL)shouldBeginRestore
{
  environment = [(SetupController *)self environment];
  pendingRestoreState = [(BYEnvironment *)environment pendingRestoreState];
  environment2 = [(SetupController *)self environment];
  buddyPreferences = [(BYEnvironment *)environment2 buddyPreferences];
  v6 = [BuddySoftwareUpdateRestoreFlow controllerNeedsToRunWithPendingRestoreState:pendingRestoreState buddyPreferences:buddyPreferences];

  return v6 & 1;
}

- (BOOL)shouldBeginMigration
{
  environment = [(SetupController *)self environment];
  buddyPreferencesExcludedFromBackup = [(BYEnvironment *)environment buddyPreferencesExcludedFromBackup];
  environment2 = [(SetupController *)self environment];
  runState = [(BYEnvironment *)environment2 runState];
  v6 = +[BuddyMigrationStateProvider validateAndResolveMigrationStateUsingPreferences:didCompleteInitialRun:](BuddyMigrationStateProvider, "validateAndResolveMigrationStateUsingPreferences:didCompleteInitialRun:", buddyPreferencesExcludedFromBackup, [runState hasCompletedInitialRun] & 1);
  v7 = v6 != 0;

  return v7;
}

- (BOOL)isLanguageSet
{
  location[2] = self;
  location[1] = a2;
  v2 = +[NSUserDefaults standardUserDefaults];
  location[0] = [(NSUserDefaults *)v2 stringForKey:@"Language"];

  v3 = +[NSUserDefaults standardUserDefaults];
  v6 = [(NSUserDefaults *)v3 objectForKey:@"LockdownSetLanguage"];

  v4 = 1;
  if (!location[0])
  {
    v4 = v6 != 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)hasCloudConfiguration
{
  v2 = [BuddyCloudConfigManager sharedManager:a2];
  cloudConfigurationDetails = [v2 cloudConfigurationDetails];
  v4 = cloudConfigurationDetails != 0;

  return v4;
}

- (BOOL)willSetUpAsNew
{
  environment = [(SetupController *)self environment];
  pendingRestoreState = [(BYEnvironment *)environment pendingRestoreState];
  backupItem = [pendingRestoreState backupItem];
  v5 = backupItem != 0;

  v12 = v5;
  environment2 = [(SetupController *)self environment];
  miscState = [(BYEnvironment *)environment2 miscState];
  migrationManager = [miscState migrationManager];
  migrationInProgressOrCompleted = [migrationManager migrationInProgressOrCompleted];

  v10 = 1;
  if (!v12)
  {
    v10 = migrationInProgressOrCompleted & 1;
  }

  return (v10 ^ 1) & 1;
}

- (BuddyFlowItemDispositionProvider)flowItemDispositionProvider
{
  v2 = [(SetupController *)self environment:a2];
  flowItemDispositionProvider = [(BYEnvironment *)v2 flowItemDispositionProvider];

  return flowItemDispositionProvider;
}

- (BuddyRemoteManagementProvider)remoteManagementProvider
{
  v2 = [(SetupController *)self environment:a2];
  enrollmentCoordinator = [(BYEnvironment *)v2 enrollmentCoordinator];

  return enrollmentCoordinator;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dismiss);
  presentedViewController = [location[0] presentedViewController];
  modalWiFiSettingsNavigationController = [(SetupController *)selfCopy modalWiFiSettingsNavigationController];

  if (presentedViewController == modalWiFiSettingsNavigationController)
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v5, v6, "User swiped modal Wi-Fi settings away", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [(SetupController *)selfCopy _cleanUpModalWiFiSettings];
  }

  objc_storeStrong(location, 0);
}

- (void)handleDebugGesture
{
  v2 = [(SetupController *)self navigationFlowController:a2];
  [(BuddyNavigationFlowController *)v2 handleDebugGesture];
}

- (BFFNavigationController)modalWiFiSettingsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_modalWiFiSettingsNavigationController);

  return WeakRetained;
}

@end